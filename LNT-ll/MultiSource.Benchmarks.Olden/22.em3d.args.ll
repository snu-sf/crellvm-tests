; ModuleID = './MultiSource.Benchmarks.Olden/22.em3d.args.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NumNodes = common global i32 0, align 4
@n_nodes = external global i32, align 4
@d_nodes = external global i32, align 4
@local_p = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @dealwithargs(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 4
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #2
  store i32 %call, i32* @NumNodes, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @NumNodes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #2
  store i32 %call4, i32* @n_nodes, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %if.end
  store i32 64, i32* @n_nodes, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.2
  %6 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp sgt i32 %6, 2
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.end.6
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @atoi(i8* %8) #2
  store i32 %call10, i32* @d_nodes, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.6
  store i32 3, i32* @d_nodes, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.8
  %9 = load i32, i32* %argc.addr, align 4
  %cmp13 = icmp sgt i32 %9, 3
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end.12
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %10, i64 3
  %11 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @atoi(i8* %11) #2
  store i32 %call16, i32* @local_p, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.12
  store i32 75, i32* @local_p, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.14
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
