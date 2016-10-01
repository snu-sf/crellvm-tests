; ModuleID = './MultiSource.Applications.spiff/13.miller.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt = type { %struct.edt*, i32, i32, i32 }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.edt* @G_do_miller(i32 %m, i32 %n, i32 %max_d, i32 %comflags) #0 {
entry:
  %retval = alloca %struct.edt*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %max_d.addr = alloca i32, align 4
  %comflags.addr = alloca i32, align 4
  %max_obj = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %new = alloca %struct.edt*, align 8
  %script = alloca %struct.edt**, align 8
  %last_d = alloca i32*, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %max_d, i32* %max_d.addr, align 4
  store i32 %comflags, i32* %comflags.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %max_obj, align 4
  %2 = load i32, i32* %max_obj, align 4
  %add1 = add nsw i32 %2, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 %conv, 8
  %call = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 %mul)
  %3 = bitcast i32* %call to %struct.edt**
  store %struct.edt** %3, %struct.edt*** %script, align 8
  %4 = load i32, i32* %max_obj, align 4
  %add2 = add nsw i32 %4, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 4
  %call5 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 %mul4)
  store i32* %call5, i32** %last_d, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %row, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %7 = load i32, i32* %row, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %row, align 4
  %10 = load i32, i32* %row, align 4
  %11 = load i32, i32* %comflags.addr, align 4
  %call9 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %9, i32 %10, i32 %11)
  %cmp10 = icmp eq i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %row, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i32, i32* %row, align 4
  %15 = load i32, i32* %max_obj, align 4
  %div = sdiv i32 %15, 2
  %idxprom = sext i32 %div to i64
  %16 = load i32*, i32** %last_d, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %14, i32* %arrayidx, align 4
  %17 = load i32, i32* %max_obj, align 4
  %div12 = sdiv i32 %17, 2
  %idxprom13 = sext i32 %div12 to i64
  %18 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx14 = getelementptr inbounds %struct.edt*, %struct.edt** %18, i64 %idxprom13
  store %struct.edt* null, %struct.edt** %arrayidx14, align 8
  %19 = load i32, i32* %row, align 4
  %20 = load i32, i32* %m.addr, align 4
  %cmp15 = icmp eq i32 %19, %20
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %21 = load i32, i32* %max_obj, align 4
  %div17 = sdiv i32 %21, 2
  %add18 = add nsw i32 %div17, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %22 = load i32, i32* %max_obj, align 4
  %div19 = sdiv i32 %22, 2
  %sub = sub nsw i32 %div19, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add18, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %lower, align 4
  %23 = load i32, i32* %row, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp eq i32 %23, %24
  br i1 %cmp20, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.end
  %25 = load i32, i32* %max_obj, align 4
  %div23 = sdiv i32 %25, 2
  %sub24 = sub nsw i32 %div23, 1
  br label %cond.end.28

cond.false.25:                                    ; preds = %cond.end
  %26 = load i32, i32* %max_obj, align 4
  %div26 = sdiv i32 %26, 2
  %add27 = add nsw i32 %div26, 1
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.25, %cond.true.22
  %cond29 = phi i32 [ %sub24, %cond.true.22 ], [ %add27, %cond.false.25 ]
  store i32 %cond29, i32* %upper, align 4
  %27 = load i32, i32* %lower, align 4
  %28 = load i32, i32* %upper, align 4
  %cmp30 = icmp sgt i32 %27, %28
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.28
  store %struct.edt* null, %struct.edt** %retval
  br label %return

if.end:                                           ; preds = %cond.end.28
  store i32 1, i32* %d, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.125, %if.end
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %max_d.addr, align 4
  %cmp33 = icmp sle i32 %29, %30
  br i1 %cmp33, label %for.body.35, label %for.end.127

for.body.35:                                      ; preds = %for.cond.32
  %31 = load i32, i32* %lower, align 4
  store i32 %31, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.113, %for.body.35
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %upper, align 4
  %cmp37 = icmp sle i32 %32, %33
  br i1 %cmp37, label %for.body.39, label %for.end.115

for.body.39:                                      ; preds = %for.cond.36
  %call40 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %34 = bitcast i32* %call40 to %struct.edt*
  store %struct.edt* %34, %struct.edt** %new, align 8
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %max_obj, align 4
  %div41 = sdiv i32 %36, 2
  %37 = load i32, i32* %d, align 4
  %sub42 = sub nsw i32 %div41, %37
  %cmp43 = icmp eq i32 %35, %sub42
  br i1 %cmp43, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.39
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %max_obj, align 4
  %div45 = sdiv i32 %39, 2
  %40 = load i32, i32* %d, align 4
  %add46 = add nsw i32 %div45, %40
  %cmp47 = icmp ne i32 %38, %add46
  br i1 %cmp47, label %land.lhs.true.49, label %if.else

land.lhs.true.49:                                 ; preds = %lor.lhs.false
  %41 = load i32, i32* %k, align 4
  %add50 = add nsw i32 %41, 1
  %idxprom51 = sext i32 %add50 to i64
  %42 = load i32*, i32** %last_d, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %42, i64 %idxprom51
  %43 = load i32, i32* %arrayidx52, align 4
  %44 = load i32, i32* %k, align 4
  %sub53 = sub nsw i32 %44, 1
  %idxprom54 = sext i32 %sub53 to i64
  %45 = load i32*, i32** %last_d, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp sge i32 %43, %46
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %land.lhs.true.49, %for.body.39
  %47 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %47, 1
  %idxprom60 = sext i32 %add59 to i64
  %48 = load i32*, i32** %last_d, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %48, i64 %idxprom60
  %49 = load i32, i32* %arrayidx61, align 4
  %add62 = add nsw i32 %49, 1
  store i32 %add62, i32* %row, align 4
  %50 = load i32, i32* %k, align 4
  %add63 = add nsw i32 %50, 1
  %idxprom64 = sext i32 %add63 to i64
  %51 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx65 = getelementptr inbounds %struct.edt*, %struct.edt** %51, i64 %idxprom64
  %52 = load %struct.edt*, %struct.edt** %arrayidx65, align 8
  %53 = load %struct.edt*, %struct.edt** %new, align 8
  %link = getelementptr inbounds %struct.edt, %struct.edt* %53, i32 0, i32 0
  store %struct.edt* %52, %struct.edt** %link, align 8
  %54 = load %struct.edt*, %struct.edt** %new, align 8
  %op = getelementptr inbounds %struct.edt, %struct.edt* %54, i32 0, i32 1
  store i32 2, i32* %op, align 4
  br label %if.end.74

if.else:                                          ; preds = %land.lhs.true.49, %lor.lhs.false
  %55 = load i32, i32* %k, align 4
  %sub66 = sub nsw i32 %55, 1
  %idxprom67 = sext i32 %sub66 to i64
  %56 = load i32*, i32** %last_d, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %56, i64 %idxprom67
  %57 = load i32, i32* %arrayidx68, align 4
  store i32 %57, i32* %row, align 4
  %58 = load i32, i32* %k, align 4
  %sub69 = sub nsw i32 %58, 1
  %idxprom70 = sext i32 %sub69 to i64
  %59 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx71 = getelementptr inbounds %struct.edt*, %struct.edt** %59, i64 %idxprom70
  %60 = load %struct.edt*, %struct.edt** %arrayidx71, align 8
  %61 = load %struct.edt*, %struct.edt** %new, align 8
  %link72 = getelementptr inbounds %struct.edt, %struct.edt* %61, i32 0, i32 0
  store %struct.edt* %60, %struct.edt** %link72, align 8
  %62 = load %struct.edt*, %struct.edt** %new, align 8
  %op73 = getelementptr inbounds %struct.edt, %struct.edt* %62, i32 0, i32 1
  store i32 1, i32* %op73, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.58
  %63 = load i32, i32* %row, align 4
  %64 = load %struct.edt*, %struct.edt** %new, align 8
  %line1 = getelementptr inbounds %struct.edt, %struct.edt* %64, i32 0, i32 2
  store i32 %63, i32* %line1, align 4
  %65 = load i32, i32* %row, align 4
  %66 = load i32, i32* %k, align 4
  %add75 = add nsw i32 %65, %66
  %67 = load i32, i32* %max_obj, align 4
  %div76 = sdiv i32 %67, 2
  %sub77 = sub nsw i32 %add75, %div76
  store i32 %sub77, i32* %col, align 4
  %68 = load i32, i32* %col, align 4
  %69 = load %struct.edt*, %struct.edt** %new, align 8
  %line2 = getelementptr inbounds %struct.edt, %struct.edt* %69, i32 0, i32 3
  store i32 %68, i32* %line2, align 4
  %70 = load %struct.edt*, %struct.edt** %new, align 8
  %71 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %71 to i64
  %72 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx79 = getelementptr inbounds %struct.edt*, %struct.edt** %72, i64 %idxprom78
  store %struct.edt* %70, %struct.edt** %arrayidx79, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.74
  %73 = load i32, i32* %row, align 4
  %74 = load i32, i32* %m.addr, align 4
  %cmp80 = icmp slt i32 %73, %74
  br i1 %cmp80, label %land.lhs.true.82, label %land.end.89

land.lhs.true.82:                                 ; preds = %while.cond
  %75 = load i32, i32* %col, align 4
  %76 = load i32, i32* %n.addr, align 4
  %cmp83 = icmp slt i32 %75, %76
  br i1 %cmp83, label %land.rhs.85, label %land.end.89

land.rhs.85:                                      ; preds = %land.lhs.true.82
  %77 = load i32, i32* %row, align 4
  %78 = load i32, i32* %col, align 4
  %79 = load i32, i32* %comflags.addr, align 4
  %call86 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %77, i32 %78, i32 %79)
  %cmp87 = icmp eq i32 %call86, 0
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.85, %land.lhs.true.82, %while.cond
  %80 = phi i1 [ false, %land.lhs.true.82 ], [ false, %while.cond ], [ %cmp87, %land.rhs.85 ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.89
  %81 = load i32, i32* %row, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %row, align 4
  %82 = load i32, i32* %col, align 4
  %inc91 = add nsw i32 %82, 1
  store i32 %inc91, i32* %col, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.89
  %83 = load i32, i32* %row, align 4
  %84 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %84 to i64
  %85 = load i32*, i32** %last_d, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %85, i64 %idxprom92
  store i32 %83, i32* %arrayidx93, align 4
  %86 = load i32, i32* %row, align 4
  %87 = load i32, i32* %m.addr, align 4
  %cmp94 = icmp eq i32 %86, %87
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.102

land.lhs.true.96:                                 ; preds = %while.end
  %88 = load i32, i32* %col, align 4
  %89 = load i32, i32* %n.addr, align 4
  %cmp97 = icmp eq i32 %88, %89
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %land.lhs.true.96
  %90 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %90 to i64
  %91 = load %struct.edt**, %struct.edt*** %script, align 8
  %arrayidx101 = getelementptr inbounds %struct.edt*, %struct.edt** %91, i64 %idxprom100
  %92 = load %struct.edt*, %struct.edt** %arrayidx101, align 8
  store %struct.edt* %92, %struct.edt** %retval
  br label %return

if.end.102:                                       ; preds = %land.lhs.true.96, %while.end
  %93 = load i32, i32* %row, align 4
  %94 = load i32, i32* %m.addr, align 4
  %cmp103 = icmp eq i32 %93, %94
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.102
  %95 = load i32, i32* %k, align 4
  %add106 = add nsw i32 %95, 2
  store i32 %add106, i32* %lower, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.102
  %96 = load i32, i32* %col, align 4
  %97 = load i32, i32* %n.addr, align 4
  %cmp108 = icmp eq i32 %96, %97
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.107
  %98 = load i32, i32* %k, align 4
  %sub111 = sub nsw i32 %98, 2
  store i32 %sub111, i32* %upper, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.107
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %99 = load i32, i32* %k, align 4
  %add114 = add nsw i32 %99, 2
  store i32 %add114, i32* %k, align 4
  br label %for.cond.36

for.end.115:                                      ; preds = %for.cond.36
  %100 = load i32, i32* %lower, align 4
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %lower, align 4
  %101 = load i32, i32* %upper, align 4
  %inc116 = add nsw i32 %101, 1
  store i32 %inc116, i32* %upper, align 4
  %102 = load i32, i32* %d, align 4
  %cmp117 = icmp sgt i32 %102, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.124

land.lhs.true.119:                                ; preds = %for.end.115
  %103 = load i32, i32* %d, align 4
  %rem = srem i32 %103, 100
  %cmp120 = icmp eq i32 0, %rem
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %land.lhs.true.119
  %104 = load i32, i32* %d, align 4
  %call123 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %104) #3
  call void (i8*, ...) bitcast (void (...)* @Z_chatter to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.119, %for.end.115
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %105 = load i32, i32* %d, align 4
  %inc126 = add nsw i32 %105, 1
  store i32 %inc126, i32* %d, align 4
  br label %for.cond.32

for.end.127:                                      ; preds = %for.cond.32
  %106 = load i32, i32* %max_d.addr, align 4
  call void (i32, ...) bitcast (void (...)* @Z_exceed to void (i32, ...)*)(i32 %106)
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct.edt* null, %struct.edt** %retval
  br label %return

return:                                           ; preds = %for.end.127, %if.then.99, %if.then
  %107 = load %struct.edt*, %struct.edt** %retval
  ret %struct.edt* %107
}

declare i32* @_Z_myalloc(...) #1

declare i32 @X_com(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @Z_chatter(...) #1

declare void @Z_exceed(...) #1

declare void @Z_fatal(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
