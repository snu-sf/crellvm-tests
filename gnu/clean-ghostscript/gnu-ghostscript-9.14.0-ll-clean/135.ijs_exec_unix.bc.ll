; ModuleID = './ijs_exec_unix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ijs_exec_server(i8* %server_cmd, i32* %pfd_to, i32* %pfd_from, i32* %pchild_pid) #0 {
entry:
  %retval = alloca i32, align 4
  %server_cmd.addr = alloca i8*, align 8
  %pfd_to.addr = alloca i32*, align 8
  %pfd_from.addr = alloca i32*, align 8
  %pchild_pid.addr = alloca i32*, align 8
  %fds_to = alloca [2 x i32], align 4
  %fds_from = alloca [2 x i32], align 4
  %child_pid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  %argv = alloca [8 x i8*], align 16
  %i = alloca i32, align 4
  store i8* %server_cmd, i8** %server_cmd.addr, align 8, !tbaa !1
  store i32* %pfd_to, i32** %pfd_to.addr, align 8, !tbaa !1
  store i32* %pfd_from, i32** %pfd_from.addr, align 8, !tbaa !1
  store i32* %pchild_pid, i32** %pchild_pid.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i32]* %fds_to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [2 x i32]* %fds_from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %child_pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i32 0
  %call2 = call i32 @pipe(i32* %arraydecay1) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call5 = call i32 @close(i32 %3) #6
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %call7 = call i32 @close(i32 %4) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %call9 = call i32 @fork() #5
  store i32 %call9, i32* %child_pid, align 4, !tbaa !5
  %5 = load i32, i32* %child_pid, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %5, 0
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end.8
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 0
  %6 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %call13 = call i32 @close(i32 %6) #6
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %7 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %call15 = call i32 @close(i32 %7) #6
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %8 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %call17 = call i32 @close(i32 %8) #6
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 1
  %9 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %call19 = call i32 @close(i32 %9) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.8
  %10 = load i32, i32* %child_pid, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %10, 0
  br i1 %cmp21, label %if.then.22, label %if.end.47

if.then.22:                                       ; preds = %if.end.20
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast [8 x i8*]* %argv to i8*
  call void @llvm.lifetime.start(i64 64, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %14 = load i32, i32* %arrayidx23, align 4, !tbaa !5
  %call24 = call i32 @close(i32 %14) #6
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %15 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %call26 = call i32 @close(i32 %15) #6
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 0
  %16 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %call28 = call i32 @dup2(i32 %16, i32 0) #5
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 1
  %17 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %call30 = call i32 @dup2(i32 %17, i32 1) #5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i64 %idxprom
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %arrayidx31, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %19, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i64 %idxprom33
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %arrayidx34, align 8, !tbaa !1
  %20 = load i8*, i8** %server_cmd.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %21, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %21 to i64
  %arrayidx37 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i64 %idxprom36
  store i8* %20, i8** %arrayidx37, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %22, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %22 to i64
  %arrayidx40 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i64 %idxprom39
  store i8* null, i8** %arrayidx40, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i64 0
  %23 = load i8*, i8** %arrayidx41, align 8, !tbaa !1
  %arraydecay42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %argv, i32 0, i32 0
  %call43 = call i32 @execvp(i8* %23, i8** %arraydecay42) #5
  store i32 %call43, i32* %status, align 4, !tbaa !5
  %24 = load i32, i32* %status, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %24, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.22
  call void @exit(i32 1) #7
  unreachable

if.end.46:                                        ; preds = %if.then.22
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast [8 x i8*]* %argv to i8*
  call void @llvm.lifetime.end(i64 64, i8* %26) #1
  %27 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.20
  %call48 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 0
  %28 = load i32, i32* %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 @close(i32 %28) #6
  %arrayidx51 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 1
  %29 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 @close(i32 %29) #6
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %30 = load i32, i32* %arrayidx53, align 4, !tbaa !5
  %31 = load i32*, i32** %pfd_to.addr, align 8, !tbaa !1
  store i32 %30, i32* %31, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %32 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %33 = load i32*, i32** %pfd_from.addr, align 8, !tbaa !1
  store i32 %32, i32* %33, align 4, !tbaa !5
  %34 = load i32, i32* %child_pid, align 4, !tbaa !5
  %35 = load i32*, i32** %pchild_pid.addr, align 8, !tbaa !1
  store i32 %34, i32* %35, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.11, %if.then.4, %if.then
  %36 = bitcast i32* %child_pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [2 x i32]* %fds_from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast [2 x i32]* %fds_to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @pipe(i32*) #2

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
