; ModuleID = './SingleSource.Regression.C/5.PR491.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"u.l == 128\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"u.l < 0\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"assertion failed in line %u: '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @test(i32 %r) #0 {
entry:
  %r.addr = alloca i32, align 4
  %u = alloca %union.anon, align 8
  store i32 %r, i32* %r.addr, align 4
  %l = bitcast %union.anon* %u to i64*
  store i64 0, i64* %l, align 8
  %c = bitcast %union.anon* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 0
  store i8 -128, i8* %arrayidx, align 1
  %l1 = bitcast %union.anon* %u to i64*
  %0 = load i64, i64* %l1, align 8
  %cmp = icmp eq i64 %0, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 @assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call, %cond.false ]
  %1 = load i32, i32* %r.addr, align 4
  %and = and i32 %1, %cond
  store i32 %and, i32* %r.addr, align 4
  %l2 = bitcast %union.anon* %u to i64*
  store i64 0, i64* %l2, align 8
  %c3 = bitcast %union.anon* %u to [8 x i8]*
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %c3, i32 0, i64 7
  store i8 -128, i8* %arrayidx4, align 1
  %l5 = bitcast %union.anon* %u to i64*
  %2 = load i64, i64* %l5, align 8
  %cmp6 = icmp slt i64 %2, 0
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %call9 = call i32 @assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 24)
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ 1, %cond.true.7 ], [ %call9, %cond.false.8 ]
  %3 = load i32, i32* %r.addr, align 4
  %and12 = and i32 %3, %cond11
  store i32 %and12, i32* %r.addr, align 4
  %4 = load i32, i32* %r.addr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @assert_fail(i8* %s, i32 %l) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %l.addr, align 4
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %1, i8* %2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @test(i32 1)
  %cmp = icmp ne i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
