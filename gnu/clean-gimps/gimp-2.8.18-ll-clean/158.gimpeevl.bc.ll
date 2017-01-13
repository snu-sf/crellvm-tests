; ModuleID = './libgimpwidgets/gimpeevl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpEevlQuantity = type { double, i32 }
%struct._GError = type { i32, i32, i8* }
%struct.GimpEevl = type { i8*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i8*, %struct.GimpEevlToken, i8*, [1 x %struct.__jmp_buf_tag], i8* }
%struct.GimpEevlToken = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_eevl_evaluate = private unnamed_addr constant [19 x i8] c"gimp_eevl_evaluate\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"g_utf8_validate (string, -1, NULL)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unit_resolver_proc != NULL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"result != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@g_ascii_table = external constant i16*, align 8
@g_utf8_skip = external constant i8*, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Dimension missmatch during addition\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Expected number or '('\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Unit was not resolved\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Unexpected token\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_eevl_evaluate(i8* %string, i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %unit_resolver_proc, %struct.GimpEevlQuantity* %result, i8* %data, i8** %error_pos, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %unit_resolver_proc.addr = alloca i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, align 8
  %result.addr = alloca %struct.GimpEevlQuantity*, align 8
  %data.addr = alloca i8*, align 8
  %error_pos.addr = alloca i8**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %eva = alloca %struct.GimpEevl, align 8
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %unit_resolver_proc, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc.addr, align 8
  store %struct.GimpEevlQuantity* %result, %struct.GimpEevlQuantity** %result.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8** %error_pos, i8*** %error_pos.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i32 @g_utf8_validate(i8* %0, i64 -1, i8** null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_eevl_evaluate, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc.addr, align 8
  %cmp = icmp ne i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_eevl_evaluate, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %cmp7 = icmp ne %struct.GimpEevlQuantity* %2, null
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_eevl_evaluate, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp13 = icmp eq %struct._GError** %3, null
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.12
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  %cmp14 = icmp eq %struct._GError* %5, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_eevl_evaluate, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %6 = load i8*, i8** %string.addr, align 8
  %7 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  call void @gimp_eevl_init(%struct.GimpEevl* %eva, i8* %6, i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %7, i8* %8)
  %catcher = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %eva, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %catcher, i32 0, i32 0
  %call19 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #8
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.23, label %if.then.21

if.then.21:                                       ; preds = %do.end.18
  %9 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %call22 = call { double, i32 } @gimp_eevl_complete(%struct.GimpEevl* %eva)
  %10 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %11 = getelementptr { double, i32 }, { double, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { double, i32 } %call22, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, i32 }, { double, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { double, i32 } %call22, 1
  store i32 %14, i32* %13, align 8
  %15 = bitcast %struct.GimpEevlQuantity* %9 to i8*
  %16 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

if.else.23:                                       ; preds = %do.end.18
  %17 = load i8**, i8*** %error_pos.addr, align 8
  %tobool24 = icmp ne i8** %17, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else.23
  %start_of_current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %eva, i32 0, i32 4
  %18 = load i8*, i8** %start_of_current_token, align 8
  %19 = load i8**, i8*** %error_pos.addr, align 8
  store i8* %18, i8** %19, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else.23
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_widgets_error_quark() #9
  %error_message = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %eva, i32 0, i32 6
  %21 = load i8*, i8** %error_message, align 8
  call void @g_set_error_literal(%struct._GError** %20, i32 %call27, i32 0, i8* %21)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.21, %if.else.16, %if.else.9, %if.else.3, %if.else
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_init(%struct.GimpEevl* %eva, i8* %string, i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %unit_resolver_proc, i8* %data) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %string.addr = alloca i8*, align 8
  %unit_resolver_proc.addr = alloca i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %unit_resolver_proc, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string1 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 0
  store i8* %0, i8** %string1, align 8
  %2 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc.addr, align 8
  %3 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %unit_resolver_proc2 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %3, i32 0, i32 1
  store i32 (i8*, %struct.GimpEevlQuantity*, i8*)* %2, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc2, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %data3 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %5, i32 0, i32 2
  store i8* %4, i8** %data3, align 8
  %6 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %6, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  store i32 50000, i32* %type, align 4
  %7 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %error_message = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %7, i32 0, i32 6
  store i8* null, i8** %error_message, align 8
  %8 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_lex(%struct.GimpEevl* %8)
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #2

; Function Attrs: nounwind uwtable
define internal { double, i32 } @gimp_eevl_complete(%struct.GimpEevl* %eva) #0 {
entry:
  %retval = alloca %struct.GimpEevlQuantity, align 8
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %result = alloca %struct.GimpEevlQuantity, align 8
  %default_unit_factor = alloca %struct.GimpEevlQuantity, align 8
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = bitcast %struct.GimpEevlQuantity* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call = call i32 @gimp_eevl_accept(%struct.GimpEevl* %1, i32 50000, %struct.GimpEevlToken* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %3 = bitcast %struct.GimpEevlQuantity* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call1 = call { double, i32 } @gimp_eevl_expression(%struct.GimpEevl* %4)
  %5 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %6 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 0
  %7 = extractvalue { double, i32 } %call1, 0
  store double %7, double* %6, align 8
  %8 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 1
  %9 = extractvalue { double, i32 } %call1, 1
  store i32 %9, i32* %8, align 8
  %10 = bitcast %struct.GimpEevlQuantity* %result to i8*
  %11 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_expect(%struct.GimpEevl* %12, i32 50000, %struct.GimpEevlToken* null)
  %13 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %unit_resolver_proc = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %13, i32 0, i32 1
  %14 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc, align 8
  %15 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %data = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %15, i32 0, i32 2
  %16 = load i8*, i8** %data, align 8
  %call2 = call i32 %14(i8* null, %struct.GimpEevlQuantity* %default_unit_factor, i8* %16)
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %17 = load i32, i32* %dimension, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %dimension3 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %18 = load i32, i32* %dimension3, align 4
  %cmp4 = icmp ne i32 %18, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %land.lhs.true
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 0
  %19 = load double, double* %value, align 8
  %value6 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 0
  %20 = load double, double* %value6, align 8
  %div = fdiv double %20, %19
  store double %div, double* %value6, align 8
  %dimension7 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %21 = load i32, i32* %dimension7, align 4
  %dimension8 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  store i32 %21, i32* %dimension8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %22 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %23 = bitcast %struct.GimpEevlQuantity* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %24 = bitcast %struct.GimpEevlQuantity* %retval to { double, i32 }*
  %25 = load { double, i32 }, { double, i32 }* %24, align 8
  ret { double, i32 } %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_widgets_error_quark() #4

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_lex(%struct.GimpEevl* %eva) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %s = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %value = alloca double, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_move_past_whitespace(%struct.GimpEevl* %0)
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 0
  %2 = load i8*, i8** %string, align 8
  store i8* %2, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %4 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %start_of_current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %4, i32 0, i32 4
  store i8* %3, i8** %start_of_current_token, align 8
  %5 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %8, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  store i32 50000, i32* %type, align 4
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %s, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.else
  %11 = load i8*, i8** %s, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %lor.lhs.false.6, %if.else
  %13 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %14 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  call void @gimp_eevl_lex_accept_count(%struct.GimpEevl* %13, i32 1, i32 %conv13)
  br label %if.end.39

if.else.14:                                       ; preds = %lor.lhs.false.6
  store i8* null, i8** %endptr, align 8
  %16 = load i8*, i8** %s, align 8
  %call = call double @g_strtod(i8* %16, i8** %endptr)
  store double %call, double* %value, align 8
  %17 = load i8*, i8** %endptr, align 8
  %tobool15 = icmp ne i8* %17, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.else.14
  %18 = load i8*, i8** %endptr, align 8
  %19 = load i8*, i8** %s, align 8
  %cmp16 = icmp ne i8* %18, %19
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %land.lhs.true
  %20 = load double, double* %value, align 8
  %21 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token19 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %21, i32 0, i32 3
  %value20 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token19, i32 0, i32 1
  %fl = bitcast %union.anon* %value20 to double*
  store double %20, double* %fl, align 8
  %22 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %23 = load i8*, i8** %endptr, align 8
  call void @gimp_eevl_lex_accept_to(%struct.GimpEevl* %22, i8* %23, i32 30000)
  br label %if.end.38

if.else.21:                                       ; preds = %land.lhs.true, %if.else.14
  %24 = load i8*, i8** %s, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %25 to i32
  %call24 = call i32 @gimp_eevl_unit_identifier_start(i32 %conv23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.35

if.then.26:                                       ; preds = %if.else.21
  %26 = load i8*, i8** %s, align 8
  %27 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token27 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %27, i32 0, i32 3
  %value28 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token27, i32 0, i32 1
  %28 = bitcast %union.anon* %value28 to %struct.anon*
  %c = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* %26, i8** %c, align 8
  %29 = load i8*, i8** %s, align 8
  %call29 = call i32 @gimp_eevl_unit_identifier_size(i8* %29, i32 0)
  %30 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token30 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %30, i32 0, i32 3
  %value31 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token30, i32 0, i32 1
  %31 = bitcast %union.anon* %value31 to %struct.anon*
  %size = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  store i32 %call29, i32* %size, align 4
  %32 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %33 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token32 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %33, i32 0, i32 3
  %value33 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token32, i32 0, i32 1
  %34 = bitcast %union.anon* %value33 to %struct.anon*
  %size34 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1
  %35 = load i32, i32* %size34, align 4
  call void @gimp_eevl_lex_accept_count(%struct.GimpEevl* %32, i32 %35, i32 30001)
  br label %if.end

if.else.35:                                       ; preds = %if.else.21
  %36 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %37 = load i8*, i8** %s, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %38 to i32
  call void @gimp_eevl_lex_accept_count(%struct.GimpEevl* %36, i32 1, i32 %conv37)
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.26
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %if.then.18
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.11
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_move_past_whitespace(%struct.GimpEevl* %eva) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %0, i32 0, i32 0
  %1 = load i8*, i8** %string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string1 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %2, i32 0, i32 0
  %3 = load i8*, i8** %string1, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %5 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string3 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %7, i32 0, i32 0
  %8 = load i8*, i8** %string3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %string3, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_lex_accept_count(%struct.GimpEevl* %eva, i32 %count, i32 %token_type) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %count.addr = alloca i32, align 4
  %token_type.addr = alloca i32, align 4
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %token_type, i32* %token_type.addr, align 4
  %0 = load i32, i32* %token_type.addr, align 4
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  store i32 %0, i32* %type, align 4
  %2 = load i32, i32* %count.addr, align 4
  %3 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %3, i32 0, i32 0
  %4 = load i8*, i8** %string, align 8
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %string, align 8
  ret void
}

declare double @g_strtod(i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_lex_accept_to(%struct.GimpEevl* %eva, i8* %to, i32 %token_type) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %to.addr = alloca i8*, align 8
  %token_type.addr = alloca i32, align 4
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  store i32 %token_type, i32* %token_type.addr, align 4
  %0 = load i32, i32* %token_type.addr, align 4
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  store i32 %0, i32* %type, align 4
  %2 = load i8*, i8** %to.addr, align 8
  %3 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %string = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %3, i32 0, i32 0
  store i8* %2, i8** %string, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_eevl_unit_identifier_start(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @g_unichar_isalpha(i32 %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 37
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 39
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_eevl_unit_identifier_size(i8* %string, i32 %start_offset) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %start_offset.addr = alloca i32, align 4
  %start = alloca i8*, align 8
  %s = alloca i8*, align 8
  %c = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %start_offset, i32* %start_offset.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i32, i32* %start_offset.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @g_utf8_offset_to_pointer(i8* %0, i64 %conv) #10
  store i8* %call, i8** %start, align 8
  %2 = load i8*, i8** %start, align 8
  store i8* %2, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %call1 = call i32 @g_utf8_get_char(i8* %3) #10
  store i32 %call1, i32* %c, align 4
  store i32 0, i32* %length, align 4
  %4 = load i32, i32* %c, align 4
  %call2 = call i32 @gimp_eevl_unit_identifier_start(i32 %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %s, align 8
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %9 to i32
  %idx.ext = sext i32 %conv3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %10 = load i8*, i8** %s, align 8
  %call4 = call i32 @g_utf8_get_char(i8* %10) #10
  store i32 %call4, i32* %c, align 4
  %11 = load i32, i32* %length, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %12 = load i32, i32* %c, align 4
  %call5 = call i32 @gimp_eevl_unit_identifier_continue(i32 %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %s, align 8
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %idxprom7 = zext i8 %15 to i64
  %16 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %17 to i32
  %idx.ext10 = sext i32 %conv9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 %idx.ext10
  store i8* %add.ptr11, i8** %s, align 8
  %18 = load i8*, i8** %s, align 8
  %call12 = call i32 @g_utf8_get_char(i8* %18) #10
  store i32 %call12, i32* %c, align 4
  %19 = load i32, i32* %length, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %length, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %20 = load i8*, i8** %start, align 8
  %21 = load i32, i32* %length, align 4
  %conv14 = sext i32 %21 to i64
  %call15 = call i8* @g_utf8_offset_to_pointer(i8* %20, i64 %conv14) #10
  %22 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv16
}

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isalpha(i32) #4

; Function Attrs: nounwind readonly
declare i8* @g_utf8_offset_to_pointer(i8*, i64) #5

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_eevl_unit_identifier_continue(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @gimp_eevl_unit_identifier_start(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @g_unichar_isdigit(i32 %1) #9
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isdigit(i32) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_eevl_accept(%struct.GimpEevl* %eva, i32 %token_type, %struct.GimpEevlToken* %consumed_token) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %token_type.addr = alloca i32, align 4
  %consumed_token.addr = alloca %struct.GimpEevlToken*, align 8
  %existed = alloca i32, align 4
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i32 %token_type, i32* %token_type.addr, align 4
  store %struct.GimpEevlToken* %consumed_token, %struct.GimpEevlToken** %consumed_token.addr, align 8
  store i32 0, i32* %existed, align 4
  %0 = load i32, i32* %token_type.addr, align 4
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %token_type.addr, align 4
  %cmp1 = icmp eq i32 %3, 40000
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %existed, align 4
  %4 = load %struct.GimpEevlToken*, %struct.GimpEevlToken** %consumed_token.addr, align 8
  %tobool = icmp ne %struct.GimpEevlToken* %4, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.GimpEevlToken*, %struct.GimpEevlToken** %consumed_token.addr, align 8
  %6 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token3 = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %6, i32 0, i32 3
  %7 = bitcast %struct.GimpEevlToken* %5 to i8*
  %8 = bitcast %struct.GimpEevlToken* %current_token3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_lex(%struct.GimpEevl* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %lor.lhs.false
  %10 = load i32, i32* %existed, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal { double, i32 } @gimp_eevl_expression(%struct.GimpEevl* %eva) #0 {
entry:
  %retval = alloca %struct.GimpEevlQuantity, align 8
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %subtract = alloca i32, align 4
  %evaluated_terms = alloca %struct.GimpEevlQuantity, align 8
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  %new_term = alloca %struct.GimpEevlQuantity, align 8
  %default_unit_factor = alloca %struct.GimpEevlQuantity, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call = call { double, i32 } @gimp_eevl_term(%struct.GimpEevl* %0)
  %1 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %2 = getelementptr { double, i32 }, { double, i32 }* %1, i32 0, i32 0
  %3 = extractvalue { double, i32 } %call, 0
  store double %3, double* %2, align 8
  %4 = getelementptr { double, i32 }, { double, i32 }* %1, i32 0, i32 1
  %5 = extractvalue { double, i32 } %call, 1
  store i32 %5, i32* %4, align 8
  %6 = bitcast %struct.GimpEevlQuantity* %evaluated_terms to i8*
  %7 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  store i32 0, i32* %subtract, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call1 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %8, i32 43, %struct.GimpEevlToken* null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %9 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call2 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %9, i32 45, %struct.GimpEevlToken* null)
  store i32 %call2, i32* %subtract, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %10 = phi i1 [ true, %for.cond ], [ %tobool3, %lor.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %11 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call4 = call { double, i32 } @gimp_eevl_term(%struct.GimpEevl* %11)
  %12 = bitcast %struct.GimpEevlQuantity* %new_term to { double, i32 }*
  %13 = getelementptr { double, i32 }, { double, i32 }* %12, i32 0, i32 0
  %14 = extractvalue { double, i32 } %call4, 0
  store double %14, double* %13, align 8
  %15 = getelementptr { double, i32 }, { double, i32 }* %12, i32 0, i32 1
  %16 = extractvalue { double, i32 } %call4, 1
  store i32 %16, i32* %15, align 8
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 1
  %17 = load i32, i32* %dimension, align 4
  %dimension5 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 1
  %18 = load i32, i32* %dimension5, align 4
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %for.body
  %19 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %unit_resolver_proc = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %19, i32 0, i32 1
  %20 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc, align 8
  %21 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %data = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %21, i32 0, i32 2
  %22 = load i8*, i8** %data, align 8
  %call6 = call i32 %20(i8* null, %struct.GimpEevlQuantity* %default_unit_factor, i8* %22)
  %dimension7 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 1
  %23 = load i32, i32* %dimension7, align 4
  %cmp8 = icmp eq i32 %23, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %dimension9 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 1
  %24 = load i32, i32* %dimension9, align 4
  %dimension10 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %25 = load i32, i32* %dimension10, align 4
  %cmp11 = icmp eq i32 %24, %25
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 0
  %26 = load double, double* %value, align 8
  %value13 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 0
  %27 = load double, double* %value13, align 8
  %div = fdiv double %27, %26
  store double %div, double* %value13, align 8
  %dimension14 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %28 = load i32, i32* %dimension14, align 4
  %dimension15 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 1
  store i32 %28, i32* %dimension15, align 4
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %if.then
  %dimension16 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 1
  %29 = load i32, i32* %dimension16, align 4
  %cmp17 = icmp eq i32 %29, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.28

land.lhs.true.18:                                 ; preds = %if.else
  %dimension19 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 1
  %30 = load i32, i32* %dimension19, align 4
  %dimension20 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %31 = load i32, i32* %dimension20, align 4
  %cmp21 = icmp eq i32 %30, %31
  br i1 %cmp21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %land.lhs.true.18
  %value23 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 0
  %32 = load double, double* %value23, align 8
  %value24 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 0
  %33 = load double, double* %value24, align 8
  %div25 = fdiv double %33, %32
  store double %div25, double* %value24, align 8
  %dimension26 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %default_unit_factor, i32 0, i32 1
  %34 = load i32, i32* %dimension26, align 4
  %dimension27 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 1
  store i32 %34, i32* %dimension27, align 4
  br label %if.end

if.else.28:                                       ; preds = %land.lhs.true.18, %if.else
  %35 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_error(%struct.GimpEevl* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.12
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.body
  %36 = load i32, i32* %subtract, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %value32 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 0
  %37 = load double, double* %value32, align 8
  %sub = fsub double -0.000000e+00, %37
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %value33 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_term, i32 0, i32 0
  %38 = load double, double* %value33, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %38, %cond.false ]
  %value34 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_terms, i32 0, i32 0
  %39 = load double, double* %value34, align 8
  %add = fadd double %39, %cond
  store double %add, double* %value34, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  store i32 0, i32* %subtract, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %40 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %41 = bitcast %struct.GimpEevlQuantity* %evaluated_terms to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %42 = bitcast %struct.GimpEevlQuantity* %retval to { double, i32 }*
  %43 = load { double, i32 }, { double, i32 }* %42, align 8
  ret { double, i32 } %43
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_expect(%struct.GimpEevl* %eva, i32 %token_type, %struct.GimpEevlToken* %value) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %token_type.addr = alloca i32, align 4
  %value.addr = alloca %struct.GimpEevlToken*, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i32 %token_type, i32* %token_type.addr, align 4
  store %struct.GimpEevlToken* %value, %struct.GimpEevlToken** %value.addr, align 8
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %1 = load i32, i32* %token_type.addr, align 4
  %2 = load %struct.GimpEevlToken*, %struct.GimpEevlToken** %value.addr, align 8
  %call = call i32 @gimp_eevl_accept(%struct.GimpEevl* %0, i32 %1, %struct.GimpEevlToken* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_error(%struct.GimpEevl* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal { double, i32 } @gimp_eevl_term(%struct.GimpEevl* %eva) #0 {
entry:
  %retval = alloca %struct.GimpEevlQuantity, align 8
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %division = alloca i32, align 4
  %evaluated_signed_factors = alloca %struct.GimpEevlQuantity, align 8
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  %new_signed_factor = alloca %struct.GimpEevlQuantity, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call = call { double, i32 } @gimp_eevl_signed_factor(%struct.GimpEevl* %0)
  %1 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %2 = getelementptr { double, i32 }, { double, i32 }* %1, i32 0, i32 0
  %3 = extractvalue { double, i32 } %call, 0
  store double %3, double* %2, align 8
  %4 = getelementptr { double, i32 }, { double, i32 }* %1, i32 0, i32 1
  %5 = extractvalue { double, i32 } %call, 1
  store i32 %5, i32* %4, align 8
  %6 = bitcast %struct.GimpEevlQuantity* %evaluated_signed_factors to i8*
  %7 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  store i32 0, i32* %division, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call1 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %8, i32 42, %struct.GimpEevlToken* null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %9 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call2 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %9, i32 47, %struct.GimpEevlToken* null)
  store i32 %call2, i32* %division, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %10 = phi i1 [ true, %for.cond ], [ %tobool3, %lor.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %11 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call4 = call { double, i32 } @gimp_eevl_signed_factor(%struct.GimpEevl* %11)
  %12 = bitcast %struct.GimpEevlQuantity* %new_signed_factor to { double, i32 }*
  %13 = getelementptr { double, i32 }, { double, i32 }* %12, i32 0, i32 0
  %14 = extractvalue { double, i32 } %call4, 0
  store double %14, double* %13, align 8
  %15 = getelementptr { double, i32 }, { double, i32 }* %12, i32 0, i32 1
  %16 = extractvalue { double, i32 } %call4, 1
  store i32 %16, i32* %15, align 8
  %17 = load i32, i32* %division, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_signed_factor, i32 0, i32 0
  %18 = load double, double* %value, align 8
  %value6 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_signed_factors, i32 0, i32 0
  %19 = load double, double* %value6, align 8
  %div = fdiv double %19, %18
  store double %div, double* %value6, align 8
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_signed_factor, i32 0, i32 1
  %20 = load i32, i32* %dimension, align 4
  %dimension7 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_signed_factors, i32 0, i32 1
  %21 = load i32, i32* %dimension7, align 4
  %sub = sub nsw i32 %21, %20
  store i32 %sub, i32* %dimension7, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %value8 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_signed_factor, i32 0, i32 0
  %22 = load double, double* %value8, align 8
  %value9 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_signed_factors, i32 0, i32 0
  %23 = load double, double* %value9, align 8
  %mul = fmul double %23, %22
  store double %mul, double* %value9, align 8
  %dimension10 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %new_signed_factor, i32 0, i32 1
  %24 = load i32, i32* %dimension10, align 4
  %dimension11 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_signed_factors, i32 0, i32 1
  %25 = load i32, i32* %dimension11, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %dimension11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  store i32 0, i32* %division, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %26 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %27 = bitcast %struct.GimpEevlQuantity* %evaluated_signed_factors to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = bitcast %struct.GimpEevlQuantity* %retval to { double, i32 }*
  %29 = load { double, i32 }, { double, i32 }* %28, align 8
  ret { double, i32 } %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eevl_error(%struct.GimpEevl* %eva, i8* %msg) #0 {
entry:
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %msg.addr = alloca i8*, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %error_message = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %1, i32 0, i32 6
  store i8* %0, i8** %error_message, align 8
  %2 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %catcher = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %catcher, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal { double, i32 } @gimp_eevl_signed_factor(%struct.GimpEevl* %eva) #0 {
entry:
  %retval = alloca %struct.GimpEevlQuantity, align 8
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %result = alloca %struct.GimpEevlQuantity, align 8
  %negate = alloca i32, align 4
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call = call i32 @gimp_eevl_accept(%struct.GimpEevl* %0, i32 43, %struct.GimpEevlToken* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call1 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %1, i32 45, %struct.GimpEevlToken* null)
  store i32 %call1, i32* %negate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call2 = call { double, i32 } @gimp_eevl_factor(%struct.GimpEevl* %2)
  %3 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %4 = getelementptr { double, i32 }, { double, i32 }* %3, i32 0, i32 0
  %5 = extractvalue { double, i32 } %call2, 0
  store double %5, double* %4, align 8
  %6 = getelementptr { double, i32 }, { double, i32 }* %3, i32 0, i32 1
  %7 = extractvalue { double, i32 } %call2, 1
  store i32 %7, i32* %6, align 8
  %8 = bitcast %struct.GimpEevlQuantity* %result to i8*
  %9 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load i32, i32* %negate, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 0
  %11 = load double, double* %value, align 8
  %sub = fsub double -0.000000e+00, %11
  %value5 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 0
  store double %sub, double* %value5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %13 = bitcast %struct.GimpEevlQuantity* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %14 = bitcast %struct.GimpEevlQuantity* %retval to { double, i32 }*
  %15 = load { double, i32 }, { double, i32 }* %14, align 8
  ret { double, i32 } %15
}

; Function Attrs: nounwind uwtable
define internal { double, i32 } @gimp_eevl_factor(%struct.GimpEevl* %eva) #0 {
entry:
  %retval = alloca %struct.GimpEevlQuantity, align 8
  %eva.addr = alloca %struct.GimpEevl*, align 8
  %evaluated_factor = alloca %struct.GimpEevlQuantity, align 8
  %consumed_token = alloca %struct.GimpEevlToken, align 8
  %coerce = alloca %struct.GimpEevlQuantity, align 8
  %identifier = alloca i8*, align 8
  %result = alloca %struct.GimpEevlQuantity, align 8
  store %struct.GimpEevl* %eva, %struct.GimpEevl** %eva.addr, align 8
  %0 = bitcast %struct.GimpEevlQuantity* %evaluated_factor to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call = call i32 @gimp_eevl_accept(%struct.GimpEevl* %1, i32 30000, %struct.GimpEevlToken* %consumed_token)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %consumed_token, i32 0, i32 1
  %fl = bitcast %union.anon* %value to double*
  %2 = load double, double* %fl, align 8
  %value1 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_factor, i32 0, i32 0
  store double %2, double* %value1, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call2 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %3, i32 40, %struct.GimpEevlToken* null)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %4 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call5 = call { double, i32 } @gimp_eevl_expression(%struct.GimpEevl* %4)
  %5 = bitcast %struct.GimpEevlQuantity* %coerce to { double, i32 }*
  %6 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 0
  %7 = extractvalue { double, i32 } %call5, 0
  store double %7, double* %6, align 8
  %8 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 1
  %9 = extractvalue { double, i32 } %call5, 1
  store i32 %9, i32* %8, align 8
  %10 = bitcast %struct.GimpEevlQuantity* %evaluated_factor to i8*
  %11 = bitcast %struct.GimpEevlQuantity* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_expect(%struct.GimpEevl* %12, i32 41, %struct.GimpEevlToken* null)
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %13 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_error(%struct.GimpEevl* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %14 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %current_token = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %14, i32 0, i32 3
  %type = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %current_token, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %15, 30001
  br i1 %cmp, label %if.then.8, label %if.end.27

if.then.8:                                        ; preds = %if.end.7
  %16 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %call9 = call i32 @gimp_eevl_accept(%struct.GimpEevl* %16, i32 40000, %struct.GimpEevlToken* %consumed_token)
  %value10 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %consumed_token, i32 0, i32 1
  %17 = bitcast %union.anon* %value10 to %struct.anon*
  %size = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %18 = load i32, i32* %size, align 4
  %add = add nsw i32 %18, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %19 = alloca i8, i64 %mul
  store i8* %19, i8** %identifier, align 8
  %20 = load i8*, i8** %identifier, align 8
  %value11 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %consumed_token, i32 0, i32 1
  %21 = bitcast %union.anon* %value11 to %struct.anon*
  %c = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %22 = load i8*, i8** %c, align 8
  %value12 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %consumed_token, i32 0, i32 1
  %23 = bitcast %union.anon* %value12 to %struct.anon*
  %size13 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1
  %24 = load i32, i32* %size13, align 4
  %conv14 = sext i32 %24 to i64
  %call15 = call i8* @strncpy(i8* %20, i8* %22, i64 %conv14) #3
  %value16 = getelementptr inbounds %struct.GimpEevlToken, %struct.GimpEevlToken* %consumed_token, i32 0, i32 1
  %25 = bitcast %union.anon* %value16 to %struct.anon*
  %size17 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %26 = load i32, i32* %size17, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i8*, i8** %identifier, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %28 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %unit_resolver_proc = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %28, i32 0, i32 1
  %29 = load i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)** %unit_resolver_proc, align 8
  %30 = load i8*, i8** %identifier, align 8
  %31 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  %data = getelementptr inbounds %struct.GimpEevl, %struct.GimpEevl* %31, i32 0, i32 2
  %32 = load i8*, i8** %data, align 8
  %call18 = call i32 %29(i8* %30, %struct.GimpEevlQuantity* %result, i8* %32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %if.then.8
  %value21 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 0
  %33 = load double, double* %value21, align 8
  %value22 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_factor, i32 0, i32 0
  %34 = load double, double* %value22, align 8
  %div = fdiv double %34, %33
  store double %div, double* %value22, align 8
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %35 = load i32, i32* %dimension, align 4
  %dimension23 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %evaluated_factor, i32 0, i32 1
  %36 = load i32, i32* %dimension23, align 4
  %add24 = add nsw i32 %36, %35
  store i32 %add24, i32* %dimension23, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.8
  %37 = load %struct.GimpEevl*, %struct.GimpEevl** %eva.addr, align 8
  call void @gimp_eevl_error(%struct.GimpEevl* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.7
  %38 = bitcast %struct.GimpEevlQuantity* %retval to i8*
  %39 = bitcast %struct.GimpEevlQuantity* %evaluated_factor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %40 = bitcast %struct.GimpEevlQuantity* %retval to { double, i32 }*
  %41 = load { double, i32 }, { double, i32 }* %40, align 8
  ret { double, i32 } %41
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #6

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind returns_twice }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
