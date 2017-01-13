; ModuleID = './MultiSource.Benchmarks.MallocBench/113.cfrac.psub.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @psub(%struct.precisionType* %u, %struct.precisionType* %v) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %HiDigit = alloca i16*, align 8
  %wPtr = alloca i16*, align 8
  %uPtr = alloca i16*, align 8
  %vPtr = alloca i16*, align 8
  %w = alloca %struct.precisionType*, align 8
  %temp = alloca i32, align 4
  %noborrow = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %v, %struct.precisionType** %v.addr, align 8
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
  %6 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp1 = icmp ne %struct.precisionType* %6, null
  br i1 %cmp1, label %land.rhs.3, label %land.end.7

land.rhs.3:                                       ; preds = %land.end
  %7 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %8 = bitcast %struct.precisionType* %7 to i16*
  %9 = load i16, i16* %8, align 2
  %inc4 = add i16 %9, 1
  store i16 %inc4, i16* %8, align 2
  %conv5 = zext i16 %9 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.3, %land.end
  %10 = phi i1 [ false, %land.end ], [ %tobool6, %land.rhs.3 ]
  %land.ext8 = zext i1 %10 to i32
  %11 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 3
  %13 = load i8, i8* %sign, align 1
  %conv9 = zext i8 %13 to i32
  %14 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign10 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 3
  %15 = load i8, i8* %sign10, align 1
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp ne i32 %conv9, %conv11
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.7
  store %struct.precisionType* null, %struct.precisionType** %w, align 8
  %16 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  %17 = load i8, i8* %sign14, align 1
  %tobool15 = icmp ne i8 %17, 0
  %lnot = xor i1 %tobool15, true
  %lnot.ext = zext i1 %lnot to i32
  %conv16 = trunc i32 %lnot.ext to i8
  %18 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 3
  store i8 %conv16, i8* %sign17, align 1
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %20 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call = call %struct.precisionType* @padd(%struct.precisionType* %19, %struct.precisionType* %20)
  %call18 = call %struct.precisionType* @psetq(%struct.precisionType** %w, %struct.precisionType* %call)
  %21 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 3
  %22 = load i8, i8* %sign19, align 1
  %tobool20 = icmp ne i8 %22, 0
  %lnot21 = xor i1 %tobool20, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = trunc i32 %lnot.ext22 to i8
  %23 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 3
  store i8 %conv23, i8* %sign24, align 1
  br label %if.end.107

if.else:                                          ; preds = %land.end.7
  %24 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %25 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call25 = call i32 @pcmp(%struct.precisionType* %24, %struct.precisionType* %25)
  store i32 %call25, i32* %i, align 4
  %26 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign26 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 3
  %27 = load i8, i8* %sign26, align 1
  %tobool27 = icmp ne i8 %27, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %28
  store i32 %sub, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else
  %29 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %30 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %30, %struct.precisionType** %w, align 8
  %31 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  store %struct.precisionType* %31, %struct.precisionType** %u.addr, align 8
  %32 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %32, %struct.precisionType** %v.addr, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  %33 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %33, i32 0, i32 2
  %34 = load i16, i16* %size, align 2
  %conv33 = zext i16 %34 to i32
  %call34 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %conv33)
  store %struct.precisionType* %call34, %struct.precisionType** %w, align 8
  %35 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp35 = icmp eq %struct.precisionType* %35, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  %36 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %36, %struct.precisionType** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  %37 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %37, 0
  br i1 %cmp39, label %if.then.41, label %if.else.48

if.then.41:                                       ; preds = %if.end.38
  %38 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign42 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 3
  %39 = load i8, i8* %sign42, align 1
  %tobool43 = icmp ne i8 %39, 0
  %lnot44 = xor i1 %tobool43, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = trunc i32 %lnot.ext45 to i8
  %40 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign47 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i32 0, i32 3
  store i8 %conv46, i8* %sign47, align 1
  br label %if.end.51

if.else.48:                                       ; preds = %if.end.38
  %41 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %41, i32 0, i32 3
  %42 = load i8, i8* %sign49, align 1
  %43 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign50 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %43, i32 0, i32 3
  store i8 %42, i8* %sign50, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.41
  %44 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  %45 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value52 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %45, i32 0, i32 4
  %arraydecay53 = getelementptr inbounds [1 x i16], [1 x i16]* %value52, i32 0, i32 0
  store i16* %arraydecay53, i16** %wPtr, align 8
  %46 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value54 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %46, i32 0, i32 4
  %arraydecay55 = getelementptr inbounds [1 x i16], [1 x i16]* %value54, i32 0, i32 0
  store i16* %arraydecay55, i16** %vPtr, align 8
  store i16 1, i16* %noborrow, align 2
  %47 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value56 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %47, i32 0, i32 4
  %arraydecay57 = getelementptr inbounds [1 x i16], [1 x i16]* %value56, i32 0, i32 0
  %48 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 2
  %49 = load i16, i16* %size58, align 2
  %conv59 = zext i16 %49 to i32
  %idx.ext = sext i32 %conv59 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay57, i64 %idx.ext
  store i16* %add.ptr, i16** %HiDigit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.51
  %50 = load i16*, i16** %vPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr, i16** %vPtr, align 8
  %51 = load i16, i16* %50, align 2
  %conv60 = zext i16 %51 to i32
  %sub61 = sub nsw i32 65535, %conv60
  store i32 %sub61, i32* %temp, align 4
  %52 = load i16*, i16** %uPtr, align 8
  %incdec.ptr62 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr62, i16** %uPtr, align 8
  %53 = load i16, i16* %52, align 2
  %conv63 = zext i16 %53 to i32
  %54 = load i32, i32* %temp, align 4
  %add = add i32 %54, %conv63
  store i32 %add, i32* %temp, align 4
  %55 = load i16, i16* %noborrow, align 2
  %conv64 = zext i16 %55 to i32
  %56 = load i32, i32* %temp, align 4
  %add65 = add i32 %56, %conv64
  store i32 %add65, i32* %temp, align 4
  %57 = load i32, i32* %temp, align 4
  %shr = lshr i32 %57, 16
  %conv66 = trunc i32 %shr to i16
  store i16 %conv66, i16* %noborrow, align 2
  %58 = load i32, i32* %temp, align 4
  %and = and i32 %58, 65535
  %conv67 = trunc i32 %and to i16
  %59 = load i16*, i16** %wPtr, align 8
  %incdec.ptr68 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr68, i16** %wPtr, align 8
  store i16 %conv67, i16* %59, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %60 = load i16*, i16** %vPtr, align 8
  %61 = load i16*, i16** %HiDigit, align 8
  %cmp69 = icmp ult i16* %60, %61
  br i1 %cmp69, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %62 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value71 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %62, i32 0, i32 4
  %arraydecay72 = getelementptr inbounds [1 x i16], [1 x i16]* %value71, i32 0, i32 0
  %63 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size73 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %63, i32 0, i32 2
  %64 = load i16, i16* %size73, align 2
  %conv74 = zext i16 %64 to i32
  %idx.ext75 = sext i32 %conv74 to i64
  %add.ptr76 = getelementptr inbounds i16, i16* %arraydecay72, i64 %idx.ext75
  store i16* %add.ptr76, i16** %HiDigit, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %65 = load i16*, i16** %uPtr, align 8
  %66 = load i16*, i16** %HiDigit, align 8
  %cmp77 = icmp ult i16* %65, %66
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load i16*, i16** %uPtr, align 8
  %incdec.ptr79 = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %incdec.ptr79, i16** %uPtr, align 8
  %68 = load i16, i16* %67, align 2
  %conv80 = zext i16 %68 to i32
  %add81 = add nsw i32 65535, %conv80
  store i32 %add81, i32* %temp, align 4
  %69 = load i16, i16* %noborrow, align 2
  %conv82 = zext i16 %69 to i32
  %70 = load i32, i32* %temp, align 4
  %add83 = add i32 %70, %conv82
  store i32 %add83, i32* %temp, align 4
  %71 = load i32, i32* %temp, align 4
  %shr84 = lshr i32 %71, 16
  %conv85 = trunc i32 %shr84 to i16
  store i16 %conv85, i16* %noborrow, align 2
  %72 = load i32, i32* %temp, align 4
  %and86 = and i32 %72, 65535
  %conv87 = trunc i32 %and86 to i16
  %73 = load i16*, i16** %wPtr, align 8
  %incdec.ptr88 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %incdec.ptr88, i16** %wPtr, align 8
  store i16 %conv87, i16* %73, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.89

do.body.89:                                       ; preds = %do.cond.96, %while.end
  %74 = load i16*, i16** %wPtr, align 8
  %incdec.ptr90 = getelementptr inbounds i16, i16* %74, i32 -1
  store i16* %incdec.ptr90, i16** %wPtr, align 8
  %75 = load i16, i16* %incdec.ptr90, align 2
  %conv91 = zext i16 %75 to i32
  %cmp92 = icmp ne i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %do.body.89
  br label %do.end.101

if.end.95:                                        ; preds = %do.body.89
  br label %do.cond.96

do.cond.96:                                       ; preds = %if.end.95
  %76 = load i16*, i16** %wPtr, align 8
  %77 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value97 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %77, i32 0, i32 4
  %arraydecay98 = getelementptr inbounds [1 x i16], [1 x i16]* %value97, i32 0, i32 0
  %cmp99 = icmp ugt i16* %76, %arraydecay98
  br i1 %cmp99, label %do.body.89, label %do.end.101

do.end.101:                                       ; preds = %do.cond.96, %if.then.94
  %78 = load i16*, i16** %wPtr, align 8
  %79 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value102 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %79, i32 0, i32 4
  %arraydecay103 = getelementptr inbounds [1 x i16], [1 x i16]* %value102, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %78 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay103 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add104 = add nsw i64 %sub.ptr.div, 1
  %conv105 = trunc i64 %add104 to i16
  %80 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %size106 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %80, i32 0, i32 2
  store i16 %conv105, i16* %size106, align 2
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.101, %if.then
  %81 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp108 = icmp ne %struct.precisionType* %81, null
  br i1 %cmp108, label %land.lhs.true, label %land.end.116

land.lhs.true:                                    ; preds = %if.end.107
  %82 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %83 = bitcast %struct.precisionType* %82 to i16*
  %84 = load i16, i16* %83, align 2
  %dec = add i16 %84, -1
  store i16 %dec, i16* %83, align 2
  %conv110 = zext i16 %dec to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %land.rhs.113, label %land.end.116

land.rhs.113:                                     ; preds = %land.lhs.true
  %85 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call114 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %85)
  %tobool115 = icmp ne i32 %call114, 0
  br label %land.end.116

land.end.116:                                     ; preds = %land.rhs.113, %land.lhs.true, %if.end.107
  %86 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.107 ], [ %tobool115, %land.rhs.113 ]
  %land.ext117 = zext i1 %86 to i32
  %87 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp118 = icmp ne %struct.precisionType* %87, null
  br i1 %cmp118, label %land.lhs.true.120, label %land.end.128

land.lhs.true.120:                                ; preds = %land.end.116
  %88 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %89 = bitcast %struct.precisionType* %88 to i16*
  %90 = load i16, i16* %89, align 2
  %dec121 = add i16 %90, -1
  store i16 %dec121, i16* %89, align 2
  %conv122 = zext i16 %dec121 to i32
  %cmp123 = icmp eq i32 %conv122, 0
  br i1 %cmp123, label %land.rhs.125, label %land.end.128

land.rhs.125:                                     ; preds = %land.lhs.true.120
  %91 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call126 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %91)
  %tobool127 = icmp ne i32 %call126, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.125, %land.lhs.true.120, %land.end.116
  %92 = phi i1 [ false, %land.lhs.true.120 ], [ false, %land.end.116 ], [ %tobool127, %land.rhs.125 ]
  %land.ext129 = zext i1 %92 to i32
  %93 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call130 = call %struct.precisionType* @presult(%struct.precisionType* %93)
  store %struct.precisionType* %call130, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.128, %if.then.37
  %94 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %94
}

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #1

declare %struct.precisionType* @padd(%struct.precisionType*, %struct.precisionType*) #1

declare i32 @pcmp(%struct.precisionType*, %struct.precisionType*) #1

declare %struct.precisionType* @palloc(...) #1

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
