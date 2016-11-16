; ModuleID = './libgimpbase/gimpwire.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GimpWireHandler = type { i32, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GimpWireMessage*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpRGB = type { double, double, double, double }

@wire_ht = internal global %struct._GHashTable* null, align 8
@wire_read_func = internal global i32 (%struct._GIOChannel*, i8*, i64, i8*)* null, align 8
@wire_write_func = internal global i32 (%struct._GIOChannel*, i8*, i64, i8*)* null, align 8
@wire_flush_func = internal global i32 (%struct._GIOChannel*, i8*)* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_wire_read = private unnamed_addr constant [15 x i8] c"gimp_wire_read\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"count >= 0\00", align 1
@wire_error_val = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: gimp_wire_read(): error: %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: gimp_wire_read(): error\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: gimp_wire_read(): unexpected EOF\00", align 1
@__func__.gimp_wire_write = private unnamed_addr constant [16 x i8] c"gimp_wire_write\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: gimp_wire_write: error\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: gimp_wire_write(): error: %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: gimp_wire_write(): error\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"gimp_wire_read_msg: the wire protocol has not been initialized\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"gimp_wire_read_msg: could not find handler for message: %d\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"gimp_wire_write_msg: the wire protocol has not been initialized\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"gimp_wire_write_msg: could not find handler for message: %d\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"gimp_wire_destroy: the wire protocol has not been initialized\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"gimp_wire_destroy: could not find handler for message: %d\0A\00", align 1
@__func__._gimp_wire_read_int32 = private unnamed_addr constant [22 x i8] c"_gimp_wire_read_int32\00", align 1
@__func__._gimp_wire_read_int16 = private unnamed_addr constant [22 x i8] c"_gimp_wire_read_int16\00", align 1
@__func__._gimp_wire_read_int8 = private unnamed_addr constant [21 x i8] c"_gimp_wire_read_int8\00", align 1
@__func__._gimp_wire_read_double = private unnamed_addr constant [23 x i8] c"_gimp_wire_read_double\00", align 1
@__func__._gimp_wire_read_string = private unnamed_addr constant [23 x i8] c"_gimp_wire_read_string\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"%s: failed to allocate %u bytes\0A\00", align 1
@__func__._gimp_wire_read_color = private unnamed_addr constant [22 x i8] c"_gimp_wire_read_color\00", align 1
@__func__._gimp_wire_write_int32 = private unnamed_addr constant [23 x i8] c"_gimp_wire_write_int32\00", align 1
@__func__._gimp_wire_write_int16 = private unnamed_addr constant [23 x i8] c"_gimp_wire_write_int16\00", align 1
@__func__._gimp_wire_write_int8 = private unnamed_addr constant [22 x i8] c"_gimp_wire_write_int8\00", align 1
@__func__._gimp_wire_write_double = private unnamed_addr constant [24 x i8] c"_gimp_wire_write_double\00", align 1
@__func__._gimp_wire_write_string = private unnamed_addr constant [24 x i8] c"_gimp_wire_write_string\00", align 1
@__func__._gimp_wire_write_color = private unnamed_addr constant [23 x i8] c"_gimp_wire_write_color\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_wire_register(i32 %type, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %read_func, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %write_func, void (%struct._GimpWireMessage*)* %destroy_func) #0 {
entry:
  %type.addr = alloca i32, align 4
  %read_func.addr = alloca void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, align 8
  %write_func.addr = alloca void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, align 8
  %destroy_func.addr = alloca void (%struct._GimpWireMessage*)*, align 8
  %handler = alloca %struct._GimpWireHandler*, align 8
  store i32 %type, i32* %type.addr, align 4
  store void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %read_func, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %read_func.addr, align 8
  store void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %write_func, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %write_func.addr, align 8
  store void (%struct._GimpWireMessage*)* %destroy_func, void (%struct._GimpWireMessage*)** %destroy_func.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gimp_wire_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %2 = bitcast i32* %type.addr to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct._GimpWireHandler*
  store %struct._GimpWireHandler* %3, %struct._GimpWireHandler** %handler, align 8
  %4 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %tobool1 = icmp ne %struct._GimpWireHandler* %4, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call noalias i8* @g_slice_alloc0(i64 32)
  %5 = bitcast i8* %call3 to %struct._GimpWireHandler*
  store %struct._GimpWireHandler* %5, %struct._GimpWireHandler** %handler, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %type.addr, align 4
  %7 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %type5 = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %7, i32 0, i32 0
  store i32 %6, i32* %type5, align 4
  %8 = load void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %read_func.addr, align 8
  %9 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %read_func6 = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %9, i32 0, i32 1
  store void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %8, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %read_func6, align 8
  %10 = load void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %write_func.addr, align 8
  %11 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %write_func7 = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %11, i32 0, i32 2
  store void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* %10, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %write_func7, align 8
  %12 = load void (%struct._GimpWireMessage*)*, void (%struct._GimpWireMessage*)** %destroy_func.addr, align 8
  %13 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %destroy_func8 = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %13, i32 0, i32 3
  store void (%struct._GimpWireMessage*)* %12, void (%struct._GimpWireMessage*)** %destroy_func8, align 8
  %14 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %15 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %type9 = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %15, i32 0, i32 0
  %16 = bitcast i32* %type9 to i8*
  %17 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %18 = bitcast %struct._GimpWireHandler* %17 to i8*
  %call10 = call i32 @g_hash_table_insert(%struct._GHashTable* %14, i8* %16, i8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_wire_init() #0 {
entry:
  %0 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* bitcast (i32 (i32*)* @gimp_wire_hash to i32 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (i32*, i32*)* @gimp_wire_compare to i32 (i8*, i8*)*))
  store %struct._GHashTable* %call, %struct._GHashTable** @wire_ht, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_wire_set_reader(i32 (%struct._GIOChannel*, i8*, i64, i8*)* %read_func) #0 {
entry:
  %read_func.addr = alloca i32 (%struct._GIOChannel*, i8*, i64, i8*)*, align 8
  store i32 (%struct._GIOChannel*, i8*, i64, i8*)* %read_func, i32 (%struct._GIOChannel*, i8*, i64, i8*)** %read_func.addr, align 8
  %0 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** %read_func.addr, align 8
  store i32 (%struct._GIOChannel*, i8*, i64, i8*)* %0, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_read_func, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_wire_set_writer(i32 (%struct._GIOChannel*, i8*, i64, i8*)* %write_func) #0 {
entry:
  %write_func.addr = alloca i32 (%struct._GIOChannel*, i8*, i64, i8*)*, align 8
  store i32 (%struct._GIOChannel*, i8*, i64, i8*)* %write_func, i32 (%struct._GIOChannel*, i8*, i64, i8*)** %write_func.addr, align 8
  %0 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** %write_func.addr, align 8
  store i32 (%struct._GIOChannel*, i8*, i64, i8*)* %0, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_write_func, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_wire_set_flusher(i32 (%struct._GIOChannel*, i8*)* %flush_func) #0 {
entry:
  %flush_func.addr = alloca i32 (%struct._GIOChannel*, i8*)*, align 8
  store i32 (%struct._GIOChannel*, i8*)* %flush_func, i32 (%struct._GIOChannel*, i8*)** %flush_func.addr, align 8
  %0 = load i32 (%struct._GIOChannel*, i8*)*, i32 (%struct._GIOChannel*, i8*)** %flush_func.addr, align 8
  store i32 (%struct._GIOChannel*, i8*)* %0, i32 (%struct._GIOChannel*, i8*)** @wire_flush_func, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_read(%struct._GIOChannel* %channel, i8* %buf, i64 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp uge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_wire_read, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_read_func, align 8
  %tobool = icmp ne i32 (%struct._GIOChannel*, i8*, i64, i8*)* %1, null
  br i1 %tobool, label %if.then.1, label %if.else.5

if.then.1:                                        ; preds = %do.end
  %2 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_read_func, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %count.addr, align 8
  %6 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 %2(%struct._GIOChannel* %3, i8* %4, i64 %5, i8* %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  store i32 1, i32* @wire_error_val, align 4
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.1
  br label %if.end.24

if.else.5:                                        ; preds = %do.end
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.else.5
  %7 = load i64, i64* %count.addr, align 8
  %cmp6 = icmp ugt i64 %7, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.cond, %while.body
  store i64 0, i64* %bytes, align 8
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %count.addr, align 8
  %call8 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %8, i8* %9, i64 %10, i64* %bytes, %struct._GError** %error)
  store i32 %call8, i32* %status, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  %11 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %11, 3
  br i1 %cmp9, label %do.body.7, label %do.end.10

do.end.10:                                        ; preds = %do.cond
  %12 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %12, 1
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.end.10
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool13 = icmp ne %struct._GError* %13, null
  br i1 %tobool13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i8* @g_get_prgname()
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 2
  %15 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %call15, i8* %15)
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %16)
  br label %if.end.18

if.else.16:                                       ; preds = %if.then.12
  %call17 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  store i32 1, i32* @wire_error_val, align 4
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.end.10
  %17 = load i64, i64* %bytes, align 8
  %cmp20 = icmp eq i64 %17, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %call22 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %call22)
  store i32 1, i32* @wire_error_val, align 4
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %18 = load i64, i64* %bytes, align 8
  %19 = load i64, i64* %count.addr, align 8
  %sub = sub i64 %19, %18
  store i64 %sub, i64* %count.addr, align 8
  %20 = load i64, i64* %bytes, align 8
  %21 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.24

if.end.24:                                        ; preds = %while.end, %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.21, %if.end.18, %if.then.3, %if.else
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_io_channel_read_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_get_prgname() #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_write(%struct._GIOChannel* %channel, i8* %buf, i64 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp uge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_wire_write, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_write_func, align 8
  %tobool = icmp ne i32 (%struct._GIOChannel*, i8*, i64, i8*)* %1, null
  br i1 %tobool, label %if.then.1, label %if.else.6

if.then.1:                                        ; preds = %do.end
  %2 = load i32 (%struct._GIOChannel*, i8*, i64, i8*)*, i32 (%struct._GIOChannel*, i8*, i64, i8*)** @wire_write_func, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %count.addr, align 8
  %6 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 %2(%struct._GIOChannel* %3, i8* %4, i64 %5, i8* %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  %call4 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %call4)
  store i32 1, i32* @wire_error_val, align 4
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.21

if.else.6:                                        ; preds = %do.end
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.else.6
  %7 = load i64, i64* %count.addr, align 8
  %cmp7 = icmp ugt i64 %7, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.8

do.body.8:                                        ; preds = %do.cond, %while.body
  store i64 0, i64* %bytes, align 8
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %count.addr, align 8
  %call9 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %8, i8* %9, i64 %10, i64* %bytes, %struct._GError** %error)
  store i32 %call9, i32* %status, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.8
  %11 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %11, 3
  br i1 %cmp10, label %do.body.8, label %do.end.11

do.end.11:                                        ; preds = %do.cond
  %12 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %12, 1
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %do.end.11
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool14 = icmp ne %struct._GError* %13, null
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.then.13
  %call16 = call i8* @g_get_prgname()
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 2
  %15 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %call16, i8* %15)
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %16)
  br label %if.end.19

if.else.17:                                       ; preds = %if.then.13
  %call18 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  store i32 1, i32* @wire_error_val, align 4
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.11
  %17 = load i64, i64* %bytes, align 8
  %18 = load i64, i64* %count.addr, align 8
  %sub = sub i64 %18, %17
  store i64 %sub, i64* %count.addr, align 8
  %19 = load i64, i64* %bytes, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.end.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.19, %if.then.3, %if.else
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_flush(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32 (%struct._GIOChannel*, i8*)*, i32 (%struct._GIOChannel*, i8*)** @wire_flush_func, align 8
  %tobool = icmp ne i32 (%struct._GIOChannel*, i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct._GIOChannel*, i8*)*, i32 (%struct._GIOChannel*, i8*)** @wire_flush_func, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 %1(%struct._GIOChannel* %2, i8* %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_error() #0 {
entry:
  %0 = load i32, i32* @wire_error_val, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @gimp_wire_clear_error() #0 {
entry:
  store i32 0, i32* @wire_error_val, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_read_msg(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %handler = alloca %struct._GimpWireHandler*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @wire_error_val, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @wire_error_val, align 4
  %tobool3 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %3, i32* %type, i32 1, i8* %5)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %6 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %7 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type8 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %7, i32 0, i32 0
  %8 = bitcast i32* %type8 to i8*
  %call9 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %8)
  %9 = bitcast i8* %call9 to %struct._GimpWireHandler*
  store %struct._GimpWireHandler* %9, %struct._GimpWireHandler** %handler, align 8
  %10 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %tobool10 = icmp ne %struct._GimpWireHandler* %10, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %11 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type12 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %11, i32 0, i32 0
  %12 = load i32, i32* %type12, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i32 %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.7
  %13 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %read_func = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %13, i32 0, i32 1
  %14 = load void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %read_func, align 8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %17 = load i8*, i8** %user_data.addr, align 8
  call void %14(%struct._GIOChannel* %15, %struct._GimpWireMessage* %16, i8* %17)
  %18 = load i32, i32* @wire_error_val, align 4
  %tobool14 = icmp ne i32 %18, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  store i32 %lnot.ext16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.6, %if.then.2
  %19 = load i32, i32* %retval
  ret i32 %19
}

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

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_int32(%struct._GIOChannel* %channel, i32* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_wire_read_int32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %do.end
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 4
  %6 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %2, i8* %4, i32 %mul, i8* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %7 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %count.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %and = and i32 %9, 255
  %shl = shl i32 %and, 24
  %10 = load i32*, i32** %data.addr, align 8
  %11 = load i32, i32* %10, align 4
  %and6 = and i32 %11, 65280
  %shl7 = shl i32 %and6, 8
  %or = or i32 %shl, %shl7
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %12, align 4
  %and8 = and i32 %13, 16711680
  %shr = lshr i32 %and8, 8
  %or9 = or i32 %or, %shr
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i32, i32* %14, align 4
  %and10 = and i32 %15, -16777216
  %shr11 = lshr i32 %and10, 24
  %or12 = or i32 %or9, %shr11
  %16 = load i32*, i32** %data.addr, align 8
  store i32 %or12, i32* %16, align 4
  %17 = load i32*, i32** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr, i32** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.13

if.end.13:                                        ; preds = %while.end, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3, %if.else
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_wire_write_msg(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %handler = alloca %struct._GimpWireHandler*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @wire_error_val, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @wire_error_val, align 4
  %tobool3 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %4 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %4, i32 0, i32 0
  %5 = bitcast i32* %type to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %5)
  %6 = bitcast i8* %call to %struct._GimpWireHandler*
  store %struct._GimpWireHandler* %6, %struct._GimpWireHandler** %handler, align 8
  %7 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %tobool5 = icmp ne %struct._GimpWireHandler* %7, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %8 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type7 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %8, i32 0, i32 0
  %9 = load i32, i32* %type7, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i32 %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %11 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type9 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %11, i32 0, i32 0
  %12 = load i8*, i8** %user_data.addr, align 8
  %call10 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %10, i32* %type9, i32 1, i8* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %13 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %write_func = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %13, i32 0, i32 2
  %14 = load void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)** %write_func, align 8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %17 = load i8*, i8** %user_data.addr, align 8
  call void %14(%struct._GIOChannel* %15, %struct._GimpWireMessage* %16, i8* %17)
  %18 = load i32, i32* @wire_error_val, align 4
  %tobool14 = icmp ne i32 %18, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  store i32 %lnot.ext16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_int32(%struct._GIOChannel* %channel, i32* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_write_int32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %count.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %data.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %and = and i32 %6, 255
  %shl = shl i32 %and, 24
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %data.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %9, 65280
  %shl7 = shl i32 %and6, 8
  %or = or i32 %shl, %shl7
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32*, i32** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %12, 16711680
  %shr = lshr i32 %and10, 8
  %or11 = or i32 %or, %shr
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32*, i32** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %15, -16777216
  %shr15 = lshr i32 %and14, 24
  %or16 = or i32 %or11, %shr15
  store i32 %or16, i32* %tmp, align 4
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %17 = bitcast i32* %tmp to i8*
  %18 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %16, i8* %17, i32 4, i8* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.else
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @gimp_wire_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %handler = alloca %struct._GimpWireHandler*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @wire_ht, align 8
  %2 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %2, i32 0, i32 0
  %3 = bitcast i32* %type to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = bitcast i8* %call to %struct._GimpWireHandler*
  store %struct._GimpWireHandler* %4, %struct._GimpWireHandler** %handler, align 8
  %5 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %tobool1 = icmp ne %struct._GimpWireHandler* %5, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type3 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i32 %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._GimpWireHandler*, %struct._GimpWireHandler** %handler, align 8
  %destroy_func = getelementptr inbounds %struct._GimpWireHandler, %struct._GimpWireHandler* %8, i32 0, i32 3
  %9 = load void (%struct._GimpWireMessage*)*, void (%struct._GimpWireMessage*)** %destroy_func, align 8
  %10 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  call void %9(%struct._GimpWireMessage* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_int8(%struct._GIOChannel* %channel, i8* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__._gimp_wire_read_int8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_read(%struct._GIOChannel* %1, i8* %2, i64 %conv, i8* %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_int16(%struct._GIOChannel* %channel, i16* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_wire_read_int16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %do.end
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i16*, i16** %data.addr, align 8
  %4 = bitcast i16* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 2
  %6 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %2, i8* %4, i32 %mul, i8* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %7 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %count.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i16*, i16** %data.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv = zext i16 %9 to i32
  %shr = ashr i32 %conv, 8
  %conv6 = trunc i32 %shr to i16
  %conv7 = zext i16 %conv6 to i32
  %10 = load i16*, i16** %data.addr, align 8
  %11 = load i16, i16* %10, align 2
  %conv8 = zext i16 %11 to i32
  %shl = shl i32 %conv8, 8
  %conv9 = trunc i32 %shl to i16
  %conv10 = zext i16 %conv9 to i32
  %or = or i32 %conv7, %conv10
  %conv11 = trunc i32 %or to i16
  %12 = load i16*, i16** %data.addr, align 8
  store i16 %conv11, i16* %12, align 2
  %13 = load i16*, i16** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr, i16** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.3, %if.else
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_double(%struct._GIOChannel* %channel, double* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca double*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %t = alloca double*, align 8
  %tmp = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %swap = alloca i8, align 1
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_read_double, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i32 0
  %1 = bitcast i8* %arraydecay to double*
  store double* %1, double** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %count.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %4, i8* %arraydecay4, i32 8, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end.6
  %6 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %6, 4
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %swap, align 1
  %9 = load i32, i32* %j, align 4
  %sub = sub nsw i32 7, %9
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom11
  %10 = load i8, i8* %arrayidx12, align 1
  %11 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom13
  store i8 %10, i8* %arrayidx14, align 1
  %12 = load i8, i8* %swap, align 1
  %13 = load i32, i32* %j, align 4
  %sub15 = sub nsw i32 7, %13
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom16
  store i8 %12, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %15 = load double*, double** %t, align 8
  %16 = load double, double* %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load double*, double** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %18, i64 %idxprom18
  store double %16, double* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.22, %if.then.5, %if.else
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_string(%struct._GIOChannel* %channel, i8** %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i8**, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_read_string, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %3, i32* %tmp, i32 1, i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %for.body
  %5 = load i32, i32* %tmp, align 4
  %cmp4 = icmp ugt i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %tmp, align 4
  %conv = zext i32 %6 to i64
  %call6 = call noalias i8* @g_try_malloc_n(i64 %conv, i64 1)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  store i8* %call6, i8** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i8**, i8*** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 %idxprom7
  %11 = load i8*, i8** %arrayidx8, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.5
  %12 = load i32, i32* %tmp, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_read_string, i32 0, i32 0), i32 %12)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.5
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i8**, i8*** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %15, i64 %idxprom12
  %16 = load i8*, i8** %arrayidx13, align 8
  %17 = load i32, i32* %tmp, align 4
  %18 = load i8*, i8** %user_data.addr, align 8
  %call14 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %13, i8* %16, i32 %17, i8* %18)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i8**, i8*** %data.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %20, i64 %idxprom17
  %21 = load i8*, i8** %arrayidx18, align 8
  call void @g_free(i8* %21)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %22 = load i32, i32* %tmp, align 4
  %sub = sub i32 %22, 1
  %idxprom20 = zext i32 %sub to i64
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i8**, i8*** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %24, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom20
  store i8 0, i8* %arrayidx23, align 1
  br label %if.end.27

if.else.24:                                       ; preds = %if.end.3
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i8**, i8*** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %27, i64 %idxprom25
  store i8* null, i8** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.10, %if.then.2, %if.else
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare noalias i8* @g_try_malloc_n(i64, i64) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_read_color(%struct._GIOChannel* %channel, %struct._GimpRGB* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_wire_read_color, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %3 = bitcast %struct._GimpRGB* %2 to double*
  %4 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 4, %4
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_double(%struct._GIOChannel* %1, double* %3, i32 %mul, i8* %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_int8(%struct._GIOChannel* %channel, i8* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_wire_write_int8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write(%struct._GIOChannel* %1, i8* %2, i64 %conv, i8* %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_int16(%struct._GIOChannel* %channel, i16* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i16, align 2
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_write_int16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %count.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %data.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %shr = ashr i32 %conv, 8
  %conv4 = trunc i32 %shr to i16
  %conv5 = zext i16 %conv4 to i32
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i16*, i16** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 %idxprom6
  %9 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %shl = shl i32 %conv8, 8
  %conv9 = trunc i32 %shl to i16
  %conv10 = zext i16 %conv9 to i32
  %or = or i32 %conv5, %conv10
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %tmp, align 2
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %11 = bitcast i16* %tmp to i8*
  %12 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %10, i8* %11, i32 2, i8* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.else
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_double(%struct._GIOChannel* %channel, double* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca double*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %t = alloca double*, align 8
  %tmp = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %swap = alloca i8, align 1
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__._gimp_wire_write_double, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i32 0
  %1 = bitcast i8* %arraydecay to double*
  store double* %1, double** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %count.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %data.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double*, double** %t, align 8
  store double %6, double* %7, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %8, 4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  store i8 %10, i8* %swap, align 1
  %11 = load i32, i32* %j, align 4
  %sub = sub nsw i32 7, %11
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %13 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom12
  store i8 %12, i8* %arrayidx13, align 1
  %14 = load i8, i8* %swap, align 1
  %15 = load i32, i32* %j, align 4
  %sub14 = sub nsw i32 7, %15
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i64 %idxprom15
  store i8 %14, i8* %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %arraydecay17 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i32 0, i32 0
  %18 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %17, i8* %arraydecay17, i32 8, i8* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.22, %if.then.18, %if.else
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_string(%struct._GIOChannel* %channel, i8** %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca i8**, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__._gimp_wire_write_string, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8**, i8*** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  %call = call i64 @strlen(i8* %8) #4
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %tmp, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %for.body
  store i32 0, i32* %tmp, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.2
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %10 = load i8*, i8** %user_data.addr, align 8
  %call7 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %9, i32* %tmp, i32 1, i8* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %11 = load i32, i32* %tmp, align 4
  %cmp11 = icmp ugt i32 %11, 0
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.10
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i8**, i8*** %data.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %14, i64 %idxprom14
  %15 = load i8*, i8** %arrayidx15, align 8
  %16 = load i32, i32* %tmp, align 4
  %17 = load i8*, i8** %user_data.addr, align 8
  %call16 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %12, i8* %15, i32 %16, i8* %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.then.9, %if.else
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_wire_write_color(%struct._GIOChannel* %channel, %struct._GimpRGB* %data, i32 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %count.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__._gimp_wire_write_color, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %3 = bitcast %struct._GimpRGB* %2 to double*
  %4 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 4, %4
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_double(%struct._GIOChannel* %1, double* %3, i32 %mul, i8* %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_wire_hash(i32* %key) #0 {
entry:
  %key.addr = alloca i32*, align 8
  store i32* %key, i32** %key.addr, align 8
  %0 = load i32*, i32** %key.addr, align 8
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_wire_compare(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
