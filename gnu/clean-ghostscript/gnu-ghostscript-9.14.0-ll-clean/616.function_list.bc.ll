; ModuleID = './function_list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_procedure_list = type { i32, i32, void ()** }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [53 x i8] c"Not enough memory to add a new validation procedure\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.opj_procedure_list* @opj_procedure_list_create() #0 {
entry:
  %retval = alloca %struct.opj_procedure_list*, align 8
  %l_validation = alloca %struct.opj_procedure_list*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.opj_procedure_list** %l_validation to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call to %struct.opj_procedure_list*
  store %struct.opj_procedure_list* %1, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %2 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_procedure_list* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.opj_procedure_list* null, %struct.opj_procedure_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %4 = bitcast %struct.opj_procedure_list* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 16) #4
  %5 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %m_nb_max_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %5, i32 0, i32 1
  store i32 10, i32* %m_nb_max_procedures, align 4, !tbaa !5
  %call2 = call noalias i8* @malloc(i64 80) #4
  %6 = bitcast i8* %call2 to void ()**
  %7 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %m_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %7, i32 0, i32 2
  store void ()** %6, void ()*** %m_procedures, align 8, !tbaa !8
  %8 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %m_procedures3 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %8, i32 0, i32 2
  %9 = load void ()**, void ()*** %m_procedures3, align 8, !tbaa !8
  %tobool4 = icmp ne void ()** %9, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %11 = bitcast %struct.opj_procedure_list* %10 to i8*
  call void @free(i8* %11) #4
  store %struct.opj_procedure_list* null, %struct.opj_procedure_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  %m_procedures7 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %12, i32 0, i32 2
  %13 = load void ()**, void ()*** %m_procedures7, align 8, !tbaa !8
  %14 = bitcast void ()** %13 to i8*
  %call8 = call i8* @memset(i8* %14, i32 0, i64 80) #4
  %15 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %l_validation, align 8, !tbaa !1
  store %struct.opj_procedure_list* %15, %struct.opj_procedure_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %16 = bitcast %struct.opj_procedure_list** %l_validation to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %retval
  ret %struct.opj_procedure_list* %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_procedure_list_destroy(%struct.opj_procedure_list* %p_list) #0 {
entry:
  %p_list.addr = alloca %struct.opj_procedure_list*, align 8
  store %struct.opj_procedure_list* %p_list, %struct.opj_procedure_list** %p_list.addr, align 8, !tbaa !1
  %0 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_list.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_procedure_list* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_list.addr, align 8, !tbaa !1
  %m_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %1, i32 0, i32 2
  %2 = load void ()**, void ()*** %m_procedures, align 8, !tbaa !8
  %tobool1 = icmp ne void ()** %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_list.addr, align 8, !tbaa !1
  %m_procedures3 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %3, i32 0, i32 2
  %4 = load void ()**, void ()*** %m_procedures3, align 8, !tbaa !8
  %5 = bitcast void ()** %4 to i8*
  call void @free(i8* %5) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_list.addr, align 8, !tbaa !1
  %7 = bitcast %struct.opj_procedure_list* %6 to i8*
  call void @free(i8* %7) #4
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %p_validation_list, void ()* %p_procedure) #0 {
entry:
  %retval = alloca i32, align 4
  %p_validation_list.addr = alloca %struct.opj_procedure_list*, align 8
  %p_procedure.addr = alloca void ()*, align 8
  %new_procedures = alloca void ()**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_procedure_list* %p_validation_list, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  store void ()* %p_procedure, void ()** %p_procedure.addr, align 8, !tbaa !1
  %0 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_max_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %0, i32 0, i32 1
  %1 = load i32, i32* %m_nb_max_procedures, align 4, !tbaa !5
  %2 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %2, i32 0, i32 0
  %3 = load i32, i32* %m_nb_procedures, align 4, !tbaa !9
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %4 = bitcast void ()*** %new_procedures to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_max_procedures1 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %5, i32 0, i32 1
  %6 = load i32, i32* %m_nb_max_procedures1, align 4, !tbaa !5
  %add = add i32 %6, 10
  store i32 %add, i32* %m_nb_max_procedures1, align 4, !tbaa !5
  %7 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_max_procedures2 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %7, i32 0, i32 1
  %8 = load i32, i32* %m_nb_max_procedures2, align 4, !tbaa !5
  %conv = zext i32 %8 to i64
  %mul = mul i64 %conv, 8
  %cmp3 = icmp uge i64 %mul, -256
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %9, i32 0, i32 2
  %10 = load void ()**, void ()*** %m_procedures, align 8, !tbaa !8
  %11 = bitcast void ()** %10 to i8*
  %12 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_max_procedures5 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %12, i32 0, i32 1
  %13 = load i32, i32* %m_nb_max_procedures5, align 4, !tbaa !5
  %conv6 = zext i32 %13 to i64
  %mul7 = mul i64 %conv6, 8
  %call = call i8* @realloc(i8* %11, i64 %mul7) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %14 = bitcast i8* %cond to void ()**
  store void ()** %14, void ()*** %new_procedures, align 8, !tbaa !1
  %15 = load void ()**, void ()*** %new_procedures, align 8, !tbaa !1
  %tobool = icmp ne void ()** %15, null
  br i1 %tobool, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %cond.end
  %16 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_procedures9 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %16, i32 0, i32 2
  %17 = load void ()**, void ()*** %m_procedures9, align 8, !tbaa !8
  %18 = bitcast void ()** %17 to i8*
  call void @free(i8* %18) #4
  %19 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_max_procedures10 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %19, i32 0, i32 1
  store i32 0, i32* %m_nb_max_procedures10, align 4, !tbaa !5
  %20 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures11 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %20, i32 0, i32 0
  store i32 0, i32* %m_nb_procedures11, align 4, !tbaa !9
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %22 = load void ()**, void ()*** %new_procedures, align 8, !tbaa !1
  %23 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_procedures13 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %23, i32 0, i32 2
  store void ()** %22, void ()*** %m_procedures13, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %24 = bitcast void ()*** %new_procedures to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %entry
  %25 = load void ()*, void ()** %p_procedure.addr, align 8, !tbaa !1
  %26 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures15 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %26, i32 0, i32 0
  %27 = load i32, i32* %m_nb_procedures15, align 4, !tbaa !9
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_procedures16 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %28, i32 0, i32 2
  %29 = load void ()**, void ()*** %m_procedures16, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds void ()*, void ()** %29, i64 %idxprom
  store void ()* %25, void ()** %arrayidx, align 8, !tbaa !1
  %30 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures17 = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %30, i32 0, i32 0
  %31 = load i32, i32* %m_nb_procedures17, align 4, !tbaa !9
  %inc = add i32 %31, 1
  store i32 %inc, i32* %m_nb_procedures17, align 4, !tbaa !9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %cleanup
  %32 = load i32, i32* %retval
  ret i32 %32

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @opj_procedure_list_get_nb_procedures(%struct.opj_procedure_list* %p_validation_list) #0 {
entry:
  %p_validation_list.addr = alloca %struct.opj_procedure_list*, align 8
  store %struct.opj_procedure_list* %p_validation_list, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %0 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %0, i32 0, i32 0
  %1 = load i32, i32* %m_nb_procedures, align 4, !tbaa !9
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void ()** @opj_procedure_list_get_first_procedure(%struct.opj_procedure_list* %p_validation_list) #0 {
entry:
  %p_validation_list.addr = alloca %struct.opj_procedure_list*, align 8
  store %struct.opj_procedure_list* %p_validation_list, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %0 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %0, i32 0, i32 2
  %1 = load void ()**, void ()*** %m_procedures, align 8, !tbaa !8
  ret void ()** %1
}

; Function Attrs: nounwind uwtable
define void @opj_procedure_list_clear(%struct.opj_procedure_list* %p_validation_list) #0 {
entry:
  %p_validation_list.addr = alloca %struct.opj_procedure_list*, align 8
  store %struct.opj_procedure_list* %p_validation_list, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %0 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_validation_list.addr, align 8, !tbaa !1
  %m_nb_procedures = getelementptr inbounds %struct.opj_procedure_list, %struct.opj_procedure_list* %0, i32 0, i32 0
  store i32 0, i32* %m_nb_procedures, align 4, !tbaa !9
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 4}
!6 = !{!"opj_procedure_list", !7, i64 0, !7, i64 4, !2, i64 8}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 8}
!9 = !{!6, !7, i64 0}
