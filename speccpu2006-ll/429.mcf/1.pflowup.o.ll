; ModuleID = 'pflowup.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 {
entry:
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node*, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node* %w, %struct.node** %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load i32, i32* %orientation, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 10
  store i64 0, i64* %flow, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 10
  store i64 1, i64* %flow1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %7, %struct.node** %iplus.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %for.end
  %8 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %9 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp3 = icmp ne %struct.node* %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end.14

for.body.4:                                       ; preds = %for.cond.2
  %10 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation5 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %11 = load i32, i32* %orientation5, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %for.body.4
  %12 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow8 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 10
  store i64 1, i64* %flow8, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %for.body.4
  %13 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  store i64 0, i64* %flow10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.11
  %14 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred13 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %15 = load %struct.node*, %struct.node** %pred13, align 8
  store %struct.node* %15, %struct.node** %jplus.addr, align 8
  br label %for.cond.2

for.end.14:                                       ; preds = %for.cond.2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
