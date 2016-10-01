; ModuleID = './MultiSource.Benchmarks.MallocBench/89.gs.idict.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s }
%struct.pair_s = type { %struct.ref_s, %struct.ref_s }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@dict_max_size = global i32 32766, align 4
@.str = private unnamed_addr constant [12 x i8] c"dict_create\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dict_create(pairs)\00", align 1
@dstack = external global [0 x %struct.ref_s], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"dict_resize(old)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dict_resize(new)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dict_create(i32 %size, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %asize = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %pp = alloca %struct.pair_s*, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %1, %cond.false ]
  %add = add i32 %cond, 1
  store i32 %add, i32* %asize, align 4
  %call = call i8* @alloc(i32 1, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %2 = bitcast i8* %call to %struct.dict_s*
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8
  %3 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %cmp1 = icmp eq %struct.dict_s* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load i32, i32* %asize, align 4
  %call2 = call i8* @alloc(i32 %4, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  %5 = bitcast i8* %call2 to %struct.pair_s*
  store %struct.pair_s* %5, %struct.pair_s** %pp, align 8
  %6 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %cmp3 = icmp eq %struct.pair_s* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %8 = bitcast %struct.dict_s* %7 to i8*
  call void @alloc_free(i8* %8, i32 1, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i32 -25, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 0, i64* %intval, align 8
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %count6 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count6, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  %11 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %12 = bitcast %struct.pair_s* %11 to %struct.ref_s*
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %13, i32 0, i32 1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 0
  %refs = bitcast %union.v* %value7 to %struct.ref_s**
  store %struct.ref_s* %12, %struct.ref_s** %refs, align 8
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents8 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 1
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents8, i32 0, i32 1
  store i16 770, i16* %type_attrs9, align 2
  %15 = load i32, i32* %asize, align 4
  %mul = mul i32 %15, 2
  %conv = trunc i32 %mul to i16
  %16 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents10 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %16, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents10, i32 0, i32 2
  store i16 %conv, i16* %size11, align 2
  %17 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %pdict13 = bitcast %union.v* %value12 to %struct.dict_s**
  store %struct.dict_s* %17, %struct.dict_s** %pdict13, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 778, i16* %type_attrs14, align 2
  %20 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents15 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %20, i32 0, i32 1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents15, i32 0, i32 0
  %refs17 = bitcast %union.v* %value16 to %struct.ref_s**
  %21 = load %struct.ref_s*, %struct.ref_s** %refs17, align 8
  %22 = bitcast %struct.ref_s* %21 to %struct.pair_s*
  store %struct.pair_s* %22, %struct.pair_s** %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %23 = load i32, i32* %asize, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %asize, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value18 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %24, i32 0, i32 1
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value18, i32 0, i32 1
  store i16 32, i16* %type_attrs19, align 2
  %25 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key = getelementptr inbounds %struct.pair_s, %struct.pair_s* %25, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  store i16 32, i16* %type_attrs20, align 2
  %26 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %incdec.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %26, i32 1
  store %struct.pair_s* %incdec.ptr, %struct.pair_s** %pp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i8* @alloc(i32, i32, i8*) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.ref_s* @dict_access_ref(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 1
  ret %struct.ref_s* %contents
}

; Function Attrs: nounwind uwtable
define i32 @dict_lookup(%struct.ref_s* %pdbot, %struct.ref_s* %pdtop, %struct.ref_s* %pkey, %struct.ref_s** %ppvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdbot.addr = alloca %struct.ref_s*, align 8
  %pdtop.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ppvalue.addr = alloca %struct.ref_s**, align 8
  %pdref = alloca %struct.ref_s*, align 8
  %hash = alloca i32, align 4
  %ktype = alloca i32, align 4
  %kpname = alloca %struct.name_s*, align 8
  %full = alloca i32, align 4
  %nref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %size21 = alloca i32, align 4
  %ppbot = alloca %struct.pair_s*, align 8
  %pp = alloca %struct.pair_s*, align 8
  %wrap = alloca i32, align 4
  %etype = alloca i32, align 4
  store %struct.ref_s* %pdbot, %struct.ref_s** %pdbot.addr, align 8
  store %struct.ref_s* %pdtop, %struct.ref_s** %pdtop.addr, align 8
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8
  store %struct.ref_s** %ppvalue, %struct.ref_s*** %ppvalue.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdtop.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %pdref, align 8
  store i32 1, i32* %full, align 4
  %1 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 7, label %sw.bb
    i32 13, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %pname = bitcast %union.v* %value to %struct.name_s**
  %4 = load %struct.name_s*, %struct.name_s** %pname, align 8
  store %struct.name_s* %4, %struct.name_s** %kpname, align 8
  br label %nh

nh:                                               ; preds = %if.end, %sw.bb
  %5 = load %struct.name_s*, %struct.name_s** %kpname, align 8
  %index = getelementptr inbounds %struct.name_s, %struct.name_s* %5, i32 0, i32 1
  %6 = load i16, i16* %index, align 2
  %conv1 = zext i16 %6 to i32
  %mul = mul nsw i32 %conv1, 40503
  store i32 %mul, i32* %hash, align 4
  store i32 7, i32* %ktype, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %bytes = bitcast %union.v* %value3 to i8**
  %8 = load i8*, i8** %bytes, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 2
  %10 = load i16, i16* %size, align 2
  %conv4 = zext i16 %10 to i32
  %call = call i32 @name_ref(i8* %8, i32 %conv4, %struct.ref_s* %nref, i32 1)
  store i32 %call, i32* %code, align 4
  %11 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %pname7 = bitcast %union.v* %value6 to %struct.name_s**
  %13 = load %struct.name_s*, %struct.name_s** %pname7, align 8
  store %struct.name_s* %13, %struct.name_s** %kpname, align 8
  br label %nh

sw.default:                                       ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %15 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %15 to i32
  %and10 = and i32 %conv9, 255
  %shr11 = ashr i32 %and10, 2
  %cmp12 = icmp sge i32 %shr11, 16
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %16 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %17 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %17 to i32
  %and16 = and i32 %conv15, 255
  %shr17 = ashr i32 %and16, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr17, %cond.false ]
  %mul18 = mul nsw i32 %cond, 99
  store i32 %mul18, i32* %hash, align 4
  store i32 -1, i32* %ktype, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %nh
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.epilog
  %18 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %pdict20 = bitcast %union.v* %value19 to %struct.dict_s**
  %19 = load %struct.dict_s*, %struct.dict_s** %pdict20, align 8
  store %struct.dict_s* %19, %struct.dict_s** %pdict, align 8
  %20 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %20, i32 0, i32 1
  %size22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 2
  %21 = load i16, i16* %size22, align 2
  %conv23 = zext i16 %21 to i32
  %shr24 = ashr i32 %conv23, 1
  %sub = sub nsw i32 %shr24, 1
  store i32 %sub, i32* %size21, align 4
  %22 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents25 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %22, i32 0, i32 1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents25, i32 0, i32 0
  %refs = bitcast %union.v* %value26 to %struct.ref_s**
  %23 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %24 = bitcast %struct.ref_s* %23 to %struct.pair_s*
  store %struct.pair_s* %24, %struct.pair_s** %ppbot, align 8
  store i32 0, i32* %wrap, align 4
  %25 = load %struct.pair_s*, %struct.pair_s** %ppbot, align 8
  %26 = load i32, i32* %hash, align 4
  %27 = load i32, i32* %size21, align 4
  %rem = urem i32 %26, %27
  %idx.ext = zext i32 %rem to i64
  %add.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %25, i64 %idx.ext
  %add.ptr27 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %add.ptr, i64 2
  store %struct.pair_s* %add.ptr27, %struct.pair_s** %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.67, %do.body
  %28 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %incdec.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %28, i32 -1
  store %struct.pair_s* %incdec.ptr, %struct.pair_s** %pp, align 8
  %key = getelementptr inbounds %struct.pair_s, %struct.pair_s* %incdec.ptr, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  %29 = load i16, i16* %type_attrs28, align 2
  %conv29 = zext i16 %29 to i32
  %and30 = and i32 %conv29, 255
  %shr31 = ashr i32 %and30, 2
  store i32 %shr31, i32* %etype, align 4
  %30 = load i32, i32* %ktype, align 4
  %cmp32 = icmp eq i32 %shr31, %30
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.cond
  %31 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key35 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %31, i32 0, i32 0
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key35, i32 0, i32 0
  %pname37 = bitcast %union.v* %value36 to %struct.name_s**
  %32 = load %struct.name_s*, %struct.name_s** %pname37, align 8
  %33 = load %struct.name_s*, %struct.name_s** %kpname, align 8
  %cmp38 = icmp eq %struct.name_s* %32, %33
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.34
  %34 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value41 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %34, i32 0, i32 1
  %35 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8
  store %struct.ref_s* %value41, %struct.ref_s** %35, align 8
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.34
  br label %if.end.67

if.else:                                          ; preds = %for.cond
  %36 = load i32, i32* %etype, align 4
  %cmp43 = icmp eq i32 %36, 8
  br i1 %cmp43, label %if.then.45, label %if.else.59

if.then.45:                                       ; preds = %if.else
  %37 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %38 = load %struct.pair_s*, %struct.pair_s** %ppbot, align 8
  %cmp46 = icmp eq %struct.pair_s* %37, %38
  br i1 %cmp46, label %if.then.48, label %if.else.57

if.then.48:                                       ; preds = %if.then.45
  %39 = load i32, i32* %wrap, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %wrap, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.then.48
  %40 = load i32, i32* %full, align 4
  %cmp50 = icmp sgt i32 %40, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store i32 -2, i32* %full, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  br label %next_dict

if.end.54:                                        ; preds = %if.then.48
  %41 = load i32, i32* %size21, align 4
  %add = add i32 %41, 1
  %42 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %idx.ext55 = zext i32 %add to i64
  %add.ptr56 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %42, i64 %idx.ext55
  store %struct.pair_s* %add.ptr56, %struct.pair_s** %pp, align 8
  br label %if.end.58

if.else.57:                                       ; preds = %if.then.45
  br label %for.end

if.end.58:                                        ; preds = %if.end.54
  br label %if.end.66

if.else.59:                                       ; preds = %if.else
  %43 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key60 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %43, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %call61 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* %key60, %struct.ref_s* %44)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.else.59
  %45 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value64 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %45, i32 0, i32 1
  %46 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8
  store %struct.ref_s* %value64, %struct.ref_s** %46, align 8
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.else.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.42
  br label %for.cond

for.end:                                          ; preds = %if.else.57
  %47 = load i32, i32* %full, align 4
  %cmp68 = icmp sgt i32 %47, 0
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %for.end
  %48 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value71 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %48, i32 0, i32 1
  %49 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8
  store %struct.ref_s* %value71, %struct.ref_s** %49, align 8
  store i32 0, i32* %full, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.end
  br label %next_dict

next_dict:                                        ; preds = %if.end.72, %if.end.53
  br label %do.cond

do.cond:                                          ; preds = %next_dict
  %50 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %incdec.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 -1
  store %struct.ref_s* %incdec.ptr73, %struct.ref_s** %pdref, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %pdbot.addr, align 8
  %cmp74 = icmp uge %struct.ref_s* %incdec.ptr73, %51
  br i1 %cmp74, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %52 = load i32, i32* %full, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.63, %if.then.40, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @name_ref(i8*, i32, %struct.ref_s*, i32) #1

declare i32 @obj_eq(...) #1

; Function Attrs: nounwind uwtable
define i32 @dict_put(%struct.ref_s* %pdref, %struct.ref_s* %pkey, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %pvslot = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %pname = alloca %struct.name_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %call = call i32 @dict_lookup(%struct.ref_s* %0, %struct.ref_s* %1, %struct.ref_s* %2, %struct.ref_s** %pvslot)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8
  store %struct.dict_s* %4, %struct.dict_s** %pdict, align 8
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i32 0, i32 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 0
  %intval = bitcast %union.v* %value2 to i64*
  %6 = load i64, i64* %intval, align 8
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 2
  %8 = load i16, i16* %size, align 2
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 1
  %sub = sub nsw i32 %shr, 1
  %conv3 = sext i32 %sub to i64
  %cmp4 = icmp eq i64 %6, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %count7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 0
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count7, i32 0, i32 0
  %intval9 = bitcast %union.v* %value8 to i64*
  %10 = load i64, i64* %intval9, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %intval9, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %13 = bitcast %struct.ref_s* %arrayidx to i8*
  %14 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %16 = load i16, i16* %type_attrs, align 2
  %conv10 = zext i16 %16 to i32
  %and = and i32 %conv10, 255
  %shr11 = ashr i32 %and, 2
  %cmp12 = icmp eq i32 %shr11, 7
  br i1 %cmp12, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %pname16 = bitcast %union.v* %value15 to %struct.name_s**
  %18 = load %struct.name_s*, %struct.name_s** %pname16, align 8
  store %struct.name_s* %18, %struct.name_s** %pname, align 8
  %19 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %pvalue17 = getelementptr inbounds %struct.name_s, %struct.name_s* %19, i32 0, i32 4
  %20 = load %struct.ref_s*, %struct.ref_s** %pvalue17, align 8
  %cmp18 = icmp eq %struct.ref_s* %20, null
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.14
  %21 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %22 = load %struct.dict_s*, %struct.dict_s** bitcast ([0 x %struct.ref_s]* @dstack to %struct.dict_s**), align 8
  %cmp20 = icmp eq %struct.dict_s* %21, %22
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %24 = load %struct.dict_s*, %struct.dict_s** bitcast (%union.v* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 1, i32 0) to %struct.dict_s**), align 8
  %cmp22 = icmp eq %struct.dict_s* %23, %24
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %25 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8
  %26 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %pvalue25 = getelementptr inbounds %struct.name_s, %struct.name_s* %26, i32 0, i32 4
  store %struct.ref_s* %25, %struct.ref_s** %pvalue25, align 8
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false, %if.then.14
  %27 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %pvalue26 = getelementptr inbounds %struct.name_s, %struct.name_s* %27, i32 0, i32 4
  store %struct.ref_s* inttoptr (i64 1 to %struct.ref_s*), %struct.ref_s** %pvalue26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %28 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8
  %30 = bitcast %struct.ref_s* %28 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.6
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @dict_length(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 0
  %intval = bitcast %union.v* %value1 to i64*
  %2 = load i64, i64* %intval, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @dict_maxlength(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 2
  %2 = load i16, i16* %size, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 1
  %sub = sub nsw i32 %shr, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @dict_copy(%struct.ref_s* %pdrfrom, %struct.ref_s* %pdrto) #0 {
entry:
  %retval = alloca i32, align 4
  %pdrfrom.addr = alloca %struct.ref_s*, align 8
  %pdrto.addr = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %count = alloca i32, align 4
  %pp = alloca %struct.pair_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %pdrfrom, %struct.ref_s** %pdrfrom.addr, align 8
  store %struct.ref_s* %pdrto, %struct.ref_s** %pdrto.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8
  store %struct.dict_s* %1, %struct.dict_s** %pdict, align 8
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %2, i32 0, i32 1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 2
  %3 = load i16, i16* %size, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 1
  %sub = sub nsw i32 %shr, 1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %count, align 4
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents2 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents2, i32 0, i32 0
  %refs = bitcast %union.v* %value3 to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %6 = bitcast %struct.ref_s* %5 to %struct.pair_s*
  store %struct.pair_s* %6, %struct.pair_s** %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %7 = load i32, i32* %count, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %count, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key = getelementptr inbounds %struct.pair_s, %struct.pair_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  %9 = load i16, i16* %type_attrs, align 2
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 255
  %shr5 = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr5, 8
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %10 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8
  %11 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key7 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %11, i32 0, i32 0
  %12 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value8 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %12, i32 0, i32 1
  %call = call i32 @dict_put(%struct.ref_s* %10, %struct.ref_s* %key7, %struct.ref_s* %value8)
  store i32 %call, i32* %code, align 4
  %cmp9 = icmp ne i32 %call, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %while.body
  %14 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %incdec.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %14, i32 1
  store %struct.pair_s* %incdec.ptr, %struct.pair_s** %pp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @dict_resize(%struct.ref_s* %pdrfrom, i32 %new_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdrfrom.addr = alloca %struct.ref_s*, align 8
  %new_size.addr = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %drto = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %pdrfrom, %struct.ref_s** %pdrfrom.addr, align 8
  store i32 %new_size, i32* %new_size.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8
  store %struct.dict_s* %1, %struct.dict_s** %pdict, align 8
  %2 = load i32, i32* %new_size.addr, align 4
  %call = call i32 @dict_create(i32 %2, %struct.ref_s* %drto)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8
  %call2 = call i32 @dict_copy(%struct.ref_s* %4, %struct.ref_s* %drto)
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i32 0, i32 1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 0
  %refs = bitcast %union.v* %value3 to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %7 = bitcast %struct.ref_s* %6 to i8*
  %8 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8
  %call4 = call i32 @dict_maxlength(%struct.ref_s* %8)
  call void @alloc_free(i8* %7, i32 %call4, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 0
  %pdict6 = bitcast %union.v* %value5 to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict6, align 8
  %11 = bitcast %struct.dict_s* %9 to i8*
  %12 = bitcast %struct.dict_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 0
  %pdict8 = bitcast %union.v* %value7 to %struct.dict_s**
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict8, align 8
  %14 = bitcast %struct.dict_s* %13 to i8*
  call void @alloc_free(i8* %14, i32 1, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @dict_first(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 2
  %2 = load i16, i16* %size, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 1
  %sub = sub nsw i32 %shr, 1
  %add = add nsw i32 %sub, 1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @dict_next(%struct.ref_s* %pdref, i32 %index, %struct.ref_s* %eltp) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %eltp.addr = alloca %struct.ref_s*, align 8
  %pp = alloca %struct.pair_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.ref_s* %eltp, %struct.ref_s** %eltp.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %contents = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 1
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 0
  %refs = bitcast %union.v* %value1 to %struct.ref_s**
  %2 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %3 = bitcast %struct.ref_s* %2 to %struct.pair_s*
  %4 = load i32, i32* %index.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %3, i64 %idx.ext
  store %struct.pair_s* %add.ptr, %struct.pair_s** %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %incdec.ptr = getelementptr inbounds %struct.pair_s, %struct.pair_s* %5, i32 -1
  store %struct.pair_s* %incdec.ptr, %struct.pair_s** %pp, align 8
  %6 = load i32, i32* %index.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %index.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key = getelementptr inbounds %struct.pair_s, %struct.pair_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  %8 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp2 = icmp ne i32 %shr, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 0
  %10 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %key4 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %10, i32 0, i32 0
  %11 = bitcast %struct.ref_s* %arrayidx to i8*
  %12 = bitcast %struct.ref_s* %key4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  %14 = load %struct.pair_s*, %struct.pair_s** %pp, align 8
  %value6 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %14, i32 0, i32 1
  %15 = bitcast %struct.ref_s* %arrayidx5 to i8*
  %16 = bitcast %struct.ref_s* %value6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = load i32, i32* %index.addr, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
