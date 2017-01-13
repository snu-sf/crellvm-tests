; ModuleID = './libgimpwidgets/gimpwidgetsmarshal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GCClosure = type { %struct._GClosure, i8* }

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__._gimp_widgets_marshal_VOID__INT_INT = private unnamed_addr constant [36 x i8] c"_gimp_widgets_marshal_VOID__INT_INT\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1
@__func__._gimp_widgets_marshal_VOID__OBJECT_INT = private unnamed_addr constant [39 x i8] c"_gimp_widgets_marshal_VOID__OBJECT_INT\00", align 1
@__func__._gimp_widgets_marshal_VOID__POINTER_POINTER = private unnamed_addr constant [44 x i8] c"_gimp_widgets_marshal_VOID__POINTER_POINTER\00", align 1
@__func__._gimp_widgets_marshal_VOID__STRING_FLAGS = private unnamed_addr constant [41 x i8] c"_gimp_widgets_marshal_VOID__STRING_FLAGS\00", align 1
@__func__._gimp_widgets_marshal_VOID__STRING_INT = private unnamed_addr constant [39 x i8] c"_gimp_widgets_marshal_VOID__STRING_INT\00", align 1
@__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE = private unnamed_addr constant [42 x i8] c"_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE\00", align 1
@__func__._gimp_widgets_marshal_BOOLEAN__POINTER = private unnamed_addr constant [39 x i8] c"_gimp_widgets_marshal_BOOLEAN__POINTER\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"return_value != NULL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"n_param_values == 2\00", align 1

; Function Attrs: nounwind uwtable
define void @_gimp_widgets_marshal_VOID__INT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__._gimp_widgets_marshal_VOID__INT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_value_peek_pointer(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define void @_gimp_widgets_marshal_VOID__OBJECT_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_widgets_marshal_VOID__OBJECT_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
define void @_gimp_widgets_marshal_VOID__POINTER_POINTER(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__._gimp_widgets_marshal_VOID__POINTER_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
define void @_gimp_widgets_marshal_VOID__STRING_FLAGS(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__._gimp_widgets_marshal_VOID__STRING_FLAGS, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
define void @_gimp_widgets_marshal_VOID__STRING_INT(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_widgets_marshal_VOID__STRING_INT, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
define void @_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
define void @_gimp_widgets_marshal_BOOLEAN__POINTER(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_widgets_marshal_BOOLEAN__POINTER, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__._gimp_widgets_marshal_BOOLEAN__POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
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

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
