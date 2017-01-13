; ModuleID = './app/widgets/gimprender.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }

@gimp_render_check_buf = global i8* null, align 8
@gimp_render_empty_buf = global i8* null, align 8
@gimp_render_white_buf = global i8* null, align 8
@gimp_render_blend_dark_check = global i8* null, align 8
@gimp_render_blend_light_check = global i8* null, align 8
@gimp_render_blend_white = global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_render_init = private unnamed_addr constant [17 x i8] c"gimp_render_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"notify::transparency-type\00", align 1
@__func__.gimp_render_exit = private unnamed_addr constant [17 x i8] c"gimp_render_exit\00", align 1
@light = internal global %struct._GimpRGB zeroinitializer, align 8
@dark = internal global %struct._GimpRGB zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"transparency-type\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_render_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_render_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to i8*
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (i8*, %struct._GParamSpec*, %struct._Gimp*)* @gimp_render_setup_notify to void ()*), i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config12, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to i8*
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_render_setup_notify(i8* %20, %struct._GParamSpec* null, %struct._Gimp* %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_render_setup_notify(i8* %config, %struct._GParamSpec* %param_spec, %struct._Gimp* %gimp) #0 {
entry:
  %config.addr = alloca i8*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %check_type = alloca i32, align 4
  %dark_check = alloca i8, align 1
  %light_check = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %config, i8** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load i8*, i8** %config.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32* %check_type, i8* null)
  %1 = load i32, i32* %check_type, align 4
  call void @gimp_checks_get_shades(i32 %1, i8* %light_check, i8* %dark_check)
  %2 = load i8, i8* %light_check, align 1
  %3 = load i8, i8* %light_check, align 1
  %4 = load i8, i8* %light_check, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* @light, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext -1)
  %5 = load i8, i8* %dark_check, align 1
  %6 = load i8, i8* %dark_check, align 1
  %7 = load i8, i8* %dark_check, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* @dark, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i8 zeroext -1)
  %8 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc_n(i64 65536, i64 1)
  store i8* %call, i8** @gimp_render_blend_dark_check, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %tobool1 = icmp ne i8* %9, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call noalias i8* @g_malloc_n(i64 65536, i64 1)
  store i8* %call3, i8** @gimp_render_blend_light_check, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load i8*, i8** @gimp_render_blend_white, align 8
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %call7 = call noalias i8* @g_malloc_n(i64 65536, i64 1)
  store i8* %call7, i8** @gimp_render_blend_white, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.end.8
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 256
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %12, 256
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i8, i8* %dark_check, align 1
  %conv = zext i8 %15 to i32
  %16 = load i32, i32* %i, align 4
  %sub = sub nsw i32 255, %16
  %mul12 = mul nsw i32 %conv, %sub
  %add = add nsw i32 %mul, %mul12
  %div = sdiv i32 %add, 255
  %conv13 = trunc i32 %div to i8
  %17 = load i32, i32* %i, align 4
  %shl = shl i32 %17, 8
  %18 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %shl, %18
  %idxprom = sext i32 %add14 to i64
  %19 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 %conv13, i8* %arrayidx, align 1
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %20, %21
  %22 = load i8, i8* %light_check, align 1
  %conv16 = zext i8 %22 to i32
  %23 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 255, %23
  %mul18 = mul nsw i32 %conv16, %sub17
  %add19 = add nsw i32 %mul15, %mul18
  %div20 = sdiv i32 %add19, 255
  %conv21 = trunc i32 %div20 to i8
  %24 = load i32, i32* %i, align 4
  %shl22 = shl i32 %24, 8
  %25 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %shl22, %25
  %idxprom24 = sext i32 %add23 to i64
  %26 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %26, i64 %idxprom24
  store i8 %conv21, i8* %arrayidx25, align 1
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 %27, %28
  %29 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 255, %29
  %mul28 = mul nsw i32 255, %sub27
  %add29 = add nsw i32 %mul26, %mul28
  %div30 = sdiv i32 %add29, 255
  %conv31 = trunc i32 %div30 to i8
  %30 = load i32, i32* %i, align 4
  %shl32 = shl i32 %30, 8
  %31 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %shl32, %31
  %idxprom34 = sext i32 %add33 to i64
  %32 = load i8*, i8** @gimp_render_blend_white, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %32, i64 %idxprom34
  store i8 %conv31, i8* %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %34 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %34, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %35 = load i8*, i8** @gimp_render_check_buf, align 8
  call void @g_free(i8* %35)
  %36 = load i8*, i8** @gimp_render_empty_buf, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** @gimp_render_white_buf, align 8
  call void @g_free(i8* %37)
  %call39 = call noalias i8* @g_malloc_n(i64 6156, i64 1)
  store i8* %call39, i8** @gimp_render_check_buf, align 8
  %call40 = call noalias i8* @g_malloc0_n(i64 6156, i64 1)
  store i8* %call40, i8** @gimp_render_empty_buf, align 8
  %call41 = call noalias i8* @g_malloc_n(i64 6156, i64 1)
  store i8* %call41, i8** @gimp_render_white_buf, align 8
  %38 = load i8*, i8** @gimp_render_white_buf, align 8
  call void @llvm.memset.p0i8.i64(i8* %38, i8 -1, i64 6156, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.73, %for.end.38
  %39 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %39, 2052
  br i1 %cmp43, label %for.body.45, label %for.end.75

for.body.45:                                      ; preds = %for.cond.42
  %40 = load i32, i32* %i, align 4
  %and = and i32 %40, 4
  %tobool46 = icmp ne i32 %and, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %for.body.45
  %41 = load i8, i8* %dark_check, align 1
  %42 = load i32, i32* %i, align 4
  %mul48 = mul nsw i32 %42, 3
  %add49 = add nsw i32 %mul48, 0
  %idxprom50 = sext i32 %add49 to i64
  %43 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %43, i64 %idxprom50
  store i8 %41, i8* %arrayidx51, align 1
  %44 = load i8, i8* %dark_check, align 1
  %45 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 %45, 3
  %add53 = add nsw i32 %mul52, 1
  %idxprom54 = sext i32 %add53 to i64
  %46 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %46, i64 %idxprom54
  store i8 %44, i8* %arrayidx55, align 1
  %47 = load i8, i8* %dark_check, align 1
  %48 = load i32, i32* %i, align 4
  %mul56 = mul nsw i32 %48, 3
  %add57 = add nsw i32 %mul56, 2
  %idxprom58 = sext i32 %add57 to i64
  %49 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %49, i64 %idxprom58
  store i8 %47, i8* %arrayidx59, align 1
  br label %if.end.72

if.else:                                          ; preds = %for.body.45
  %50 = load i8, i8* %light_check, align 1
  %51 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 %51, 3
  %add61 = add nsw i32 %mul60, 0
  %idxprom62 = sext i32 %add61 to i64
  %52 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %52, i64 %idxprom62
  store i8 %50, i8* %arrayidx63, align 1
  %53 = load i8, i8* %light_check, align 1
  %54 = load i32, i32* %i, align 4
  %mul64 = mul nsw i32 %54, 3
  %add65 = add nsw i32 %mul64, 1
  %idxprom66 = sext i32 %add65 to i64
  %55 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %55, i64 %idxprom66
  store i8 %53, i8* %arrayidx67, align 1
  %56 = load i8, i8* %light_check, align 1
  %57 = load i32, i32* %i, align 4
  %mul68 = mul nsw i32 %57, 3
  %add69 = add nsw i32 %mul68, 2
  %idxprom70 = sext i32 %add69 to i64
  %58 = load i8*, i8** @gimp_render_check_buf, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %58, i64 %idxprom70
  store i8 %56, i8* %arrayidx71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.then.47
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %59 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %59, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.42

for.end.75:                                       ; preds = %for.cond.42
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_render_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_render_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to i8*
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (i8*, %struct._GParamSpec*, %struct._Gimp*)* @gimp_render_setup_notify to i8*), i8* %17)
  %18 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  %tobool12 = icmp ne i8* %18, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %19 = load i8*, i8** @gimp_render_blend_dark_check, align 8
  call void @g_free(i8* %19)
  store i8* null, i8** @gimp_render_blend_dark_check, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end
  %20 = load i8*, i8** @gimp_render_blend_light_check, align 8
  %tobool15 = icmp ne i8* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %21 = load i8*, i8** @gimp_render_blend_light_check, align 8
  call void @g_free(i8* %21)
  store i8* null, i8** @gimp_render_blend_light_check, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %22 = load i8*, i8** @gimp_render_blend_white, align 8
  %tobool18 = icmp ne i8* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %23 = load i8*, i8** @gimp_render_blend_white, align 8
  call void @g_free(i8* %23)
  store i8* null, i8** @gimp_render_blend_white, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %24 = load i8*, i8** @gimp_render_check_buf, align 8
  %tobool21 = icmp ne i8* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %25 = load i8*, i8** @gimp_render_check_buf, align 8
  call void @g_free(i8* %25)
  store i8* null, i8** @gimp_render_check_buf, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %26 = load i8*, i8** @gimp_render_empty_buf, align 8
  %tobool24 = icmp ne i8* %26, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %27 = load i8*, i8** @gimp_render_empty_buf, align 8
  call void @g_free(i8* %27)
  store i8* null, i8** @gimp_render_empty_buf, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %28 = load i8*, i8** @gimp_render_white_buf, align 8
  %tobool27 = icmp ne i8* %28, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %29 = load i8*, i8** @gimp_render_white_buf, align 8
  call void @g_free(i8* %29)
  store i8* null, i8** @gimp_render_white_buf, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.then.28, %if.end.26
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpRGB* @gimp_render_light_check_color() #0 {
entry:
  ret %struct._GimpRGB* @light
}

; Function Attrs: nounwind uwtable
define %struct._GimpRGB* @gimp_render_dark_check_color() #0 {
entry:
  ret %struct._GimpRGB* @dark
}

declare void @g_object_get(i8*, i8*, ...) #3

declare void @gimp_checks_get_shades(i32, i8*, i8*) #3

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #3

declare noalias i8* @g_malloc_n(i64, i64) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
