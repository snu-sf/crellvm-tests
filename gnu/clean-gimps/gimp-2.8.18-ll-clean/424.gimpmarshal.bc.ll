; ModuleID = './app/core/gimpmarshal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GCClosure = type { %struct._GClosure, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_marshal_BOOLEAN__BOOLEAN = private unnamed_addr constant [30 x i8] c"gimp_marshal_BOOLEAN__BOOLEAN\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"return_value != NULL\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"n_param_values == 2\00", align 1
@__func__.gimp_marshal_BOOLEAN__ENUM_INT = private unnamed_addr constant [31 x i8] c"gimp_marshal_BOOLEAN__ENUM_INT\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1
@__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER = private unnamed_addr constant [37 x i8] c"gimp_marshal_BOOLEAN__OBJECT_POINTER\00", align 1
@__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING = private unnamed_addr constant [44 x i8] c"gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"n_param_values == 4\00", align 1
@__func__.gimp_marshal_BOOLEAN__STRING = private unnamed_addr constant [29 x i8] c"gimp_marshal_BOOLEAN__STRING\00", align 1
@__func__.gimp_marshal_BOOLEAN__STRING_FLAGS = private unnamed_addr constant [35 x i8] c"gimp_marshal_BOOLEAN__STRING_FLAGS\00", align 1
@__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT = private unnamed_addr constant [43 x i8] c"gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"n_param_values == 6\00", align 1
@__func__.gimp_marshal_VOID__BOXED_ENUM = private unnamed_addr constant [30 x i8] c"gimp_marshal_VOID__BOXED_ENUM\00", align 1
@__func__.gimp_marshal_VOID__DOUBLE_DOUBLE = private unnamed_addr constant [33 x i8] c"gimp_marshal_VOID__DOUBLE_DOUBLE\00", align 1
@__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE = private unnamed_addr constant [47 x i8] c"gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"n_param_values == 5\00", align 1
@__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT = private unnamed_addr constant [39 x i8] c"gimp_marshal_VOID__ENUM_ENUM_BOXED_INT\00", align 1
@__func__.gimp_marshal_VOID__ENUM_INT = private unnamed_addr constant [28 x i8] c"gimp_marshal_VOID__ENUM_INT\00", align 1
@__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN = private unnamed_addr constant [36 x i8] c"gimp_marshal_VOID__ENUM_INT_BOOLEAN\00", align 1
@__func__.gimp_marshal_VOID__ENUM_OBJECT = private unnamed_addr constant [31 x i8] c"gimp_marshal_VOID__ENUM_OBJECT\00", align 1
@__func__.gimp_marshal_VOID__ENUM_POINTER = private unnamed_addr constant [32 x i8] c"gimp_marshal_VOID__ENUM_POINTER\00", align 1
@__func__.gimp_marshal_VOID__INT_INT = private unnamed_addr constant [27 x i8] c"gimp_marshal_VOID__INT_INT\00", align 1
@__func__.gimp_marshal_VOID__INT_INT_INT_INT = private unnamed_addr constant [35 x i8] c"gimp_marshal_VOID__INT_INT_INT_INT\00", align 1
@__func__.gimp_marshal_VOID__OBJECT_BOOLEAN = private unnamed_addr constant [34 x i8] c"gimp_marshal_VOID__OBJECT_BOOLEAN\00", align 1
@__func__.gimp_marshal_VOID__OBJECT_INT = private unnamed_addr constant [30 x i8] c"gimp_marshal_VOID__OBJECT_INT\00", align 1
@__func__.gimp_marshal_VOID__OBJECT_OBJECT = private unnamed_addr constant [33 x i8] c"gimp_marshal_VOID__OBJECT_OBJECT\00", align 1
@__func__.gimp_marshal_VOID__OBJECT_POINTER = private unnamed_addr constant [34 x i8] c"gimp_marshal_VOID__OBJECT_POINTER\00", align 1
@__func__.gimp_marshal_VOID__POINTER_BOXED = private unnamed_addr constant [33 x i8] c"gimp_marshal_VOID__POINTER_BOXED\00", align 1
@__func__.gimp_marshal_VOID__POINTER_ENUM = private unnamed_addr constant [32 x i8] c"gimp_marshal_VOID__POINTER_ENUM\00", align 1
@__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN = private unnamed_addr constant [41 x i8] c"gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN\00", align 1
@__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS = private unnamed_addr constant [38 x i8] c"gimp_marshal_VOID__POINTER_UINT_FLAGS\00", align 1
@__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS = private unnamed_addr constant [45 x i8] c"gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS\00", align 1
@__func__.gimp_marshal_VOID__STRING_FLAGS = private unnamed_addr constant [32 x i8] c"gimp_marshal_VOID__STRING_FLAGS\00", align 1
@__func__.gimp_marshal_VOID__STRING_STRING_STRING = private unnamed_addr constant [40 x i8] c"gimp_marshal_VOID__STRING_STRING_STRING\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_marshal_BOOLEAN__BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_marshal_BOOLEAN__BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i32, i8*)*
  store i32 (i8*, i32, i8*)* %16, i32 (i8*, i32, i8*)** %callback, align 8
  %17 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %20 = load i32, i32* %v_int, align 4
  %21 = load i8*, i8** %data2, align 8
  %call17 = call i32 %17(i8* %18, i32 %20, i8* %21)
  store i32 %call17, i32* %v_return, align 4
  %22 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %23 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %23)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_value_peek_pointer(%struct._GValue*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__ENUM_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_marshal_BOOLEAN__ENUM_INT, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_marshal_BOOLEAN__ENUM_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i32, i32, i8*)*
  store i32 (i8*, i32, i32, i8*)* %16, i32 (i8*, i32, i32, i8*)** %callback, align 8
  %17 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %20 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %20 to i32
  %21 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx19 to i32*
  %22 = load i32, i32* %v_int, align 4
  %23 = load i8*, i8** %data2, align 8
  %call20 = call i32 %17(i8* %18, i32 %conv, i32 %22, i8* %23)
  store i32 %call20, i32* %v_return, align 4
  %24 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %25 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %24, i32 %25)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__OBJECT_POINTER(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i8*, i8*, i8*)*
  store i32 (i8*, i8*, i8*, i8*)* %16, i32 (i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %20 = load i8*, i8** %v_pointer, align 8
  %21 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_pointer20 = bitcast %union.anon* %arrayidx19 to i8**
  %22 = load i8*, i8** %v_pointer20, align 8
  %23 = load i8*, i8** %data2, align 8
  %call21 = call i32 %17(i8* %18, i8* %20, i8* %22, i8* %23)
  store i32 %call21, i32* %v_return, align 4
  %24 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %25 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %24, i32 %25)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i8*, i8*, i8*, i8*)*
  store i32 (i8*, i8*, i8*, i8*, i8*)* %16, i32 (i8*, i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i32 (i8*, i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %20 = load i8*, i8** %v_pointer, align 8
  %21 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_pointer20 = bitcast %union.anon* %arrayidx19 to i8**
  %22 = load i8*, i8** %v_pointer20, align 8
  %23 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr21 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 3
  %data22 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data22, i32 0, i64 0
  %v_pointer24 = bitcast %union.anon* %arrayidx23 to i8**
  %24 = load i8*, i8** %v_pointer24, align 8
  %25 = load i8*, i8** %data2, align 8
  %call25 = call i32 %17(i8* %18, i8* %20, i8* %22, i8* %24, i8* %25)
  store i32 %call25, i32* %v_return, align 4
  %26 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %27 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %26, i32 %27)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__STRING(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_marshal_BOOLEAN__STRING, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_marshal_BOOLEAN__STRING, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i8*, i8*)*
  store i32 (i8*, i8*, i8*)* %16, i32 (i8*, i8*, i8*)** %callback, align 8
  %17 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %20 = load i8*, i8** %v_pointer, align 8
  %21 = load i8*, i8** %data2, align 8
  %call17 = call i32 %17(i8* %18, i8* %20, i8* %21)
  store i32 %call17, i32* %v_return, align 4
  %22 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %23 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %23)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_BOOLEAN__STRING_FLAGS(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca i32 (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %v_return = alloca i32, align 4
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %cmp = icmp ne %struct._GValue* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_marshal_BOOLEAN__STRING_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %n_param_values.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_marshal_BOOLEAN__STRING_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %5 = bitcast %struct._GClosure* %4 to i32*
  %bf.load = load volatile i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.end.6
  %6 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %data1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %do.end.6
  %9 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 0
  %call10 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr9)
  store i8* %call10, i8** %data1, align 8
  %10 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data11 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %10, i32 0, i32 2
  %11 = load i8*, i8** %data11, align 8
  store i8* %11, i8** %data2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %12 = load i8*, i8** %marshal_data.addr, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback14 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %14, i32 0, i32 1
  %15 = load i8*, i8** %callback14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %15, %cond.false ]
  %16 = bitcast i8* %cond to i32 (i8*, i8*, i32, i8*)*
  store i32 (i8*, i8*, i32, i8*)* %16, i32 (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i32 (i8*, i8*, i32, i8*)*, i32 (i8*, i8*, i32, i8*)** %callback, align 8
  %18 = load i8*, i8** %data1, align 8
  %19 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %20 = load i8*, i8** %v_pointer, align 8
  %21 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_ulong = bitcast %union.anon* %arrayidx19 to i64*
  %22 = load i64, i64* %v_ulong, align 8
  %conv = trunc i64 %22 to i32
  %23 = load i8*, i8** %data2, align 8
  %call20 = call i32 %17(i8* %18, i8* %20, i32 %conv, i8* %23)
  store i32 %call20, i32* %v_return, align 4
  %24 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  %25 = load i32, i32* %v_return, align 4
  call void @g_value_set_boolean(%struct._GValue* %24, i32 %25)
  br label %return

return:                                           ; preds = %cond.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i32, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i32, i32, i32, i8*)*
  store void (i8*, i32, i32, i32, i32, i32, i8*)* %15, void (i8*, i32, i32, i32, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %19 = load i32, i32* %v_int, align 4
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int14 = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int14, align 4
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_int18 = bitcast %union.anon* %arrayidx17 to i32*
  %23 = load i32, i32* %v_int18, align 4
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data20 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data20, i32 0, i64 0
  %v_int22 = bitcast %union.anon* %arrayidx21 to i32*
  %25 = load i32, i32* %v_int22, align 4
  %26 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr23 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 5
  %data24 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data24, i32 0, i64 0
  %v_int26 = bitcast %union.anon* %arrayidx25 to i32*
  %27 = load i32, i32* %v_int26, align 4
  %28 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i8* %28)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__BOXED_ENUM(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_marshal_VOID__BOXED_ENUM, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx13 to i64*
  %21 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %21 to i32
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %conv, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__DOUBLE_DOUBLE(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, double, double, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_marshal_VOID__DOUBLE_DOUBLE, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, double, double, i8*)*
  store void (i8*, double, double, i8*)* %15, void (i8*, double, double, i8*)** %callback, align 8
  %16 = load void (i8*, double, double, i8*)*, void (i8*, double, double, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_double = bitcast %union.anon* %arrayidx to double*
  %19 = load double, double* %v_double, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_double14 = bitcast %union.anon* %arrayidx13 to double*
  %21 = load double, double* %v_double14, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, double %19, double %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, double, double, double, double, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, double, double, double, double, i8*)*
  store void (i8*, double, double, double, double, i8*)* %15, void (i8*, double, double, double, double, i8*)** %callback, align 8
  %16 = load void (i8*, double, double, double, double, i8*)*, void (i8*, double, double, double, double, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_double = bitcast %union.anon* %arrayidx to double*
  %19 = load double, double* %v_double, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_double14 = bitcast %union.anon* %arrayidx13 to double*
  %21 = load double, double* %v_double14, align 8
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_double18 = bitcast %union.anon* %arrayidx17 to double*
  %23 = load double, double* %v_double18, align 8
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data20 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data20, i32 0, i64 0
  %v_double22 = bitcast %union.anon* %arrayidx21 to double*
  %25 = load double, double* %v_double22, align 8
  %26 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, double %19, double %21, double %23, double %25, i8* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__ENUM_ENUM_BOXED_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i8*, i32, i8*)*
  store void (i8*, i32, i32, i8*, i32, i8*)* %15, void (i8*, i32, i32, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %19 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_long14 = bitcast %union.anon* %arrayidx13 to i64*
  %21 = load i64, i64* %v_long14, align 8
  %conv15 = trunc i64 %21 to i32
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr16 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data17 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data17, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx18 to i8**
  %23 = load i8*, i8** %v_pointer, align 8
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data20 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data20, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx21 to i32*
  %25 = load i32, i32* %v_int, align 4
  %26 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %conv, i32 %conv15, i8* %23, i32 %25, i8* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__ENUM_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_marshal_VOID__ENUM_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i8*)*
  store void (i8*, i32, i32, i8*)* %15, void (i8*, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %19 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int, align 4
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %conv, i32 %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__ENUM_INT_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i32, i8*)*
  store void (i8*, i32, i32, i32, i8*)* %15, void (i8*, i32, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %19 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int, align 4
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_int17 = bitcast %union.anon* %arrayidx16 to i32*
  %23 = load i32, i32* %v_int17, align 4
  %24 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %conv, i32 %21, i32 %23, i8* %24)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__ENUM_OBJECT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_marshal_VOID__ENUM_OBJECT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i8*, i8*)*
  store void (i8*, i32, i8*, i8*)* %15, void (i8*, i32, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %19 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %conv, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__ENUM_POINTER(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_marshal_VOID__ENUM_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i8*, i8*)*
  store void (i8*, i32, i8*, i8*)* %15, void (i8*, i32, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %19 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %conv, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__INT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_marshal_VOID__INT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i8*)*
  store void (i8*, i32, i32, i8*)* %15, void (i8*, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %19 = load i32, i32* %v_int, align 4
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int14 = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int14, align 4
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %19, i32 %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__INT_INT_INT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i32, i32, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_marshal_VOID__INT_INT_INT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i32, i32, i32, i32, i8*)*
  store void (i8*, i32, i32, i32, i32, i8*)* %15, void (i8*, i32, i32, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i32, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %19 = load i32, i32* %v_int, align 4
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int14 = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int14, align 4
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_int18 = bitcast %union.anon* %arrayidx17 to i32*
  %23 = load i32, i32* %v_int18, align 4
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data20 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data20, i32 0, i64 0
  %v_int22 = bitcast %union.anon* %arrayidx21 to i32*
  %25 = load i32, i32* %v_int22, align 4
  %26 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i32 %19, i32 %21, i32 %23, i32 %25, i8* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__OBJECT_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_marshal_VOID__OBJECT_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int, align 4
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__OBJECT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_marshal_VOID__OBJECT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int, align 4
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__OBJECT_OBJECT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_marshal_VOID__OBJECT_OBJECT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i8*, i8*)*
  store void (i8*, i8*, i8*, i8*)* %15, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer14 = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer14, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__OBJECT_POINTER(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_marshal_VOID__OBJECT_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i8*, i8*)*
  store void (i8*, i8*, i8*, i8*)* %15, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer14 = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer14, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__POINTER_BOXED(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_marshal_VOID__POINTER_BOXED, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i8*, i8*)*
  store void (i8*, i8*, i8*, i8*)* %15, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer14 = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer14, align 8
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__POINTER_ENUM(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_marshal_VOID__POINTER_ENUM, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx13 to i64*
  %21 = load i64, i64* %v_long, align 8
  %conv = trunc i64 %21 to i32
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %conv, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i32, i8*)*
  store void (i8*, i8*, i32, i32, i8*)* %15, void (i8*, i8*, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_ulong = bitcast %union.anon* %arrayidx13 to i64*
  %21 = load i64, i64* %v_ulong, align 8
  %conv = trunc i64 %21 to i32
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx16 to i32*
  %23 = load i32, i32* %v_int, align 4
  %24 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %conv, i32 %23, i8* %24)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__POINTER_UINT_FLAGS(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i32, i8*)*
  store void (i8*, i8*, i32, i32, i8*)* %15, void (i8*, i8*, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_uint = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_uint, align 4
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_ulong = bitcast %union.anon* %arrayidx16 to i64*
  %23 = load i64, i64* %v_ulong, align 8
  %conv = trunc i64 %23 to i32
  %24 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i32 %conv, i8* %24)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i32, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i32, i32, i8*)*
  store void (i8*, i8*, i32, i32, i32, i8*)* %15, void (i8*, i8*, i32, i32, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i32, i32, i8*)*, void (i8*, i8*, i32, i32, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx13 to i32*
  %21 = load i32, i32* %v_int, align 4
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_uint = bitcast %union.anon* %arrayidx16 to i32*
  %23 = load i32, i32* %v_uint, align 4
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_ulong = bitcast %union.anon* %arrayidx19 to i64*
  %25 = load i64, i64* %v_ulong, align 8
  %conv = trunc i64 %25 to i32
  %26 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i32 %23, i32 %conv, i8* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__STRING_FLAGS(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_marshal_VOID__STRING_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_ulong = bitcast %union.anon* %arrayidx13 to i64*
  %21 = load i64, i64* %v_ulong, align 8
  %conv = trunc i64 %21 to i32
  %22 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %conv, i8* %22)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_marshal_VOID__STRING_STRING_STRING(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i8*, i8*, i8*)*, align 8
  %cc = alloca %struct._GCClosure*, align 8
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %1 = bitcast %struct._GClosure* %0 to %struct._GCClosure*
  store %struct._GCClosure* %1, %struct._GCClosure** %cc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %n_param_values.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_marshal_VOID__STRING_STRING_STRING, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %4 = bitcast %struct._GClosure* %3 to i32*
  %bf.load = load volatile i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %5 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %data1, align 8
  %7 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 0
  %call = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr)
  store i8* %call, i8** %data2, align 8
  br label %if.end.6

if.else.2:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  %call4 = call i8* @g_value_peek_pointer(%struct._GValue* %add.ptr3)
  store i8* %call4, i8** %data1, align 8
  %9 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data5 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %9, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  store i8* %10, i8** %data2, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.2, %if.then.1
  %11 = load i8*, i8** %marshal_data.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %marshal_data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %13 = load %struct._GCClosure*, %struct._GCClosure** %cc, align 8
  %callback8 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %13, i32 0, i32 1
  %14 = load i8*, i8** %callback8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast i8* %cond to void (i8*, i8*, i8*, i8*, i8*)*
  store void (i8*, i8*, i8*, i8*, i8*)* %15, void (i8*, i8*, i8*, i8*, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*)** %callback, align 8
  %17 = load i8*, i8** %data1, align 8
  %18 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %19 = load i8*, i8** %v_pointer, align 8
  %20 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %data12 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data12, i32 0, i64 0
  %v_pointer14 = bitcast %union.anon* %arrayidx13 to i8**
  %21 = load i8*, i8** %v_pointer14, align 8
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data16 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data16, i32 0, i64 0
  %v_pointer18 = bitcast %union.anon* %arrayidx17 to i8**
  %23 = load i8*, i8** %v_pointer18, align 8
  %24 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i8* %21, i8* %23, i8* %24)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
