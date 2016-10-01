; ModuleID = './MultiSource.Benchmarks.MallocBench/101.gs.zfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_font_dir_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_show_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }

@ifont_dir = common global %struct.gs_font_dir_s* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@name_FontDirectory = common global %struct.ref_s zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@name_FontMatrix = common global %struct.ref_s zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@name_FontType = common global %struct.ref_s zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@name_FontBBox = common global %struct.ref_s zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@name_Encoding = common global %struct.ref_s zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@name_PaintType = common global %struct.ref_s zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@name_UniqueID = common global %struct.ref_s zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"BuildChar\00", align 1
@name_BuildChar = common global %struct.ref_s zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Type1BuildChar\00", align 1
@name_Type1BuildChar = common global %struct.ref_s zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@name_Private = common global %struct.ref_s zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@name_CharStrings = common global %struct.ref_s zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@name_FID = common global %struct.ref_s zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@name_Subrs = common global %struct.ref_s zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@name_lenIV = common global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_subrs = internal global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_charstrings = internal global %struct.ref_s zeroinitializer, align 8
@osp_nargs = external global [6 x %struct.ref_s*], align 16
@dstack = external global [0 x %struct.ref_s], align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"definefont(font)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"definefont(data)\00", align 1
@osp = external global %struct.ref_s*, align 8
@igs = external global %struct.gs_state_s*, align 8
@istate = external global %struct.int_state_s, align 8
@ostop = external global %struct.ref_s*, align 8
@zfont_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentfont }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @zdefinefont }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakefont }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zscalefont }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetfont }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.ref_s*)* @zcachestatus }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcachelimit }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcacheparams }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentcacheparams }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"0currentfont\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"2definefont\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"2makefont\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"2scalefont\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"1setfont\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"0cachestatus\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"1setcachelimit\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"1setcacheparams\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"0currentcacheparams\00", align 1

; Function Attrs: nounwind uwtable
define void @zfont_init() #0 {
entry:
  %call = call %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* @alloc, void (i8*, i32, i32, i8*)* @alloc_free)
  store %struct.gs_font_dir_s* %call, %struct.gs_font_dir_s** @ifont_dir, align 8
  call void @name_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.ref_s* @name_FontDirectory)
  call void @name_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s* @name_FontMatrix)
  call void @name_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s* @name_FontType)
  call void @name_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s* @name_FontBBox)
  call void @name_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s* @name_Encoding)
  call void @name_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* @name_PaintType)
  call void @name_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s* @name_UniqueID)
  call void @name_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s* @name_BuildChar)
  call void @name_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), %struct.ref_s* @name_Type1BuildChar)
  call void @name_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* @name_Private)
  call void @name_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s* @name_CharStrings)
  call void @name_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s* @name_FID)
  call void @name_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct.ref_s* @name_Subrs)
  call void @name_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s* @name_lenIV)
  ret void
}

declare %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*) #1

declare i8* @alloc(i32, i32, i8*) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

declare void @name_enter(i8*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zdefinefont(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pFontDirectory = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pfid = alloca %struct.ref_s*, align 8
  %pmatrix = alloca %struct.ref_s*, align 8
  %ptype = alloca %struct.ref_s*, align 8
  %pbbox = alloca %struct.ref_s*, align 8
  %pencoding = alloca %struct.ref_s*, align 8
  %pcharstrings = alloca %struct.ref_s*, align 8
  %ppainttype = alloca %struct.ref_s*, align 8
  %puniqueid = alloca %struct.ref_s*, align 8
  %pbuildchar = alloca %struct.ref_s*, align 8
  %psubrs = alloca %struct.ref_s*, align 8
  %paint_type = alloca i32, align 4
  %unique_id = alloca i64, align 8
  %lenIV = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  %bbox = alloca [4 x float], align 16
  %pprivate = alloca %struct.ref_s*, align 8
  %plenIV = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 252
  %cmp1 = icmp eq i32 %and, 8
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* @name_FontDirectory, %struct.ref_s** %pFontDirectory)
  %cmp5 = icmp sle i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -10, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call9 = call i32 @dict_lookup(%struct.ref_s* %4, %struct.ref_s* %5, %struct.ref_s* @name_FontMatrix, %struct.ref_s** %pmatrix)
  %cmp10 = icmp sle i32 %call9, 0
  br i1 %cmp10, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call12 = call i32 @dict_lookup(%struct.ref_s* %6, %struct.ref_s* %7, %struct.ref_s* @name_FontType, %struct.ref_s** %ptype)
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then.36, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %ptype, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %9 to i32
  %and18 = and i32 %conv17, 255
  %shr = ashr i32 %and18, 2
  %cmp19 = icmp ne i32 %shr, 5
  br i1 %cmp19, label %if.then.36, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.15
  %10 = load %struct.ref_s*, %struct.ref_s** %ptype, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8
  %cmp22 = icmp ugt i64 %11, 255
  br i1 %cmp22, label %if.then.36, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call25 = call i32 @dict_lookup(%struct.ref_s* %12, %struct.ref_s* %13, %struct.ref_s* @name_FontBBox, %struct.ref_s** %pbbox)
  %cmp26 = icmp sle i32 %call25, 0
  br i1 %cmp26, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call29 = call i32 @dict_lookup(%struct.ref_s* %14, %struct.ref_s* %15, %struct.ref_s* @name_Encoding, %struct.ref_s** %pencoding)
  %cmp30 = icmp sle i32 %call29, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %16 = load %struct.ref_s*, %struct.ref_s** %pmatrix, align 8
  %call33 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %16, %struct.gs_matrix_s* %mat)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.15, %lor.lhs.false, %if.end.8
  store i32 -10, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.32
  %17 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8
  %type_attrs38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %18 = load i16, i16* %type_attrs38, align 2
  %conv39 = zext i16 %18 to i32
  %and40 = and i32 %conv39, 255
  %shr41 = ashr i32 %and40, 2
  switch i32 %shr41, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end.37
  store i32 -10, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end.37, %if.end.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %19 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8
  %type_attrs42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %20 = load i16, i16* %type_attrs42, align 2
  %conv43 = zext i16 %20 to i32
  %and44 = and i32 %conv43, 255
  %shr45 = ashr i32 %and44, 2
  switch i32 %shr45, label %sw.default.46 [
    i32 0, label %sw.bb.47
    i32 10, label %sw.bb.47
  ]

sw.default.46:                                    ; preds = %sw.epilog
  store i32 -10, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.bb.47
  %21 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  %22 = load i16, i16* %size, align 2
  %conv49 = zext i16 %22 to i32
  %cmp50 = icmp ne i32 %conv49, 4
  br i1 %cmp50, label %if.then.57, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %sw.epilog.48
  %23 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %refs = bitcast %union.v* %value53 to %struct.ref_s**
  %24 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 3
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %call54 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 4, float* %arraydecay)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.52, %sw.epilog.48
  store i32 -10, i32* %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.52
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call59 = call i32 @dict_lookup(%struct.ref_s* %25, %struct.ref_s* %26, %struct.ref_s* @name_PaintType, %struct.ref_s** %ppainttype)
  %cmp60 = icmp sle i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.58
  store i32 -1, i32* %paint_type, align 4
  br label %if.end.84

if.else:                                          ; preds = %if.end.58
  %27 = load %struct.ref_s*, %struct.ref_s** %ppainttype, align 8
  %type_attrs63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %28 = load i16, i16* %type_attrs63, align 2
  %conv64 = zext i16 %28 to i32
  %and65 = and i32 %conv64, 255
  %shr66 = ashr i32 %and65, 2
  %cmp67 = icmp ne i32 %shr66, 5
  br i1 %cmp67, label %if.then.79, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.else
  %29 = load %struct.ref_s*, %struct.ref_s** %ppainttype, align 8
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %intval71 = bitcast %union.v* %value70 to i64*
  %30 = load i64, i64* %intval71, align 8
  %cmp72 = icmp slt i64 %30, 0
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.69
  %31 = load %struct.ref_s*, %struct.ref_s** %ppainttype, align 8
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %intval76 = bitcast %union.v* %value75 to i64*
  %32 = load i64, i64* %intval76, align 8
  %cmp77 = icmp sgt i64 %32, 65535
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.74, %lor.lhs.false.69, %if.else
  store i32 -10, i32* %retval
  br label %return

if.end.80:                                        ; preds = %lor.lhs.false.74
  %33 = load %struct.ref_s*, %struct.ref_s** %ppainttype, align 8
  %value81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %intval82 = bitcast %union.v* %value81 to i64*
  %34 = load i64, i64* %intval82, align 8
  %conv83 = trunc i64 %34 to i32
  store i32 %conv83, i32* %paint_type, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.80, %if.then.62
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call85 = call i32 @dict_lookup(%struct.ref_s* %35, %struct.ref_s* %36, %struct.ref_s* @name_UniqueID, %struct.ref_s** %puniqueid)
  %cmp86 = icmp sle i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.end.84
  store i64 -1, i64* %unique_id, align 8
  br label %if.end.110

if.else.89:                                       ; preds = %if.end.84
  %37 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %type_attrs90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %38 = load i16, i16* %type_attrs90, align 2
  %conv91 = zext i16 %38 to i32
  %and92 = and i32 %conv91, 255
  %shr93 = ashr i32 %and92, 2
  %cmp94 = icmp ne i32 %shr93, 5
  br i1 %cmp94, label %if.then.106, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.else.89
  %39 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %value97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %intval98 = bitcast %union.v* %value97 to i64*
  %40 = load i64, i64* %intval98, align 8
  %cmp99 = icmp slt i64 %40, 0
  br i1 %cmp99, label %if.then.106, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.96
  %41 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %value102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %intval103 = bitcast %union.v* %value102 to i64*
  %42 = load i64, i64* %intval103, align 8
  %cmp104 = icmp sgt i64 %42, 16777215
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.96, %if.else.89
  store i32 -10, i32* %retval
  br label %return

if.end.107:                                       ; preds = %lor.lhs.false.101
  %43 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %value108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %intval109 = bitcast %union.v* %value108 to i64*
  %44 = load i64, i64* %intval109, align 8
  store i64 %44, i64* %unique_id, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.107, %if.then.88
  %45 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call111 = call i32 @dict_lookup(%struct.ref_s* %45, %struct.ref_s* %46, %struct.ref_s* @name_BuildChar, %struct.ref_s** %pbuildchar)
  store i32 %call111, i32* %code, align 4
  store i8* null, i8** bitcast (%struct.ref_s* @zdefinefont.no_subrs to i8**), align 8
  store i16 52, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i32 0, i32 1), align 2
  store i16 0, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i32 0, i32 2), align 2
  store %struct.ref_s* @zdefinefont.no_subrs, %struct.ref_s** %psubrs, align 8
  store i64 0, i64* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i32 0, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i32 0, i32 1), align 2
  store %struct.ref_s* @zdefinefont.no_charstrings, %struct.ref_s** %pcharstrings, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %ptype, align 8
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %intval113 = bitcast %union.v* %value112 to i64*
  %48 = load i64, i64* %intval113, align 8
  %cmp114 = icmp eq i64 %48, 1
  br i1 %cmp114, label %if.then.116, label %if.else.201

if.then.116:                                      ; preds = %if.end.110
  %49 = load i32, i32* %code, align 4
  %cmp117 = icmp sgt i32 %49, 0
  br i1 %cmp117, label %if.then.141, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.then.116
  %50 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call120 = call i32 @dict_lookup(%struct.ref_s* %50, %struct.ref_s* %51, %struct.ref_s* @name_CharStrings, %struct.ref_s** %pcharstrings)
  %cmp121 = icmp sle i32 %call120, 0
  br i1 %cmp121, label %if.then.141, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.119
  %52 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8
  %type_attrs124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %53 = load i16, i16* %type_attrs124, align 2
  %conv125 = zext i16 %53 to i32
  %and126 = and i32 %conv125, 255
  %shr127 = ashr i32 %and126, 2
  %cmp128 = icmp ne i32 %shr127, 2
  br i1 %cmp128, label %if.then.141, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.123
  %54 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call131 = call i32 @dict_lookup(%struct.ref_s* %54, %struct.ref_s* %55, %struct.ref_s* @name_Private, %struct.ref_s** %pprivate)
  %cmp132 = icmp sle i32 %call131, 0
  br i1 %cmp132, label %if.then.141, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.130
  %56 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %type_attrs135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %57 = load i16, i16* %type_attrs135, align 2
  %conv136 = zext i16 %57 to i32
  %and137 = and i32 %conv136, 255
  %shr138 = ashr i32 %and137, 2
  %cmp139 = icmp ne i32 %shr138, 2
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %lor.lhs.false.134, %lor.lhs.false.130, %lor.lhs.false.123, %lor.lhs.false.119, %if.then.116
  store i32 -10, i32* %retval
  br label %return

if.end.142:                                       ; preds = %lor.lhs.false.134
  %58 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %call143 = call i32 @dict_lookup(%struct.ref_s* %58, %struct.ref_s* %59, %struct.ref_s* @name_Subrs, %struct.ref_s** %psubrs)
  %cmp144 = icmp sgt i32 %call143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.154

if.then.146:                                      ; preds = %if.end.142
  %60 = load %struct.ref_s*, %struct.ref_s** %psubrs, align 8
  %type_attrs147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 1
  %61 = load i16, i16* %type_attrs147, align 2
  %conv148 = zext i16 %61 to i32
  %and149 = and i32 %conv148, 255
  %shr150 = ashr i32 %and149, 2
  switch i32 %shr150, label %sw.default.151 [
    i32 0, label %sw.bb.152
    i32 10, label %sw.bb.152
  ]

sw.default.151:                                   ; preds = %if.then.146
  store i32 -10, i32* %retval
  br label %return

sw.bb.152:                                        ; preds = %if.then.146, %if.then.146
  br label %sw.epilog.153

sw.epilog.153:                                    ; preds = %sw.bb.152
  br label %if.end.154

if.end.154:                                       ; preds = %sw.epilog.153, %if.end.142
  %62 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %call155 = call i32 @dict_lookup(%struct.ref_s* %62, %struct.ref_s* %63, %struct.ref_s* @name_lenIV, %struct.ref_s** %plenIV)
  %cmp156 = icmp sgt i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.175

if.then.158:                                      ; preds = %if.end.154
  %64 = load %struct.ref_s*, %struct.ref_s** %plenIV, align 8
  %type_attrs159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %65 = load i16, i16* %type_attrs159, align 2
  %conv160 = zext i16 %65 to i32
  %and161 = and i32 %conv160, 255
  %shr162 = ashr i32 %and161, 2
  %cmp163 = icmp ne i32 %shr162, 5
  br i1 %cmp163, label %if.then.170, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %if.then.158
  %66 = load %struct.ref_s*, %struct.ref_s** %plenIV, align 8
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %intval167 = bitcast %union.v* %value166 to i64*
  %67 = load i64, i64* %intval167, align 8
  %cmp168 = icmp ugt i64 %67, 255
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %lor.lhs.false.165, %if.then.158
  store i32 -10, i32* %retval
  br label %return

if.end.171:                                       ; preds = %lor.lhs.false.165
  %68 = load %struct.ref_s*, %struct.ref_s** %plenIV, align 8
  %value172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %intval173 = bitcast %union.v* %value172 to i64*
  %69 = load i64, i64* %intval173, align 8
  %conv174 = trunc i64 %69 to i32
  store i32 %conv174, i32* %lenIV, align 4
  br label %if.end.176

if.else.175:                                      ; preds = %if.end.154
  store i32 4, i32* %lenIV, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.175, %if.end.171
  %70 = load i64, i64* %unique_id, align 8
  %cmp177 = icmp sge i64 %70, 0
  br i1 %cmp177, label %if.then.179, label %if.end.197

if.then.179:                                      ; preds = %if.end.176
  %71 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8
  %call180 = call i32 @dict_lookup(%struct.ref_s* %71, %struct.ref_s* %72, %struct.ref_s* @name_UniqueID, %struct.ref_s** %puniqueid)
  %cmp181 = icmp sle i32 %call180, 0
  br i1 %cmp181, label %if.then.195, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %if.then.179
  %73 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %type_attrs184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %74 = load i16, i16* %type_attrs184, align 2
  %conv185 = zext i16 %74 to i32
  %and186 = and i32 %conv185, 255
  %shr187 = ashr i32 %and186, 2
  %cmp188 = icmp ne i32 %shr187, 5
  br i1 %cmp188, label %if.then.195, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %lor.lhs.false.183
  %75 = load %struct.ref_s*, %struct.ref_s** %puniqueid, align 8
  %value191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %intval192 = bitcast %union.v* %value191 to i64*
  %76 = load i64, i64* %intval192, align 8
  %77 = load i64, i64* %unique_id, align 8
  %cmp193 = icmp ne i64 %76, %77
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %lor.lhs.false.190, %lor.lhs.false.183, %if.then.179
  store i64 -1, i64* %unique_id, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %lor.lhs.false.190
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.176
  store %struct.ref_s* @name_Type1BuildChar, %struct.ref_s** %pbuildchar, align 8
  %78 = load %struct.ref_s*, %struct.ref_s** %pbuildchar, align 8
  %type_attrs198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 1
  %79 = load i16, i16* %type_attrs198, align 2
  %conv199 = zext i16 %79 to i32
  %or = or i32 %conv199, 1
  %conv200 = trunc i32 %or to i16
  store i16 %conv200, i16* %type_attrs198, align 2
  br label %if.end.218

if.else.201:                                      ; preds = %if.end.110
  %80 = load i32, i32* %code, align 4
  %cmp202 = icmp sle i32 %80, 0
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.else.201
  store i32 -10, i32* %retval
  br label %return

if.end.205:                                       ; preds = %if.else.201
  %81 = load %struct.ref_s*, %struct.ref_s** %pbuildchar, align 8
  %type_attrs206 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %82 = load i16, i16* %type_attrs206, align 2
  %conv207 = zext i16 %82 to i32
  %and208 = and i32 %conv207, 255
  %shr209 = ashr i32 %and208, 2
  switch i32 %shr209, label %sw.default.210 [
    i32 0, label %sw.bb.211
    i32 10, label %sw.bb.211
  ]

sw.default.210:                                   ; preds = %if.end.205
  store i32 -20, i32* %retval
  br label %return

sw.bb.211:                                        ; preds = %if.end.205, %if.end.205
  br label %sw.epilog.212

sw.epilog.212:                                    ; preds = %sw.bb.211
  %83 = load %struct.ref_s*, %struct.ref_s** %pbuildchar, align 8
  %type_attrs213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  %84 = load i16, i16* %type_attrs213, align 2
  %conv214 = zext i16 %84 to i32
  %neg = xor i32 %conv214, -1
  %and215 = and i32 %neg, 3
  %tobool = icmp ne i32 %and215, 0
  br i1 %tobool, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %sw.epilog.212
  store i32 -7, i32* %retval
  br label %return

if.end.217:                                       ; preds = %sw.epilog.212
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.197
  %85 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %86 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call219 = call i32 @dict_lookup(%struct.ref_s* %85, %struct.ref_s* %86, %struct.ref_s* @name_FID, %struct.ref_s** %pfid)
  store i32 %call219, i32* %code, align 4
  %87 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs220 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 1
  %88 = load i16, i16* %type_attrs220, align 2
  %conv221 = zext i16 %88 to i32
  %and222 = and i32 %conv221, 256
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.then.224, label %if.else.255

if.then.224:                                      ; preds = %if.end.218
  %89 = load i32, i32* %code, align 4
  %cmp225 = icmp sgt i32 %89, 0
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.then.224
  store i32 -10, i32* %retval
  br label %return

if.end.228:                                       ; preds = %if.then.224
  %call229 = call i8* @alloc(i32 1, i32 184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  %90 = bitcast i8* %call229 to %struct.gs_font_s*
  store %struct.gs_font_s* %90, %struct.gs_font_s** %pfont, align 8
  %cmp230 = icmp eq %struct.gs_font_s* %90, null
  br i1 %cmp230, label %if.then.236, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %if.end.228
  %call233 = call i8* @alloc(i32 1, i32 112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  %91 = bitcast i8* %call233 to %struct.font_data_s*
  store %struct.font_data_s* %91, %struct.font_data_s** %pdata, align 8
  %cmp234 = icmp eq %struct.font_data_s* %91, null
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %lor.lhs.false.232, %if.end.228
  store i32 -25, i32* %retval
  br label %return

if.end.237:                                       ; preds = %lor.lhs.false.232
  %92 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %93 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %call238 = call i32 @add_FID(%struct.ref_s* %92, %struct.gs_font_s* %93)
  store i32 %call238, i32* %code, align 4
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.end.237
  %94 = load i32, i32* %code, align 4
  store i32 %94, i32* %retval
  br label %return

if.end.242:                                       ; preds = %if.end.237
  %95 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %95, i32 0, i32 0
  %96 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %97 = bitcast %struct.ref_s* %dict to i8*
  %98 = bitcast %struct.ref_s* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false)
  %99 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %99, i32 0, i32 1
  %100 = load %struct.ref_s*, %struct.ref_s** %pbuildchar, align 8
  %101 = bitcast %struct.ref_s* %BuildChar to i8*
  %102 = bitcast %struct.ref_s* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 16, i32 8, i1 false)
  %103 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %103, i32 0, i32 2
  %104 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8
  %105 = bitcast %struct.ref_s* %Encoding to i8*
  %106 = bitcast %struct.ref_s* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 16, i32 8, i1 false)
  %107 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %107, i32 0, i32 3
  %108 = load %struct.ref_s*, %struct.ref_s** %pcharstrings, align 8
  %109 = bitcast %struct.ref_s* %CharStrings to i8*
  %110 = bitcast %struct.ref_s* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 16, i32 8, i1 false)
  %111 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %Subrs = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %111, i32 0, i32 4
  %112 = load %struct.ref_s*, %struct.ref_s** %psubrs, align 8
  %113 = bitcast %struct.ref_s* %Subrs to i8*
  %114 = bitcast %struct.ref_s* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 16, i32 8, i1 false)
  %115 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %type1_data = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %115, i32 0, i32 5
  %subr_proc = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %type1_data, i32 0, i32 0
  store i32 (%struct.gs_type1_data_s*, i32, i8**)* @z1_subr_proc, i32 (%struct.gs_type1_data_s*, i32, i8**)** %subr_proc, align 8
  %116 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %type1_data243 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %116, i32 0, i32 5
  %pop_proc = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %type1_data243, i32 0, i32 1
  store i32 (%struct.gs_type1_data_s*, i64*)* @z1_pop_proc, i32 (%struct.gs_type1_data_s*, i64*)** %pop_proc, align 8
  %117 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %118 = bitcast %struct.font_data_s* %117 to i8*
  %119 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %type1_data244 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %119, i32 0, i32 5
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %type1_data244, i32 0, i32 2
  store i8* %118, i8** %proc_data, align 8
  %120 = load i32, i32* %lenIV, align 4
  %121 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %type1_data245 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %121, i32 0, i32 5
  %lenIV246 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %type1_data245, i32 0, i32 3
  store i32 %120, i32* %lenIV246, align 4
  %122 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %123 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %123, i32 0, i32 2
  store %struct.gs_font_s* %122, %struct.gs_font_s** %base, align 8
  %124 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %125 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %125, i32 0, i32 3
  store %struct.gs_font_dir_s* %124, %struct.gs_font_dir_s** %dir, align 8
  %126 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8
  %127 = bitcast %struct.font_data_s* %126 to i8*
  %128 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %128, i32 0, i32 4
  store i8* %127, i8** %client_data, align 8
  %129 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %matrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %129, i32 0, i32 5
  %130 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %131 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 96, i32 8, i1 false)
  %132 = load %struct.ref_s*, %struct.ref_s** %ptype, align 8
  %value247 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 0, i32 0
  %intval248 = bitcast %union.v* %value247 to i64*
  %133 = load i64, i64* %intval248, align 8
  %conv249 = trunc i64 %133 to i32
  %134 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %font_type = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %134, i32 0, i32 6
  store i32 %conv249, i32* %font_type, align 4
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  %135 = load float, float* %arrayidx, align 4
  %136 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %xmin = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %136, i32 0, i32 7
  store float %135, float* %xmin, align 4
  %arrayidx250 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  %137 = load float, float* %arrayidx250, align 4
  %138 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %ymin = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %138, i32 0, i32 8
  store float %137, float* %ymin, align 4
  %arrayidx251 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  %139 = load float, float* %arrayidx251, align 4
  %140 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %xmax = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %140, i32 0, i32 9
  store float %139, float* %xmax, align 4
  %arrayidx252 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  %141 = load float, float* %arrayidx252, align 4
  %142 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %ymax = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %142, i32 0, i32 10
  store float %141, float* %ymax, align 4
  %143 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %build_char_proc = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %143, i32 0, i32 13
  store i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)* @gs_no_build_char_proc, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)** %build_char_proc, align 8
  %144 = load i32, i32* %paint_type, align 4
  %145 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %paint_type253 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %145, i32 0, i32 11
  store i32 %144, i32* %paint_type253, align 4
  %146 = load i64, i64* %unique_id, align 8
  %147 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %unique_id254 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %147, i32 0, i32 12
  store i64 %146, i64* %unique_id254, align 8
  br label %if.end.260

if.else.255:                                      ; preds = %if.end.218
  %148 = load i32, i32* %code, align 4
  %cmp256 = icmp sle i32 %148, 0
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.else.255
  store i32 -10, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.else.255
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.end.242
  %149 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 1
  %150 = load i16, i16* %type_attrs261, align 2
  %conv262 = zext i16 %150 to i32
  %and263 = and i32 %conv262, -257
  %conv264 = trunc i32 %and263 to i16
  store i16 %conv264, i16* %type_attrs261, align 2
  %151 = load %struct.ref_s*, %struct.ref_s** %pFontDirectory, align 8
  %152 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr265 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i64 -1
  %153 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call266 = call i32 @dict_put(%struct.ref_s* %151, %struct.ref_s* %add.ptr265, %struct.ref_s* %153)
  store i32 %call266, i32* %code, align 4
  %cmp267 = icmp slt i32 %call266, 0
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.260
  %154 = load i32, i32* %code, align 4
  store i32 %154, i32* %retval
  br label %return

if.end.270:                                       ; preds = %if.end.260
  %155 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx271 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i64 -1
  %156 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %157 = bitcast %struct.ref_s* %arrayidx271 to i8*
  %158 = bitcast %struct.ref_s* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 16, i32 8, i1 false)
  %159 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr272 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i64 -1
  store %struct.ref_s* %add.ptr272, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.270, %if.then.269, %if.then.258, %if.then.241, %if.then.236, %if.then.227, %if.then.216, %sw.default.210, %if.then.204, %if.then.170, %sw.default.151, %if.then.141, %if.then.106, %if.then.79, %if.then.57, %sw.default.46, %sw.default, %if.then.36, %if.then.7, %if.then.3, %if.then
  %160 = load i32, i32* %retval
  ret i32 %160
}

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #1

declare i32 @read_matrix(...) #1

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

; Function Attrs: nounwind uwtable
define i32 @add_FID(%struct.ref_s* %fp, %struct.gs_font_s* %pfont) #0 {
entry:
  %fp.addr = alloca %struct.ref_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %fid = alloca %struct.ref_s, align 8
  store %struct.ref_s* %fp, %struct.ref_s** %fp.addr, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fid, i32 0, i32 0
  %pfont1 = bitcast %union.v* %value to %struct.gs_font_s**
  store %struct.gs_font_s* %0, %struct.gs_font_s** %pfont1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fid, i32 0, i32 1
  store i16 16, i16* %type_attrs, align 2
  %1 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8
  %call = call i32 @dict_put(%struct.ref_s* %1, %struct.ref_s* @name_FID, %struct.ref_s* %fid)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @z1_subr_proc(%struct.gs_type1_data_s*, i32, i8**) #1

declare i32 @z1_pop_proc(%struct.gs_type1_data_s*, i64*) #1

declare i32 @gs_no_build_char_proc(%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*) #1

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zscalefont(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca float, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %scale)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %scale, align 4
  %conv = fpext float %2 to double
  %3 = load float, float* %scale, align 4
  %conv1 = fpext float %3 to double
  %call2 = call i32 @gs_make_scaling(double %conv, double %conv1, %struct.gs_matrix_s* %mat)
  store i32 %call2, i32* %code, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call7 = call i32 @make_font(%struct.ref_s* %5, %struct.gs_matrix_s* %mat)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @make_font(%struct.ref_s* %op, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
  %oldfont = alloca %struct.gs_font_s*, align 8
  %newfont = alloca %struct.gs_font_s*, align 8
  %ffont = alloca %struct.gs_font_s*, align 8
  %newdict = alloca %struct.ref_s, align 8
  %newmat = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %fp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 6, i64* %intval, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  %1 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %call = call i32 @font_param(%struct.ref_s* %1, %struct.gs_font_s** %oldfont)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont, align 8
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call1 = call i32 @gs_makefont(%struct.gs_font_dir_s* %2, %struct.gs_font_s* %3, %struct.gs_matrix_s* %4, %struct.gs_font_s** %newfont, %struct.gs_font_s** %ffont)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %call4 = call i32 @dict_maxlength(%struct.ref_s* %5)
  %call5 = call i32 @dict_create(i32 %call4, %struct.ref_s* %newdict)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %call8 = call i32 @dict_copy(%struct.ref_s* %6, %struct.ref_s* %newdict)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %call11 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zarray to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %newmat)
  store i32 %call11, i32* %code, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %call14 = call i32 @dict_put(%struct.ref_s* %newdict, %struct.ref_s* @name_FontMatrix, %struct.ref_s* %newmat)
  store i32 %call14, i32* %code, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8
  %call17 = call i32 @add_FID(%struct.ref_s* %newdict, %struct.gs_font_s* %7)
  store i32 %call17, i32* %code, align 4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.16
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 0
  %refs = bitcast %union.v* %value19 to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %10 = bitcast %struct.ref_s* %9 to %struct.gs_matrix_s*
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8
  %matrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 5
  %12 = bitcast %struct.gs_matrix_s* %10 to i8*
  %13 = bitcast %struct.gs_matrix_s* %matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 96, i32 8, i1 false)
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %ffont, align 8
  %tobool = icmp ne %struct.gs_font_s* %14, null
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %16 = bitcast %struct.ref_s* %15 to i8*
  %17 = bitcast %struct.ref_s* %newdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %19 = load i16, i16* %type_attrs22, align 2
  %conv = zext i16 %19 to i32
  %and = and i32 %conv, -257
  %conv23 = trunc i32 %and to i16
  store i16 %conv23, i16* %type_attrs22, align 2
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr24, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @zmakefont(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %0, %struct.gs_matrix_s* %mat)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call1 = call i32 @make_font(%struct.ref_s* %2, %struct.gs_matrix_s* %mat)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @zsetfont(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @font_param(%struct.ref_s* %0, %struct.gs_font_s** %pfont)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %call1 = call i32 @gs_setfont(%struct.gs_state_s* %2, %struct.gs_font_s* %3)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %6 = bitcast %struct.ref_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 4) to i8*), i8* %6, i64 16, i32 8, i1 false)
  %7 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @font_param(%struct.ref_s* %fp, %struct.gs_font_s** %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.ref_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s**, align 8
  %pid = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %fp, %struct.ref_s** %fp.addr, align 8
  store %struct.gs_font_s** %pfont, %struct.gs_font_s*** %pfont.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8
  %call = call i32 @dict_lookup(%struct.ref_s* %2, %struct.ref_s* %3, %struct.ref_s* @name_FID, %struct.ref_s** %pid)
  store i32 %call, i32* %code, align 4
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %pid, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %pfont6 = bitcast %union.v* %value to %struct.gs_font_s**
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont6, align 8
  %7 = load %struct.gs_font_s**, %struct.gs_font_s*** %pfont.addr, align 8
  store %struct.gs_font_s* %6, %struct.gs_font_s** %7, align 8
  %8 = load %struct.gs_font_s**, %struct.gs_font_s*** %pfont.addr, align 8
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %cmp7 = icmp eq %struct.gs_font_s* %9, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 -10, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @gs_setfont(%struct.gs_state_s*, %struct.gs_font_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentfont(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %4 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 4) to i8*), i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zcachestatus(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %status = alloca [7 x i32], align 16
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %status, i32 0, i32 0
  call void @gs_cachestatus(%struct.gs_font_dir_s* %0, i32* %arraydecay)
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 7
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -7
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -6
  %arraydecay3 = getelementptr inbounds [7 x i32], [7 x i32]* %status, i32 0, i32 0
  call void @make_uint_array(%struct.ref_s* %add.ptr2, i32* %arraydecay3, i32 7)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @gs_cachestatus(%struct.gs_font_dir_s*, i32*) #1

; Function Attrs: nounwind uwtable
define void @make_uint_array(%struct.ref_s* %op, i32* %intp, i32 %count) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %intp.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32* %intp, i32** %intp.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %intp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv = zext i32 %3 to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  %8 = load i32*, i32** %intp.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr1, i32** %intp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @zsetcachelimit(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %limit = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* null)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -20, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8
  store i64 %5, i64* %limit, align 8
  %6 = load i64, i64* %limit, align 8
  %cmp2 = icmp slt i64 %6, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %limit, align 8
  %cmp3 = icmp sgt i64 %7, 4294967295
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %9 = load i64, i64* %limit, align 8
  %conv = trunc i64 %9 to i32
  %call6 = call i32 @gs_setcachelimit(%struct.gs_font_dir_s* %8, i32 %conv)
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %cond.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gs_setcachelimit(%struct.gs_font_dir_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zsetcacheparams(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %params = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %parm = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 %idx.neg
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp ne i32 %shr, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext3 = sext i32 %6 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 %idx.neg4
  %call = call i32 @num_params(%struct.ref_s* %add.ptr5, i32 1, float* null)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp6 = icmp ne i32 %7, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %code, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -20, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %10
  %idxprom = sext i32 %sub to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 %idxprom
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %12 = load i64, i64* %intval, align 8
  store i64 %12, i64* %parm, align 8
  %13 = load i64, i64* %parm, align 8
  %cmp10 = icmp slt i64 %13, 0
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i64, i64* %parm, align 8
  %cmp12 = icmp sgt i64 %14, 4294967295
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %15 = load i64, i64* %parm, align 8
  %conv16 = trunc i64 %15 to i32
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i64 %idxprom17
  store i32 %conv16, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %i, align 4
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.25
    i32 0, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %for.end
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i64 1
  %20 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 @gs_setcachelower(%struct.gs_font_dir_s* %19, i32 %20)
  store i32 %call20, i32* %code, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %for.end, %if.end.24
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i64 0
  %23 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* %22, i32 %23)
  store i32 %call27, i32* %code, align 4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.25
  %24 = load i32, i32* %code, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.31:                                        ; preds = %sw.bb.25
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %for.end, %if.end.31
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.32, %for.end
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call33 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcleartomark to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %25)
  store i32 %call33, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.30, %if.then.23, %if.then.14, %cond.end
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gs_setcachelower(%struct.gs_font_dir_s*, i32) #1

declare i32 @gs_setcacheupper(%struct.gs_font_dir_s*, i32) #1

declare i32 @zcleartomark(...) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentcacheparams(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %params = alloca [2 x i32], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %call = call i32 @gs_currentcachelower(%struct.gs_font_dir_s* %0)
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i64 0
  store i32 %call, i32* %arrayidx, align 4
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %call1 = call i32 @gs_currentcacheupper(%struct.gs_font_dir_s* %1)
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i64 1
  store i32 %call1, i32* %arrayidx2, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -3
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 0, i64* %intval, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr5, i32 0, i32 1
  store i16 24, i16* %type_attrs, align 2
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %params, i32 0, i32 0
  call void @make_uint_array(%struct.ref_s* %add.ptr6, i32* %arraydecay, i32 2)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_currentcachelower(%struct.gs_font_dir_s*) #1

declare i32 @gs_currentcacheupper(%struct.gs_font_dir_s*) #1

; Function Attrs: nounwind uwtable
define void @zfont_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zfont_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

declare i32 @gs_makefont(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**, %struct.gs_font_s**) #1

declare i32 @dict_create(i32, %struct.ref_s*) #1

declare i32 @dict_maxlength(%struct.ref_s*) #1

declare i32 @dict_copy(%struct.ref_s*, %struct.ref_s*) #1

declare i32 @zarray(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
