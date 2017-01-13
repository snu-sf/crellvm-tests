; ModuleID = './MultiSource.Benchmarks.MallocBench/115.cfrac.pdivmod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzero = external global %struct.precisionType*, align 8
@.str = private unnamed_addr constant [8 x i8] c"pdivmod\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pdivmod(%struct.precisionType* %u, %struct.precisionType* %v, %struct.precisionType** %qp, %struct.precisionType** %rp) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %qp.addr = alloca %struct.precisionType**, align 8
  %rp.addr = alloca %struct.precisionType**, align 8
  %uPtr = alloca i16*, align 8
  %vPtr = alloca i16*, align 8
  %qPtr = alloca i16*, align 8
  %LastPtr = alloca i16*, align 8
  %temp = alloca i32, align 4
  %carry = alloca i16, align 2
  %hi = alloca i16, align 2
  %n = alloca i16, align 2
  %m = alloca i16, align 2
  %d = alloca i16, align 2
  %qd = alloca i16, align 2
  %q = alloca %struct.precisionType*, align 8
  %r = alloca %struct.precisionType*, align 8
  %w = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %v, %struct.precisionType** %v.addr, align 8
  store %struct.precisionType** %qp, %struct.precisionType*** %qp.addr, align 8
  store %struct.precisionType** %rp, %struct.precisionType*** %rp.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i32 0, i32 2
  %1 = load i16, i16* %size, align 2
  store i16 %1, i16* %n, align 2
  %2 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %4 = bitcast %struct.precisionType* %3 to i16*
  %5 = load i16, i16* %4, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %4, align 2
  %conv = zext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp1 = icmp ne %struct.precisionType* %8, null
  br i1 %cmp1, label %land.rhs.3, label %land.end.7

land.rhs.3:                                       ; preds = %land.end
  %9 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %10 = bitcast %struct.precisionType* %9 to i16*
  %11 = load i16, i16* %10, align 2
  %inc4 = add i16 %11, 1
  store i16 %inc4, i16* %10, align 2
  %conv5 = zext i16 %11 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.3, %land.end
  %12 = phi i1 [ false, %land.end ], [ %tobool6, %land.rhs.3 ]
  %land.ext8 = zext i1 %12 to i32
  %13 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %14 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 2
  %15 = load i16, i16* %size9, align 2
  %conv10 = zext i16 %15 to i32
  %16 = load i16, i16* %n, align 2
  %conv11 = zext i16 %16 to i32
  %cmp12 = icmp slt i32 %conv10, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.7
  store %struct.precisionType* null, %struct.precisionType** %q, align 8
  store %struct.precisionType* null, %struct.precisionType** %r, align 8
  %17 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %call = call %struct.precisionType* @psetq(%struct.precisionType** %q, %struct.precisionType* %17)
  %18 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call14 = call %struct.precisionType* @psetq(%struct.precisionType** %r, %struct.precisionType* %18)
  br label %done

if.end:                                           ; preds = %land.end.7
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size15 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i32 0, i32 2
  %20 = load i16, i16* %size15, align 2
  %conv16 = zext i16 %20 to i32
  %21 = load i16, i16* %n, align 2
  %conv17 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv16, %conv17
  %conv18 = trunc i32 %sub to i16
  store i16 %conv18, i16* %m, align 2
  %22 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %22, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %23 = load i16, i16* %m, align 2
  %conv19 = zext i16 %23 to i32
  %idx.ext = sext i32 %conv19 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  %24 = load i16, i16* %n, align 2
  %conv20 = zext i16 %24 to i32
  %idx.ext21 = sext i32 %conv20 to i64
  %add.ptr22 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext21
  store i16* %add.ptr22, i16** %uPtr, align 8
  %25 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value23 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %25, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [1 x i16], [1 x i16]* %value23, i32 0, i32 0
  %26 = load i16, i16* %n, align 2
  %conv25 = zext i16 %26 to i32
  %idx.ext26 = sext i32 %conv25 to i64
  %add.ptr27 = getelementptr inbounds i16, i16* %arraydecay24, i64 %idx.ext26
  store i16* %add.ptr27, i16** %vPtr, align 8
  %27 = load i16, i16* %m, align 2
  %conv28 = zext i16 %27 to i32
  %add = add nsw i32 %conv28, 1
  %call29 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %add)
  store %struct.precisionType* %call29, %struct.precisionType** %q, align 8
  %28 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %cmp30 = icmp eq %struct.precisionType* %28, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %29 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  store %struct.precisionType* %29, %struct.precisionType** %retval
  br label %return

if.end.33:                                        ; preds = %if.end
  %30 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %30, i32 0, i32 3
  %31 = load i8, i8* %sign, align 1
  %conv34 = zext i8 %31 to i32
  %32 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign35 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %32, i32 0, i32 3
  %33 = load i8, i8* %sign35, align 1
  %conv36 = zext i8 %33 to i32
  %cmp37 = icmp ne i32 %conv34, %conv36
  %conv38 = zext i1 %cmp37 to i32
  %conv39 = trunc i32 %conv38 to i8
  %34 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %sign40 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 3
  store i8 %conv39, i8* %sign40, align 1
  %35 = load i16, i16* %n, align 2
  %conv41 = zext i16 %35 to i32
  %call42 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %conv41)
  store %struct.precisionType* %call42, %struct.precisionType** %r, align 8
  %36 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %cmp43 = icmp eq %struct.precisionType* %36, null
  br i1 %cmp43, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.end.33
  %37 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %cmp46 = icmp ne %struct.precisionType* %37, null
  br i1 %cmp46, label %land.lhs.true, label %land.end.54

land.lhs.true:                                    ; preds = %if.then.45
  %38 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %39 = bitcast %struct.precisionType* %38 to i16*
  %40 = load i16, i16* %39, align 2
  %dec = add i16 %40, -1
  store i16 %dec, i16* %39, align 2
  %conv48 = zext i16 %dec to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %land.rhs.51, label %land.end.54

land.rhs.51:                                      ; preds = %land.lhs.true
  %41 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call52 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %41)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %land.lhs.true, %if.then.45
  %42 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.45 ], [ %tobool53, %land.rhs.51 ]
  %land.ext55 = zext i1 %42 to i32
  %43 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  store %struct.precisionType* %43, %struct.precisionType** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.33
  %44 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 3
  %45 = load i8, i8* %sign57, align 1
  %46 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %sign58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %46, i32 0, i32 3
  store i8 %45, i8* %sign58, align 1
  %47 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %value59 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %47, i32 0, i32 4
  %arraydecay60 = getelementptr inbounds [1 x i16], [1 x i16]* %value59, i32 0, i32 0
  %48 = load i16, i16* %m, align 2
  %conv61 = zext i16 %48 to i32
  %idx.ext62 = sext i32 %conv61 to i64
  %add.ptr63 = getelementptr inbounds i16, i16* %arraydecay60, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i16, i16* %add.ptr63, i64 1
  store i16* %add.ptr64, i16** %qPtr, align 8
  %49 = load i16, i16* %n, align 2
  %conv65 = zext i16 %49 to i32
  %cmp66 = icmp eq i32 %conv65, 1
  br i1 %cmp66, label %if.then.68, label %if.else.95

if.then.68:                                       ; preds = %if.end.56
  %50 = load i16*, i16** %vPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %50, i32 -1
  store i16* %incdec.ptr, i16** %vPtr, align 8
  %51 = load i16, i16* %incdec.ptr, align 2
  store i16 %51, i16* %d, align 2
  %52 = load i16, i16* %d, align 2
  %conv69 = zext i16 %52 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then.68
  %call73 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %call74 = call %struct.precisionType* @pnew(%struct.precisionType* %call73)
  store %struct.precisionType* %call74, %struct.precisionType** %q, align 8
  br label %if.end.94

if.else:                                          ; preds = %if.then.68
  %53 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %value75 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %53, i32 0, i32 4
  %arraydecay76 = getelementptr inbounds [1 x i16], [1 x i16]* %value75, i32 0, i32 0
  %54 = load i16, i16* %n, align 2
  %conv77 = zext i16 %54 to i32
  %idx.ext78 = sext i32 %conv77 to i64
  %add.ptr79 = getelementptr inbounds i16, i16* %arraydecay76, i64 %idx.ext78
  store i16* %add.ptr79, i16** %vPtr, align 8
  store i16 0, i16* %hi, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %55 = load i16, i16* %hi, align 2
  %conv80 = zext i16 %55 to i32
  %shl = shl i32 %conv80, 16
  store i32 %shl, i32* %temp, align 4
  %56 = load i16*, i16** %uPtr, align 8
  %incdec.ptr81 = getelementptr inbounds i16, i16* %56, i32 -1
  store i16* %incdec.ptr81, i16** %uPtr, align 8
  %57 = load i16, i16* %incdec.ptr81, align 2
  %conv82 = zext i16 %57 to i32
  %58 = load i32, i32* %temp, align 4
  %add83 = add i32 %58, %conv82
  store i32 %add83, i32* %temp, align 4
  %59 = load i32, i32* %temp, align 4
  %60 = load i16, i16* %d, align 2
  %conv84 = zext i16 %60 to i32
  %div = udiv i32 %59, %conv84
  %conv85 = trunc i32 %div to i16
  %61 = load i16*, i16** %qPtr, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %61, i32 -1
  store i16* %incdec.ptr86, i16** %qPtr, align 8
  store i16 %conv85, i16* %incdec.ptr86, align 2
  %62 = load i32, i32* %temp, align 4
  %63 = load i16, i16* %d, align 2
  %conv87 = zext i16 %63 to i32
  %rem = urem i32 %62, %conv87
  %conv88 = trunc i32 %rem to i16
  store i16 %conv88, i16* %hi, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %64 = load i16*, i16** %uPtr, align 8
  %65 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value89 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %65, i32 0, i32 4
  %arraydecay90 = getelementptr inbounds [1 x i16], [1 x i16]* %value89, i32 0, i32 0
  %cmp91 = icmp ugt i16* %64, %arraydecay90
  br i1 %cmp91, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %66 = load i16, i16* %hi, align 2
  %67 = load i16*, i16** %vPtr, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %67, i32 -1
  store i16* %incdec.ptr93, i16** %vPtr, align 8
  store i16 %66, i16* %incdec.ptr93, align 2
  br label %if.end.94

if.end.94:                                        ; preds = %do.end, %if.then.72
  br label %if.end.351

if.else.95:                                       ; preds = %if.end.56
  %68 = load i16*, i16** %vPtr, align 8
  %incdec.ptr96 = getelementptr inbounds i16, i16* %68, i32 -1
  store i16* %incdec.ptr96, i16** %vPtr, align 8
  %69 = load i16, i16* %incdec.ptr96, align 2
  %conv97 = zext i16 %69 to i32
  %add98 = add nsw i32 %conv97, 1
  %div99 = sdiv i32 65536, %add98
  %conv100 = trunc i32 %div99 to i16
  store i16 %conv100, i16* %d, align 2
  %70 = load i16, i16* %n, align 2
  %conv101 = zext i16 %70 to i32
  %call102 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %conv101)
  store %struct.precisionType* %call102, %struct.precisionType** %w, align 8
  %71 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp103 = icmp eq %struct.precisionType* %71, null
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.else.95
  %72 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %72, %struct.precisionType** %retval
  br label %return

if.end.106:                                       ; preds = %if.else.95
  %73 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value107 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %73, i32 0, i32 4
  %arraydecay108 = getelementptr inbounds [1 x i16], [1 x i16]* %value107, i32 0, i32 0
  store i16* %arraydecay108, i16** %vPtr, align 8
  %74 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value109 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %74, i32 0, i32 4
  %arraydecay110 = getelementptr inbounds [1 x i16], [1 x i16]* %value109, i32 0, i32 0
  store i16* %arraydecay110, i16** %uPtr, align 8
  %75 = load i16*, i16** %vPtr, align 8
  %76 = load i16, i16* %n, align 2
  %conv111 = zext i16 %76 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %add.ptr113 = getelementptr inbounds i16, i16* %75, i64 %idx.ext112
  store i16* %add.ptr113, i16** %LastPtr, align 8
  store i16 0, i16* %hi, align 2
  br label %do.body.114

do.body.114:                                      ; preds = %do.cond.123, %if.end.106
  %77 = load i16*, i16** %vPtr, align 8
  %incdec.ptr115 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr115, i16** %vPtr, align 8
  %78 = load i16, i16* %77, align 2
  %conv116 = zext i16 %78 to i32
  %79 = load i16, i16* %d, align 2
  %conv117 = zext i16 %79 to i32
  %mul = mul nsw i32 %conv116, %conv117
  store i32 %mul, i32* %temp, align 4
  %80 = load i16, i16* %hi, align 2
  %conv118 = zext i16 %80 to i32
  %81 = load i32, i32* %temp, align 4
  %add119 = add i32 %81, %conv118
  store i32 %add119, i32* %temp, align 4
  %82 = load i32, i32* %temp, align 4
  %shr = lshr i32 %82, 16
  %conv120 = trunc i32 %shr to i16
  store i16 %conv120, i16* %hi, align 2
  %83 = load i32, i32* %temp, align 4
  %and = and i32 %83, 65535
  %conv121 = trunc i32 %and to i16
  %84 = load i16*, i16** %uPtr, align 8
  %incdec.ptr122 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %incdec.ptr122, i16** %uPtr, align 8
  store i16 %conv121, i16* %84, align 2
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.114
  %85 = load i16*, i16** %vPtr, align 8
  %86 = load i16*, i16** %LastPtr, align 8
  %cmp124 = icmp ult i16* %85, %86
  br i1 %cmp124, label %do.body.114, label %do.end.126

do.end.126:                                       ; preds = %do.cond.123
  %87 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call127 = call %struct.precisionType* @psetq(%struct.precisionType** %v.addr, %struct.precisionType* %87)
  %88 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp128 = icmp ne %struct.precisionType* %88, null
  br i1 %cmp128, label %land.lhs.true.130, label %land.end.138

land.lhs.true.130:                                ; preds = %do.end.126
  %89 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %90 = bitcast %struct.precisionType* %89 to i16*
  %91 = load i16, i16* %90, align 2
  %dec131 = add i16 %91, -1
  store i16 %dec131, i16* %90, align 2
  %conv132 = zext i16 %dec131 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %land.rhs.135, label %land.end.138

land.rhs.135:                                     ; preds = %land.lhs.true.130
  %92 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call136 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %92)
  %tobool137 = icmp ne i32 %call136, 0
  br label %land.end.138

land.end.138:                                     ; preds = %land.rhs.135, %land.lhs.true.130, %do.end.126
  %93 = phi i1 [ false, %land.lhs.true.130 ], [ false, %do.end.126 ], [ %tobool137, %land.rhs.135 ]
  %land.ext139 = zext i1 %93 to i32
  %94 = load i16, i16* %m, align 2
  %conv140 = zext i16 %94 to i32
  %95 = load i16, i16* %n, align 2
  %conv141 = zext i16 %95 to i32
  %add142 = add nsw i32 %conv140, %conv141
  %add143 = add nsw i32 %add142, 1
  %call144 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %add143)
  store %struct.precisionType* %call144, %struct.precisionType** %w, align 8
  %96 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp145 = icmp eq %struct.precisionType* %96, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %land.end.138
  %97 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %97, %struct.precisionType** %retval
  br label %return

if.end.148:                                       ; preds = %land.end.138
  %98 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value149 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %98, i32 0, i32 4
  %arraydecay150 = getelementptr inbounds [1 x i16], [1 x i16]* %value149, i32 0, i32 0
  store i16* %arraydecay150, i16** %uPtr, align 8
  %99 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value151 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %99, i32 0, i32 4
  %arraydecay152 = getelementptr inbounds [1 x i16], [1 x i16]* %value151, i32 0, i32 0
  store i16* %arraydecay152, i16** %vPtr, align 8
  %100 = load i16*, i16** %uPtr, align 8
  %101 = load i16, i16* %m, align 2
  %conv153 = zext i16 %101 to i32
  %idx.ext154 = sext i32 %conv153 to i64
  %add.ptr155 = getelementptr inbounds i16, i16* %100, i64 %idx.ext154
  %102 = load i16, i16* %n, align 2
  %conv156 = zext i16 %102 to i32
  %idx.ext157 = sext i32 %conv156 to i64
  %add.ptr158 = getelementptr inbounds i16, i16* %add.ptr155, i64 %idx.ext157
  store i16* %add.ptr158, i16** %LastPtr, align 8
  br label %do.body.159

do.body.159:                                      ; preds = %do.cond.171, %if.end.148
  %103 = load i16*, i16** %uPtr, align 8
  %incdec.ptr160 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %incdec.ptr160, i16** %uPtr, align 8
  %104 = load i16, i16* %103, align 2
  %conv161 = zext i16 %104 to i32
  %105 = load i16, i16* %d, align 2
  %conv162 = zext i16 %105 to i32
  %mul163 = mul nsw i32 %conv161, %conv162
  store i32 %mul163, i32* %temp, align 4
  %106 = load i16, i16* %hi, align 2
  %conv164 = zext i16 %106 to i32
  %107 = load i32, i32* %temp, align 4
  %add165 = add i32 %107, %conv164
  store i32 %add165, i32* %temp, align 4
  %108 = load i32, i32* %temp, align 4
  %shr166 = lshr i32 %108, 16
  %conv167 = trunc i32 %shr166 to i16
  store i16 %conv167, i16* %hi, align 2
  %109 = load i32, i32* %temp, align 4
  %and168 = and i32 %109, 65535
  %conv169 = trunc i32 %and168 to i16
  %110 = load i16*, i16** %vPtr, align 8
  %incdec.ptr170 = getelementptr inbounds i16, i16* %110, i32 1
  store i16* %incdec.ptr170, i16** %vPtr, align 8
  store i16 %conv169, i16* %110, align 2
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.159
  %111 = load i16*, i16** %uPtr, align 8
  %112 = load i16*, i16** %LastPtr, align 8
  %cmp172 = icmp ult i16* %111, %112
  br i1 %cmp172, label %do.body.159, label %do.end.174

do.end.174:                                       ; preds = %do.cond.171
  %113 = load i16, i16* %hi, align 2
  %114 = load i16*, i16** %vPtr, align 8
  store i16 %113, i16* %114, align 2
  %115 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call175 = call %struct.precisionType* @psetq(%struct.precisionType** %u.addr, %struct.precisionType* %115)
  %116 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp176 = icmp ne %struct.precisionType* %116, null
  br i1 %cmp176, label %land.lhs.true.178, label %land.end.186

land.lhs.true.178:                                ; preds = %do.end.174
  %117 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %118 = bitcast %struct.precisionType* %117 to i16*
  %119 = load i16, i16* %118, align 2
  %dec179 = add i16 %119, -1
  store i16 %dec179, i16* %118, align 2
  %conv180 = zext i16 %dec179 to i32
  %cmp181 = icmp eq i32 %conv180, 0
  br i1 %cmp181, label %land.rhs.183, label %land.end.186

land.rhs.183:                                     ; preds = %land.lhs.true.178
  %120 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call184 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %120)
  %tobool185 = icmp ne i32 %call184, 0
  br label %land.end.186

land.end.186:                                     ; preds = %land.rhs.183, %land.lhs.true.178, %do.end.174
  %121 = phi i1 [ false, %land.lhs.true.178 ], [ false, %do.end.174 ], [ %tobool185, %land.rhs.183 ]
  %land.ext187 = zext i1 %121 to i32
  %122 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value188 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %122, i32 0, i32 4
  %arraydecay189 = getelementptr inbounds [1 x i16], [1 x i16]* %value188, i32 0, i32 0
  %123 = load i16, i16* %m, align 2
  %conv190 = zext i16 %123 to i32
  %idx.ext191 = sext i32 %conv190 to i64
  %add.ptr192 = getelementptr inbounds i16, i16* %arraydecay189, i64 %idx.ext191
  %add.ptr193 = getelementptr inbounds i16, i16* %add.ptr192, i64 1
  store i16* %add.ptr193, i16** %uPtr, align 8
  br label %do.body.194

do.body.194:                                      ; preds = %do.cond.316, %land.end.186
  %124 = load i16*, i16** %uPtr, align 8
  %incdec.ptr195 = getelementptr inbounds i16, i16* %124, i32 -1
  store i16* %incdec.ptr195, i16** %uPtr, align 8
  %125 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value196 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %125, i32 0, i32 4
  %arraydecay197 = getelementptr inbounds [1 x i16], [1 x i16]* %value196, i32 0, i32 0
  %126 = load i16, i16* %n, align 2
  %conv198 = zext i16 %126 to i32
  %idx.ext199 = sext i32 %conv198 to i64
  %add.ptr200 = getelementptr inbounds i16, i16* %arraydecay197, i64 %idx.ext199
  store i16* %add.ptr200, i16** %vPtr, align 8
  %127 = load i16*, i16** %uPtr, align 8
  %128 = load i16, i16* %n, align 2
  %conv201 = zext i16 %128 to i32
  %idx.ext202 = sext i32 %conv201 to i64
  %add.ptr203 = getelementptr inbounds i16, i16* %127, i64 %idx.ext202
  store i16* %add.ptr203, i16** %LastPtr, align 8
  %129 = load i16*, i16** %LastPtr, align 8
  %130 = load i16, i16* %129, align 2
  %conv204 = zext i16 %130 to i32
  %131 = load i16*, i16** %vPtr, align 8
  %incdec.ptr205 = getelementptr inbounds i16, i16* %131, i32 -1
  store i16* %incdec.ptr205, i16** %vPtr, align 8
  %132 = load i16, i16* %incdec.ptr205, align 2
  %conv206 = zext i16 %132 to i32
  %cmp207 = icmp eq i32 %conv204, %conv206
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %do.body.194
  store i16 -1, i16* %qd, align 2
  br label %if.end.239

if.else.210:                                      ; preds = %do.body.194
  %133 = load i16*, i16** %LastPtr, align 8
  %134 = load i16, i16* %133, align 2
  %conv211 = zext i16 %134 to i32
  %shl212 = shl i32 %conv211, 16
  store i32 %shl212, i32* %temp, align 4
  %135 = load i16*, i16** %LastPtr, align 8
  %incdec.ptr213 = getelementptr inbounds i16, i16* %135, i32 -1
  store i16* %incdec.ptr213, i16** %LastPtr, align 8
  %136 = load i16, i16* %incdec.ptr213, align 2
  %conv214 = zext i16 %136 to i32
  %137 = load i32, i32* %temp, align 4
  %add215 = add i32 %137, %conv214
  store i32 %add215, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %139 = load i16*, i16** %vPtr, align 8
  %140 = load i16, i16* %139, align 2
  %conv216 = zext i16 %140 to i32
  %div217 = udiv i32 %138, %conv216
  %conv218 = trunc i32 %div217 to i16
  store i16 %conv218, i16* %qd, align 2
  %141 = load i32, i32* %temp, align 4
  %142 = load i16*, i16** %vPtr, align 8
  %143 = load i16, i16* %142, align 2
  %conv219 = zext i16 %143 to i32
  %rem220 = urem i32 %141, %conv219
  store i32 %rem220, i32* %temp, align 4
  %144 = load i16*, i16** %vPtr, align 8
  %incdec.ptr221 = getelementptr inbounds i16, i16* %144, i32 -1
  store i16* %incdec.ptr221, i16** %vPtr, align 8
  %145 = load i16*, i16** %LastPtr, align 8
  %incdec.ptr222 = getelementptr inbounds i16, i16* %145, i32 -1
  store i16* %incdec.ptr222, i16** %LastPtr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.237, %if.else.210
  %146 = load i16*, i16** %vPtr, align 8
  %147 = load i16, i16* %146, align 2
  %conv223 = zext i16 %147 to i32
  %148 = load i16, i16* %qd, align 2
  %conv224 = zext i16 %148 to i32
  %mul225 = mul nsw i32 %conv223, %conv224
  %149 = load i32, i32* %temp, align 4
  %shl226 = shl i32 %149, 16
  %150 = load i16*, i16** %LastPtr, align 8
  %151 = load i16, i16* %150, align 2
  %conv227 = zext i16 %151 to i32
  %add228 = add i32 %shl226, %conv227
  %cmp229 = icmp ugt i32 %mul225, %add228
  br i1 %cmp229, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %152 = load i16, i16* %qd, align 2
  %dec231 = add i16 %152, -1
  store i16 %dec231, i16* %qd, align 2
  %153 = load i16*, i16** %vPtr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %153, i64 1
  %154 = load i16, i16* %arrayidx, align 2
  %conv232 = zext i16 %154 to i32
  %155 = load i32, i32* %temp, align 4
  %add233 = add i32 %155, %conv232
  store i32 %add233, i32* %temp, align 4
  %156 = load i32, i32* %temp, align 4
  %cmp234 = icmp uge i32 %156, 65536
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %while.body
  br label %while.end

if.end.237:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.236, %while.cond
  %157 = load i16*, i16** %LastPtr, align 8
  %add.ptr238 = getelementptr inbounds i16, i16* %157, i64 2
  store i16* %add.ptr238, i16** %LastPtr, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %while.end, %if.then.209
  %158 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value240 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %158, i32 0, i32 4
  %arraydecay241 = getelementptr inbounds [1 x i16], [1 x i16]* %value240, i32 0, i32 0
  store i16* %arraydecay241, i16** %vPtr, align 8
  store i16 1, i16* %carry, align 2
  store i16 0, i16* %hi, align 2
  br label %do.body.242

do.body.242:                                      ; preds = %do.cond.262, %if.end.239
  %159 = load i16, i16* %qd, align 2
  %conv243 = zext i16 %159 to i32
  %160 = load i16*, i16** %vPtr, align 8
  %incdec.ptr244 = getelementptr inbounds i16, i16* %160, i32 1
  store i16* %incdec.ptr244, i16** %vPtr, align 8
  %161 = load i16, i16* %160, align 2
  %conv245 = zext i16 %161 to i32
  %mul246 = mul nsw i32 %conv243, %conv245
  store i32 %mul246, i32* %temp, align 4
  %162 = load i16, i16* %hi, align 2
  %conv247 = zext i16 %162 to i32
  %163 = load i32, i32* %temp, align 4
  %add248 = add i32 %163, %conv247
  store i32 %add248, i32* %temp, align 4
  %164 = load i32, i32* %temp, align 4
  %shr249 = lshr i32 %164, 16
  %conv250 = trunc i32 %shr249 to i16
  store i16 %conv250, i16* %hi, align 2
  %165 = load i32, i32* %temp, align 4
  %and251 = and i32 %165, 65535
  store i32 %and251, i32* %temp, align 4
  %166 = load i32, i32* %temp, align 4
  %sub252 = sub i32 65535, %166
  store i32 %sub252, i32* %temp, align 4
  %167 = load i16*, i16** %uPtr, align 8
  %168 = load i16, i16* %167, align 2
  %conv253 = zext i16 %168 to i32
  %169 = load i16, i16* %carry, align 2
  %conv254 = zext i16 %169 to i32
  %add255 = add nsw i32 %conv253, %conv254
  %170 = load i32, i32* %temp, align 4
  %add256 = add i32 %170, %add255
  store i32 %add256, i32* %temp, align 4
  %171 = load i32, i32* %temp, align 4
  %shr257 = lshr i32 %171, 16
  %conv258 = trunc i32 %shr257 to i16
  store i16 %conv258, i16* %carry, align 2
  %172 = load i32, i32* %temp, align 4
  %and259 = and i32 %172, 65535
  %conv260 = trunc i32 %and259 to i16
  %173 = load i16*, i16** %uPtr, align 8
  %incdec.ptr261 = getelementptr inbounds i16, i16* %173, i32 1
  store i16* %incdec.ptr261, i16** %uPtr, align 8
  store i16 %conv260, i16* %173, align 2
  br label %do.cond.262

do.cond.262:                                      ; preds = %do.body.242
  %174 = load i16*, i16** %uPtr, align 8
  %175 = load i16*, i16** %LastPtr, align 8
  %cmp263 = icmp ult i16* %174, %175
  br i1 %cmp263, label %do.body.242, label %do.end.265

do.end.265:                                       ; preds = %do.cond.262
  %176 = load i16, i16* %hi, align 2
  %conv266 = zext i16 %176 to i32
  %sub267 = sub nsw i32 65535, %conv266
  store i32 %sub267, i32* %temp, align 4
  %177 = load i16*, i16** %uPtr, align 8
  %178 = load i16, i16* %177, align 2
  %conv268 = zext i16 %178 to i32
  %179 = load i16, i16* %carry, align 2
  %conv269 = zext i16 %179 to i32
  %add270 = add nsw i32 %conv268, %conv269
  %180 = load i32, i32* %temp, align 4
  %add271 = add i32 %180, %add270
  store i32 %add271, i32* %temp, align 4
  %181 = load i32, i32* %temp, align 4
  %shr272 = lshr i32 %181, 16
  %conv273 = trunc i32 %shr272 to i16
  store i16 %conv273, i16* %carry, align 2
  %182 = load i32, i32* %temp, align 4
  %and274 = and i32 %182, 65535
  %conv275 = trunc i32 %and274 to i16
  %183 = load i16*, i16** %uPtr, align 8
  store i16 %conv275, i16* %183, align 2
  %184 = load i16, i16* %n, align 2
  %conv276 = zext i16 %184 to i32
  %185 = load i16*, i16** %uPtr, align 8
  %idx.ext277 = sext i32 %conv276 to i64
  %idx.neg = sub i64 0, %idx.ext277
  %add.ptr278 = getelementptr inbounds i16, i16* %185, i64 %idx.neg
  store i16* %add.ptr278, i16** %uPtr, align 8
  %186 = load i16, i16* %carry, align 2
  %conv279 = zext i16 %186 to i32
  %cmp280 = icmp eq i32 %conv279, 0
  br i1 %cmp280, label %if.then.282, label %if.end.314

if.then.282:                                      ; preds = %do.end.265
  %187 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value283 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %187, i32 0, i32 4
  %arraydecay284 = getelementptr inbounds [1 x i16], [1 x i16]* %value283, i32 0, i32 0
  store i16* %arraydecay284, i16** %vPtr, align 8
  %188 = load i16*, i16** %uPtr, align 8
  %189 = load i16, i16* %n, align 2
  %conv285 = zext i16 %189 to i32
  %idx.ext286 = sext i32 %conv285 to i64
  %add.ptr287 = getelementptr inbounds i16, i16* %188, i64 %idx.ext286
  store i16* %add.ptr287, i16** %LastPtr, align 8
  br label %do.body.288

do.body.288:                                      ; preds = %do.cond.300, %if.then.282
  %190 = load i16*, i16** %uPtr, align 8
  %191 = load i16, i16* %190, align 2
  %conv289 = zext i16 %191 to i32
  %192 = load i16*, i16** %vPtr, align 8
  %incdec.ptr290 = getelementptr inbounds i16, i16* %192, i32 1
  store i16* %incdec.ptr290, i16** %vPtr, align 8
  %193 = load i16, i16* %192, align 2
  %conv291 = zext i16 %193 to i32
  %add292 = add nsw i32 %conv289, %conv291
  store i32 %add292, i32* %temp, align 4
  %194 = load i16, i16* %carry, align 2
  %conv293 = zext i16 %194 to i32
  %195 = load i32, i32* %temp, align 4
  %add294 = add i32 %195, %conv293
  store i32 %add294, i32* %temp, align 4
  %196 = load i32, i32* %temp, align 4
  %shr295 = lshr i32 %196, 16
  %conv296 = trunc i32 %shr295 to i16
  store i16 %conv296, i16* %carry, align 2
  %197 = load i32, i32* %temp, align 4
  %and297 = and i32 %197, 65535
  %conv298 = trunc i32 %and297 to i16
  %198 = load i16*, i16** %uPtr, align 8
  %incdec.ptr299 = getelementptr inbounds i16, i16* %198, i32 1
  store i16* %incdec.ptr299, i16** %uPtr, align 8
  store i16 %conv298, i16* %198, align 2
  br label %do.cond.300

do.cond.300:                                      ; preds = %do.body.288
  %199 = load i16*, i16** %uPtr, align 8
  %200 = load i16*, i16** %LastPtr, align 8
  %cmp301 = icmp ult i16* %199, %200
  br i1 %cmp301, label %do.body.288, label %do.end.303

do.end.303:                                       ; preds = %do.cond.300
  %201 = load i16, i16* %carry, align 2
  %conv304 = zext i16 %201 to i32
  %sub305 = sub nsw i32 %conv304, 65536
  %202 = load i16*, i16** %uPtr, align 8
  %203 = load i16, i16* %202, align 2
  %conv306 = zext i16 %203 to i32
  %add307 = add nsw i32 %conv306, %sub305
  %conv308 = trunc i32 %add307 to i16
  store i16 %conv308, i16* %202, align 2
  %204 = load i16, i16* %n, align 2
  %conv309 = zext i16 %204 to i32
  %205 = load i16*, i16** %uPtr, align 8
  %idx.ext310 = sext i32 %conv309 to i64
  %idx.neg311 = sub i64 0, %idx.ext310
  %add.ptr312 = getelementptr inbounds i16, i16* %205, i64 %idx.neg311
  store i16* %add.ptr312, i16** %uPtr, align 8
  %206 = load i16, i16* %qd, align 2
  %dec313 = add i16 %206, -1
  store i16 %dec313, i16* %qd, align 2
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.303, %do.end.265
  %207 = load i16, i16* %qd, align 2
  %208 = load i16*, i16** %qPtr, align 8
  %incdec.ptr315 = getelementptr inbounds i16, i16* %208, i32 -1
  store i16* %incdec.ptr315, i16** %qPtr, align 8
  store i16 %207, i16* %incdec.ptr315, align 2
  br label %do.cond.316

do.cond.316:                                      ; preds = %if.end.314
  %209 = load i16*, i16** %uPtr, align 8
  %210 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value317 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %210, i32 0, i32 4
  %arraydecay318 = getelementptr inbounds [1 x i16], [1 x i16]* %value317, i32 0, i32 0
  %cmp319 = icmp ugt i16* %209, %arraydecay318
  br i1 %cmp319, label %do.body.194, label %do.end.321

do.end.321:                                       ; preds = %do.cond.316
  %211 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value322 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %211, i32 0, i32 4
  %arraydecay323 = getelementptr inbounds [1 x i16], [1 x i16]* %value322, i32 0, i32 0
  %212 = load i16, i16* %n, align 2
  %conv324 = zext i16 %212 to i32
  %idx.ext325 = sext i32 %conv324 to i64
  %add.ptr326 = getelementptr inbounds i16, i16* %arraydecay323, i64 %idx.ext325
  store i16* %add.ptr326, i16** %uPtr, align 8
  %213 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %value327 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %213, i32 0, i32 4
  %arraydecay328 = getelementptr inbounds [1 x i16], [1 x i16]* %value327, i32 0, i32 0
  %214 = load i16, i16* %n, align 2
  %conv329 = zext i16 %214 to i32
  %idx.ext330 = sext i32 %conv329 to i64
  %add.ptr331 = getelementptr inbounds i16, i16* %arraydecay328, i64 %idx.ext330
  store i16* %add.ptr331, i16** %vPtr, align 8
  store i16 0, i16* %hi, align 2
  br label %do.body.332

do.body.332:                                      ; preds = %do.cond.345, %do.end.321
  %215 = load i16, i16* %hi, align 2
  %conv333 = zext i16 %215 to i32
  %shl334 = shl i32 %conv333, 16
  store i32 %shl334, i32* %temp, align 4
  %216 = load i16*, i16** %uPtr, align 8
  %incdec.ptr335 = getelementptr inbounds i16, i16* %216, i32 -1
  store i16* %incdec.ptr335, i16** %uPtr, align 8
  %217 = load i16, i16* %incdec.ptr335, align 2
  %conv336 = zext i16 %217 to i32
  %218 = load i32, i32* %temp, align 4
  %add337 = add i32 %218, %conv336
  store i32 %add337, i32* %temp, align 4
  %219 = load i32, i32* %temp, align 4
  %220 = load i16, i16* %d, align 2
  %conv338 = zext i16 %220 to i32
  %div339 = udiv i32 %219, %conv338
  %conv340 = trunc i32 %div339 to i16
  %221 = load i16*, i16** %vPtr, align 8
  %incdec.ptr341 = getelementptr inbounds i16, i16* %221, i32 -1
  store i16* %incdec.ptr341, i16** %vPtr, align 8
  store i16 %conv340, i16* %incdec.ptr341, align 2
  %222 = load i32, i32* %temp, align 4
  %223 = load i16, i16* %d, align 2
  %conv342 = zext i16 %223 to i32
  %rem343 = urem i32 %222, %conv342
  %conv344 = trunc i32 %rem343 to i16
  store i16 %conv344, i16* %hi, align 2
  br label %do.cond.345

do.cond.345:                                      ; preds = %do.body.332
  %224 = load i16*, i16** %uPtr, align 8
  %225 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value346 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %225, i32 0, i32 4
  %arraydecay347 = getelementptr inbounds [1 x i16], [1 x i16]* %value346, i32 0, i32 0
  %cmp348 = icmp ugt i16* %224, %arraydecay347
  br i1 %cmp348, label %do.body.332, label %do.end.350

do.end.350:                                       ; preds = %do.cond.345
  %226 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  call void (%struct.precisionType*, ...) bitcast (void (...)* @pnorm to void (%struct.precisionType*, ...)*)(%struct.precisionType* %226)
  br label %if.end.351

if.end.351:                                       ; preds = %do.end.350, %if.end.94
  %227 = load i16, i16* %m, align 2
  %conv352 = zext i16 %227 to i32
  %cmp353 = icmp sgt i32 %conv352, 0
  br i1 %cmp353, label %land.lhs.true.355, label %if.end.363

land.lhs.true.355:                                ; preds = %if.end.351
  %228 = load i16, i16* %m, align 2
  %idxprom = zext i16 %228 to i64
  %229 = load i16*, i16** %qPtr, align 8
  %arrayidx356 = getelementptr inbounds i16, i16* %229, i64 %idxprom
  %230 = load i16, i16* %arrayidx356, align 2
  %conv357 = zext i16 %230 to i32
  %cmp358 = icmp eq i32 %conv357, 0
  br i1 %cmp358, label %if.then.360, label %if.end.363

if.then.360:                                      ; preds = %land.lhs.true.355
  %231 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %size361 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %231, i32 0, i32 2
  %232 = load i16, i16* %size361, align 2
  %dec362 = add i16 %232, -1
  store i16 %dec362, i16* %size361, align 2
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.360, %land.lhs.true.355, %if.end.351
  %233 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %size364 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %233, i32 0, i32 2
  %234 = load i16, i16* %size364, align 2
  %conv365 = zext i16 %234 to i32
  %cmp366 = icmp eq i32 %conv365, 1
  br i1 %cmp366, label %land.lhs.true.368, label %if.end.374

land.lhs.true.368:                                ; preds = %if.end.363
  %235 = load i16*, i16** %qPtr, align 8
  %236 = load i16, i16* %235, align 2
  %conv369 = zext i16 %236 to i32
  %cmp370 = icmp eq i32 %conv369, 0
  br i1 %cmp370, label %if.then.372, label %if.end.374

if.then.372:                                      ; preds = %land.lhs.true.368
  %237 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %sign373 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %237, i32 0, i32 3
  store i8 0, i8* %sign373, align 1
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.372, %land.lhs.true.368, %if.end.363
  br label %done

done:                                             ; preds = %if.end.374, %if.then
  %238 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp375 = icmp ne %struct.precisionType* %238, null
  br i1 %cmp375, label %land.lhs.true.377, label %land.end.385

land.lhs.true.377:                                ; preds = %done
  %239 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %240 = bitcast %struct.precisionType* %239 to i16*
  %241 = load i16, i16* %240, align 2
  %dec378 = add i16 %241, -1
  store i16 %dec378, i16* %240, align 2
  %conv379 = zext i16 %dec378 to i32
  %cmp380 = icmp eq i32 %conv379, 0
  br i1 %cmp380, label %land.rhs.382, label %land.end.385

land.rhs.382:                                     ; preds = %land.lhs.true.377
  %242 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call383 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %242)
  %tobool384 = icmp ne i32 %call383, 0
  br label %land.end.385

land.end.385:                                     ; preds = %land.rhs.382, %land.lhs.true.377, %done
  %243 = phi i1 [ false, %land.lhs.true.377 ], [ false, %done ], [ %tobool384, %land.rhs.382 ]
  %land.ext386 = zext i1 %243 to i32
  %244 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp387 = icmp ne %struct.precisionType* %244, null
  br i1 %cmp387, label %land.lhs.true.389, label %land.end.397

land.lhs.true.389:                                ; preds = %land.end.385
  %245 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %246 = bitcast %struct.precisionType* %245 to i16*
  %247 = load i16, i16* %246, align 2
  %dec390 = add i16 %247, -1
  store i16 %dec390, i16* %246, align 2
  %conv391 = zext i16 %dec390 to i32
  %cmp392 = icmp eq i32 %conv391, 0
  br i1 %cmp392, label %land.rhs.394, label %land.end.397

land.rhs.394:                                     ; preds = %land.lhs.true.389
  %248 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call395 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %248)
  %tobool396 = icmp ne i32 %call395, 0
  br label %land.end.397

land.end.397:                                     ; preds = %land.rhs.394, %land.lhs.true.389, %land.end.385
  %249 = phi i1 [ false, %land.lhs.true.389 ], [ false, %land.end.385 ], [ %tobool396, %land.rhs.394 ]
  %land.ext398 = zext i1 %249 to i32
  %250 = load %struct.precisionType**, %struct.precisionType*** %rp.addr, align 8
  %cmp399 = icmp eq %struct.precisionType** %250, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %cmp399, label %if.then.401, label %if.else.420

if.then.401:                                      ; preds = %land.end.397
  %251 = load %struct.precisionType**, %struct.precisionType*** %qp.addr, align 8
  %cmp402 = icmp ne %struct.precisionType** %251, null
  br i1 %cmp402, label %if.then.404, label %if.end.406

if.then.404:                                      ; preds = %if.then.401
  %252 = load %struct.precisionType**, %struct.precisionType*** %qp.addr, align 8
  %253 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call405 = call %struct.precisionType* @psetq(%struct.precisionType** %252, %struct.precisionType* %253)
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.404, %if.then.401
  %254 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %cmp407 = icmp ne %struct.precisionType* %254, null
  br i1 %cmp407, label %land.lhs.true.409, label %land.end.417

land.lhs.true.409:                                ; preds = %if.end.406
  %255 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %256 = bitcast %struct.precisionType* %255 to i16*
  %257 = load i16, i16* %256, align 2
  %dec410 = add i16 %257, -1
  store i16 %dec410, i16* %256, align 2
  %conv411 = zext i16 %dec410 to i32
  %cmp412 = icmp eq i32 %conv411, 0
  br i1 %cmp412, label %land.rhs.414, label %land.end.417

land.rhs.414:                                     ; preds = %land.lhs.true.409
  %258 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call415 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %258)
  %tobool416 = icmp ne i32 %call415, 0
  br label %land.end.417

land.end.417:                                     ; preds = %land.rhs.414, %land.lhs.true.409, %if.end.406
  %259 = phi i1 [ false, %land.lhs.true.409 ], [ false, %if.end.406 ], [ %tobool416, %land.rhs.414 ]
  %land.ext418 = zext i1 %259 to i32
  %260 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call419 = call %struct.precisionType* @presult(%struct.precisionType* %260)
  store %struct.precisionType* %call419, %struct.precisionType** %retval
  br label %return

if.else.420:                                      ; preds = %land.end.397
  %261 = load %struct.precisionType**, %struct.precisionType*** %qp.addr, align 8
  %cmp421 = icmp eq %struct.precisionType** %261, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %cmp421, label %if.then.423, label %if.end.442

if.then.423:                                      ; preds = %if.else.420
  %262 = load %struct.precisionType**, %struct.precisionType*** %rp.addr, align 8
  %cmp424 = icmp ne %struct.precisionType** %262, null
  br i1 %cmp424, label %if.then.426, label %if.end.428

if.then.426:                                      ; preds = %if.then.423
  %263 = load %struct.precisionType**, %struct.precisionType*** %rp.addr, align 8
  %264 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call427 = call %struct.precisionType* @psetq(%struct.precisionType** %263, %struct.precisionType* %264)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.426, %if.then.423
  %265 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %cmp429 = icmp ne %struct.precisionType* %265, null
  br i1 %cmp429, label %land.lhs.true.431, label %land.end.439

land.lhs.true.431:                                ; preds = %if.end.428
  %266 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %267 = bitcast %struct.precisionType* %266 to i16*
  %268 = load i16, i16* %267, align 2
  %dec432 = add i16 %268, -1
  store i16 %dec432, i16* %267, align 2
  %conv433 = zext i16 %dec432 to i32
  %cmp434 = icmp eq i32 %conv433, 0
  br i1 %cmp434, label %land.rhs.436, label %land.end.439

land.rhs.436:                                     ; preds = %land.lhs.true.431
  %269 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call437 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %269)
  %tobool438 = icmp ne i32 %call437, 0
  br label %land.end.439

land.end.439:                                     ; preds = %land.rhs.436, %land.lhs.true.431, %if.end.428
  %270 = phi i1 [ false, %land.lhs.true.431 ], [ false, %if.end.428 ], [ %tobool438, %land.rhs.436 ]
  %land.ext440 = zext i1 %270 to i32
  %271 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call441 = call %struct.precisionType* @presult(%struct.precisionType* %271)
  store %struct.precisionType* %call441, %struct.precisionType** %retval
  br label %return

if.end.442:                                       ; preds = %if.else.420
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442
  %272 = load %struct.precisionType**, %struct.precisionType*** %qp.addr, align 8
  %cmp444 = icmp ne %struct.precisionType** %272, null
  br i1 %cmp444, label %if.then.446, label %if.end.448

if.then.446:                                      ; preds = %if.end.443
  %273 = load %struct.precisionType**, %struct.precisionType*** %qp.addr, align 8
  %274 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call447 = call %struct.precisionType* @psetq(%struct.precisionType** %273, %struct.precisionType* %274)
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.446, %if.end.443
  %275 = load %struct.precisionType**, %struct.precisionType*** %rp.addr, align 8
  %cmp449 = icmp ne %struct.precisionType** %275, null
  br i1 %cmp449, label %if.then.451, label %if.end.453

if.then.451:                                      ; preds = %if.end.448
  %276 = load %struct.precisionType**, %struct.precisionType*** %rp.addr, align 8
  %277 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call452 = call %struct.precisionType* @psetq(%struct.precisionType** %276, %struct.precisionType* %277)
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.451, %if.end.448
  %278 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %cmp454 = icmp ne %struct.precisionType* %278, null
  br i1 %cmp454, label %land.lhs.true.456, label %land.end.464

land.lhs.true.456:                                ; preds = %if.end.453
  %279 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %280 = bitcast %struct.precisionType* %279 to i16*
  %281 = load i16, i16* %280, align 2
  %dec457 = add i16 %281, -1
  store i16 %dec457, i16* %280, align 2
  %conv458 = zext i16 %dec457 to i32
  %cmp459 = icmp eq i32 %conv458, 0
  br i1 %cmp459, label %land.rhs.461, label %land.end.464

land.rhs.461:                                     ; preds = %land.lhs.true.456
  %282 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call462 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %282)
  %tobool463 = icmp ne i32 %call462, 0
  br label %land.end.464

land.end.464:                                     ; preds = %land.rhs.461, %land.lhs.true.456, %if.end.453
  %283 = phi i1 [ false, %land.lhs.true.456 ], [ false, %if.end.453 ], [ %tobool463, %land.rhs.461 ]
  %land.ext465 = zext i1 %283 to i32
  %284 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %cmp466 = icmp ne %struct.precisionType* %284, null
  br i1 %cmp466, label %land.lhs.true.468, label %land.end.476

land.lhs.true.468:                                ; preds = %land.end.464
  %285 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %286 = bitcast %struct.precisionType* %285 to i16*
  %287 = load i16, i16* %286, align 2
  %dec469 = add i16 %287, -1
  store i16 %dec469, i16* %286, align 2
  %conv470 = zext i16 %dec469 to i32
  %cmp471 = icmp eq i32 %conv470, 0
  br i1 %cmp471, label %land.rhs.473, label %land.end.476

land.rhs.473:                                     ; preds = %land.lhs.true.468
  %288 = load %struct.precisionType*, %struct.precisionType** %r, align 8
  %call474 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %288)
  %tobool475 = icmp ne i32 %call474, 0
  br label %land.end.476

land.end.476:                                     ; preds = %land.rhs.473, %land.lhs.true.468, %land.end.464
  %289 = phi i1 [ false, %land.lhs.true.468 ], [ false, %land.end.464 ], [ %tobool475, %land.rhs.473 ]
  %land.ext477 = zext i1 %289 to i32
  store %struct.precisionType* null, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.476, %land.end.439, %land.end.417, %if.then.147, %if.then.105, %land.end.54, %if.then.32
  %290 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %290
}

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #1

declare %struct.precisionType* @palloc(...) #1

declare i32 @pfree(...) #1

declare %struct.precisionType* @pnew(%struct.precisionType*) #1

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

declare void @pnorm(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
