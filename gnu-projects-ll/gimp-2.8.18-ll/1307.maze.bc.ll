; ModuleID = './plug-ins/maze/maze.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.MazeValues = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GRand = type opaque
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@mvals = global %struct.MazeValues { i32 5, i32 5, i32 0, i32 0, i32 57, i32 1, i32 0, i32 1 }, align 4
@gr = global %struct._GRand* null, align 8
@sel_w = global i32 0, align 4
@sel_h = global i32 0, align 4
@query.args = internal constant [10 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ID of drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Width of the passages\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Height of the passages\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"tileable\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Tileable maze?\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Generation algorithm(0=DEPTH FIRST, 1=PRIM'S ALGORITHM)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Multiple (use 57)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Offset (use 1)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"plug-in-maze\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Draw a labyrinth\00", align 1
@.str.22 = private unnamed_addr constant [111 x i8] c"Generates a maze using either the depth-first search method or Prim's algorithm.  Can make tileable mazes too.\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Kevin Turner <kevint@poboxes.com>\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Kevin Turner\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"1997, 1998\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"_Maze...\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"maze: Invalid algorithm choice %d\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Drawing maze\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 10, i32 0, %struct._GimpParamDef* getelementptr inbounds ([10 x %struct._GimpParamDef], [10 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %call4 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call4, %struct._GRand** @gr, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x, i32* %y, i32* @sel_w, i32* @sel_h)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.end
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.MazeValues* @mvals to i8*))
  %call10 = call i32 @maze_dialog()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %10)
  br label %return

if.end.13:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 10
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.14
  store i32 1, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.14
  %12 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %12, 3
  br i1 %cmp17, label %if.then.18, label %if.end.47

if.then.18:                                       ; preds = %if.end.16
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int16 = bitcast %union._GimpParamData* %data20 to i16*
  %14 = load i16, i16* %d_int16, align 2
  %conv = sext i16 %14 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int1623 = bitcast %union._GimpParamData* %data22 to i16*
  %16 = load i16, i16* %d_int1623, align 2
  %conv24 = sext i16 %16 to i32
  store i32 %conv24, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 5
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data26 to i8*
  %18 = load i8, i8* %d_int8, align 1
  %conv27 = sext i8 %18 to i32
  store i32 %conv27, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 6
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int830 = bitcast %union._GimpParamData* %data29 to i8*
  %20 = load i8, i8* %d_int830, align 1
  %conv31 = sext i8 %20 to i32
  store i32 %conv31, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 7
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %22 = load i32, i32* %d_int3234, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 8
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_int1637 = bitcast %union._GimpParamData* %data36 to i16*
  %24 = load i16, i16* %d_int1637, align 2
  %conv38 = sext i16 %24 to i32
  store i32 %conv38, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 9
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_int1641 = bitcast %union._GimpParamData* %data40 to i16*
  %26 = load i16, i16* %d_int1641, align 2
  %conv42 = sext i16 %26 to i32
  store i32 %conv42, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 7), align 4
  %tobool43 = icmp ne i32 %27, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.18
  %call45 = call i32 @g_random_int()
  store i32 %call45, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.18
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.16
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end
  %call49 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.MazeValues* @mvals to i8*))
  %28 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 7), align 4
  %tobool50 = icmp ne i32 %28, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %sw.bb.48
  %call52 = call i32 @g_random_int()
  store i32 %call52, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %sw.bb.48
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.53, %if.end.47, %if.end.13
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id54, align 4
  %call55 = call i32 @gimp_drawable_is_rgb(i32 %30)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id57, align 4
  %call58 = call i32 @gimp_drawable_is_gray(i32 %32)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id61, align 4
  %call62 = call i32 @gimp_drawable_is_indexed(i32 %34)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false, %sw.epilog
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @maze(%struct._GimpDrawable* %35)
  %36 = load i32, i32* %run_mode, align 4
  %cmp65 = icmp ne i32 %36, 1
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.64
  %call68 = call i32 @gimp_displays_flush()
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.64
  %37 = load i32, i32* %run_mode, align 4
  %cmp70 = icmp eq i32 %37, 0
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.69
  %38 = load i32, i32* %run_mode, align 4
  %cmp73 = icmp eq i32 %38, 2
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %lor.lhs.false.72, %if.end.69
  %call76 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.MazeValues* @mvals to i8*), i32 32)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %lor.lhs.false.72
  br label %if.end.78

if.else:                                          ; preds = %lor.lhs.false.60
  store i32 0, i32* %status, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.end.77
  %39 = load i32, i32* %status, align 4
  store i32 %39, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %40)
  %41 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_free(%struct._GRand* %41)
  br label %return

return:                                           ; preds = %if.end.78, %if.then.12, %if.then
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

declare %struct._GRand* @g_rand_new() #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @maze_dialog() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @g_random_int() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @maze(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %mw = alloca i32, align 4
  %mh = alloca i32, align 4
  %deadx = alloca i32, align 4
  %deady = alloca i32, align 4
  %cur_progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %per_progress = alloca double, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %maz_x = alloca i32, align 4
  %maz_xx = alloca i32, align 4
  %maz_row = alloca i32, align 4
  %maz_yy = alloca i32, align 4
  %fg = alloca [4 x i8], align 1
  %bg = alloca [4 x i8], align 1
  %pr = alloca i8*, align 8
  %active_selection = alloca i32, align 4
  %maz = alloca i8*, align 8
  %pos = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call, i32* %active_selection, align 4
  %2 = load i32, i32* %x2, align 4
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %4 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %div = sdiv i32 %sub, %4
  store i32 %div, i32* %mw, align 4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %6
  %7 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %div2 = sdiv i32 %sub1, %7
  store i32 %div2, i32* %mh, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mw, align 4
  %and = and i32 %9, 1
  %tobool3 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %10 = load i32, i32* %mw, align 4
  %sub4 = sub i32 %10, %lnot.ext
  store i32 %sub4, i32* %mw, align 4
  %11 = load i32, i32* %mh, align 4
  %and5 = and i32 %11, 1
  %tobool6 = icmp ne i32 %and5, 0
  %lnot7 = xor i1 %tobool6, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %12 = load i32, i32* %mh, align 4
  %sub9 = sub i32 %12, %lnot.ext8
  store i32 %sub9, i32* %mh, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %mw, align 4
  %and10 = and i32 %13, 1
  %14 = load i32, i32* %mw, align 4
  %sub11 = sub i32 %14, %and10
  store i32 %sub11, i32* %mw, align 4
  %15 = load i32, i32* %mh, align 4
  %and12 = and i32 %15, 1
  %16 = load i32, i32* %mh, align 4
  %sub13 = sub i32 %16, %and12
  store i32 %sub13, i32* %mh, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %x1, align 4
  %sub14 = sub nsw i32 %17, %18
  %19 = load i32, i32* %mw, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %mul = mul i32 %19, %20
  %sub15 = sub i32 %sub14, %mul
  %div16 = udiv i32 %sub15, 2
  store i32 %div16, i32* %deadx, align 4
  %21 = load i32, i32* %y2, align 4
  %22 = load i32, i32* %y1, align 4
  %sub17 = sub nsw i32 %21, %22
  %23 = load i32, i32* %mh, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %mul18 = mul i32 %23, %24
  %sub19 = sub i32 %sub17, %mul18
  %div20 = udiv i32 %sub19, 2
  store i32 %div20, i32* %deady, align 4
  %25 = load i32, i32* %mw, align 4
  %26 = load i32, i32* %mh, align 4
  %mul21 = mul i32 %25, %26
  %conv = zext i32 %mul21 to i64
  %call22 = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  store i8* %call22, i8** %maz, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %28 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %29 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %sw.epilog
  %30 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  switch i32 %30, label %sw.default.27 [
    i32 0, label %sw.bb.25
    i32 1, label %sw.bb.26
  ]

sw.bb.25:                                         ; preds = %if.then.24
  %31 = load i8*, i8** %maz, align 8
  %32 = load i32, i32* %mw, align 4
  %33 = load i32, i32* %mh, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  call void @mazegen_tileable(i32 0, i8* %31, i32 %32, i32 %33, i32 %34)
  br label %sw.epilog.28

sw.bb.26:                                         ; preds = %if.then.24
  %35 = load i8*, i8** %maz, align 8
  %36 = load i32, i32* %mw, align 4
  %37 = load i32, i32* %mh, align 4
  call void @prim_tileable(i8* %35, i32 %36, i32 %37)
  br label %sw.epilog.28

sw.default.27:                                    ; preds = %if.then.24
  br label %sw.epilog.28

sw.epilog.28:                                     ; preds = %sw.default.27, %sw.bb.26, %sw.bb.25
  br label %if.end.62

if.else.29:                                       ; preds = %sw.epilog
  %38 = load i32, i32* %active_selection, align 4
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %if.then.31, label %if.else.55

if.then.31:                                       ; preds = %if.else.29
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id32 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 0
  %40 = load i32, i32* %drawable_id32, align 4
  %41 = load i8*, i8** %maz, align 8
  %42 = load i32, i32* %mw, align 4
  %43 = load i32, i32* %mh, align 4
  %44 = load i32, i32* %x1, align 4
  %45 = load i32, i32* %x2, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %y2, align 4
  %48 = load i32, i32* %deadx, align 4
  %49 = load i32, i32* %deady, align 4
  call void @mask_maze(i32 %40, i8* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %50 = load i32, i32* %mw, align 4
  store i32 %50, i32* %maz_yy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.then.31
  %51 = load i32, i32* %maz_yy, align 4
  %52 = load i32, i32* %mh, align 4
  %53 = load i32, i32* %mw, align 4
  %mul33 = mul i32 %52, %53
  %cmp = icmp ult i32 %51, %mul33
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %maz_xx, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body
  %54 = load i32, i32* %maz_xx, align 4
  %55 = load i32, i32* %mw, align 4
  %cmp36 = icmp ult i32 %54, %55
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %56 = load i32, i32* %maz_yy, align 4
  %57 = load i32, i32* %maz_xx, align 4
  %add = add nsw i32 %56, %57
  %idxprom = sext i32 %add to i64
  %58 = load i8*, i8** %maz, align 8
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 %idxprom
  %59 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %59 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %for.body.38
  %60 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  switch i32 %60, label %sw.default.47 [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.45
  ]

sw.bb.43:                                         ; preds = %if.then.42
  %61 = load i32, i32* %maz_yy, align 4
  %62 = load i32, i32* %maz_xx, align 4
  %add44 = add nsw i32 %61, %62
  %63 = load i8*, i8** %maz, align 8
  %64 = load i32, i32* %mw, align 4
  %65 = load i32, i32* %mh, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  call void @mazegen(i32 %add44, i8* %63, i32 %64, i32 %65, i32 %66)
  br label %sw.epilog.48

sw.bb.45:                                         ; preds = %if.then.42
  %67 = load i32, i32* %maz_yy, align 4
  %68 = load i32, i32* %maz_xx, align 4
  %add46 = add nsw i32 %67, %68
  %69 = load i8*, i8** %maz, align 8
  %70 = load i32, i32* %mw, align 4
  %71 = load i32, i32* %mh, align 4
  call void @prim(i32 %add46, i8* %69, i32 %70, i32 %71)
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %if.then.42
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %sw.bb.45, %sw.bb.43
  br label %if.end.49

if.end.49:                                        ; preds = %sw.epilog.48, %for.body.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %72 = load i32, i32* %maz_xx, align 4
  %add50 = add nsw i32 %72, 2
  store i32 %add50, i32* %maz_xx, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %73 = load i32, i32* %mw, align 4
  %mul52 = mul i32 2, %73
  %74 = load i32, i32* %maz_yy, align 4
  %add53 = add i32 %74, %mul52
  store i32 %add53, i32* %maz_yy, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  br label %if.end.61

if.else.55:                                       ; preds = %if.else.29
  %75 = load i32, i32* %mw, align 4
  %add56 = add i32 %75, 1
  store i32 %add56, i32* %pos, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  switch i32 %76, label %sw.default.59 [
    i32 0, label %sw.bb.57
    i32 1, label %sw.bb.58
  ]

sw.bb.57:                                         ; preds = %if.else.55
  %77 = load i32, i32* %pos, align 4
  %78 = load i8*, i8** %maz, align 8
  %79 = load i32, i32* %mw, align 4
  %80 = load i32, i32* %mh, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  call void @mazegen(i32 %77, i8* %78, i32 %79, i32 %80, i32 %81)
  br label %sw.epilog.60

sw.bb.58:                                         ; preds = %if.else.55
  %82 = load i32, i32* %pos, align 4
  %83 = load i8*, i8** %maz, align 8
  %84 = load i32, i32* %mw, align 4
  %85 = load i32, i32* %mh, align 4
  call void @prim(i32 %82, i8* %83, i32 %84, i32 %85)
  br label %sw.epilog.60

sw.default.59:                                    ; preds = %if.else.55
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %sw.default.59, %sw.bb.58, %sw.bb.57
  br label %if.end.61

if.end.61:                                        ; preds = %sw.epilog.60, %for.end.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %sw.epilog.28
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %87 = load i32, i32* %x1, align 4
  %88 = load i32, i32* %y1, align 4
  %89 = load i32, i32* %x2, align 4
  %90 = load i32, i32* %x1, align 4
  %sub63 = sub nsw i32 %89, %90
  %91 = load i32, i32* %y2, align 4
  %92 = load i32, i32* %y1, align 4
  %sub64 = sub nsw i32 %91, %92
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %86, i32 %87, i32 %88, i32 %sub63, i32 %sub64, i32 1, i32 1)
  store i32 0, i32* %cur_progress, align 4
  store double 0.000000e+00, double* %per_progress, align 8
  %93 = load i32, i32* %x2, align 4
  %94 = load i32, i32* %x1, align 4
  %sub65 = sub nsw i32 %93, %94
  %95 = load i32, i32* %y2, align 4
  %96 = load i32, i32* %y1, align 4
  %sub66 = sub nsw i32 %95, %96
  %mul67 = mul nsw i32 %sub65, %sub66
  %div68 = sdiv i32 %mul67, 100
  store i32 %div68, i32* %max_progress, align 4
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @get_colors(%struct._GimpDrawable* %97, i8* %arraydecay, i8* %arraydecay69)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #4
  %call71 = call i32 @gimp_progress_init(i8* %call70)
  %call72 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call72, i8** %pr, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.180, %if.end.62
  %98 = load i8*, i8** %pr, align 8
  %cmp74 = icmp ne i8* %98, null
  br i1 %cmp74, label %for.body.76, label %for.end.182

for.body.76:                                      ; preds = %for.cond.73
  %x77 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %99 = load i32, i32* %x77, align 4
  %100 = load i32, i32* %x1, align 4
  %sub78 = sub nsw i32 %99, %100
  %101 = load i32, i32* %deadx, align 4
  %sub79 = sub nsw i32 %sub78, %101
  store i32 %sub79, i32* %x, align 4
  %y80 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %102 = load i32, i32* %y80, align 4
  %103 = load i32, i32* %y1, align 4
  %sub81 = sub nsw i32 %102, %103
  %104 = load i32, i32* %deady, align 4
  %sub82 = sub nsw i32 %sub81, %104
  store i32 %sub82, i32* %y, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %106 = load i32, i32* %x, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %rem = srem i32 %106, %107
  %sub83 = sub nsw i32 %105, %rem
  store i32 %sub83, i32* %dx, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %109 = load i32, i32* %y, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %rem84 = srem i32 %109, %110
  %sub85 = sub nsw i32 %108, %rem84
  store i32 %sub85, i32* %dy, align 4
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %div86 = sdiv i32 %111, %112
  store i32 %div86, i32* %maz_x, align 4
  %113 = load i32, i32* %mw, align 4
  %114 = load i32, i32* %y, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %div87 = sdiv i32 %114, %115
  %mul88 = mul i32 %113, %div87
  store i32 %mul88, i32* %maz_row, align 4
  %116 = load i32, i32* %dx, align 4
  %117 = load i32, i32* %dy, align 4
  %118 = load i32, i32* %maz_row, align 4
  %119 = load i32, i32* %maz_x, align 4
  %add89 = add nsw i32 %118, %119
  %idxprom90 = sext i32 %add89 to i64
  %120 = load i8*, i8** %maz, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %120, i64 %idxprom90
  %121 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %121 to i32
  %cmp93 = icmp eq i32 %conv92, 1
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.76
  %arraydecay95 = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %for.body.76
  %arraydecay96 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay95, %cond.true ], [ %arraydecay96, %cond.false ]
  call void @drawbox(%struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0, i32 %116, i32 %117, i8* %cond)
  %122 = load i32, i32* %maz_x, align 4
  %add97 = add nsw i32 %122, 1
  store i32 %add97, i32* %maz_xx, align 4
  %123 = load i32, i32* %dx, align 4
  store i32 %123, i32* %xx, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.114, %cond.end
  %124 = load i32, i32* %xx, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %125 = load i32, i32* %w, align 4
  %cmp99 = icmp slt i32 %124, %125
  br i1 %cmp99, label %for.body.101, label %for.end.116

for.body.101:                                     ; preds = %for.cond.98
  %126 = load i32, i32* %xx, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %128 = load i32, i32* %dy, align 4
  %129 = load i32, i32* %maz_row, align 4
  %130 = load i32, i32* %maz_xx, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %maz_xx, align 4
  %add102 = add nsw i32 %129, %130
  %idxprom103 = sext i32 %add102 to i64
  %131 = load i8*, i8** %maz, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %131, i64 %idxprom103
  %132 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %132 to i32
  %cmp106 = icmp eq i32 %conv105, 1
  br i1 %cmp106, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %for.body.101
  %arraydecay109 = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  br label %cond.end.112

cond.false.110:                                   ; preds = %for.body.101
  %arraydecay111 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.108
  %cond113 = phi i8* [ %arraydecay109, %cond.true.108 ], [ %arraydecay111, %cond.false.110 ]
  call void @drawbox(%struct._GimpPixelRgn* %dest_rgn, i32 %126, i32 0, i32 %127, i32 %128, i8* %cond113)
  br label %for.inc.114

for.inc.114:                                      ; preds = %cond.end.112
  %133 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %134 = load i32, i32* %xx, align 4
  %add115 = add nsw i32 %134, %133
  store i32 %add115, i32* %xx, align 4
  br label %for.cond.98

for.end.116:                                      ; preds = %for.cond.98
  %135 = load i32, i32* %maz_row, align 4
  %136 = load i32, i32* %mw, align 4
  %add117 = add i32 %135, %136
  store i32 %add117, i32* %maz_yy, align 4
  %137 = load i32, i32* %dy, align 4
  store i32 %137, i32* %yy, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.135, %for.end.116
  %138 = load i32, i32* %yy, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %139 = load i32, i32* %h, align 4
  %cmp119 = icmp slt i32 %138, %139
  br i1 %cmp119, label %for.body.121, label %for.end.137

for.body.121:                                     ; preds = %for.cond.118
  %140 = load i32, i32* %yy, align 4
  %141 = load i32, i32* %dx, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %143 = load i32, i32* %maz_yy, align 4
  %144 = load i32, i32* %maz_x, align 4
  %add122 = add nsw i32 %143, %144
  %idxprom123 = sext i32 %add122 to i64
  %145 = load i8*, i8** %maz, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %145, i64 %idxprom123
  %146 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %146 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %for.body.121
  %arraydecay129 = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  br label %cond.end.132

cond.false.130:                                   ; preds = %for.body.121
  %arraydecay131 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.128
  %cond133 = phi i8* [ %arraydecay129, %cond.true.128 ], [ %arraydecay131, %cond.false.130 ]
  call void @drawbox(%struct._GimpPixelRgn* %dest_rgn, i32 0, i32 %140, i32 %141, i32 %142, i8* %cond133)
  %147 = load i32, i32* %mw, align 4
  %148 = load i32, i32* %maz_yy, align 4
  %add134 = add i32 %148, %147
  store i32 %add134, i32* %maz_yy, align 4
  br label %for.inc.135

for.inc.135:                                      ; preds = %cond.end.132
  %149 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %150 = load i32, i32* %yy, align 4
  %add136 = add nsw i32 %150, %149
  store i32 %add136, i32* %yy, align 4
  br label %for.cond.118

for.end.137:                                      ; preds = %for.cond.118
  %151 = load i32, i32* %maz_x, align 4
  %inc138 = add nsw i32 %151, 1
  store i32 %inc138, i32* %maz_x, align 4
  %152 = load i32, i32* %dy, align 4
  store i32 %152, i32* %yy, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.166, %for.end.137
  %153 = load i32, i32* %yy, align 4
  %h140 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %154 = load i32, i32* %h140, align 4
  %cmp141 = icmp slt i32 %153, %154
  br i1 %cmp141, label %for.body.143, label %for.end.168

for.body.143:                                     ; preds = %for.cond.139
  %155 = load i32, i32* %maz_x, align 4
  store i32 %155, i32* %maz_xx, align 4
  %156 = load i32, i32* %mw, align 4
  %157 = load i32, i32* %maz_row, align 4
  %add144 = add i32 %157, %156
  store i32 %add144, i32* %maz_row, align 4
  %158 = load i32, i32* %dx, align 4
  store i32 %158, i32* %xx, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.163, %for.body.143
  %159 = load i32, i32* %xx, align 4
  %w146 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %160 = load i32, i32* %w146, align 4
  %cmp147 = icmp slt i32 %159, %160
  br i1 %cmp147, label %for.body.149, label %for.end.165

for.body.149:                                     ; preds = %for.cond.145
  %161 = load i32, i32* %xx, align 4
  %162 = load i32, i32* %yy, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %165 = load i32, i32* %maz_row, align 4
  %166 = load i32, i32* %maz_xx, align 4
  %inc150 = add nsw i32 %166, 1
  store i32 %inc150, i32* %maz_xx, align 4
  %add151 = add nsw i32 %165, %166
  %idxprom152 = sext i32 %add151 to i64
  %167 = load i8*, i8** %maz, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %167, i64 %idxprom152
  %168 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %168 to i32
  %cmp155 = icmp eq i32 %conv154, 1
  br i1 %cmp155, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %for.body.149
  %arraydecay158 = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  br label %cond.end.161

cond.false.159:                                   ; preds = %for.body.149
  %arraydecay160 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i8* [ %arraydecay158, %cond.true.157 ], [ %arraydecay160, %cond.false.159 ]
  call void @drawbox(%struct._GimpPixelRgn* %dest_rgn, i32 %161, i32 %162, i32 %163, i32 %164, i8* %cond162)
  br label %for.inc.163

for.inc.163:                                      ; preds = %cond.end.161
  %169 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %170 = load i32, i32* %xx, align 4
  %add164 = add nsw i32 %170, %169
  store i32 %add164, i32* %xx, align 4
  br label %for.cond.145

for.end.165:                                      ; preds = %for.cond.145
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.165
  %171 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %172 = load i32, i32* %yy, align 4
  %add167 = add nsw i32 %172, %171
  store i32 %add167, i32* %yy, align 4
  br label %for.cond.139

for.end.168:                                      ; preds = %for.cond.139
  %w169 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %173 = load i32, i32* %w169, align 4
  %h170 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %174 = load i32, i32* %h170, align 4
  %mul171 = mul nsw i32 %173, %174
  %175 = load i32, i32* %cur_progress, align 4
  %add172 = add i32 %175, %mul171
  store i32 %add172, i32* %cur_progress, align 4
  %176 = load i32, i32* %cur_progress, align 4
  %177 = load i32, i32* %max_progress, align 4
  %cmp173 = icmp ugt i32 %176, %177
  br i1 %cmp173, label %if.then.175, label %if.end.179

if.then.175:                                      ; preds = %for.end.168
  %178 = load i32, i32* %cur_progress, align 4
  %179 = load i32, i32* %max_progress, align 4
  %sub176 = sub i32 %178, %179
  store i32 %sub176, i32* %cur_progress, align 4
  %180 = load double, double* %per_progress, align 8
  %add177 = fadd double %180, 1.000000e-02
  store double %add177, double* %per_progress, align 8
  %181 = load double, double* %per_progress, align 8
  %call178 = call i32 @gimp_progress_update(double %181)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.175, %for.end.168
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %182 = load i8*, i8** %pr, align 8
  %call181 = call i8* @gimp_pixel_rgns_process(i8* %182)
  store i8* %call181, i8** %pr, align 8
  br label %for.cond.73

for.end.182:                                      ; preds = %for.cond.73
  %call183 = call i32 @gimp_progress_update(double 1.000000e+00)
  %183 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %183)
  %184 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id184 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %184, i32 0, i32 0
  %185 = load i32, i32* %drawable_id184, align 4
  %call185 = call i32 @gimp_drawable_merge_shadow(i32 %185, i32 1)
  %186 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id186 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %186, i32 0, i32 0
  %187 = load i32, i32* %drawable_id186, align 4
  %188 = load i32, i32* %x1, align 4
  %189 = load i32, i32* %y1, align 4
  %190 = load i32, i32* %x2, align 4
  %191 = load i32, i32* %x1, align 4
  %sub187 = sub nsw i32 %190, %191
  %192 = load i32, i32* %y2, align 4
  %193 = load i32, i32* %y1, align 4
  %sub188 = sub nsw i32 %192, %193
  %call189 = call i32 @gimp_drawable_update(i32 %187, i32 %188, i32 %189, i32 %sub187, i32 %sub188)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

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

declare void @mazegen_tileable(i32, i8*, i32, i32, i32) #1

declare void @prim_tileable(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mask_maze(i32 %drawable_ID, i8* %maz, i32 %mw, i32 %mh, i32 %x1, i32 %x2, i32 %y1, i32 %y2, i32 %deadx, i32 %deady) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %maz.addr = alloca i8*, align 8
  %mw.addr = alloca i32, align 4
  %mh.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %deadx.addr = alloca i32, align 4
  %deady.addr = alloca i32, align 4
  %selection_ID = alloca i32, align 4
  %sel_rgn = alloca %struct._GimpPixelRgn, align 8
  %xx0 = alloca i32, align 4
  %yy0 = alloca i32, align 4
  %xoff = alloca i32, align 4
  %yoff = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %foo = alloca i32, align 4
  %cur_row = alloca i32, align 4
  %cur_col = alloca i32, align 4
  %x1half = alloca i32, align 4
  %x2half = alloca i32, align 4
  %y1half = alloca i32, align 4
  %y2half = alloca i32, align 4
  %linebuf = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %maz, i8** %maz.addr, align 8
  store i32 %mw, i32* %mw.addr, align 4
  store i32 %mh, i32* %mh.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %deadx, i32* %deadx.addr, align 4
  store i32 %deady, i32* %deady.addr, align 4
  store i32 0, i32* %xx0, align 4
  store i32 0, i32* %yy0, align 4
  store i32 0, i32* %xx, align 4
  store i32 0, i32* %yy, align 4
  store i32 0, i32* %foo, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_get_image(i32 %0)
  %call1 = call i32 @gimp_image_get_selection(i32 %call)
  store i32 %call1, i32* %selection_ID, align 4
  %1 = load i32, i32* %selection_ID, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.152

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %selection_ID, align 4
  %call2 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %2)
  %3 = load i32, i32* %x1.addr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %x2.addr, align 4
  %6 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %y2.addr, align 4
  %8 = load i32, i32* %y1.addr, align 4
  %sub3 = sub nsw i32 %7, %8
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %sel_rgn, %struct._GimpDrawable* %call2, i32 %3, i32 %4, i32 %sub, i32 %sub3, i32 0, i32 0)
  %9 = load i32, i32* %drawable_ID.addr, align 4
  %call4 = call i32 @gimp_drawable_offsets(i32 %9, i32* %xoff, i32* %yoff)
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %sel_rgn, i32 0, i32 6
  %10 = load i32, i32* %w, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %sel_rgn, i32 0, i32 2
  %11 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %10, %11
  %conv = sext i32 %mul to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %linebuf, align 8
  %12 = load i32, i32* %x1.addr, align 4
  %13 = load i32, i32* %deadx.addr, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %add6 = add nsw i32 %add, %14
  %15 = load i32, i32* %xoff, align 4
  %add7 = add nsw i32 %add6, %15
  store i32 %add7, i32* %xx0, align 4
  %16 = load i32, i32* %y1.addr, align 4
  %17 = load i32, i32* %deady.addr, align 4
  %add8 = add nsw i32 %16, %17
  %18 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %add9 = add nsw i32 %add8, %18
  %19 = load i32, i32* %yoff, align 4
  %add10 = add nsw i32 %add9, %19
  store i32 %add10, i32* %yy0, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %div = sdiv i32 %20, 2
  store i32 %div, i32* %x1half, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %sub11 = sub nsw i32 %21, 1
  store i32 %sub11, i32* %x2half, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %div12 = sdiv i32 %22, 2
  store i32 %div12, i32* %y1half, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %sub13 = sub nsw i32 %23, 1
  store i32 %sub13, i32* %y2half, align 4
  %24 = load i32, i32* %yy0, align 4
  %25 = load i32, i32* %y1half, align 4
  %add14 = add nsw i32 %24, %25
  store i32 %add14, i32* %yy, align 4
  store i32 1, i32* %cur_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %cur_row, align 4
  %27 = load i32, i32* %mh.addr, align 4
  %cmp15 = icmp ult i32 %26, %27
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %linebuf, align 8
  %29 = load i32, i32* %x1.addr, align 4
  %30 = load i32, i32* %xoff, align 4
  %add17 = add nsw i32 %29, %30
  %31 = load i32, i32* %yy, align 4
  %32 = load i32, i32* %x2.addr, align 4
  %33 = load i32, i32* %x1.addr, align 4
  %sub18 = sub nsw i32 %32, %33
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %sel_rgn, i8* %28, i32 %add17, i32 %31, i32 %sub18)
  store i32 1, i32* %cur_col, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  store i32 %34, i32* %xx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %for.body
  %35 = load i32, i32* %cur_col, align 4
  %36 = load i32, i32* %mw.addr, align 4
  %cmp19 = icmp ult i32 %35, %36
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %xx, align 4
  %idxprom = zext i32 %37 to i64
  %38 = load i8*, i8** %linebuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %39 to i32
  %40 = load i32, i32* %xx, align 4
  %41 = load i32, i32* %x1half, align 4
  %add22 = add i32 %40, %41
  %idxprom23 = zext i32 %add22 to i64
  %42 = load i8*, i8** %linebuf, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %42, i64 %idxprom23
  %43 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %43 to i32
  %add26 = add nsw i32 %conv21, %conv25
  %44 = load i32, i32* %xx, align 4
  %45 = load i32, i32* %x2half, align 4
  %add27 = add i32 %44, %45
  %idxprom28 = zext i32 %add27 to i64
  %46 = load i8*, i8** %linebuf, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 %idxprom28
  %47 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %47 to i32
  %add31 = add nsw i32 %add26, %conv30
  %div32 = sdiv i32 %add31, 5
  %conv33 = trunc i32 %div32 to i8
  %48 = load i32, i32* %cur_row, align 4
  %49 = load i32, i32* %mw.addr, align 4
  %mul34 = mul i32 %48, %49
  %50 = load i32, i32* %cur_col, align 4
  %add35 = add i32 %mul34, %50
  %idxprom36 = zext i32 %add35 to i64
  %51 = load i8*, i8** %maz.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %51, i64 %idxprom36
  store i8 %conv33, i8* %arrayidx37, align 1
  %52 = load i32, i32* %cur_col, align 4
  %add38 = add nsw i32 %52, 1
  store i32 %add38, i32* %cur_col, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %54 = load i32, i32* %xx, align 4
  %add39 = add i32 %54, %53
  store i32 %add39, i32* %xx, align 4
  %55 = load i32, i32* %cur_col, align 4
  %56 = load i32, i32* %mw.addr, align 4
  %cmp40 = icmp ult i32 %55, %56
  br i1 %cmp40, label %if.then.42, label %if.end.62

if.then.42:                                       ; preds = %while.body
  %57 = load i32, i32* %xx, align 4
  %idxprom43 = zext i32 %57 to i64
  %58 = load i8*, i8** %linebuf, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %58, i64 %idxprom43
  %59 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %59 to i32
  %60 = load i32, i32* %xx, align 4
  %61 = load i32, i32* %x1half, align 4
  %add46 = add i32 %60, %61
  %idxprom47 = zext i32 %add46 to i64
  %62 = load i8*, i8** %linebuf, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %62, i64 %idxprom47
  %63 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %63 to i32
  %add50 = add nsw i32 %conv45, %conv49
  %64 = load i32, i32* %xx, align 4
  %65 = load i32, i32* %x2half, align 4
  %add51 = add i32 %64, %65
  %idxprom52 = zext i32 %add51 to i64
  %66 = load i8*, i8** %linebuf, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %66, i64 %idxprom52
  %67 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %67 to i32
  %add55 = add nsw i32 %add50, %conv54
  %div56 = sdiv i32 %add55, 3
  %conv57 = trunc i32 %div56 to i8
  %68 = load i32, i32* %cur_row, align 4
  %69 = load i32, i32* %mw.addr, align 4
  %mul58 = mul i32 %68, %69
  %70 = load i32, i32* %cur_col, align 4
  %add59 = add i32 %mul58, %70
  %idxprom60 = zext i32 %add59 to i64
  %71 = load i8*, i8** %maz.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %71, i64 %idxprom60
  store i8 %conv57, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.42, %while.body
  %72 = load i32, i32* %cur_col, align 4
  %add63 = add nsw i32 %72, 1
  store i32 %add63, i32* %cur_col, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %74 = load i32, i32* %xx, align 4
  %add64 = add i32 %74, %73
  store i32 %add64, i32* %xx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %75 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %mul65 = mul nsw i32 2, %75
  %76 = load i32, i32* %yy, align 4
  %add66 = add i32 %76, %mul65
  store i32 %add66, i32* %yy, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %77 = load i32, i32* %cur_row, align 4
  %add67 = add nsw i32 %77, 2
  store i32 %add67, i32* %cur_row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load i8*, i8** %linebuf, align 8
  call void @g_free(i8* %78)
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %sel_rgn, i32 0, i32 7
  %79 = load i32, i32* %h, align 4
  %bpp68 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %sel_rgn, i32 0, i32 2
  %80 = load i32, i32* %bpp68, align 4
  %mul69 = mul nsw i32 %79, %80
  %conv70 = sext i32 %mul69 to i64
  %call71 = call noalias i8* @g_malloc_n(i64 %conv70, i64 1)
  store i8* %call71, i8** %linebuf, align 8
  %81 = load i32, i32* %xx0, align 4
  %82 = load i32, i32* %x1half, align 4
  %add72 = add nsw i32 %81, %82
  store i32 %add72, i32* %xx, align 4
  store i32 1, i32* %cur_col, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.128, %for.end
  %83 = load i32, i32* %cur_col, align 4
  %84 = load i32, i32* %mw.addr, align 4
  %cmp74 = icmp ult i32 %83, %84
  br i1 %cmp74, label %for.body.76, label %for.end.130

for.body.76:                                      ; preds = %for.cond.73
  %85 = load i8*, i8** %linebuf, align 8
  %86 = load i32, i32* %xx, align 4
  %87 = load i32, i32* %y1.addr, align 4
  %88 = load i32, i32* %y2.addr, align 4
  %89 = load i32, i32* %y1.addr, align 4
  %sub77 = sub nsw i32 %88, %89
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %sel_rgn, i8* %85, i32 %86, i32 %87, i32 %sub77)
  store i32 1, i32* %cur_row, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  store i32 %90, i32* %yy, align 4
  br label %while.cond.78

while.cond.78:                                    ; preds = %if.end.122, %for.body.76
  %91 = load i32, i32* %cur_row, align 4
  %92 = load i32, i32* %mh.addr, align 4
  %cmp79 = icmp ult i32 %91, %92
  br i1 %cmp79, label %while.body.81, label %while.end.125

while.body.81:                                    ; preds = %while.cond.78
  %93 = load i32, i32* %yy, align 4
  %idxprom82 = zext i32 %93 to i64
  %94 = load i8*, i8** %linebuf, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %94, i64 %idxprom82
  %95 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %95 to i32
  %96 = load i32, i32* %yy, align 4
  %97 = load i32, i32* %y2half, align 4
  %add85 = add i32 %96, %97
  %idxprom86 = zext i32 %add85 to i64
  %98 = load i8*, i8** %linebuf, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %98, i64 %idxprom86
  %99 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %99 to i32
  %add89 = add nsw i32 %conv84, %conv88
  %div90 = sdiv i32 %add89, 5
  %100 = load i32, i32* %cur_row, align 4
  %101 = load i32, i32* %mw.addr, align 4
  %mul91 = mul i32 %100, %101
  %102 = load i32, i32* %cur_col, align 4
  %add92 = add i32 %mul91, %102
  %idxprom93 = zext i32 %add92 to i64
  %103 = load i8*, i8** %maz.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %103, i64 %idxprom93
  %104 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %104 to i32
  %add96 = add nsw i32 %conv95, %div90
  %conv97 = trunc i32 %add96 to i8
  store i8 %conv97, i8* %arrayidx94, align 1
  %105 = load i32, i32* %cur_row, align 4
  %add98 = add nsw i32 %105, 1
  store i32 %add98, i32* %cur_row, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %107 = load i32, i32* %yy, align 4
  %add99 = add i32 %107, %106
  store i32 %add99, i32* %yy, align 4
  %108 = load i32, i32* %cur_row, align 4
  %109 = load i32, i32* %mh.addr, align 4
  %cmp100 = icmp ult i32 %108, %109
  br i1 %cmp100, label %if.then.102, label %if.end.122

if.then.102:                                      ; preds = %while.body.81
  %110 = load i32, i32* %yy, align 4
  %idxprom103 = zext i32 %110 to i64
  %111 = load i8*, i8** %linebuf, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %111, i64 %idxprom103
  %112 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %112 to i32
  %113 = load i32, i32* %yy, align 4
  %114 = load i32, i32* %y1half, align 4
  %add106 = add i32 %113, %114
  %idxprom107 = zext i32 %add106 to i64
  %115 = load i8*, i8** %linebuf, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %115, i64 %idxprom107
  %116 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %116 to i32
  %add110 = add nsw i32 %conv105, %conv109
  %117 = load i32, i32* %yy, align 4
  %118 = load i32, i32* %y2half, align 4
  %add111 = add i32 %117, %118
  %idxprom112 = zext i32 %add111 to i64
  %119 = load i8*, i8** %linebuf, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %119, i64 %idxprom112
  %120 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %120 to i32
  %add115 = add nsw i32 %add110, %conv114
  %div116 = sdiv i32 %add115, 3
  %conv117 = trunc i32 %div116 to i8
  %121 = load i32, i32* %cur_row, align 4
  %122 = load i32, i32* %mw.addr, align 4
  %mul118 = mul i32 %121, %122
  %123 = load i32, i32* %cur_col, align 4
  %add119 = add i32 %mul118, %123
  %idxprom120 = zext i32 %add119 to i64
  %124 = load i8*, i8** %maz.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %124, i64 %idxprom120
  store i8 %conv117, i8* %arrayidx121, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.102, %while.body.81
  %125 = load i32, i32* %cur_row, align 4
  %add123 = add nsw i32 %125, 1
  store i32 %add123, i32* %cur_row, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %127 = load i32, i32* %yy, align 4
  %add124 = add i32 %127, %126
  store i32 %add124, i32* %yy, align 4
  br label %while.cond.78

while.end.125:                                    ; preds = %while.cond.78
  %128 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %mul126 = mul nsw i32 2, %128
  %129 = load i32, i32* %xx, align 4
  %add127 = add i32 %129, %mul126
  store i32 %add127, i32* %xx, align 4
  br label %for.inc.128

for.inc.128:                                      ; preds = %while.end.125
  %130 = load i32, i32* %cur_col, align 4
  %add129 = add nsw i32 %130, 2
  store i32 %add129, i32* %cur_col, align 4
  br label %for.cond.73

for.end.130:                                      ; preds = %for.cond.73
  %131 = load i8*, i8** %linebuf, align 8
  call void @g_free(i8* %131)
  store i32 0, i32* %yy, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.150, %for.end.130
  %132 = load i32, i32* %yy, align 4
  %133 = load i32, i32* %mh.addr, align 4
  %cmp132 = icmp ult i32 %132, %133
  br i1 %cmp132, label %for.body.134, label %for.end.152

for.body.134:                                     ; preds = %for.cond.131
  store i32 0, i32* %xx, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.147, %for.body.134
  %134 = load i32, i32* %xx, align 4
  %135 = load i32, i32* %mw.addr, align 4
  %cmp136 = icmp ult i32 %134, %135
  br i1 %cmp136, label %for.body.138, label %for.end.149

for.body.138:                                     ; preds = %for.cond.135
  %136 = load i32, i32* %foo, align 4
  %idxprom139 = zext i32 %136 to i64
  %137 = load i8*, i8** %maz.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %137, i64 %idxprom139
  %138 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %138 to i32
  %cmp142 = icmp slt i32 %conv141, 127
  %cond = select i1 %cmp142, i32 3, i32 0
  %conv144 = trunc i32 %cond to i8
  %139 = load i32, i32* %foo, align 4
  %idxprom145 = zext i32 %139 to i64
  %140 = load i8*, i8** %maz.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %140, i64 %idxprom145
  store i8 %conv144, i8* %arrayidx146, align 1
  %141 = load i32, i32* %foo, align 4
  %inc = add i32 %141, 1
  store i32 %inc, i32* %foo, align 4
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.138
  %142 = load i32, i32* %xx, align 4
  %inc148 = add i32 %142, 1
  store i32 %inc148, i32* %xx, align 4
  br label %for.cond.135

for.end.149:                                      ; preds = %for.cond.135
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %143 = load i32, i32* %yy, align 4
  %inc151 = add i32 %143, 1
  store i32 %inc151, i32* %yy, align 4
  br label %for.cond.131

for.end.152:                                      ; preds = %if.then, %for.cond.131
  ret void
}

declare void @mazegen(i32, i8*, i32, i32, i32) #1

declare void @prim(i32, i8*, i32, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @get_colors(%struct._GimpDrawable*, i8*, i8*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare void @drawbox(%struct._GimpPixelRgn*, i32, i32, i32, i32, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
