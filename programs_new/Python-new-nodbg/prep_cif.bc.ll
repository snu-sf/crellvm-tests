; ModuleID = './prep_cif.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.ffi_closure = type { [24 x i8], %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8* }

; Function Attrs: uwtable
define hidden i32 @ffi_prep_cif_core(%struct.ffi_cif* %cif, i32 %abi, i32 %isvariadic, i32 %nfixedargs, i32 %ntotalargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %retval = alloca i32, align 4
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %isvariadic.addr = alloca i32, align 4
  %nfixedargs.addr = alloca i32, align 4
  %ntotalargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  %bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr = alloca %struct._ffi_type**, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store i32 %abi, i32* %abi.addr, align 4
  store i32 %isvariadic, i32* %isvariadic.addr, align 4
  store i32 %nfixedargs, i32* %nfixedargs.addr, align 4
  store i32 %ntotalargs, i32* %ntotalargs.addr, align 4
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8
  store i32 0, i32* %bytes, align 4
  %0 = load i32, i32* %abi.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %abi.addr, align 4
  %cmp1 = icmp ult i32 %1, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %2 = load i32, i32* %abi.addr, align 4
  %3 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %abi2 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %3, i32 0, i32 0
  store i32 %2, i32* %abi2, align 4
  %4 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8
  %5 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %5, i32 0, i32 2
  store %struct._ffi_type** %4, %struct._ffi_type*** %arg_types, align 8
  %6 = load i32, i32* %ntotalargs.addr, align 4
  %7 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %7, i32 0, i32 1
  store i32 %6, i32* %nargs, align 4
  %8 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8
  %9 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype3 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %9, i32 0, i32 3
  store %struct._ffi_type* %8, %struct._ffi_type** %rtype3, align 8
  %10 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %10, i32 0, i32 5
  store i32 0, i32* %flags, align 4
  %11 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype4 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %11, i32 0, i32 3
  %12 = load %struct._ffi_type*, %struct._ffi_type** %rtype4, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %12, i32 0, i32 0
  %13 = load i64, i64* %size, align 8
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.end
  %14 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype7 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %14, i32 0, i32 3
  %15 = load %struct._ffi_type*, %struct._ffi_type** %rtype7, align 8
  %call = call i32 @initialize_aggregate(%struct._ffi_type* %15)
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %16 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types11 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %16, i32 0, i32 2
  %17 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types11, align 8
  store %struct._ffi_type** %17, %struct._ffi_type*** %ptr, align 8
  %18 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %nargs12 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %18, i32 0, i32 1
  %19 = load i32, i32* %nargs12, align 4
  store i32 %19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %20 = load i32, i32* %i, align 4
  %cmp13 = icmp ugt i32 %20, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %22 = load %struct._ffi_type*, %struct._ffi_type** %21, align 8
  %size14 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %22, i32 0, i32 0
  %23 = load i64, i64* %size14, align 8
  %cmp15 = icmp eq i64 %23, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %for.body
  %24 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %25 = load %struct._ffi_type*, %struct._ffi_type** %24, align 8
  %call17 = call i32 @initialize_aggregate(%struct._ffi_type* %25)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %26 = load i32, i32* %i, align 4
  %dec = add i32 %26, -1
  store i32 %dec, i32* %i, align 4
  %27 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %27, i32 1
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %bytes, align 4
  %29 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %bytes21 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %29, i32 0, i32 4
  store i32 %28, i32* %bytes21, align 4
  %30 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %call22 = call i32 @ffi_prep_cif_machdep(%struct.ffi_cif* %30)
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.19, %if.then.9, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: uwtable
define internal i32 @initialize_aggregate(%struct._ffi_type* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._ffi_type*, align 8
  %ptr = alloca %struct._ffi_type**, align 8
  store %struct._ffi_type* %arg, %struct._ffi_type** %arg.addr, align 8
  %0 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %cmp = icmp eq %struct._ffi_type* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %1, i32 0, i32 3
  %2 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8
  %cmp1 = icmp eq %struct._ffi_type** %2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %cmp2 = icmp ne i32 %lor.ext, 0
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %tobool = icmp ne i64 %conv3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.end
  %4 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %4, i32 0, i32 0
  store i64 0, i64* %size, align 8
  %5 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %5, i32 0, i32 1
  store i16 0, i16* %alignment, align 2
  %6 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %elements4 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %6, i32 0, i32 3
  %7 = load %struct._ffi_type**, %struct._ffi_type*** %elements4, align 8
  %arrayidx = getelementptr %struct._ffi_type*, %struct._ffi_type** %7, i64 0
  store %struct._ffi_type** %arrayidx, %struct._ffi_type*** %ptr, align 8
  %8 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %cmp5 = icmp eq %struct._ffi_type** %8, null
  %conv6 = zext i1 %cmp5 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.12
  %9 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %10 = load %struct._ffi_type*, %struct._ffi_type** %9, align 8
  %cmp13 = icmp ne %struct._ffi_type* %10, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %12 = load %struct._ffi_type*, %struct._ffi_type** %11, align 8
  %size15 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %12, i32 0, i32 0
  %13 = load i64, i64* %size15, align 8
  %cmp16 = icmp eq i64 %13, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.body
  %14 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %15 = load %struct._ffi_type*, %struct._ffi_type** %14, align 8
  %call = call i32 @initialize_aggregate(%struct._ffi_type* %15)
  %cmp18 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %16 = phi i1 [ false, %while.body ], [ %cmp18, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %cmp20 = icmp ne i32 %land.ext, 0
  %conv21 = zext i1 %cmp20 to i32
  %conv22 = sext i32 %conv21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.end
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.end
  %17 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size26 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %17, i32 0, i32 0
  %18 = load i64, i64* %size26, align 8
  %sub = sub i64 %18, 1
  %19 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %20 = load %struct._ffi_type*, %struct._ffi_type** %19, align 8
  %alignment27 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %20, i32 0, i32 1
  %21 = load i16, i16* %alignment27, align 2
  %conv28 = zext i16 %21 to i32
  %sub29 = sub i32 %conv28, 1
  %conv30 = sext i32 %sub29 to i64
  %or = or i64 %sub, %conv30
  %add = add i64 %or, 1
  %22 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size31 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %22, i32 0, i32 0
  store i64 %add, i64* %size31, align 8
  %23 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %24 = load %struct._ffi_type*, %struct._ffi_type** %23, align 8
  %size32 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %24, i32 0, i32 0
  %25 = load i64, i64* %size32, align 8
  %26 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size33 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %26, i32 0, i32 0
  %27 = load i64, i64* %size33, align 8
  %add34 = add i64 %27, %25
  store i64 %add34, i64* %size33, align 8
  %28 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %alignment35 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %28, i32 0, i32 1
  %29 = load i16, i16* %alignment35, align 2
  %conv36 = zext i16 %29 to i32
  %30 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %31 = load %struct._ffi_type*, %struct._ffi_type** %30, align 8
  %alignment37 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %31, i32 0, i32 1
  %32 = load i16, i16* %alignment37, align 2
  %conv38 = zext i16 %32 to i32
  %cmp39 = icmp sgt i32 %conv36, %conv38
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %33 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %alignment41 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %33, i32 0, i32 1
  %34 = load i16, i16* %alignment41, align 2
  %conv42 = zext i16 %34 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %35 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %36 = load %struct._ffi_type*, %struct._ffi_type** %35, align 8
  %alignment43 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %36, i32 0, i32 1
  %37 = load i16, i16* %alignment43, align 2
  %conv44 = zext i16 %37 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv42, %cond.true ], [ %conv44, %cond.false ]
  %conv45 = trunc i32 %cond to i16
  %38 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %alignment46 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %38, i32 0, i32 1
  store i16 %conv45, i16* %alignment46, align 2
  %39 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %39, i32 1
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size47 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %40, i32 0, i32 0
  %41 = load i64, i64* %size47, align 8
  %sub48 = sub i64 %41, 1
  %42 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %alignment49 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %42, i32 0, i32 1
  %43 = load i16, i16* %alignment49, align 2
  %conv50 = zext i16 %43 to i32
  %sub51 = sub i32 %conv50, 1
  %conv52 = sext i32 %sub51 to i64
  %or53 = or i64 %sub48, %conv52
  %add54 = add i64 %or53, 1
  %44 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size55 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %44, i32 0, i32 0
  store i64 %add54, i64* %size55, align 8
  %45 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8
  %size56 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %45, i32 0, i32 0
  %46 = load i64, i64* %size56, align 8
  %cmp57 = icmp eq i64 %46, 0
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.59, %if.then.24, %if.then.11, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @ffi_prep_cif_machdep(%struct.ffi_cif*) #1

; Function Attrs: uwtable
define i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %abi, i32 %nargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %nargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store i32 %abi, i32* %abi.addr, align 4
  store i32 %nargs, i32* %nargs.addr, align 4
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %1 = load i32, i32* %abi.addr, align 4
  %2 = load i32, i32* %nargs.addr, align 4
  %3 = load i32, i32* %nargs.addr, align 4
  %4 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8
  %call = call i32 @ffi_prep_cif_core(%struct.ffi_cif* %0, i32 %1, i32 0, i32 %2, i32 %3, %struct._ffi_type* %4, %struct._ffi_type** %5)
  ret i32 %call
}

; Function Attrs: uwtable
define i32 @ffi_prep_cif_var(%struct.ffi_cif* %cif, i32 %abi, i32 %nfixedargs, i32 %ntotalargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %nfixedargs.addr = alloca i32, align 4
  %ntotalargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store i32 %abi, i32* %abi.addr, align 4
  store i32 %nfixedargs, i32* %nfixedargs.addr, align 4
  store i32 %ntotalargs, i32* %ntotalargs.addr, align 4
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %1 = load i32, i32* %abi.addr, align 4
  %2 = load i32, i32* %nfixedargs.addr, align 4
  %3 = load i32, i32* %ntotalargs.addr, align 4
  %4 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8
  %call = call i32 @ffi_prep_cif_core(%struct.ffi_cif* %0, i32 %1, i32 1, i32 %2, i32 %3, %struct._ffi_type* %4, %struct._ffi_type** %5)
  ret i32 %call
}

; Function Attrs: uwtable
define i32 @ffi_prep_closure(%struct.ffi_closure* %closure, %struct.ffi_cif* %cif, void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, i8* %user_data) #0 {
entry:
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fun.addr = alloca void (%struct.ffi_cif*, i8*, i8**, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %1 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %2 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %5 = bitcast %struct.ffi_closure* %4 to i8*
  %call = call i32 @ffi_prep_closure_loc(%struct.ffi_closure* %0, %struct.ffi_cif* %1, void (%struct.ffi_cif*, i8*, i8**, i8*)* %2, i8* %3, i8* %5)
  ret i32 %call
}

declare i32 @ffi_prep_closure_loc(%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*, i8*) #1

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
