; ModuleID = './libgimp/gimpuimarshal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GCClosure = type { %struct._GClosure, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__._gimpui_marshal_VOID__STRING_BOOLEAN = private unnamed_addr constant [37 x i8] c"_gimpui_marshal_VOID__STRING_BOOLEAN\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1
@__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN = private unnamed_addr constant [49 x i8] c"_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"n_param_values == 5\00", align 1
@__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN = private unnamed_addr constant [57 x i8] c"_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"n_param_values == 7\00", align 1
@__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN = private unnamed_addr constant [68 x i8] c"_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"n_param_values == 9\00", align 1

; Function Attrs: nounwind uwtable
define void @_gimpui_marshal_VOID__STRING_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__._gimpui_marshal_VOID__STRING_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_value_peek_pointer(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define void @_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i8*, i32, i8*)*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
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
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*, i32, i8*)** %callback, align 8
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
  %v_pointer17 = bitcast %union.anon* %arrayidx16 to i8**
  %23 = load i8*, i8** %v_pointer17, align 8
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data19 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data19, i32 0, i64 0
  %v_int21 = bitcast %union.anon* %arrayidx20 to i32*
  %25 = load i32, i32* %v_int21, align 4
  %26 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i8* %23, i32 %25, i8* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)*, align 8
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
  %cmp = icmp eq i32 %2, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
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
  %15 = bitcast i8* %cond to void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)*
  store void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)* %15, void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
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
  %v_int17 = bitcast %union.anon* %arrayidx16 to i32*
  %23 = load i32, i32* %v_int17, align 4
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data19 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data19, i32 0, i64 0
  %v_int21 = bitcast %union.anon* %arrayidx20 to i32*
  %25 = load i32, i32* %v_int21, align 4
  %26 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr22 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 5
  %data23 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data23, i32 0, i64 0
  %v_pointer25 = bitcast %union.anon* %arrayidx24 to i8**
  %27 = load i8*, i8** %v_pointer25, align 8
  %28 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr26 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 6
  %data27 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data27, i32 0, i64 0
  %v_int29 = bitcast %union.anon* %arrayidx28 to i32*
  %29 = load i32, i32* %v_int29, align 4
  %30 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, i32 %21, i32 %23, i32 %25, i8* %27, i32 %29, i8* %30)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  %callback = alloca void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)*, align 8
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
  %cmp = icmp eq i32 %2, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
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
  %15 = bitcast i8* %cond to void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)*
  store void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)* %15, void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
  %16 = load void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
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
  %v_double = bitcast %union.anon* %arrayidx13 to double*
  %21 = load double, double* %v_double, align 8
  %22 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx16 to i32*
  %23 = load i32, i32* %v_int, align 4
  %24 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 4
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_int20 = bitcast %union.anon* %arrayidx19 to i32*
  %25 = load i32, i32* %v_int20, align 4
  %26 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr21 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 5
  %data22 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data22, i32 0, i64 0
  %v_int24 = bitcast %union.anon* %arrayidx23 to i32*
  %27 = load i32, i32* %v_int24, align 4
  %28 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr25 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 6
  %data26 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data26, i32 0, i64 0
  %v_int28 = bitcast %union.anon* %arrayidx27 to i32*
  %29 = load i32, i32* %v_int28, align 4
  %30 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr29 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 7
  %data30 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data30, i32 0, i64 0
  %v_pointer32 = bitcast %union.anon* %arrayidx31 to i8**
  %31 = load i8*, i8** %v_pointer32, align 8
  %32 = load %struct._GValue*, %struct._GValue** %param_values.addr, align 8
  %add.ptr33 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 8
  %data34 = getelementptr inbounds %struct._GValue, %struct._GValue* %add.ptr33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data34, i32 0, i64 0
  %v_int36 = bitcast %union.anon* %arrayidx35 to i32*
  %33 = load i32, i32* %v_int36, align 4
  %34 = load i8*, i8** %data2, align 8
  call void %16(i8* %17, i8* %19, double %21, i32 %23, i32 %25, i32 %27, i32 %29, i8* %31, i32 %33, i8* %34)
  br label %return

return:                                           ; preds = %cond.end, %if.else
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
