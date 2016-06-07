; ModuleID = 'fillpen.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fillpen_t = type { %struct.dict_t*, i32*, double, double }
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"fillpen.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<sil>\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s not a filler word in the given dictionary\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Reading filler penalty file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s %lf\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bad input line: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.fillpen_t* @fillpen_init(%struct.dict_t* %dict, i8* %file, double %silprob, double %fillprob, double %lw, double %wip) #0 {
entry:
  %retval = alloca %struct.fillpen_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %file.addr = alloca i8*, align 8
  %silprob.addr = alloca double, align 8
  %fillprob.addr = alloca double, align 8
  %lw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %w = alloca i32, align 4
  %bw = alloca i32, align 4
  %prob = alloca double, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca [1024 x i8], align 16
  %wd = alloca [1024 x i8], align 16
  %k = alloca i32, align 4
  %_fillpen = alloca %struct.fillpen_t*, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store double %silprob, double* %silprob.addr, align 8
  store double %fillprob, double* %fillprob.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 78)
  %0 = bitcast i8* %call to %struct.fillpen_t*
  store %struct.fillpen_t* %0, %struct.fillpen_t** %_fillpen, align 8
  %1 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %2 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %dict1 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %2, i32 0, i32 0
  store %struct.dict_t* %1, %struct.dict_t** %dict1, align 8
  %3 = load double, double* %lw.addr, align 8
  %4 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %lw2 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %4, i32 0, i32 2
  store double %3, double* %lw2, align 8
  %5 = load double, double* %wip.addr, align 8
  %6 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %wip3 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %6, i32 0, i32 3
  store double %5, double* %wip3, align 8
  %7 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end = getelementptr inbounds %struct.dict_t, %struct.dict_t* %7, i32 0, i32 9
  %8 = load i32, i32* %filler_end, align 4
  %9 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start = getelementptr inbounds %struct.dict_t, %struct.dict_t* %9, i32 0, i32 8
  %10 = load i32, i32* %filler_start, align 4
  %cmp = icmp sge i32 %8, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end4 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %11, i32 0, i32 9
  %12 = load i32, i32* %filler_end4, align 4
  %13 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start5 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %13, i32 0, i32 8
  %14 = load i32, i32* %filler_start5, align 4
  %sub = sub nsw i32 %12, %14
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %call6 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 85)
  %15 = bitcast i8* %call6 to i32*
  %16 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob7 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %16, i32 0, i32 1
  store i32* %15, i32** %prob7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob8 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %17, i32 0, i32 1
  store i32* null, i32** %prob8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load double, double* %fillprob.addr, align 8
  store double %18, double* %prob, align 8
  %19 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start9 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %19, i32 0, i32 8
  %20 = load i32, i32* %filler_start9, align 4
  store i32 %20, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %w, align 4
  %22 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end10 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %22, i32 0, i32 9
  %23 = load i32, i32* %filler_end10, align 4
  %cmp11 = icmp sle i32 %21, %23
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load double, double* %prob, align 8
  %call13 = call i32 @logs3(double %24)
  %conv14 = sitofp i32 %call13 to double
  %25 = load double, double* %lw.addr, align 8
  %mul = fmul double %conv14, %25
  %26 = load double, double* %wip.addr, align 8
  %call15 = call i32 @logs3(double %26)
  %conv16 = sitofp i32 %call15 to double
  %add17 = fadd double %mul, %conv16
  %conv18 = fptosi double %add17 to i32
  %27 = load i32, i32* %w, align 4
  %28 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start19 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %28, i32 0, i32 8
  %29 = load i32, i32* %filler_start19, align 4
  %sub20 = sub nsw i32 %27, %29
  %idxprom = sext i32 %sub20 to i64
  %30 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob21 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %30, i32 0, i32 1
  %31 = load i32*, i32** %prob21, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %conv18, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %w, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %call22 = call i32 @dict_wordid(%struct.dict_t* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call22, i32* %w, align 4
  %34 = load i32, i32* %w, align 4
  %cmp23 = icmp slt i32 %34, 0
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %35 = load i32, i32* %w, align 4
  %36 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start25 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %36, i32 0, i32 8
  %37 = load i32, i32* %filler_start25, align 4
  %cmp26 = icmp slt i32 %35, %37
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %38 = load i32, i32* %w, align 4
  %39 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end29 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %39, i32 0, i32 9
  %40 = load i32, i32* %filler_end29, align 4
  %cmp30 = icmp sgt i32 %38, %40
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.28
  %41 = load double, double* %silprob.addr, align 8
  store double %41, double* %prob, align 8
  %42 = load double, double* %prob, align 8
  %call34 = call i32 @logs3(double %42)
  %conv35 = sitofp i32 %call34 to double
  %43 = load double, double* %lw.addr, align 8
  %mul36 = fmul double %conv35, %43
  %44 = load double, double* %wip.addr, align 8
  %call37 = call i32 @logs3(double %44)
  %conv38 = sitofp i32 %call37 to double
  %add39 = fadd double %mul36, %conv38
  %conv40 = fptosi double %add39 to i32
  %45 = load i32, i32* %w, align 4
  %46 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start41 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %46, i32 0, i32 8
  %47 = load i32, i32* %filler_start41, align 4
  %sub42 = sub nsw i32 %45, %47
  %idxprom43 = sext i32 %sub42 to i64
  %48 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob44 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %48, i32 0, i32 1
  %49 = load i32*, i32** %prob44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %49, i64 %idxprom43
  store i32 %conv40, i32* %arrayidx45, align 4
  %50 = load i8*, i8** %file.addr, align 8
  %tobool = icmp ne i8* %50, null
  br i1 %tobool, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.33
  %51 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  store %struct.fillpen_t* %51, %struct.fillpen_t** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.33
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %52 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* %52)
  %53 = load i8*, i8** %file.addr, align 8
  %call48 = call %struct._IO_FILE* @fopen(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call48, %struct._IO_FILE** %fp, align 8
  %cmp49 = icmp eq %struct._IO_FILE* %call48, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %54 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %54)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.47
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.then.60, %if.end.52
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call53 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %55)
  %cmp54 = icmp ne i8* %call53, null
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  %56 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %56 to i32
  %cmp58 = icmp eq i32 %conv57, 35
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.body
  br label %while.cond

if.end.61:                                        ; preds = %while.body
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %wd, i32 0, i32 0
  %call64 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay63, double* %prob) #3
  store i32 %call64, i32* %k, align 4
  %57 = load i32, i32* %k, align 4
  %cmp65 = icmp ne i32 %57, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.61
  %58 = load i32, i32* %k, align 4
  %cmp67 = icmp ne i32 %58, 2
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %arraydecay70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true, %if.end.61
  %59 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %arraydecay72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %wd, i32 0, i32 0
  %call73 = call i32 @dict_wordid(%struct.dict_t* %59, i8* %arraydecay72)
  store i32 %call73, i32* %w, align 4
  %60 = load i32, i32* %w, align 4
  %cmp74 = icmp slt i32 %60, 0
  br i1 %cmp74, label %if.then.84, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.end.71
  %61 = load i32, i32* %w, align 4
  %62 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start77 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %62, i32 0, i32 8
  %63 = load i32, i32* %filler_start77, align 4
  %cmp78 = icmp slt i32 %61, %63
  br i1 %cmp78, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.76
  %64 = load i32, i32* %w, align 4
  %65 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end81 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %65, i32 0, i32 9
  %66 = load i32, i32* %filler_end81, align 4
  %cmp82 = icmp sgt i32 %64, %66
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.76, %if.end.71
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %lor.lhs.false.80
  %67 = load double, double* %prob, align 8
  %call86 = call i32 @logs3(double %67)
  %conv87 = sitofp i32 %call86 to double
  %68 = load double, double* %lw.addr, align 8
  %mul88 = fmul double %conv87, %68
  %69 = load double, double* %wip.addr, align 8
  %call89 = call i32 @logs3(double %69)
  %conv90 = sitofp i32 %call89 to double
  %add91 = fadd double %mul88, %conv90
  %conv92 = fptosi double %add91 to i32
  %70 = load i32, i32* %w, align 4
  %71 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start93 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %71, i32 0, i32 8
  %72 = load i32, i32* %filler_start93, align 4
  %sub94 = sub nsw i32 %70, %72
  %idxprom95 = sext i32 %sub94 to i64
  %73 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob96 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %73, i32 0, i32 1
  %74 = load i32*, i32** %prob96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %74, i64 %idxprom95
  store i32 %conv92, i32* %arrayidx97, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call98 = call i32 @fclose(%struct._IO_FILE* %75)
  %76 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start99 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %76, i32 0, i32 8
  %77 = load i32, i32* %filler_start99, align 4
  store i32 %77, i32* %w, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.121, %while.end
  %78 = load i32, i32* %w, align 4
  %79 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_end101 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %79, i32 0, i32 9
  %80 = load i32, i32* %filler_end101, align 4
  %cmp102 = icmp sle i32 %78, %80
  br i1 %cmp102, label %for.body.104, label %for.end.123

for.body.104:                                     ; preds = %for.cond.100
  %81 = load i32, i32* %w, align 4
  %idxprom105 = sext i32 %81 to i64
  %82 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %82, i32 0, i32 4
  %83 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx106 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %83, i64 %idxprom105
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx106, i32 0, i32 4
  %84 = load i32, i32* %basewid, align 4
  store i32 %84, i32* %bw, align 4
  %85 = load i32, i32* %bw, align 4
  %86 = load i32, i32* %w, align 4
  %cmp107 = icmp ne i32 %85, %86
  br i1 %cmp107, label %if.then.109, label %if.end.120

if.then.109:                                      ; preds = %for.body.104
  %87 = load i32, i32* %bw, align 4
  %88 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start110 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %88, i32 0, i32 8
  %89 = load i32, i32* %filler_start110, align 4
  %sub111 = sub nsw i32 %87, %89
  %idxprom112 = sext i32 %sub111 to i64
  %90 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob113 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %90, i32 0, i32 1
  %91 = load i32*, i32** %prob113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %91, i64 %idxprom112
  %92 = load i32, i32* %arrayidx114, align 4
  %93 = load i32, i32* %w, align 4
  %94 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %filler_start115 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %94, i32 0, i32 8
  %95 = load i32, i32* %filler_start115, align 4
  %sub116 = sub nsw i32 %93, %95
  %idxprom117 = sext i32 %sub116 to i64
  %96 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  %prob118 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %96, i32 0, i32 1
  %97 = load i32*, i32** %prob118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %97, i64 %idxprom117
  store i32 %92, i32* %arrayidx119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.109, %for.body.104
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %98 = load i32, i32* %w, align 4
  %inc122 = add nsw i32 %98, 1
  store i32 %inc122, i32* %w, align 4
  br label %for.cond.100

for.end.123:                                      ; preds = %for.cond.100
  %99 = load %struct.fillpen_t*, %struct.fillpen_t** %_fillpen, align 8
  store %struct.fillpen_t* %99, %struct.fillpen_t** %retval
  br label %return

return:                                           ; preds = %for.end.123, %if.then.46
  %100 = load %struct.fillpen_t*, %struct.fillpen_t** %retval
  ret %struct.fillpen_t* %100
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i32 @logs3(double) #1

declare i32 @dict_wordid(%struct.dict_t*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @fillpen(%struct.fillpen_t* %f, i32 %w) #0 {
entry:
  %f.addr = alloca %struct.fillpen_t*, align 8
  %w.addr = alloca i32, align 4
  store %struct.fillpen_t* %f, %struct.fillpen_t** %f.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %1 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %dict = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %1, i32 0, i32 0
  %2 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %filler_start = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 8
  %3 = load i32, i32* %filler_start, align 4
  %sub = sub nsw i32 %0, %3
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %prob = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %4, i32 0, i32 1
  %5 = load i32*, i32** %prob, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @fillpen_free(%struct.fillpen_t* %f) #0 {
entry:
  %f.addr = alloca %struct.fillpen_t*, align 8
  store %struct.fillpen_t* %f, %struct.fillpen_t** %f.addr, align 8
  %0 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %tobool = icmp ne %struct.fillpen_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %prob = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %1, i32 0, i32 1
  %2 = load i32*, i32** %prob, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %prob3 = getelementptr inbounds %struct.fillpen_t, %struct.fillpen_t* %3, i32 0, i32 1
  %4 = load i32*, i32** %prob3, align 8
  %5 = bitcast i32* %4 to i8*
  call void @ckd_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.fillpen_t*, %struct.fillpen_t** %f.addr, align 8
  %7 = bitcast %struct.fillpen_t* %6 to i8*
  call void @ckd_free(i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare void @ckd_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
