; ModuleID = './MultiSource.Benchmarks.VersaBench/11.dbms.clearLine.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define void @clearLine(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %c, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i64, i64* %c, align 8
  %cmp2 = icmp ne i64 %2, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i64, i64* %c, align 8
  %cmp4 = icmp ne i64 %3, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call6 = call i32 @fgetc(%struct._IO_FILE* %5)
  %conv7 = sext i32 %call6 to i64
  store i64 %conv7, i64* %c, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
