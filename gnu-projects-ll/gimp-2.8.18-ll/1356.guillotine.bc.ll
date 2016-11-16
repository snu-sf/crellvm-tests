; ModuleID = './plug-ins/common/guillotine.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Input drawable (unused)\00", align 1
@query.return_vals = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"image-count\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Number of images created\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"image-ids\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Output images\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"plug-in-guillotine\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Slice the image into subimages using guides\00", align 1
@.str.12 = private unnamed_addr constant [118 x i8] c"This function takes an image and slices it along its guides, creating new images. The original image is not modified.\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Adam D. Moss (adam@foxbox.org)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"_Guillotine\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"RGB*, INDEXED*, GRAY*\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"<Image>/Image/Transform\00", align 1
@run.values = internal global [3 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Guillotine\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"guillotine.c\00", align 1
@__func__.guillotine = private unnamed_addr constant [11 x i8] c"guillotine\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%%0%i\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-%si-%si\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Couldn't create new image.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 3, i32 2, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %images = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 3, i32* %status, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 3, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  store i32 5, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  store i32* null, i32** bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32**), align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %do.end
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #6
  %call5 = call i32 @gimp_progress_init(i8* %call4)
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data7 to i32*
  %7 = load i32, i32* %d_image, align 4
  %8 = load i32, i32* %run_mode, align 4
  %cmp8 = icmp eq i32 %8, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = call %struct._GList* @guillotine(i32 %7, i32 %conv)
  store %struct._GList* %call9, %struct._GList** %images, align 8
  %9 = load %struct._GList*, %struct._GList** %images, align 8
  %call10 = call i32 @g_list_length(%struct._GList* %9)
  store i32 %call10, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %10 = load i32, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %conv11 = sext i32 %10 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 4)
  %11 = bitcast i8* %call12 to i32*
  store i32* %11, i32** bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32**), align 8
  %12 = load %struct._GList*, %struct._GList** %images, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data13, align 8
  %16 = ptrtoint i8* %15 to i64
  %conv14 = trunc i64 %16 to i32
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32**), align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  store i32 %conv14, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %19, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %images, align 8
  call void @g_list_free(%struct._GList* %23)
  %24 = load i32, i32* %run_mode, align 4
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.end
  %call20 = call i32 @gimp_displays_flush()
  br label %if.end

if.end:                                           ; preds = %if.then.19, %for.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %do.end
  %25 = load i32, i32* %status, align 4
  store i32 %25, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @guillotine(i32 %image_ID, i32 %interactive) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %image_ID.addr = alloca i32, align 4
  %interactive.addr = alloca i32, align 4
  %images = alloca %struct._GList*, align 8
  %guide = alloca i32, align 4
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %guides_found = alloca i32, align 4
  %hguides = alloca %struct._GList*, align 8
  %hg = alloca %struct._GList*, align 8
  %vguides = alloca %struct._GList*, align 8
  %vg = alloca %struct._GList*, align 8
  %position = alloca i32, align 4
  %filename = alloca i8*, align 8
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  %hpad = alloca i32, align 4
  %vpad = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %hformat = alloca i8*, align 8
  %format = alloca i8*, align 8
  %new_image = alloca i32, align 4
  %new_filename = alloca %struct._GString*, align 8
  %fileextension = alloca i8*, align 8
  %fileindex = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %interactive, i32* %interactive.addr, align 4
  store %struct._GList* null, %struct._GList** %images, align 8
  store i32 0, i32* %guides_found, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_width(i32 %0)
  store i32 %call, i32* %image_width, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %call1 = call i32 @gimp_image_height(i32 %1)
  store i32 %call1, i32* %image_height, align 4
  %call2 = call %struct._GList* @g_list_append(%struct._GList* null, i8* null)
  store %struct._GList* %call2, %struct._GList** %hguides, align 8
  %2 = load %struct._GList*, %struct._GList** %hguides, align 8
  %3 = load i32, i32* %image_height, align 4
  %conv = sext i32 %3 to i64
  %4 = inttoptr i64 %conv to i8*
  %call3 = call %struct._GList* @g_list_append(%struct._GList* %2, i8* %4)
  store %struct._GList* %call3, %struct._GList** %hguides, align 8
  %call4 = call %struct._GList* @g_list_append(%struct._GList* null, i8* null)
  store %struct._GList* %call4, %struct._GList** %vguides, align 8
  %5 = load %struct._GList*, %struct._GList** %vguides, align 8
  %6 = load i32, i32* %image_width, align 4
  %conv5 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv5 to i8*
  %call6 = call %struct._GList* @g_list_append(%struct._GList* %5, i8* %7)
  store %struct._GList* %call6, %struct._GList** %vguides, align 8
  %8 = load i32, i32* %image_ID.addr, align 4
  %call7 = call i32 @gimp_image_find_next_guide(i32 %8, i32 0)
  store i32 %call7, i32* %guide, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %guide, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %image_ID.addr, align 4
  %11 = load i32, i32* %guide, align 4
  %call9 = call i32 @gimp_image_get_guide_position(i32 %10, i32 %11)
  store i32 %call9, i32* %position, align 4
  %12 = load i32, i32* %image_ID.addr, align 4
  %13 = load i32, i32* %guide, align 4
  %call10 = call i32 @gimp_image_get_guide_orientation(i32 %12, i32 %13)
  switch i32 %call10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %hguides, align 8
  %15 = load i32, i32* %position, align 4
  %conv11 = sext i32 %15 to i64
  %16 = inttoptr i64 %conv11 to i8*
  %call12 = call %struct._GList* @g_list_find(%struct._GList* %14, i8* %16)
  %tobool = icmp ne %struct._GList* %call12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %17 = load %struct._GList*, %struct._GList** %hguides, align 8
  %18 = load i32, i32* %position, align 4
  %conv13 = sext i32 %18 to i64
  %19 = inttoptr i64 %conv13 to i8*
  %call14 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %17, i8* %19, i32 (i8*, i8*)* @guide_sort_func)
  store %struct._GList* %call14, %struct._GList** %hguides, align 8
  store i32 1, i32* %guides_found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %vguides, align 8
  %21 = load i32, i32* %position, align 4
  %conv16 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv16 to i8*
  %call17 = call %struct._GList* @g_list_find(%struct._GList* %20, i8* %22)
  %tobool18 = icmp ne %struct._GList* %call17, null
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %sw.bb.15
  %23 = load %struct._GList*, %struct._GList** %vguides, align 8
  %24 = load i32, i32* %position, align 4
  %conv20 = sext i32 %24 to i64
  %25 = inttoptr i64 %conv20 to i8*
  %call21 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %23, i8* %25, i32 (i8*, i8*)* @guide_sort_func)
  store %struct._GList* %call21, %struct._GList** %vguides, align 8
  store i32 1, i32* %guides_found, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %sw.bb.15
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %sw.bb.23
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.guillotine, i32 0, i32 0), i8* null) #8
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %do.end, %if.end.22, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %26 = load i32, i32* %image_ID.addr, align 4
  %27 = load i32, i32* %guide, align 4
  %call24 = call i32 @gimp_image_find_next_guide(i32 %26, i32 %27)
  store i32 %call24, i32* %guide, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %guides_found, align 4
  %tobool25 = icmp ne i32 %28, 0
  br i1 %tobool25, label %if.then.26, label %if.end.105

if.then.26:                                       ; preds = %for.end
  %29 = load i32, i32* %image_ID.addr, align 4
  %call27 = call i8* @gimp_image_get_filename(i32 %29)
  store i8* %call27, i8** %filename, align 8
  %30 = load i8*, i8** %filename, align 8
  %tobool28 = icmp ne i8* %30, null
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)) #6
  %call31 = call noalias i8* @g_strdup(i8* %call30)
  store i8* %call31, i8** %filename, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.26
  %31 = load %struct._GList*, %struct._GList** %hguides, align 8
  %call33 = call i32 @g_list_length(%struct._GList* %31)
  store i32 %call33, i32* %h, align 4
  %32 = load %struct._GList*, %struct._GList** %vguides, align 8
  %call34 = call i32 @g_list_length(%struct._GList* %32)
  store i32 %call34, i32* %v, align 4
  %33 = load i32, i32* %h, align 4
  %conv35 = sitofp i32 %33 to double
  %call36 = call double @log10(double %conv35) #6
  %add = fadd double %call36, 1.000000e+00
  %conv37 = fptosi double %add to i32
  store i32 %conv37, i32* %hpad, align 4
  %34 = load i32, i32* %v, align 4
  %conv38 = sitofp i32 %34 to double
  %call39 = call double @log10(double %conv38) #6
  %add40 = fadd double %call39, 1.000000e+00
  %conv41 = fptosi double %add40 to i32
  store i32 %conv41, i32* %vpad, align 4
  %35 = load i32, i32* %hpad, align 4
  %36 = load i32, i32* %vpad, align 4
  %cmp42 = icmp sgt i32 %35, %36
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %37 = load i32, i32* %hpad, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %38 = load i32, i32* %vpad, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  %call44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %cond)
  store i8* %call44, i8** %hformat, align 8
  %39 = load i8*, i8** %hformat, align 8
  %40 = load i8*, i8** %hformat, align 8
  %call45 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* %39, i8* %40)
  store i8* %call45, i8** %format, align 8
  store i32 0, i32* %y, align 4
  %41 = load %struct._GList*, %struct._GList** %hguides, align 8
  store %struct._GList* %41, %struct._GList** %hg, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.101, %cond.end
  %42 = load %struct._GList*, %struct._GList** %hg, align 8
  %tobool47 = icmp ne %struct._GList* %42, null
  br i1 %tobool47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.46
  %43 = load %struct._GList*, %struct._GList** %hg, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool48 = icmp ne %struct._GList* %44, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.46
  %45 = phi i1 [ false, %for.cond.46 ], [ %tobool48, %land.rhs ]
  br i1 %45, label %for.body.49, label %for.end.104

for.body.49:                                      ; preds = %land.end
  store i32 0, i32* %x, align 4
  %46 = load %struct._GList*, %struct._GList** %vguides, align 8
  store %struct._GList* %46, %struct._GList** %vg, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.98, %for.body.49
  %47 = load %struct._GList*, %struct._GList** %vg, align 8
  %tobool51 = icmp ne %struct._GList* %47, null
  br i1 %tobool51, label %land.rhs.52, label %land.end.55

land.rhs.52:                                      ; preds = %for.cond.50
  %48 = load %struct._GList*, %struct._GList** %vg, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next53, align 8
  %tobool54 = icmp ne %struct._GList* %49, null
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.52, %for.cond.50
  %50 = phi i1 [ false, %for.cond.50 ], [ %tobool54, %land.rhs.52 ]
  br i1 %50, label %for.body.56, label %for.end.100

for.body.56:                                      ; preds = %land.end.55
  %51 = load i32, i32* %image_ID.addr, align 4
  %call57 = call i32 @gimp_image_duplicate(i32 %51)
  store i32 %call57, i32* %new_image, align 4
  %52 = load i32, i32* %new_image, align 4
  %cmp58 = icmp eq i32 %52, -1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.56
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0))
  %53 = load i8*, i8** %hformat, align 8
  call void @g_free(i8* %53)
  %54 = load i8*, i8** %format, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._GList*, %struct._GList** %images, align 8
  store %struct._GList* %55, %struct._GList** %retval
  br label %return

if.end.61:                                        ; preds = %for.body.56
  %56 = load i32, i32* %new_image, align 4
  %call62 = call i32 @gimp_image_undo_disable(i32 %56)
  %57 = load i32, i32* %new_image, align 4
  %58 = load %struct._GList*, %struct._GList** %vg, align 8
  %next63 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next63, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 0
  %60 = load i8*, i8** %data, align 8
  %61 = ptrtoint i8* %60 to i64
  %conv64 = trunc i64 %61 to i32
  %62 = load %struct._GList*, %struct._GList** %vg, align 8
  %data65 = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 0
  %63 = load i8*, i8** %data65, align 8
  %64 = ptrtoint i8* %63 to i64
  %conv66 = trunc i64 %64 to i32
  %sub = sub nsw i32 %conv64, %conv66
  %65 = load %struct._GList*, %struct._GList** %hg, align 8
  %next67 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next67, align 8
  %data68 = getelementptr inbounds %struct._GList, %struct._GList* %66, i32 0, i32 0
  %67 = load i8*, i8** %data68, align 8
  %68 = ptrtoint i8* %67 to i64
  %conv69 = trunc i64 %68 to i32
  %69 = load %struct._GList*, %struct._GList** %hg, align 8
  %data70 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  %70 = load i8*, i8** %data70, align 8
  %71 = ptrtoint i8* %70 to i64
  %conv71 = trunc i64 %71 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %72 = load %struct._GList*, %struct._GList** %vg, align 8
  %data73 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data73, align 8
  %74 = ptrtoint i8* %73 to i64
  %conv74 = trunc i64 %74 to i32
  %75 = load %struct._GList*, %struct._GList** %hg, align 8
  %data75 = getelementptr inbounds %struct._GList, %struct._GList* %75, i32 0, i32 0
  %76 = load i8*, i8** %data75, align 8
  %77 = ptrtoint i8* %76 to i64
  %conv76 = trunc i64 %77 to i32
  %call77 = call i32 @gimp_image_crop(i32 %57, i32 %sub, i32 %sub72, i32 %conv74, i32 %conv76)
  %78 = load i8*, i8** %filename, align 8
  %call78 = call %struct._GString* @g_string_new(i8* %78)
  store %struct._GString* %call78, %struct._GString** %new_filename, align 8
  %79 = load i8*, i8** %format, align 8
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %y, align 4
  %call79 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %79, i32 %80, i32 %81)
  store i8* %call79, i8** %fileindex, align 8
  %82 = load %struct._GString*, %struct._GString** %new_filename, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %82, i32 0, i32 0
  %83 = load i8*, i8** %str, align 8
  %call80 = call i8* @strrchr(i8* %83, i32 46) #9
  store i8* %call80, i8** %fileextension, align 8
  %84 = load i8*, i8** %fileextension, align 8
  %85 = load %struct._GString*, %struct._GString** %new_filename, align 8
  %str81 = getelementptr inbounds %struct._GString, %struct._GString* %85, i32 0, i32 0
  %86 = load i8*, i8** %str81, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %86 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv82 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv82, i32* %pos, align 4
  %87 = load %struct._GString*, %struct._GString** %new_filename, align 8
  %88 = load i32, i32* %pos, align 4
  %conv83 = sext i32 %88 to i64
  %89 = load i8*, i8** %fileindex, align 8
  %call84 = call %struct._GString* @g_string_insert(%struct._GString* %87, i64 %conv83, i8* %89)
  %90 = load i8*, i8** %fileindex, align 8
  call void @g_free(i8* %90)
  %91 = load i32, i32* %new_image, align 4
  %92 = load %struct._GString*, %struct._GString** %new_filename, align 8
  %str85 = getelementptr inbounds %struct._GString, %struct._GString* %92, i32 0, i32 0
  %93 = load i8*, i8** %str85, align 8
  %call86 = call i32 @gimp_image_set_filename(i32 %91, i8* %93)
  %94 = load %struct._GString*, %struct._GString** %new_filename, align 8
  %call87 = call i8* @g_string_free(%struct._GString* %94, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.61
  %95 = load i32, i32* %new_image, align 4
  %call88 = call i32 @gimp_image_find_next_guide(i32 %95, i32 0)
  store i32 %call88, i32* %guide, align 4
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %96 = load i32, i32* %new_image, align 4
  %97 = load i32, i32* %guide, align 4
  %call90 = call i32 @gimp_image_delete_guide(i32 %96, i32 %97)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %98 = load i32, i32* %new_image, align 4
  %call91 = call i32 @gimp_image_undo_enable(i32 %98)
  %99 = load i32, i32* %interactive.addr, align 4
  %tobool92 = icmp ne i32 %99, 0
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %while.end
  %100 = load i32, i32* %new_image, align 4
  %call94 = call i32 @gimp_display_new(i32 %100)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %while.end
  %101 = load %struct._GList*, %struct._GList** %images, align 8
  %102 = load i32, i32* %new_image, align 4
  %conv96 = sext i32 %102 to i64
  %103 = inttoptr i64 %conv96 to i8*
  %call97 = call %struct._GList* @g_list_prepend(%struct._GList* %101, i8* %103)
  store %struct._GList* %call97, %struct._GList** %images, align 8
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.95
  %104 = load i32, i32* %x, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %x, align 4
  %105 = load %struct._GList*, %struct._GList** %vg, align 8
  %next99 = getelementptr inbounds %struct._GList, %struct._GList* %105, i32 0, i32 1
  %106 = load %struct._GList*, %struct._GList** %next99, align 8
  store %struct._GList* %106, %struct._GList** %vg, align 8
  br label %for.cond.50

for.end.100:                                      ; preds = %land.end.55
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100
  %107 = load i32, i32* %y, align 4
  %inc102 = add nsw i32 %107, 1
  store i32 %inc102, i32* %y, align 4
  %108 = load %struct._GList*, %struct._GList** %hg, align 8
  %next103 = getelementptr inbounds %struct._GList, %struct._GList* %108, i32 0, i32 1
  %109 = load %struct._GList*, %struct._GList** %next103, align 8
  store %struct._GList* %109, %struct._GList** %hg, align 8
  br label %for.cond.46

for.end.104:                                      ; preds = %land.end
  %110 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %110)
  %111 = load i8*, i8** %hformat, align 8
  call void @g_free(i8* %111)
  %112 = load i8*, i8** %format, align 8
  call void @g_free(i8* %112)
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end
  %113 = load %struct._GList*, %struct._GList** %hguides, align 8
  call void @g_list_free(%struct._GList* %113)
  %114 = load %struct._GList*, %struct._GList** %vguides, align 8
  call void @g_list_free(%struct._GList* %114)
  %115 = load %struct._GList*, %struct._GList** %images, align 8
  %call106 = call %struct._GList* @g_list_reverse(%struct._GList* %115)
  store %struct._GList* %call106, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.then.60
  %116 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %116
}

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @gimp_image_find_next_guide(i32, i32) #1

declare i32 @gimp_image_get_guide_position(i32, i32) #1

declare i32 @gimp_image_get_guide_orientation(i32, i32) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @guide_sort_func(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %2 = load i8*, i8** %b.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %conv1 = trunc i64 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare i8* @gimp_image_get_filename(i32) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare double @log10(double) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_image_duplicate(i32) #1

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_free(i8*) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_image_crop(i32, i32, i32, i32, i32) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare %struct._GString* @g_string_insert(%struct._GString*, i64, i8*) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @gimp_image_delete_guide(i32, i32) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_display_new(i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
