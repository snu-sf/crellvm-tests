; ModuleID = './MultiSource.Benchmarks.7zip/28.HuffEnc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Huffman_Generate(i32* %freqs, i32* %p, i8* %lens, i32 %numSymbols, i32 %maxLen) #0 {
entry:
  %freqs.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %lens.addr = alloca i8*, align 8
  %numSymbols.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %counters = alloca [64 x i32], align 16
  %freq = alloca i32, align 4
  %temp = alloca i32, align 4
  %freq26 = alloca i32, align 4
  %minCode = alloca i32, align 4
  %maxCode = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %i68 = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %freq69 = alloca i32, align 4
  %lenCounters = alloca [17 x i32], align 16
  %len = alloca i32, align 4
  %len178 = alloca i32, align 4
  %num182 = alloca i32, align 4
  %nextCodes = alloca [17 x i32], align 16
  %code = alloca i32, align 4
  %len200 = alloca i32, align 4
  %i215 = alloca i32, align 4
  store i32* %freqs, i32** %freqs.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i8* %lens, i8** %lens.addr, align 8
  store i32 %numSymbols, i32* %numSymbols.addr, align 4
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %numSymbols.addr, align 4
  %cmp2 = icmp ult i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.12

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %5 to i64
  %6 = load i32*, i32** %freqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  store i32 %7, i32* %freq, align 4
  %8 = load i32, i32* %freq, align 4
  %cmp6 = icmp ult i32 %8, 63
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %9 = load i32, i32* %freq, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 63, %cond.false ]
  %idxprom7 = zext i32 %cond to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %inc9 = add i32 %10, 1
  store i32 %inc9, i32* %arrayidx8, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %cond.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  store i32 1, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end.12
  %12 = load i32, i32* %i, align 4
  %cmp14 = icmp ult i32 %12, 64
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.13
  %13 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  store i32 %14, i32* %temp, align 4
  %15 = load i32, i32* %num, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 %idxprom18
  store i32 %15, i32* %arrayidx19, align 4
  %17 = load i32, i32* %temp, align 4
  %18 = load i32, i32* %num, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %num, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %19 = load i32, i32* %i, align 4
  %inc21 = add i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.42, %for.end.22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %numSymbols.addr, align 4
  %cmp24 = icmp ult i32 %20, %21
  br i1 %cmp24, label %for.body.25, label %for.end.44

for.body.25:                                      ; preds = %for.cond.23
  %22 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %22 to i64
  %23 = load i32*, i32** %freqs.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %23, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  store i32 %24, i32* %freq26, align 4
  %25 = load i32, i32* %freq26, align 4
  %cmp29 = icmp eq i32 %25, 0
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.25
  %26 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %26 to i64
  %27 = load i8*, i8** %lens.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %27, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.25
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %freq26, align 4
  %shl = shl i32 %29, 10
  %or = or i32 %28, %shl
  %30 = load i32, i32* %freq26, align 4
  %cmp32 = icmp ult i32 %30, 63
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.else
  %31 = load i32, i32* %freq26, align 4
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.else
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %31, %cond.true.33 ], [ 63, %cond.false.34 ]
  %idxprom37 = zext i32 %cond36 to i64
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 %idxprom37
  %32 = load i32, i32* %arrayidx38, align 4
  %inc39 = add i32 %32, 1
  store i32 %inc39, i32* %arrayidx38, align 4
  %idxprom40 = zext i32 %32 to i64
  %33 = load i32*, i32** %p.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %33, i64 %idxprom40
  store i32 %or, i32* %arrayidx41, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.35, %if.then
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end
  %34 = load i32, i32* %i, align 4
  %inc43 = add i32 %34, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.23

for.end.44:                                       ; preds = %for.cond.23
  %arrayidx45 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 0
  store i32 0, i32* %arrayidx45, align 4
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 62
  %36 = load i32, i32* %arrayidx46, align 4
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds i32, i32* %35, i64 %idx.ext
  %arrayidx47 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 63
  %37 = load i32, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [64 x i32], [64 x i32]* %counters, i32 0, i64 62
  %38 = load i32, i32* %arrayidx48, align 4
  %sub = sub i32 %37, %38
  call void @HeapSort(i32* %add.ptr, i32 %sub)
  %39 = load i32, i32* %num, align 4
  %cmp49 = icmp ult i32 %39, 2
  br i1 %cmp49, label %if.then.50, label %if.end.67

if.then.50:                                       ; preds = %for.end.44
  store i32 0, i32* %minCode, align 4
  store i32 1, i32* %maxCode, align 4
  %40 = load i32, i32* %num, align 4
  %cmp51 = icmp eq i32 %40, 1
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.then.50
  %41 = load i32*, i32** %p.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx53, align 4
  %and = and i32 %42, 1023
  store i32 %and, i32* %maxCode, align 4
  %43 = load i32, i32* %maxCode, align 4
  %cmp54 = icmp eq i32 %43, 0
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.52
  %44 = load i32, i32* %maxCode, align 4
  %inc56 = add i32 %44, 1
  store i32 %inc56, i32* %maxCode, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.50
  %45 = load i32, i32* %minCode, align 4
  %idxprom59 = zext i32 %45 to i64
  %46 = load i32*, i32** %p.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %46, i64 %idxprom59
  store i32 0, i32* %arrayidx60, align 4
  %47 = load i32, i32* %maxCode, align 4
  %idxprom61 = zext i32 %47 to i64
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %48, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  %49 = load i32, i32* %maxCode, align 4
  %idxprom63 = zext i32 %49 to i64
  %50 = load i8*, i8** %lens.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %50, i64 %idxprom63
  store i8 1, i8* %arrayidx64, align 1
  %51 = load i32, i32* %minCode, align 4
  %idxprom65 = zext i32 %51 to i64
  %52 = load i8*, i8** %lens.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 %idxprom65
  store i8 1, i8* %arrayidx66, align 1
  br label %for.end.229

if.end.67:                                        ; preds = %for.end.44
  store i32 0, i32* %e, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %i68, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.67
  %53 = load i32, i32* %i68, align 4
  %54 = load i32, i32* %num, align 4
  %cmp70 = icmp ne i32 %53, %54
  br i1 %cmp70, label %land.lhs.true, label %cond.false.80

land.lhs.true:                                    ; preds = %do.body
  %55 = load i32, i32* %b, align 4
  %56 = load i32, i32* %e, align 4
  %cmp71 = icmp eq i32 %55, %56
  br i1 %cmp71, label %cond.true.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %57 = load i32, i32* %i68, align 4
  %idxprom72 = zext i32 %57 to i64
  %58 = load i32*, i32** %p.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %58, i64 %idxprom72
  %59 = load i32, i32* %arrayidx73, align 4
  %shr = lshr i32 %59, 10
  %60 = load i32, i32* %b, align 4
  %idxprom74 = zext i32 %60 to i64
  %61 = load i32*, i32** %p.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %61, i64 %idxprom74
  %62 = load i32, i32* %arrayidx75, align 4
  %shr76 = lshr i32 %62, 10
  %cmp77 = icmp ule i32 %shr, %shr76
  br i1 %cmp77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %lor.lhs.false, %land.lhs.true
  %63 = load i32, i32* %i68, align 4
  %inc79 = add i32 %63, 1
  store i32 %inc79, i32* %i68, align 4
  br label %cond.end.82

cond.false.80:                                    ; preds = %lor.lhs.false, %do.body
  %64 = load i32, i32* %b, align 4
  %inc81 = add i32 %64, 1
  store i32 %inc81, i32* %b, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.78
  %cond83 = phi i32 [ %63, %cond.true.78 ], [ %64, %cond.false.80 ]
  store i32 %cond83, i32* %n, align 4
  %65 = load i32, i32* %n, align 4
  %idxprom84 = zext i32 %65 to i64
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %66, i64 %idxprom84
  %67 = load i32, i32* %arrayidx85, align 4
  %and86 = and i32 %67, -1024
  store i32 %and86, i32* %freq69, align 4
  %68 = load i32, i32* %n, align 4
  %idxprom87 = zext i32 %68 to i64
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %69, i64 %idxprom87
  %70 = load i32, i32* %arrayidx88, align 4
  %and89 = and i32 %70, 1023
  %71 = load i32, i32* %e, align 4
  %shl90 = shl i32 %71, 10
  %or91 = or i32 %and89, %shl90
  %72 = load i32, i32* %n, align 4
  %idxprom92 = zext i32 %72 to i64
  %73 = load i32*, i32** %p.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %73, i64 %idxprom92
  store i32 %or91, i32* %arrayidx93, align 4
  %74 = load i32, i32* %i68, align 4
  %75 = load i32, i32* %num, align 4
  %cmp94 = icmp ne i32 %74, %75
  br i1 %cmp94, label %land.lhs.true.95, label %cond.false.107

land.lhs.true.95:                                 ; preds = %cond.end.82
  %76 = load i32, i32* %b, align 4
  %77 = load i32, i32* %e, align 4
  %cmp96 = icmp eq i32 %76, %77
  br i1 %cmp96, label %cond.true.105, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %land.lhs.true.95
  %78 = load i32, i32* %i68, align 4
  %idxprom98 = zext i32 %78 to i64
  %79 = load i32*, i32** %p.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %79, i64 %idxprom98
  %80 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %80, 10
  %81 = load i32, i32* %b, align 4
  %idxprom101 = zext i32 %81 to i64
  %82 = load i32*, i32** %p.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %82, i64 %idxprom101
  %83 = load i32, i32* %arrayidx102, align 4
  %shr103 = lshr i32 %83, 10
  %cmp104 = icmp ule i32 %shr100, %shr103
  br i1 %cmp104, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %lor.lhs.false.97, %land.lhs.true.95
  %84 = load i32, i32* %i68, align 4
  %inc106 = add i32 %84, 1
  store i32 %inc106, i32* %i68, align 4
  br label %cond.end.109

cond.false.107:                                   ; preds = %lor.lhs.false.97, %cond.end.82
  %85 = load i32, i32* %b, align 4
  %inc108 = add i32 %85, 1
  store i32 %inc108, i32* %b, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi i32 [ %84, %cond.true.105 ], [ %85, %cond.false.107 ]
  store i32 %cond110, i32* %m, align 4
  %86 = load i32, i32* %m, align 4
  %idxprom111 = zext i32 %86 to i64
  %87 = load i32*, i32** %p.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %87, i64 %idxprom111
  %88 = load i32, i32* %arrayidx112, align 4
  %and113 = and i32 %88, -1024
  %89 = load i32, i32* %freq69, align 4
  %add114 = add i32 %89, %and113
  store i32 %add114, i32* %freq69, align 4
  %90 = load i32, i32* %m, align 4
  %idxprom115 = zext i32 %90 to i64
  %91 = load i32*, i32** %p.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %91, i64 %idxprom115
  %92 = load i32, i32* %arrayidx116, align 4
  %and117 = and i32 %92, 1023
  %93 = load i32, i32* %e, align 4
  %shl118 = shl i32 %93, 10
  %or119 = or i32 %and117, %shl118
  %94 = load i32, i32* %m, align 4
  %idxprom120 = zext i32 %94 to i64
  %95 = load i32*, i32** %p.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %95, i64 %idxprom120
  store i32 %or119, i32* %arrayidx121, align 4
  %96 = load i32, i32* %e, align 4
  %idxprom122 = zext i32 %96 to i64
  %97 = load i32*, i32** %p.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %97, i64 %idxprom122
  %98 = load i32, i32* %arrayidx123, align 4
  %and124 = and i32 %98, 1023
  %99 = load i32, i32* %freq69, align 4
  %or125 = or i32 %and124, %99
  %100 = load i32, i32* %e, align 4
  %idxprom126 = zext i32 %100 to i64
  %101 = load i32*, i32** %p.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %101, i64 %idxprom126
  store i32 %or125, i32* %arrayidx127, align 4
  %102 = load i32, i32* %e, align 4
  %inc128 = add i32 %102, 1
  store i32 %inc128, i32* %e, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end.109
  %103 = load i32, i32* %num, align 4
  %104 = load i32, i32* %e, align 4
  %sub129 = sub i32 %103, %104
  %cmp130 = icmp ugt i32 %sub129, 1
  br i1 %cmp130, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i68, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.136, %do.end
  %105 = load i32, i32* %i68, align 4
  %cmp132 = icmp ule i32 %105, 16
  br i1 %cmp132, label %for.body.133, label %for.end.138

for.body.133:                                     ; preds = %for.cond.131
  %106 = load i32, i32* %i68, align 4
  %idxprom134 = zext i32 %106 to i64
  %arrayidx135 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom134
  store i32 0, i32* %arrayidx135, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.133
  %107 = load i32, i32* %i68, align 4
  %inc137 = add i32 %107, 1
  store i32 %inc137, i32* %i68, align 4
  br label %for.cond.131

for.end.138:                                      ; preds = %for.cond.131
  %108 = load i32, i32* %e, align 4
  %dec = add i32 %108, -1
  store i32 %dec, i32* %e, align 4
  %idxprom139 = zext i32 %dec to i64
  %109 = load i32*, i32** %p.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %109, i64 %idxprom139
  %110 = load i32, i32* %arrayidx140, align 4
  %and141 = and i32 %110, 1023
  store i32 %and141, i32* %arrayidx140, align 4
  %arrayidx142 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 1
  store i32 2, i32* %arrayidx142, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.170, %for.end.138
  %111 = load i32, i32* %e, align 4
  %cmp143 = icmp ugt i32 %111, 0
  br i1 %cmp143, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = load i32, i32* %e, align 4
  %dec144 = add i32 %112, -1
  store i32 %dec144, i32* %e, align 4
  %idxprom145 = zext i32 %dec144 to i64
  %113 = load i32*, i32** %p.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %113, i64 %idxprom145
  %114 = load i32, i32* %arrayidx146, align 4
  %shr147 = lshr i32 %114, 10
  %idxprom148 = zext i32 %shr147 to i64
  %115 = load i32*, i32** %p.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %115, i64 %idxprom148
  %116 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %116, 10
  %add151 = add i32 %shr150, 1
  store i32 %add151, i32* %len, align 4
  %117 = load i32, i32* %e, align 4
  %idxprom152 = zext i32 %117 to i64
  %118 = load i32*, i32** %p.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %118, i64 %idxprom152
  %119 = load i32, i32* %arrayidx153, align 4
  %and154 = and i32 %119, 1023
  %120 = load i32, i32* %len, align 4
  %shl155 = shl i32 %120, 10
  %or156 = or i32 %and154, %shl155
  %121 = load i32, i32* %e, align 4
  %idxprom157 = zext i32 %121 to i64
  %122 = load i32*, i32** %p.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %122, i64 %idxprom157
  store i32 %or156, i32* %arrayidx158, align 4
  %123 = load i32, i32* %len, align 4
  %124 = load i32, i32* %maxLen.addr, align 4
  %cmp159 = icmp uge i32 %123, %124
  br i1 %cmp159, label %if.then.160, label %if.end.170

if.then.160:                                      ; preds = %while.body
  %125 = load i32, i32* %maxLen.addr, align 4
  %sub161 = sub i32 %125, 1
  store i32 %sub161, i32* %len, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.167, %if.then.160
  %126 = load i32, i32* %len, align 4
  %idxprom163 = zext i32 %126 to i64
  %arrayidx164 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom163
  %127 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp eq i32 %127, 0
  br i1 %cmp165, label %for.body.166, label %for.end.169

for.body.166:                                     ; preds = %for.cond.162
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.166
  %128 = load i32, i32* %len, align 4
  %dec168 = add i32 %128, -1
  store i32 %dec168, i32* %len, align 4
  br label %for.cond.162

for.end.169:                                      ; preds = %for.cond.162
  br label %if.end.170

if.end.170:                                       ; preds = %for.end.169, %while.body
  %129 = load i32, i32* %len, align 4
  %idxprom171 = zext i32 %129 to i64
  %arrayidx172 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom171
  %130 = load i32, i32* %arrayidx172, align 4
  %dec173 = add i32 %130, -1
  store i32 %dec173, i32* %arrayidx172, align 4
  %131 = load i32, i32* %len, align 4
  %add174 = add i32 %131, 1
  %idxprom175 = zext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom175
  %132 = load i32, i32* %arrayidx176, align 4
  %add177 = add i32 %132, 2
  store i32 %add177, i32* %arrayidx176, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i68, align 4
  %133 = load i32, i32* %maxLen.addr, align 4
  store i32 %133, i32* %len178, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.197, %while.end
  %134 = load i32, i32* %len178, align 4
  %cmp180 = icmp ne i32 %134, 0
  br i1 %cmp180, label %for.body.181, label %for.end.199

for.body.181:                                     ; preds = %for.cond.179
  %135 = load i32, i32* %len178, align 4
  %idxprom183 = zext i32 %135 to i64
  %arrayidx184 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom183
  %136 = load i32, i32* %arrayidx184, align 4
  store i32 %136, i32* %num182, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.194, %for.body.181
  %137 = load i32, i32* %num182, align 4
  %cmp186 = icmp ne i32 %137, 0
  br i1 %cmp186, label %for.body.187, label %for.end.196

for.body.187:                                     ; preds = %for.cond.185
  %138 = load i32, i32* %len178, align 4
  %conv = trunc i32 %138 to i8
  %139 = load i32, i32* %i68, align 4
  %inc188 = add i32 %139, 1
  store i32 %inc188, i32* %i68, align 4
  %idxprom189 = zext i32 %139 to i64
  %140 = load i32*, i32** %p.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %140, i64 %idxprom189
  %141 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %141, 1023
  %idxprom192 = zext i32 %and191 to i64
  %142 = load i8*, i8** %lens.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %142, i64 %idxprom192
  store i8 %conv, i8* %arrayidx193, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.187
  %143 = load i32, i32* %num182, align 4
  %dec195 = add i32 %143, -1
  store i32 %dec195, i32* %num182, align 4
  br label %for.cond.185

for.end.196:                                      ; preds = %for.cond.185
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %144 = load i32, i32* %len178, align 4
  %dec198 = add i32 %144, -1
  store i32 %dec198, i32* %len178, align 4
  br label %for.cond.179

for.end.199:                                      ; preds = %for.cond.179
  store i32 0, i32* %code, align 4
  store i32 1, i32* %len200, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.212, %for.end.199
  %145 = load i32, i32* %len200, align 4
  %cmp202 = icmp ule i32 %145, 16
  br i1 %cmp202, label %for.body.204, label %for.end.214

for.body.204:                                     ; preds = %for.cond.201
  %146 = load i32, i32* %code, align 4
  %147 = load i32, i32* %len200, align 4
  %sub205 = sub i32 %147, 1
  %idxprom206 = zext i32 %sub205 to i64
  %arrayidx207 = getelementptr inbounds [17 x i32], [17 x i32]* %lenCounters, i32 0, i64 %idxprom206
  %148 = load i32, i32* %arrayidx207, align 4
  %add208 = add i32 %146, %148
  %shl209 = shl i32 %add208, 1
  store i32 %shl209, i32* %code, align 4
  %149 = load i32, i32* %len200, align 4
  %idxprom210 = zext i32 %149 to i64
  %arrayidx211 = getelementptr inbounds [17 x i32], [17 x i32]* %nextCodes, i32 0, i64 %idxprom210
  store i32 %shl209, i32* %arrayidx211, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.204
  %150 = load i32, i32* %len200, align 4
  %inc213 = add i32 %150, 1
  store i32 %inc213, i32* %len200, align 4
  br label %for.cond.201

for.end.214:                                      ; preds = %for.cond.201
  store i32 0, i32* %i215, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.227, %for.end.214
  %151 = load i32, i32* %i215, align 4
  %152 = load i32, i32* %numSymbols.addr, align 4
  %cmp217 = icmp ult i32 %151, %152
  br i1 %cmp217, label %for.body.219, label %for.end.229

for.body.219:                                     ; preds = %for.cond.216
  %153 = load i32, i32* %i215, align 4
  %idxprom220 = zext i32 %153 to i64
  %154 = load i8*, i8** %lens.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %154, i64 %idxprom220
  %155 = load i8, i8* %arrayidx221, align 1
  %idxprom222 = zext i8 %155 to i64
  %arrayidx223 = getelementptr inbounds [17 x i32], [17 x i32]* %nextCodes, i32 0, i64 %idxprom222
  %156 = load i32, i32* %arrayidx223, align 4
  %inc224 = add i32 %156, 1
  store i32 %inc224, i32* %arrayidx223, align 4
  %157 = load i32, i32* %i215, align 4
  %idxprom225 = zext i32 %157 to i64
  %158 = load i32*, i32** %p.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %158, i64 %idxprom225
  store i32 %156, i32* %arrayidx226, align 4
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.219
  %159 = load i32, i32* %i215, align 4
  %inc228 = add i32 %159, 1
  store i32 %inc228, i32* %i215, align 4
  br label %for.cond.216

for.end.229:                                      ; preds = %if.end.58, %for.cond.216
  ret void
}

declare void @HeapSort(i32*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
