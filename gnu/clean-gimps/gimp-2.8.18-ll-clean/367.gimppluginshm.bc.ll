; ModuleID = './app/plug-in/gimppluginshm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInShm = type { i32, i8* }
%struct.shmid_ds = type { %struct.ipc_perm, i64, i64, i64, i64, i32, i32, i64, i64, i64 }
%struct.ipc_perm = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"shmat() failed: %s\0ADisabling shared memory tile transport\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"shmget() failed: %s\0ADisabling shared memory tile transport\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_plug_in_shm_new = private unnamed_addr constant [21 x i8] c"gimp_plug_in_shm_new\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"attached shared memory segment ID = %d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_shm_free = private unnamed_addr constant [22 x i8] c"gimp_plug_in_shm_free\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"shm != NULL\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"detached shared memory segment ID = %d\00", align 1
@__func__.gimp_plug_in_shm_get_ID = private unnamed_addr constant [24 x i8] c"gimp_plug_in_shm_get_ID\00", align 1
@__func__.gimp_plug_in_shm_get_addr = private unnamed_addr constant [26 x i8] c"gimp_plug_in_shm_get_addr\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInShm* @gimp_plug_in_shm_new() #0 {
entry:
  %shm = alloca %struct._GimpPlugInShm*, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpPlugInShm*
  store %struct._GimpPlugInShm* %0, %struct._GimpPlugInShm** %shm, align 8
  %1 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %1, i32 0, i32 0
  store i32 -1, i32* %shm_ID, align 4
  %call1 = call i32 @shmget(i32 0, i64 16384, i32 896) #4
  %2 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID2 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %2, i32 0, i32 0
  store i32 %call1, i32* %shm_ID2, align 4
  %3 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID3 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %3, i32 0, i32 0
  %4 = load i32, i32* %shm_ID3, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID4 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %5, i32 0, i32 0
  %6 = load i32, i32* %shm_ID4, align 4
  %call5 = call i8* @shmat(i32 %6, i8* null, i32 0) #4
  %7 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_addr = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %7, i32 0, i32 1
  store i8* %call5, i8** %shm_addr, align 8
  %8 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_addr6 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %8, i32 0, i32 1
  %9 = load i8*, i8** %shm_addr6, align 8
  %cmp7 = icmp eq i8* %9, inttoptr (i64 -1 to i8*)
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %call9 = call i32* @__errno_location() #5
  %10 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %10) #5
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i8* %call10)
  %11 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID11 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %11, i32 0, i32 0
  %12 = load i32, i32* %shm_ID11, align 4
  %call12 = call i32 @shmctl(i32 %12, i32 0, %struct.shmid_ds* null) #4
  %13 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID13 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %13, i32 0, i32 0
  store i32 -1, i32* %shm_ID13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %14 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_addr14 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %14, i32 0, i32 1
  %15 = load i8*, i8** %shm_addr14, align 8
  %cmp15 = icmp ne i8* %15, inttoptr (i64 -1 to i8*)
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %16 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID17 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %16, i32 0, i32 0
  %17 = load i32, i32* %shm_ID17, align 4
  %call18 = call i32 @shmctl(i32 %17, i32 0, %struct.shmid_ds* null) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end
  br label %if.end.22

if.else:                                          ; preds = %entry
  %call20 = call i32* @__errno_location() #5
  %18 = load i32, i32* %call20, align 4
  %call21 = call i8* @g_strerror(i32 %18) #5
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.end.19
  %19 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID23 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %19, i32 0, i32 0
  %20 = load i32, i32* %shm_ID23, align 4
  %cmp24 = icmp eq i32 %20, -1
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %21 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %22 = bitcast %struct._GimpPlugInShm* %21 to i8*
  call void @g_slice_free1(i64 16, i8* %22)
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct._GimpPlugInShm* null, %struct._GimpPlugInShm** %shm, align 8
  br label %if.end.32

if.else.26:                                       ; preds = %if.end.22
  br label %do.body.27

do.body.27:                                       ; preds = %if.else.26
  %23 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %23, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.body.27
  %24 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %shm_ID29 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %24, i32 0, i32 0
  %25 = load i32, i32* %shm_ID29, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_plug_in_shm_new, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %do.body.27
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %do.end
  %26 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  ret %struct._GimpPlugInShm* %26
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind
declare i32 @shmget(i32, i64, i32) #2

; Function Attrs: nounwind
declare i8* @shmat(i32, i8*, i32) #2

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i32 @shmctl(i32, i32, %struct.shmid_ds*) #2

declare void @g_slice_free1(i64, i8*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_shm_free(%struct._GimpPlugInShm* %shm) #0 {
entry:
  %shm.addr = alloca %struct._GimpPlugInShm*, align 8
  store %struct._GimpPlugInShm* %shm, %struct._GimpPlugInShm** %shm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInShm* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_plug_in_shm_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.10

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %shm_ID = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %1, i32 0, i32 0
  %2 = load i32, i32* %shm_ID, align 4
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %shm_addr = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %3, i32 0, i32 1
  %4 = load i8*, i8** %shm_addr, align 8
  %call = call i32 @shmdt(i8* %4) #4
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.3
  %6 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %shm_ID5 = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %6, i32 0, i32 0
  %7 = load i32, i32* %shm_ID5, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_plug_in_shm_free, i32 0, i32 0), i32 281, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i32 %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.3
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %if.end.8

if.end.8:                                         ; preds = %do.end.7, %do.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %8 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %9 = bitcast %struct._GimpPlugInShm* %8 to i8*
  call void @g_slice_free1(i64 16, i8* %9)
  br label %do.end.10

do.end.10:                                        ; preds = %if.else, %do.body.9
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @shmdt(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_shm_get_ID(%struct._GimpPlugInShm* %shm) #0 {
entry:
  %retval = alloca i32, align 4
  %shm.addr = alloca %struct._GimpPlugInShm*, align 8
  store %struct._GimpPlugInShm* %shm, %struct._GimpPlugInShm** %shm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInShm* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_plug_in_shm_get_ID, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %shm_ID = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %1, i32 0, i32 0
  %2 = load i32, i32* %shm_ID, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_shm_get_addr(%struct._GimpPlugInShm* %shm) #0 {
entry:
  %retval = alloca i8*, align 8
  %shm.addr = alloca %struct._GimpPlugInShm*, align 8
  store %struct._GimpPlugInShm* %shm, %struct._GimpPlugInShm** %shm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInShm* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plug_in_shm_get_addr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm.addr, align 8
  %shm_addr = getelementptr inbounds %struct._GimpPlugInShm, %struct._GimpPlugInShm* %1, i32 0, i32 1
  %2 = load i8*, i8** %shm_addr, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
