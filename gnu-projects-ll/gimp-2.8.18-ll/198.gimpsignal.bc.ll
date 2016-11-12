; ModuleID = './libgimpbase/gimpsignal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"unable to set handler for signal %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1

; Function Attrs: nounwind uwtable
define void (i32)* @gimp_signal_private(i32 %signum, void (i32)* %handler, i32 %flags) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %sa = alloca %struct.sigaction, align 8
  %osa = alloca %struct.sigaction, align 8
  store i32 %signum, i32* %signum.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load void (i32)*, void (i32)** %handler.addr, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* %0, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 1
  %call = call i32 @sigfillset(%struct.__sigset_t* %sa_mask) #2
  %1 = load i32, i32* %flags.addr, align 4
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 2
  store i32 %1, i32* %sa_flags, align 4
  %2 = load i32, i32* %signum.addr, align 4
  %call1 = call i32 @sigaction(i32 %2, %struct.sigaction* %sa, %struct.sigaction* %osa) #2
  store i32 %call1, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %signum.addr, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__sigaction_handler2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %osa, i32 0, i32 0
  %sa_handler3 = bitcast %union.anon* %__sigaction_handler2 to void (i32)**
  %5 = load void (i32)*, void (i32)** %sa_handler3, align 8
  ret void (i32)* %5
}

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
