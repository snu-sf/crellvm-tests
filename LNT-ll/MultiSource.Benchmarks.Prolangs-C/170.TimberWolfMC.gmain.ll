; ModuleID = './MultiSource.Benchmarks.Prolangs-C/170.TimberWolfMC.gmain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }
%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }

@.str = private unnamed_addr constant [9 x i8] c"%s.debug\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpdebug = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.geo\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error: file: %s not present\0A\00", align 1
@Vptrs = external global %struct.dlink1**, align 8
@Hptrs = external global %struct.dlink1**, align 8
@Vroot = external global %struct.tnode*, align 8
@Hroot = external global %struct.tnode*, align 8
@rectArray = external global %struct.rect*, align 8
@HRlist = external global %struct.dlink2*, align 8
@VRlist = external global %struct.dlink2*, align 8
@LEptrs = external global %struct.dlink2**, align 8
@BEptrs = external global %struct.dlink2**, align 8
@LEroot = external global %struct.tnode*, align 8
@BEroot = external global %struct.tnode*, align 8
@Hlist = external global %struct.dlink1*, align 8
@Vlist = external global %struct.dlink1*, align 8
@VDptrs = external global %struct.dlink1**, align 8
@HRptrs = external global %struct.dlink1**, align 8
@VDroot = external global %struct.tnode*, align 8
@HRroot = external global %struct.tnode*, align 8
@hFixedList = external global %struct.dlink1*, align 8
@vFixedList = external global %struct.dlink1*, align 8
@numberCells = external global i32, align 4
@xNodules = external global %struct.nodbox*, align 8
@yNodules = external global %struct.nodbox*, align 8

; Function Attrs: nounwind uwtable
define void @gmain() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %tnode = alloca %struct.tnode*, align 8
  %filename = alloca [1024 x i8], align 16
  %dummy1 = alloca i32, align 4
  %dummy2 = alloca i32, align 4
  %i = alloca i32, align 4
  %fptr = alloca %struct.flare*, align 8
  %f2ptr = alloca %struct.flare*, align 8
  %hrptr = alloca %struct.dlink2*, align 8
  %hr2ptr = alloca %struct.dlink2*, align 8
  %hptr = alloca %struct.dlink1*, align 8
  %h2ptr = alloca %struct.dlink1*, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** @fpdebug, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %1 = load i8*, i8** @cktName, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %1) #4
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call8 = call %struct._IO_FILE* @fopen(i8* %arraydecay7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fp, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay11)
  call void @exit(i32 0) #5
  unreachable

if.end.13:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @readgeo(%struct._IO_FILE* %3)
  call void @makelink()
  call void @hprobes()
  call void @vprobes()
  %4 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %5 = bitcast %struct.dlink1** %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %7 = bitcast %struct.dlink1** %6 to i8*
  call void @free(i8* %7) #4
  %8 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %cmp14 = icmp ne %struct.tnode* %8, null
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  br label %for.cond

for.cond:                                         ; preds = %if.end.18, %if.then.15
  call void @tpop(%struct.tnode** @Vroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %9 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp16 = icmp eq %struct.tnode* %9, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.cond
  br label %for.end

if.end.18:                                        ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %if.then.17
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.end.13
  %10 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %cmp20 = icmp ne %struct.tnode* %10, null
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.19
  br label %for.cond.22

for.cond.22:                                      ; preds = %if.end.25, %if.then.21
  call void @tpop(%struct.tnode** @Hroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %11 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp23 = icmp eq %struct.tnode* %11, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.cond.22
  br label %for.end.26

if.end.25:                                        ; preds = %for.cond.22
  br label %for.cond.22

for.end.26:                                       ; preds = %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %if.end.19
  call void @fulllink()
  call void @findnodes()
  call void @changraph()
  call void @xgraph()
  call void @ygraph()
  call void @reduceg()
  call void @printgph()
  call void @gentwf()
  %12 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %13 = bitcast %struct.rect* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %14, %struct.dlink2** %hrptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.27
  %15 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %cmp28 = icmp ne %struct.dlink2* %15, null
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %16, i32 0, i32 2
  %17 = load %struct.dlink2*, %struct.dlink2** %next, align 8
  store %struct.dlink2* %17, %struct.dlink2** %hr2ptr, align 8
  %18 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %19 = bitcast %struct.dlink2* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load %struct.dlink2*, %struct.dlink2** %hr2ptr, align 8
  store %struct.dlink2* %20, %struct.dlink2** %hrptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %21, %struct.dlink2** %hrptr, align 8
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.31, %while.end
  %22 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %cmp30 = icmp ne %struct.dlink2* %22, null
  br i1 %cmp30, label %while.body.31, label %while.end.33

while.body.31:                                    ; preds = %while.cond.29
  %23 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %next32 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %23, i32 0, i32 2
  %24 = load %struct.dlink2*, %struct.dlink2** %next32, align 8
  store %struct.dlink2* %24, %struct.dlink2** %hr2ptr, align 8
  %25 = load %struct.dlink2*, %struct.dlink2** %hrptr, align 8
  %26 = bitcast %struct.dlink2* %25 to i8*
  call void @free(i8* %26) #4
  %27 = load %struct.dlink2*, %struct.dlink2** %hr2ptr, align 8
  store %struct.dlink2* %27, %struct.dlink2** %hrptr, align 8
  br label %while.cond.29

while.end.33:                                     ; preds = %while.cond.29
  %28 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %29 = bitcast %struct.dlink2** %28 to i8*
  call void @free(i8* %29) #4
  %30 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %31 = bitcast %struct.dlink2** %30 to i8*
  call void @free(i8* %31) #4
  %32 = load %struct.tnode*, %struct.tnode** @LEroot, align 8
  %cmp34 = icmp ne %struct.tnode* %32, null
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %while.end.33
  br label %for.cond.36

for.cond.36:                                      ; preds = %if.end.39, %if.then.35
  call void @tpop(%struct.tnode** @LEroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %33 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp37 = icmp eq %struct.tnode* %33, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.cond.36
  br label %for.end.40

if.end.39:                                        ; preds = %for.cond.36
  br label %for.cond.36

for.end.40:                                       ; preds = %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %while.end.33
  %34 = load %struct.tnode*, %struct.tnode** @BEroot, align 8
  %cmp42 = icmp ne %struct.tnode* %34, null
  br i1 %cmp42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %if.end.41
  br label %for.cond.44

for.cond.44:                                      ; preds = %if.end.47, %if.then.43
  call void @tpop(%struct.tnode** @BEroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %35 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp45 = icmp eq %struct.tnode* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.cond.44
  br label %for.end.48

if.end.47:                                        ; preds = %for.cond.44
  br label %for.cond.44

for.end.48:                                       ; preds = %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %if.end.41
  %36 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  store %struct.dlink1* %36, %struct.dlink1** %hptr, align 8
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.52, %if.end.49
  %37 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp51 = icmp ne %struct.dlink1* %37, null
  br i1 %cmp51, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.50
  %38 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next53 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %38, i32 0, i32 2
  %39 = load %struct.dlink1*, %struct.dlink1** %next53, align 8
  store %struct.dlink1* %39, %struct.dlink1** %h2ptr, align 8
  %40 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %41 = bitcast %struct.dlink1* %40 to i8*
  call void @free(i8* %41) #4
  %42 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  store %struct.dlink1* %42, %struct.dlink1** %hptr, align 8
  br label %while.cond.50

while.end.54:                                     ; preds = %while.cond.50
  %43 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  store %struct.dlink1* %43, %struct.dlink1** %hptr, align 8
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.57, %while.end.54
  %44 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp56 = icmp ne %struct.dlink1* %44, null
  br i1 %cmp56, label %while.body.57, label %while.end.59

while.body.57:                                    ; preds = %while.cond.55
  %45 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next58 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %45, i32 0, i32 2
  %46 = load %struct.dlink1*, %struct.dlink1** %next58, align 8
  store %struct.dlink1* %46, %struct.dlink1** %h2ptr, align 8
  %47 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %48 = bitcast %struct.dlink1* %47 to i8*
  call void @free(i8* %48) #4
  %49 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  store %struct.dlink1* %49, %struct.dlink1** %hptr, align 8
  br label %while.cond.55

while.end.59:                                     ; preds = %while.cond.55
  %50 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %51 = bitcast %struct.dlink1** %50 to i8*
  call void @free(i8* %51) #4
  %52 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %53 = bitcast %struct.dlink1** %52 to i8*
  call void @free(i8* %53) #4
  %54 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %cmp60 = icmp ne %struct.tnode* %54, null
  br i1 %cmp60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %while.end.59
  br label %for.cond.62

for.cond.62:                                      ; preds = %if.end.65, %if.then.61
  call void @tpop(%struct.tnode** @Vroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %55 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp63 = icmp eq %struct.tnode* %55, null
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.cond.62
  br label %for.end.66

if.end.65:                                        ; preds = %for.cond.62
  br label %for.cond.62

for.end.66:                                       ; preds = %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %while.end.59
  %56 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %cmp68 = icmp ne %struct.tnode* %56, null
  br i1 %cmp68, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %if.end.67
  br label %for.cond.70

for.cond.70:                                      ; preds = %if.end.73, %if.then.69
  call void @tpop(%struct.tnode** @Hroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %57 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp71 = icmp eq %struct.tnode* %57, null
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.cond.70
  br label %for.end.74

if.end.73:                                        ; preds = %for.cond.70
  br label %for.cond.70

for.end.74:                                       ; preds = %if.then.72
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %if.end.67
  %58 = load %struct.dlink1**, %struct.dlink1*** @VDptrs, align 8
  %59 = bitcast %struct.dlink1** %58 to i8*
  call void @free(i8* %59) #4
  %60 = load %struct.dlink1**, %struct.dlink1*** @HRptrs, align 8
  %61 = bitcast %struct.dlink1** %60 to i8*
  call void @free(i8* %61) #4
  %62 = load %struct.tnode*, %struct.tnode** @VDroot, align 8
  %cmp76 = icmp ne %struct.tnode* %62, null
  br i1 %cmp76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.end.75
  br label %for.cond.78

for.cond.78:                                      ; preds = %if.end.81, %if.then.77
  call void @tpop(%struct.tnode** @VDroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %63 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp79 = icmp eq %struct.tnode* %63, null
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.cond.78
  br label %for.end.82

if.end.81:                                        ; preds = %for.cond.78
  br label %for.cond.78

for.end.82:                                       ; preds = %if.then.80
  br label %if.end.83

if.end.83:                                        ; preds = %for.end.82, %if.end.75
  %64 = load %struct.tnode*, %struct.tnode** @HRroot, align 8
  %cmp84 = icmp ne %struct.tnode* %64, null
  br i1 %cmp84, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %if.end.83
  br label %for.cond.86

for.cond.86:                                      ; preds = %if.end.89, %if.then.85
  call void @tpop(%struct.tnode** @HRroot, %struct.tnode** %tnode, i32* %dummy1, i32* %dummy2)
  %65 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp87 = icmp eq %struct.tnode* %65, null
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.cond.86
  br label %for.end.90

if.end.89:                                        ; preds = %for.cond.86
  br label %for.cond.86

for.end.90:                                       ; preds = %if.then.88
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.end.83
  %66 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %66, %struct.dlink1** %hptr, align 8
  br label %while.cond.92

while.cond.92:                                    ; preds = %while.body.94, %if.end.91
  %67 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp93 = icmp ne %struct.dlink1* %67, null
  br i1 %cmp93, label %while.body.94, label %while.end.96

while.body.94:                                    ; preds = %while.cond.92
  %68 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next95 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %68, i32 0, i32 2
  %69 = load %struct.dlink1*, %struct.dlink1** %next95, align 8
  store %struct.dlink1* %69, %struct.dlink1** %h2ptr, align 8
  %70 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %71 = bitcast %struct.dlink1* %70 to i8*
  call void @free(i8* %71) #4
  %72 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  store %struct.dlink1* %72, %struct.dlink1** %hptr, align 8
  br label %while.cond.92

while.end.96:                                     ; preds = %while.cond.92
  %73 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %73, %struct.dlink1** %hptr, align 8
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.99, %while.end.96
  %74 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp98 = icmp ne %struct.dlink1* %74, null
  br i1 %cmp98, label %while.body.99, label %while.end.101

while.body.99:                                    ; preds = %while.cond.97
  %75 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next100 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %75, i32 0, i32 2
  %76 = load %struct.dlink1*, %struct.dlink1** %next100, align 8
  store %struct.dlink1* %76, %struct.dlink1** %h2ptr, align 8
  %77 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %78 = bitcast %struct.dlink1* %77 to i8*
  call void @free(i8* %78) #4
  %79 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  store %struct.dlink1* %79, %struct.dlink1** %hptr, align 8
  br label %while.cond.97

while.end.101:                                    ; preds = %while.cond.97
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc, %while.end.101
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* @numberCells, align 4
  %add = add nsw i32 %81, 1
  %cmp103 = icmp sle i32 %80, %add
  br i1 %cmp103, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond.102
  %82 = load i32, i32* %i, align 4
  %idxprom = sext i32 %82 to i64
  %83 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx = getelementptr inbounds %struct.nodbox, %struct.nodbox* %83, i64 %idxprom
  %outList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx, i32 0, i32 1
  %84 = load %struct.flare*, %struct.flare** %outList, align 8
  store %struct.flare* %84, %struct.flare** %fptr, align 8
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.106, %for.body
  %85 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp105 = icmp ne %struct.flare* %85, null
  br i1 %cmp105, label %while.body.106, label %while.end.108

while.body.106:                                   ; preds = %while.cond.104
  %86 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex = getelementptr inbounds %struct.flare, %struct.flare* %86, i32 0, i32 1
  %87 = load i32*, i32** %eindex, align 8
  %88 = bitcast i32* %87 to i8*
  call void @free(i8* %88) #4
  %89 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next107 = getelementptr inbounds %struct.flare, %struct.flare* %89, i32 0, i32 2
  %90 = load %struct.flare*, %struct.flare** %next107, align 8
  store %struct.flare* %90, %struct.flare** %f2ptr, align 8
  %91 = load %struct.flare*, %struct.flare** %fptr, align 8
  %92 = bitcast %struct.flare* %91 to i8*
  call void @free(i8* %92) #4
  %93 = load %struct.flare*, %struct.flare** %f2ptr, align 8
  store %struct.flare* %93, %struct.flare** %fptr, align 8
  br label %while.cond.104

while.end.108:                                    ; preds = %while.cond.104
  %94 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %94 to i64
  %95 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx110 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %95, i64 %idxprom109
  %inList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx110, i32 0, i32 0
  %96 = load %struct.flare*, %struct.flare** %inList, align 8
  store %struct.flare* %96, %struct.flare** %fptr, align 8
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.113, %while.end.108
  %97 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp112 = icmp ne %struct.flare* %97, null
  br i1 %cmp112, label %while.body.113, label %while.end.116

while.body.113:                                   ; preds = %while.cond.111
  %98 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex114 = getelementptr inbounds %struct.flare, %struct.flare* %98, i32 0, i32 1
  %99 = load i32*, i32** %eindex114, align 8
  %100 = bitcast i32* %99 to i8*
  call void @free(i8* %100) #4
  %101 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next115 = getelementptr inbounds %struct.flare, %struct.flare* %101, i32 0, i32 2
  %102 = load %struct.flare*, %struct.flare** %next115, align 8
  store %struct.flare* %102, %struct.flare** %f2ptr, align 8
  %103 = load %struct.flare*, %struct.flare** %fptr, align 8
  %104 = bitcast %struct.flare* %103 to i8*
  call void @free(i8* %104) #4
  %105 = load %struct.flare*, %struct.flare** %f2ptr, align 8
  store %struct.flare* %105, %struct.flare** %fptr, align 8
  br label %while.cond.111

while.end.116:                                    ; preds = %while.cond.111
  %106 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %106 to i64
  %107 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx118 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %107, i64 %idxprom117
  %outList119 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx118, i32 0, i32 1
  %108 = load %struct.flare*, %struct.flare** %outList119, align 8
  store %struct.flare* %108, %struct.flare** %fptr, align 8
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.122, %while.end.116
  %109 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp121 = icmp ne %struct.flare* %109, null
  br i1 %cmp121, label %while.body.122, label %while.end.125

while.body.122:                                   ; preds = %while.cond.120
  %110 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex123 = getelementptr inbounds %struct.flare, %struct.flare* %110, i32 0, i32 1
  %111 = load i32*, i32** %eindex123, align 8
  %112 = bitcast i32* %111 to i8*
  call void @free(i8* %112) #4
  %113 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next124 = getelementptr inbounds %struct.flare, %struct.flare* %113, i32 0, i32 2
  %114 = load %struct.flare*, %struct.flare** %next124, align 8
  store %struct.flare* %114, %struct.flare** %f2ptr, align 8
  %115 = load %struct.flare*, %struct.flare** %fptr, align 8
  %116 = bitcast %struct.flare* %115 to i8*
  call void @free(i8* %116) #4
  %117 = load %struct.flare*, %struct.flare** %f2ptr, align 8
  store %struct.flare* %117, %struct.flare** %fptr, align 8
  br label %while.cond.120

while.end.125:                                    ; preds = %while.cond.120
  %118 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %118 to i64
  %119 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx127 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %119, i64 %idxprom126
  %inList128 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx127, i32 0, i32 0
  %120 = load %struct.flare*, %struct.flare** %inList128, align 8
  store %struct.flare* %120, %struct.flare** %fptr, align 8
  br label %while.cond.129

while.cond.129:                                   ; preds = %while.body.131, %while.end.125
  %121 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp130 = icmp ne %struct.flare* %121, null
  br i1 %cmp130, label %while.body.131, label %while.end.134

while.body.131:                                   ; preds = %while.cond.129
  %122 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex132 = getelementptr inbounds %struct.flare, %struct.flare* %122, i32 0, i32 1
  %123 = load i32*, i32** %eindex132, align 8
  %124 = bitcast i32* %123 to i8*
  call void @free(i8* %124) #4
  %125 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next133 = getelementptr inbounds %struct.flare, %struct.flare* %125, i32 0, i32 2
  %126 = load %struct.flare*, %struct.flare** %next133, align 8
  store %struct.flare* %126, %struct.flare** %f2ptr, align 8
  %127 = load %struct.flare*, %struct.flare** %fptr, align 8
  %128 = bitcast %struct.flare* %127 to i8*
  call void @free(i8* %128) #4
  %129 = load %struct.flare*, %struct.flare** %f2ptr, align 8
  store %struct.flare* %129, %struct.flare** %fptr, align 8
  br label %while.cond.129

while.end.134:                                    ; preds = %while.cond.129
  br label %for.inc

for.inc:                                          ; preds = %while.end.134
  %130 = load i32, i32* %i, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.102

for.end.135:                                      ; preds = %for.cond.102
  %131 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %132 = bitcast %struct.nodbox* %131 to i8*
  call void @free(i8* %132) #4
  %133 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %134 = bitcast %struct.nodbox* %133 to i8*
  call void @free(i8* %134) #4
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %call136 = call i32 @fclose(%struct._IO_FILE* %135)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call137 = call i32 @fclose(%struct._IO_FILE* %136)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @readgeo(%struct._IO_FILE*) #2

declare void @makelink() #2

declare void @hprobes() #2

declare void @vprobes() #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

declare void @fulllink() #2

declare void @findnodes() #2

declare void @changraph() #2

declare void @xgraph() #2

declare void @ygraph() #2

declare void @reduceg() #2

declare void @printgph() #2

declare void @gentwf() #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
