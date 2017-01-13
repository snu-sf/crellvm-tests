; ModuleID = './MultiSource.Benchmarks.MallocBench/133.cfrac.ptoa.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define i8* @ptoa(%struct.precisionType* %u) #0 {
entry:
  %retval = alloca i8*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %temp = alloca i32, align 4
  %dPtr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  %consize = alloca i32, align 4
  %r = alloca %struct.precisionType*, align 8
  %v = alloca %struct.precisionType*, align 8
  %pbase = alloca %struct.precisionType*, align 8
  %j = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* null, %struct.precisionType** %r, align 8
  store %struct.precisionType* null, %struct.precisionType** %v, align 8
  store %struct.precisionType* null, %struct.precisionType** %pbase, align 8
  %6 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv1 = zext i16 %7 to i32
  store i32 %conv1, i32* %consize, align 4
  %8 = load i32, i32* %consize, align 4
  %cmp2 = icmp ugt i32 %8, 4090445
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %9 = load i32, i32* %consize, align 4
  %div = udiv i32 %9, 109
  %mul = mul i32 %div, 525
  store i32 %mul, i32* %consize, align 4
  br label %if.end

if.else:                                          ; preds = %land.end
  %10 = load i32, i32* %consize, align 4
  %mul4 = mul i32 %10, 525
  %div5 = udiv i32 %mul4, 109
  store i32 %div5, i32* %consize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %consize, align 4
  %add = add i32 %11, 11
  store i32 %add, i32* %consize, align 4
  %12 = load i32, i32* %consize, align 4
  %conv6 = zext i32 %12 to i64
  %call = call i8* @malloc(i64 %conv6)
  store i8* %call, i8** %d, align 8
  %13 = load i8*, i8** %d, align 8
  %cmp7 = icmp eq i8* %13, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %14 = load i8*, i8** %d, align 8
  store i8* %14, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %15 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call11 = call %struct.precisionType* @pabs(%struct.precisionType* %15)
  %call12 = call %struct.precisionType* @psetq(%struct.precisionType** %v, %struct.precisionType* %call11)
  %call13 = call %struct.precisionType* @utop(i32 1000000000)
  %call14 = call %struct.precisionType* @psetq(%struct.precisionType** %pbase, %struct.precisionType* %call13)
  %16 = load i8*, i8** %d, align 8
  %17 = load i32, i32* %consize, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %dPtr, align 8
  %18 = load i8*, i8** %dPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %dPtr, align 8
  store i8 0, i8* %incdec.ptr, align 1
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i32 0, i32 3
  %20 = load i8, i8* %sign, align 1
  %conv15 = zext i8 %20 to i32
  store i32 %conv15, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.30, %if.end.10
  %21 = load %struct.precisionType*, %struct.precisionType** %v, align 8
  %22 = load %struct.precisionType*, %struct.precisionType** %pbase, align 8
  %call16 = call %struct.precisionType* @pdivmod(%struct.precisionType* %21, %struct.precisionType* %22, %struct.precisionType** %v, %struct.precisionType** %r)
  %23 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call17 = call i32 @ptou(%struct.precisionType* %23)
  store i32 %call17, i32* %temp, align 4
  store i32 9, i32* %j, align 4
  br label %do.body.18

do.body.18:                                       ; preds = %do.cond, %do.body
  %24 = load i32, i32* %temp, align 4
  %rem = urem i32 %24, 10
  %cmp19 = icmp ult i32 %rem, 10
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.18
  %25 = load i32, i32* %temp, align 4
  %rem21 = urem i32 %25, 10
  %add22 = add i32 %rem21, 48
  br label %cond.end

cond.false:                                       ; preds = %do.body.18
  %26 = load i32, i32* %temp, align 4
  %rem23 = urem i32 %26, 10
  %add24 = add i32 %rem23, 97
  %sub = sub i32 %add24, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add22, %cond.true ], [ %sub, %cond.false ]
  %conv25 = trunc i32 %cond to i8
  %27 = load i8*, i8** %dPtr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr26, i8** %dPtr, align 8
  store i8 %conv25, i8* %incdec.ptr26, align 1
  %28 = load i32, i32* %temp, align 4
  %div27 = udiv i32 %28, 10
  store i32 %div27, i32* %temp, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %29 = load i32, i32* %j, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %j, align 4
  %cmp28 = icmp sgt i32 %dec, 0
  br i1 %cmp28, label %do.body.18, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  %30 = load %struct.precisionType*, %struct.precisionType** %v, align 8
  %call31 = call i32 @pcmpz(%struct.precisionType* %30)
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %do.body, label %do.end.34

do.end.34:                                        ; preds = %do.cond.30
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.34
  %31 = load i8*, i8** %dPtr, align 8
  %32 = load i8, i8* %31, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 48
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %dPtr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr38, i8** %dPtr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i8*, i8** %dPtr, align 8
  %35 = load i8, i8* %34, align 1
  %conv39 = sext i8 %35 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %while.end
  %36 = load i8*, i8** %dPtr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr43, i8** %dPtr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %while.end
  %37 = load i32, i32* %i, align 4
  %tobool45 = icmp ne i32 %37, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %38 = load i8*, i8** %dPtr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr47, i8** %dPtr, align 8
  store i8 45, i8* %incdec.ptr47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.44
  %39 = load i8*, i8** %dPtr, align 8
  %40 = load i8*, i8** %d, align 8
  %cmp49 = icmp ugt i8* %39, %40
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %41 = load i8*, i8** %d, align 8
  %42 = load i8*, i8** %dPtr, align 8
  %43 = load i32, i32* %consize, align 4
  %conv52 = zext i32 %43 to i64
  %44 = load i8*, i8** %dPtr, align 8
  %45 = load i8*, i8** %d, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub53 = sub nsw i64 %conv52, %sub.ptr.sub
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %sub53, i32 1, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.48
  %46 = load %struct.precisionType*, %struct.precisionType** %pbase, align 8
  %cmp55 = icmp ne %struct.precisionType* %46, null
  br i1 %cmp55, label %land.lhs.true, label %land.end.64

land.lhs.true:                                    ; preds = %if.end.54
  %47 = load %struct.precisionType*, %struct.precisionType** %pbase, align 8
  %48 = bitcast %struct.precisionType* %47 to i16*
  %49 = load i16, i16* %48, align 2
  %dec57 = add i16 %49, -1
  store i16 %dec57, i16* %48, align 2
  %conv58 = zext i16 %dec57 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %land.rhs.61, label %land.end.64

land.rhs.61:                                      ; preds = %land.lhs.true
  %50 = load %struct.precisionType*, %struct.precisionType** %pbase, align 8
  %call62 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %50)
  %tobool63 = icmp ne i32 %call62, 0
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.61, %land.lhs.true, %if.end.54
  %51 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.54 ], [ %tobool63, %land.rhs.61 ]
  %land.ext65 = zext i1 %51 to i32
  %52 = load %struct.precisionType*, %struct.precisionType** %v, align 8
  %cmp66 = icmp ne %struct.precisionType* %52, null
  br i1 %cmp66, label %land.lhs.true.68, label %land.end.76

land.lhs.true.68:                                 ; preds = %land.end.64
  %53 = load %struct.precisionType*, %struct.precisionType** %v, align 8
  %54 = bitcast %struct.precisionType* %53 to i16*
  %55 = load i16, i16* %54, align 2
  %dec69 = add i16 %55, -1
  store i16 %dec69, i16* %54, align 2
  %conv70 = zext i16 %dec69 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %land.rhs.73, label %land.end.76

land.rhs.73:                                      ; preds = %land.lhs.true.68
  %56 = load %struct.precisionType*, %struct.precisionType** %v, align 8
  %call74 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %56)
  %tobool75 = icmp ne i32 %call74, 0
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.73, %land.lhs.true.68, %land.end.64
  %57 = phi i1 [ false, %land.lhs.true.68 ], [ false, %land.end.64 ], [ %tobool75, %land.rhs.73 ]
  %land.ext77 = zext i1 %57 to i32
  %58 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %cmp78 = icmp ne %struct.precisionType* %58, null
  br i1 %cmp78, label %land.lhs.true.80, label %land.end.88

land.lhs.true.80:                                 ; preds = %land.end.76
  %59 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %60 = bitcast %struct.precisionType* %59 to i16*
  %61 = load i16, i16* %60, align 2
  %dec81 = add i16 %61, -1
  store i16 %dec81, i16* %60, align 2
  %conv82 = zext i16 %dec81 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %land.rhs.85, label %land.end.88

land.rhs.85:                                      ; preds = %land.lhs.true.80
  %62 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call86 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %62)
  %tobool87 = icmp ne i32 %call86, 0
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.85, %land.lhs.true.80, %land.end.76
  %63 = phi i1 [ false, %land.lhs.true.80 ], [ false, %land.end.76 ], [ %tobool87, %land.rhs.85 ]
  %land.ext89 = zext i1 %63 to i32
  %64 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp90 = icmp ne %struct.precisionType* %64, null
  br i1 %cmp90, label %land.lhs.true.92, label %land.end.100

land.lhs.true.92:                                 ; preds = %land.end.88
  %65 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %66 = bitcast %struct.precisionType* %65 to i16*
  %67 = load i16, i16* %66, align 2
  %dec93 = add i16 %67, -1
  store i16 %dec93, i16* %66, align 2
  %conv94 = zext i16 %dec93 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %land.rhs.97, label %land.end.100

land.rhs.97:                                      ; preds = %land.lhs.true.92
  %68 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call98 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %68)
  %tobool99 = icmp ne i32 %call98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.97, %land.lhs.true.92, %land.end.88
  %69 = phi i1 [ false, %land.lhs.true.92 ], [ false, %land.end.88 ], [ %tobool99, %land.rhs.97 ]
  %land.ext101 = zext i1 %69 to i32
  %70 = load i8*, i8** %d, align 8
  store i8* %70, i8** %retval
  br label %return

return:                                           ; preds = %land.end.100, %if.then.9
  %71 = load i8*, i8** %retval
  ret i8* %71
}

declare i8* @malloc(i64) #1

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #1

declare %struct.precisionType* @pabs(%struct.precisionType*) #1

declare %struct.precisionType* @utop(i32) #1

declare %struct.precisionType* @pdivmod(%struct.precisionType*, %struct.precisionType*, %struct.precisionType**, %struct.precisionType**) #1

declare i32 @ptou(%struct.precisionType*) #1

declare i32 @pcmpz(%struct.precisionType*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
