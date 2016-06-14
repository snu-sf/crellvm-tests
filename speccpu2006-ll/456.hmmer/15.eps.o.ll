; ModuleID = 'eps.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"No EPS fmt if alignment is >50 columns\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Alignment too wide to write in EPS\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Too many seqs to write in EPS\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%%%%Pages: 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"/%s findfont\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%d scalefont\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"setfont\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"newpath\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%d %d moveto\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"(%c) show\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @EPSWriteSmallMSA(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %namewidth = alloca i32, align 4
  %fontwidth = alloca i32, align 4
  %hspace = alloca i32, align 4
  %vspace = alloca i32, align 4
  %font = alloca i8*, align 8
  %fontsize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 8, i32* %fontwidth, align 4
  store i32 9, i32* %hspace, align 4
  store i32 15, i32* %vspace, align 4
  %call = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -1)
  store i8* %call, i8** %font, align 8
  store i32 12, i32* %fontsize, align 4
  store i32 0, i32* %namewidth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 1
  %5 = load i8**, i8*** %sqname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call1 = call i64 @strlen(i8* %6) #4
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %7 = load i32, i32* %namewidth, align 4
  %cmp2 = icmp sgt i32 %conv, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %len, align 4
  store i32 %8, i32* %namewidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %namewidth, align 4
  %add = add nsw i32 %10, 1
  store i32 %add, i32* %namewidth, align 4
  %11 = load i32, i32* %fontwidth, align 4
  %12 = load i32, i32* %namewidth, align 4
  %mul = mul nsw i32 %12, %11
  store i32 %mul, i32* %namewidth, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 3
  %14 = load i32, i32* %alen, align 4
  %cmp4 = icmp sgt i32 %14, 50
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.end
  %15 = load i32, i32* %namewidth, align 4
  %16 = load i32, i32* %hspace, align 4
  %17 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %17, i32 0, i32 3
  %18 = load i32, i32* %alen8, align 4
  %mul9 = mul nsw i32 %16, %18
  %add10 = add nsw i32 %15, %mul9
  store i32 %add10, i32* %width, align 4
  %19 = load i32, i32* %width, align 4
  %cmp11 = icmp sgt i32 %19, 612
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.7
  %20 = load i32, i32* %vspace, align 4
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq15 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 4
  %22 = load i32, i32* %nseq15, align 4
  %mul16 = mul nsw i32 %20, %22
  store i32 %mul16, i32* %height, align 4
  %23 = load i32, i32* %height, align 4
  %cmp17 = icmp sgt i32 %23, 792
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 %26, i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %31 = load i8*, i8** %font, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load i32, i32* %fontsize, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.58, %if.end.20
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq30 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 4
  %38 = load i32, i32* %nseq30, align 4
  %cmp31 = icmp slt i32 %36, %38
  br i1 %cmp31, label %for.body.33, label %for.end.60

for.body.33:                                      ; preds = %for.cond.29
  %39 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %39, i32 0, i32 4
  %40 = load i32, i32* %nseq34, align 4
  %41 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %40, %41
  %sub35 = sub nsw i32 %sub, 1
  %42 = load i32, i32* %vspace, align 4
  %mul36 = mul nsw i32 %sub35, %42
  store i32 %mul36, i32* %ypos, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load i32, i32* %ypos, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %46 to i64
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 1
  %48 = load i8**, i8*** %sqname39, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %48, i64 %idxprom38
  %49 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %49)
  %50 = load i32, i32* %namewidth, align 4
  store i32 %50, i32* %xpos, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.55, %for.body.33
  %51 = load i32, i32* %j, align 4
  %52 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen43 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %52, i32 0, i32 3
  %53 = load i32, i32* %alen43, align 4
  %cmp44 = icmp slt i32 %51, %53
  br i1 %cmp44, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.42
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %55 = load i32, i32* %xpos, align 4
  %56 = load i32, i32* %ypos, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %55, i32 %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %58 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %59 to i64
  %60 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %60, i32 0, i32 0
  %61 = load i8**, i8*** %aseq, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %61, i64 %idxprom49
  %62 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %62, i64 %idxprom48
  %63 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %63 to i32
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 %conv52)
  %64 = load i32, i32* %hspace, align 4
  %65 = load i32, i32* %xpos, align 4
  %add54 = add nsw i32 %65, %64
  store i32 %add54, i32* %xpos, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.46
  %66 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %66, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.42

for.end.57:                                       ; preds = %for.cond.42
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %67 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %67, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.29

for.end.60:                                       ; preds = %for.cond.29
  %68 = load i8*, i8** %font, align 8
  call void @free(i8* %68) #5
  ret void
}

declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Die(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
