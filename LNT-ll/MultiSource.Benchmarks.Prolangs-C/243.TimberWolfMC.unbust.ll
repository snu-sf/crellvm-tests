; ModuleID = './MultiSource.Benchmarks.Prolangs-C/243.TimberWolfMC.unbust.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bustbox = type { i32, i32 }
%struct.Rangle = type { i32, i32, i32, i32 }

@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"Serious error: could not advance upward \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"from first vertex\0A\00", align 1
@PtsArray = external global %struct.bustbox*, align 8
@rectang = external global %struct.Rangle*, align 8
@PtsOut = external global %struct.bustbox*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Fatal error in unbust.c\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Two points in outline not rectilinear \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"and this constitutes death\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PtsOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"x:%d  y:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PtsArray:\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Rectangles:\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"l:%d  r:%d  b:%d  t:%d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @unbust() #0 {
entry:
  %P = alloca i32, align 4
  %status = alloca i32, align 4
  %P1 = alloca i32, align 4
  call void @coincide()
  %call = call i32 @firstP()
  store i32 %call, i32* %P, align 4
  %0 = load i32, i32* %P, align 4
  %call1 = call i32 @u(i32 %0)
  store i32 %call1, i32* %P1, align 4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #3
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %P, align 4
  call void @outputP(i32 %3)
  %4 = load i32, i32* %P1, align 4
  store i32 %4, i32* %P, align 4
  store i32 1, i32* %status, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %5 = load i32, i32* %status, align 4
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.62
    i32 4, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %for.cond
  %6 = load i32, i32* %P, align 4
  %call4 = call i32 @l(i32 %6)
  store i32 %call4, i32* %P1, align 4
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.24

if.then.6:                                        ; preds = %sw.bb
  %7 = load i32, i32* %P, align 4
  %call7 = call i32 @u(i32 %7)
  store i32 %call7, i32* %P1, align 4
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.then.6
  %8 = load i32, i32* %P, align 4
  %call10 = call i32 @r(i32 %8)
  store i32 %call10, i32* %P1, align 4
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %9 = load i32, i32* %P, align 4
  call void @outputP(i32 %9)
  call void @condense()
  br label %return

if.else:                                          ; preds = %if.then.9
  %10 = load i32, i32* %P, align 4
  call void @outputP(i32 %10)
  %11 = load i32, i32* %P, align 4
  call void @elim(i32 %11)
  %12 = load i32, i32* %P1, align 4
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %xc, align 4
  %cmp13 = icmp sle i32 %12, %14
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %15 = load i32, i32* %P1, align 4
  store i32 %15, i32* %P, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else
  store i32 3, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.23

if.else.17:                                       ; preds = %if.then.6
  %16 = load i32, i32* %P, align 4
  call void @outputP(i32 %16)
  %17 = load i32, i32* %P, align 4
  call void @elim(i32 %17)
  %18 = load i32, i32* %P1, align 4
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 0
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %20 = load i32, i32* %xc19, align 4
  %cmp20 = icmp sle i32 %18, %20
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.17
  %21 = load i32, i32* %P1, align 4
  store i32 %21, i32* %P, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.17
  store i32 1, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  br label %if.end.30

if.else.24:                                       ; preds = %sw.bb
  %22 = load i32, i32* %P, align 4
  call void @outputP(i32 %22)
  %23 = load i32, i32* %P, align 4
  call void @elim(i32 %23)
  %24 = load i32, i32* %P1, align 4
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 0
  %xc26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx25, i32 0, i32 0
  %26 = load i32, i32* %xc26, align 4
  %cmp27 = icmp sle i32 %24, %26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  %27 = load i32, i32* %P1, align 4
  store i32 %27, i32* %P, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.24
  store i32 2, i32* %status, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.23
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.cond
  %28 = load i32, i32* %P, align 4
  %call32 = call i32 @b(i32 %28)
  store i32 %call32, i32* %P1, align 4
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.55

if.then.34:                                       ; preds = %sw.bb.31
  %29 = load i32, i32* %P, align 4
  %call35 = call i32 @l(i32 %29)
  store i32 %call35, i32* %P1, align 4
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.48

if.then.37:                                       ; preds = %if.then.34
  %30 = load i32, i32* %P, align 4
  %call38 = call i32 @u(i32 %30)
  store i32 %call38, i32* %P1, align 4
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.37
  %31 = load i32, i32* %P, align 4
  call void @outputP(i32 %31)
  call void @condense()
  br label %return

if.else.41:                                       ; preds = %if.then.37
  %32 = load i32, i32* %P, align 4
  call void @outputP(i32 %32)
  %33 = load i32, i32* %P, align 4
  call void @elim(i32 %33)
  %34 = load i32, i32* %P1, align 4
  %35 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 0
  %xc43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx42, i32 0, i32 0
  %36 = load i32, i32* %xc43, align 4
  %cmp44 = icmp sle i32 %34, %36
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else.41
  %37 = load i32, i32* %P1, align 4
  store i32 %37, i32* %P, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.else.41
  store i32 1, i32* %status, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %if.end.54

if.else.48:                                       ; preds = %if.then.34
  %38 = load i32, i32* %P, align 4
  call void @outputP(i32 %38)
  %39 = load i32, i32* %P, align 4
  call void @elim(i32 %39)
  %40 = load i32, i32* %P1, align 4
  %41 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 0
  %xc50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx49, i32 0, i32 0
  %42 = load i32, i32* %xc50, align 4
  %cmp51 = icmp sle i32 %40, %42
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.48
  %43 = load i32, i32* %P1, align 4
  store i32 %43, i32* %P, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.48
  store i32 2, i32* %status, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.47
  br label %if.end.61

if.else.55:                                       ; preds = %sw.bb.31
  %44 = load i32, i32* %P, align 4
  call void @outputP(i32 %44)
  %45 = load i32, i32* %P, align 4
  call void @elim(i32 %45)
  %46 = load i32, i32* %P1, align 4
  %47 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %47, i64 0
  %xc57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx56, i32 0, i32 0
  %48 = load i32, i32* %xc57, align 4
  %cmp58 = icmp sle i32 %46, %48
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.55
  %49 = load i32, i32* %P1, align 4
  store i32 %49, i32* %P, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.else.55
  store i32 4, i32* %status, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.54
  br label %sw.epilog

sw.bb.62:                                         ; preds = %for.cond
  %50 = load i32, i32* %P, align 4
  %call63 = call i32 @u(i32 %50)
  store i32 %call63, i32* %P1, align 4
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.86

if.then.65:                                       ; preds = %sw.bb.62
  %51 = load i32, i32* %P, align 4
  %call66 = call i32 @r(i32 %51)
  store i32 %call66, i32* %P1, align 4
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.79

if.then.68:                                       ; preds = %if.then.65
  %52 = load i32, i32* %P, align 4
  %call69 = call i32 @b(i32 %52)
  store i32 %call69, i32* %P1, align 4
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.then.68
  %53 = load i32, i32* %P, align 4
  call void @outputP(i32 %53)
  call void @condense()
  br label %return

if.else.72:                                       ; preds = %if.then.68
  %54 = load i32, i32* %P, align 4
  call void @outputP(i32 %54)
  %55 = load i32, i32* %P, align 4
  call void @elim(i32 %55)
  %56 = load i32, i32* %P1, align 4
  %57 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx73 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %57, i64 0
  %xc74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx73, i32 0, i32 0
  %58 = load i32, i32* %xc74, align 4
  %cmp75 = icmp sle i32 %56, %58
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else.72
  %59 = load i32, i32* %P1, align 4
  store i32 %59, i32* %P, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else.72
  store i32 4, i32* %status, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.85

if.else.79:                                       ; preds = %if.then.65
  %60 = load i32, i32* %P, align 4
  call void @outputP(i32 %60)
  %61 = load i32, i32* %P, align 4
  call void @elim(i32 %61)
  %62 = load i32, i32* %P1, align 4
  %63 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %63, i64 0
  %xc81 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx80, i32 0, i32 0
  %64 = load i32, i32* %xc81, align 4
  %cmp82 = icmp sle i32 %62, %64
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.79
  %65 = load i32, i32* %P1, align 4
  store i32 %65, i32* %P, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.79
  store i32 3, i32* %status, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.78
  br label %if.end.92

if.else.86:                                       ; preds = %sw.bb.62
  %66 = load i32, i32* %P, align 4
  call void @outputP(i32 %66)
  %67 = load i32, i32* %P, align 4
  call void @elim(i32 %67)
  %68 = load i32, i32* %P1, align 4
  %69 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx87 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %69, i64 0
  %xc88 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx87, i32 0, i32 0
  %70 = load i32, i32* %xc88, align 4
  %cmp89 = icmp sle i32 %68, %70
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.86
  %71 = load i32, i32* %P1, align 4
  store i32 %71, i32* %P, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.else.86
  store i32 1, i32* %status, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.85
  br label %sw.epilog

sw.bb.93:                                         ; preds = %for.cond
  %72 = load i32, i32* %P, align 4
  %call94 = call i32 @r(i32 %72)
  store i32 %call94, i32* %P1, align 4
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.117

if.then.96:                                       ; preds = %sw.bb.93
  %73 = load i32, i32* %P, align 4
  %call97 = call i32 @b(i32 %73)
  store i32 %call97, i32* %P1, align 4
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.110

if.then.99:                                       ; preds = %if.then.96
  %74 = load i32, i32* %P, align 4
  %call100 = call i32 @l(i32 %74)
  store i32 %call100, i32* %P1, align 4
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.then.99
  %75 = load i32, i32* %P, align 4
  call void @outputP(i32 %75)
  call void @condense()
  br label %return

if.else.103:                                      ; preds = %if.then.99
  %76 = load i32, i32* %P, align 4
  call void @outputP(i32 %76)
  %77 = load i32, i32* %P, align 4
  call void @elim(i32 %77)
  %78 = load i32, i32* %P1, align 4
  %79 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx104 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %79, i64 0
  %xc105 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx104, i32 0, i32 0
  %80 = load i32, i32* %xc105, align 4
  %cmp106 = icmp sle i32 %78, %80
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.else.103
  %81 = load i32, i32* %P1, align 4
  store i32 %81, i32* %P, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.else.103
  store i32 2, i32* %status, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108
  br label %if.end.116

if.else.110:                                      ; preds = %if.then.96
  %82 = load i32, i32* %P, align 4
  call void @outputP(i32 %82)
  %83 = load i32, i32* %P, align 4
  call void @elim(i32 %83)
  %84 = load i32, i32* %P1, align 4
  %85 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx111 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %85, i64 0
  %xc112 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx111, i32 0, i32 0
  %86 = load i32, i32* %xc112, align 4
  %cmp113 = icmp sle i32 %84, %86
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.else.110
  %87 = load i32, i32* %P1, align 4
  store i32 %87, i32* %P, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.else.110
  store i32 4, i32* %status, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.109
  br label %if.end.123

if.else.117:                                      ; preds = %sw.bb.93
  %88 = load i32, i32* %P, align 4
  call void @outputP(i32 %88)
  %89 = load i32, i32* %P, align 4
  call void @elim(i32 %89)
  %90 = load i32, i32* %P1, align 4
  %91 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx118 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %91, i64 0
  %xc119 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx118, i32 0, i32 0
  %92 = load i32, i32* %xc119, align 4
  %cmp120 = icmp sle i32 %90, %92
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.else.117
  %93 = load i32, i32* %P1, align 4
  store i32 %93, i32* %P, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.else.117
  store i32 3, i32* %status, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.116
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond, %if.end.123, %if.end.92, %if.end.61, %if.end.30
  br label %for.cond

return:                                           ; preds = %if.then.102, %if.then.71, %if.then.40, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @coincide() #0 {
entry:
  %i = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %5 = load i32, i32* %xc2, align 4
  store i32 %5, i32* %x0, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %idxprom3
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 1
  %8 = load i32, i32* %yc, align 4
  store i32 %8, i32* %y0, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0
  %xc7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx6, i32 0, i32 0
  %12 = load i32, i32* %xc7, align 4
  %cmp8 = icmp sle i32 %10, %12
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %13 = load i32, i32* %x0, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %idxprom10
  %xc12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx11, i32 0, i32 0
  %16 = load i32, i32* %xc12, align 4
  %cmp13 = icmp eq i32 %13, %16
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.9
  %17 = load i32, i32* %y0, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom14
  %yc16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx15, i32 0, i32 1
  %20 = load i32, i32* %yc16, align 4
  %cmp17 = icmp eq i32 %17, %20
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 0
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %22 = load i32, i32* %xc19, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %idxprom20
  %xc22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx21, i32 0, i32 0
  %24 = load i32, i32* %xc22, align 4
  %25 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %idxprom23
  %xc25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx24, i32 0, i32 0
  store i32 %24, i32* %xc25, align 4
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 0
  %xc27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx26, i32 0, i32 0
  %28 = load i32, i32* %xc27, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %xc27, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %idxprom28
  %yc30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx29, i32 0, i32 1
  %30 = load i32, i32* %yc30, align 4
  %31 = load i32, i32* %j, align 4
  %dec31 = add nsw i32 %31, -1
  store i32 %dec31, i32* %j, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %32, i64 %idxprom32
  %yc34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx33, i32 0, i32 1
  store i32 %30, i32* %yc34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %34 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %34, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @firstP() #0 {
entry:
  %k = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmin = alloca i32, align 4
  %P = alloca i32, align 4
  store i32 100000000, i32* %ymin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  %6 = load i32, i32* %ymin, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %idxprom3
  %yc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 1
  %9 = load i32, i32* %yc5, align 4
  store i32 %9, i32* %ymin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 100000000, i32* %xmin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.26, %for.end
  %11 = load i32, i32* %k, align 4
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 0
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  %13 = load i32, i32* %xc8, align 4
  %cmp9 = icmp sle i32 %11, %13
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.6
  %14 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %idxprom11
  %yc13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx12, i32 0, i32 1
  %16 = load i32, i32* %yc13, align 4
  %17 = load i32, i32* %ymin, align 4
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %for.body.10
  %18 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom16
  %xc18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx17, i32 0, i32 0
  %20 = load i32, i32* %xc18, align 4
  %21 = load i32, i32* %xmin, align 4
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.15
  %22 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %idxprom21
  %xc23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx22, i32 0, i32 0
  %24 = load i32, i32* %xc23, align 4
  store i32 %24, i32* %xmin, align 4
  %25 = load i32, i32* %k, align 4
  store i32 %25, i32* %P, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body.10
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %26 = load i32, i32* %k, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %k, align 4
  br label %for.cond.6

for.end.28:                                       ; preds = %for.cond.6
  %27 = load i32, i32* %P, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @u(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ptx = alloca i32, align 4
  %pty = alloca i32, align 4
  %small = alloca i32, align 4
  %smallP = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  store i32 100000000, i32* %small, align 4
  store i32 0, i32* %smallP, align 4
  %0 = load i32, i32* %Pt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  store i32 %2, i32* %ptx, align 4
  %3 = load i32, i32* %Pt.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  store i32 %5, i32* %pty, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %xc4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %xc4, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %Pt.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom6
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  %13 = load i32, i32* %xc8, align 4
  %14 = load i32, i32* %ptx, align 4
  %cmp9 = icmp ne i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc

if.end.11:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %idxprom12
  %yc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 1
  %17 = load i32, i32* %yc14, align 4
  %18 = load i32, i32* %pty, align 4
  %cmp15 = icmp sgt i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i64 %idxprom17
  %yc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 1
  %21 = load i32, i32* %yc19, align 4
  %22 = load i32, i32* %pty, align 4
  %sub = sub nsw i32 %21, %22
  %23 = load i32, i32* %small, align 4
  %cmp20 = icmp slt i32 %sub, %23
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.16
  %24 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 %idxprom22
  %yc24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx23, i32 0, i32 1
  %26 = load i32, i32* %yc24, align 4
  %27 = load i32, i32* %pty, align 4
  %sub25 = sub nsw i32 %26, %27
  store i32 %sub25, i32* %small, align 4
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %smallP, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.27, %if.then.10, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %smallP, align 4
  %cmp28 = icmp ne i32 %30, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.end
  %31 = load i32, i32* %Pt.addr, align 4
  %32 = load i32, i32* %smallP, align 4
  %call = call i32 @recCheck(i32 %31, i32 %32)
  %cmp30 = icmp eq i32 %call, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %smallP, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end
  %33 = load i32, i32* %smallP, align 4
  ret i32 %33
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @outputP(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  %0 = load i32, i32* %Pt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 0
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %4 = load i32, i32* %xc2, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %xc2, align 4
  %idxprom3 = sext i32 %inc to i64
  %5 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 %idxprom3
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  store i32 %2, i32* %xc5, align 4
  %6 = load i32, i32* %Pt.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %idxprom6
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 1
  %8 = load i32, i32* %yc, align 4
  %9 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 0
  %xc9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx8, i32 0, i32 0
  %10 = load i32, i32* %xc9, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %idxprom10
  %yc12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx11, i32 0, i32 1
  store i32 %8, i32* %yc12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @l(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ptx = alloca i32, align 4
  %pty = alloca i32, align 4
  %small = alloca i32, align 4
  %smallP = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  store i32 100000000, i32* %small, align 4
  store i32 0, i32* %smallP, align 4
  %0 = load i32, i32* %Pt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  store i32 %2, i32* %ptx, align 4
  %3 = load i32, i32* %Pt.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  store i32 %5, i32* %pty, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %xc4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %xc4, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %Pt.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom6
  %yc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 1
  %13 = load i32, i32* %yc8, align 4
  %14 = load i32, i32* %pty, align 4
  %cmp9 = icmp ne i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc

if.end.11:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %idxprom12
  %xc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 0
  %17 = load i32, i32* %xc14, align 4
  %18 = load i32, i32* %ptx, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %ptx, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 %idxprom17
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %22 = load i32, i32* %xc19, align 4
  %sub = sub nsw i32 %19, %22
  %23 = load i32, i32* %small, align 4
  %cmp20 = icmp slt i32 %sub, %23
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.16
  %24 = load i32, i32* %ptx, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %idxprom22
  %xc24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx23, i32 0, i32 0
  %27 = load i32, i32* %xc24, align 4
  %sub25 = sub nsw i32 %24, %27
  store i32 %sub25, i32* %small, align 4
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %smallP, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.27, %if.then.10, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %smallP, align 4
  %cmp28 = icmp ne i32 %30, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.end
  %31 = load i32, i32* %Pt.addr, align 4
  %32 = load i32, i32* %smallP, align 4
  %call = call i32 @recCheck(i32 %31, i32 %32)
  %cmp30 = icmp eq i32 %call, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %smallP, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end
  %33 = load i32, i32* %smallP, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @r(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ptx = alloca i32, align 4
  %pty = alloca i32, align 4
  %small = alloca i32, align 4
  %smallP = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  store i32 100000000, i32* %small, align 4
  store i32 0, i32* %smallP, align 4
  %0 = load i32, i32* %Pt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  store i32 %2, i32* %ptx, align 4
  %3 = load i32, i32* %Pt.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  store i32 %5, i32* %pty, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %xc4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %xc4, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %Pt.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom6
  %yc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 1
  %13 = load i32, i32* %yc8, align 4
  %14 = load i32, i32* %pty, align 4
  %cmp9 = icmp ne i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc

if.end.11:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %idxprom12
  %xc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 0
  %17 = load i32, i32* %xc14, align 4
  %18 = load i32, i32* %ptx, align 4
  %cmp15 = icmp sgt i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i64 %idxprom17
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %21 = load i32, i32* %xc19, align 4
  %22 = load i32, i32* %ptx, align 4
  %sub = sub nsw i32 %21, %22
  %23 = load i32, i32* %small, align 4
  %cmp20 = icmp slt i32 %sub, %23
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.16
  %24 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 %idxprom22
  %xc24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx23, i32 0, i32 0
  %26 = load i32, i32* %xc24, align 4
  %27 = load i32, i32* %ptx, align 4
  %sub25 = sub nsw i32 %26, %27
  store i32 %sub25, i32* %small, align 4
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %smallP, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.27, %if.then.10, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %smallP, align 4
  %cmp28 = icmp ne i32 %30, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.end
  %31 = load i32, i32* %Pt.addr, align 4
  %32 = load i32, i32* %smallP, align 4
  %call = call i32 @recCheck(i32 %31, i32 %32)
  %cmp30 = icmp eq i32 %call, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %smallP, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end
  %33 = load i32, i32* %smallP, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define void @condense() #0 {
entry:
  %P1x = alloca i32, align 4
  %P1y = alloca i32, align 4
  %P2x = alloca i32, align 4
  %P2y = alloca i32, align 4
  %P3x = alloca i32, align 4
  %P3y = alloca i32, align 4
  %j = alloca i32, align 4
  %P1 = alloca i32, align 4
  %P2 = alloca i32, align 4
  %P3 = alloca i32, align 4
  %0 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %0, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %xc, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  call void @dumpError()
  call void @exit(i32 0) #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %P1, align 4
  store i32 2, i32* %P2, align 4
  store i32 3, i32* %P3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %if.end
  %2 = load i32, i32* %P3, align 4
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 0
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %4 = load i32, i32* %xc2, align 4
  %cmp3 = icmp sle i32 %2, %4
  br i1 %cmp3, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %P1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %idxprom
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %xc5, align 4
  store i32 %7, i32* %P1x, align 4
  %8 = load i32, i32* %P1, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 %idxprom6
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 1
  %10 = load i32, i32* %yc, align 4
  store i32 %10, i32* %P1y, align 4
  %11 = load i32, i32* %P2, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom8
  %xc10 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx9, i32 0, i32 0
  %13 = load i32, i32* %xc10, align 4
  store i32 %13, i32* %P2x, align 4
  %14 = load i32, i32* %P2, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %idxprom11
  %yc13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx12, i32 0, i32 1
  %16 = load i32, i32* %yc13, align 4
  store i32 %16, i32* %P2y, align 4
  %17 = load i32, i32* %P3, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %idxprom14
  %xc16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx15, i32 0, i32 0
  %19 = load i32, i32* %xc16, align 4
  store i32 %19, i32* %P3x, align 4
  %20 = load i32, i32* %P3, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 %idxprom17
  %yc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 1
  %22 = load i32, i32* %yc19, align 4
  store i32 %22, i32* %P3y, align 4
  %23 = load i32, i32* %P1x, align 4
  %24 = load i32, i32* %P2x, align 4
  %cmp20 = icmp eq i32 %23, %24
  br i1 %cmp20, label %if.then.21, label %if.else.46

if.then.21:                                       ; preds = %for.body
  %25 = load i32, i32* %P3x, align 4
  %26 = load i32, i32* %P1x, align 4
  %cmp22 = icmp eq i32 %25, %26
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.21
  %27 = load i32, i32* %P3, align 4
  store i32 %27, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.23
  %28 = load i32, i32* %j, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0
  %xc26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx25, i32 0, i32 0
  %30 = load i32, i32* %xc26, align 4
  %cmp27 = icmp sle i32 %28, %30
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %32, i64 %idxprom29
  %xc31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx30, i32 0, i32 0
  %33 = load i32, i32* %xc31, align 4
  %34 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %34, 1
  %idxprom32 = sext i32 %sub to i64
  %35 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %idxprom32
  %xc34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx33, i32 0, i32 0
  store i32 %33, i32* %xc34, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %37, i64 %idxprom35
  %yc37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx36, i32 0, i32 1
  %38 = load i32, i32* %yc37, align 4
  %39 = load i32, i32* %j, align 4
  %sub38 = sub nsw i32 %39, 1
  %idxprom39 = sext i32 %sub38 to i64
  %40 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i64 %idxprom39
  %yc41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx40, i32 0, i32 1
  store i32 %38, i32* %yc41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %42 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %42, i64 0
  %xc43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx42, i32 0, i32 0
  %43 = load i32, i32* %xc43, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %xc43, align 4
  %44 = load i32, i32* %P3, align 4
  %dec44 = add nsw i32 %44, -1
  store i32 %dec44, i32* %P3, align 4
  store i32 %dec44, i32* %P2, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.then.21
  %45 = load i32, i32* %P2, align 4
  store i32 %45, i32* %P1, align 4
  %46 = load i32, i32* %P3, align 4
  store i32 %46, i32* %P2, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %for.end
  br label %if.end.83

if.else.46:                                       ; preds = %for.body
  %47 = load i32, i32* %P1y, align 4
  %48 = load i32, i32* %P2y, align 4
  %cmp47 = icmp eq i32 %47, %48
  br i1 %cmp47, label %if.then.48, label %if.else.79

if.then.48:                                       ; preds = %if.else.46
  %49 = load i32, i32* %P3y, align 4
  %50 = load i32, i32* %P1y, align 4
  %cmp49 = icmp eq i32 %49, %50
  br i1 %cmp49, label %if.then.50, label %if.else.77

if.then.50:                                       ; preds = %if.then.48
  %51 = load i32, i32* %P3, align 4
  store i32 %51, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.70, %if.then.50
  %52 = load i32, i32* %j, align 4
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx52 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 0
  %xc53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx52, i32 0, i32 0
  %54 = load i32, i32* %xc53, align 4
  %cmp54 = icmp sle i32 %52, %54
  br i1 %cmp54, label %for.body.55, label %for.end.72

for.body.55:                                      ; preds = %for.cond.51
  %55 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %55 to i64
  %56 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %56, i64 %idxprom56
  %xc58 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx57, i32 0, i32 0
  %57 = load i32, i32* %xc58, align 4
  %58 = load i32, i32* %j, align 4
  %sub59 = sub nsw i32 %58, 1
  %idxprom60 = sext i32 %sub59 to i64
  %59 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %idxprom60
  %xc62 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx61, i32 0, i32 0
  store i32 %57, i32* %xc62, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx64 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %61, i64 %idxprom63
  %yc65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx64, i32 0, i32 1
  %62 = load i32, i32* %yc65, align 4
  %63 = load i32, i32* %j, align 4
  %sub66 = sub nsw i32 %63, 1
  %idxprom67 = sext i32 %sub66 to i64
  %64 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i64 %idxprom67
  %yc69 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx68, i32 0, i32 1
  store i32 %62, i32* %yc69, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.55
  %65 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %65, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.51

for.end.72:                                       ; preds = %for.cond.51
  %66 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx73 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %66, i64 0
  %xc74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx73, i32 0, i32 0
  %67 = load i32, i32* %xc74, align 4
  %dec75 = add nsw i32 %67, -1
  store i32 %dec75, i32* %xc74, align 4
  %68 = load i32, i32* %P3, align 4
  %dec76 = add nsw i32 %68, -1
  store i32 %dec76, i32* %P3, align 4
  store i32 %dec76, i32* %P2, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %if.then.48
  %69 = load i32, i32* %P2, align 4
  store i32 %69, i32* %P1, align 4
  %70 = load i32, i32* %P3, align 4
  store i32 %70, i32* %P2, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %for.end.72
  br label %if.end.82

if.else.79:                                       ; preds = %if.else.46
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #3
  unreachable

if.end.82:                                        ; preds = %if.end.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.45
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %73 = load i32, i32* %P3, align 4
  %inc85 = add nsw i32 %73, 1
  store i32 %inc85, i32* %P3, align 4
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @elim(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  %0 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %0, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %xc, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %idxprom
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %3 = load i32, i32* %xc2, align 4
  %4 = load i32, i32* %Pt.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 %idxprom3
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  store i32 %3, i32* %xc5, align 4
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 0
  %xc7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx6, i32 0, i32 0
  %7 = load i32, i32* %xc7, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %xc7, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %idxprom8
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx9, i32 0, i32 1
  %9 = load i32, i32* %yc, align 4
  %10 = load i32, i32* %Pt.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %idxprom10
  %yc12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx11, i32 0, i32 1
  store i32 %9, i32* %yc12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @b(i32 %Pt) #0 {
entry:
  %Pt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ptx = alloca i32, align 4
  %pty = alloca i32, align 4
  %small = alloca i32, align 4
  %smallP = alloca i32, align 4
  store i32 %Pt, i32* %Pt.addr, align 4
  store i32 100000000, i32* %small, align 4
  store i32 0, i32* %smallP, align 4
  %0 = load i32, i32* %Pt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  store i32 %2, i32* %ptx, align 4
  %3 = load i32, i32* %Pt.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  store i32 %5, i32* %pty, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %xc4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %xc4, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %Pt.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %idxprom6
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  %13 = load i32, i32* %xc8, align 4
  %14 = load i32, i32* %ptx, align 4
  %cmp9 = icmp ne i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc

if.end.11:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %idxprom12
  %yc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 1
  %17 = load i32, i32* %yc14, align 4
  %18 = load i32, i32* %pty, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %pty, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 %idxprom17
  %yc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 1
  %22 = load i32, i32* %yc19, align 4
  %sub = sub nsw i32 %19, %22
  %23 = load i32, i32* %small, align 4
  %cmp20 = icmp slt i32 %sub, %23
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.16
  %24 = load i32, i32* %pty, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %idxprom22
  %yc24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx23, i32 0, i32 1
  %27 = load i32, i32* %yc24, align 4
  %sub25 = sub nsw i32 %24, %27
  store i32 %sub25, i32* %small, align 4
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %smallP, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.27, %if.then.10, %if.then
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %smallP, align 4
  %cmp28 = icmp ne i32 %30, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.end
  %31 = load i32, i32* %Pt.addr, align 4
  %32 = load i32, i32* %smallP, align 4
  %call = call i32 @recCheck(i32 %31, i32 %32)
  %cmp30 = icmp eq i32 %call, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %smallP, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end
  %33 = load i32, i32* %smallP, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define void @addPts(i32 %l, i32 %r, i32 %b, i32 %t) #0 {
entry:
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %xc, align 4
  %idxprom = sext i32 %inc to i64
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 %idxprom
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  store i32 %0, i32* %xc2, align 4
  %4 = load i32, i32* %b.addr, align 4
  %5 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 0
  %xc4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx3, i32 0, i32 0
  %6 = load i32, i32* %xc4, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %idxprom5
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx6, i32 0, i32 1
  store i32 %4, i32* %yc, align 4
  %8 = load i32, i32* %l.addr, align 4
  %9 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 0
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  %10 = load i32, i32* %xc8, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %xc8, align 4
  %idxprom10 = sext i32 %inc9 to i64
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %idxprom10
  %xc12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx11, i32 0, i32 0
  store i32 %8, i32* %xc12, align 4
  %12 = load i32, i32* %t.addr, align 4
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 0
  %xc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 0
  %14 = load i32, i32* %xc14, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %idxprom15
  %yc17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx16, i32 0, i32 1
  store i32 %12, i32* %yc17, align 4
  %16 = load i32, i32* %r.addr, align 4
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 0
  %xc19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx18, i32 0, i32 0
  %18 = load i32, i32* %xc19, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %xc19, align 4
  %idxprom21 = sext i32 %inc20 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom21
  %xc23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx22, i32 0, i32 0
  store i32 %16, i32* %xc23, align 4
  %20 = load i32, i32* %b.addr, align 4
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 0
  %xc25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx24, i32 0, i32 0
  %22 = load i32, i32* %xc25, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %idxprom26
  %yc28 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx27, i32 0, i32 1
  store i32 %20, i32* %yc28, align 4
  %24 = load i32, i32* %r.addr, align 4
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 0
  %xc30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx29, i32 0, i32 0
  %26 = load i32, i32* %xc30, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %xc30, align 4
  %idxprom32 = sext i32 %inc31 to i64
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %idxprom32
  %xc34 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx33, i32 0, i32 0
  store i32 %24, i32* %xc34, align 4
  %28 = load i32, i32* %t.addr, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx35 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0
  %xc36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx35, i32 0, i32 0
  %30 = load i32, i32* %xc36, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %31, i64 %idxprom37
  %yc39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx38, i32 0, i32 1
  store i32 %28, i32* %yc39, align 4
  %32 = load i32, i32* %l.addr, align 4
  %33 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx40 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %33, i64 0
  %rl = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx40, i32 0, i32 0
  %34 = load i32, i32* %rl, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %rl, align 4
  %idxprom42 = sext i32 %inc41 to i64
  %35 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx43 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %35, i64 %idxprom42
  %rl44 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx43, i32 0, i32 0
  store i32 %32, i32* %rl44, align 4
  %36 = load i32, i32* %r.addr, align 4
  %37 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx45 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %37, i64 0
  %rl46 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx45, i32 0, i32 0
  %38 = load i32, i32* %rl46, align 4
  %idxprom47 = sext i32 %38 to i64
  %39 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx48 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %39, i64 %idxprom47
  %rr = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx48, i32 0, i32 1
  store i32 %36, i32* %rr, align 4
  %40 = load i32, i32* %b.addr, align 4
  %41 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx49 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %41, i64 0
  %rl50 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx49, i32 0, i32 0
  %42 = load i32, i32* %rl50, align 4
  %idxprom51 = sext i32 %42 to i64
  %43 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx52 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %43, i64 %idxprom51
  %rb = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx52, i32 0, i32 2
  store i32 %40, i32* %rb, align 4
  %44 = load i32, i32* %t.addr, align 4
  %45 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx53 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %45, i64 0
  %rl54 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx53, i32 0, i32 0
  %46 = load i32, i32* %rl54, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx56 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %47, i64 %idxprom55
  %rt = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx56, i32 0, i32 3
  store i32 %44, i32* %rt, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @initPts(i32 %cell, i8* %name, i32 %orient) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %orient.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %cell, i32* %cell.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %orient, i32* %orient.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  store i32 0, i32* %xc, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %yc, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 %idxprom3
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  store i32 0, i32* %xc5, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %idxprom6
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  store i32 0, i32* %xc8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.20, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %10, 25
  br i1 %cmp10, label %for.body.11, label %for.end.22

for.body.11:                                      ; preds = %for.cond.9
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx13 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %12, i64 %idxprom12
  %rl = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx13, i32 0, i32 0
  store i32 0, i32* %rl, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx15 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %14, i64 %idxprom14
  %rr = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx15, i32 0, i32 1
  store i32 0, i32* %rr, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx17 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %16, i64 %idxprom16
  %rb = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx17, i32 0, i32 2
  store i32 0, i32* %rb, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx19 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %18, i64 %idxprom18
  %rt = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx19, i32 0, i32 3
  store i32 0, i32* %rt, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.11
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.9

for.end.22:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @recCheck(i32 %Pt1, i32 %Pt2) #0 {
entry:
  %retval = alloca i32, align 4
  %Pt1.addr = alloca i32, align 4
  %Pt2.addr = alloca i32, align 4
  %Px1 = alloca i32, align 4
  %Py1 = alloca i32, align 4
  %Px2 = alloca i32, align 4
  %Py2 = alloca i32, align 4
  %i = alloca i32, align 4
  %rl = alloca i32, align 4
  %rr = alloca i32, align 4
  %rb = alloca i32, align 4
  %rt = alloca i32, align 4
  store i32 %Pt1, i32* %Pt1.addr, align 4
  store i32 %Pt2, i32* %Pt2.addr, align 4
  %0 = load i32, i32* %Pt1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 %idxprom
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  store i32 %2, i32* %Px1, align 4
  %3 = load i32, i32* %Pt1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom1
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  store i32 %5, i32* %Py1, align 4
  %6 = load i32, i32* %Pt2.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %idxprom3
  %xc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 0
  %8 = load i32, i32* %xc5, align 4
  store i32 %8, i32* %Px2, align 4
  %9 = load i32, i32* %Pt2.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %idxprom6
  %yc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 1
  %11 = load i32, i32* %yc8, align 4
  store i32 %11, i32* %Py2, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx9 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %13, i64 0
  %rl10 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx9, i32 0, i32 0
  %14 = load i32, i32* %rl10, align 4
  %cmp = icmp sle i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx12 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %16, i64 %idxprom11
  %rl13 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx12, i32 0, i32 0
  %17 = load i32, i32* %rl13, align 4
  store i32 %17, i32* %rl, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx15 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %19, i64 %idxprom14
  %rr16 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx15, i32 0, i32 1
  %20 = load i32, i32* %rr16, align 4
  store i32 %20, i32* %rr, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx18 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %22, i64 %idxprom17
  %rb19 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx18, i32 0, i32 2
  %23 = load i32, i32* %rb19, align 4
  store i32 %23, i32* %rb, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx21 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %25, i64 %idxprom20
  %rt22 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx21, i32 0, i32 3
  %26 = load i32, i32* %rt22, align 4
  store i32 %26, i32* %rt, align 4
  %27 = load i32, i32* %Px1, align 4
  %28 = load i32, i32* %rl, align 4
  %cmp23 = icmp sge i32 %27, %28
  br i1 %cmp23, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %for.body
  %29 = load i32, i32* %Px1, align 4
  %30 = load i32, i32* %rr, align 4
  %cmp24 = icmp sle i32 %29, %30
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.37

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* %Py1, align 4
  %32 = load i32, i32* %rb, align 4
  %cmp26 = icmp sge i32 %31, %32
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.37

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %33 = load i32, i32* %Py1, align 4
  %34 = load i32, i32* %rt, align 4
  %cmp28 = icmp sle i32 %33, %34
  br i1 %cmp28, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.27
  %35 = load i32, i32* %Px2, align 4
  %36 = load i32, i32* %rl, align 4
  %cmp29 = icmp sge i32 %35, %36
  br i1 %cmp29, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %if.then
  %37 = load i32, i32* %Px2, align 4
  %38 = load i32, i32* %rr, align 4
  %cmp31 = icmp sle i32 %37, %38
  br i1 %cmp31, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %39 = load i32, i32* %Py2, align 4
  %40 = load i32, i32* %rb, align 4
  %cmp33 = icmp sge i32 %39, %40
  br i1 %cmp33, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %41 = load i32, i32* %Py2, align 4
  %42 = load i32, i32* %rt, align 4
  %cmp35 = icmp sle i32 %41, %42
  br i1 %cmp35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.34, %land.lhs.true.32, %land.lhs.true.30, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.36
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpError() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom
  %xc2 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 0
  %5 = load i32, i32* %xc2, align 4
  store i32 %5, i32* %x, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 %idxprom3
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 1
  %8 = load i32, i32* %yc, align 4
  store i32 %8, i32* %y, align 4
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %y, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 0
  %xc9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %xc9, align 4
  %cmp10 = icmp sle i32 %12, %14
  br i1 %cmp10, label %for.body.11, label %for.end.21

for.body.11:                                      ; preds = %for.cond.7
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i64 %idxprom12
  %xc14 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx13, i32 0, i32 0
  %17 = load i32, i32* %xc14, align 4
  store i32 %17, i32* %x, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %arrayidx16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom15
  %yc17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx16, i32 0, i32 1
  %20 = load i32, i32* %yc17, align 4
  store i32 %20, i32* %y, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %21, i32 %22)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.11
  %23 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.37, %for.end.21
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx24 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %25, i64 0
  %rl = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx24, i32 0, i32 0
  %26 = load i32, i32* %rl, align 4
  %cmp25 = icmp sle i32 %24, %26
  br i1 %cmp25, label %for.body.26, label %for.end.39

for.body.26:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx28 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %28, i64 %idxprom27
  %rl29 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx28, i32 0, i32 0
  %29 = load i32, i32* %rl29, align 4
  store i32 %29, i32* %l, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx31 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %31, i64 %idxprom30
  %rr = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx31, i32 0, i32 1
  %32 = load i32, i32* %rr, align 4
  store i32 %32, i32* %r, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx33 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %34, i64 %idxprom32
  %rb = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx33, i32 0, i32 2
  %35 = load i32, i32* %rb, align 4
  store i32 %35, i32* %b, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %arrayidx35 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %37, i64 %idxprom34
  %rt = getelementptr inbounds %struct.Rangle, %struct.Rangle* %arrayidx35, i32 0, i32 3
  %38 = load i32, i32* %rt, align 4
  store i32 %38, i32* %t, align 4
  %39 = load i32, i32* %l, align 4
  %40 = load i32, i32* %r, align 4
  %41 = load i32, i32* %b, align 4
  %42 = load i32, i32* %t, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 %39, i32 %40, i32 %41, i32 %42)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.26
  %43 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.23

for.end.39:                                       ; preds = %for.cond.23
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call40 = call i32 @fflush(%struct._IO_FILE* %44)
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
