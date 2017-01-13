; ModuleID = './MultiSource.Applications.spiff/5.exact.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt = type { %struct.edt*, i32, i32, i32 }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [50 x i8] c"unequal number of tokens, %d and %d respectively\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.edt* @Q_do_exact(i32 %size1, i32 %size2, i32 %max_d, i32 %comflags) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %max_d.addr = alloca i32, align 4
  %comflags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %diffcnt = alloca i32, align 4
  %last = alloca i32, align 4
  %next_edit = alloca i32, align 4
  %last_ptr = alloca %struct.edt*, align 8
  %start = alloca i32, align 4
  %tmp = alloca i32, align 4
  %script = alloca %struct.edt**, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i32 %size2, i32* %size2.addr, align 4
  store i32 %max_d, i32* %max_d.addr, align 4
  store i32 %comflags, i32* %comflags.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %diffcnt, align 4
  %0 = load i32, i32* %size1.addr, align 4
  %1 = load i32, i32* %size2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %size1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %size2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %last, align 4
  store i32 0, i32* %next_edit, align 4
  store %struct.edt* null, %struct.edt** %last_ptr, align 8
  %4 = load i32, i32* %max_d.addr, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 %mul)
  %5 = bitcast i32* %call to %struct.edt**
  store %struct.edt** %5, %struct.edt*** %script, align 8
  %6 = load i32, i32* %size1.addr, align 4
  %7 = load i32, i32* %size2.addr, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i32, i32* %size1.addr, align 4
  %9 = load i32, i32* %size2.addr, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %9) #3
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %last, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %comflags.addr, align 4
  %call7 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %12, i32 %13, i32 %14)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %start, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %while.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %last, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %land.rhs.11, label %land.end.14

land.rhs.11:                                      ; preds = %while.cond.8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %comflags.addr, align 4
  %call12 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %20, i32 %21, i32 %22)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.11, %while.cond.8
  %23 = phi i1 [ false, %while.cond.8 ], [ %tobool13, %land.rhs.11 ]
  br i1 %23, label %while.body.15, label %while.end.23

while.body.15:                                    ; preds = %land.end.14
  %24 = load i32, i32* %diffcnt, align 4
  %add16 = add nsw i32 %24, 2
  store i32 %add16, i32* %diffcnt, align 4
  %25 = load i32, i32* %max_d.addr, align 4
  %add17 = add nsw i32 %25, 1
  %cmp18 = icmp sge i32 %add16, %add17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body.15
  %26 = load i32, i32* %max_d.addr, align 4
  call void (i32, ...) bitcast (void (...)* @Z_exceed to void (i32, ...)*)(i32 %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %while.body.15
  %27 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %i, align 4
  br label %while.cond.8

while.end.23:                                     ; preds = %land.end.14
  %28 = load i32, i32* %start, align 4
  store i32 %28, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.23
  %29 = load i32, i32* %tmp, align 4
  %30 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call26 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %31 = bitcast i32* %call26 to %struct.edt*
  %32 = load i32, i32* %next_edit, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx = getelementptr inbounds %struct.edt*, %struct.edt** %33, i64 %idxprom
  store %struct.edt* %31, %struct.edt** %arrayidx, align 8
  %34 = load %struct.edt*, %struct.edt** %last_ptr, align 8
  %35 = load i32, i32* %next_edit, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx28 = getelementptr inbounds %struct.edt*, %struct.edt** %36, i64 %idxprom27
  %37 = load %struct.edt*, %struct.edt** %arrayidx28, align 8
  %link = getelementptr inbounds %struct.edt, %struct.edt* %37, i32 0, i32 0
  store %struct.edt* %34, %struct.edt** %link, align 8
  %38 = load i32, i32* %next_edit, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx30 = getelementptr inbounds %struct.edt*, %struct.edt** %39, i64 %idxprom29
  %40 = load %struct.edt*, %struct.edt** %arrayidx30, align 8
  store %struct.edt* %40, %struct.edt** %last_ptr, align 8
  %41 = load i32, i32* %next_edit, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx32 = getelementptr inbounds %struct.edt*, %struct.edt** %42, i64 %idxprom31
  %43 = load %struct.edt*, %struct.edt** %arrayidx32, align 8
  %op = getelementptr inbounds %struct.edt, %struct.edt* %43, i32 0, i32 1
  store i32 2, i32* %op, align 4
  %44 = load i32, i32* %tmp, align 4
  %add33 = add nsw i32 %44, 1
  %45 = load i32, i32* %next_edit, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx35 = getelementptr inbounds %struct.edt*, %struct.edt** %46, i64 %idxprom34
  %47 = load %struct.edt*, %struct.edt** %arrayidx35, align 8
  %line1 = getelementptr inbounds %struct.edt, %struct.edt* %47, i32 0, i32 2
  store i32 %add33, i32* %line1, align 4
  %48 = load i32, i32* %next_edit, align 4
  %idxprom36 = sext i32 %48 to i64
  %49 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx37 = getelementptr inbounds %struct.edt*, %struct.edt** %49, i64 %idxprom36
  %50 = load %struct.edt*, %struct.edt** %arrayidx37, align 8
  %line2 = getelementptr inbounds %struct.edt, %struct.edt* %50, i32 0, i32 3
  store i32 0, i32* %line2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %tmp, align 4
  %inc38 = add nsw i32 %51, 1
  store i32 %inc38, i32* %tmp, align 4
  %52 = load i32, i32* %next_edit, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, i32* %next_edit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i32, i32* %start, align 4
  store i32 %53, i32* %tmp, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.62, %for.end
  %54 = load i32, i32* %tmp, align 4
  %55 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %54, %55
  br i1 %cmp41, label %for.body.43, label %for.end.65

for.body.43:                                      ; preds = %for.cond.40
  %call44 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %56 = bitcast i32* %call44 to %struct.edt*
  %57 = load i32, i32* %next_edit, align 4
  %idxprom45 = sext i32 %57 to i64
  %58 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx46 = getelementptr inbounds %struct.edt*, %struct.edt** %58, i64 %idxprom45
  store %struct.edt* %56, %struct.edt** %arrayidx46, align 8
  %59 = load %struct.edt*, %struct.edt** %last_ptr, align 8
  %60 = load i32, i32* %next_edit, align 4
  %idxprom47 = sext i32 %60 to i64
  %61 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx48 = getelementptr inbounds %struct.edt*, %struct.edt** %61, i64 %idxprom47
  %62 = load %struct.edt*, %struct.edt** %arrayidx48, align 8
  %link49 = getelementptr inbounds %struct.edt, %struct.edt* %62, i32 0, i32 0
  store %struct.edt* %59, %struct.edt** %link49, align 8
  %63 = load i32, i32* %next_edit, align 4
  %idxprom50 = sext i32 %63 to i64
  %64 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx51 = getelementptr inbounds %struct.edt*, %struct.edt** %64, i64 %idxprom50
  %65 = load %struct.edt*, %struct.edt** %arrayidx51, align 8
  store %struct.edt* %65, %struct.edt** %last_ptr, align 8
  %66 = load i32, i32* %next_edit, align 4
  %idxprom52 = sext i32 %66 to i64
  %67 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx53 = getelementptr inbounds %struct.edt*, %struct.edt** %67, i64 %idxprom52
  %68 = load %struct.edt*, %struct.edt** %arrayidx53, align 8
  %op54 = getelementptr inbounds %struct.edt, %struct.edt* %68, i32 0, i32 1
  store i32 1, i32* %op54, align 4
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %next_edit, align 4
  %idxprom55 = sext i32 %70 to i64
  %71 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx56 = getelementptr inbounds %struct.edt*, %struct.edt** %71, i64 %idxprom55
  %72 = load %struct.edt*, %struct.edt** %arrayidx56, align 8
  %line157 = getelementptr inbounds %struct.edt, %struct.edt* %72, i32 0, i32 2
  store i32 %69, i32* %line157, align 4
  %73 = load i32, i32* %tmp, align 4
  %add58 = add nsw i32 %73, 1
  %74 = load i32, i32* %next_edit, align 4
  %idxprom59 = sext i32 %74 to i64
  %75 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx60 = getelementptr inbounds %struct.edt*, %struct.edt** %75, i64 %idxprom59
  %76 = load %struct.edt*, %struct.edt** %arrayidx60, align 8
  %line261 = getelementptr inbounds %struct.edt, %struct.edt* %76, i32 0, i32 3
  store i32 %add58, i32* %line261, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.43
  %77 = load i32, i32* %tmp, align 4
  %inc63 = add nsw i32 %77, 1
  store i32 %inc63, i32* %tmp, align 4
  %78 = load i32, i32* %next_edit, align 4
  %inc64 = add nsw i32 %78, 1
  store i32 %inc64, i32* %next_edit, align 4
  br label %for.cond.40

for.end.65:                                       ; preds = %for.cond.40
  br label %do.cond

do.cond:                                          ; preds = %for.end.65
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %last, align 4
  %cmp66 = icmp slt i32 %79, %80
  br i1 %cmp66, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %81 = load %struct.edt*, %struct.edt** %last_ptr, align 8
  ret %struct.edt* %81
}

declare i32* @_Z_myalloc(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @Z_complain(...) #1

declare i32 @X_com(...) #1

declare void @Z_exceed(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
