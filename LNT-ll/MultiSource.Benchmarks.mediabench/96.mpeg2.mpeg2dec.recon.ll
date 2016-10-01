; ModuleID = './MultiSource.Benchmarks.mediabench/96.mpeg2.mpeg2dec.recon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@picture_coding_type = external global i32, align 4
@picture_structure = external global i32, align 4
@forward_reference_frame = external global [3 x i8*], align 16
@current_frame = external global [3 x i8*], align 16
@Coded_Picture_Width = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid motion_type\0A\00", align 1
@Second_Field = external global i32, align 4
@backward_reference_frame = external global [3 x i8*], align 16
@chroma_format = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @form_predictions(i32 %bx, i32 %by, i32 %macroblock_type, i32 %motion_type, [2 x [2 x i32]]* %PMV, [2 x i32]* %motion_vertical_field_select, i32* %dmvector, i32 %stwtype) #0 {
entry:
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %macroblock_type.addr = alloca i32, align 4
  %motion_type.addr = alloca i32, align 4
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32, align 4
  %currentfield = alloca i32, align 4
  %predframe = alloca i8**, align 8
  %DMV = alloca [2 x [2 x i32]], align 16
  %stwtop = alloca i32, align 4
  %stwbot = alloca i32, align 4
  store i32 %bx, i32* %bx.addr, align 4
  store i32 %by, i32* %by.addr, align 4
  store i32 %macroblock_type, i32* %macroblock_type.addr, align 4
  store i32 %motion_type, i32* %motion_type.addr, align 4
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8
  store i32* %dmvector, i32** %dmvector.addr, align 8
  store i32 %stwtype, i32* %stwtype.addr, align 4
  %0 = load i32, i32* %stwtype.addr, align 4
  %rem = srem i32 %0, 3
  store i32 %rem, i32* %stwtop, align 4
  %1 = load i32, i32* %stwtype.addr, align 4
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %stwbot, align 4
  %2 = load i32, i32* %macroblock_type.addr, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* @picture_coding_type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end.219

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @picture_structure, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then.2, label %if.else.110

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* %motion_type.addr, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.then.2
  %6 = load i32, i32* %macroblock_type.addr, align 4
  %and5 = and i32 %6, 8
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.then.2
  %7 = load i32, i32* %stwtop, align 4
  %cmp8 = icmp slt i32 %7, 2
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %8 = load i32, i32* @Coded_Picture_Width, align 4
  %9 = load i32, i32* @Coded_Picture_Width, align 4
  %shl = shl i32 %9, 1
  %10 = load i32, i32* %bx.addr, align 4
  %11 = load i32, i32* %by.addr, align 4
  %12 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %13 = load i32, i32* %arrayidx11, align 4
  %14 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx12 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %14, i64 0
  %arrayidx13 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 1
  %15 = load i32, i32* %arrayidx14, align 4
  %16 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %8, i32 %shl, i32 16, i32 8, i32 %10, i32 %11, i32 %13, i32 %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.7
  %17 = load i32, i32* %stwbot, align 4
  %cmp15 = icmp slt i32 %17, 2
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end
  %18 = load i32, i32* @Coded_Picture_Width, align 4
  %19 = load i32, i32* @Coded_Picture_Width, align 4
  %shl17 = shl i32 %19, 1
  %20 = load i32, i32* %bx.addr, align 4
  %21 = load i32, i32* %by.addr, align 4
  %22 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx18 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %22, i64 0
  %arrayidx19 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx19, i32 0, i64 0
  %23 = load i32, i32* %arrayidx20, align 4
  %24 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx21 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %24, i64 0
  %arrayidx22 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx21, i32 0, i64 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  %25 = load i32, i32* %arrayidx23, align 4
  %26 = load i32, i32* %stwbot, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %18, i32 %shl17, i32 16, i32 8, i32 %20, i32 %21, i32 %23, i32 %25, i32 %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.16, %if.end
  br label %if.end.109

if.else:                                          ; preds = %lor.lhs.false.4
  %27 = load i32, i32* %motion_type.addr, align 4
  %cmp25 = icmp eq i32 %27, 1
  br i1 %cmp25, label %if.then.26, label %if.else.56

if.then.26:                                       ; preds = %if.else
  %28 = load i32, i32* %stwtop, align 4
  %cmp27 = icmp slt i32 %28, 2
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.then.26
  %29 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx29, i32 0, i64 0
  %30 = load i32, i32* %arrayidx30, align 4
  %31 = load i32, i32* @Coded_Picture_Width, align 4
  %shl31 = shl i32 %31, 1
  %32 = load i32, i32* @Coded_Picture_Width, align 4
  %shl32 = shl i32 %32, 1
  %33 = load i32, i32* %bx.addr, align 4
  %34 = load i32, i32* %by.addr, align 4
  %shr = ashr i32 %34, 1
  %35 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %35, i64 0
  %arrayidx34 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx33, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 0
  %36 = load i32, i32* %arrayidx35, align 4
  %37 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx36 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %37, i64 0
  %arrayidx37 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx36, i32 0, i64 0
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx37, i32 0, i64 1
  %38 = load i32, i32* %arrayidx38, align 4
  %shr39 = ashr i32 %38, 1
  %39 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %30, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl31, i32 %shl32, i32 16, i32 8, i32 %33, i32 %shr, i32 %36, i32 %shr39, i32 %39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.28, %if.then.26
  %40 = load i32, i32* %stwbot, align 4
  %cmp41 = icmp slt i32 %40, 2
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.40
  %41 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 1
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i32 0, i64 0
  %42 = load i32, i32* %arrayidx44, align 4
  %43 = load i32, i32* @Coded_Picture_Width, align 4
  %shl45 = shl i32 %43, 1
  %44 = load i32, i32* @Coded_Picture_Width, align 4
  %shl46 = shl i32 %44, 1
  %45 = load i32, i32* %bx.addr, align 4
  %46 = load i32, i32* %by.addr, align 4
  %shr47 = ashr i32 %46, 1
  %47 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %47, i64 1
  %arrayidx49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx49, i32 0, i64 0
  %48 = load i32, i32* %arrayidx50, align 4
  %49 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx51 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %49, i64 1
  %arrayidx52 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx51, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx52, i32 0, i64 1
  %50 = load i32, i32* %arrayidx53, align 4
  %shr54 = ashr i32 %50, 1
  %51 = load i32, i32* %stwbot, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %42, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl45, i32 %shl46, i32 16, i32 8, i32 %45, i32 %shr47, i32 %48, i32 %shr54, i32 %51)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.42, %if.end.40
  br label %if.end.108

if.else.56:                                       ; preds = %if.else
  %52 = load i32, i32* %motion_type.addr, align 4
  %cmp57 = icmp eq i32 %52, 3
  br i1 %cmp57, label %if.then.58, label %if.else.106

if.then.58:                                       ; preds = %if.else.56
  %arraydecay = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i32 0
  %53 = load i32*, i32** %dmvector.addr, align 8
  %54 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx59 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 0
  %arrayidx60 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx59, i32 0, i64 0
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx60, i32 0, i64 0
  %55 = load i32, i32* %arrayidx61, align 4
  %56 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx62 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %56, i64 0
  %arrayidx63 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx62, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx63, i32 0, i64 1
  %57 = load i32, i32* %arrayidx64, align 4
  %shr65 = ashr i32 %57, 1
  call void @Dual_Prime_Arithmetic([2 x i32]* %arraydecay, i32* %53, i32 %55, i32 %shr65)
  %58 = load i32, i32* %stwtop, align 4
  %cmp66 = icmp slt i32 %58, 2
  br i1 %cmp66, label %if.then.67, label %if.end.85

if.then.67:                                       ; preds = %if.then.58
  %59 = load i32, i32* @Coded_Picture_Width, align 4
  %shl68 = shl i32 %59, 1
  %60 = load i32, i32* @Coded_Picture_Width, align 4
  %shl69 = shl i32 %60, 1
  %61 = load i32, i32* %bx.addr, align 4
  %62 = load i32, i32* %by.addr, align 4
  %shr70 = ashr i32 %62, 1
  %63 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx71 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %63, i64 0
  %arrayidx72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx71, i32 0, i64 0
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx72, i32 0, i64 0
  %64 = load i32, i32* %arrayidx73, align 4
  %65 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %65, i64 0
  %arrayidx75 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx74, i32 0, i64 0
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx75, i32 0, i64 1
  %66 = load i32, i32* %arrayidx76, align 4
  %shr77 = ashr i32 %66, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl68, i32 %shl69, i32 16, i32 8, i32 %61, i32 %shr70, i32 %64, i32 %shr77, i32 0)
  %67 = load i32, i32* @Coded_Picture_Width, align 4
  %shl78 = shl i32 %67, 1
  %68 = load i32, i32* @Coded_Picture_Width, align 4
  %shl79 = shl i32 %68, 1
  %69 = load i32, i32* %bx.addr, align 4
  %70 = load i32, i32* %by.addr, align 4
  %shr80 = ashr i32 %70, 1
  %arrayidx81 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx81, i32 0, i64 0
  %71 = load i32, i32* %arrayidx82, align 4
  %arrayidx83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx83, i32 0, i64 1
  %72 = load i32, i32* %arrayidx84, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl78, i32 %shl79, i32 16, i32 8, i32 %69, i32 %shr80, i32 %71, i32 %72, i32 1)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.67, %if.then.58
  %73 = load i32, i32* %stwbot, align 4
  %cmp86 = icmp slt i32 %73, 2
  br i1 %cmp86, label %if.then.87, label %if.end.105

if.then.87:                                       ; preds = %if.end.85
  %74 = load i32, i32* @Coded_Picture_Width, align 4
  %shl88 = shl i32 %74, 1
  %75 = load i32, i32* @Coded_Picture_Width, align 4
  %shl89 = shl i32 %75, 1
  %76 = load i32, i32* %bx.addr, align 4
  %77 = load i32, i32* %by.addr, align 4
  %shr90 = ashr i32 %77, 1
  %78 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %78, i64 0
  %arrayidx92 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx91, i32 0, i64 0
  %arrayidx93 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx92, i32 0, i64 0
  %79 = load i32, i32* %arrayidx93, align 4
  %80 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx94 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %80, i64 0
  %arrayidx95 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx94, i32 0, i64 0
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx95, i32 0, i64 1
  %81 = load i32, i32* %arrayidx96, align 4
  %shr97 = ashr i32 %81, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl88, i32 %shl89, i32 16, i32 8, i32 %76, i32 %shr90, i32 %79, i32 %shr97, i32 0)
  %82 = load i32, i32* @Coded_Picture_Width, align 4
  %shl98 = shl i32 %82, 1
  %83 = load i32, i32* @Coded_Picture_Width, align 4
  %shl99 = shl i32 %83, 1
  %84 = load i32, i32* %bx.addr, align 4
  %85 = load i32, i32* %by.addr, align 4
  %shr100 = ashr i32 %85, 1
  %arrayidx101 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx101, i32 0, i64 0
  %86 = load i32, i32* %arrayidx102, align 4
  %arrayidx103 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 1
  %arrayidx104 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx103, i32 0, i64 1
  %87 = load i32, i32* %arrayidx104, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl98, i32 %shl99, i32 16, i32 8, i32 %84, i32 %shr100, i32 %86, i32 %87, i32 1)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.87, %if.end.85
  br label %if.end.107

if.else.106:                                      ; preds = %if.else.56
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.end.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.55
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.24
  br label %if.end.218

if.else.110:                                      ; preds = %if.then
  %88 = load i32, i32* @picture_structure, align 4
  %cmp111 = icmp eq i32 %88, 2
  %conv = zext i1 %cmp111 to i32
  store i32 %conv, i32* %currentfield, align 4
  %89 = load i32, i32* @picture_coding_type, align 4
  %cmp112 = icmp eq i32 %89, 2
  br i1 %cmp112, label %land.lhs.true, label %if.else.121

land.lhs.true:                                    ; preds = %if.else.110
  %90 = load i32, i32* @Second_Field, align 4
  %tobool114 = icmp ne i32 %90, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.121

land.lhs.true.115:                                ; preds = %land.lhs.true
  %91 = load i32, i32* %currentfield, align 4
  %92 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %92, i64 0
  %arrayidx117 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx116, i32 0, i64 0
  %93 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp ne i32 %91, %93
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %land.lhs.true.115
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.115, %land.lhs.true, %if.else.110
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %94 = load i32, i32* %motion_type.addr, align 4
  %cmp123 = icmp eq i32 %94, 1
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.122
  %95 = load i32, i32* %macroblock_type.addr, align 4
  %and126 = and i32 %95, 8
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.else.143, label %if.then.128

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.end.122
  %96 = load i32, i32* %stwtop, align 4
  %cmp129 = icmp slt i32 %96, 2
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %if.then.128
  %97 = load i8**, i8*** %predframe, align 8
  %98 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx132 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0
  %arrayidx133 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx132, i32 0, i64 0
  %99 = load i32, i32* %arrayidx133, align 4
  %100 = load i32, i32* @Coded_Picture_Width, align 4
  %shl134 = shl i32 %100, 1
  %101 = load i32, i32* @Coded_Picture_Width, align 4
  %shl135 = shl i32 %101, 1
  %102 = load i32, i32* %bx.addr, align 4
  %103 = load i32, i32* %by.addr, align 4
  %104 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx136 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %104, i64 0
  %arrayidx137 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx136, i32 0, i64 0
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx137, i32 0, i64 0
  %105 = load i32, i32* %arrayidx138, align 4
  %106 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx139 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %106, i64 0
  %arrayidx140 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx139, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx140, i32 0, i64 1
  %107 = load i32, i32* %arrayidx141, align 4
  %108 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** %97, i32 %99, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl134, i32 %shl135, i32 16, i32 16, i32 %102, i32 %103, i32 %105, i32 %107, i32 %108)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.131, %if.then.128
  br label %if.end.217

if.else.143:                                      ; preds = %lor.lhs.false.125
  %109 = load i32, i32* %motion_type.addr, align 4
  %cmp144 = icmp eq i32 %109, 2
  br i1 %cmp144, label %if.then.146, label %if.else.183

if.then.146:                                      ; preds = %if.else.143
  %110 = load i32, i32* %stwtop, align 4
  %cmp147 = icmp slt i32 %110, 2
  br i1 %cmp147, label %if.then.149, label %if.end.182

if.then.149:                                      ; preds = %if.then.146
  %111 = load i8**, i8*** %predframe, align 8
  %112 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx150 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0
  %arrayidx151 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx150, i32 0, i64 0
  %113 = load i32, i32* %arrayidx151, align 4
  %114 = load i32, i32* @Coded_Picture_Width, align 4
  %shl152 = shl i32 %114, 1
  %115 = load i32, i32* @Coded_Picture_Width, align 4
  %shl153 = shl i32 %115, 1
  %116 = load i32, i32* %bx.addr, align 4
  %117 = load i32, i32* %by.addr, align 4
  %118 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %118, i64 0
  %arrayidx155 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx154, i32 0, i64 0
  %arrayidx156 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx155, i32 0, i64 0
  %119 = load i32, i32* %arrayidx156, align 4
  %120 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx157 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %120, i64 0
  %arrayidx158 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx157, i32 0, i64 0
  %arrayidx159 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx158, i32 0, i64 1
  %121 = load i32, i32* %arrayidx159, align 4
  %122 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** %111, i32 %113, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl152, i32 %shl153, i32 16, i32 8, i32 %116, i32 %117, i32 %119, i32 %121, i32 %122)
  %123 = load i32, i32* @picture_coding_type, align 4
  %cmp160 = icmp eq i32 %123, 2
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.170

land.lhs.true.162:                                ; preds = %if.then.149
  %124 = load i32, i32* @Second_Field, align 4
  %tobool163 = icmp ne i32 %124, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.170

land.lhs.true.164:                                ; preds = %land.lhs.true.162
  %125 = load i32, i32* %currentfield, align 4
  %126 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 1
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx165, i32 0, i64 0
  %127 = load i32, i32* %arrayidx166, align 4
  %cmp167 = icmp ne i32 %125, %127
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %land.lhs.true.164
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.171

if.else.170:                                      ; preds = %land.lhs.true.164, %land.lhs.true.162, %if.then.149
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.170, %if.then.169
  %128 = load i8**, i8*** %predframe, align 8
  %129 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %129, i64 1
  %arrayidx173 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx172, i32 0, i64 0
  %130 = load i32, i32* %arrayidx173, align 4
  %131 = load i32, i32* @Coded_Picture_Width, align 4
  %shl174 = shl i32 %131, 1
  %132 = load i32, i32* @Coded_Picture_Width, align 4
  %shl175 = shl i32 %132, 1
  %133 = load i32, i32* %bx.addr, align 4
  %134 = load i32, i32* %by.addr, align 4
  %add = add nsw i32 %134, 8
  %135 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx176 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %135, i64 1
  %arrayidx177 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx176, i32 0, i64 0
  %arrayidx178 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx177, i32 0, i64 0
  %136 = load i32, i32* %arrayidx178, align 4
  %137 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx179 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %137, i64 1
  %arrayidx180 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx179, i32 0, i64 0
  %arrayidx181 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx180, i32 0, i64 1
  %138 = load i32, i32* %arrayidx181, align 4
  %139 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** %128, i32 %130, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl174, i32 %shl175, i32 16, i32 8, i32 %133, i32 %add, i32 %136, i32 %138, i32 %139)
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.171, %if.then.146
  br label %if.end.216

if.else.183:                                      ; preds = %if.else.143
  %140 = load i32, i32* %motion_type.addr, align 4
  %cmp184 = icmp eq i32 %140, 3
  br i1 %cmp184, label %if.then.186, label %if.else.213

if.then.186:                                      ; preds = %if.else.183
  %141 = load i32, i32* @Second_Field, align 4
  %tobool187 = icmp ne i32 %141, 0
  br i1 %tobool187, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %if.then.186
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.190

if.else.189:                                      ; preds = %if.then.186
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.189, %if.then.188
  %arraydecay191 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i32 0
  %142 = load i32*, i32** %dmvector.addr, align 8
  %143 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx192 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %143, i64 0
  %arrayidx193 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx192, i32 0, i64 0
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx193, i32 0, i64 0
  %144 = load i32, i32* %arrayidx194, align 4
  %145 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx195 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %145, i64 0
  %arrayidx196 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx195, i32 0, i64 0
  %arrayidx197 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx196, i32 0, i64 1
  %146 = load i32, i32* %arrayidx197, align 4
  call void @Dual_Prime_Arithmetic([2 x i32]* %arraydecay191, i32* %142, i32 %144, i32 %146)
  %147 = load i32, i32* %currentfield, align 4
  %148 = load i32, i32* @Coded_Picture_Width, align 4
  %shl198 = shl i32 %148, 1
  %149 = load i32, i32* @Coded_Picture_Width, align 4
  %shl199 = shl i32 %149, 1
  %150 = load i32, i32* %bx.addr, align 4
  %151 = load i32, i32* %by.addr, align 4
  %152 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx200 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %152, i64 0
  %arrayidx201 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx200, i32 0, i64 0
  %arrayidx202 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx201, i32 0, i64 0
  %153 = load i32, i32* %arrayidx202, align 4
  %154 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx203 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %154, i64 0
  %arrayidx204 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx203, i32 0, i64 0
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx204, i32 0, i64 1
  %155 = load i32, i32* %arrayidx205, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %147, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl198, i32 %shl199, i32 16, i32 16, i32 %150, i32 %151, i32 %153, i32 %155, i32 0)
  %156 = load i8**, i8*** %predframe, align 8
  %157 = load i32, i32* %currentfield, align 4
  %tobool206 = icmp ne i32 %157, 0
  %lnot = xor i1 %tobool206, true
  %lnot.ext = zext i1 %lnot to i32
  %158 = load i32, i32* @Coded_Picture_Width, align 4
  %shl207 = shl i32 %158, 1
  %159 = load i32, i32* @Coded_Picture_Width, align 4
  %shl208 = shl i32 %159, 1
  %160 = load i32, i32* %bx.addr, align 4
  %161 = load i32, i32* %by.addr, align 4
  %arrayidx209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx210 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx209, i32 0, i64 0
  %162 = load i32, i32* %arrayidx210, align 4
  %arrayidx211 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx212 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx211, i32 0, i64 1
  %163 = load i32, i32* %arrayidx212, align 4
  call void @form_prediction(i8** %156, i32 %lnot.ext, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl207, i32 %shl208, i32 16, i32 16, i32 %160, i32 %161, i32 %162, i32 %163, i32 1)
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.183
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.end.190
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.182
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.142
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.109
  store i32 1, i32* %stwbot, align 4
  store i32 1, i32* %stwtop, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %lor.lhs.false
  %164 = load i32, i32* %macroblock_type.addr, align 4
  %and220 = and i32 %164, 4
  %tobool221 = icmp ne i32 %and220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.329

if.then.222:                                      ; preds = %if.end.219
  %165 = load i32, i32* @picture_structure, align 4
  %cmp223 = icmp eq i32 %165, 3
  br i1 %cmp223, label %if.then.225, label %if.else.285

if.then.225:                                      ; preds = %if.then.222
  %166 = load i32, i32* %motion_type.addr, align 4
  %cmp226 = icmp eq i32 %166, 2
  br i1 %cmp226, label %if.then.228, label %if.else.251

if.then.228:                                      ; preds = %if.then.225
  %167 = load i32, i32* %stwtop, align 4
  %cmp229 = icmp slt i32 %167, 2
  br i1 %cmp229, label %if.then.231, label %if.end.239

if.then.231:                                      ; preds = %if.then.228
  %168 = load i32, i32* @Coded_Picture_Width, align 4
  %169 = load i32, i32* @Coded_Picture_Width, align 4
  %shl232 = shl i32 %169, 1
  %170 = load i32, i32* %bx.addr, align 4
  %171 = load i32, i32* %by.addr, align 4
  %172 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx233 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %172, i64 0
  %arrayidx234 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx233, i32 0, i64 1
  %arrayidx235 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx234, i32 0, i64 0
  %173 = load i32, i32* %arrayidx235, align 4
  %174 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx236 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %174, i64 0
  %arrayidx237 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx236, i32 0, i64 1
  %arrayidx238 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx237, i32 0, i64 1
  %175 = load i32, i32* %arrayidx238, align 4
  %176 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %168, i32 %shl232, i32 16, i32 8, i32 %170, i32 %171, i32 %173, i32 %175, i32 %176)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.231, %if.then.228
  %177 = load i32, i32* %stwbot, align 4
  %cmp240 = icmp slt i32 %177, 2
  br i1 %cmp240, label %if.then.242, label %if.end.250

if.then.242:                                      ; preds = %if.end.239
  %178 = load i32, i32* @Coded_Picture_Width, align 4
  %179 = load i32, i32* @Coded_Picture_Width, align 4
  %shl243 = shl i32 %179, 1
  %180 = load i32, i32* %bx.addr, align 4
  %181 = load i32, i32* %by.addr, align 4
  %182 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx244 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %182, i64 0
  %arrayidx245 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx244, i32 0, i64 1
  %arrayidx246 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx245, i32 0, i64 0
  %183 = load i32, i32* %arrayidx246, align 4
  %184 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx247 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %184, i64 0
  %arrayidx248 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx247, i32 0, i64 1
  %arrayidx249 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx248, i32 0, i64 1
  %185 = load i32, i32* %arrayidx249, align 4
  %186 = load i32, i32* %stwbot, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %178, i32 %shl243, i32 16, i32 8, i32 %180, i32 %181, i32 %183, i32 %185, i32 %186)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.242, %if.end.239
  br label %if.end.284

if.else.251:                                      ; preds = %if.then.225
  %187 = load i32, i32* %stwtop, align 4
  %cmp252 = icmp slt i32 %187, 2
  br i1 %cmp252, label %if.then.254, label %if.end.267

if.then.254:                                      ; preds = %if.else.251
  %188 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx255 = getelementptr inbounds [2 x i32], [2 x i32]* %188, i64 0
  %arrayidx256 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx255, i32 0, i64 1
  %189 = load i32, i32* %arrayidx256, align 4
  %190 = load i32, i32* @Coded_Picture_Width, align 4
  %shl257 = shl i32 %190, 1
  %191 = load i32, i32* @Coded_Picture_Width, align 4
  %shl258 = shl i32 %191, 1
  %192 = load i32, i32* %bx.addr, align 4
  %193 = load i32, i32* %by.addr, align 4
  %shr259 = ashr i32 %193, 1
  %194 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx260 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %194, i64 0
  %arrayidx261 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx260, i32 0, i64 1
  %arrayidx262 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx261, i32 0, i64 0
  %195 = load i32, i32* %arrayidx262, align 4
  %196 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx263 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %196, i64 0
  %arrayidx264 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx263, i32 0, i64 1
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx264, i32 0, i64 1
  %197 = load i32, i32* %arrayidx265, align 4
  %shr266 = ashr i32 %197, 1
  %198 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %189, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl257, i32 %shl258, i32 16, i32 8, i32 %192, i32 %shr259, i32 %195, i32 %shr266, i32 %198)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.254, %if.else.251
  %199 = load i32, i32* %stwbot, align 4
  %cmp268 = icmp slt i32 %199, 2
  br i1 %cmp268, label %if.then.270, label %if.end.283

if.then.270:                                      ; preds = %if.end.267
  %200 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx271 = getelementptr inbounds [2 x i32], [2 x i32]* %200, i64 1
  %arrayidx272 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx271, i32 0, i64 1
  %201 = load i32, i32* %arrayidx272, align 4
  %202 = load i32, i32* @Coded_Picture_Width, align 4
  %shl273 = shl i32 %202, 1
  %203 = load i32, i32* @Coded_Picture_Width, align 4
  %shl274 = shl i32 %203, 1
  %204 = load i32, i32* %bx.addr, align 4
  %205 = load i32, i32* %by.addr, align 4
  %shr275 = ashr i32 %205, 1
  %206 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx276 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %206, i64 1
  %arrayidx277 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx276, i32 0, i64 1
  %arrayidx278 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx277, i32 0, i64 0
  %207 = load i32, i32* %arrayidx278, align 4
  %208 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx279 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %208, i64 1
  %arrayidx280 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx279, i32 0, i64 1
  %arrayidx281 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx280, i32 0, i64 1
  %209 = load i32, i32* %arrayidx281, align 4
  %shr282 = ashr i32 %209, 1
  %210 = load i32, i32* %stwbot, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %201, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl273, i32 %shl274, i32 16, i32 8, i32 %204, i32 %shr275, i32 %207, i32 %shr282, i32 %210)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.270, %if.end.267
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.end.250
  br label %if.end.328

if.else.285:                                      ; preds = %if.then.222
  %211 = load i32, i32* %motion_type.addr, align 4
  %cmp286 = icmp eq i32 %211, 1
  br i1 %cmp286, label %if.then.288, label %if.else.299

if.then.288:                                      ; preds = %if.else.285
  %212 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx289 = getelementptr inbounds [2 x i32], [2 x i32]* %212, i64 0
  %arrayidx290 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx289, i32 0, i64 1
  %213 = load i32, i32* %arrayidx290, align 4
  %214 = load i32, i32* @Coded_Picture_Width, align 4
  %shl291 = shl i32 %214, 1
  %215 = load i32, i32* @Coded_Picture_Width, align 4
  %shl292 = shl i32 %215, 1
  %216 = load i32, i32* %bx.addr, align 4
  %217 = load i32, i32* %by.addr, align 4
  %218 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx293 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %218, i64 0
  %arrayidx294 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx293, i32 0, i64 1
  %arrayidx295 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx294, i32 0, i64 0
  %219 = load i32, i32* %arrayidx295, align 4
  %220 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx296 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %220, i64 0
  %arrayidx297 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx296, i32 0, i64 1
  %arrayidx298 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx297, i32 0, i64 1
  %221 = load i32, i32* %arrayidx298, align 4
  %222 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %213, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl291, i32 %shl292, i32 16, i32 16, i32 %216, i32 %217, i32 %219, i32 %221, i32 %222)
  br label %if.end.327

if.else.299:                                      ; preds = %if.else.285
  %223 = load i32, i32* %motion_type.addr, align 4
  %cmp300 = icmp eq i32 %223, 2
  br i1 %cmp300, label %if.then.302, label %if.else.324

if.then.302:                                      ; preds = %if.else.299
  %224 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx303 = getelementptr inbounds [2 x i32], [2 x i32]* %224, i64 0
  %arrayidx304 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx303, i32 0, i64 1
  %225 = load i32, i32* %arrayidx304, align 4
  %226 = load i32, i32* @Coded_Picture_Width, align 4
  %shl305 = shl i32 %226, 1
  %227 = load i32, i32* @Coded_Picture_Width, align 4
  %shl306 = shl i32 %227, 1
  %228 = load i32, i32* %bx.addr, align 4
  %229 = load i32, i32* %by.addr, align 4
  %230 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx307 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %230, i64 0
  %arrayidx308 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx307, i32 0, i64 1
  %arrayidx309 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx308, i32 0, i64 0
  %231 = load i32, i32* %arrayidx309, align 4
  %232 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx310 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %232, i64 0
  %arrayidx311 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx310, i32 0, i64 1
  %arrayidx312 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx311, i32 0, i64 1
  %233 = load i32, i32* %arrayidx312, align 4
  %234 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %225, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl305, i32 %shl306, i32 16, i32 8, i32 %228, i32 %229, i32 %231, i32 %233, i32 %234)
  %235 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8
  %arrayidx313 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i64 1
  %arrayidx314 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx313, i32 0, i64 1
  %236 = load i32, i32* %arrayidx314, align 4
  %237 = load i32, i32* @Coded_Picture_Width, align 4
  %shl315 = shl i32 %237, 1
  %238 = load i32, i32* @Coded_Picture_Width, align 4
  %shl316 = shl i32 %238, 1
  %239 = load i32, i32* %bx.addr, align 4
  %240 = load i32, i32* %by.addr, align 4
  %add317 = add nsw i32 %240, 8
  %241 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx318 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %241, i64 1
  %arrayidx319 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx318, i32 0, i64 1
  %arrayidx320 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx319, i32 0, i64 0
  %242 = load i32, i32* %arrayidx320, align 4
  %243 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8
  %arrayidx321 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %243, i64 1
  %arrayidx322 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx321, i32 0, i64 1
  %arrayidx323 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx322, i32 0, i64 1
  %244 = load i32, i32* %arrayidx323, align 4
  %245 = load i32, i32* %stwtop, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %236, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl315, i32 %shl316, i32 16, i32 8, i32 %239, i32 %add317, i32 %242, i32 %244, i32 %245)
  br label %if.end.326

if.else.324:                                      ; preds = %if.else.299
  %call325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.324, %if.then.302
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.288
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.284
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.end.219
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @form_prediction(i8** %src, i32 %sfield, i8** %dst, i32 %dfield, i32 %lx, i32 %lx2, i32 %w, i32 %h, i32 %x, i32 %y, i32 %dx, i32 %dy, i32 %average_flag) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %sfield.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %dfield.addr = alloca i32, align 4
  %lx.addr = alloca i32, align 4
  %lx2.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %average_flag.addr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32 %sfield, i32* %sfield.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  store i32 %dfield, i32* %dfield.addr, align 4
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %lx2, i32* %lx2.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %average_flag, i32* %average_flag.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %sfield.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %lx2.addr, align 4
  %shr = ashr i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ 0, %cond.false ]
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx1, align 8
  %6 = load i32, i32* %dfield.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %7 = load i32, i32* %lx2.addr, align 4
  %shr4 = ashr i32 %7, 1
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i32 [ %shr4, %cond.true.3 ], [ 0, %cond.false.5 ]
  %idx.ext8 = sext i32 %cond7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %5, i64 %idx.ext8
  %8 = load i32, i32* %lx.addr, align 4
  %9 = load i32, i32* %lx2.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %11 = load i32, i32* %h.addr, align 4
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %dx.addr, align 4
  %15 = load i32, i32* %dy.addr, align 4
  %16 = load i32, i32* %average_flag.addr, align 4
  call void @form_component_prediction(i8* %add.ptr, i8* %add.ptr9, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %17 = load i32, i32* @chroma_format, align 4
  %cmp = icmp ne i32 %17, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %18 = load i32, i32* %lx.addr, align 4
  %shr10 = ashr i32 %18, 1
  store i32 %shr10, i32* %lx.addr, align 4
  %19 = load i32, i32* %lx2.addr, align 4
  %shr11 = ashr i32 %19, 1
  store i32 %shr11, i32* %lx2.addr, align 4
  %20 = load i32, i32* %w.addr, align 4
  %shr12 = ashr i32 %20, 1
  store i32 %shr12, i32* %w.addr, align 4
  %21 = load i32, i32* %x.addr, align 4
  %shr13 = ashr i32 %21, 1
  store i32 %shr13, i32* %x.addr, align 4
  %22 = load i32, i32* %dx.addr, align 4
  %div = sdiv i32 %22, 2
  store i32 %div, i32* %dx.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  %23 = load i32, i32* @chroma_format, align 4
  %cmp14 = icmp eq i32 %23, 1
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %24 = load i32, i32* %h.addr, align 4
  %shr16 = ashr i32 %24, 1
  store i32 %shr16, i32* %h.addr, align 4
  %25 = load i32, i32* %y.addr, align 4
  %shr17 = ashr i32 %25, 1
  store i32 %shr17, i32* %y.addr, align 4
  %26 = load i32, i32* %dy.addr, align 4
  %div18 = sdiv i32 %26, 2
  store i32 %div18, i32* %dy.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  %27 = load i8**, i8*** %src.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %27, i64 1
  %28 = load i8*, i8** %arrayidx20, align 8
  %29 = load i32, i32* %sfield.addr, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.end.19
  %30 = load i32, i32* %lx2.addr, align 4
  %shr23 = ashr i32 %30, 1
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.end.19
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi i32 [ %shr23, %cond.true.22 ], [ 0, %cond.false.24 ]
  %idx.ext27 = sext i32 %cond26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %28, i64 %idx.ext27
  %31 = load i8**, i8*** %dst.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx29, align 8
  %33 = load i32, i32* %dfield.addr, align 4
  %tobool30 = icmp ne i32 %33, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.end.25
  %34 = load i32, i32* %lx2.addr, align 4
  %shr32 = ashr i32 %34, 1
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.25
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i32 [ %shr32, %cond.true.31 ], [ 0, %cond.false.33 ]
  %idx.ext36 = sext i32 %cond35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %idx.ext36
  %35 = load i32, i32* %lx.addr, align 4
  %36 = load i32, i32* %lx2.addr, align 4
  %37 = load i32, i32* %w.addr, align 4
  %38 = load i32, i32* %h.addr, align 4
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %dx.addr, align 4
  %42 = load i32, i32* %dy.addr, align 4
  %43 = load i32, i32* %average_flag.addr, align 4
  call void @form_component_prediction(i8* %add.ptr28, i8* %add.ptr37, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %44 = load i8**, i8*** %src.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %44, i64 2
  %45 = load i8*, i8** %arrayidx38, align 8
  %46 = load i32, i32* %sfield.addr, align 4
  %tobool39 = icmp ne i32 %46, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.end.34
  %47 = load i32, i32* %lx2.addr, align 4
  %shr41 = ashr i32 %47, 1
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.34
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi i32 [ %shr41, %cond.true.40 ], [ 0, %cond.false.42 ]
  %idx.ext45 = sext i32 %cond44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %45, i64 %idx.ext45
  %48 = load i8**, i8*** %dst.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %48, i64 2
  %49 = load i8*, i8** %arrayidx47, align 8
  %50 = load i32, i32* %dfield.addr, align 4
  %tobool48 = icmp ne i32 %50, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end.43
  %51 = load i32, i32* %lx2.addr, align 4
  %shr50 = ashr i32 %51, 1
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.43
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi i32 [ %shr50, %cond.true.49 ], [ 0, %cond.false.51 ]
  %idx.ext54 = sext i32 %cond53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %49, i64 %idx.ext54
  %52 = load i32, i32* %lx.addr, align 4
  %53 = load i32, i32* %lx2.addr, align 4
  %54 = load i32, i32* %w.addr, align 4
  %55 = load i32, i32* %h.addr, align 4
  %56 = load i32, i32* %x.addr, align 4
  %57 = load i32, i32* %y.addr, align 4
  %58 = load i32, i32* %dx.addr, align 4
  %59 = load i32, i32* %dy.addr, align 4
  %60 = load i32, i32* %average_flag.addr, align 4
  call void @form_component_prediction(i8* %add.ptr46, i8* %add.ptr55, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  ret void
}

declare void @Dual_Prime_Arithmetic([2 x i32]*, i32*, i32, i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @form_component_prediction(i8* %src, i8* %dst, i32 %lx, i32 %lx2, i32 %w, i32 %h, i32 %x, i32 %y, i32 %dx, i32 %dy, i32 %average_flag) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %lx.addr = alloca i32, align 4
  %lx2.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %average_flag.addr = alloca i32, align 4
  %xint = alloca i32, align 4
  %yint = alloca i32, align 4
  %xh = alloca i32, align 4
  %yh = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %lx2, i32* %lx2.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %average_flag, i32* %average_flag.addr, align 4
  %0 = load i32, i32* %dx.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %xint, align 4
  %1 = load i32, i32* %dy.addr, align 4
  %shr1 = ashr i32 %1, 1
  store i32 %shr1, i32* %yint, align 4
  %2 = load i32, i32* %dx.addr, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %xh, align 4
  %3 = load i32, i32* %dy.addr, align 4
  %and2 = and i32 %3, 1
  store i32 %and2, i32* %yh, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i32, i32* %lx.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %yint, align 4
  %add = add nsw i32 %6, %7
  %mul = mul nsw i32 %5, %add
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %8 = load i32, i32* %x.addr, align 4
  %idx.ext3 = sext i32 %8 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext3
  %9 = load i32, i32* %xint, align 4
  %idx.ext5 = sext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.ext5
  store i8* %add.ptr6, i8** %s, align 8
  %10 = load i8*, i8** %dst.addr, align 8
  %11 = load i32, i32* %lx.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %mul7 = mul nsw i32 %11, %12
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %10, i64 %idx.ext8
  %13 = load i32, i32* %x.addr, align 4
  %idx.ext10 = sext i32 %13 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.ext10
  store i8* %add.ptr11, i8** %d, align 8
  %14 = load i32, i32* %xh, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else.58, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %yh, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.else.58, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load i32, i32* %average_flag.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.then.14
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %h.addr, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %w.addr, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load i8*, i8** %s, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 %idxprom18
  %26 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %26 to i32
  %add21 = add nsw i32 %conv, %conv20
  store i32 %add21, i32* %v, align 4
  %27 = load i32, i32* %v, align 4
  %28 = load i32, i32* %v, align 4
  %cmp22 = icmp sge i32 %28, 0
  %cond = select i1 %cmp22, i32 1, i32 0
  %add24 = add nsw i32 %27, %cond
  %shr25 = ashr i32 %add24, 1
  %conv26 = trunc i32 %shr25 to i8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i8*, i8** %d, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %32 = load i32, i32* %lx2.addr, align 4
  %33 = load i8*, i8** %s, align 8
  %idx.ext29 = sext i32 %32 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %33, i64 %idx.ext29
  store i8* %add.ptr30, i8** %s, align 8
  %34 = load i32, i32* %lx2.addr, align 4
  %35 = load i8*, i8** %d, align 8
  %idx.ext31 = sext i32 %34 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %35, i64 %idx.ext31
  store i8* %add.ptr32, i8** %d, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %if.else
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %h.addr, align 4
  %cmp37 = icmp slt i32 %37, %38
  br i1 %cmp37, label %for.body.39, label %for.end.57

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %for.body.39
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %w.addr, align 4
  %cmp41 = icmp slt i32 %39, %40
  br i1 %cmp41, label %for.body.43, label %for.end.50

for.body.43:                                      ; preds = %for.cond.40
  %41 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i8*, i8** %s, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 %idxprom44
  %43 = load i8, i8* %arrayidx45, align 1
  %44 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %44 to i64
  %45 = load i8*, i8** %d, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom46
  store i8 %43, i8* %arrayidx47, align 1
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.43
  %46 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %46, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.40

for.end.50:                                       ; preds = %for.cond.40
  %47 = load i32, i32* %lx2.addr, align 4
  %48 = load i8*, i8** %s, align 8
  %idx.ext51 = sext i32 %47 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %48, i64 %idx.ext51
  store i8* %add.ptr52, i8** %s, align 8
  %49 = load i32, i32* %lx2.addr, align 4
  %50 = load i8*, i8** %d, align 8
  %idx.ext53 = sext i32 %49 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %50, i64 %idx.ext53
  store i8* %add.ptr54, i8** %d, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.50
  %51 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.36

for.end.57:                                       ; preds = %for.cond.36
  br label %if.end

if.end:                                           ; preds = %for.end.57, %for.end.35
  br label %if.end.318

if.else.58:                                       ; preds = %land.lhs.true, %entry
  %52 = load i32, i32* %xh, align 4
  %tobool59 = icmp ne i32 %52, 0
  br i1 %tobool59, label %if.else.138, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %if.else.58
  %53 = load i32, i32* %yh, align 4
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %if.then.62, label %if.else.138

if.then.62:                                       ; preds = %land.lhs.true.60
  %54 = load i32, i32* %average_flag.addr, align 4
  %tobool63 = icmp ne i32 %54, 0
  br i1 %tobool63, label %if.then.64, label %if.else.105

if.then.64:                                       ; preds = %if.then.62
  store i32 0, i32* %j, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.102, %if.then.64
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %h.addr, align 4
  %cmp66 = icmp slt i32 %55, %56
  br i1 %cmp66, label %for.body.68, label %for.end.104

for.body.68:                                      ; preds = %for.cond.65
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.95, %for.body.68
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %w.addr, align 4
  %cmp70 = icmp slt i32 %57, %58
  br i1 %cmp70, label %for.body.72, label %for.end.97

for.body.72:                                      ; preds = %for.cond.69
  %59 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load i8*, i8** %d, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %60, i64 %idxprom73
  %61 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %62 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %62 to i64
  %63 = load i8*, i8** %s, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %63, i64 %idxprom76
  %64 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %64 to i32
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %lx.addr, align 4
  %add79 = add nsw i32 %65, %66
  %idxprom80 = sext i32 %add79 to i64
  %67 = load i8*, i8** %s, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %67, i64 %idxprom80
  %68 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %68 to i32
  %add83 = add nsw i32 %conv78, %conv82
  %add84 = add nsw i32 %add83, 1
  %shr85 = lshr i32 %add84, 1
  %add86 = add i32 %conv75, %shr85
  store i32 %add86, i32* %v, align 4
  %69 = load i32, i32* %v, align 4
  %70 = load i32, i32* %v, align 4
  %cmp87 = icmp sge i32 %70, 0
  %cond89 = select i1 %cmp87, i32 1, i32 0
  %add90 = add nsw i32 %69, %cond89
  %shr91 = ashr i32 %add90, 1
  %conv92 = trunc i32 %shr91 to i8
  %71 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %71 to i64
  %72 = load i8*, i8** %d, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %72, i64 %idxprom93
  store i8 %conv92, i8* %arrayidx94, align 1
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.72
  %73 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %73, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.69

for.end.97:                                       ; preds = %for.cond.69
  %74 = load i32, i32* %lx2.addr, align 4
  %75 = load i8*, i8** %s, align 8
  %idx.ext98 = sext i32 %74 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %75, i64 %idx.ext98
  store i8* %add.ptr99, i8** %s, align 8
  %76 = load i32, i32* %lx2.addr, align 4
  %77 = load i8*, i8** %d, align 8
  %idx.ext100 = sext i32 %76 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %77, i64 %idx.ext100
  store i8* %add.ptr101, i8** %d, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.97
  %78 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %78, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.65

for.end.104:                                      ; preds = %for.cond.65
  br label %if.end.137

if.else.105:                                      ; preds = %if.then.62
  store i32 0, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.134, %if.else.105
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %h.addr, align 4
  %cmp107 = icmp slt i32 %79, %80
  br i1 %cmp107, label %for.body.109, label %for.end.136

for.body.109:                                     ; preds = %for.cond.106
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.127, %for.body.109
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %w.addr, align 4
  %cmp111 = icmp slt i32 %81, %82
  br i1 %cmp111, label %for.body.113, label %for.end.129

for.body.113:                                     ; preds = %for.cond.110
  %83 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %83 to i64
  %84 = load i8*, i8** %s, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %84, i64 %idxprom114
  %85 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %85 to i32
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %lx.addr, align 4
  %add117 = add nsw i32 %86, %87
  %idxprom118 = sext i32 %add117 to i64
  %88 = load i8*, i8** %s, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %88, i64 %idxprom118
  %89 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %89 to i32
  %add121 = add nsw i32 %conv116, %conv120
  %add122 = add nsw i32 %add121, 1
  %shr123 = lshr i32 %add122, 1
  %conv124 = trunc i32 %shr123 to i8
  %90 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %90 to i64
  %91 = load i8*, i8** %d, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %91, i64 %idxprom125
  store i8 %conv124, i8* %arrayidx126, align 1
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.113
  %92 = load i32, i32* %i, align 4
  %inc128 = add nsw i32 %92, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond.110

for.end.129:                                      ; preds = %for.cond.110
  %93 = load i32, i32* %lx2.addr, align 4
  %94 = load i8*, i8** %s, align 8
  %idx.ext130 = sext i32 %93 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %94, i64 %idx.ext130
  store i8* %add.ptr131, i8** %s, align 8
  %95 = load i32, i32* %lx2.addr, align 4
  %96 = load i8*, i8** %d, align 8
  %idx.ext132 = sext i32 %95 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %96, i64 %idx.ext132
  store i8* %add.ptr133, i8** %d, align 8
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.129
  %97 = load i32, i32* %j, align 4
  %inc135 = add nsw i32 %97, 1
  store i32 %inc135, i32* %j, align 4
  br label %for.cond.106

for.end.136:                                      ; preds = %for.cond.106
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %for.end.104
  br label %if.end.317

if.else.138:                                      ; preds = %land.lhs.true.60, %if.else.58
  %98 = load i32, i32* %xh, align 4
  %tobool139 = icmp ne i32 %98, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.else.218

land.lhs.true.140:                                ; preds = %if.else.138
  %99 = load i32, i32* %yh, align 4
  %tobool141 = icmp ne i32 %99, 0
  br i1 %tobool141, label %if.else.218, label %if.then.142

if.then.142:                                      ; preds = %land.lhs.true.140
  %100 = load i32, i32* %average_flag.addr, align 4
  %tobool143 = icmp ne i32 %100, 0
  br i1 %tobool143, label %if.then.144, label %if.else.185

if.then.144:                                      ; preds = %if.then.142
  store i32 0, i32* %j, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.182, %if.then.144
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %h.addr, align 4
  %cmp146 = icmp slt i32 %101, %102
  br i1 %cmp146, label %for.body.148, label %for.end.184

for.body.148:                                     ; preds = %for.cond.145
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.175, %for.body.148
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %w.addr, align 4
  %cmp150 = icmp slt i32 %103, %104
  br i1 %cmp150, label %for.body.152, label %for.end.177

for.body.152:                                     ; preds = %for.cond.149
  %105 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %105 to i64
  %106 = load i8*, i8** %d, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %106, i64 %idxprom153
  %107 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %107 to i32
  %108 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %108 to i64
  %109 = load i8*, i8** %s, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %109, i64 %idxprom156
  %110 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %110 to i32
  %111 = load i32, i32* %i, align 4
  %add159 = add nsw i32 %111, 1
  %idxprom160 = sext i32 %add159 to i64
  %112 = load i8*, i8** %s, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %112, i64 %idxprom160
  %113 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %113 to i32
  %add163 = add nsw i32 %conv158, %conv162
  %add164 = add nsw i32 %add163, 1
  %shr165 = lshr i32 %add164, 1
  %add166 = add i32 %conv155, %shr165
  store i32 %add166, i32* %v, align 4
  %114 = load i32, i32* %v, align 4
  %115 = load i32, i32* %v, align 4
  %cmp167 = icmp sge i32 %115, 0
  %cond169 = select i1 %cmp167, i32 1, i32 0
  %add170 = add nsw i32 %114, %cond169
  %shr171 = ashr i32 %add170, 1
  %conv172 = trunc i32 %shr171 to i8
  %116 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %116 to i64
  %117 = load i8*, i8** %d, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %117, i64 %idxprom173
  store i8 %conv172, i8* %arrayidx174, align 1
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.152
  %118 = load i32, i32* %i, align 4
  %inc176 = add nsw i32 %118, 1
  store i32 %inc176, i32* %i, align 4
  br label %for.cond.149

for.end.177:                                      ; preds = %for.cond.149
  %119 = load i32, i32* %lx2.addr, align 4
  %120 = load i8*, i8** %s, align 8
  %idx.ext178 = sext i32 %119 to i64
  %add.ptr179 = getelementptr inbounds i8, i8* %120, i64 %idx.ext178
  store i8* %add.ptr179, i8** %s, align 8
  %121 = load i32, i32* %lx2.addr, align 4
  %122 = load i8*, i8** %d, align 8
  %idx.ext180 = sext i32 %121 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %122, i64 %idx.ext180
  store i8* %add.ptr181, i8** %d, align 8
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.177
  %123 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %123, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond.145

for.end.184:                                      ; preds = %for.cond.145
  br label %if.end.217

if.else.185:                                      ; preds = %if.then.142
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.214, %if.else.185
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %h.addr, align 4
  %cmp187 = icmp slt i32 %124, %125
  br i1 %cmp187, label %for.body.189, label %for.end.216

for.body.189:                                     ; preds = %for.cond.186
  store i32 0, i32* %i, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.207, %for.body.189
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %w.addr, align 4
  %cmp191 = icmp slt i32 %126, %127
  br i1 %cmp191, label %for.body.193, label %for.end.209

for.body.193:                                     ; preds = %for.cond.190
  %128 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %128 to i64
  %129 = load i8*, i8** %s, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %129, i64 %idxprom194
  %130 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %130 to i32
  %131 = load i32, i32* %i, align 4
  %add197 = add nsw i32 %131, 1
  %idxprom198 = sext i32 %add197 to i64
  %132 = load i8*, i8** %s, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %132, i64 %idxprom198
  %133 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %133 to i32
  %add201 = add nsw i32 %conv196, %conv200
  %add202 = add nsw i32 %add201, 1
  %shr203 = lshr i32 %add202, 1
  %conv204 = trunc i32 %shr203 to i8
  %134 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %134 to i64
  %135 = load i8*, i8** %d, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %135, i64 %idxprom205
  store i8 %conv204, i8* %arrayidx206, align 1
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.193
  %136 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %136, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond.190

for.end.209:                                      ; preds = %for.cond.190
  %137 = load i32, i32* %lx2.addr, align 4
  %138 = load i8*, i8** %s, align 8
  %idx.ext210 = sext i32 %137 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %138, i64 %idx.ext210
  store i8* %add.ptr211, i8** %s, align 8
  %139 = load i32, i32* %lx2.addr, align 4
  %140 = load i8*, i8** %d, align 8
  %idx.ext212 = sext i32 %139 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %140, i64 %idx.ext212
  store i8* %add.ptr213, i8** %d, align 8
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.end.209
  %141 = load i32, i32* %j, align 4
  %inc215 = add nsw i32 %141, 1
  store i32 %inc215, i32* %j, align 4
  br label %for.cond.186

for.end.216:                                      ; preds = %for.cond.186
  br label %if.end.217

if.end.217:                                       ; preds = %for.end.216, %for.end.184
  br label %if.end.316

if.else.218:                                      ; preds = %land.lhs.true.140, %if.else.138
  %142 = load i32, i32* %average_flag.addr, align 4
  %tobool219 = icmp ne i32 %142, 0
  br i1 %tobool219, label %if.then.220, label %if.else.272

if.then.220:                                      ; preds = %if.else.218
  store i32 0, i32* %j, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.269, %if.then.220
  %143 = load i32, i32* %j, align 4
  %144 = load i32, i32* %h.addr, align 4
  %cmp222 = icmp slt i32 %143, %144
  br i1 %cmp222, label %for.body.224, label %for.end.271

for.body.224:                                     ; preds = %for.cond.221
  store i32 0, i32* %i, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.262, %for.body.224
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %w.addr, align 4
  %cmp226 = icmp slt i32 %145, %146
  br i1 %cmp226, label %for.body.228, label %for.end.264

for.body.228:                                     ; preds = %for.cond.225
  %147 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %147 to i64
  %148 = load i8*, i8** %d, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %148, i64 %idxprom229
  %149 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %149 to i32
  %150 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %150 to i64
  %151 = load i8*, i8** %s, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %151, i64 %idxprom232
  %152 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %152 to i32
  %153 = load i32, i32* %i, align 4
  %add235 = add nsw i32 %153, 1
  %idxprom236 = sext i32 %add235 to i64
  %154 = load i8*, i8** %s, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %154, i64 %idxprom236
  %155 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %155 to i32
  %add239 = add nsw i32 %conv234, %conv238
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %lx.addr, align 4
  %add240 = add nsw i32 %156, %157
  %idxprom241 = sext i32 %add240 to i64
  %158 = load i8*, i8** %s, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %158, i64 %idxprom241
  %159 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %159 to i32
  %add244 = add nsw i32 %add239, %conv243
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %lx.addr, align 4
  %add245 = add nsw i32 %160, %161
  %add246 = add nsw i32 %add245, 1
  %idxprom247 = sext i32 %add246 to i64
  %162 = load i8*, i8** %s, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %162, i64 %idxprom247
  %163 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %163 to i32
  %add250 = add nsw i32 %add244, %conv249
  %add251 = add nsw i32 %add250, 2
  %shr252 = lshr i32 %add251, 2
  %add253 = add i32 %conv231, %shr252
  store i32 %add253, i32* %v, align 4
  %164 = load i32, i32* %v, align 4
  %165 = load i32, i32* %v, align 4
  %cmp254 = icmp sge i32 %165, 0
  %cond256 = select i1 %cmp254, i32 1, i32 0
  %add257 = add nsw i32 %164, %cond256
  %shr258 = ashr i32 %add257, 1
  %conv259 = trunc i32 %shr258 to i8
  %166 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %166 to i64
  %167 = load i8*, i8** %d, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %167, i64 %idxprom260
  store i8 %conv259, i8* %arrayidx261, align 1
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.228
  %168 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %168, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.225

for.end.264:                                      ; preds = %for.cond.225
  %169 = load i32, i32* %lx2.addr, align 4
  %170 = load i8*, i8** %s, align 8
  %idx.ext265 = sext i32 %169 to i64
  %add.ptr266 = getelementptr inbounds i8, i8* %170, i64 %idx.ext265
  store i8* %add.ptr266, i8** %s, align 8
  %171 = load i32, i32* %lx2.addr, align 4
  %172 = load i8*, i8** %d, align 8
  %idx.ext267 = sext i32 %171 to i64
  %add.ptr268 = getelementptr inbounds i8, i8* %172, i64 %idx.ext267
  store i8* %add.ptr268, i8** %d, align 8
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.264
  %173 = load i32, i32* %j, align 4
  %inc270 = add nsw i32 %173, 1
  store i32 %inc270, i32* %j, align 4
  br label %for.cond.221

for.end.271:                                      ; preds = %for.cond.221
  br label %if.end.315

if.else.272:                                      ; preds = %if.else.218
  store i32 0, i32* %j, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.312, %if.else.272
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %h.addr, align 4
  %cmp274 = icmp slt i32 %174, %175
  br i1 %cmp274, label %for.body.276, label %for.end.314

for.body.276:                                     ; preds = %for.cond.273
  store i32 0, i32* %i, align 4
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.305, %for.body.276
  %176 = load i32, i32* %i, align 4
  %177 = load i32, i32* %w.addr, align 4
  %cmp278 = icmp slt i32 %176, %177
  br i1 %cmp278, label %for.body.280, label %for.end.307

for.body.280:                                     ; preds = %for.cond.277
  %178 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %178 to i64
  %179 = load i8*, i8** %s, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %179, i64 %idxprom281
  %180 = load i8, i8* %arrayidx282, align 1
  %conv283 = zext i8 %180 to i32
  %181 = load i32, i32* %i, align 4
  %add284 = add nsw i32 %181, 1
  %idxprom285 = sext i32 %add284 to i64
  %182 = load i8*, i8** %s, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %182, i64 %idxprom285
  %183 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %183 to i32
  %add288 = add nsw i32 %conv283, %conv287
  %184 = load i32, i32* %i, align 4
  %185 = load i32, i32* %lx.addr, align 4
  %add289 = add nsw i32 %184, %185
  %idxprom290 = sext i32 %add289 to i64
  %186 = load i8*, i8** %s, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %186, i64 %idxprom290
  %187 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %187 to i32
  %add293 = add nsw i32 %add288, %conv292
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* %lx.addr, align 4
  %add294 = add nsw i32 %188, %189
  %add295 = add nsw i32 %add294, 1
  %idxprom296 = sext i32 %add295 to i64
  %190 = load i8*, i8** %s, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %190, i64 %idxprom296
  %191 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %191 to i32
  %add299 = add nsw i32 %add293, %conv298
  %add300 = add nsw i32 %add299, 2
  %shr301 = lshr i32 %add300, 2
  %conv302 = trunc i32 %shr301 to i8
  %192 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %192 to i64
  %193 = load i8*, i8** %d, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %193, i64 %idxprom303
  store i8 %conv302, i8* %arrayidx304, align 1
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.280
  %194 = load i32, i32* %i, align 4
  %inc306 = add nsw i32 %194, 1
  store i32 %inc306, i32* %i, align 4
  br label %for.cond.277

for.end.307:                                      ; preds = %for.cond.277
  %195 = load i32, i32* %lx2.addr, align 4
  %196 = load i8*, i8** %s, align 8
  %idx.ext308 = sext i32 %195 to i64
  %add.ptr309 = getelementptr inbounds i8, i8* %196, i64 %idx.ext308
  store i8* %add.ptr309, i8** %s, align 8
  %197 = load i32, i32* %lx2.addr, align 4
  %198 = load i8*, i8** %d, align 8
  %idx.ext310 = sext i32 %197 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %198, i64 %idx.ext310
  store i8* %add.ptr311, i8** %d, align 8
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.end.307
  %199 = load i32, i32* %j, align 4
  %inc313 = add nsw i32 %199, 1
  store i32 %inc313, i32* %j, align 4
  br label %for.cond.273

for.end.314:                                      ; preds = %for.cond.273
  br label %if.end.315

if.end.315:                                       ; preds = %for.end.314, %for.end.271
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.217
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.137
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
