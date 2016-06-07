; ModuleID = 'alloca.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }

@stack_dir = internal global i32 0, align 4
@last_alloca_header = internal global %union.hdr* null, align 8
@find_stack_direction.addr = internal global i8* null, align 8

; Function Attrs: nounwind uwtable
define i8* @C_alloca(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %probe = alloca i8, align 1
  %depth = alloca i8*, align 8
  %hp = alloca %union.hdr*, align 8
  %np = alloca %union.hdr*, align 8
  %new = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %probe, i8** %depth, align 8
  %0 = load i32, i32* @stack_dir, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @find_stack_direction()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  store %union.hdr* %1, %union.hdr** %hp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %if.end
  %2 = load %union.hdr*, %union.hdr** %hp, align 8
  %cmp1 = icmp ne %union.hdr* %2, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @stack_dir, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load %union.hdr*, %union.hdr** %hp, align 8
  %h = bitcast %union.hdr* %4 to %struct.anon*
  %deep = getelementptr inbounds %struct.anon, %struct.anon* %h, i32 0, i32 1
  %5 = load i8*, i8** %deep, align 8
  %6 = load i8*, i8** %depth, align 8
  %cmp3 = icmp ugt i8* %5, %6
  br i1 %cmp3, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %7 = load i32, i32* @stack_dir, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %8 = load %union.hdr*, %union.hdr** %hp, align 8
  %h6 = bitcast %union.hdr* %8 to %struct.anon*
  %deep7 = getelementptr inbounds %struct.anon, %struct.anon* %h6, i32 0, i32 1
  %9 = load i8*, i8** %deep7, align 8
  %10 = load i8*, i8** %depth, align 8
  %cmp8 = icmp ult i8* %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true.5, %land.lhs.true
  %11 = load %union.hdr*, %union.hdr** %hp, align 8
  %h10 = bitcast %union.hdr* %11 to %struct.anon*
  %next = getelementptr inbounds %struct.anon, %struct.anon* %h10, i32 0, i32 0
  %12 = load %union.hdr*, %union.hdr** %next, align 8
  store %union.hdr* %12, %union.hdr** %np, align 8
  %13 = load %union.hdr*, %union.hdr** %hp, align 8
  %14 = bitcast %union.hdr* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %union.hdr*, %union.hdr** %np, align 8
  store %union.hdr* %15, %union.hdr** %hp, align 8
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true.5, %lor.lhs.false
  br label %for.end

if.end.11:                                        ; preds = %if.then.9
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %16 = load %union.hdr*, %union.hdr** %hp, align 8
  store %union.hdr* %16, %union.hdr** @last_alloca_header, align 8
  %17 = load i64, i64* %size.addr, align 8
  %cmp12 = icmp eq i64 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  %18 = load i64, i64* %size.addr, align 8
  %add = add i64 16, %18
  %call = call noalias i8* @xmalloc(i64 %add)
  store i8* %call, i8** %new, align 8
  %19 = load i8*, i8** %new, align 8
  %cmp15 = icmp eq i8* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  call void @abort() #5
  unreachable

if.end.17:                                        ; preds = %if.end.14
  %20 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  %21 = load i8*, i8** %new, align 8
  %22 = bitcast i8* %21 to %union.hdr*
  %h18 = bitcast %union.hdr* %22 to %struct.anon*
  %next19 = getelementptr inbounds %struct.anon, %struct.anon* %h18, i32 0, i32 0
  store %union.hdr* %20, %union.hdr** %next19, align 8
  %23 = load i8*, i8** %depth, align 8
  %24 = load i8*, i8** %new, align 8
  %25 = bitcast i8* %24 to %union.hdr*
  %h20 = bitcast %union.hdr* %25 to %struct.anon*
  %deep21 = getelementptr inbounds %struct.anon, %struct.anon* %h20, i32 0, i32 1
  store i8* %23, i8** %deep21, align 8
  %26 = load i8*, i8** %new, align 8
  %27 = bitcast i8* %26 to %union.hdr*
  store %union.hdr* %27, %union.hdr** @last_alloca_header, align 8
  %28 = load i8*, i8** %new, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 16
  store i8* %add.ptr, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define internal void @find_stack_direction() #0 {
entry:
  %dummy = alloca i8, align 1
  %0 = load i8*, i8** @find_stack_direction.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* %dummy, i8** @find_stack_direction.addr, align 8
  call void @find_stack_direction()
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** @find_stack_direction.addr, align 8
  %cmp1 = icmp ugt i8* %dummy, %1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 1, i32* @stack_dir, align 4
  br label %if.end

if.else.3:                                        ; preds = %if.else
  store i32 -1, i32* @stack_dir, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
