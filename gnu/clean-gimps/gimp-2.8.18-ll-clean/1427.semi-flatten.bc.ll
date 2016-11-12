; ModuleID = './plug-ins/common/semi-flatten.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"plug-in-semiflatten\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Replace partial transparency with the current background color\00", align 1
@.str.8 = private unnamed_addr constant [122 x i8] c"This plugin flattens pixels in an RGBA image that aren't completely transparent against the current GIMP background color\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Adam D. Moss (adam@foxbox.org)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"27th January 1998\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"_Semi-Flatten\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Web\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"<Image>/Layer/Transparency/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Semi-Flattening\00", align 1
@bgred = internal global i8 0, align 1
@bggreen = internal global i8 0, align 1
@bgblue = internal global i8 0, align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_drawable, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %4)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %5 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %do.end
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_is_rgb(i32 %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #5
  %call8 = call i32 @gimp_progress_init(i8* %call7)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width, align 4
  %call9 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %9, %call9
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @semiflatten(%struct._GimpDrawable* %10)
  %call10 = call i32 @gimp_displays_flush()
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %do.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @semiflatten(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* @bgred, i8* @bggreen, i8* @bgblue)
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %0, i32 0, void (i8*, i8*, i32, i8*)* @semiflatten_func, i8* null)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @semiflatten_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 3
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, %conv2
  %div = sdiv i32 %mul, 255
  %4 = load i8, i8* @bgred, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %sub = sub nsw i32 255, %conv5
  %mul6 = mul nsw i32 %conv3, %sub
  %div7 = sdiv i32 %mul6, 255
  %add = add nsw i32 %div, %div7
  %conv8 = trunc i32 %add to i8
  %7 = load i8*, i8** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %conv8, i8* %arrayidx9, align 1
  %8 = load i8*, i8** %src.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %mul14 = mul nsw i32 %conv11, %conv13
  %div15 = sdiv i32 %mul14, 255
  %12 = load i8, i8* @bggreen, align 1
  %conv16 = zext i8 %12 to i32
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %sub19 = sub nsw i32 255, %conv18
  %mul20 = mul nsw i32 %conv16, %sub19
  %div21 = sdiv i32 %mul20, 255
  %add22 = add nsw i32 %div15, %div21
  %conv23 = trunc i32 %add22 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv23, i8* %arrayidx24, align 1
  %16 = load i8*, i8** %src.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %18 = load i8*, i8** %src.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %19 to i32
  %mul29 = mul nsw i32 %conv26, %conv28
  %div30 = sdiv i32 %mul29, 255
  %20 = load i8, i8* @bgblue, align 1
  %conv31 = zext i8 %20 to i32
  %21 = load i8*, i8** %src.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 3
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %22 to i32
  %sub34 = sub nsw i32 255, %conv33
  %mul35 = mul nsw i32 %conv31, %sub34
  %div36 = sdiv i32 %mul35, 255
  %add37 = add nsw i32 %div30, %div36
  %conv38 = trunc i32 %add37 to i8
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %conv38, i8* %arrayidx39, align 1
  %24 = load i8*, i8** %src.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %cmp = icmp eq i32 %conv41, 0
  %cond = select i1 %cmp, i32 0, i32 255
  %conv43 = trunc i32 %cond to i8
  %26 = load i8*, i8** %dest.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 %conv43, i8* %arrayidx44, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
