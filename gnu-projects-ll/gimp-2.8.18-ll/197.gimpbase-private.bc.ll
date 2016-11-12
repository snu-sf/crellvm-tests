; ModuleID = './libgimpbase/gimpbase-private.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpUnitVtable = type { i32 ()*, i32 ()*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i32)*, void (i32, i32)*, double (i32)*, i32 (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, void ()*, void ()*, void ()*, void ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_gimp_unit_vtable = global %struct._GimpUnitVtable zeroinitializer, align 8
@gimp_base_init.gimp_base_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_base_init = private unnamed_addr constant [15 x i8] c"gimp_base_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"vtable != NULL\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"gimp_base_init() must only be called once!\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_base_init(%struct._GimpUnitVtable* %vtable) #0 {
entry:
  %vtable.addr = alloca %struct._GimpUnitVtable*, align 8
  store %struct._GimpUnitVtable* %vtable, %struct._GimpUnitVtable** %vtable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitVtable*, %struct._GimpUnitVtable** %vtable.addr, align 8
  %cmp = icmp ne %struct._GimpUnitVtable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_base_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* @gimp_base_init.gimp_base_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  %2 = load %struct._GimpUnitVtable*, %struct._GimpUnitVtable** %vtable.addr, align 8
  %3 = bitcast %struct._GimpUnitVtable* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpUnitVtable* @_gimp_unit_vtable to i8*), i8* %3, i64 128, i32 8, i1 false)
  store i32 1, i32* @gimp_base_init.gimp_base_initialized, align 4
  br label %return

return:                                           ; preds = %if.end.2, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
