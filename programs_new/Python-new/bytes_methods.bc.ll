; ModuleID = 'irs-onlybc/bytes_methods.bc'
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

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
define %struct._object* @_Py_bytes_isspace(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !359, metadata !527), !dbg !528
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !360, metadata !527), !dbg !531
  %0 = bitcast i8** %p to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !532
  call void @llvm.dbg.declare(metadata i8** %p, metadata !361, metadata !527), !dbg !533
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !534, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !533, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !535
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !535
  call void @llvm.dbg.declare(metadata i8** %e, metadata !364, metadata !527), !dbg !536
  %3 = load i64, i64* %len.addr, align 8, !dbg !537, !tbaa !529
  %cmp = icmp eq i64 %3, 1, !dbg !539
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !540

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !dbg !541, !tbaa !523
  %5 = load i8, i8* %4, align 1, !dbg !543, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !545
  %and = and i32 %conv, 255, !dbg !546
  %conv1 = trunc i32 %and to i8, !dbg !547
  %idxprom = zext i8 %conv1 to i64, !dbg !548
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !548
  %6 = load i32, i32* %arrayidx, align 4, !dbg !548, !tbaa !549
  %and2 = and i32 %6, 8, !dbg !551
  %tobool = icmp ne i32 %and2, 0, !dbg !551
  br i1 %tobool, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !553, !tbaa !554
  %inc = add i64 %7, 1, !dbg !553
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !553, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !556

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !557, !tbaa !529
  %cmp3 = icmp eq i64 %8, 0, !dbg !559
  br i1 %cmp3, label %if.then.5, label %if.end.7, !dbg !560

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !561, !tbaa !554
  %inc6 = add i64 %9, 1, !dbg !561
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !561, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !562
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !562

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !563, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !564, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !565
  store i8* %add.ptr, i8** %e, align 8, !dbg !566, !tbaa !523
  br label %for.cond, !dbg !567

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !568, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !573, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !574
  br i1 %cmp8, label %for.body, label %for.end, !dbg !575

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !576, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !579, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !580
  %and11 = and i32 %conv10, 255, !dbg !581
  %conv12 = trunc i32 %and11 to i8, !dbg !582
  %idxprom13 = zext i8 %conv12 to i64, !dbg !583
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !583
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !583, !tbaa !549
  %and15 = and i32 %16, 8, !dbg !584
  %tobool16 = icmp ne i32 %and15, 0, !dbg !584
  br i1 %tobool16, label %if.end.19, label %if.then.17, !dbg !585

if.then.17:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !586, !tbaa !554
  %inc18 = add i64 %17, 1, !dbg !586
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !586, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !587
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !587

if.end.19:                                        ; preds = %for.body
  br label %for.inc, !dbg !588

for.inc:                                          ; preds = %if.end.19
  %18 = load i8*, i8** %p, align 8, !dbg !589, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !589
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !589, !tbaa !523
  br label %for.cond, !dbg !590

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !591, !tbaa !554
  %inc20 = add i64 %19, 1, !dbg !591
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !591, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !592
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !592

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %20 = bitcast i8** %e to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !593
  %21 = bitcast i8** %p to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !593
  %22 = load %struct._object*, %struct._object** %retval, !dbg !593
  ret %struct._object* %22, !dbg !593
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalpha(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !367, metadata !527), !dbg !594
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !368, metadata !527), !dbg !595
  %0 = bitcast i8** %p to i8*, !dbg !596
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !596
  call void @llvm.dbg.declare(metadata i8** %p, metadata !369, metadata !527), !dbg !597
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !598, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !597, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !599
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !599
  call void @llvm.dbg.declare(metadata i8** %e, metadata !370, metadata !527), !dbg !600
  %3 = load i64, i64* %len.addr, align 8, !dbg !601, !tbaa !529
  %cmp = icmp eq i64 %3, 1, !dbg !603
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !604

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !dbg !605, !tbaa !523
  %5 = load i8, i8* %4, align 1, !dbg !607, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !608
  %and = and i32 %conv, 255, !dbg !609
  %conv1 = trunc i32 %and to i8, !dbg !610
  %idxprom = zext i8 %conv1 to i64, !dbg !611
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !611
  %6 = load i32, i32* %arrayidx, align 4, !dbg !611, !tbaa !549
  %and2 = and i32 %6, 3, !dbg !612
  %tobool = icmp ne i32 %and2, 0, !dbg !612
  br i1 %tobool, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !614, !tbaa !554
  %inc = add i64 %7, 1, !dbg !614
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !614, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !615
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !615

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !616, !tbaa !529
  %cmp3 = icmp eq i64 %8, 0, !dbg !618
  br i1 %cmp3, label %if.then.5, label %if.end.7, !dbg !619

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !620, !tbaa !554
  %inc6 = add i64 %9, 1, !dbg !620
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !620, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !621
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !621

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !622, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !623, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !624
  store i8* %add.ptr, i8** %e, align 8, !dbg !625, !tbaa !523
  br label %for.cond, !dbg !626

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !627, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !632, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !633
  br i1 %cmp8, label %for.body, label %for.end, !dbg !634

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !635, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !638, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !639
  %and11 = and i32 %conv10, 255, !dbg !640
  %conv12 = trunc i32 %and11 to i8, !dbg !641
  %idxprom13 = zext i8 %conv12 to i64, !dbg !642
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !642
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !642, !tbaa !549
  %and15 = and i32 %16, 3, !dbg !643
  %tobool16 = icmp ne i32 %and15, 0, !dbg !643
  br i1 %tobool16, label %if.end.19, label %if.then.17, !dbg !644

if.then.17:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !645, !tbaa !554
  %inc18 = add i64 %17, 1, !dbg !645
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !645, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !646
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !646

if.end.19:                                        ; preds = %for.body
  br label %for.inc, !dbg !647

for.inc:                                          ; preds = %if.end.19
  %18 = load i8*, i8** %p, align 8, !dbg !648, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !648
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !648, !tbaa !523
  br label %for.cond, !dbg !649

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !650, !tbaa !554
  %inc20 = add i64 %19, 1, !dbg !650
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !650, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !651
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !651

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %20 = bitcast i8** %e to i8*, !dbg !652
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !652
  %21 = bitcast i8** %p to i8*, !dbg !652
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !652
  %22 = load %struct._object*, %struct._object** %retval, !dbg !652
  ret %struct._object* %22, !dbg !652
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalnum(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !373, metadata !527), !dbg !653
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !374, metadata !527), !dbg !654
  %0 = bitcast i8** %p to i8*, !dbg !655
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !655
  call void @llvm.dbg.declare(metadata i8** %p, metadata !375, metadata !527), !dbg !656
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !657, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !656, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !658
  call void @llvm.dbg.declare(metadata i8** %e, metadata !376, metadata !527), !dbg !659
  %3 = load i64, i64* %len.addr, align 8, !dbg !660, !tbaa !529
  %cmp = icmp eq i64 %3, 1, !dbg !662
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !663

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !dbg !664, !tbaa !523
  %5 = load i8, i8* %4, align 1, !dbg !666, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !667
  %and = and i32 %conv, 255, !dbg !668
  %conv1 = trunc i32 %and to i8, !dbg !669
  %idxprom = zext i8 %conv1 to i64, !dbg !670
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !670
  %6 = load i32, i32* %arrayidx, align 4, !dbg !670, !tbaa !549
  %and2 = and i32 %6, 7, !dbg !671
  %tobool = icmp ne i32 %and2, 0, !dbg !671
  br i1 %tobool, label %if.then, label %if.end, !dbg !672

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !673, !tbaa !554
  %inc = add i64 %7, 1, !dbg !673
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !673, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !674

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !675, !tbaa !529
  %cmp3 = icmp eq i64 %8, 0, !dbg !677
  br i1 %cmp3, label %if.then.5, label %if.end.7, !dbg !678

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !679, !tbaa !554
  %inc6 = add i64 %9, 1, !dbg !679
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !679, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !680
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !680

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !681, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !682, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !683
  store i8* %add.ptr, i8** %e, align 8, !dbg !684, !tbaa !523
  br label %for.cond, !dbg !685

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !686, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !691, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !692
  br i1 %cmp8, label %for.body, label %for.end, !dbg !693

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !694, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !697, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !698
  %and11 = and i32 %conv10, 255, !dbg !699
  %conv12 = trunc i32 %and11 to i8, !dbg !700
  %idxprom13 = zext i8 %conv12 to i64, !dbg !701
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !701
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !701, !tbaa !549
  %and15 = and i32 %16, 7, !dbg !702
  %tobool16 = icmp ne i32 %and15, 0, !dbg !702
  br i1 %tobool16, label %if.end.19, label %if.then.17, !dbg !703

if.then.17:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !704, !tbaa !554
  %inc18 = add i64 %17, 1, !dbg !704
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !704, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !705
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !705

if.end.19:                                        ; preds = %for.body
  br label %for.inc, !dbg !706

for.inc:                                          ; preds = %if.end.19
  %18 = load i8*, i8** %p, align 8, !dbg !707, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !707
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !707, !tbaa !523
  br label %for.cond, !dbg !708

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !709, !tbaa !554
  %inc20 = add i64 %19, 1, !dbg !709
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !709, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !710

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %20 = bitcast i8** %e to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !711
  %21 = bitcast i8** %p to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !711
  %22 = load %struct._object*, %struct._object** %retval, !dbg !711
  ret %struct._object* %22, !dbg !711
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isdigit(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !379, metadata !527), !dbg !712
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !380, metadata !527), !dbg !713
  %0 = bitcast i8** %p to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i8** %p, metadata !381, metadata !527), !dbg !715
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !716, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !715, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !717
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !717
  call void @llvm.dbg.declare(metadata i8** %e, metadata !382, metadata !527), !dbg !718
  %3 = load i64, i64* %len.addr, align 8, !dbg !719, !tbaa !529
  %cmp = icmp eq i64 %3, 1, !dbg !721
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !722

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !dbg !723, !tbaa !523
  %5 = load i8, i8* %4, align 1, !dbg !725, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !726
  %and = and i32 %conv, 255, !dbg !727
  %conv1 = trunc i32 %and to i8, !dbg !728
  %idxprom = zext i8 %conv1 to i64, !dbg !729
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !729
  %6 = load i32, i32* %arrayidx, align 4, !dbg !729, !tbaa !549
  %and2 = and i32 %6, 4, !dbg !730
  %tobool = icmp ne i32 %and2, 0, !dbg !730
  br i1 %tobool, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !732, !tbaa !554
  %inc = add i64 %7, 1, !dbg !732
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !732, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !733
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !733

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !734, !tbaa !529
  %cmp3 = icmp eq i64 %8, 0, !dbg !736
  br i1 %cmp3, label %if.then.5, label %if.end.7, !dbg !737

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !738, !tbaa !554
  %inc6 = add i64 %9, 1, !dbg !738
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !738, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !739
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !739

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !740, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !741, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !742
  store i8* %add.ptr, i8** %e, align 8, !dbg !743, !tbaa !523
  br label %for.cond, !dbg !744

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !745, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !750, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !751
  br i1 %cmp8, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !753, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !756, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !757
  %and11 = and i32 %conv10, 255, !dbg !758
  %conv12 = trunc i32 %and11 to i8, !dbg !759
  %idxprom13 = zext i8 %conv12 to i64, !dbg !760
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !760
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !760, !tbaa !549
  %and15 = and i32 %16, 4, !dbg !761
  %tobool16 = icmp ne i32 %and15, 0, !dbg !761
  br i1 %tobool16, label %if.end.19, label %if.then.17, !dbg !762

if.then.17:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !763, !tbaa !554
  %inc18 = add i64 %17, 1, !dbg !763
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !763, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !764

if.end.19:                                        ; preds = %for.body
  br label %for.inc, !dbg !765

for.inc:                                          ; preds = %if.end.19
  %18 = load i8*, i8** %p, align 8, !dbg !766, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !766
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !766, !tbaa !523
  br label %for.cond, !dbg !767

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !768, !tbaa !554
  %inc20 = add i64 %19, 1, !dbg !768
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !768, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !769

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %20 = bitcast i8** %e to i8*, !dbg !770
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !770
  %21 = bitcast i8** %p to i8*, !dbg !770
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !770
  %22 = load %struct._object*, %struct._object** %retval, !dbg !770
  ret %struct._object* %22, !dbg !770
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_islower(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !385, metadata !527), !dbg !771
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !386, metadata !527), !dbg !772
  %0 = bitcast i8** %p to i8*, !dbg !773
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !773
  call void @llvm.dbg.declare(metadata i8** %p, metadata !387, metadata !527), !dbg !774
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !775, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !774, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !776
  call void @llvm.dbg.declare(metadata i8** %e, metadata !388, metadata !527), !dbg !777
  %3 = bitcast i32* %cased to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %cased, metadata !389, metadata !527), !dbg !779
  %4 = load i64, i64* %len.addr, align 8, !dbg !780, !tbaa !529
  %cmp = icmp eq i64 %4, 1, !dbg !782
  br i1 %cmp, label %if.then, label %if.end, !dbg !783

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8, !dbg !784, !tbaa !523
  %6 = load i8, i8* %5, align 1, !dbg !785, !tbaa !544
  %conv = zext i8 %6 to i32, !dbg !786
  %and = and i32 %conv, 255, !dbg !787
  %conv1 = trunc i32 %and to i8, !dbg !788
  %idxprom = zext i8 %conv1 to i64, !dbg !789
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !789
  %7 = load i32, i32* %arrayidx, align 4, !dbg !789, !tbaa !549
  %and2 = and i32 %7, 1, !dbg !790
  %conv3 = zext i32 %and2 to i64, !dbg !791
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !792
  store %struct._object* %call, %struct._object** %retval, !dbg !793
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !793

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !794, !tbaa !529
  %cmp4 = icmp eq i64 %8, 0, !dbg !796
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !797

if.then.6:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !798, !tbaa !554
  %inc = add i64 %9, 1, !dbg !798
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !798, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !799
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !799

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !800, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !801, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !802
  store i8* %add.ptr, i8** %e, align 8, !dbg !803, !tbaa !523
  store i32 0, i32* %cased, align 4, !dbg !804, !tbaa !549
  br label %for.cond, !dbg !805

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !806, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !811, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !812
  br i1 %cmp8, label %for.body, label %for.end, !dbg !813

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !814, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !817, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !818
  %and11 = and i32 %conv10, 255, !dbg !819
  %conv12 = trunc i32 %and11 to i8, !dbg !820
  %idxprom13 = zext i8 %conv12 to i64, !dbg !821
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !821
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !821, !tbaa !549
  %and15 = and i32 %16, 2, !dbg !822
  %tobool = icmp ne i32 %and15, 0, !dbg !822
  br i1 %tobool, label %if.then.16, label %if.else, !dbg !823

if.then.16:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !824, !tbaa !554
  %inc17 = add i64 %17, 1, !dbg !824
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !824, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !825
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !825

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %cased, align 4, !dbg !826, !tbaa !549
  %tobool18 = icmp ne i32 %18, 0, !dbg !826
  br i1 %tobool18, label %if.end.27, label %land.lhs.true, !dbg !828

land.lhs.true:                                    ; preds = %if.else
  %19 = load i8*, i8** %p, align 8, !dbg !829, !tbaa !523
  %20 = load i8, i8* %19, align 1, !dbg !831, !tbaa !544
  %conv19 = zext i8 %20 to i32, !dbg !832
  %and20 = and i32 %conv19, 255, !dbg !833
  %conv21 = trunc i32 %and20 to i8, !dbg !834
  %idxprom22 = zext i8 %conv21 to i64, !dbg !835
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom22, !dbg !835
  %21 = load i32, i32* %arrayidx23, align 4, !dbg !835, !tbaa !549
  %and24 = and i32 %21, 1, !dbg !836
  %tobool25 = icmp ne i32 %and24, 0, !dbg !836
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !837

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cased, align 4, !dbg !838, !tbaa !549
  br label %if.end.27, !dbg !839

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %for.inc, !dbg !840

for.inc:                                          ; preds = %if.end.28
  %22 = load i8*, i8** %p, align 8, !dbg !841, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !841
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !841, !tbaa !523
  br label %for.cond, !dbg !842

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %cased, align 4, !dbg !843, !tbaa !549
  %conv29 = sext i32 %23 to i64, !dbg !843
  %call30 = call %struct._object* @PyBool_FromLong(i64 %conv29), !dbg !844
  store %struct._object* %call30, %struct._object** %retval, !dbg !845
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !845

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %24 = bitcast i32* %cased to i8*, !dbg !846
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !846
  %25 = bitcast i8** %e to i8*, !dbg !846
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !846
  %26 = bitcast i8** %p to i8*, !dbg !846
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !846
  %27 = load %struct._object*, %struct._object** %retval, !dbg !846
  ret %struct._object* %27, !dbg !846
}

declare %struct._object* @PyBool_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isupper(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !392, metadata !527), !dbg !847
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !393, metadata !527), !dbg !848
  %0 = bitcast i8** %p to i8*, !dbg !849
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !849
  call void @llvm.dbg.declare(metadata i8** %p, metadata !394, metadata !527), !dbg !850
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !851, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !850, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !852
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !852
  call void @llvm.dbg.declare(metadata i8** %e, metadata !395, metadata !527), !dbg !853
  %3 = bitcast i32* %cased to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !854
  call void @llvm.dbg.declare(metadata i32* %cased, metadata !396, metadata !527), !dbg !855
  %4 = load i64, i64* %len.addr, align 8, !dbg !856, !tbaa !529
  %cmp = icmp eq i64 %4, 1, !dbg !858
  br i1 %cmp, label %if.then, label %if.end, !dbg !859

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8, !dbg !860, !tbaa !523
  %6 = load i8, i8* %5, align 1, !dbg !861, !tbaa !544
  %conv = zext i8 %6 to i32, !dbg !862
  %and = and i32 %conv, 255, !dbg !863
  %conv1 = trunc i32 %and to i8, !dbg !864
  %idxprom = zext i8 %conv1 to i64, !dbg !865
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !865
  %7 = load i32, i32* %arrayidx, align 4, !dbg !865, !tbaa !549
  %and2 = and i32 %7, 2, !dbg !866
  %conv3 = zext i32 %and2 to i64, !dbg !867
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !868
  store %struct._object* %call, %struct._object** %retval, !dbg !869
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !869

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %len.addr, align 8, !dbg !870, !tbaa !529
  %cmp4 = icmp eq i64 %8, 0, !dbg !872
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !873

if.then.6:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !874, !tbaa !554
  %inc = add i64 %9, 1, !dbg !874
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !874, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !875
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !875

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !dbg !876, !tbaa !523
  %11 = load i64, i64* %len.addr, align 8, !dbg !877, !tbaa !529
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !878
  store i8* %add.ptr, i8** %e, align 8, !dbg !879, !tbaa !523
  store i32 0, i32* %cased, align 4, !dbg !880, !tbaa !549
  br label %for.cond, !dbg !881

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i8*, i8** %p, align 8, !dbg !882, !tbaa !523
  %13 = load i8*, i8** %e, align 8, !dbg !887, !tbaa !523
  %cmp8 = icmp ult i8* %12, %13, !dbg !888
  br i1 %cmp8, label %for.body, label %for.end, !dbg !889

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 8, !dbg !890, !tbaa !523
  %15 = load i8, i8* %14, align 1, !dbg !893, !tbaa !544
  %conv10 = zext i8 %15 to i32, !dbg !894
  %and11 = and i32 %conv10, 255, !dbg !895
  %conv12 = trunc i32 %and11 to i8, !dbg !896
  %idxprom13 = zext i8 %conv12 to i64, !dbg !897
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !897
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !897, !tbaa !549
  %and15 = and i32 %16, 1, !dbg !898
  %tobool = icmp ne i32 %and15, 0, !dbg !898
  br i1 %tobool, label %if.then.16, label %if.else, !dbg !899

if.then.16:                                       ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !900, !tbaa !554
  %inc17 = add i64 %17, 1, !dbg !900
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !900, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !901

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %cased, align 4, !dbg !902, !tbaa !549
  %tobool18 = icmp ne i32 %18, 0, !dbg !902
  br i1 %tobool18, label %if.end.27, label %land.lhs.true, !dbg !904

land.lhs.true:                                    ; preds = %if.else
  %19 = load i8*, i8** %p, align 8, !dbg !905, !tbaa !523
  %20 = load i8, i8* %19, align 1, !dbg !907, !tbaa !544
  %conv19 = zext i8 %20 to i32, !dbg !908
  %and20 = and i32 %conv19, 255, !dbg !909
  %conv21 = trunc i32 %and20 to i8, !dbg !910
  %idxprom22 = zext i8 %conv21 to i64, !dbg !911
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom22, !dbg !911
  %21 = load i32, i32* %arrayidx23, align 4, !dbg !911, !tbaa !549
  %and24 = and i32 %21, 2, !dbg !912
  %tobool25 = icmp ne i32 %and24, 0, !dbg !912
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !913

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cased, align 4, !dbg !914, !tbaa !549
  br label %if.end.27, !dbg !915

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %for.inc, !dbg !916

for.inc:                                          ; preds = %if.end.28
  %22 = load i8*, i8** %p, align 8, !dbg !917, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !917
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !917, !tbaa !523
  br label %for.cond, !dbg !918

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %cased, align 4, !dbg !919, !tbaa !549
  %conv29 = sext i32 %23 to i64, !dbg !919
  %call30 = call %struct._object* @PyBool_FromLong(i64 %conv29), !dbg !920
  store %struct._object* %call30, %struct._object** %retval, !dbg !921
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !921

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %24 = bitcast i32* %cased to i8*, !dbg !922
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !922
  %25 = bitcast i8** %e to i8*, !dbg !922
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !922
  %26 = bitcast i8** %p to i8*, !dbg !922
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !922
  %27 = load %struct._object*, %struct._object** %retval, !dbg !922
  ret %struct._object* %27, !dbg !922
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_istitle(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  %previous_is_cased = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ch = alloca i8, align 1
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !399, metadata !527), !dbg !923
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !400, metadata !527), !dbg !924
  %0 = bitcast i8** %p to i8*, !dbg !925
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !925
  call void @llvm.dbg.declare(metadata i8** %p, metadata !401, metadata !527), !dbg !926
  %1 = load i8*, i8** %cptr.addr, align 8, !dbg !927, !tbaa !523
  store i8* %1, i8** %p, align 8, !dbg !926, !tbaa !523
  %2 = bitcast i8** %e to i8*, !dbg !928
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !928
  call void @llvm.dbg.declare(metadata i8** %e, metadata !402, metadata !527), !dbg !929
  %3 = bitcast i32* %cased to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !930
  call void @llvm.dbg.declare(metadata i32* %cased, metadata !403, metadata !527), !dbg !931
  %4 = bitcast i32* %previous_is_cased to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !930
  call void @llvm.dbg.declare(metadata i32* %previous_is_cased, metadata !404, metadata !527), !dbg !932
  %5 = load i64, i64* %len.addr, align 8, !dbg !933, !tbaa !529
  %cmp = icmp eq i64 %5, 1, !dbg !935
  br i1 %cmp, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %p, align 8, !dbg !937, !tbaa !523
  %7 = load i8, i8* %6, align 1, !dbg !938, !tbaa !544
  %conv = zext i8 %7 to i32, !dbg !939
  %and = and i32 %conv, 255, !dbg !940
  %conv1 = trunc i32 %and to i8, !dbg !941
  %idxprom = zext i8 %conv1 to i64, !dbg !942
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !942
  %8 = load i32, i32* %arrayidx, align 4, !dbg !942, !tbaa !549
  %and2 = and i32 %8, 2, !dbg !943
  %conv3 = zext i32 %and2 to i64, !dbg !944
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !945
  store %struct._object* %call, %struct._object** %retval, !dbg !946
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38, !dbg !946

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %len.addr, align 8, !dbg !947, !tbaa !529
  %cmp4 = icmp eq i64 %9, 0, !dbg !949
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !950

if.then.6:                                        ; preds = %if.end
  %10 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !951, !tbaa !554
  %inc = add i64 %10, 1, !dbg !951
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !951, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !952
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38, !dbg !952

if.end.7:                                         ; preds = %if.end
  %11 = load i8*, i8** %p, align 8, !dbg !953, !tbaa !523
  %12 = load i64, i64* %len.addr, align 8, !dbg !954, !tbaa !529
  %add.ptr = getelementptr i8, i8* %11, i64 %12, !dbg !955
  store i8* %add.ptr, i8** %e, align 8, !dbg !956, !tbaa !523
  store i32 0, i32* %cased, align 4, !dbg !957, !tbaa !549
  store i32 0, i32* %previous_is_cased, align 4, !dbg !958, !tbaa !549
  br label %for.cond, !dbg !959

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load i8*, i8** %p, align 8, !dbg !960, !tbaa !523
  %14 = load i8*, i8** %e, align 8, !dbg !963, !tbaa !523
  %cmp8 = icmp ult i8* %13, %14, !dbg !964
  br i1 %cmp8, label %for.body, label %for.end, !dbg !965

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2, !dbg !966
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !405, metadata !527), !dbg !967
  %15 = load i8*, i8** %p, align 8, !dbg !968, !tbaa !523
  %16 = load i8, i8* %15, align 1, !dbg !969, !tbaa !544
  store i8 %16, i8* %ch, align 1, !dbg !967, !tbaa !544
  %17 = load i8, i8* %ch, align 1, !dbg !970, !tbaa !544
  %conv10 = zext i8 %17 to i32, !dbg !972
  %and11 = and i32 %conv10, 255, !dbg !973
  %conv12 = trunc i32 %and11 to i8, !dbg !974
  %idxprom13 = zext i8 %conv12 to i64, !dbg !975
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13, !dbg !975
  %18 = load i32, i32* %arrayidx14, align 4, !dbg !975, !tbaa !549
  %and15 = and i32 %18, 2, !dbg !976
  %tobool = icmp ne i32 %and15, 0, !dbg !976
  br i1 %tobool, label %if.then.16, label %if.else, !dbg !977

if.then.16:                                       ; preds = %for.body
  %19 = load i32, i32* %previous_is_cased, align 4, !dbg !978, !tbaa !549
  %tobool17 = icmp ne i32 %19, 0, !dbg !978
  br i1 %tobool17, label %if.then.18, label %if.end.20, !dbg !981

if.then.18:                                       ; preds = %if.then.16
  %20 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !982, !tbaa !554
  %inc19 = add i64 %20, 1, !dbg !982
  store i64 %inc19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !982, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !983
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !983

if.end.20:                                        ; preds = %if.then.16
  store i32 1, i32* %previous_is_cased, align 4, !dbg !984, !tbaa !549
  store i32 1, i32* %cased, align 4, !dbg !985, !tbaa !549
  br label %if.end.35, !dbg !986

if.else:                                          ; preds = %for.body
  %21 = load i8, i8* %ch, align 1, !dbg !987, !tbaa !544
  %conv21 = zext i8 %21 to i32, !dbg !989
  %and22 = and i32 %conv21, 255, !dbg !990
  %conv23 = trunc i32 %and22 to i8, !dbg !991
  %idxprom24 = zext i8 %conv23 to i64, !dbg !992
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom24, !dbg !992
  %22 = load i32, i32* %arrayidx25, align 4, !dbg !992, !tbaa !549
  %and26 = and i32 %22, 1, !dbg !993
  %tobool27 = icmp ne i32 %and26, 0, !dbg !993
  br i1 %tobool27, label %if.then.28, label %if.else.33, !dbg !994

if.then.28:                                       ; preds = %if.else
  %23 = load i32, i32* %previous_is_cased, align 4, !dbg !995, !tbaa !549
  %tobool29 = icmp ne i32 %23, 0, !dbg !995
  br i1 %tobool29, label %if.end.32, label %if.then.30, !dbg !998

if.then.30:                                       ; preds = %if.then.28
  %24 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !999, !tbaa !554
  %inc31 = add i64 %24, 1, !dbg !999
  store i64 %inc31, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !999, !tbaa !554
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1000

if.end.32:                                        ; preds = %if.then.28
  store i32 1, i32* %previous_is_cased, align 4, !dbg !1001, !tbaa !549
  store i32 1, i32* %cased, align 4, !dbg !1002, !tbaa !549
  br label %if.end.34, !dbg !1003

if.else.33:                                       ; preds = %if.else
  store i32 0, i32* %previous_is_cased, align 4, !dbg !1004, !tbaa !549
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.end.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.20
  store i32 0, i32* %cleanup.dest.slot, !dbg !1005
  br label %cleanup, !dbg !1005

cleanup:                                          ; preds = %if.end.35, %if.then.30, %if.then.18
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2, !dbg !1005
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1006

for.inc:                                          ; preds = %cleanup.cont
  %25 = load i8*, i8** %p, align 8, !dbg !1007, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %25, i32 1, !dbg !1007
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1007, !tbaa !523
  br label %for.cond, !dbg !1008

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %cased, align 4, !dbg !1009, !tbaa !549
  %conv36 = sext i32 %26 to i64, !dbg !1009
  %call37 = call %struct._object* @PyBool_FromLong(i64 %conv36), !dbg !1010
  store %struct._object* %call37, %struct._object** %retval, !dbg !1011
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38, !dbg !1011

cleanup.38:                                       ; preds = %for.end, %cleanup, %if.then.6, %if.then
  %27 = bitcast i32* %previous_is_cased to i8*, !dbg !1012
  call void @llvm.lifetime.end(i64 4, i8* %27) #2, !dbg !1012
  %28 = bitcast i32* %cased to i8*, !dbg !1012
  call void @llvm.lifetime.end(i64 4, i8* %28) #2, !dbg !1012
  %29 = bitcast i8** %e to i8*, !dbg !1012
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1012
  %30 = bitcast i8** %p to i8*, !dbg !1012
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1012
  %31 = load %struct._object*, %struct._object** %retval, !dbg !1012
  ret %struct._object* %31, !dbg !1012
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_lower(i8* %result, i8* %cptr, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !413, metadata !527), !dbg !1013
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !414, metadata !527), !dbg !1014
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !415, metadata !527), !dbg !1015
  %0 = bitcast i64* %i to i8*, !dbg !1016
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1016
  call void @llvm.dbg.declare(metadata i64* %i, metadata !416, metadata !527), !dbg !1017
  store i64 0, i64* %i, align 8, !dbg !1018, !tbaa !529
  br label %for.cond, !dbg !1020

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !1021, !tbaa !529
  %2 = load i64, i64* %len.addr, align 8, !dbg !1025, !tbaa !529
  %cmp = icmp slt i64 %1, %2, !dbg !1026
  br i1 %cmp, label %for.body, label %for.end, !dbg !1027

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8, !dbg !1028, !tbaa !529
  %4 = load i8*, i8** %cptr.addr, align 8, !dbg !1030, !tbaa !523
  %arrayidx = getelementptr i8, i8* %4, i64 %3, !dbg !1030
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1030, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !1031
  %and = and i32 %conv, 255, !dbg !1032
  %conv1 = trunc i32 %and to i8, !dbg !1033
  %idxprom = zext i8 %conv1 to i64, !dbg !1034
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom, !dbg !1034
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !1034, !tbaa !544
  %7 = load i64, i64* %i, align 8, !dbg !1035, !tbaa !529
  %8 = load i8*, i8** %result.addr, align 8, !dbg !1036, !tbaa !523
  %arrayidx3 = getelementptr i8, i8* %8, i64 %7, !dbg !1036
  store i8 %6, i8* %arrayidx3, align 1, !dbg !1037, !tbaa !544
  br label %for.inc, !dbg !1038

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8, !dbg !1039, !tbaa !529
  %inc = add i64 %9, 1, !dbg !1039
  store i64 %inc, i64* %i, align 8, !dbg !1039, !tbaa !529
  br label %for.cond, !dbg !1040

for.end:                                          ; preds = %for.cond
  %10 = bitcast i64* %i to i8*, !dbg !1041
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1041
  ret void, !dbg !1041
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_upper(i8* %result, i8* %cptr, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !419, metadata !527), !dbg !1042
  store i8* %cptr, i8** %cptr.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %cptr.addr, metadata !420, metadata !527), !dbg !1043
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !421, metadata !527), !dbg !1044
  %0 = bitcast i64* %i to i8*, !dbg !1045
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1045
  call void @llvm.dbg.declare(metadata i64* %i, metadata !422, metadata !527), !dbg !1046
  store i64 0, i64* %i, align 8, !dbg !1047, !tbaa !529
  br label %for.cond, !dbg !1049

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !1050, !tbaa !529
  %2 = load i64, i64* %len.addr, align 8, !dbg !1054, !tbaa !529
  %cmp = icmp slt i64 %1, %2, !dbg !1055
  br i1 %cmp, label %for.body, label %for.end, !dbg !1056

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8, !dbg !1057, !tbaa !529
  %4 = load i8*, i8** %cptr.addr, align 8, !dbg !1059, !tbaa !523
  %arrayidx = getelementptr i8, i8* %4, i64 %3, !dbg !1059
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1059, !tbaa !544
  %conv = zext i8 %5 to i32, !dbg !1060
  %and = and i32 %conv, 255, !dbg !1061
  %conv1 = trunc i32 %and to i8, !dbg !1062
  %idxprom = zext i8 %conv1 to i64, !dbg !1063
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom, !dbg !1063
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !1063, !tbaa !544
  %7 = load i64, i64* %i, align 8, !dbg !1064, !tbaa !529
  %8 = load i8*, i8** %result.addr, align 8, !dbg !1065, !tbaa !523
  %arrayidx3 = getelementptr i8, i8* %8, i64 %7, !dbg !1065
  store i8 %6, i8* %arrayidx3, align 1, !dbg !1066, !tbaa !544
  br label %for.inc, !dbg !1067

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8, !dbg !1068, !tbaa !529
  %inc = add i64 %9, 1, !dbg !1068
  store i64 %inc, i64* %i, align 8, !dbg !1068, !tbaa !529
  br label %for.cond, !dbg !1069

for.end:                                          ; preds = %for.cond
  %10 = bitcast i64* %i to i8*, !dbg !1070
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1070
  ret void, !dbg !1070
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_title(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %previous_is_cased = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !427, metadata !527), !dbg !1071
  store i8* %s, i8** %s.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !428, metadata !527), !dbg !1072
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !429, metadata !527), !dbg !1073
  %0 = bitcast i64* %i to i8*, !dbg !1074
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1074
  call void @llvm.dbg.declare(metadata i64* %i, metadata !430, metadata !527), !dbg !1075
  %1 = bitcast i32* %previous_is_cased to i8*, !dbg !1076
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %previous_is_cased, metadata !431, metadata !527), !dbg !1077
  store i32 0, i32* %previous_is_cased, align 4, !dbg !1077, !tbaa !549
  store i64 0, i64* %i, align 8, !dbg !1078, !tbaa !529
  br label %for.cond, !dbg !1079

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !dbg !1080, !tbaa !529
  %3 = load i64, i64* %len.addr, align 8, !dbg !1083, !tbaa !529
  %cmp = icmp slt i64 %2, %3, !dbg !1084
  br i1 %cmp, label %for.body, label %for.end, !dbg !1085

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %c to i8*, !dbg !1086
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1086
  call void @llvm.dbg.declare(metadata i32* %c, metadata !432, metadata !527), !dbg !1087
  %5 = load i8*, i8** %s.addr, align 8, !dbg !1088, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !1088
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !1088, !tbaa !523
  %6 = load i8, i8* %5, align 1, !dbg !1089, !tbaa !544
  %conv = sext i8 %6 to i32, !dbg !1090
  %and = and i32 %conv, 255, !dbg !1091
  %conv1 = trunc i32 %and to i8, !dbg !1092
  %conv2 = zext i8 %conv1 to i32, !dbg !1093
  store i32 %conv2, i32* %c, align 4, !dbg !1087, !tbaa !549
  %7 = load i32, i32* %c, align 4, !dbg !1094, !tbaa !549
  %and3 = and i32 %7, 255, !dbg !1096
  %conv4 = trunc i32 %and3 to i8, !dbg !1097
  %idxprom = zext i8 %conv4 to i64, !dbg !1098
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !1098
  %8 = load i32, i32* %arrayidx, align 4, !dbg !1098, !tbaa !549
  %and5 = and i32 %8, 1, !dbg !1099
  %tobool = icmp ne i32 %and5, 0, !dbg !1099
  br i1 %tobool, label %if.then, label %if.else, !dbg !1100

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %previous_is_cased, align 4, !dbg !1101, !tbaa !549
  %tobool6 = icmp ne i32 %9, 0, !dbg !1101
  br i1 %tobool6, label %if.end, label %if.then.7, !dbg !1104

if.then.7:                                        ; preds = %if.then
  %10 = load i32, i32* %c, align 4, !dbg !1105, !tbaa !549
  %and8 = and i32 %10, 255, !dbg !1106
  %conv9 = trunc i32 %and8 to i8, !dbg !1107
  %idxprom10 = zext i8 %conv9 to i64, !dbg !1108
  %arrayidx11 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom10, !dbg !1108
  %11 = load i8, i8* %arrayidx11, align 1, !dbg !1108, !tbaa !544
  %conv12 = zext i8 %11 to i32, !dbg !1109
  store i32 %conv12, i32* %c, align 4, !dbg !1110, !tbaa !549
  br label %if.end, !dbg !1111

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 1, i32* %previous_is_cased, align 4, !dbg !1112, !tbaa !549
  br label %if.end.30, !dbg !1113

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %c, align 4, !dbg !1114, !tbaa !549
  %and13 = and i32 %12, 255, !dbg !1116
  %conv14 = trunc i32 %and13 to i8, !dbg !1117
  %idxprom15 = zext i8 %conv14 to i64, !dbg !1118
  %arrayidx16 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom15, !dbg !1118
  %13 = load i32, i32* %arrayidx16, align 4, !dbg !1118, !tbaa !549
  %and17 = and i32 %13, 2, !dbg !1119
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1119
  br i1 %tobool18, label %if.then.19, label %if.else.28, !dbg !1120

if.then.19:                                       ; preds = %if.else
  %14 = load i32, i32* %previous_is_cased, align 4, !dbg !1121, !tbaa !549
  %tobool20 = icmp ne i32 %14, 0, !dbg !1121
  br i1 %tobool20, label %if.then.21, label %if.end.27, !dbg !1124

if.then.21:                                       ; preds = %if.then.19
  %15 = load i32, i32* %c, align 4, !dbg !1125, !tbaa !549
  %and22 = and i32 %15, 255, !dbg !1126
  %conv23 = trunc i32 %and22 to i8, !dbg !1127
  %idxprom24 = zext i8 %conv23 to i64, !dbg !1128
  %arrayidx25 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom24, !dbg !1128
  %16 = load i8, i8* %arrayidx25, align 1, !dbg !1128, !tbaa !544
  %conv26 = zext i8 %16 to i32, !dbg !1129
  store i32 %conv26, i32* %c, align 4, !dbg !1130, !tbaa !549
  br label %if.end.27, !dbg !1131

if.end.27:                                        ; preds = %if.then.21, %if.then.19
  store i32 1, i32* %previous_is_cased, align 4, !dbg !1132, !tbaa !549
  br label %if.end.29, !dbg !1133

if.else.28:                                       ; preds = %if.else
  store i32 0, i32* %previous_is_cased, align 4, !dbg !1134, !tbaa !549
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %17 = load i32, i32* %c, align 4, !dbg !1135, !tbaa !549
  %conv31 = trunc i32 %17 to i8, !dbg !1135
  %18 = load i8*, i8** %result.addr, align 8, !dbg !1136, !tbaa !523
  %incdec.ptr32 = getelementptr i8, i8* %18, i32 1, !dbg !1136
  store i8* %incdec.ptr32, i8** %result.addr, align 8, !dbg !1136, !tbaa !523
  store i8 %conv31, i8* %18, align 1, !dbg !1137, !tbaa !544
  %19 = bitcast i32* %c to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !1138
  br label %for.inc, !dbg !1139

for.inc:                                          ; preds = %if.end.30
  %20 = load i64, i64* %i, align 8, !dbg !1140, !tbaa !529
  %inc = add i64 %20, 1, !dbg !1140
  store i64 %inc, i64* %i, align 8, !dbg !1140, !tbaa !529
  br label %for.cond, !dbg !1141

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %previous_is_cased to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !1142
  %22 = bitcast i64* %i to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1142
  ret void, !dbg !1142
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_capitalize(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %c16 = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !438, metadata !527), !dbg !1143
  store i8* %s, i8** %s.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !439, metadata !527), !dbg !1144
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !440, metadata !527), !dbg !1145
  %0 = bitcast i64* %i to i8*, !dbg !1146
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1146
  call void @llvm.dbg.declare(metadata i64* %i, metadata !441, metadata !527), !dbg !1147
  %1 = load i64, i64* %len.addr, align 8, !dbg !1148, !tbaa !529
  %cmp = icmp slt i64 0, %1, !dbg !1149
  br i1 %cmp, label %if.then, label %if.end.13, !dbg !1150

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %c to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1151
  call void @llvm.dbg.declare(metadata i32* %c, metadata !442, metadata !527), !dbg !1152
  %3 = load i8*, i8** %s.addr, align 8, !dbg !1153, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !1153
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !1153, !tbaa !523
  %4 = load i8, i8* %3, align 1, !dbg !1154, !tbaa !544
  %conv = sext i8 %4 to i32, !dbg !1155
  %and = and i32 %conv, 255, !dbg !1156
  %conv1 = trunc i32 %and to i8, !dbg !1157
  %conv2 = zext i8 %conv1 to i32, !dbg !1158
  store i32 %conv2, i32* %c, align 4, !dbg !1152, !tbaa !549
  %5 = load i32, i32* %c, align 4, !dbg !1159, !tbaa !549
  %and3 = and i32 %5, 255, !dbg !1161
  %conv4 = trunc i32 %and3 to i8, !dbg !1162
  %idxprom = zext i8 %conv4 to i64, !dbg !1163
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !1163
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1163, !tbaa !549
  %and5 = and i32 %6, 1, !dbg !1164
  %tobool = icmp ne i32 %and5, 0, !dbg !1164
  br i1 %tobool, label %if.then.6, label %if.else, !dbg !1165

if.then.6:                                        ; preds = %if.then
  %7 = load i32, i32* %c, align 4, !dbg !1166, !tbaa !549
  %and7 = and i32 %7, 255, !dbg !1167
  %conv8 = trunc i32 %and7 to i8, !dbg !1168
  %idxprom9 = zext i8 %conv8 to i64, !dbg !1169
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom9, !dbg !1169
  %8 = load i8, i8* %arrayidx10, align 1, !dbg !1169, !tbaa !544
  %9 = load i8*, i8** %result.addr, align 8, !dbg !1170, !tbaa !523
  store i8 %8, i8* %9, align 1, !dbg !1171, !tbaa !544
  br label %if.end, !dbg !1172

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %c, align 4, !dbg !1173, !tbaa !549
  %conv11 = trunc i32 %10 to i8, !dbg !1173
  %11 = load i8*, i8** %result.addr, align 8, !dbg !1174, !tbaa !523
  store i8 %conv11, i8* %11, align 1, !dbg !1175, !tbaa !544
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %12 = load i8*, i8** %result.addr, align 8, !dbg !1176, !tbaa !523
  %incdec.ptr12 = getelementptr i8, i8* %12, i32 1, !dbg !1176
  store i8* %incdec.ptr12, i8** %result.addr, align 8, !dbg !1176, !tbaa !523
  %13 = bitcast i32* %c to i8*, !dbg !1177
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !1177
  br label %if.end.13, !dbg !1178

if.end.13:                                        ; preds = %if.end, %entry
  store i64 1, i64* %i, align 8, !dbg !1179, !tbaa !529
  br label %for.cond, !dbg !1180

for.cond:                                         ; preds = %for.inc, %if.end.13
  %14 = load i64, i64* %i, align 8, !dbg !1181, !tbaa !529
  %15 = load i64, i64* %len.addr, align 8, !dbg !1184, !tbaa !529
  %cmp14 = icmp slt i64 %14, %15, !dbg !1185
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1186

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %c16 to i8*, !dbg !1187
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %c16, metadata !445, metadata !527), !dbg !1188
  %17 = load i8*, i8** %s.addr, align 8, !dbg !1189, !tbaa !523
  %incdec.ptr17 = getelementptr i8, i8* %17, i32 1, !dbg !1189
  store i8* %incdec.ptr17, i8** %s.addr, align 8, !dbg !1189, !tbaa !523
  %18 = load i8, i8* %17, align 1, !dbg !1190, !tbaa !544
  %conv18 = sext i8 %18 to i32, !dbg !1191
  %and19 = and i32 %conv18, 255, !dbg !1192
  %conv20 = trunc i32 %and19 to i8, !dbg !1193
  %conv21 = zext i8 %conv20 to i32, !dbg !1194
  store i32 %conv21, i32* %c16, align 4, !dbg !1188, !tbaa !549
  %19 = load i32, i32* %c16, align 4, !dbg !1195, !tbaa !549
  %and22 = and i32 %19, 255, !dbg !1197
  %conv23 = trunc i32 %and22 to i8, !dbg !1198
  %idxprom24 = zext i8 %conv23 to i64, !dbg !1199
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom24, !dbg !1199
  %20 = load i32, i32* %arrayidx25, align 4, !dbg !1199, !tbaa !549
  %and26 = and i32 %20, 2, !dbg !1200
  %tobool27 = icmp ne i32 %and26, 0, !dbg !1200
  br i1 %tobool27, label %if.then.28, label %if.else.33, !dbg !1201

if.then.28:                                       ; preds = %for.body
  %21 = load i32, i32* %c16, align 4, !dbg !1202, !tbaa !549
  %and29 = and i32 %21, 255, !dbg !1203
  %conv30 = trunc i32 %and29 to i8, !dbg !1204
  %idxprom31 = zext i8 %conv30 to i64, !dbg !1205
  %arrayidx32 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom31, !dbg !1205
  %22 = load i8, i8* %arrayidx32, align 1, !dbg !1205, !tbaa !544
  %23 = load i8*, i8** %result.addr, align 8, !dbg !1206, !tbaa !523
  store i8 %22, i8* %23, align 1, !dbg !1207, !tbaa !544
  br label %if.end.35, !dbg !1208

if.else.33:                                       ; preds = %for.body
  %24 = load i32, i32* %c16, align 4, !dbg !1209, !tbaa !549
  %conv34 = trunc i32 %24 to i8, !dbg !1209
  %25 = load i8*, i8** %result.addr, align 8, !dbg !1210, !tbaa !523
  store i8 %conv34, i8* %25, align 1, !dbg !1211, !tbaa !544
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.28
  %26 = load i8*, i8** %result.addr, align 8, !dbg !1212, !tbaa !523
  %incdec.ptr36 = getelementptr i8, i8* %26, i32 1, !dbg !1212
  store i8* %incdec.ptr36, i8** %result.addr, align 8, !dbg !1212, !tbaa !523
  %27 = bitcast i32* %c16 to i8*, !dbg !1213
  call void @llvm.lifetime.end(i64 4, i8* %27) #2, !dbg !1213
  br label %for.inc, !dbg !1214

for.inc:                                          ; preds = %if.end.35
  %28 = load i64, i64* %i, align 8, !dbg !1215, !tbaa !529
  %inc = add i64 %28, 1, !dbg !1215
  store i64 %inc, i64* %i, align 8, !dbg !1215, !tbaa !529
  br label %for.cond, !dbg !1216

for.end:                                          ; preds = %for.cond
  %29 = bitcast i64* %i to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1217
  ret void, !dbg !1217
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_swapcase(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !451, metadata !527), !dbg !1218
  store i8* %s, i8** %s.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !452, metadata !527), !dbg !1219
  store i64 %len, i64* %len.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !453, metadata !527), !dbg !1220
  %0 = bitcast i64* %i to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1221
  call void @llvm.dbg.declare(metadata i64* %i, metadata !454, metadata !527), !dbg !1222
  store i64 0, i64* %i, align 8, !dbg !1223, !tbaa !529
  br label %for.cond, !dbg !1224

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !1225, !tbaa !529
  %2 = load i64, i64* %len.addr, align 8, !dbg !1228, !tbaa !529
  %cmp = icmp slt i64 %1, %2, !dbg !1229
  br i1 %cmp, label %for.body, label %for.end, !dbg !1230

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %c to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1231
  call void @llvm.dbg.declare(metadata i32* %c, metadata !455, metadata !527), !dbg !1232
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1233, !tbaa !523
  %incdec.ptr = getelementptr i8, i8* %4, i32 1, !dbg !1233
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !1233, !tbaa !523
  %5 = load i8, i8* %4, align 1, !dbg !1234, !tbaa !544
  %conv = sext i8 %5 to i32, !dbg !1235
  %and = and i32 %conv, 255, !dbg !1236
  %conv1 = trunc i32 %and to i8, !dbg !1237
  %conv2 = zext i8 %conv1 to i32, !dbg !1238
  store i32 %conv2, i32* %c, align 4, !dbg !1232, !tbaa !549
  %6 = load i32, i32* %c, align 4, !dbg !1239, !tbaa !549
  %and3 = and i32 %6, 255, !dbg !1241
  %conv4 = trunc i32 %and3 to i8, !dbg !1242
  %idxprom = zext i8 %conv4 to i64, !dbg !1243
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !1243
  %7 = load i32, i32* %arrayidx, align 4, !dbg !1243, !tbaa !549
  %and5 = and i32 %7, 1, !dbg !1244
  %tobool = icmp ne i32 %and5, 0, !dbg !1244
  br i1 %tobool, label %if.then, label %if.else, !dbg !1245

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %c, align 4, !dbg !1246, !tbaa !549
  %and6 = and i32 %8, 255, !dbg !1248
  %conv7 = trunc i32 %and6 to i8, !dbg !1249
  %idxprom8 = zext i8 %conv7 to i64, !dbg !1250
  %arrayidx9 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom8, !dbg !1250
  %9 = load i8, i8* %arrayidx9, align 1, !dbg !1250, !tbaa !544
  %10 = load i8*, i8** %result.addr, align 8, !dbg !1251, !tbaa !523
  store i8 %9, i8* %10, align 1, !dbg !1252, !tbaa !544
  br label %if.end.23, !dbg !1253

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %c, align 4, !dbg !1254, !tbaa !549
  %and10 = and i32 %11, 255, !dbg !1256
  %conv11 = trunc i32 %and10 to i8, !dbg !1257
  %idxprom12 = zext i8 %conv11 to i64, !dbg !1258
  %arrayidx13 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom12, !dbg !1258
  %12 = load i32, i32* %arrayidx13, align 4, !dbg !1258, !tbaa !549
  %and14 = and i32 %12, 2, !dbg !1259
  %tobool15 = icmp ne i32 %and14, 0, !dbg !1259
  br i1 %tobool15, label %if.then.16, label %if.else.21, !dbg !1260

if.then.16:                                       ; preds = %if.else
  %13 = load i32, i32* %c, align 4, !dbg !1261, !tbaa !549
  %and17 = and i32 %13, 255, !dbg !1263
  %conv18 = trunc i32 %and17 to i8, !dbg !1264
  %idxprom19 = zext i8 %conv18 to i64, !dbg !1265
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom19, !dbg !1265
  %14 = load i8, i8* %arrayidx20, align 1, !dbg !1265, !tbaa !544
  %15 = load i8*, i8** %result.addr, align 8, !dbg !1266, !tbaa !523
  store i8 %14, i8* %15, align 1, !dbg !1267, !tbaa !544
  br label %if.end, !dbg !1268

if.else.21:                                       ; preds = %if.else
  %16 = load i32, i32* %c, align 4, !dbg !1269, !tbaa !549
  %conv22 = trunc i32 %16 to i8, !dbg !1269
  %17 = load i8*, i8** %result.addr, align 8, !dbg !1270, !tbaa !523
  store i8 %conv22, i8* %17, align 1, !dbg !1271, !tbaa !544
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %18 = load i8*, i8** %result.addr, align 8, !dbg !1272, !tbaa !523
  %incdec.ptr24 = getelementptr i8, i8* %18, i32 1, !dbg !1272
  store i8* %incdec.ptr24, i8** %result.addr, align 8, !dbg !1272, !tbaa !523
  %19 = bitcast i32* %c to i8*, !dbg !1273
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !1273
  br label %for.inc, !dbg !1274

for.inc:                                          ; preds = %if.end.23
  %20 = load i64, i64* %i, align 8, !dbg !1275, !tbaa !529
  %inc = add i64 %20, 1, !dbg !1275
  store i64 %inc, i64* %i, align 8, !dbg !1275, !tbaa !529
  br label %for.cond, !dbg !1276

for.end:                                          ; preds = %for.cond
  %21 = bitcast i64* %i to i8*, !dbg !1277
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1277
  ret void, !dbg !1277
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_maketrans(%struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %frm = alloca %struct._object*, align 8
  %to = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %bfrm = alloca %struct.bufferinfo, align 8
  %bto = alloca %struct.bufferinfo, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !461, metadata !527), !dbg !1278
  %0 = bitcast %struct._object** %frm to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._object** %frm, metadata !462, metadata !527), !dbg !1280
  %1 = bitcast %struct._object** %to to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._object** %to, metadata !463, metadata !527), !dbg !1281
  %2 = bitcast %struct._object** %res to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !464, metadata !527), !dbg !1282
  store %struct._object* null, %struct._object** %res, align 8, !dbg !1282, !tbaa !523
  %3 = bitcast %struct.bufferinfo* %bfrm to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 80, i8* %3) #2, !dbg !1283
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %bfrm, metadata !465, metadata !527), !dbg !1284
  %4 = bitcast %struct.bufferinfo* %bto to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 80, i8* %4) #2, !dbg !1283
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %bto, metadata !466, metadata !527), !dbg !1285
  %5 = bitcast i64* %i to i8*, !dbg !1286
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %i, metadata !467, metadata !527), !dbg !1287
  %6 = bitcast i8** %p to i8*, !dbg !1288
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1288
  call void @llvm.dbg.declare(metadata i8** %p, metadata !468, metadata !527), !dbg !1289
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2, !dbg !1290
  store i64 -1, i64* %len, align 8, !dbg !1291, !tbaa !1292
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2, !dbg !1294
  store i64 -1, i64* %len1, align 8, !dbg !1295, !tbaa !1292
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1296, !tbaa !523
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object** %frm, %struct._object** %to), !dbg !1298
  %tobool = icmp ne i32 %call, 0, !dbg !1298
  br i1 %tobool, label %if.end, label %if.then, !dbg !1299

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1300
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1300

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %frm, align 8, !dbg !1301, !tbaa !523
  %call2 = call i64 @_getbuffer(%struct._object* %8, %struct.bufferinfo* %bfrm), !dbg !1303
  %cmp = icmp slt i64 %call2, 0, !dbg !1304
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !1305

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1306
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1306

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %to, align 8, !dbg !1307, !tbaa !523
  %call5 = call i64 @_getbuffer(%struct._object* %9, %struct.bufferinfo* %bto), !dbg !1309
  %cmp6 = icmp slt i64 %call5, 0, !dbg !1310
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1311

if.then.7:                                        ; preds = %if.end.4
  br label %done, !dbg !1312

if.end.8:                                         ; preds = %if.end.4
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2, !dbg !1313
  %10 = load i64, i64* %len9, align 8, !dbg !1313, !tbaa !1292
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2, !dbg !1315
  %11 = load i64, i64* %len10, align 8, !dbg !1315, !tbaa !1292
  %cmp11 = icmp ne i64 %10, %11, !dbg !1316
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1317

if.then.12:                                       ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1318, !tbaa !523
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)), !dbg !1320
  br label %done, !dbg !1321

if.end.14:                                        ; preds = %if.end.8
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 256), !dbg !1322
  store %struct._object* %call15, %struct._object** %res, align 8, !dbg !1323, !tbaa !523
  %13 = load %struct._object*, %struct._object** %res, align 8, !dbg !1324, !tbaa !523
  %tobool16 = icmp ne %struct._object* %13, null, !dbg !1324
  br i1 %tobool16, label %if.end.18, label %if.then.17, !dbg !1326

if.then.17:                                       ; preds = %if.end.14
  br label %done, !dbg !1327

if.end.18:                                        ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %res, align 8, !dbg !1329, !tbaa !523
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*, !dbg !1330
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2, !dbg !1331
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1332
  store i8* %arraydecay, i8** %p, align 8, !dbg !1333, !tbaa !523
  store i64 0, i64* %i, align 8, !dbg !1334, !tbaa !529
  br label %for.cond, !dbg !1336

for.cond:                                         ; preds = %for.inc, %if.end.18
  %16 = load i64, i64* %i, align 8, !dbg !1337, !tbaa !529
  %cmp19 = icmp slt i64 %16, 256, !dbg !1341
  br i1 %cmp19, label %for.body, label %for.end, !dbg !1342

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8, !dbg !1343, !tbaa !529
  %conv = trunc i64 %17 to i8, !dbg !1344
  %18 = load i64, i64* %i, align 8, !dbg !1345, !tbaa !529
  %19 = load i8*, i8** %p, align 8, !dbg !1346, !tbaa !523
  %arrayidx = getelementptr i8, i8* %19, i64 %18, !dbg !1346
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1347, !tbaa !544
  br label %for.inc, !dbg !1346

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8, !dbg !1348, !tbaa !529
  %inc = add i64 %20, 1, !dbg !1348
  store i64 %inc, i64* %i, align 8, !dbg !1348, !tbaa !529
  br label %for.cond, !dbg !1349

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8, !dbg !1350, !tbaa !529
  br label %for.cond.20, !dbg !1352

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %21 = load i64, i64* %i, align 8, !dbg !1353, !tbaa !529
  %len21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2, !dbg !1357
  %22 = load i64, i64* %len21, align 8, !dbg !1357, !tbaa !1292
  %cmp22 = icmp slt i64 %21, %22, !dbg !1358
  br i1 %cmp22, label %for.body.24, label %for.end.31, !dbg !1359

for.body.24:                                      ; preds = %for.cond.20
  %23 = load i64, i64* %i, align 8, !dbg !1360, !tbaa !529
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 0, !dbg !1362
  %24 = load i8*, i8** %buf, align 8, !dbg !1362, !tbaa !1363
  %arrayidx25 = getelementptr i8, i8* %24, i64 %23, !dbg !1364
  %25 = load i8, i8* %arrayidx25, align 1, !dbg !1364, !tbaa !544
  %26 = load i64, i64* %i, align 8, !dbg !1365, !tbaa !529
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 0, !dbg !1366
  %27 = load i8*, i8** %buf26, align 8, !dbg !1366, !tbaa !1363
  %arrayidx27 = getelementptr i8, i8* %27, i64 %26, !dbg !1367
  %28 = load i8, i8* %arrayidx27, align 1, !dbg !1367, !tbaa !544
  %idxprom = zext i8 %28 to i64, !dbg !1368
  %29 = load i8*, i8** %p, align 8, !dbg !1368, !tbaa !523
  %arrayidx28 = getelementptr i8, i8* %29, i64 %idxprom, !dbg !1368
  store i8 %25, i8* %arrayidx28, align 1, !dbg !1369, !tbaa !544
  br label %for.inc.29, !dbg !1370

for.inc.29:                                       ; preds = %for.body.24
  %30 = load i64, i64* %i, align 8, !dbg !1371, !tbaa !529
  %inc30 = add i64 %30, 1, !dbg !1371
  store i64 %inc30, i64* %i, align 8, !dbg !1371, !tbaa !529
  br label %for.cond.20, !dbg !1372

for.end.31:                                       ; preds = %for.cond.20
  br label %done, !dbg !1373

done:                                             ; preds = %for.end.31, %if.then.17, %if.then.12, %if.then.7
  %len32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2, !dbg !1374
  %31 = load i64, i64* %len32, align 8, !dbg !1374, !tbaa !1292
  %cmp33 = icmp ne i64 %31, -1, !dbg !1376
  br i1 %cmp33, label %if.then.35, label %if.end.36, !dbg !1377

if.then.35:                                       ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %bfrm), !dbg !1378
  br label %if.end.36, !dbg !1378

if.end.36:                                        ; preds = %if.then.35, %done
  %len37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2, !dbg !1379
  %32 = load i64, i64* %len37, align 8, !dbg !1379, !tbaa !1292
  %cmp38 = icmp ne i64 %32, -1, !dbg !1381
  br i1 %cmp38, label %if.then.40, label %if.end.41, !dbg !1382

if.then.40:                                       ; preds = %if.end.36
  call void @PyBuffer_Release(%struct.bufferinfo* %bto), !dbg !1383
  br label %if.end.41, !dbg !1383

if.end.41:                                        ; preds = %if.then.40, %if.end.36
  %33 = load %struct._object*, %struct._object** %res, align 8, !dbg !1384, !tbaa !523
  store %struct._object* %33, %struct._object** %retval, !dbg !1385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1385

cleanup:                                          ; preds = %if.end.41, %if.then.3, %if.then
  %34 = bitcast i8** %p to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1386
  %35 = bitcast i64* %i to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1386
  %36 = bitcast %struct.bufferinfo* %bto to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 80, i8* %36) #2, !dbg !1386
  %37 = bitcast %struct.bufferinfo* %bfrm to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 80, i8* %37) #2, !dbg !1386
  %38 = bitcast %struct._object** %res to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1386
  %39 = bitcast %struct._object** %to to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1386
  %40 = bitcast %struct._object** %frm to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1386
  %41 = load %struct._object*, %struct._object** %retval, !dbg !1386
  ret %struct._object* %41, !dbg !1386
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @_getbuffer(%struct._object* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %buffer = alloca %struct.PyBufferProcs*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !473, metadata !527), !dbg !1387
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !523
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !474, metadata !527), !dbg !1388
  %0 = bitcast %struct.PyBufferProcs** %buffer to i8*, !dbg !1389
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.PyBufferProcs** %buffer, metadata !475, metadata !527), !dbg !1390
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1391, !tbaa !523
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1392
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1392, !tbaa !1393
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 18, !dbg !1394
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !1394, !tbaa !1395
  store %struct.PyBufferProcs* %3, %struct.PyBufferProcs** %buffer, align 8, !dbg !1390, !tbaa !523
  %4 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8, !dbg !1398, !tbaa !523
  %cmp = icmp eq %struct.PyBufferProcs* %4, null, !dbg !1400
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1401

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8, !dbg !1402, !tbaa !523
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %5, i32 0, i32 0, !dbg !1404
  %6 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !1404, !tbaa !1405
  %cmp1 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %6, null, !dbg !1407
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1408

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1409, !tbaa !523
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1411, !tbaa !523
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1412
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1412, !tbaa !1393
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !1413
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1413, !tbaa !1414
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %10), !dbg !1415
  store i64 -1, i64* %retval, !dbg !1416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1416

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8, !dbg !1417, !tbaa !523
  %bf_getbuffer3 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %11, i32 0, i32 0, !dbg !1419
  %12 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer3, align 8, !dbg !1419, !tbaa !1405
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1420, !tbaa !523
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !1421, !tbaa !523
  %call4 = call i32 %12(%struct._object* %13, %struct.bufferinfo* %14, i32 0), !dbg !1417
  %cmp5 = icmp slt i32 %call4, 0, !dbg !1422
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1423

if.then.6:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !1424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1424

if.end.7:                                         ; preds = %if.end
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !1425, !tbaa !523
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 2, !dbg !1426
  %16 = load i64, i64* %len, align 8, !dbg !1426, !tbaa !1292
  store i64 %16, i64* %retval, !dbg !1427
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1427

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %17 = bitcast %struct.PyBufferProcs** %buffer to i8*, !dbg !1428
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1428
  %18 = load i64, i64* %retval, !dbg !1428
  ret i64 %18, !dbg !1428
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!520, !521}
!llvm.ident = !{!522}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !353, globals: !476)
!1 = !DIFile(filename: "bytes_methods.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !6, !345, !32, !53, !91}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !8, line: 109, baseType: !9)
!8 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !8, line: 105, size: 128, align: 64, elements: !10)
!10 = !{!11, !19}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !9, file: !8, line: 107, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !13, line: 177, baseType: !14)
!13 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !15, line: 102, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !17, line: 181, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!49 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!97 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!283 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!296 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!347 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!348 = !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 31, size: 320, align: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !348, file: !347, line: 32, baseType: !24, size: 192, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !348, file: !347, line: 33, baseType: !220, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !348, file: !347, line: 34, baseType: !82, size: 8, align: 8, offset: 256)
!353 = !{!354, !365, !371, !377, !383, !390, !397, !409, !417, !423, !436, !449, !459, !469}
!354 = !DISubprogram(name: "_Py_bytes_isspace", scope: !355, file: !355, line: 11, type: !356, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isspace, variables: !358)
!355 = !DIFile(filename: "Objects/bytes_methods.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !30, !12}
!358 = !{!359, !360, !361, !364}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !354, file: !355, line: 11, type: !30)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !354, file: !355, line: 11, type: !12)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !354, file: !355, line: 13, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !354, file: !355, line: 15, type: !362)
!365 = !DISubprogram(name: "_Py_bytes_isalpha", scope: !355, file: !355, line: 41, type: !356, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isalpha, variables: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !365, file: !355, line: 41, type: !30)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !365, file: !355, line: 41, type: !12)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !365, file: !355, line: 43, type: !362)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !365, file: !355, line: 45, type: !362)
!371 = !DISubprogram(name: "_Py_bytes_isalnum", scope: !355, file: !355, line: 71, type: !356, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isalnum, variables: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !371, file: !355, line: 71, type: !30)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !371, file: !355, line: 71, type: !12)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !371, file: !355, line: 73, type: !362)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !371, file: !355, line: 75, type: !362)
!377 = !DISubprogram(name: "_Py_bytes_isdigit", scope: !355, file: !355, line: 101, type: !356, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isdigit, variables: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !377, file: !355, line: 101, type: !30)
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !377, file: !355, line: 101, type: !12)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !377, file: !355, line: 103, type: !362)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !377, file: !355, line: 105, type: !362)
!383 = !DISubprogram(name: "_Py_bytes_islower", scope: !355, file: !355, line: 131, type: !356, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_islower, variables: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !383, file: !355, line: 131, type: !30)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !383, file: !355, line: 131, type: !12)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !383, file: !355, line: 133, type: !362)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !383, file: !355, line: 135, type: !362)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !383, file: !355, line: 136, type: !45)
!390 = !DISubprogram(name: "_Py_bytes_isupper", scope: !355, file: !355, line: 165, type: !356, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isupper, variables: !391)
!391 = !{!392, !393, !394, !395, !396}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !390, file: !355, line: 165, type: !30)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !390, file: !355, line: 165, type: !12)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !390, file: !355, line: 167, type: !362)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !390, file: !355, line: 169, type: !362)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !390, file: !355, line: 170, type: !45)
!397 = !DISubprogram(name: "_Py_bytes_istitle", scope: !355, file: !355, line: 201, type: !356, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_istitle, variables: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !397, file: !355, line: 201, type: !30)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !397, file: !355, line: 201, type: !12)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !397, file: !355, line: 203, type: !362)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !397, file: !355, line: 205, type: !362)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !397, file: !355, line: 206, type: !45)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous_is_cased", scope: !397, file: !355, line: 206, type: !45)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !406, file: !355, line: 220, type: !363)
!406 = distinct !DILexicalBlock(scope: !407, file: !355, line: 219, column: 24)
!407 = distinct !DILexicalBlock(scope: !408, file: !355, line: 219, column: 5)
!408 = distinct !DILexicalBlock(scope: !397, file: !355, line: 219, column: 5)
!409 = !DISubprogram(name: "_Py_bytes_lower", scope: !355, file: !355, line: 247, type: !410, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_lower, variables: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !53, !30, !12}
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !409, file: !355, line: 247, type: !53)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 2, scope: !409, file: !355, line: 247, type: !30)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !409, file: !355, line: 247, type: !12)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !409, file: !355, line: 249, type: !12)
!417 = !DISubprogram(name: "_Py_bytes_upper", scope: !355, file: !355, line: 263, type: !410, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_upper, variables: !418)
!418 = !{!419, !420, !421, !422}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !417, file: !355, line: 263, type: !53)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 2, scope: !417, file: !355, line: 263, type: !30)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !417, file: !355, line: 263, type: !12)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !417, file: !355, line: 265, type: !12)
!423 = !DISubprogram(name: "_Py_bytes_title", scope: !355, file: !355, line: 280, type: !424, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_title, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !53, !53, !12}
!426 = !{!427, !428, !429, !430, !431, !432}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !423, file: !355, line: 280, type: !53)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !423, file: !355, line: 280, type: !53)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !423, file: !355, line: 280, type: !12)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !423, file: !355, line: 282, type: !12)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous_is_cased", scope: !423, file: !355, line: 283, type: !45)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !433, file: !355, line: 286, type: !45)
!433 = distinct !DILexicalBlock(scope: !434, file: !355, line: 285, column: 31)
!434 = distinct !DILexicalBlock(scope: !435, file: !355, line: 285, column: 5)
!435 = distinct !DILexicalBlock(scope: !423, file: !355, line: 285, column: 5)
!436 = !DISubprogram(name: "_Py_bytes_capitalize", scope: !355, file: !355, line: 309, type: !424, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_capitalize, variables: !437)
!437 = !{!438, !439, !440, !441, !442, !445}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !436, file: !355, line: 309, type: !53)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !436, file: !355, line: 309, type: !53)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !436, file: !355, line: 309, type: !12)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !436, file: !355, line: 311, type: !12)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !443, file: !355, line: 314, type: !45)
!443 = distinct !DILexicalBlock(scope: !444, file: !355, line: 313, column: 18)
!444 = distinct !DILexicalBlock(scope: !436, file: !355, line: 313, column: 9)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !446, file: !355, line: 322, type: !45)
!446 = distinct !DILexicalBlock(scope: !447, file: !355, line: 321, column: 31)
!447 = distinct !DILexicalBlock(scope: !448, file: !355, line: 321, column: 5)
!448 = distinct !DILexicalBlock(scope: !436, file: !355, line: 321, column: 5)
!449 = !DISubprogram(name: "_Py_bytes_swapcase", scope: !355, file: !355, line: 339, type: !424, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_swapcase, variables: !450)
!450 = !{!451, !452, !453, !454, !455}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !449, file: !355, line: 339, type: !53)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !449, file: !355, line: 339, type: !53)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !449, file: !355, line: 339, type: !12)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !449, file: !355, line: 341, type: !12)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !456, file: !355, line: 344, type: !45)
!456 = distinct !DILexicalBlock(scope: !457, file: !355, line: 343, column: 31)
!457 = distinct !DILexicalBlock(scope: !458, file: !355, line: 343, column: 5)
!458 = distinct !DILexicalBlock(scope: !449, file: !355, line: 343, column: 5)
!459 = !DISubprogram(name: "_Py_bytes_maketrans", scope: !355, file: !355, line: 385, type: !118, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @_Py_bytes_maketrans, variables: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468}
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !459, file: !355, line: 385, type: !6)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frm", scope: !459, file: !355, line: 387, type: !6)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to", scope: !459, file: !355, line: 387, type: !6)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !459, file: !355, line: 387, type: !6)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bfrm", scope: !459, file: !355, line: 388, type: !238)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bto", scope: !459, file: !355, line: 388, type: !238)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !459, file: !355, line: 389, type: !12)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !459, file: !355, line: 390, type: !53)
!469 = !DISubprogram(name: "_getbuffer", scope: !355, file: !355, line: 367, type: !470, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, %struct.bufferinfo*)* @_getbuffer, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!12, !6, !237}
!472 = !{!473, !474, !475}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !469, file: !355, line: 367, type: !6)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !469, file: !355, line: 367, type: !237)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !469, file: !355, line: 369, type: !228)
!476 = !{!477, !481, !482, !486, !490, !494, !495, !499, !503, !504, !508, !512, !516}
!477 = !DIGlobalVariable(name: "_Py_isspace__doc__", scope: !0, file: !355, line: 4, type: !478, isLocal: false, isDefinition: true, variable: [130 x i8]* @_Py_isspace__doc__)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1040, align: 8, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 130)
!481 = !DIGlobalVariable(name: "_Py_isalpha__doc__", scope: !0, file: !355, line: 34, type: !478, isLocal: false, isDefinition: true, variable: [130 x i8]* @_Py_isalpha__doc__)
!482 = !DIGlobalVariable(name: "_Py_isalnum__doc__", scope: !0, file: !355, line: 64, type: !483, isLocal: false, isDefinition: true, variable: [132 x i8]* @_Py_isalnum__doc__)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1056, align: 8, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 132)
!486 = !DIGlobalVariable(name: "_Py_isdigit__doc__", scope: !0, file: !355, line: 94, type: !487, isLocal: false, isDefinition: true, variable: [126 x i8]* @_Py_isdigit__doc__)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1008, align: 8, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 126)
!490 = !DIGlobalVariable(name: "_Py_islower__doc__", scope: !0, file: !355, line: 124, type: !491, isLocal: false, isDefinition: true, variable: [141 x i8]* @_Py_islower__doc__)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1128, align: 8, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 141)
!494 = !DIGlobalVariable(name: "_Py_isupper__doc__", scope: !0, file: !355, line: 158, type: !491, isLocal: false, isDefinition: true, variable: [141 x i8]* @_Py_isupper__doc__)
!495 = !DIGlobalVariable(name: "_Py_istitle__doc__", scope: !0, file: !355, line: 192, type: !496, isLocal: false, isDefinition: true, variable: [230 x i8]* @_Py_istitle__doc__)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1840, align: 8, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 230)
!499 = !DIGlobalVariable(name: "_Py_lower__doc__", scope: !0, file: !355, line: 241, type: !500, isLocal: false, isDefinition: true, variable: [93 x i8]* @_Py_lower__doc__)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 744, align: 8, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 93)
!503 = !DIGlobalVariable(name: "_Py_upper__doc__", scope: !0, file: !355, line: 257, type: !500, isLocal: false, isDefinition: true, variable: [93 x i8]* @_Py_upper__doc__)
!504 = !DIGlobalVariable(name: "_Py_title__doc__", scope: !0, file: !355, line: 273, type: !505, isLocal: false, isDefinition: true, variable: [155 x i8]* @_Py_title__doc__)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1240, align: 8, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 155)
!508 = !DIGlobalVariable(name: "_Py_capitalize__doc__", scope: !0, file: !355, line: 302, type: !509, isLocal: false, isDefinition: true, variable: [124 x i8]* @_Py_capitalize__doc__)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 992, align: 8, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 124)
!512 = !DIGlobalVariable(name: "_Py_swapcase__doc__", scope: !0, file: !355, line: 332, type: !513, isLocal: false, isDefinition: true, variable: [123 x i8]* @_Py_swapcase__doc__)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 984, align: 8, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 123)
!516 = !DIGlobalVariable(name: "_Py_maketrans__doc__", scope: !0, file: !355, line: 358, type: !517, isLocal: false, isDefinition: true, variable: [291 x i8]* @_Py_maketrans__doc__)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2328, align: 8, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 291)
!520 = !{i32 2, !"Dwarf Version", i32 4}
!521 = !{i32 2, !"Debug Info Version", i32 3}
!522 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!523 = !{!524, !524, i64 0}
!524 = !{!"any pointer", !525, i64 0}
!525 = !{!"omnipotent char", !526, i64 0}
!526 = !{!"Simple C/C++ TBAA"}
!527 = !DIExpression()
!528 = !DILocation(line: 11, column: 31, scope: !354)
!529 = !{!530, !530, i64 0}
!530 = !{!"long", !525, i64 0}
!531 = !DILocation(line: 11, column: 48, scope: !354)
!532 = !DILocation(line: 13, column: 5, scope: !354)
!533 = !DILocation(line: 13, column: 26, scope: !354)
!534 = !DILocation(line: 14, column: 29, scope: !354)
!535 = !DILocation(line: 15, column: 5, scope: !354)
!536 = !DILocation(line: 15, column: 26, scope: !354)
!537 = !DILocation(line: 18, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !354, file: !355, line: 18, column: 9)
!539 = !DILocation(line: 18, column: 13, scope: !538)
!540 = !DILocation(line: 18, column: 18, scope: !538)
!541 = !DILocation(line: 18, column: 57, scope: !542)
!542 = !DILexicalBlockFile(scope: !538, file: !355, discriminator: 1)
!543 = !DILocation(line: 18, column: 56, scope: !538)
!544 = !{!525, !525, i64 0}
!545 = !DILocation(line: 18, column: 55, scope: !538)
!546 = !DILocation(line: 18, column: 60, scope: !538)
!547 = !DILocation(line: 18, column: 39, scope: !538)
!548 = !DILocation(line: 18, column: 22, scope: !538)
!549 = !{!550, !550, i64 0}
!550 = !{!"int", !525, i64 0}
!551 = !DILocation(line: 18, column: 70, scope: !538)
!552 = !DILocation(line: 18, column: 9, scope: !354)
!553 = !DILocation(line: 19, column: 75, scope: !538)
!554 = !{!555, !530, i64 0}
!555 = !{!"_object", !530, i64 0, !524, i64 8}
!556 = !DILocation(line: 19, column: 9, scope: !538)
!557 = !DILocation(line: 22, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !354, file: !355, line: 22, column: 9)
!559 = !DILocation(line: 22, column: 13, scope: !558)
!560 = !DILocation(line: 22, column: 9, scope: !354)
!561 = !DILocation(line: 23, column: 76, scope: !558)
!562 = !DILocation(line: 23, column: 9, scope: !558)
!563 = !DILocation(line: 25, column: 9, scope: !354)
!564 = !DILocation(line: 25, column: 13, scope: !354)
!565 = !DILocation(line: 25, column: 11, scope: !354)
!566 = !DILocation(line: 25, column: 7, scope: !354)
!567 = !DILocation(line: 26, column: 5, scope: !354)
!568 = !DILocation(line: 26, column: 12, scope: !569)
!569 = !DILexicalBlockFile(scope: !570, file: !355, discriminator: 2)
!570 = !DILexicalBlockFile(scope: !571, file: !355, discriminator: 1)
!571 = distinct !DILexicalBlock(scope: !572, file: !355, line: 26, column: 5)
!572 = distinct !DILexicalBlock(scope: !354, file: !355, line: 26, column: 5)
!573 = !DILocation(line: 26, column: 16, scope: !571)
!574 = !DILocation(line: 26, column: 14, scope: !571)
!575 = !DILocation(line: 26, column: 5, scope: !572)
!576 = !DILocation(line: 27, column: 50, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !355, line: 27, column: 13)
!578 = distinct !DILexicalBlock(scope: !571, file: !355, line: 26, column: 24)
!579 = !DILocation(line: 27, column: 49, scope: !577)
!580 = !DILocation(line: 27, column: 48, scope: !577)
!581 = !DILocation(line: 27, column: 53, scope: !577)
!582 = !DILocation(line: 27, column: 32, scope: !577)
!583 = !DILocation(line: 27, column: 15, scope: !577)
!584 = !DILocation(line: 27, column: 63, scope: !577)
!585 = !DILocation(line: 27, column: 13, scope: !578)
!586 = !DILocation(line: 28, column: 80, scope: !577)
!587 = !DILocation(line: 28, column: 13, scope: !577)
!588 = !DILocation(line: 29, column: 5, scope: !578)
!589 = !DILocation(line: 26, column: 20, scope: !571)
!590 = !DILocation(line: 26, column: 5, scope: !571)
!591 = !DILocation(line: 30, column: 71, scope: !354)
!592 = !DILocation(line: 30, column: 5, scope: !354)
!593 = !DILocation(line: 31, column: 1, scope: !354)
!594 = !DILocation(line: 41, column: 31, scope: !365)
!595 = !DILocation(line: 41, column: 48, scope: !365)
!596 = !DILocation(line: 43, column: 5, scope: !365)
!597 = !DILocation(line: 43, column: 26, scope: !365)
!598 = !DILocation(line: 44, column: 29, scope: !365)
!599 = !DILocation(line: 45, column: 5, scope: !365)
!600 = !DILocation(line: 45, column: 26, scope: !365)
!601 = !DILocation(line: 48, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !365, file: !355, line: 48, column: 9)
!603 = !DILocation(line: 48, column: 13, scope: !602)
!604 = !DILocation(line: 48, column: 18, scope: !602)
!605 = !DILocation(line: 48, column: 57, scope: !606)
!606 = !DILexicalBlockFile(scope: !602, file: !355, discriminator: 1)
!607 = !DILocation(line: 48, column: 56, scope: !602)
!608 = !DILocation(line: 48, column: 55, scope: !602)
!609 = !DILocation(line: 48, column: 60, scope: !602)
!610 = !DILocation(line: 48, column: 39, scope: !602)
!611 = !DILocation(line: 48, column: 22, scope: !602)
!612 = !DILocation(line: 48, column: 70, scope: !602)
!613 = !DILocation(line: 48, column: 9, scope: !365)
!614 = !DILocation(line: 49, column: 75, scope: !602)
!615 = !DILocation(line: 49, column: 9, scope: !602)
!616 = !DILocation(line: 52, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !365, file: !355, line: 52, column: 9)
!618 = !DILocation(line: 52, column: 13, scope: !617)
!619 = !DILocation(line: 52, column: 9, scope: !365)
!620 = !DILocation(line: 53, column: 76, scope: !617)
!621 = !DILocation(line: 53, column: 9, scope: !617)
!622 = !DILocation(line: 55, column: 9, scope: !365)
!623 = !DILocation(line: 55, column: 13, scope: !365)
!624 = !DILocation(line: 55, column: 11, scope: !365)
!625 = !DILocation(line: 55, column: 7, scope: !365)
!626 = !DILocation(line: 56, column: 5, scope: !365)
!627 = !DILocation(line: 56, column: 12, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !355, discriminator: 2)
!629 = !DILexicalBlockFile(scope: !630, file: !355, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !631, file: !355, line: 56, column: 5)
!631 = distinct !DILexicalBlock(scope: !365, file: !355, line: 56, column: 5)
!632 = !DILocation(line: 56, column: 16, scope: !630)
!633 = !DILocation(line: 56, column: 14, scope: !630)
!634 = !DILocation(line: 56, column: 5, scope: !631)
!635 = !DILocation(line: 57, column: 50, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !355, line: 57, column: 13)
!637 = distinct !DILexicalBlock(scope: !630, file: !355, line: 56, column: 24)
!638 = !DILocation(line: 57, column: 49, scope: !636)
!639 = !DILocation(line: 57, column: 48, scope: !636)
!640 = !DILocation(line: 57, column: 53, scope: !636)
!641 = !DILocation(line: 57, column: 32, scope: !636)
!642 = !DILocation(line: 57, column: 15, scope: !636)
!643 = !DILocation(line: 57, column: 63, scope: !636)
!644 = !DILocation(line: 57, column: 13, scope: !637)
!645 = !DILocation(line: 58, column: 80, scope: !636)
!646 = !DILocation(line: 58, column: 13, scope: !636)
!647 = !DILocation(line: 59, column: 5, scope: !637)
!648 = !DILocation(line: 56, column: 20, scope: !630)
!649 = !DILocation(line: 56, column: 5, scope: !630)
!650 = !DILocation(line: 60, column: 71, scope: !365)
!651 = !DILocation(line: 60, column: 5, scope: !365)
!652 = !DILocation(line: 61, column: 1, scope: !365)
!653 = !DILocation(line: 71, column: 31, scope: !371)
!654 = !DILocation(line: 71, column: 48, scope: !371)
!655 = !DILocation(line: 73, column: 5, scope: !371)
!656 = !DILocation(line: 73, column: 26, scope: !371)
!657 = !DILocation(line: 74, column: 29, scope: !371)
!658 = !DILocation(line: 75, column: 5, scope: !371)
!659 = !DILocation(line: 75, column: 26, scope: !371)
!660 = !DILocation(line: 78, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !371, file: !355, line: 78, column: 9)
!662 = !DILocation(line: 78, column: 13, scope: !661)
!663 = !DILocation(line: 78, column: 18, scope: !661)
!664 = !DILocation(line: 78, column: 57, scope: !665)
!665 = !DILexicalBlockFile(scope: !661, file: !355, discriminator: 1)
!666 = !DILocation(line: 78, column: 56, scope: !661)
!667 = !DILocation(line: 78, column: 55, scope: !661)
!668 = !DILocation(line: 78, column: 60, scope: !661)
!669 = !DILocation(line: 78, column: 39, scope: !661)
!670 = !DILocation(line: 78, column: 22, scope: !661)
!671 = !DILocation(line: 78, column: 70, scope: !661)
!672 = !DILocation(line: 78, column: 9, scope: !371)
!673 = !DILocation(line: 79, column: 75, scope: !661)
!674 = !DILocation(line: 79, column: 9, scope: !661)
!675 = !DILocation(line: 82, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !371, file: !355, line: 82, column: 9)
!677 = !DILocation(line: 82, column: 13, scope: !676)
!678 = !DILocation(line: 82, column: 9, scope: !371)
!679 = !DILocation(line: 83, column: 76, scope: !676)
!680 = !DILocation(line: 83, column: 9, scope: !676)
!681 = !DILocation(line: 85, column: 9, scope: !371)
!682 = !DILocation(line: 85, column: 13, scope: !371)
!683 = !DILocation(line: 85, column: 11, scope: !371)
!684 = !DILocation(line: 85, column: 7, scope: !371)
!685 = !DILocation(line: 86, column: 5, scope: !371)
!686 = !DILocation(line: 86, column: 12, scope: !687)
!687 = !DILexicalBlockFile(scope: !688, file: !355, discriminator: 2)
!688 = !DILexicalBlockFile(scope: !689, file: !355, discriminator: 1)
!689 = distinct !DILexicalBlock(scope: !690, file: !355, line: 86, column: 5)
!690 = distinct !DILexicalBlock(scope: !371, file: !355, line: 86, column: 5)
!691 = !DILocation(line: 86, column: 16, scope: !689)
!692 = !DILocation(line: 86, column: 14, scope: !689)
!693 = !DILocation(line: 86, column: 5, scope: !690)
!694 = !DILocation(line: 87, column: 50, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !355, line: 87, column: 13)
!696 = distinct !DILexicalBlock(scope: !689, file: !355, line: 86, column: 24)
!697 = !DILocation(line: 87, column: 49, scope: !695)
!698 = !DILocation(line: 87, column: 48, scope: !695)
!699 = !DILocation(line: 87, column: 53, scope: !695)
!700 = !DILocation(line: 87, column: 32, scope: !695)
!701 = !DILocation(line: 87, column: 15, scope: !695)
!702 = !DILocation(line: 87, column: 63, scope: !695)
!703 = !DILocation(line: 87, column: 13, scope: !696)
!704 = !DILocation(line: 88, column: 80, scope: !695)
!705 = !DILocation(line: 88, column: 13, scope: !695)
!706 = !DILocation(line: 89, column: 5, scope: !696)
!707 = !DILocation(line: 86, column: 20, scope: !689)
!708 = !DILocation(line: 86, column: 5, scope: !689)
!709 = !DILocation(line: 90, column: 71, scope: !371)
!710 = !DILocation(line: 90, column: 5, scope: !371)
!711 = !DILocation(line: 91, column: 1, scope: !371)
!712 = !DILocation(line: 101, column: 31, scope: !377)
!713 = !DILocation(line: 101, column: 48, scope: !377)
!714 = !DILocation(line: 103, column: 5, scope: !377)
!715 = !DILocation(line: 103, column: 26, scope: !377)
!716 = !DILocation(line: 104, column: 29, scope: !377)
!717 = !DILocation(line: 105, column: 5, scope: !377)
!718 = !DILocation(line: 105, column: 26, scope: !377)
!719 = !DILocation(line: 108, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !377, file: !355, line: 108, column: 9)
!721 = !DILocation(line: 108, column: 13, scope: !720)
!722 = !DILocation(line: 108, column: 18, scope: !720)
!723 = !DILocation(line: 108, column: 57, scope: !724)
!724 = !DILexicalBlockFile(scope: !720, file: !355, discriminator: 1)
!725 = !DILocation(line: 108, column: 56, scope: !720)
!726 = !DILocation(line: 108, column: 55, scope: !720)
!727 = !DILocation(line: 108, column: 60, scope: !720)
!728 = !DILocation(line: 108, column: 39, scope: !720)
!729 = !DILocation(line: 108, column: 22, scope: !720)
!730 = !DILocation(line: 108, column: 70, scope: !720)
!731 = !DILocation(line: 108, column: 9, scope: !377)
!732 = !DILocation(line: 109, column: 75, scope: !720)
!733 = !DILocation(line: 109, column: 9, scope: !720)
!734 = !DILocation(line: 112, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !377, file: !355, line: 112, column: 9)
!736 = !DILocation(line: 112, column: 13, scope: !735)
!737 = !DILocation(line: 112, column: 9, scope: !377)
!738 = !DILocation(line: 113, column: 76, scope: !735)
!739 = !DILocation(line: 113, column: 9, scope: !735)
!740 = !DILocation(line: 115, column: 9, scope: !377)
!741 = !DILocation(line: 115, column: 13, scope: !377)
!742 = !DILocation(line: 115, column: 11, scope: !377)
!743 = !DILocation(line: 115, column: 7, scope: !377)
!744 = !DILocation(line: 116, column: 5, scope: !377)
!745 = !DILocation(line: 116, column: 12, scope: !746)
!746 = !DILexicalBlockFile(scope: !747, file: !355, discriminator: 2)
!747 = !DILexicalBlockFile(scope: !748, file: !355, discriminator: 1)
!748 = distinct !DILexicalBlock(scope: !749, file: !355, line: 116, column: 5)
!749 = distinct !DILexicalBlock(scope: !377, file: !355, line: 116, column: 5)
!750 = !DILocation(line: 116, column: 16, scope: !748)
!751 = !DILocation(line: 116, column: 14, scope: !748)
!752 = !DILocation(line: 116, column: 5, scope: !749)
!753 = !DILocation(line: 117, column: 50, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !355, line: 117, column: 13)
!755 = distinct !DILexicalBlock(scope: !748, file: !355, line: 116, column: 24)
!756 = !DILocation(line: 117, column: 49, scope: !754)
!757 = !DILocation(line: 117, column: 48, scope: !754)
!758 = !DILocation(line: 117, column: 53, scope: !754)
!759 = !DILocation(line: 117, column: 32, scope: !754)
!760 = !DILocation(line: 117, column: 15, scope: !754)
!761 = !DILocation(line: 117, column: 63, scope: !754)
!762 = !DILocation(line: 117, column: 13, scope: !755)
!763 = !DILocation(line: 118, column: 80, scope: !754)
!764 = !DILocation(line: 118, column: 13, scope: !754)
!765 = !DILocation(line: 119, column: 5, scope: !755)
!766 = !DILocation(line: 116, column: 20, scope: !748)
!767 = !DILocation(line: 116, column: 5, scope: !748)
!768 = !DILocation(line: 120, column: 71, scope: !377)
!769 = !DILocation(line: 120, column: 5, scope: !377)
!770 = !DILocation(line: 121, column: 1, scope: !377)
!771 = !DILocation(line: 131, column: 31, scope: !383)
!772 = !DILocation(line: 131, column: 48, scope: !383)
!773 = !DILocation(line: 133, column: 5, scope: !383)
!774 = !DILocation(line: 133, column: 26, scope: !383)
!775 = !DILocation(line: 134, column: 29, scope: !383)
!776 = !DILocation(line: 135, column: 5, scope: !383)
!777 = !DILocation(line: 135, column: 26, scope: !383)
!778 = !DILocation(line: 136, column: 5, scope: !383)
!779 = !DILocation(line: 136, column: 9, scope: !383)
!780 = !DILocation(line: 139, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !383, file: !355, line: 139, column: 9)
!782 = !DILocation(line: 139, column: 13, scope: !781)
!783 = !DILocation(line: 139, column: 9, scope: !383)
!784 = !DILocation(line: 140, column: 68, scope: !781)
!785 = !DILocation(line: 140, column: 67, scope: !781)
!786 = !DILocation(line: 140, column: 66, scope: !781)
!787 = !DILocation(line: 140, column: 71, scope: !781)
!788 = !DILocation(line: 140, column: 50, scope: !781)
!789 = !DILocation(line: 140, column: 33, scope: !781)
!790 = !DILocation(line: 140, column: 81, scope: !781)
!791 = !DILocation(line: 140, column: 32, scope: !781)
!792 = !DILocation(line: 140, column: 16, scope: !781)
!793 = !DILocation(line: 140, column: 9, scope: !781)
!794 = !DILocation(line: 143, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !383, file: !355, line: 143, column: 9)
!796 = !DILocation(line: 143, column: 13, scope: !795)
!797 = !DILocation(line: 143, column: 9, scope: !383)
!798 = !DILocation(line: 144, column: 76, scope: !795)
!799 = !DILocation(line: 144, column: 9, scope: !795)
!800 = !DILocation(line: 146, column: 9, scope: !383)
!801 = !DILocation(line: 146, column: 13, scope: !383)
!802 = !DILocation(line: 146, column: 11, scope: !383)
!803 = !DILocation(line: 146, column: 7, scope: !383)
!804 = !DILocation(line: 147, column: 11, scope: !383)
!805 = !DILocation(line: 148, column: 5, scope: !383)
!806 = !DILocation(line: 148, column: 12, scope: !807)
!807 = !DILexicalBlockFile(scope: !808, file: !355, discriminator: 2)
!808 = !DILexicalBlockFile(scope: !809, file: !355, discriminator: 1)
!809 = distinct !DILexicalBlock(scope: !810, file: !355, line: 148, column: 5)
!810 = distinct !DILexicalBlock(scope: !383, file: !355, line: 148, column: 5)
!811 = !DILocation(line: 148, column: 16, scope: !809)
!812 = !DILocation(line: 148, column: 14, scope: !809)
!813 = !DILocation(line: 148, column: 5, scope: !810)
!814 = !DILocation(line: 149, column: 49, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !355, line: 149, column: 13)
!816 = distinct !DILexicalBlock(scope: !809, file: !355, line: 148, column: 24)
!817 = !DILocation(line: 149, column: 48, scope: !815)
!818 = !DILocation(line: 149, column: 47, scope: !815)
!819 = !DILocation(line: 149, column: 52, scope: !815)
!820 = !DILocation(line: 149, column: 31, scope: !815)
!821 = !DILocation(line: 149, column: 14, scope: !815)
!822 = !DILocation(line: 149, column: 62, scope: !815)
!823 = !DILocation(line: 149, column: 13, scope: !816)
!824 = !DILocation(line: 150, column: 80, scope: !815)
!825 = !DILocation(line: 150, column: 13, scope: !815)
!826 = !DILocation(line: 151, column: 19, scope: !827)
!827 = distinct !DILexicalBlock(scope: !815, file: !355, line: 151, column: 18)
!828 = !DILocation(line: 151, column: 25, scope: !827)
!829 = !DILocation(line: 151, column: 64, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !355, discriminator: 1)
!831 = !DILocation(line: 151, column: 63, scope: !827)
!832 = !DILocation(line: 151, column: 62, scope: !827)
!833 = !DILocation(line: 151, column: 67, scope: !827)
!834 = !DILocation(line: 151, column: 46, scope: !827)
!835 = !DILocation(line: 151, column: 29, scope: !827)
!836 = !DILocation(line: 151, column: 77, scope: !827)
!837 = !DILocation(line: 151, column: 18, scope: !815)
!838 = !DILocation(line: 152, column: 19, scope: !827)
!839 = !DILocation(line: 152, column: 13, scope: !827)
!840 = !DILocation(line: 153, column: 5, scope: !816)
!841 = !DILocation(line: 148, column: 20, scope: !809)
!842 = !DILocation(line: 148, column: 5, scope: !809)
!843 = !DILocation(line: 154, column: 28, scope: !383)
!844 = !DILocation(line: 154, column: 12, scope: !383)
!845 = !DILocation(line: 154, column: 5, scope: !383)
!846 = !DILocation(line: 155, column: 1, scope: !383)
!847 = !DILocation(line: 165, column: 31, scope: !390)
!848 = !DILocation(line: 165, column: 48, scope: !390)
!849 = !DILocation(line: 167, column: 5, scope: !390)
!850 = !DILocation(line: 167, column: 26, scope: !390)
!851 = !DILocation(line: 168, column: 29, scope: !390)
!852 = !DILocation(line: 169, column: 5, scope: !390)
!853 = !DILocation(line: 169, column: 26, scope: !390)
!854 = !DILocation(line: 170, column: 5, scope: !390)
!855 = !DILocation(line: 170, column: 9, scope: !390)
!856 = !DILocation(line: 173, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !390, file: !355, line: 173, column: 9)
!858 = !DILocation(line: 173, column: 13, scope: !857)
!859 = !DILocation(line: 173, column: 9, scope: !390)
!860 = !DILocation(line: 174, column: 68, scope: !857)
!861 = !DILocation(line: 174, column: 67, scope: !857)
!862 = !DILocation(line: 174, column: 66, scope: !857)
!863 = !DILocation(line: 174, column: 71, scope: !857)
!864 = !DILocation(line: 174, column: 50, scope: !857)
!865 = !DILocation(line: 174, column: 33, scope: !857)
!866 = !DILocation(line: 174, column: 81, scope: !857)
!867 = !DILocation(line: 174, column: 32, scope: !857)
!868 = !DILocation(line: 174, column: 16, scope: !857)
!869 = !DILocation(line: 174, column: 9, scope: !857)
!870 = !DILocation(line: 177, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !390, file: !355, line: 177, column: 9)
!872 = !DILocation(line: 177, column: 13, scope: !871)
!873 = !DILocation(line: 177, column: 9, scope: !390)
!874 = !DILocation(line: 178, column: 76, scope: !871)
!875 = !DILocation(line: 178, column: 9, scope: !871)
!876 = !DILocation(line: 180, column: 9, scope: !390)
!877 = !DILocation(line: 180, column: 13, scope: !390)
!878 = !DILocation(line: 180, column: 11, scope: !390)
!879 = !DILocation(line: 180, column: 7, scope: !390)
!880 = !DILocation(line: 181, column: 11, scope: !390)
!881 = !DILocation(line: 182, column: 5, scope: !390)
!882 = !DILocation(line: 182, column: 12, scope: !883)
!883 = !DILexicalBlockFile(scope: !884, file: !355, discriminator: 2)
!884 = !DILexicalBlockFile(scope: !885, file: !355, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !886, file: !355, line: 182, column: 5)
!886 = distinct !DILexicalBlock(scope: !390, file: !355, line: 182, column: 5)
!887 = !DILocation(line: 182, column: 16, scope: !885)
!888 = !DILocation(line: 182, column: 14, scope: !885)
!889 = !DILocation(line: 182, column: 5, scope: !886)
!890 = !DILocation(line: 183, column: 49, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !355, line: 183, column: 13)
!892 = distinct !DILexicalBlock(scope: !885, file: !355, line: 182, column: 24)
!893 = !DILocation(line: 183, column: 48, scope: !891)
!894 = !DILocation(line: 183, column: 47, scope: !891)
!895 = !DILocation(line: 183, column: 52, scope: !891)
!896 = !DILocation(line: 183, column: 31, scope: !891)
!897 = !DILocation(line: 183, column: 14, scope: !891)
!898 = !DILocation(line: 183, column: 62, scope: !891)
!899 = !DILocation(line: 183, column: 13, scope: !892)
!900 = !DILocation(line: 184, column: 80, scope: !891)
!901 = !DILocation(line: 184, column: 13, scope: !891)
!902 = !DILocation(line: 185, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !891, file: !355, line: 185, column: 18)
!904 = !DILocation(line: 185, column: 25, scope: !903)
!905 = !DILocation(line: 185, column: 64, scope: !906)
!906 = !DILexicalBlockFile(scope: !903, file: !355, discriminator: 1)
!907 = !DILocation(line: 185, column: 63, scope: !903)
!908 = !DILocation(line: 185, column: 62, scope: !903)
!909 = !DILocation(line: 185, column: 67, scope: !903)
!910 = !DILocation(line: 185, column: 46, scope: !903)
!911 = !DILocation(line: 185, column: 29, scope: !903)
!912 = !DILocation(line: 185, column: 77, scope: !903)
!913 = !DILocation(line: 185, column: 18, scope: !891)
!914 = !DILocation(line: 186, column: 19, scope: !903)
!915 = !DILocation(line: 186, column: 13, scope: !903)
!916 = !DILocation(line: 187, column: 5, scope: !892)
!917 = !DILocation(line: 182, column: 20, scope: !885)
!918 = !DILocation(line: 182, column: 5, scope: !885)
!919 = !DILocation(line: 188, column: 28, scope: !390)
!920 = !DILocation(line: 188, column: 12, scope: !390)
!921 = !DILocation(line: 188, column: 5, scope: !390)
!922 = !DILocation(line: 189, column: 1, scope: !390)
!923 = !DILocation(line: 201, column: 31, scope: !397)
!924 = !DILocation(line: 201, column: 48, scope: !397)
!925 = !DILocation(line: 203, column: 5, scope: !397)
!926 = !DILocation(line: 203, column: 26, scope: !397)
!927 = !DILocation(line: 204, column: 29, scope: !397)
!928 = !DILocation(line: 205, column: 5, scope: !397)
!929 = !DILocation(line: 205, column: 26, scope: !397)
!930 = !DILocation(line: 206, column: 5, scope: !397)
!931 = !DILocation(line: 206, column: 9, scope: !397)
!932 = !DILocation(line: 206, column: 16, scope: !397)
!933 = !DILocation(line: 209, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !397, file: !355, line: 209, column: 9)
!935 = !DILocation(line: 209, column: 13, scope: !934)
!936 = !DILocation(line: 209, column: 9, scope: !397)
!937 = !DILocation(line: 210, column: 68, scope: !934)
!938 = !DILocation(line: 210, column: 67, scope: !934)
!939 = !DILocation(line: 210, column: 66, scope: !934)
!940 = !DILocation(line: 210, column: 71, scope: !934)
!941 = !DILocation(line: 210, column: 50, scope: !934)
!942 = !DILocation(line: 210, column: 33, scope: !934)
!943 = !DILocation(line: 210, column: 81, scope: !934)
!944 = !DILocation(line: 210, column: 32, scope: !934)
!945 = !DILocation(line: 210, column: 16, scope: !934)
!946 = !DILocation(line: 210, column: 9, scope: !934)
!947 = !DILocation(line: 213, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !397, file: !355, line: 213, column: 9)
!949 = !DILocation(line: 213, column: 13, scope: !948)
!950 = !DILocation(line: 213, column: 9, scope: !397)
!951 = !DILocation(line: 214, column: 76, scope: !948)
!952 = !DILocation(line: 214, column: 9, scope: !948)
!953 = !DILocation(line: 216, column: 9, scope: !397)
!954 = !DILocation(line: 216, column: 13, scope: !397)
!955 = !DILocation(line: 216, column: 11, scope: !397)
!956 = !DILocation(line: 216, column: 7, scope: !397)
!957 = !DILocation(line: 217, column: 11, scope: !397)
!958 = !DILocation(line: 218, column: 23, scope: !397)
!959 = !DILocation(line: 219, column: 5, scope: !397)
!960 = !DILocation(line: 219, column: 12, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !355, discriminator: 2)
!962 = !DILexicalBlockFile(scope: !407, file: !355, discriminator: 1)
!963 = !DILocation(line: 219, column: 16, scope: !407)
!964 = !DILocation(line: 219, column: 14, scope: !407)
!965 = !DILocation(line: 219, column: 5, scope: !408)
!966 = !DILocation(line: 220, column: 9, scope: !406)
!967 = !DILocation(line: 220, column: 29, scope: !406)
!968 = !DILocation(line: 220, column: 35, scope: !406)
!969 = !DILocation(line: 220, column: 34, scope: !406)
!970 = !DILocation(line: 222, column: 48, scope: !971)
!971 = distinct !DILexicalBlock(scope: !406, file: !355, line: 222, column: 13)
!972 = !DILocation(line: 222, column: 47, scope: !971)
!973 = !DILocation(line: 222, column: 52, scope: !971)
!974 = !DILocation(line: 222, column: 31, scope: !971)
!975 = !DILocation(line: 222, column: 14, scope: !971)
!976 = !DILocation(line: 222, column: 62, scope: !971)
!977 = !DILocation(line: 222, column: 13, scope: !406)
!978 = !DILocation(line: 223, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !355, line: 223, column: 17)
!980 = distinct !DILexicalBlock(scope: !971, file: !355, line: 222, column: 71)
!981 = !DILocation(line: 223, column: 17, scope: !980)
!982 = !DILocation(line: 224, column: 84, scope: !979)
!983 = !DILocation(line: 224, column: 17, scope: !979)
!984 = !DILocation(line: 225, column: 31, scope: !980)
!985 = !DILocation(line: 226, column: 19, scope: !980)
!986 = !DILocation(line: 227, column: 9, scope: !980)
!987 = !DILocation(line: 228, column: 53, scope: !988)
!988 = distinct !DILexicalBlock(scope: !971, file: !355, line: 228, column: 18)
!989 = !DILocation(line: 228, column: 52, scope: !988)
!990 = !DILocation(line: 228, column: 57, scope: !988)
!991 = !DILocation(line: 228, column: 36, scope: !988)
!992 = !DILocation(line: 228, column: 19, scope: !988)
!993 = !DILocation(line: 228, column: 67, scope: !988)
!994 = !DILocation(line: 228, column: 18, scope: !971)
!995 = !DILocation(line: 229, column: 18, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !355, line: 229, column: 17)
!997 = distinct !DILexicalBlock(scope: !988, file: !355, line: 228, column: 76)
!998 = !DILocation(line: 229, column: 17, scope: !997)
!999 = !DILocation(line: 230, column: 84, scope: !996)
!1000 = !DILocation(line: 230, column: 17, scope: !996)
!1001 = !DILocation(line: 231, column: 31, scope: !997)
!1002 = !DILocation(line: 232, column: 19, scope: !997)
!1003 = !DILocation(line: 233, column: 9, scope: !997)
!1004 = !DILocation(line: 235, column: 31, scope: !988)
!1005 = !DILocation(line: 236, column: 5, scope: !407)
!1006 = !DILocation(line: 236, column: 5, scope: !406)
!1007 = !DILocation(line: 219, column: 20, scope: !407)
!1008 = !DILocation(line: 219, column: 5, scope: !407)
!1009 = !DILocation(line: 237, column: 28, scope: !397)
!1010 = !DILocation(line: 237, column: 12, scope: !397)
!1011 = !DILocation(line: 237, column: 5, scope: !397)
!1012 = !DILocation(line: 238, column: 1, scope: !397)
!1013 = !DILocation(line: 247, column: 23, scope: !409)
!1014 = !DILocation(line: 247, column: 43, scope: !409)
!1015 = !DILocation(line: 247, column: 60, scope: !409)
!1016 = !DILocation(line: 249, column: 5, scope: !409)
!1017 = !DILocation(line: 249, column: 16, scope: !409)
!1018 = !DILocation(line: 251, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !409, file: !355, line: 251, column: 5)
!1020 = !DILocation(line: 251, column: 10, scope: !1019)
!1021 = !DILocation(line: 251, column: 17, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !355, discriminator: 2)
!1023 = !DILexicalBlockFile(scope: !1024, file: !355, discriminator: 1)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !355, line: 251, column: 5)
!1025 = !DILocation(line: 251, column: 21, scope: !1024)
!1026 = !DILocation(line: 251, column: 19, scope: !1024)
!1027 = !DILocation(line: 251, column: 5, scope: !1019)
!1028 = !DILocation(line: 252, column: 79, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !355, line: 251, column: 31)
!1030 = !DILocation(line: 252, column: 74, scope: !1029)
!1031 = !DILocation(line: 252, column: 57, scope: !1029)
!1032 = !DILocation(line: 252, column: 83, scope: !1029)
!1033 = !DILocation(line: 252, column: 41, scope: !1029)
!1034 = !DILocation(line: 252, column: 22, scope: !1029)
!1035 = !DILocation(line: 252, column: 16, scope: !1029)
!1036 = !DILocation(line: 252, column: 9, scope: !1029)
!1037 = !DILocation(line: 252, column: 19, scope: !1029)
!1038 = !DILocation(line: 253, column: 5, scope: !1029)
!1039 = !DILocation(line: 251, column: 27, scope: !1024)
!1040 = !DILocation(line: 251, column: 5, scope: !1024)
!1041 = !DILocation(line: 254, column: 1, scope: !409)
!1042 = !DILocation(line: 263, column: 23, scope: !417)
!1043 = !DILocation(line: 263, column: 43, scope: !417)
!1044 = !DILocation(line: 263, column: 60, scope: !417)
!1045 = !DILocation(line: 265, column: 5, scope: !417)
!1046 = !DILocation(line: 265, column: 16, scope: !417)
!1047 = !DILocation(line: 267, column: 12, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !417, file: !355, line: 267, column: 5)
!1049 = !DILocation(line: 267, column: 10, scope: !1048)
!1050 = !DILocation(line: 267, column: 17, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1052, file: !355, discriminator: 2)
!1052 = !DILexicalBlockFile(scope: !1053, file: !355, discriminator: 1)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !355, line: 267, column: 5)
!1054 = !DILocation(line: 267, column: 21, scope: !1053)
!1055 = !DILocation(line: 267, column: 19, scope: !1053)
!1056 = !DILocation(line: 267, column: 5, scope: !1048)
!1057 = !DILocation(line: 268, column: 79, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !355, line: 267, column: 31)
!1059 = !DILocation(line: 268, column: 74, scope: !1058)
!1060 = !DILocation(line: 268, column: 57, scope: !1058)
!1061 = !DILocation(line: 268, column: 83, scope: !1058)
!1062 = !DILocation(line: 268, column: 41, scope: !1058)
!1063 = !DILocation(line: 268, column: 22, scope: !1058)
!1064 = !DILocation(line: 268, column: 16, scope: !1058)
!1065 = !DILocation(line: 268, column: 9, scope: !1058)
!1066 = !DILocation(line: 268, column: 19, scope: !1058)
!1067 = !DILocation(line: 269, column: 5, scope: !1058)
!1068 = !DILocation(line: 267, column: 27, scope: !1053)
!1069 = !DILocation(line: 267, column: 5, scope: !1053)
!1070 = !DILocation(line: 270, column: 1, scope: !417)
!1071 = !DILocation(line: 280, column: 23, scope: !423)
!1072 = !DILocation(line: 280, column: 37, scope: !423)
!1073 = !DILocation(line: 280, column: 51, scope: !423)
!1074 = !DILocation(line: 282, column: 5, scope: !423)
!1075 = !DILocation(line: 282, column: 16, scope: !423)
!1076 = !DILocation(line: 283, column: 5, scope: !423)
!1077 = !DILocation(line: 283, column: 9, scope: !423)
!1078 = !DILocation(line: 285, column: 12, scope: !435)
!1079 = !DILocation(line: 285, column: 10, scope: !435)
!1080 = !DILocation(line: 285, column: 17, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !355, discriminator: 2)
!1082 = !DILexicalBlockFile(scope: !434, file: !355, discriminator: 1)
!1083 = !DILocation(line: 285, column: 21, scope: !434)
!1084 = !DILocation(line: 285, column: 19, scope: !434)
!1085 = !DILocation(line: 285, column: 5, scope: !435)
!1086 = !DILocation(line: 286, column: 9, scope: !433)
!1087 = !DILocation(line: 286, column: 13, scope: !433)
!1088 = !DILocation(line: 286, column: 37, scope: !433)
!1089 = !DILocation(line: 286, column: 35, scope: !433)
!1090 = !DILocation(line: 286, column: 34, scope: !433)
!1091 = !DILocation(line: 286, column: 41, scope: !433)
!1092 = !DILocation(line: 286, column: 18, scope: !433)
!1093 = !DILocation(line: 286, column: 17, scope: !433)
!1094 = !DILocation(line: 287, column: 48, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !433, file: !355, line: 287, column: 13)
!1096 = !DILocation(line: 287, column: 51, scope: !1095)
!1097 = !DILocation(line: 287, column: 31, scope: !1095)
!1098 = !DILocation(line: 287, column: 14, scope: !1095)
!1099 = !DILocation(line: 287, column: 61, scope: !1095)
!1100 = !DILocation(line: 287, column: 13, scope: !433)
!1101 = !DILocation(line: 288, column: 18, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !355, line: 288, column: 17)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !355, line: 287, column: 70)
!1104 = !DILocation(line: 288, column: 17, scope: !1103)
!1105 = !DILocation(line: 289, column: 58, scope: !1102)
!1106 = !DILocation(line: 289, column: 61, scope: !1102)
!1107 = !DILocation(line: 289, column: 41, scope: !1102)
!1108 = !DILocation(line: 289, column: 22, scope: !1102)
!1109 = !DILocation(line: 289, column: 21, scope: !1102)
!1110 = !DILocation(line: 289, column: 19, scope: !1102)
!1111 = !DILocation(line: 289, column: 17, scope: !1102)
!1112 = !DILocation(line: 290, column: 31, scope: !1103)
!1113 = !DILocation(line: 291, column: 9, scope: !1103)
!1114 = !DILocation(line: 291, column: 55, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1095, file: !355, line: 291, column: 20)
!1116 = !DILocation(line: 291, column: 58, scope: !1115)
!1117 = !DILocation(line: 291, column: 38, scope: !1115)
!1118 = !DILocation(line: 291, column: 21, scope: !1115)
!1119 = !DILocation(line: 291, column: 68, scope: !1115)
!1120 = !DILocation(line: 291, column: 20, scope: !1095)
!1121 = !DILocation(line: 292, column: 17, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !355, line: 292, column: 17)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !355, line: 291, column: 77)
!1124 = !DILocation(line: 292, column: 17, scope: !1123)
!1125 = !DILocation(line: 293, column: 58, scope: !1122)
!1126 = !DILocation(line: 293, column: 61, scope: !1122)
!1127 = !DILocation(line: 293, column: 41, scope: !1122)
!1128 = !DILocation(line: 293, column: 22, scope: !1122)
!1129 = !DILocation(line: 293, column: 21, scope: !1122)
!1130 = !DILocation(line: 293, column: 19, scope: !1122)
!1131 = !DILocation(line: 293, column: 17, scope: !1122)
!1132 = !DILocation(line: 294, column: 31, scope: !1123)
!1133 = !DILocation(line: 295, column: 9, scope: !1123)
!1134 = !DILocation(line: 296, column: 31, scope: !1115)
!1135 = !DILocation(line: 297, column: 21, scope: !433)
!1136 = !DILocation(line: 297, column: 16, scope: !433)
!1137 = !DILocation(line: 297, column: 19, scope: !433)
!1138 = !DILocation(line: 298, column: 5, scope: !434)
!1139 = !DILocation(line: 298, column: 5, scope: !433)
!1140 = !DILocation(line: 285, column: 27, scope: !434)
!1141 = !DILocation(line: 285, column: 5, scope: !434)
!1142 = !DILocation(line: 299, column: 1, scope: !423)
!1143 = !DILocation(line: 309, column: 28, scope: !436)
!1144 = !DILocation(line: 309, column: 42, scope: !436)
!1145 = !DILocation(line: 309, column: 56, scope: !436)
!1146 = !DILocation(line: 311, column: 5, scope: !436)
!1147 = !DILocation(line: 311, column: 16, scope: !436)
!1148 = !DILocation(line: 313, column: 13, scope: !444)
!1149 = !DILocation(line: 313, column: 11, scope: !444)
!1150 = !DILocation(line: 313, column: 9, scope: !436)
!1151 = !DILocation(line: 314, column: 9, scope: !443)
!1152 = !DILocation(line: 314, column: 13, scope: !443)
!1153 = !DILocation(line: 314, column: 37, scope: !443)
!1154 = !DILocation(line: 314, column: 35, scope: !443)
!1155 = !DILocation(line: 314, column: 34, scope: !443)
!1156 = !DILocation(line: 314, column: 41, scope: !443)
!1157 = !DILocation(line: 314, column: 18, scope: !443)
!1158 = !DILocation(line: 314, column: 17, scope: !443)
!1159 = !DILocation(line: 315, column: 48, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !443, file: !355, line: 315, column: 13)
!1161 = !DILocation(line: 315, column: 51, scope: !1160)
!1162 = !DILocation(line: 315, column: 31, scope: !1160)
!1163 = !DILocation(line: 315, column: 14, scope: !1160)
!1164 = !DILocation(line: 315, column: 61, scope: !1160)
!1165 = !DILocation(line: 315, column: 13, scope: !443)
!1166 = !DILocation(line: 316, column: 60, scope: !1160)
!1167 = !DILocation(line: 316, column: 63, scope: !1160)
!1168 = !DILocation(line: 316, column: 43, scope: !1160)
!1169 = !DILocation(line: 316, column: 24, scope: !1160)
!1170 = !DILocation(line: 316, column: 14, scope: !1160)
!1171 = !DILocation(line: 316, column: 21, scope: !1160)
!1172 = !DILocation(line: 316, column: 13, scope: !1160)
!1173 = !DILocation(line: 318, column: 23, scope: !1160)
!1174 = !DILocation(line: 318, column: 14, scope: !1160)
!1175 = !DILocation(line: 318, column: 21, scope: !1160)
!1176 = !DILocation(line: 319, column: 15, scope: !443)
!1177 = !DILocation(line: 320, column: 5, scope: !444)
!1178 = !DILocation(line: 320, column: 5, scope: !443)
!1179 = !DILocation(line: 321, column: 12, scope: !448)
!1180 = !DILocation(line: 321, column: 10, scope: !448)
!1181 = !DILocation(line: 321, column: 17, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !355, discriminator: 2)
!1183 = !DILexicalBlockFile(scope: !447, file: !355, discriminator: 1)
!1184 = !DILocation(line: 321, column: 21, scope: !447)
!1185 = !DILocation(line: 321, column: 19, scope: !447)
!1186 = !DILocation(line: 321, column: 5, scope: !448)
!1187 = !DILocation(line: 322, column: 9, scope: !446)
!1188 = !DILocation(line: 322, column: 13, scope: !446)
!1189 = !DILocation(line: 322, column: 37, scope: !446)
!1190 = !DILocation(line: 322, column: 35, scope: !446)
!1191 = !DILocation(line: 322, column: 34, scope: !446)
!1192 = !DILocation(line: 322, column: 41, scope: !446)
!1193 = !DILocation(line: 322, column: 18, scope: !446)
!1194 = !DILocation(line: 322, column: 17, scope: !446)
!1195 = !DILocation(line: 323, column: 48, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !446, file: !355, line: 323, column: 13)
!1197 = !DILocation(line: 323, column: 51, scope: !1196)
!1198 = !DILocation(line: 323, column: 31, scope: !1196)
!1199 = !DILocation(line: 323, column: 14, scope: !1196)
!1200 = !DILocation(line: 323, column: 61, scope: !1196)
!1201 = !DILocation(line: 323, column: 13, scope: !446)
!1202 = !DILocation(line: 324, column: 60, scope: !1196)
!1203 = !DILocation(line: 324, column: 63, scope: !1196)
!1204 = !DILocation(line: 324, column: 43, scope: !1196)
!1205 = !DILocation(line: 324, column: 24, scope: !1196)
!1206 = !DILocation(line: 324, column: 14, scope: !1196)
!1207 = !DILocation(line: 324, column: 21, scope: !1196)
!1208 = !DILocation(line: 324, column: 13, scope: !1196)
!1209 = !DILocation(line: 326, column: 23, scope: !1196)
!1210 = !DILocation(line: 326, column: 14, scope: !1196)
!1211 = !DILocation(line: 326, column: 21, scope: !1196)
!1212 = !DILocation(line: 327, column: 15, scope: !446)
!1213 = !DILocation(line: 328, column: 5, scope: !447)
!1214 = !DILocation(line: 328, column: 5, scope: !446)
!1215 = !DILocation(line: 321, column: 27, scope: !447)
!1216 = !DILocation(line: 321, column: 5, scope: !447)
!1217 = !DILocation(line: 329, column: 1, scope: !436)
!1218 = !DILocation(line: 339, column: 26, scope: !449)
!1219 = !DILocation(line: 339, column: 40, scope: !449)
!1220 = !DILocation(line: 339, column: 54, scope: !449)
!1221 = !DILocation(line: 341, column: 5, scope: !449)
!1222 = !DILocation(line: 341, column: 16, scope: !449)
!1223 = !DILocation(line: 343, column: 12, scope: !458)
!1224 = !DILocation(line: 343, column: 10, scope: !458)
!1225 = !DILocation(line: 343, column: 17, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !355, discriminator: 2)
!1227 = !DILexicalBlockFile(scope: !457, file: !355, discriminator: 1)
!1228 = !DILocation(line: 343, column: 21, scope: !457)
!1229 = !DILocation(line: 343, column: 19, scope: !457)
!1230 = !DILocation(line: 343, column: 5, scope: !458)
!1231 = !DILocation(line: 344, column: 9, scope: !456)
!1232 = !DILocation(line: 344, column: 13, scope: !456)
!1233 = !DILocation(line: 344, column: 37, scope: !456)
!1234 = !DILocation(line: 344, column: 35, scope: !456)
!1235 = !DILocation(line: 344, column: 34, scope: !456)
!1236 = !DILocation(line: 344, column: 41, scope: !456)
!1237 = !DILocation(line: 344, column: 18, scope: !456)
!1238 = !DILocation(line: 344, column: 17, scope: !456)
!1239 = !DILocation(line: 345, column: 48, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !456, file: !355, line: 345, column: 13)
!1241 = !DILocation(line: 345, column: 51, scope: !1240)
!1242 = !DILocation(line: 345, column: 31, scope: !1240)
!1243 = !DILocation(line: 345, column: 14, scope: !1240)
!1244 = !DILocation(line: 345, column: 61, scope: !1240)
!1245 = !DILocation(line: 345, column: 13, scope: !456)
!1246 = !DILocation(line: 346, column: 60, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !355, line: 345, column: 70)
!1248 = !DILocation(line: 346, column: 63, scope: !1247)
!1249 = !DILocation(line: 346, column: 43, scope: !1247)
!1250 = !DILocation(line: 346, column: 24, scope: !1247)
!1251 = !DILocation(line: 346, column: 14, scope: !1247)
!1252 = !DILocation(line: 346, column: 21, scope: !1247)
!1253 = !DILocation(line: 347, column: 9, scope: !1247)
!1254 = !DILocation(line: 348, column: 53, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1240, file: !355, line: 348, column: 18)
!1256 = !DILocation(line: 348, column: 56, scope: !1255)
!1257 = !DILocation(line: 348, column: 36, scope: !1255)
!1258 = !DILocation(line: 348, column: 19, scope: !1255)
!1259 = !DILocation(line: 348, column: 66, scope: !1255)
!1260 = !DILocation(line: 348, column: 18, scope: !1240)
!1261 = !DILocation(line: 349, column: 60, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1255, file: !355, line: 348, column: 75)
!1263 = !DILocation(line: 349, column: 63, scope: !1262)
!1264 = !DILocation(line: 349, column: 43, scope: !1262)
!1265 = !DILocation(line: 349, column: 24, scope: !1262)
!1266 = !DILocation(line: 349, column: 14, scope: !1262)
!1267 = !DILocation(line: 349, column: 21, scope: !1262)
!1268 = !DILocation(line: 350, column: 9, scope: !1262)
!1269 = !DILocation(line: 352, column: 23, scope: !1255)
!1270 = !DILocation(line: 352, column: 14, scope: !1255)
!1271 = !DILocation(line: 352, column: 21, scope: !1255)
!1272 = !DILocation(line: 353, column: 15, scope: !456)
!1273 = !DILocation(line: 354, column: 5, scope: !457)
!1274 = !DILocation(line: 354, column: 5, scope: !456)
!1275 = !DILocation(line: 343, column: 27, scope: !457)
!1276 = !DILocation(line: 343, column: 5, scope: !457)
!1277 = !DILocation(line: 355, column: 1, scope: !449)
!1278 = !DILocation(line: 385, column: 31, scope: !459)
!1279 = !DILocation(line: 387, column: 5, scope: !459)
!1280 = !DILocation(line: 387, column: 15, scope: !459)
!1281 = !DILocation(line: 387, column: 21, scope: !459)
!1282 = !DILocation(line: 387, column: 26, scope: !459)
!1283 = !DILocation(line: 388, column: 5, scope: !459)
!1284 = !DILocation(line: 388, column: 15, scope: !459)
!1285 = !DILocation(line: 388, column: 21, scope: !459)
!1286 = !DILocation(line: 389, column: 5, scope: !459)
!1287 = !DILocation(line: 389, column: 16, scope: !459)
!1288 = !DILocation(line: 390, column: 5, scope: !459)
!1289 = !DILocation(line: 390, column: 11, scope: !459)
!1290 = !DILocation(line: 392, column: 10, scope: !459)
!1291 = !DILocation(line: 392, column: 14, scope: !459)
!1292 = !{!1293, !530, i64 16}
!1293 = !{!"bufferinfo", !524, i64 0, !524, i64 8, !530, i64 16, !530, i64 24, !550, i64 32, !550, i64 36, !524, i64 40, !524, i64 48, !524, i64 56, !524, i64 64, !524, i64 72}
!1294 = !DILocation(line: 393, column: 9, scope: !459)
!1295 = !DILocation(line: 393, column: 13, scope: !459)
!1296 = !DILocation(line: 395, column: 27, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !459, file: !355, line: 395, column: 9)
!1298 = !DILocation(line: 395, column: 10, scope: !1297)
!1299 = !DILocation(line: 395, column: 9, scope: !459)
!1300 = !DILocation(line: 396, column: 9, scope: !1297)
!1301 = !DILocation(line: 397, column: 20, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !459, file: !355, line: 397, column: 9)
!1303 = !DILocation(line: 397, column: 9, scope: !1302)
!1304 = !DILocation(line: 397, column: 32, scope: !1302)
!1305 = !DILocation(line: 397, column: 9, scope: !459)
!1306 = !DILocation(line: 398, column: 9, scope: !1302)
!1307 = !DILocation(line: 399, column: 20, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !459, file: !355, line: 399, column: 9)
!1309 = !DILocation(line: 399, column: 9, scope: !1308)
!1310 = !DILocation(line: 399, column: 30, scope: !1308)
!1311 = !DILocation(line: 399, column: 9, scope: !459)
!1312 = !DILocation(line: 400, column: 9, scope: !1308)
!1313 = !DILocation(line: 401, column: 14, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !459, file: !355, line: 401, column: 9)
!1315 = !DILocation(line: 401, column: 25, scope: !1314)
!1316 = !DILocation(line: 401, column: 18, scope: !1314)
!1317 = !DILocation(line: 401, column: 9, scope: !459)
!1318 = !DILocation(line: 402, column: 22, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !355, line: 401, column: 30)
!1320 = !DILocation(line: 402, column: 9, scope: !1319)
!1321 = !DILocation(line: 404, column: 9, scope: !1319)
!1322 = !DILocation(line: 406, column: 11, scope: !459)
!1323 = !DILocation(line: 406, column: 9, scope: !459)
!1324 = !DILocation(line: 407, column: 10, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !459, file: !355, line: 407, column: 9)
!1326 = !DILocation(line: 407, column: 9, scope: !459)
!1327 = !DILocation(line: 408, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !355, line: 407, column: 15)
!1329 = !DILocation(line: 410, column: 44, scope: !459)
!1330 = !DILocation(line: 410, column: 26, scope: !459)
!1331 = !DILocation(line: 410, column: 51, scope: !459)
!1332 = !DILocation(line: 410, column: 24, scope: !459)
!1333 = !DILocation(line: 410, column: 7, scope: !459)
!1334 = !DILocation(line: 411, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !459, file: !355, line: 411, column: 5)
!1336 = !DILocation(line: 411, column: 10, scope: !1335)
!1337 = !DILocation(line: 411, column: 17, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !355, discriminator: 2)
!1339 = !DILexicalBlockFile(scope: !1340, file: !355, discriminator: 1)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !355, line: 411, column: 5)
!1341 = !DILocation(line: 411, column: 19, scope: !1340)
!1342 = !DILocation(line: 411, column: 5, scope: !1335)
!1343 = !DILocation(line: 412, column: 23, scope: !1340)
!1344 = !DILocation(line: 412, column: 16, scope: !1340)
!1345 = !DILocation(line: 412, column: 11, scope: !1340)
!1346 = !DILocation(line: 412, column: 9, scope: !1340)
!1347 = !DILocation(line: 412, column: 14, scope: !1340)
!1348 = !DILocation(line: 411, column: 27, scope: !1340)
!1349 = !DILocation(line: 411, column: 5, scope: !1340)
!1350 = !DILocation(line: 413, column: 12, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !459, file: !355, line: 413, column: 5)
!1352 = !DILocation(line: 413, column: 10, scope: !1351)
!1353 = !DILocation(line: 413, column: 17, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1355, file: !355, discriminator: 2)
!1355 = !DILexicalBlockFile(scope: !1356, file: !355, discriminator: 1)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !355, line: 413, column: 5)
!1357 = !DILocation(line: 413, column: 26, scope: !1356)
!1358 = !DILocation(line: 413, column: 19, scope: !1356)
!1359 = !DILocation(line: 413, column: 5, scope: !1351)
!1360 = !DILocation(line: 414, column: 63, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !355, line: 413, column: 36)
!1362 = !DILocation(line: 414, column: 58, scope: !1361)
!1363 = !{!1293, !524, i64 0}
!1364 = !DILocation(line: 414, column: 45, scope: !1361)
!1365 = !DILocation(line: 414, column: 39, scope: !1361)
!1366 = !DILocation(line: 414, column: 34, scope: !1361)
!1367 = !DILocation(line: 414, column: 11, scope: !1361)
!1368 = !DILocation(line: 414, column: 9, scope: !1361)
!1369 = !DILocation(line: 414, column: 43, scope: !1361)
!1370 = !DILocation(line: 415, column: 5, scope: !1361)
!1371 = !DILocation(line: 413, column: 32, scope: !1356)
!1372 = !DILocation(line: 413, column: 5, scope: !1356)
!1373 = !DILocation(line: 415, column: 5, scope: !1351)
!1374 = !DILocation(line: 418, column: 14, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !459, file: !355, line: 418, column: 9)
!1376 = !DILocation(line: 418, column: 18, scope: !1375)
!1377 = !DILocation(line: 418, column: 9, scope: !459)
!1378 = !DILocation(line: 419, column: 9, scope: !1375)
!1379 = !DILocation(line: 420, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !459, file: !355, line: 420, column: 9)
!1381 = !DILocation(line: 420, column: 17, scope: !1380)
!1382 = !DILocation(line: 420, column: 9, scope: !459)
!1383 = !DILocation(line: 421, column: 9, scope: !1380)
!1384 = !DILocation(line: 422, column: 12, scope: !459)
!1385 = !DILocation(line: 422, column: 5, scope: !459)
!1386 = !DILocation(line: 423, column: 1, scope: !459)
!1387 = !DILocation(line: 367, column: 22, scope: !469)
!1388 = !DILocation(line: 367, column: 38, scope: !469)
!1389 = !DILocation(line: 369, column: 5, scope: !469)
!1390 = !DILocation(line: 369, column: 20, scope: !469)
!1391 = !DILocation(line: 369, column: 43, scope: !469)
!1392 = !DILocation(line: 369, column: 50, scope: !469)
!1393 = !{!555, !524, i64 8}
!1394 = !DILocation(line: 369, column: 60, scope: !469)
!1395 = !{!1396, !524, i64 160}
!1396 = !{!"_typeobject", !1397, i64 0, !524, i64 24, !530, i64 32, !530, i64 40, !524, i64 48, !524, i64 56, !524, i64 64, !524, i64 72, !524, i64 80, !524, i64 88, !524, i64 96, !524, i64 104, !524, i64 112, !524, i64 120, !524, i64 128, !524, i64 136, !524, i64 144, !524, i64 152, !524, i64 160, !530, i64 168, !524, i64 176, !524, i64 184, !524, i64 192, !524, i64 200, !530, i64 208, !524, i64 216, !524, i64 224, !524, i64 232, !524, i64 240, !524, i64 248, !524, i64 256, !524, i64 264, !524, i64 272, !524, i64 280, !530, i64 288, !524, i64 296, !524, i64 304, !524, i64 312, !524, i64 320, !524, i64 328, !524, i64 336, !524, i64 344, !524, i64 352, !524, i64 360, !524, i64 368, !524, i64 376, !550, i64 384, !524, i64 392}
!1397 = !{!"", !555, i64 0, !530, i64 16}
!1398 = !DILocation(line: 371, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !469, file: !355, line: 371, column: 9)
!1400 = !DILocation(line: 371, column: 16, scope: !1399)
!1401 = !DILocation(line: 371, column: 30, scope: !1399)
!1402 = !DILocation(line: 371, column: 33, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1399, file: !355, discriminator: 1)
!1404 = !DILocation(line: 371, column: 41, scope: !1399)
!1405 = !{!1406, !524, i64 0}
!1406 = !{!"", !524, i64 0, !524, i64 8}
!1407 = !DILocation(line: 371, column: 54, scope: !1399)
!1408 = !DILocation(line: 371, column: 9, scope: !469)
!1409 = !DILocation(line: 373, column: 22, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !355, line: 372, column: 5)
!1411 = !DILocation(line: 375, column: 36, scope: !1410)
!1412 = !DILocation(line: 375, column: 43, scope: !1410)
!1413 = !DILocation(line: 375, column: 53, scope: !1410)
!1414 = !{!1396, !524, i64 24}
!1415 = !DILocation(line: 373, column: 9, scope: !1410)
!1416 = !DILocation(line: 376, column: 9, scope: !1410)
!1417 = !DILocation(line: 379, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !469, file: !355, line: 379, column: 9)
!1419 = !DILocation(line: 379, column: 17, scope: !1418)
!1420 = !DILocation(line: 379, column: 30, scope: !1418)
!1421 = !DILocation(line: 379, column: 35, scope: !1418)
!1422 = !DILocation(line: 379, column: 44, scope: !1418)
!1423 = !DILocation(line: 379, column: 9, scope: !469)
!1424 = !DILocation(line: 380, column: 9, scope: !1418)
!1425 = !DILocation(line: 381, column: 12, scope: !469)
!1426 = !DILocation(line: 381, column: 18, scope: !469)
!1427 = !DILocation(line: 381, column: 5, scope: !469)
!1428 = !DILocation(line: 382, column: 1, scope: !469)
