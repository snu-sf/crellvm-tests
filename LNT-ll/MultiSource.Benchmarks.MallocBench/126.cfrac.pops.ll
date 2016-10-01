; ModuleID = './MultiSource.Benchmarks.MallocBench/126.cfrac.pops.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheType = type { %struct.precisionType*, i16 }
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pcache = common global [32 x %struct.cacheType] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"palloc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pset\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"lvalue is pNull\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pparm\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"undefined function argument\00", align 1

; Function Attrs: nounwind uwtable
define void @pnorm(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %uPtr = alloca i16*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 2
  %2 = load i16, i16* %size, align 2
  %conv = zext i16 %2 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %uPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %4 = load i16, i16* %incdec.ptr, align 2
  %conv1 = zext i16 %4 to i32
  %cmp = icmp ne i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i16*, i16** %uPtr, align 8
  %6 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 4
  %arraydecay4 = getelementptr inbounds [1 x i16], [1 x i16]* %value3, i32 0, i32 0
  %cmp5 = icmp ugt i16* %5, %arraydecay4
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %7 = load i16*, i16** %uPtr, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %8, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [1 x i16], [1 x i16]* %value7, i32 0, i32 0
  %cmp9 = icmp eq i16* %7, %arraydecay8
  br i1 %cmp9, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %do.end
  %9 = load i16*, i16** %uPtr, align 8
  %10 = load i16, i16* %9, align 2
  %conv11 = zext i16 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %11 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 3
  store i8 0, i8* %sign, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %do.end
  %12 = load i16*, i16** %uPtr, align 8
  %13 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value16 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [1 x i16], [1 x i16]* %value16, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  %conv18 = trunc i64 %add to i16
  %14 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 2
  store i16 %conv18, i16* %size19, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @palloc(i32) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %size.addr = alloca i16, align 2
  %w = alloca %struct.precisionType*, align 8
  %kludge = alloca %struct.cacheType*, align 8
  %size = trunc i32 %0 to i16
  store i16 %size, i16* %size.addr, align 2
  %1 = load i16, i16* %size.addr, align 2
  %conv = zext i16 %1 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds %struct.cacheType, %struct.cacheType* getelementptr inbounds ([32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i32 0, i32 0), i64 %idx.ext
  store %struct.cacheType* %add.ptr, %struct.cacheType** %kludge, align 8
  %2 = load i16, i16* %size.addr, align 2
  %conv1 = zext i16 %2 to i64
  %mul = mul i64 2, %conv1
  %add = add i64 8, %mul
  %call = call i8* @malloc(i64 %add)
  %3 = bitcast i8* %call to %struct.precisionType*
  store %struct.precisionType* %3, %struct.precisionType** %w, align 8
  %4 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp = icmp eq %struct.precisionType* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.precisionType* @errorp(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct.precisionType* %call3, %struct.precisionType** %w, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %5, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 0
  store i16 1, i16* %refcount, align 2
  %7 = load i16, i16* %size.addr, align 2
  %8 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %alloc = getelementptr inbounds %struct.precisionType, %struct.precisionType* %8, i32 0, i32 1
  store i16 %7, i16* %alloc, align 2
  %9 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %size4 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %9, i32 0, i32 2
  store i16 %7, i16* %size4, align 2
  %10 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %10, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %11
}

declare i8* @malloc(i64) #1

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @pfree(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %size = alloca i16, align 2
  %kludge = alloca %struct.cacheType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %alloc = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i32 0, i32 1
  %1 = load i16, i16* %alloc, align 2
  store i16 %1, i16* %size, align 2
  %2 = load i16, i16* %size, align 2
  %conv = zext i16 %2 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds %struct.cacheType, %struct.cacheType* getelementptr inbounds ([32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i32 0, i32 0), i64 %idx.ext
  store %struct.cacheType* %add.ptr, %struct.cacheType** %kludge, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @free to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %3)
  ret i32 0
}

declare i32 @free(...) #1

; Function Attrs: nounwind uwtable
define %struct.precisionType* @psetv(%struct.precisionType** %up, %struct.precisionType* %v) #0 {
entry:
  %up.addr = alloca %struct.precisionType**, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %u = alloca %struct.precisionType*, align 8
  store %struct.precisionType** %up, %struct.precisionType*** %up.addr, align 8
  store %struct.precisionType* %v, %struct.precisionType** %v.addr, align 8
  %0 = load %struct.precisionType**, %struct.precisionType*** %up.addr, align 8
  %cmp = icmp eq %struct.precisionType** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.precisionType**, %struct.precisionType*** %up.addr, align 8
  %2 = load %struct.precisionType*, %struct.precisionType** %1, align 8
  store %struct.precisionType* %2, %struct.precisionType** %u, align 8
  %3 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %4 = load %struct.precisionType**, %struct.precisionType*** %up.addr, align 8
  store %struct.precisionType* %3, %struct.precisionType** %4, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp1 = icmp ne %struct.precisionType* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 0
  %7 = load i16, i16* %refcount, align 2
  %inc = add i16 %7, 1
  store i16 %inc, i16* %refcount, align 2
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %cmp4 = icmp ne %struct.precisionType* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %9, i32 0, i32 3
  %10 = load i8, i8* %sign, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, -2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.5
  %call7 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.5
  %11 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %refcount9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 0
  %12 = load i16, i16* %refcount9, align 2
  %dec = add i16 %12, -1
  store i16 %dec, i16* %refcount9, align 2
  %conv10 = zext i16 %dec to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.8
  %13 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %call14 = call i32 @pfree(%struct.precisionType* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.3
  %14 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  ret %struct.precisionType* %14
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pparmv(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp eq %struct.precisionType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 3
  %2 = load i8, i8* %sign, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, -2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %3, i32 0, i32 0
  %4 = load i16, i16* %refcount, align 2
  %inc = add i16 %4, 1
  store i16 %inc, i16* %refcount, align 2
  %5 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  ret %struct.precisionType* %5
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pparmf(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 0
  %2 = load i16, i16* %refcount, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %refcount, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  ret %struct.precisionType* %3
}

; Function Attrs: nounwind uwtable
define void @pdestroyf(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 0
  %2 = load i16, i16* %refcount, align 2
  %dec = add i16 %2, -1
  store i16 %dec, i16* %refcount, align 2
  %conv = zext i16 %dec to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 @pfree(%struct.precisionType* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pnew(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i32 0, i32 0
  %1 = load i16, i16* %refcount, align 2
  %inc = add i16 %1, 1
  store i16 %inc, i16* %refcount, align 2
  %2 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  ret %struct.precisionType* %2
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @presult(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 0
  %2 = load i16, i16* %refcount, align 2
  %dec = add i16 %2, -1
  store i16 %dec, i16* %refcount, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  ret %struct.precisionType* %3
}

; Function Attrs: nounwind uwtable
define %struct.precisionType* @psetq(%struct.precisionType** %up, %struct.precisionType* %v) #0 {
entry:
  %up.addr = alloca %struct.precisionType**, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %u = alloca %struct.precisionType*, align 8
  store %struct.precisionType** %up, %struct.precisionType*** %up.addr, align 8
  store %struct.precisionType* %v, %struct.precisionType** %v.addr, align 8
  %0 = load %struct.precisionType**, %struct.precisionType*** %up.addr, align 8
  %1 = load %struct.precisionType*, %struct.precisionType** %0, align 8
  store %struct.precisionType* %1, %struct.precisionType** %u, align 8
  %2 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %3 = load %struct.precisionType**, %struct.precisionType*** %up.addr, align 8
  store %struct.precisionType* %2, %struct.precisionType** %3, align 8
  %4 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp = icmp ne %struct.precisionType* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %refcount = getelementptr inbounds %struct.precisionType, %struct.precisionType* %5, i32 0, i32 0
  %6 = load i16, i16* %refcount, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %refcount, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %cmp1 = icmp ne %struct.precisionType* %7, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %refcount2 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %8, i32 0, i32 0
  %9 = load i16, i16* %refcount2, align 2
  %dec = add i16 %9, -1
  store i16 %dec, i16* %refcount2, align 2
  %conv = zext i16 %dec to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %call = call i32 @pfree(%struct.precisionType* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %11 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  ret %struct.precisionType* %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
