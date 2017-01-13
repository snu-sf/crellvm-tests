; ModuleID = './MultiSource.Applications.viterbi/4.read_dmatrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvarray = type { i64, %struct.dvector* }
%struct.dvector = type { i64, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Opened file %s for matrix reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"File read and closed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @read_dmatrix(%struct.dvarray* %out, i8* %filename) #0 {
entry:
  %out.addr = alloca %struct.dvarray*, align 8
  %filename.addr = alloca i8*, align 8
  %fid = alloca %struct._IO_FILE*, align 8
  %value = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct.dvarray* %out, %struct.dvarray** %out.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fid, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @mybasename(i8* %1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %call1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fid, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32* %height, i32* %width)
  %3 = load %struct.dvarray*, %struct.dvarray** %out.addr, align 8
  %4 = load i32, i32* %height, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, i32* %width, align 4
  %conv4 = sext i32 %5 to i64
  call void @dvarray_init(%struct.dvarray* %3, i64 %conv, i64 %conv4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %width, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fid, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double* %value)
  %11 = load double, double* %value, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.dvarray*, %struct.dvarray** %out.addr, align 8
  %data = getelementptr inbounds %struct.dvarray, %struct.dvarray* %14, i32 0, i32 1
  %15 = load %struct.dvector*, %struct.dvector** %data, align 8
  %arrayidx = getelementptr inbounds %struct.dvector, %struct.dvector* %15, i64 %idxprom11
  %data12 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx, i32 0, i32 1
  %16 = load double*, double** %data12, align 8
  %arrayidx13 = getelementptr inbounds double, double* %16, i64 %idxprom
  store double %11, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom17 = sext i32 %sub to i64
  %20 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 %20, 1
  %idxprom19 = sext i32 %sub18 to i64
  %21 = load %struct.dvarray*, %struct.dvarray** %out.addr, align 8
  %data20 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %21, i32 0, i32 1
  %22 = load %struct.dvector*, %struct.dvector** %data20, align 8
  %arrayidx21 = getelementptr inbounds %struct.dvector, %struct.dvector* %22, i64 %idxprom19
  %data22 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx21, i32 0, i32 1
  %23 = load double*, double** %data22, align 8
  %arrayidx23 = getelementptr inbounds double, double* %23, i64 %idxprom17
  %24 = load double, double* %arrayidx23, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), double %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fid, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %25)
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %26, %27
  %conv27 = sext i32 %mul to i64
  ret i64 %conv27
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #6
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvarray_init(%struct.dvarray* %array, i64 %count, i64 %vlength) #2 {
entry:
  %array.addr = alloca %struct.dvarray*, align 8
  %count.addr = alloca i64, align 8
  %vlength.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.dvarray* %array, %struct.dvarray** %array.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %vlength, i64* %vlength.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %1 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %count1 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %1, i32 0, i32 0
  store i64 %0, i64* %count1, align 8
  %2 = load i64, i64* %count.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %count.addr, align 8
  %mul = mul i64 %3, 16
  %call = call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast i8* %call to %struct.dvector*
  %5 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data = getelementptr inbounds %struct.dvarray, %struct.dvarray* %5, i32 0, i32 1
  store %struct.dvector* %4, %struct.dvector** %data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data2 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %6, i32 0, i32 1
  store %struct.dvector* null, %struct.dvector** %data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %count.addr, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data3 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %10, i32 0, i32 1
  %11 = load %struct.dvector*, %struct.dvector** %data3, align 8
  %arrayidx = getelementptr inbounds %struct.dvector, %struct.dvector* %11, i64 %9
  %12 = load i64, i64* %vlength.addr, align 8
  call void @dvector_init(%struct.dvector* %arrayidx, i64 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvector_init(%struct.dvector* %vector, i64 %length) #2 {
entry:
  %vector.addr = alloca %struct.dvector*, align 8
  %length.addr = alloca i64, align 8
  store %struct.dvector* %vector, %struct.dvector** %vector.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %1 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %length1 = getelementptr inbounds %struct.dvector, %struct.dvector* %1, i32 0, i32 0
  store i64 %0, i64* %length1, align 8
  %2 = load i64, i64* %length.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %3, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast i8* %call to double*
  %5 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.dvector, %struct.dvector* %5, i32 0, i32 1
  store double* %4, double** %data, align 8
  %6 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data2 = getelementptr inbounds %struct.dvector, %struct.dvector* %6, i32 0, i32 1
  %7 = load double*, double** %data2, align 8
  %8 = bitcast double* %7 to i8*
  %9 = load i64, i64* %length.addr, align 8
  %mul3 = mul i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %mul3, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.dvector, %struct.dvector* %10, i32 0, i32 1
  store double* null, double** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
