; ModuleID = './event.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @opj_event_msg(%struct.opj_event_mgr* %p_event_mgr, i32 %event_type, i8* %fmt, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %event_type.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %msg_handler = alloca void (i8*, i8*)*, align 8
  %l_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %arg = alloca [1 x %struct.__va_list_tag], align 16
  %str_length = alloca i64, align 8
  %message = alloca [512 x i8], align 16
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  store i32 %event_type, i32* %event_type.addr, align 4, !tbaa !5
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast void (i8*, i8*)** %msg_handler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store void (i8*, i8*)* null, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %1 = bitcast i8** %l_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %l_data, align 8, !tbaa !1
  %2 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_event_mgr* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %event_type.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %error_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %4, i32 0, i32 3
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %error_handler, align 8, !tbaa !7
  store void (i8*, i8*)* %5, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %m_error_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %m_error_data, align 8, !tbaa !9
  store i8* %7, i8** %l_data, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %warning_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %8, i32 0, i32 4
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %warning_handler, align 8, !tbaa !10
  store void (i8*, i8*)* %9, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %m_warning_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %10, i32 0, i32 1
  %11 = load i8*, i8** %m_warning_data, align 8, !tbaa !11
  store i8* %11, i8** %l_data, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %info_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %12, i32 0, i32 5
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %info_handler, align 8, !tbaa !12
  store void (i8*, i8*)* %13, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %m_info_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %14, i32 0, i32 2
  %15 = load i8*, i8** %m_info_data, align 8, !tbaa !13
  store i8* %15, i8** %l_data, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %16 = load void (i8*, i8*)*, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %cmp3 = icmp eq void (i8*, i8*)* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  br label %if.end.5

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %cmp6 = icmp ne i8* %17, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.5
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.opj_event_mgr* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %land.lhs.true
  %19 = bitcast [1 x %struct.__va_list_tag]* %arg to i8*
  call void @llvm.lifetime.start(i64 24, i8* %19) #1
  %20 = bitcast i64* %str_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast [512 x i8]* %message to i8*
  call void @llvm.lifetime.start(i64 512, i8* %21) #1
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %message, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 512) #4
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %arraydecay910 = bitcast %struct.__va_list_tag* %arraydecay9 to i8*
  call void @llvm.va_start(i8* %arraydecay910)
  %22 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %22) #5
  %cmp12 = icmp ugt i64 %call11, 512
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %23 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %23) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 512, %cond.true ], [ %call13, %cond.false ]
  store i64 %cond, i64* %str_length, align 8, !tbaa !14
  %24 = load i64, i64* %str_length, align 8, !tbaa !14
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %message, i32 0, i32 0
  %25 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %call16 = call i32 @vsnprintf(i8* %arraydecay14, i64 512, i8* %25, %struct.__va_list_tag* %arraydecay15) #4
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i32 0, i32 0
  %arraydecay1718 = bitcast %struct.__va_list_tag* %arraydecay17 to i8*
  call void @llvm.va_end(i8* %arraydecay1718)
  %26 = load void (i8*, i8*)*, void (i8*, i8*)** %msg_handler, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %message, i32 0, i32 0
  %27 = load i8*, i8** %l_data, align 8, !tbaa !1
  call void %26(i8* %arraydecay19, i8* %27) #6
  %28 = bitcast [512 x i8]* %message to i8*
  call void @llvm.lifetime.end(i64 512, i8* %28) #1
  %29 = bitcast i64* %str_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast [1 x %struct.__va_list_tag]* %arg to i8*
  call void @llvm.lifetime.end(i64 24, i8* %30) #1
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %land.lhs.true, %if.end.5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.else, %if.then.4
  %31 = bitcast i8** %l_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast void (i8*, i8*)** %msg_handler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_set_default_event_handler(%struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %m_error_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %0, i32 0, i32 0
  store i8* null, i8** %m_error_data, align 8, !tbaa !9
  %1 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %m_warning_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %1, i32 0, i32 1
  store i8* null, i8** %m_warning_data, align 8, !tbaa !11
  %2 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %m_info_data = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %2, i32 0, i32 2
  store i8* null, i8** %m_info_data, align 8, !tbaa !13
  %3 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %error_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %3, i32 0, i32 3
  store void (i8*, i8*)* @opj_default_callback, void (i8*, i8*)** %error_handler, align 8, !tbaa !7
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %info_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %4, i32 0, i32 5
  store void (i8*, i8*)* @opj_default_callback, void (i8*, i8*)** %info_handler, align 8, !tbaa !12
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %warning_handler = getelementptr inbounds %struct.opj_event_mgr, %struct.opj_event_mgr* %5, i32 0, i32 4
  store void (i8*, i8*)* @opj_default_callback, void (i8*, i8*)** %warning_handler, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_default_callback(i8* %msg, i8* %client_data) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %client_data.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"opj_event_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!9 = !{!8, !2, i64 0}
!10 = !{!8, !2, i64 32}
!11 = !{!8, !2, i64 8}
!12 = !{!8, !2, i64 40}
!13 = !{!8, !2, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !3, i64 0}
