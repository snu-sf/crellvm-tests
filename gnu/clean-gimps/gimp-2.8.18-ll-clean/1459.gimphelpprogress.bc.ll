; ModuleID = './plug-ins/help/gimphelpprogress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHelpProgress = type { %struct.GimpHelpProgressVTable, i8*, %struct._GCancellable* }
%struct.GimpHelpProgressVTable = type { void (i8*, i32, i8*)*, void (i8*)*, void (double, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GCancellablePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__func__.gimp_help_progress_new = private unnamed_addr constant [23 x i8] c"gimp_help_progress_new\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"vtable != NULL\00", align 1
@__func__.gimp_help_progress_free = private unnamed_addr constant [24 x i8] c"gimp_help_progress_free\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"progress != NULL\00", align 1
@__func__.gimp_help_progress_cancel = private unnamed_addr constant [26 x i8] c"gimp_help_progress_cancel\00", align 1
@__func__._gimp_help_progress_start = private unnamed_addr constant [26 x i8] c"_gimp_help_progress_start\00", align 1
@__func__._gimp_help_progress_update = private unnamed_addr constant [27 x i8] c"_gimp_help_progress_update\00", align 1
@__func__._gimp_help_progress_pulse = private unnamed_addr constant [26 x i8] c"_gimp_help_progress_pulse\00", align 1
@__func__._gimp_help_progress_finish = private unnamed_addr constant [27 x i8] c"_gimp_help_progress_finish\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpHelpProgress* @gimp_help_progress_new(%struct.GimpHelpProgressVTable* %vtable, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GimpHelpProgress*, align 8
  %vtable.addr = alloca %struct.GimpHelpProgressVTable*, align 8
  %user_data.addr = alloca i8*, align 8
  %progress = alloca %struct._GimpHelpProgress*, align 8
  store %struct.GimpHelpProgressVTable* %vtable, %struct.GimpHelpProgressVTable** %vtable.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpHelpProgressVTable*, %struct.GimpHelpProgressVTable** %vtable.addr, align 8
  %cmp = icmp ne %struct.GimpHelpProgressVTable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_help_progress_new, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpHelpProgress* null, %struct._GimpHelpProgress** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc0(i64 72)
  %1 = bitcast i8* %call to %struct._GimpHelpProgress*
  store %struct._GimpHelpProgress* %1, %struct._GimpHelpProgress** %progress, align 8
  %2 = load %struct.GimpHelpProgressVTable*, %struct.GimpHelpProgressVTable** %vtable.addr, align 8
  %start = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %2, i32 0, i32 0
  %3 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start, align 8
  %4 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %vtable1 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %4, i32 0, i32 0
  %start2 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable1, i32 0, i32 0
  store void (i8*, i32, i8*)* %3, void (i8*, i32, i8*)** %start2, align 8
  %5 = load %struct.GimpHelpProgressVTable*, %struct.GimpHelpProgressVTable** %vtable.addr, align 8
  %end = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %5, i32 0, i32 1
  %6 = load void (i8*)*, void (i8*)** %end, align 8
  %7 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %vtable3 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %7, i32 0, i32 0
  %end4 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable3, i32 0, i32 1
  store void (i8*)* %6, void (i8*)** %end4, align 8
  %8 = load %struct.GimpHelpProgressVTable*, %struct.GimpHelpProgressVTable** %vtable.addr, align 8
  %set_value = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %8, i32 0, i32 2
  %9 = load void (double, i8*)*, void (double, i8*)** %set_value, align 8
  %10 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %vtable5 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %10, i32 0, i32 0
  %set_value6 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable5, i32 0, i32 2
  store void (double, i8*)* %9, void (double, i8*)** %set_value6, align 8
  %11 = load i8*, i8** %user_data.addr, align 8
  %12 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %user_data7 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %12, i32 0, i32 1
  store i8* %11, i8** %user_data7, align 8
  %13 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  store %struct._GimpHelpProgress* %13, %struct._GimpHelpProgress** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %14 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %retval
  ret %struct._GimpHelpProgress* %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_help_progress_free(%struct._GimpHelpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_help_progress_free, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %1, i32 0, i32 2
  %2 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %tobool = icmp ne %struct._GCancellable* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable2 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %3, i32 0, i32 2
  %4 = load %struct._GCancellable*, %struct._GCancellable** %cancellable2, align 8
  %5 = bitcast %struct._GCancellable* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable3 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %6, i32 0, i32 2
  store %struct._GCancellable* null, %struct._GCancellable** %cancellable3, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  %7 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %8 = bitcast %struct._GimpHelpProgress* %7 to i8*
  call void @g_slice_free1(i64 72, i8* %8)
  br label %do.end.6

do.end.6:                                         ; preds = %if.else, %do.body.5
  ret void
}

declare void @g_object_unref(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_help_progress_cancel(%struct._GimpHelpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_help_progress_cancel, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.3

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %1, i32 0, i32 2
  %2 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %tobool = icmp ne %struct._GCancellable* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable2 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %3, i32 0, i32 2
  %4 = load %struct._GCancellable*, %struct._GCancellable** %cancellable2, align 8
  call void @g_cancellable_cancel(%struct._GCancellable* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1, %do.end
  ret void
}

declare void @g_cancellable_cancel(%struct._GCancellable*) #1

; Function Attrs: nounwind uwtable
define hidden void @_gimp_help_progress_start(%struct._GimpHelpProgress* %progress, %struct._GCancellable* %cancellable, i8* %format, ...) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %cancellable.addr = alloca %struct._GCancellable*, align 8
  %format.addr = alloca i8*, align 8
  %message = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GCancellable* %cancellable, %struct._GCancellable** %cancellable.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__._gimp_help_progress_start, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GCancellable*, %struct._GCancellable** %cancellable.addr, align 8
  %tobool = icmp ne %struct._GCancellable* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GCancellable*, %struct._GCancellable** %cancellable.addr, align 8
  %3 = bitcast %struct._GCancellable* %2 to i8*
  %call = call i8* @g_object_ref(i8* %3)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  %4 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable3 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %4, i32 0, i32 2
  %5 = load %struct._GCancellable*, %struct._GCancellable** %cancellable3, align 8
  %tobool4 = icmp ne %struct._GCancellable* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable6 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %6, i32 0, i32 2
  %7 = load %struct._GCancellable*, %struct._GCancellable** %cancellable6, align 8
  %8 = bitcast %struct._GCancellable* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.2
  %9 = load %struct._GCancellable*, %struct._GCancellable** %cancellable.addr, align 8
  %10 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable8 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %10, i32 0, i32 2
  store %struct._GCancellable* %9, %struct._GCancellable** %cancellable8, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay9 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay9)
  %11 = load i8*, i8** %format.addr, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call11 = call noalias i8* @g_strdup_vprintf(i8* %11, %struct.__va_list_tag* %arraydecay10)
  store i8* %call11, i8** %message, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  %12 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %12, i32 0, i32 0
  %start = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable, i32 0, i32 0
  %13 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start, align 8
  %tobool14 = icmp ne void (i8*, i32, i8*)* %13, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.7
  %14 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable16 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %14, i32 0, i32 0
  %start17 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable16, i32 0, i32 0
  %15 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start17, align 8
  %16 = load i8*, i8** %message, align 8
  %17 = load %struct._GCancellable*, %struct._GCancellable** %cancellable.addr, align 8
  %cmp18 = icmp ne %struct._GCancellable* %17, null
  %conv = zext i1 %cmp18 to i32
  %18 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %18, i32 0, i32 1
  %19 = load i8*, i8** %user_data, align 8
  call void %15(i8* %16, i32 %conv, i8* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.7
  %20 = load i8*, i8** %message, align 8
  call void @g_free(i8* %20)
  br label %return

return:                                           ; preds = %if.end.19, %if.else
  ret void
}

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define hidden void @_gimp_help_progress_update(%struct._GimpHelpProgress* %progress, double %percentage) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %percentage.addr = alloca double, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._gimp_help_progress_update, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.4

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %1, i32 0, i32 0
  %set_value = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable, i32 0, i32 2
  %2 = load void (double, i8*)*, void (double, i8*)** %set_value, align 8
  %tobool = icmp ne void (double, i8*)* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable2 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %3, i32 0, i32 0
  %set_value3 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable2, i32 0, i32 2
  %4 = load void (double, i8*)*, void (double, i8*)** %set_value3, align 8
  %5 = load double, double* %percentage.addr, align 8
  %6 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %6, i32 0, i32 1
  %7 = load i8*, i8** %user_data, align 8
  call void %4(double %5, i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_gimp_help_progress_pulse(%struct._GimpHelpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__._gimp_help_progress_pulse, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  call void @_gimp_help_progress_update(%struct._GimpHelpProgress* %1, double -1.000000e+00)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_gimp_help_progress_finish(%struct._GimpHelpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cmp = icmp ne %struct._GimpHelpProgress* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._gimp_help_progress_finish, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.9

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %1, i32 0, i32 0
  %end = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable, i32 0, i32 1
  %2 = load void (i8*)*, void (i8*)** %end, align 8
  %tobool = icmp ne void (i8*)* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %vtable2 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %3, i32 0, i32 0
  %end3 = getelementptr inbounds %struct.GimpHelpProgressVTable, %struct.GimpHelpProgressVTable* %vtable2, i32 0, i32 1
  %4 = load void (i8*)*, void (i8*)** %end3, align 8
  %5 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %5, i32 0, i32 1
  %6 = load i8*, i8** %user_data, align 8
  call void %4(i8* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  %7 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %7, i32 0, i32 2
  %8 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %tobool5 = icmp ne %struct._GCancellable* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable7 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %9, i32 0, i32 2
  %10 = load %struct._GCancellable*, %struct._GCancellable** %cancellable7, align 8
  %11 = bitcast %struct._GCancellable* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %cancellable8 = getelementptr inbounds %struct._GimpHelpProgress, %struct._GimpHelpProgress* %12, i32 0, i32 2
  store %struct._GCancellable* null, %struct._GCancellable** %cancellable8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6, %if.end.4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
