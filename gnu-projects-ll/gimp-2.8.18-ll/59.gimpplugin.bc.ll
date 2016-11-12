; ModuleID = './libgimp/gimpplugin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_plugin_icon_register = private unnamed_addr constant [26 x i8] c"gimp_plugin_icon_register\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"procedure_name != NULL\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"icon_data != NULL\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"g_ntohl (*((gint32 *) icon_data)) == 0x47646b50\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gimpplugin.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plugin_icon_register(i8* %procedure_name, i32 %icon_type, i8* %icon_data) #0 {
entry:
  %retval = alloca i32, align 4
  %procedure_name.addr = alloca i8*, align 8
  %icon_type.addr = alloca i32, align 4
  %icon_data.addr = alloca i8*, align 8
  %icon_data_length = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i32 %icon_type, i32* %icon_type.addr, align 4
  store i8* %icon_data, i8** %icon_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plugin_icon_register, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %icon_data.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plugin_icon_register, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %icon_type.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %do.end.6, %do.end.6
  %3 = load i8*, i8** %icon_data.addr, align 8
  %call = call i64 @strlen(i8* %3) #3
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %icon_data_length, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %do.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %sw.bb.7
  %4 = load i8*, i8** %icon_data.addr, align 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %and = and i32 %6, 255
  %shl = shl i32 %and, 24
  %7 = load i8*, i8** %icon_data.addr, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %and9 = and i32 %9, 65280
  %shl10 = shl i32 %and9, 8
  %or = or i32 %shl, %shl10
  %10 = load i8*, i8** %icon_data.addr, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %and11 = and i32 %12, 16711680
  %shr = lshr i32 %and11, 8
  %or12 = or i32 %or, %shr
  %13 = load i8*, i8** %icon_data.addr, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %and13 = and i32 %15, -16777216
  %shr14 = lshr i32 %and13, 24
  %or15 = or i32 %or12, %shr14
  %cmp16 = icmp eq i32 %or15, 1197763408
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.8
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plugin_icon_register, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %16 = load i8*, i8** %icon_data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  %17 = bitcast i8* %add.ptr to i32*
  %18 = load i32, i32* %17, align 4
  %and22 = and i32 %18, 255
  %shl23 = shl i32 %and22, 24
  %19 = load i8*, i8** %icon_data.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %19, i64 4
  %20 = bitcast i8* %add.ptr24 to i32*
  %21 = load i32, i32* %20, align 4
  %and25 = and i32 %21, 65280
  %shl26 = shl i32 %and25, 8
  %or27 = or i32 %shl23, %shl26
  %22 = load i8*, i8** %icon_data.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = bitcast i8* %add.ptr28 to i32*
  %24 = load i32, i32* %23, align 4
  %and29 = and i32 %24, 16711680
  %shr30 = lshr i32 %and29, 8
  %or31 = or i32 %or27, %shr30
  %25 = load i8*, i8** %icon_data.addr, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %25, i64 4
  %26 = bitcast i8* %add.ptr32 to i32*
  %27 = load i32, i32* %26, align 4
  %and33 = and i32 %27, -16777216
  %shr34 = lshr i32 %and33, 24
  %or35 = or i32 %or31, %shr34
  store i32 %or35, i32* %icon_data_length, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.6
  br label %do.body.36

do.body.36:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plugin_icon_register, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

do.end.37:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.37, %do.end.21, %sw.bb
  %28 = load i8*, i8** %procedure_name.addr, align 8
  %29 = load i32, i32* %icon_type.addr, align 4
  %30 = load i32, i32* %icon_data_length, align 4
  %31 = load i8*, i8** %icon_data.addr, align 8
  %call38 = call i32 @_gimp_plugin_icon_register(i8* %28, i32 %29, i32 %30, i8* %31)
  store i32 %call38, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body.36, %if.else.19, %if.else.4, %if.else
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #1

declare hidden i32 @_gimp_plugin_icon_register(i8*, i32, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
