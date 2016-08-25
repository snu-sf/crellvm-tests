; ModuleID = './asdl.bc'
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
  store i64 %size, i64* %size.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %seq, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 1
  %mul = mul i64 8, %sub
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %3, -2147483648
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %size.addr, align 8
  %tobool3 = icmp ne i64 %4, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %5 = load i64, i64* %size.addr, align 8
  %sub4 = sub i64 %5, 1
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.2
  %6 = load i64, i64* %n, align 8
  %cmp6 = icmp ugt i64 %6, -17
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load i64, i64* %n, align 8
  %add = add i64 %7, 16
  store i64 %add, i64* %n, align 8
  %8 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call10 = call i8* @PyArena_Malloc(%struct._arena* %8, i64 %9)
  %10 = bitcast i8* %call10 to %struct.asdl_seq*
  store %struct.asdl_seq* %10, %struct.asdl_seq** %seq, align 8
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool11 = icmp ne %struct.asdl_seq* %11, null
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %12 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %13 = bitcast %struct.asdl_seq* %12 to i8*
  %14 = load i64, i64* %n, align 8
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %14, i32 8, i1 false)
  %15 = load i64, i64* %size.addr, align 8
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size15 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %16, i32 0, i32 0
  store i64 %15, i64* %size15, align 8
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  store %struct.asdl_seq* %17, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %18 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %18
}

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyArena_Malloc(%struct._arena*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.asdl_int_seq* @_Py_asdl_int_seq_new(i64 %size, %struct._arena* %arena) #0 {
entry:
  %retval = alloca %struct.asdl_int_seq*, align 8
  %size.addr = alloca i64, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %seq = alloca %struct.asdl_int_seq*, align 8
  %n = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %seq, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 1
  %mul = mul i64 8, %sub
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %3, -2147483648
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %size.addr, align 8
  %tobool3 = icmp ne i64 %4, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %5 = load i64, i64* %size.addr, align 8
  %sub4 = sub i64 %5, 1
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.2
  %6 = load i64, i64* %n, align 8
  %cmp6 = icmp ugt i64 %6, -17
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load i64, i64* %n, align 8
  %add = add i64 %7, 16
  store i64 %add, i64* %n, align 8
  %8 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call10 = call i8* @PyArena_Malloc(%struct._arena* %8, i64 %9)
  %10 = bitcast i8* %call10 to %struct.asdl_int_seq*
  store %struct.asdl_int_seq* %10, %struct.asdl_int_seq** %seq, align 8
  %11 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8
  %tobool11 = icmp ne %struct.asdl_int_seq* %11, null
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_NoMemory()
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %12 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8
  %13 = bitcast %struct.asdl_int_seq* %12 to i8*
  %14 = load i64, i64* %n, align 8
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %14, i32 8, i1 false)
  %15 = load i64, i64* %size.addr, align 8
  %16 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8
  %size15 = getelementptr inbounds %struct.asdl_int_seq, %struct.asdl_int_seq* %16, i32 0, i32 0
  store i64 %15, i64* %size15, align 8
  %17 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8
  store %struct.asdl_int_seq* %17, %struct.asdl_int_seq** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %18 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %retval
  ret %struct.asdl_int_seq* %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
