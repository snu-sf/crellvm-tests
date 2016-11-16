; ModuleID = './plug-ins/selection-to-path/fit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.vector_type = type { double, double }
%struct.spline_list_type = type { %struct.spline_type*, i32 }
%struct.spline_type = type { [4 x %struct.real_coordinate_type], i32, double }
%struct.real_coordinate_type = type { double, double }
%struct.pixel_outline_type = type { %struct.coordinate_type*, i32, i32 }
%struct.coordinate_type = type { i32, i32 }
%struct.spline_list_array_type = type { %struct.spline_list_type*, i32 }
%struct.pixel_outline_list_type = type { %struct.pixel_outline_type*, i32 }
%struct.curve_list_array_type = type { %struct.curve_list_type*, i32 }
%struct.curve_list_type = type { %struct.curve**, i32, i32 }
%struct.curve = type { %struct.point_type*, i32, i32, %struct.vector_type*, %struct.vector_type*, %struct.curve*, %struct.curve* }
%struct.point_type = type { %struct.real_coordinate_type, double }
%struct.index_list = type { i32*, i32 }
%struct.SELVALS = type { double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double }

@align_threshold = global double 5.000000e-01, align 8
@corner_always_threshold = global double 6.000000e+01, align 8
@corner_surround = global i32 4, align 4
@corner_threshold = global double 1.000000e+02, align 8
@error_threshold = global double 4.000000e-01, align 8
@filter_alternative_surround = global i32 1, align 4
@filter_epsilon = global double 1.000000e+01, align 8
@filter_iteration_count = global i32 4, align 4
@filter_percent = global double 3.300000e-01, align 8
@filter_surround = global i32 2, align 4
@keep_knees = global i32 0, align 4
@line_reversion_threshold = global double 1.000000e-02, align 8
@line_threshold = global double 5.000000e-01, align 8
@reparameterize_improvement = global double 1.000000e-02, align 8
@reparameterize_threshold = global double 1.000000e+00, align 8
@subdivide_search = global double 1.000000e-01, align 8
@subdivide_surround = global i32 4, align 4
@subdivide_threshold = global double 3.000000e-02, align 8
@tangent_surround = global i32 3, align 4
@filter_secondary_surround = internal global i32 3, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not fit curve #%u\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"in_count == out_count\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fit.c\00", align 1
@__PRETTY_FUNCTION__.find_curve_vectors = private unnamed_addr constant [110 x i8] c"void find_curve_vectors(unsigned int, curve_type, unsigned int, vector_type *, vector_type *, unsigned int *)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Tried to fit curve with less than two points\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"could not fit left spline list\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not fit right spline list\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"n_points > 0\00", align 1
@__PRETTY_FUNCTION__.find_tangent = private unnamed_addr constant [48 x i8] c"void find_tangent(curve_type, boolean, boolean)\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"((curve)->point_list[(curve)->length-1].t) != 0.0\00", align 1
@__PRETTY_FUNCTION__.set_initial_parameter_values = private unnamed_addr constant [46 x i8] c"void set_initial_parameter_values(curve_type)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"fatal: \00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"zero determinant of C0*C1\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"No worst point found; something is wrong\00", align 1
@find_subdivision.best = private unnamed_addr constant %struct.vector_type { double 0x47EFFFFFE0000000, double 0x47EFFFFFE0000000 }, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"needed exchange\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"current != next\00", align 1
@__PRETTY_FUNCTION__.remove_adjacent_corners = private unnamed_addr constant [62 x i8] c"void remove_adjacent_corners(index_list_type *, unsigned int)\00", align 1

; Function Attrs: nounwind uwtable
define { %struct.spline_list_type*, i32 } @fitted_splines(%struct.pixel_outline_type* %pixel_outline_list.coerce0, i32 %pixel_outline_list.coerce1) #0 {
entry:
  %retval = alloca %struct.spline_list_array_type, align 8
  %pixel_outline_list = alloca %struct.pixel_outline_list_type, align 8
  %this_list = alloca i32, align 4
  %total = alloca i32, align 4
  %char_splines = alloca %struct.spline_list_array_type, align 8
  %curve_array = alloca %struct.curve_list_array_type, align 8
  %curve_list_splines = alloca %struct.spline_list_type, align 8
  %curves = alloca %struct.curve_list_type, align 8
  %coerce = alloca %struct.spline_list_type, align 8
  %0 = bitcast %struct.pixel_outline_list_type* %pixel_outline_list to { %struct.pixel_outline_type*, i32 }*
  %1 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %0, i32 0, i32 0
  store %struct.pixel_outline_type* %pixel_outline_list.coerce0, %struct.pixel_outline_type** %1
  %2 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %0, i32 0, i32 1
  store i32 %pixel_outline_list.coerce1, i32* %2
  store i32 0, i32* %total, align 4
  %call = call { %struct.spline_list_type*, i32 } @new_spline_list_array()
  %3 = bitcast %struct.spline_list_array_type* %char_splines to { %struct.spline_list_type*, i32 }*
  %4 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %3, i32 0, i32 0
  %5 = extractvalue { %struct.spline_list_type*, i32 } %call, 0
  store %struct.spline_list_type* %5, %struct.spline_list_type** %4, align 8
  %6 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %3, i32 0, i32 1
  %7 = extractvalue { %struct.spline_list_type*, i32 } %call, 1
  store i32 %7, i32* %6, align 8
  %8 = bitcast %struct.pixel_outline_list_type* %pixel_outline_list to { %struct.pixel_outline_type*, i32 }*
  %9 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %8, i32 0, i32 0
  %10 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %9, align 1
  %11 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %8, i32 0, i32 1
  %12 = load i32, i32* %11, align 1
  %call1 = call { %struct.curve_list_type*, i32 } @split_at_corners(%struct.pixel_outline_type* %10, i32 %12)
  %13 = bitcast %struct.curve_list_array_type* %curve_array to { %struct.curve_list_type*, i32 }*
  %14 = getelementptr { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %13, i32 0, i32 0
  %15 = extractvalue { %struct.curve_list_type*, i32 } %call1, 0
  store %struct.curve_list_type* %15, %struct.curve_list_type** %14, align 8
  %16 = getelementptr { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %13, i32 0, i32 1
  %17 = extractvalue { %struct.curve_list_type*, i32 } %call1, 1
  store i32 %17, i32* %16, align 8
  store i32 0, i32* %this_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %this_list, align 4
  %length = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %curve_array, i32 0, i32 1
  %19 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %this_list, align 4
  %idxprom = zext i32 %20 to i64
  %data = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %curve_array, i32 0, i32 0
  %21 = load %struct.curve_list_type*, %struct.curve_list_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %21, i64 %idxprom
  %22 = bitcast %struct.curve_list_type* %curves to i8*
  %23 = bitcast %struct.curve_list_type* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %24 = bitcast %struct.curve_list_type* %curves to { %struct.curve**, i64 }*
  %25 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %24, i32 0, i32 0
  %26 = load %struct.curve**, %struct.curve*** %25, align 1
  %27 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 1
  %call2 = call { %struct.spline_type*, i32 } @fit_curve_list(%struct.curve** %26, i64 %28)
  %29 = bitcast %struct.spline_list_type* %coerce to { %struct.spline_type*, i32 }*
  %30 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %29, i32 0, i32 0
  %31 = extractvalue { %struct.spline_type*, i32 } %call2, 0
  store %struct.spline_type* %31, %struct.spline_type** %30, align 8
  %32 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %29, i32 0, i32 1
  %33 = extractvalue { %struct.spline_type*, i32 } %call2, 1
  store i32 %33, i32* %32, align 8
  %34 = bitcast %struct.spline_list_type* %curve_list_splines to i8*
  %35 = bitcast %struct.spline_list_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %36 = bitcast %struct.spline_list_type* %curve_list_splines to { %struct.spline_type*, i32 }*
  %37 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %36, i32 0, i32 0
  %38 = load %struct.spline_type*, %struct.spline_type** %37, align 1
  %39 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %36, i32 0, i32 1
  %40 = load i32, i32* %39, align 1
  call void @append_spline_list(%struct.spline_list_array_type* %char_splines, %struct.spline_type* %38, i32 %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %this_list, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %this_list, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @free_curve_list_array(%struct.curve_list_array_type* %curve_array)
  store i32 0, i32* %this_list, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %for.end
  %42 = load i32, i32* %this_list, align 4
  %length4 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %char_splines, i32 0, i32 1
  %43 = load i32, i32* %length4, align 4
  %cmp5 = icmp ult i32 %42, %43
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.3
  %44 = load i32, i32* %this_list, align 4
  %idxprom7 = zext i32 %44 to i64
  %data8 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %char_splines, i32 0, i32 0
  %45 = load %struct.spline_list_type*, %struct.spline_list_type** %data8, align 8
  %arrayidx9 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %45, i64 %idxprom7
  %length10 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %arrayidx9, i32 0, i32 1
  %46 = load i32, i32* %length10, align 4
  %47 = load i32, i32* %total, align 4
  %add = add i32 %47, %46
  store i32 %add, i32* %total, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %48 = load i32, i32* %this_list, align 4
  %inc12 = add i32 %48, 1
  store i32 %inc12, i32* %this_list, align 4
  br label %for.cond.3

for.end.13:                                       ; preds = %for.cond.3
  %49 = bitcast %struct.spline_list_array_type* %retval to i8*
  %50 = bitcast %struct.spline_list_array_type* %char_splines to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  %51 = bitcast %struct.spline_list_array_type* %retval to { %struct.spline_list_type*, i32 }*
  %52 = load { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %51, align 8
  ret { %struct.spline_list_type*, i32 } %52
}

declare { %struct.spline_list_type*, i32 } @new_spline_list_array() #1

; Function Attrs: nounwind uwtable
define internal { %struct.curve_list_type*, i32 } @split_at_corners(%struct.pixel_outline_type* %pixel_list.coerce0, i32 %pixel_list.coerce1) #0 {
entry:
  %retval = alloca %struct.curve_list_array_type, align 8
  %pixel_list = alloca %struct.pixel_outline_list_type, align 8
  %this_pixel_o = alloca i32, align 4
  %curve_array = alloca %struct.curve_list_array_type, align 8
  %curve = alloca %struct.curve*, align 8
  %first_curve = alloca %struct.curve*, align 8
  %corner_list = alloca %struct.index_list, align 8
  %p = alloca i32, align 4
  %this_corner = alloca i32, align 4
  %curve_list = alloca %struct.curve_list_type, align 8
  %pixel_o = alloca %struct.pixel_outline_type, align 8
  %coerce = alloca %struct.index_list, align 8
  %previous_curve = alloca %struct.curve*, align 8
  %corner = alloca i32, align 4
  %next_corner = alloca i32, align 4
  %0 = bitcast %struct.pixel_outline_list_type* %pixel_list to { %struct.pixel_outline_type*, i32 }*
  %1 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %0, i32 0, i32 0
  store %struct.pixel_outline_type* %pixel_list.coerce0, %struct.pixel_outline_type** %1
  %2 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %0, i32 0, i32 1
  store i32 %pixel_list.coerce1, i32* %2
  %call = call { %struct.curve_list_type*, i32 } @new_curve_list_array()
  %3 = bitcast %struct.curve_list_array_type* %curve_array to { %struct.curve_list_type*, i32 }*
  %4 = getelementptr { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %3, i32 0, i32 0
  %5 = extractvalue { %struct.curve_list_type*, i32 } %call, 0
  store %struct.curve_list_type* %5, %struct.curve_list_type** %4, align 8
  %6 = getelementptr { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %3, i32 0, i32 1
  %7 = extractvalue { %struct.curve_list_type*, i32 } %call, 1
  store i32 %7, i32* %6, align 8
  store i32 0, i32* %this_pixel_o, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %8 = load i32, i32* %this_pixel_o, align 4
  %length = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %pixel_list, i32 0, i32 1
  %9 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %call1 = call { %struct.curve**, i64 } @new_curve_list()
  %10 = bitcast %struct.curve_list_type* %curve_list to { %struct.curve**, i64 }*
  %11 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { %struct.curve**, i64 } %call1, 0
  store %struct.curve** %12, %struct.curve*** %11, align 8
  %13 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { %struct.curve**, i64 } %call1, 1
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* %this_pixel_o, align 4
  %idxprom = zext i32 %15 to i64
  %data = getelementptr inbounds %struct.pixel_outline_list_type, %struct.pixel_outline_list_type* %pixel_list, i32 0, i32 0
  %16 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %16, i64 %idxprom
  %17 = bitcast %struct.pixel_outline_type* %pixel_o to i8*
  %18 = bitcast %struct.pixel_outline_type* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %clockwise = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 2
  %19 = load i32, i32* %clockwise, align 4
  %clockwise2 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 2
  store i32 %19, i32* %clockwise2, align 4
  %length3 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 1
  %20 = load i32, i32* %length3, align 4
  %21 = load i32, i32* @corner_surround, align 4
  %mul = mul i32 %21, 2
  %add = add i32 %mul, 2
  %cmp4 = icmp ugt i32 %20, %add
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = bitcast %struct.pixel_outline_type* %pixel_o to { %struct.coordinate_type*, i64 }*
  %23 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %22, i32 0, i32 0
  %24 = load %struct.coordinate_type*, %struct.coordinate_type** %23, align 1
  %25 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 1
  %call5 = call { i32*, i32 } @find_corners(%struct.coordinate_type* %24, i64 %26)
  %27 = bitcast %struct.index_list* %coerce to { i32*, i32 }*
  %28 = getelementptr { i32*, i32 }, { i32*, i32 }* %27, i32 0, i32 0
  %29 = extractvalue { i32*, i32 } %call5, 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr { i32*, i32 }, { i32*, i32 }* %27, i32 0, i32 1
  %31 = extractvalue { i32*, i32 } %call5, 1
  store i32 %31, i32* %30, align 8
  %32 = bitcast %struct.index_list* %corner_list to i8*
  %33 = bitcast %struct.index_list* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %for.body
  %data6 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 0
  store i32* null, i32** %data6, align 8
  %length7 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 1
  store i32 0, i32* %length7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8 = call %struct.curve* @new_curve()
  store %struct.curve* %call8, %struct.curve** %first_curve, align 8
  %34 = load %struct.curve*, %struct.curve** %first_curve, align 8
  store %struct.curve* %34, %struct.curve** %curve, align 8
  %length9 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 1
  %35 = load i32, i32* %length9, align 4
  %cmp10 = icmp eq i32 %35, 0
  br i1 %cmp10, label %if.then.11, label %if.else.19

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %p, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %36 = load i32, i32* %p, align 4
  %length13 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 1
  %37 = load i32, i32* %length13, align 4
  %cmp14 = icmp ult i32 %36, %37
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %38 = load %struct.curve*, %struct.curve** %curve, align 8
  %39 = load i32, i32* %p, align 4
  %idxprom16 = zext i32 %39 to i64
  %data17 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 0
  %40 = load %struct.coordinate_type*, %struct.coordinate_type** %data17, align 8
  %arrayidx18 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %40, i64 %idxprom16
  %41 = bitcast %struct.coordinate_type* %arrayidx18 to i64*
  %42 = load i64, i64* %41, align 4
  call void @append_pixel(%struct.curve* %38, i64 %42)
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %43 = load i32, i32* %p, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %44 = load %struct.curve*, %struct.curve** %curve, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %44, i32 0, i32 2
  store i32 1, i32* %cyclic, align 4
  br label %if.end.70

if.else.19:                                       ; preds = %if.end
  store i32 0, i32* %this_corner, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.41, %if.else.19
  %45 = load i32, i32* %this_corner, align 4
  %length21 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 1
  %46 = load i32, i32* %length21, align 4
  %sub = sub i32 %46, 1
  %cmp22 = icmp ult i32 %45, %sub
  br i1 %cmp22, label %for.body.23, label %for.end.43

for.body.23:                                      ; preds = %for.cond.20
  %47 = load %struct.curve*, %struct.curve** %curve, align 8
  store %struct.curve* %47, %struct.curve** %previous_curve, align 8
  %48 = load i32, i32* %this_corner, align 4
  %idxprom24 = zext i32 %48 to i64
  %data25 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 0
  %49 = load i32*, i32** %data25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %49, i64 %idxprom24
  %50 = load i32, i32* %arrayidx26, align 4
  store i32 %50, i32* %corner, align 4
  %51 = load i32, i32* %this_corner, align 4
  %add27 = add i32 %51, 1
  %idxprom28 = zext i32 %add27 to i64
  %data29 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 0
  %52 = load i32*, i32** %data29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %52, i64 %idxprom28
  %53 = load i32, i32* %arrayidx30, align 4
  store i32 %53, i32* %next_corner, align 4
  %54 = load i32, i32* %corner, align 4
  store i32 %54, i32* %p, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.37, %for.body.23
  %55 = load i32, i32* %p, align 4
  %56 = load i32, i32* %next_corner, align 4
  %cmp32 = icmp ule i32 %55, %56
  br i1 %cmp32, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.31
  %57 = load %struct.curve*, %struct.curve** %curve, align 8
  %58 = load i32, i32* %p, align 4
  %idxprom34 = zext i32 %58 to i64
  %data35 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 0
  %59 = load %struct.coordinate_type*, %struct.coordinate_type** %data35, align 8
  %arrayidx36 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %59, i64 %idxprom34
  %60 = bitcast %struct.coordinate_type* %arrayidx36 to i64*
  %61 = load i64, i64* %60, align 4
  call void @append_pixel(%struct.curve* %57, i64 %61)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.33
  %62 = load i32, i32* %p, align 4
  %inc38 = add i32 %62, 1
  store i32 %inc38, i32* %p, align 4
  br label %for.cond.31

for.end.39:                                       ; preds = %for.cond.31
  %63 = load %struct.curve*, %struct.curve** %curve, align 8
  call void @append_curve(%struct.curve_list_type* %curve_list, %struct.curve* %63)
  %call40 = call %struct.curve* @new_curve()
  store %struct.curve* %call40, %struct.curve** %curve, align 8
  %64 = load %struct.curve*, %struct.curve** %curve, align 8
  %65 = load %struct.curve*, %struct.curve** %previous_curve, align 8
  %next = getelementptr inbounds %struct.curve, %struct.curve* %65, i32 0, i32 6
  store %struct.curve* %64, %struct.curve** %next, align 8
  %66 = load %struct.curve*, %struct.curve** %previous_curve, align 8
  %67 = load %struct.curve*, %struct.curve** %curve, align 8
  %previous = getelementptr inbounds %struct.curve, %struct.curve* %67, i32 0, i32 5
  store %struct.curve* %66, %struct.curve** %previous, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.39
  %68 = load i32, i32* %this_corner, align 4
  %inc42 = add i32 %68, 1
  store i32 %inc42, i32* %this_corner, align 4
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  %length44 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 1
  %69 = load i32, i32* %length44, align 4
  %sub45 = sub i32 %69, 1
  %idxprom46 = zext i32 %sub45 to i64
  %data47 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 0
  %70 = load i32*, i32** %data47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %70, i64 %idxprom46
  %71 = load i32, i32* %arrayidx48, align 4
  store i32 %71, i32* %p, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.56, %for.end.43
  %72 = load i32, i32* %p, align 4
  %length50 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 1
  %73 = load i32, i32* %length50, align 4
  %cmp51 = icmp ult i32 %72, %73
  br i1 %cmp51, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.49
  %74 = load %struct.curve*, %struct.curve** %curve, align 8
  %75 = load i32, i32* %p, align 4
  %idxprom53 = zext i32 %75 to i64
  %data54 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 0
  %76 = load %struct.coordinate_type*, %struct.coordinate_type** %data54, align 8
  %arrayidx55 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %76, i64 %idxprom53
  %77 = bitcast %struct.coordinate_type* %arrayidx55 to i64*
  %78 = load i64, i64* %77, align 4
  call void @append_pixel(%struct.curve* %74, i64 %78)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.52
  %79 = load i32, i32* %p, align 4
  %inc57 = add i32 %79, 1
  store i32 %inc57, i32* %p, align 4
  br label %for.cond.49

for.end.58:                                       ; preds = %for.cond.49
  store i32 0, i32* %p, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.67, %for.end.58
  %80 = load i32, i32* %p, align 4
  %data60 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 0
  %81 = load i32*, i32** %data60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp ule i32 %80, %82
  br i1 %cmp62, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.59
  %83 = load %struct.curve*, %struct.curve** %curve, align 8
  %84 = load i32, i32* %p, align 4
  %idxprom64 = zext i32 %84 to i64
  %data65 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_o, i32 0, i32 0
  %85 = load %struct.coordinate_type*, %struct.coordinate_type** %data65, align 8
  %arrayidx66 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %85, i64 %idxprom64
  %86 = bitcast %struct.coordinate_type* %arrayidx66 to i64*
  %87 = load i64, i64* %86, align 4
  call void @append_pixel(%struct.curve* %83, i64 %87)
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.63
  %88 = load i32, i32* %p, align 4
  %inc68 = add i32 %88, 1
  store i32 %inc68, i32* %p, align 4
  br label %for.cond.59

for.end.69:                                       ; preds = %for.cond.59
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.end
  %89 = load %struct.curve*, %struct.curve** %curve, align 8
  call void @append_curve(%struct.curve_list_type* %curve_list, %struct.curve* %89)
  %90 = load %struct.curve*, %struct.curve** %first_curve, align 8
  %91 = load %struct.curve*, %struct.curve** %curve, align 8
  %next71 = getelementptr inbounds %struct.curve, %struct.curve* %91, i32 0, i32 6
  store %struct.curve* %90, %struct.curve** %next71, align 8
  %92 = load %struct.curve*, %struct.curve** %curve, align 8
  %93 = load %struct.curve*, %struct.curve** %first_curve, align 8
  %previous72 = getelementptr inbounds %struct.curve, %struct.curve* %93, i32 0, i32 5
  store %struct.curve* %92, %struct.curve** %previous72, align 8
  %94 = bitcast %struct.curve_list_type* %curve_list to { %struct.curve**, i64 }*
  %95 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %94, i32 0, i32 0
  %96 = load %struct.curve**, %struct.curve*** %95, align 1
  %97 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 1
  call void @append_curve_list(%struct.curve_list_array_type* %curve_array, %struct.curve** %96, i64 %98)
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.70
  %99 = load i32, i32* %this_pixel_o, align 4
  %inc74 = add i32 %99, 1
  store i32 %inc74, i32* %this_pixel_o, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %100 = bitcast %struct.curve_list_array_type* %retval to i8*
  %101 = bitcast %struct.curve_list_array_type* %curve_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false)
  %102 = bitcast %struct.curve_list_array_type* %retval to { %struct.curve_list_type*, i32 }*
  %103 = load { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %102, align 8
  ret { %struct.curve_list_type*, i32 } %103
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal { %struct.spline_type*, i32 } @fit_curve_list(%struct.curve** %curve_list.coerce0, i64 %curve_list.coerce1) #0 {
entry:
  %retval = alloca %struct.spline_list_type, align 8
  %curve_list = alloca %struct.curve_list_type, align 8
  %curve = alloca %struct.curve*, align 8
  %this_curve = alloca i32, align 4
  %this_spline = alloca i32, align 4
  %curve_list_length = alloca i32, align 4
  %curve_list_splines = alloca %struct.spline_list_type, align 8
  %curve_splines = alloca %struct.spline_list_type*, align 8
  %current_curve = alloca %struct.curve*, align 8
  %0 = bitcast %struct.curve_list_type* %curve_list to { %struct.curve**, i64 }*
  %1 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %0, i32 0, i32 0
  store %struct.curve** %curve_list.coerce0, %struct.curve*** %1
  %2 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %0, i32 0, i32 1
  store i64 %curve_list.coerce1, i64* %2
  %length = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  store i32 %3, i32* %curve_list_length, align 4
  %call = call %struct.spline_list_type* @new_spline_list()
  %4 = bitcast %struct.spline_list_type* %curve_list_splines to i8*
  %5 = bitcast %struct.spline_list_type* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = load i32, i32* @keep_knees, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %this_curve, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %this_curve, align 4
  %8 = load i32, i32* %curve_list_length, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %this_curve, align 4
  %idxprom = zext i32 %9 to i64
  %data = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 0
  %10 = load %struct.curve**, %struct.curve*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.curve*, %struct.curve** %10, i64 %idxprom
  %11 = load %struct.curve*, %struct.curve** %arrayidx, align 8
  %clockwise = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 2
  %12 = load i32, i32* %clockwise, align 4
  call void @remove_knee_points(%struct.curve* %11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %this_curve, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %this_curve, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %this_curve, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %if.end
  %14 = load i32, i32* %this_curve, align 4
  %length2 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 1
  %15 = load i32, i32* %length2, align 4
  %cmp3 = icmp ult i32 %14, %15
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.1
  %16 = load i32, i32* %this_curve, align 4
  %idxprom5 = zext i32 %16 to i64
  %data6 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 0
  %17 = load %struct.curve**, %struct.curve*** %data6, align 8
  %arrayidx7 = getelementptr inbounds %struct.curve*, %struct.curve** %17, i64 %idxprom5
  %18 = load %struct.curve*, %struct.curve** %arrayidx7, align 8
  call void @filter(%struct.curve* %18)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %19 = load i32, i32* %this_curve, align 4
  %inc9 = add i32 %19, 1
  store i32 %inc9, i32* %this_curve, align 4
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  %data11 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 0
  %20 = load %struct.curve**, %struct.curve*** %data11, align 8
  %arrayidx12 = getelementptr inbounds %struct.curve*, %struct.curve** %20, i64 0
  %21 = load %struct.curve*, %struct.curve** %arrayidx12, align 8
  store %struct.curve* %21, %struct.curve** %curve, align 8
  %22 = load %struct.curve*, %struct.curve** %curve, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %22, i32 0, i32 2
  %23 = load i32, i32* %cyclic, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %for.end.10
  %24 = load %struct.curve*, %struct.curve** %curve, align 8
  %length14 = getelementptr inbounds %struct.curve, %struct.curve* %24, i32 0, i32 1
  %25 = load i32, i32* %length14, align 4
  %cmp15 = icmp ne i32 %25, 3
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true
  %26 = load %struct.curve*, %struct.curve** %curve, align 8
  %27 = load %struct.curve*, %struct.curve** %curve, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %27, i32 0, i32 0
  %28 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx17 = getelementptr inbounds %struct.point_type, %struct.point_type* %28, i64 0
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx17, i32 0, i32 0
  %29 = bitcast %struct.real_coordinate_type* %coord to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = load double, double* %30, align 1
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = load double, double* %32, align 1
  call void @append_point(%struct.curve* %26, double %31, double %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true, %for.end.10
  store i32 0, i32* %this_curve, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.37, %if.end.18
  %34 = load i32, i32* %this_curve, align 4
  %35 = load i32, i32* %curve_list_length, align 4
  %cmp20 = icmp ult i32 %34, %35
  br i1 %cmp20, label %for.body.21, label %for.end.39

for.body.21:                                      ; preds = %for.cond.19
  %36 = load i32, i32* %this_curve, align 4
  %idxprom22 = zext i32 %36 to i64
  %data23 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 0
  %37 = load %struct.curve**, %struct.curve*** %data23, align 8
  %arrayidx24 = getelementptr inbounds %struct.curve*, %struct.curve** %37, i64 %idxprom22
  %38 = load %struct.curve*, %struct.curve** %arrayidx24, align 8
  store %struct.curve* %38, %struct.curve** %current_curve, align 8
  %39 = load %struct.curve*, %struct.curve** %current_curve, align 8
  %call25 = call %struct.spline_list_type* @fit_curve(%struct.curve* %39)
  store %struct.spline_list_type* %call25, %struct.spline_list_type** %curve_splines, align 8
  %40 = load %struct.spline_list_type*, %struct.spline_list_type** %curve_splines, align 8
  %cmp26 = icmp eq %struct.spline_list_type* %40, null
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.body.21
  %41 = load i32, i32* %this_curve, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %41)
  br label %if.end.36

if.else:                                          ; preds = %for.body.21
  store i32 0, i32* %this_spline, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.33, %if.else
  %42 = load i32, i32* %this_spline, align 4
  %43 = load %struct.spline_list_type*, %struct.spline_list_type** %curve_splines, align 8
  %length30 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %43, i32 0, i32 1
  %44 = load i32, i32* %length30, align 4
  %cmp31 = icmp ult i32 %42, %44
  br i1 %cmp31, label %for.body.32, label %for.end.35

for.body.32:                                      ; preds = %for.cond.29
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.32
  %45 = load i32, i32* %this_spline, align 4
  %inc34 = add i32 %45, 1
  store i32 %inc34, i32* %this_spline, align 4
  br label %for.cond.29

for.end.35:                                       ; preds = %for.cond.29
  %46 = load %struct.spline_list_type*, %struct.spline_list_type** %curve_splines, align 8
  call void @change_bad_lines(%struct.spline_list_type* %46)
  %47 = load %struct.spline_list_type*, %struct.spline_list_type** %curve_splines, align 8
  %48 = bitcast %struct.spline_list_type* %47 to { %struct.spline_type*, i32 }*
  %49 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %48, i32 0, i32 0
  %50 = load %struct.spline_type*, %struct.spline_type** %49, align 1
  %51 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %48, i32 0, i32 1
  %52 = load i32, i32* %51, align 1
  call void @concat_spline_lists(%struct.spline_list_type* %curve_list_splines, %struct.spline_type* %50, i32 %52)
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.35, %if.then.27
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %53 = load i32, i32* %this_curve, align 4
  %inc38 = add i32 %53, 1
  store i32 %inc38, i32* %this_curve, align 4
  br label %for.cond.19

for.end.39:                                       ; preds = %for.cond.19
  call void @align(%struct.spline_list_type* %curve_list_splines)
  %54 = bitcast %struct.spline_list_type* %retval to i8*
  %55 = bitcast %struct.spline_list_type* %curve_list_splines to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false)
  %56 = bitcast %struct.spline_list_type* %retval to { %struct.spline_type*, i32 }*
  %57 = load { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %56, align 8
  ret { %struct.spline_type*, i32 } %57
}

declare void @append_spline_list(%struct.spline_list_array_type*, %struct.spline_type*, i32) #1

declare void @free_curve_list_array(%struct.curve_list_array_type*) #1

; Function Attrs: nounwind uwtable
define void @fit_set_params(%struct.SELVALS* %selVals) #0 {
entry:
  %selVals.addr = alloca %struct.SELVALS*, align 8
  store %struct.SELVALS* %selVals, %struct.SELVALS** %selVals.addr, align 8
  %0 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %align_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %0, i32 0, i32 0
  %1 = load double, double* %align_threshold, align 8
  store double %1, double* @align_threshold, align 8
  %2 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_always_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %2, i32 0, i32 1
  %3 = load double, double* %corner_always_threshold, align 8
  store double %3, double* @corner_always_threshold, align 8
  %4 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %4, i32 0, i32 2
  %5 = load double, double* %corner_surround, align 8
  %conv = fptoui double %5 to i32
  store i32 %conv, i32* @corner_surround, align 4
  %6 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %6, i32 0, i32 3
  %7 = load double, double* %corner_threshold, align 8
  store double %7, double* @corner_threshold, align 8
  %8 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %error_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %8, i32 0, i32 4
  %9 = load double, double* %error_threshold, align 8
  store double %9, double* @error_threshold, align 8
  %10 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_alternative_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %10, i32 0, i32 5
  %11 = load double, double* %filter_alternative_surround, align 8
  %conv1 = fptoui double %11 to i32
  store i32 %conv1, i32* @filter_alternative_surround, align 4
  %12 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_epsilon = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %12, i32 0, i32 6
  %13 = load double, double* %filter_epsilon, align 8
  store double %13, double* @filter_epsilon, align 8
  %14 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_iteration_count = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %14, i32 0, i32 7
  %15 = load double, double* %filter_iteration_count, align 8
  %conv2 = fptoui double %15 to i32
  store i32 %conv2, i32* @filter_iteration_count, align 4
  %16 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_percent = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %16, i32 0, i32 8
  %17 = load double, double* %filter_percent, align 8
  store double %17, double* @filter_percent, align 8
  %18 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_secondary_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %18, i32 0, i32 9
  %19 = load double, double* %filter_secondary_surround, align 8
  %conv3 = fptoui double %19 to i32
  store i32 %conv3, i32* @filter_secondary_surround, align 4
  %20 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %20, i32 0, i32 10
  %21 = load double, double* %filter_surround, align 8
  %conv4 = fptoui double %21 to i32
  store i32 %conv4, i32* @filter_surround, align 4
  %22 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %keep_knees = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %22, i32 0, i32 11
  %23 = load i32, i32* %keep_knees, align 4
  store i32 %23, i32* @keep_knees, align 4
  %24 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %line_reversion_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %24, i32 0, i32 12
  %25 = load double, double* %line_reversion_threshold, align 8
  store double %25, double* @line_reversion_threshold, align 8
  %26 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %line_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %26, i32 0, i32 13
  %27 = load double, double* %line_threshold, align 8
  store double %27, double* @line_threshold, align 8
  %28 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %reparameterize_improvement = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %28, i32 0, i32 14
  %29 = load double, double* %reparameterize_improvement, align 8
  store double %29, double* @reparameterize_improvement, align 8
  %30 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %reparameterize_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %30, i32 0, i32 15
  %31 = load double, double* %reparameterize_threshold, align 8
  store double %31, double* @reparameterize_threshold, align 8
  %32 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_search = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %32, i32 0, i32 16
  %33 = load double, double* %subdivide_search, align 8
  store double %33, double* @subdivide_search, align 8
  %34 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %34, i32 0, i32 17
  %35 = load double, double* %subdivide_surround, align 8
  %conv5 = fptoui double %35 to i32
  store i32 %conv5, i32* @subdivide_surround, align 4
  %36 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %36, i32 0, i32 18
  %37 = load double, double* %subdivide_threshold, align 8
  store double %37, double* @subdivide_threshold, align 8
  %38 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %tangent_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %38, i32 0, i32 19
  %39 = load double, double* %tangent_surround, align 8
  %conv6 = fptoui double %39 to i32
  store i32 %conv6, i32* @tangent_surround, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @fit_set_default_params(%struct.SELVALS* %selVals) #0 {
entry:
  %selVals.addr = alloca %struct.SELVALS*, align 8
  store %struct.SELVALS* %selVals, %struct.SELVALS** %selVals.addr, align 8
  %0 = load double, double* @align_threshold, align 8
  %1 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %align_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %1, i32 0, i32 0
  store double %0, double* %align_threshold, align 8
  %2 = load double, double* @corner_always_threshold, align 8
  %3 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_always_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %3, i32 0, i32 1
  store double %2, double* %corner_always_threshold, align 8
  %4 = load i32, i32* @corner_surround, align 4
  %conv = uitofp i32 %4 to double
  %5 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %5, i32 0, i32 2
  store double %conv, double* %corner_surround, align 8
  %6 = load double, double* @corner_threshold, align 8
  %7 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %corner_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %7, i32 0, i32 3
  store double %6, double* %corner_threshold, align 8
  %8 = load double, double* @error_threshold, align 8
  %9 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %error_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %9, i32 0, i32 4
  store double %8, double* %error_threshold, align 8
  %10 = load i32, i32* @filter_alternative_surround, align 4
  %conv1 = uitofp i32 %10 to double
  %11 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_alternative_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %11, i32 0, i32 5
  store double %conv1, double* %filter_alternative_surround, align 8
  %12 = load double, double* @filter_epsilon, align 8
  %13 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_epsilon = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %13, i32 0, i32 6
  store double %12, double* %filter_epsilon, align 8
  %14 = load i32, i32* @filter_iteration_count, align 4
  %conv2 = uitofp i32 %14 to double
  %15 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_iteration_count = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %15, i32 0, i32 7
  store double %conv2, double* %filter_iteration_count, align 8
  %16 = load double, double* @filter_percent, align 8
  %17 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_percent = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %17, i32 0, i32 8
  store double %16, double* %filter_percent, align 8
  %18 = load i32, i32* @filter_secondary_surround, align 4
  %conv3 = uitofp i32 %18 to double
  %19 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_secondary_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %19, i32 0, i32 9
  store double %conv3, double* %filter_secondary_surround, align 8
  %20 = load i32, i32* @filter_surround, align 4
  %conv4 = uitofp i32 %20 to double
  %21 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %filter_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %21, i32 0, i32 10
  store double %conv4, double* %filter_surround, align 8
  %22 = load i32, i32* @keep_knees, align 4
  %23 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %keep_knees = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %23, i32 0, i32 11
  store i32 %22, i32* %keep_knees, align 4
  %24 = load double, double* @line_reversion_threshold, align 8
  %25 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %line_reversion_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %25, i32 0, i32 12
  store double %24, double* %line_reversion_threshold, align 8
  %26 = load double, double* @line_threshold, align 8
  %27 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %line_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %27, i32 0, i32 13
  store double %26, double* %line_threshold, align 8
  %28 = load double, double* @reparameterize_improvement, align 8
  %29 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %reparameterize_improvement = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %29, i32 0, i32 14
  store double %28, double* %reparameterize_improvement, align 8
  %30 = load double, double* @reparameterize_threshold, align 8
  %31 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %reparameterize_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %31, i32 0, i32 15
  store double %30, double* %reparameterize_threshold, align 8
  %32 = load double, double* @subdivide_search, align 8
  %33 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_search = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %33, i32 0, i32 16
  store double %32, double* %subdivide_search, align 8
  %34 = load i32, i32* @subdivide_surround, align 4
  %conv5 = uitofp i32 %34 to double
  %35 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %35, i32 0, i32 17
  store double %conv5, double* %subdivide_surround, align 8
  %36 = load double, double* @subdivide_threshold, align 8
  %37 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %subdivide_threshold = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %37, i32 0, i32 18
  store double %36, double* %subdivide_threshold, align 8
  %38 = load i32, i32* @tangent_surround, align 4
  %conv6 = uitofp i32 %38 to double
  %39 = load %struct.SELVALS*, %struct.SELVALS** %selVals.addr, align 8
  %tangent_surround = getelementptr inbounds %struct.SELVALS, %struct.SELVALS* %39, i32 0, i32 19
  store double %conv6, double* %tangent_surround, align 8
  ret void
}

declare %struct.spline_list_type* @new_spline_list() #1

; Function Attrs: nounwind uwtable
define internal void @remove_knee_points(%struct.curve* %curve, i32 %clockwise) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %clockwise.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %previous = alloca %struct.coordinate_type, align 4
  %trimmed_curve = alloca %struct.curve*, align 8
  %agg.tmp = alloca %struct.coordinate_type, align 4
  %current = alloca %struct.coordinate_type, align 4
  %next = alloca %struct.coordinate_type, align 4
  %prev_delta = alloca %struct.vector_type, align 8
  %next_delta = alloca %struct.vector_type, align 8
  %agg.tmp125 = alloca %struct.coordinate_type, align 4
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 %clockwise, i32* %clockwise.addr, align 4
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 2
  %1 = load i32, i32* %cyclic, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %offset, align 4
  %2 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false.6

cond.true:                                        ; preds = %entry
  %3 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic1 = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 2
  %4 = load i32, i32* %cyclic1, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false

cond.true.3:                                      ; preds = %cond.true
  %5 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %5, i32 0, i32 1
  %6 = load i32, i32* %length, align 4
  %7 = load i32, i32* %offset, align 4
  %add = add nsw i32 %6, %7
  %sub4 = sub nsw i32 %add, 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.3
  %cond5 = phi i32 [ %sub4, %cond.true.3 ], [ -1, %cond.false ]
  br label %cond.end.8

cond.false.6:                                     ; preds = %entry
  %8 = load i32, i32* %offset, align 4
  %sub7 = sub nsw i32 %8, 1
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.end
  %cond9 = phi i32 [ %cond5, %cond.end ], [ %sub7, %cond.false.6 ]
  %idxprom = sext i32 %cond9 to i64
  %9 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %9, i32 0, i32 0
  %10 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %10, i64 %idxprom
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %11 = bitcast %struct.real_coordinate_type* %coord to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = load double, double* %12, align 1
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 1
  %call = call i64 @real_to_int_coord(double %13, double %15)
  %16 = bitcast %struct.coordinate_type* %previous to i64*
  store i64 %call, i64* %16, align 4
  %17 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call10 = call %struct.curve* @copy_most_of_curve(%struct.curve* %17)
  store %struct.curve* %call10, %struct.curve** %trimmed_curve, align 8
  %18 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic11 = getelementptr inbounds %struct.curve, %struct.curve* %18, i32 0, i32 2
  %19 = load i32, i32* %cyclic11, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  %20 = load %struct.curve*, %struct.curve** %trimmed_curve, align 8
  %21 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list13 = getelementptr inbounds %struct.curve, %struct.curve* %21, i32 0, i32 0
  %22 = load %struct.point_type*, %struct.point_type** %point_list13, align 8
  %arrayidx14 = getelementptr inbounds %struct.point_type, %struct.point_type* %22, i64 0
  %coord15 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx14, i32 0, i32 0
  %23 = bitcast %struct.real_coordinate_type* %coord15 to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call16 = call i64 @real_to_int_coord(double %25, double %27)
  %28 = bitcast %struct.coordinate_type* %agg.tmp to i64*
  store i64 %call16, i64* %28, align 4
  %29 = bitcast %struct.coordinate_type* %agg.tmp to i64*
  %30 = load i64, i64* %29, align 4
  call void @append_pixel(%struct.curve* %20, i64 %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.8
  %31 = load i32, i32* %offset, align 4
  store i32 %31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length17 = getelementptr inbounds %struct.curve, %struct.curve* %33, i32 0, i32 1
  %34 = load i32, i32* %length17, align 4
  %35 = load i32, i32* %offset, align 4
  %sub18 = sub i32 %34, %35
  %cmp19 = icmp ult i32 %32, %sub18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list21 = getelementptr inbounds %struct.curve, %struct.curve* %37, i32 0, i32 0
  %38 = load %struct.point_type*, %struct.point_type** %point_list21, align 8
  %arrayidx22 = getelementptr inbounds %struct.point_type, %struct.point_type* %38, i64 %idxprom20
  %coord23 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx22, i32 0, i32 0
  %39 = bitcast %struct.real_coordinate_type* %coord23 to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = load double, double* %40, align 1
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = load double, double* %42, align 1
  %call24 = call i64 @real_to_int_coord(double %41, double %43)
  %44 = bitcast %struct.coordinate_type* %current to i64*
  store i64 %call24, i64* %44, align 4
  %45 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %45, 1
  %46 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length26 = getelementptr inbounds %struct.curve, %struct.curve* %46, i32 0, i32 1
  %47 = load i32, i32* %length26, align 4
  %cmp27 = icmp sge i32 %add25, %47
  br i1 %cmp27, label %cond.true.28, label %cond.false.38

cond.true.28:                                     ; preds = %for.body
  %48 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic29 = getelementptr inbounds %struct.curve, %struct.curve* %48, i32 0, i32 2
  %49 = load i32, i32* %cyclic29, align 4
  %tobool30 = icmp ne i32 %49, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.true.28
  %50 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %50, 1
  %51 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length33 = getelementptr inbounds %struct.curve, %struct.curve* %51, i32 0, i32 1
  %52 = load i32, i32* %length33, align 4
  %rem = srem i32 %add32, %52
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.true.28
  %53 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length35 = getelementptr inbounds %struct.curve, %struct.curve* %53, i32 0, i32 1
  %54 = load i32, i32* %length35, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.31
  %cond37 = phi i32 [ %rem, %cond.true.31 ], [ %54, %cond.false.34 ]
  br label %cond.end.40

cond.false.38:                                    ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %55, 1
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.end.36
  %cond41 = phi i32 [ %cond37, %cond.end.36 ], [ %add39, %cond.false.38 ]
  %idxprom42 = sext i32 %cond41 to i64
  %56 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list43 = getelementptr inbounds %struct.curve, %struct.curve* %56, i32 0, i32 0
  %57 = load %struct.point_type*, %struct.point_type** %point_list43, align 8
  %arrayidx44 = getelementptr inbounds %struct.point_type, %struct.point_type* %57, i64 %idxprom42
  %coord45 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx44, i32 0, i32 0
  %58 = bitcast %struct.real_coordinate_type* %coord45 to { double, double }*
  %59 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 0
  %60 = load double, double* %59, align 1
  %61 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 1
  %62 = load double, double* %61, align 1
  %call46 = call i64 @real_to_int_coord(double %60, double %62)
  %63 = bitcast %struct.coordinate_type* %next to i64*
  store i64 %call46, i64* %63, align 4
  %64 = bitcast %struct.coordinate_type* %previous to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.coordinate_type* %current to i64*
  %67 = load i64, i64* %66, align 4
  %call47 = call { double, double } @IPsubtract(i64 %65, i64 %67)
  %68 = bitcast %struct.vector_type* %prev_delta to { double, double }*
  %69 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = extractvalue { double, double } %call47, 0
  store double %70, double* %69, align 8
  %71 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = extractvalue { double, double } %call47, 1
  store double %72, double* %71, align 8
  %73 = bitcast %struct.coordinate_type* %next to i64*
  %74 = load i64, i64* %73, align 4
  %75 = bitcast %struct.coordinate_type* %current to i64*
  %76 = load i64, i64* %75, align 4
  %call48 = call { double, double } @IPsubtract(i64 %74, i64 %76)
  %77 = bitcast %struct.vector_type* %next_delta to { double, double }*
  %78 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = extractvalue { double, double } %call48, 0
  store double %79, double* %78, align 8
  %80 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = extractvalue { double, double } %call48, 1
  store double %81, double* %80, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %82 = load double, double* %dx, align 8
  %cmp49 = fcmp oeq double %82, 0.000000e+00
  br i1 %cmp49, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end.40
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %83 = load double, double* %dy, align 8
  %cmp50 = fcmp une double %83, 0.000000e+00
  br i1 %cmp50, label %land.lhs.true.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end.40
  %dy51 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %84 = load double, double* %dy51, align 8
  %cmp52 = fcmp oeq double %84, 0.000000e+00
  br i1 %cmp52, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %lor.lhs.false
  %dx54 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %85 = load double, double* %dx54, align 8
  %cmp55 = fcmp une double %85, 0.000000e+00
  br i1 %cmp55, label %land.lhs.true.56, label %if.else

land.lhs.true.56:                                 ; preds = %land.lhs.true.53, %land.lhs.true
  %dx57 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %86 = load double, double* %dx57, align 8
  %cmp58 = fcmp oeq double %86, 0.000000e+00
  br i1 %cmp58, label %land.lhs.true.59, label %lor.lhs.false.62

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %dy60 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %87 = load double, double* %dy60, align 8
  %cmp61 = fcmp une double %87, 0.000000e+00
  br i1 %cmp61, label %land.lhs.true.68, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.59, %land.lhs.true.56
  %dy63 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %88 = load double, double* %dy63, align 8
  %cmp64 = fcmp oeq double %88, 0.000000e+00
  br i1 %cmp64, label %land.lhs.true.65, label %if.else

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %dx66 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %89 = load double, double* %dx66, align 8
  %cmp67 = fcmp une double %89, 0.000000e+00
  br i1 %cmp67, label %land.lhs.true.68, label %if.else

land.lhs.true.68:                                 ; preds = %land.lhs.true.65, %land.lhs.true.59
  %90 = load i32, i32* %clockwise.addr, align 4
  %tobool69 = icmp ne i32 %90, 0
  br i1 %tobool69, label %land.lhs.true.70, label %lor.lhs.false.94

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %dx71 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %91 = load double, double* %dx71, align 8
  %cmp72 = fcmp oeq double %91, -1.000000e+00
  br i1 %cmp72, label %land.lhs.true.73, label %lor.lhs.false.76

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %dy74 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %92 = load double, double* %dy74, align 8
  %cmp75 = fcmp oeq double %92, 1.000000e+00
  br i1 %cmp75, label %if.then.120, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.73, %land.lhs.true.70
  %dy77 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %93 = load double, double* %dy77, align 8
  %cmp78 = fcmp oeq double %93, 1.000000e+00
  br i1 %cmp78, label %land.lhs.true.79, label %lor.lhs.false.82

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %dx80 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %94 = load double, double* %dx80, align 8
  %cmp81 = fcmp oeq double %94, 1.000000e+00
  br i1 %cmp81, label %if.then.120, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.79, %lor.lhs.false.76
  %dx83 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %95 = load double, double* %dx83, align 8
  %cmp84 = fcmp oeq double %95, 1.000000e+00
  br i1 %cmp84, label %land.lhs.true.85, label %lor.lhs.false.88

land.lhs.true.85:                                 ; preds = %lor.lhs.false.82
  %dy86 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %96 = load double, double* %dy86, align 8
  %cmp87 = fcmp oeq double %96, -1.000000e+00
  br i1 %cmp87, label %if.then.120, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %land.lhs.true.85, %lor.lhs.false.82
  %dy89 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %97 = load double, double* %dy89, align 8
  %cmp90 = fcmp oeq double %97, -1.000000e+00
  br i1 %cmp90, label %land.lhs.true.91, label %lor.lhs.false.94

land.lhs.true.91:                                 ; preds = %lor.lhs.false.88
  %dx92 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %98 = load double, double* %dx92, align 8
  %cmp93 = fcmp oeq double %98, -1.000000e+00
  br i1 %cmp93, label %if.then.120, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %land.lhs.true.91, %lor.lhs.false.88, %land.lhs.true.68
  %99 = load i32, i32* %clockwise.addr, align 4
  %tobool95 = icmp ne i32 %99, 0
  br i1 %tobool95, label %if.else, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %lor.lhs.false.94
  %dy97 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %100 = load double, double* %dy97, align 8
  %cmp98 = fcmp oeq double %100, 1.000000e+00
  br i1 %cmp98, label %land.lhs.true.99, label %lor.lhs.false.102

land.lhs.true.99:                                 ; preds = %land.lhs.true.96
  %dx100 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %101 = load double, double* %dx100, align 8
  %cmp101 = fcmp oeq double %101, -1.000000e+00
  br i1 %cmp101, label %if.then.120, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.99, %land.lhs.true.96
  %dx103 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %102 = load double, double* %dx103, align 8
  %cmp104 = fcmp oeq double %102, 1.000000e+00
  br i1 %cmp104, label %land.lhs.true.105, label %lor.lhs.false.108

land.lhs.true.105:                                ; preds = %lor.lhs.false.102
  %dy106 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %103 = load double, double* %dy106, align 8
  %cmp107 = fcmp oeq double %103, 1.000000e+00
  br i1 %cmp107, label %if.then.120, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.105, %lor.lhs.false.102
  %dy109 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 1
  %104 = load double, double* %dy109, align 8
  %cmp110 = fcmp oeq double %104, -1.000000e+00
  br i1 %cmp110, label %land.lhs.true.111, label %lor.lhs.false.114

land.lhs.true.111:                                ; preds = %lor.lhs.false.108
  %dx112 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 0
  %105 = load double, double* %dx112, align 8
  %cmp113 = fcmp oeq double %105, 1.000000e+00
  br i1 %cmp113, label %if.then.120, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %land.lhs.true.111, %lor.lhs.false.108
  %dx115 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %prev_delta, i32 0, i32 0
  %106 = load double, double* %dx115, align 8
  %cmp116 = fcmp oeq double %106, -1.000000e+00
  br i1 %cmp116, label %land.lhs.true.117, label %if.else

land.lhs.true.117:                                ; preds = %lor.lhs.false.114
  %dy118 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %next_delta, i32 0, i32 1
  %107 = load double, double* %dy118, align 8
  %cmp119 = fcmp oeq double %107, -1.000000e+00
  br i1 %cmp119, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %land.lhs.true.117, %land.lhs.true.111, %land.lhs.true.105, %land.lhs.true.99, %land.lhs.true.91, %land.lhs.true.85, %land.lhs.true.79, %land.lhs.true.73
  br label %if.end.121

if.else:                                          ; preds = %land.lhs.true.117, %lor.lhs.false.114, %lor.lhs.false.94, %land.lhs.true.65, %lor.lhs.false.62, %land.lhs.true.53, %lor.lhs.false
  %108 = bitcast %struct.coordinate_type* %previous to i8*
  %109 = bitcast %struct.coordinate_type* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 8, i32 4, i1 false)
  %110 = load %struct.curve*, %struct.curve** %trimmed_curve, align 8
  %111 = bitcast %struct.coordinate_type* %current to i64*
  %112 = load i64, i64* %111, align 4
  call void @append_pixel(%struct.curve* %110, i64 %112)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else, %if.then.120
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %113 = load i32, i32* %i, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic122 = getelementptr inbounds %struct.curve, %struct.curve* %114, i32 0, i32 2
  %115 = load i32, i32* %cyclic122, align 4
  %tobool123 = icmp ne i32 %115, 0
  br i1 %tobool123, label %if.end.133, label %if.then.124

if.then.124:                                      ; preds = %for.end
  %116 = load %struct.curve*, %struct.curve** %trimmed_curve, align 8
  %117 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length126 = getelementptr inbounds %struct.curve, %struct.curve* %117, i32 0, i32 1
  %118 = load i32, i32* %length126, align 4
  %sub127 = sub nsw i32 %118, 1
  %idxprom128 = sext i32 %sub127 to i64
  %119 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list129 = getelementptr inbounds %struct.curve, %struct.curve* %119, i32 0, i32 0
  %120 = load %struct.point_type*, %struct.point_type** %point_list129, align 8
  %arrayidx130 = getelementptr inbounds %struct.point_type, %struct.point_type* %120, i64 %idxprom128
  %coord131 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx130, i32 0, i32 0
  %121 = bitcast %struct.real_coordinate_type* %coord131 to { double, double }*
  %122 = getelementptr { double, double }, { double, double }* %121, i32 0, i32 0
  %123 = load double, double* %122, align 1
  %124 = getelementptr { double, double }, { double, double }* %121, i32 0, i32 1
  %125 = load double, double* %124, align 1
  %call132 = call i64 @real_to_int_coord(double %123, double %125)
  %126 = bitcast %struct.coordinate_type* %agg.tmp125 to i64*
  store i64 %call132, i64* %126, align 4
  %127 = bitcast %struct.coordinate_type* %agg.tmp125 to i64*
  %128 = load i64, i64* %127, align 4
  call void @append_pixel(%struct.curve* %116, i64 %128)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.124, %for.end
  %129 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @free_curve(%struct.curve* %129)
  %130 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %131 = load %struct.curve*, %struct.curve** %trimmed_curve, align 8
  %132 = bitcast %struct.curve* %130 to i8*
  %133 = bitcast %struct.curve* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 48, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @filter(%struct.curve* %curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %iteration = alloca i32, align 4
  %this_point = alloca i32, align 4
  %offset = alloca i32, align 4
  %new_curve = alloca %struct.curve*, align 8
  %angle = alloca double, align 8
  %angle_alt = alloca double, align 8
  %in = alloca %struct.vector_type, align 8
  %in_alt = alloca %struct.vector_type, align 8
  %out = alloca %struct.vector_type, align 8
  %out_alt = alloca %struct.vector_type, align 8
  %sum = alloca %struct.vector_type, align 8
  %count = alloca i32, align 4
  %alt_count = alloca i32, align 4
  %new_point = alloca %struct.real_coordinate_type, align 8
  %coerce = alloca %struct.vector_type, align 8
  %coerce23 = alloca %struct.vector_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 2
  %1 = load i32, i32* %cyclic, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %offset, align 4
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %3, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.41

if.end:                                           ; preds = %entry
  store i32 0, i32* %iteration, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %if.end
  %4 = load i32, i32* %iteration, align 4
  %5 = load i32, i32* @filter_iteration_count, align 4
  %cmp1 = icmp ult i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %6 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call = call %struct.curve* @copy_most_of_curve(%struct.curve* %6)
  store %struct.curve* %call, %struct.curve** %new_curve, align 8
  %7 = load i32, i32* %offset, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.curve*, %struct.curve** %new_curve, align 8
  %9 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %9, i32 0, i32 0
  %10 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %10, i64 0
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %11 = bitcast %struct.real_coordinate_type* %coord to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = load double, double* %12, align 1
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 1
  call void @append_point(%struct.curve* %8, double %13, double %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  %16 = load i32, i32* %offset, align 4
  store i32 %16, i32* %this_point, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end.4
  %17 = load i32, i32* %this_point, align 4
  %18 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length6 = getelementptr inbounds %struct.curve, %struct.curve* %18, i32 0, i32 1
  %19 = load i32, i32* %length6, align 4
  %20 = load i32, i32* %offset, align 4
  %sub = sub i32 %19, %20
  %cmp7 = icmp ult i32 %17, %sub
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %21 = load i32, i32* %this_point, align 4
  %22 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %23 = load i32, i32* @filter_surround, align 4
  call void @find_curve_vectors(i32 %21, %struct.curve* %22, i32 %23, %struct.vector_type* %in, %struct.vector_type* %out, i32* %count)
  %24 = bitcast %struct.vector_type* %in to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  %29 = bitcast %struct.vector_type* %out to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = load double, double* %30, align 1
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = load double, double* %32, align 1
  %call9 = call double @filter_angle(double %26, double %28, double %31, double %33)
  store double %call9, double* %angle, align 8
  %34 = load i32, i32* %this_point, align 4
  %35 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %36 = load i32, i32* @filter_alternative_surround, align 4
  call void @find_curve_vectors(i32 %34, %struct.curve* %35, i32 %36, %struct.vector_type* %in_alt, %struct.vector_type* %out_alt, i32* %alt_count)
  %37 = bitcast %struct.vector_type* %in_alt to { double, double }*
  %38 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = load double, double* %38, align 1
  %40 = getelementptr { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = load double, double* %40, align 1
  %42 = bitcast %struct.vector_type* %out_alt to { double, double }*
  %43 = getelementptr { double, double }, { double, double }* %42, i32 0, i32 0
  %44 = load double, double* %43, align 1
  %45 = getelementptr { double, double }, { double, double }* %42, i32 0, i32 1
  %46 = load double, double* %45, align 1
  %call10 = call double @filter_angle(double %39, double %41, double %44, double %46)
  store double %call10, double* %angle_alt, align 8
  %47 = bitcast %struct.vector_type* %in_alt to { double, double }*
  %48 = getelementptr { double, double }, { double, double }* %47, i32 0, i32 0
  %49 = load double, double* %48, align 1
  %50 = getelementptr { double, double }, { double, double }* %47, i32 0, i32 1
  %51 = load double, double* %50, align 1
  %52 = bitcast %struct.vector_type* %out_alt to { double, double }*
  %53 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 0
  %54 = load double, double* %53, align 1
  %55 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 1
  %56 = load double, double* %55, align 1
  %call11 = call { double, double } @Vadd(double %49, double %51, double %54, double %56)
  %57 = bitcast %struct.vector_type* %coerce to { double, double }*
  %58 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 0
  %59 = extractvalue { double, double } %call11, 0
  store double %59, double* %58, align 8
  %60 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 1
  %61 = extractvalue { double, double } %call11, 1
  store double %61, double* %60, align 8
  %62 = bitcast %struct.vector_type* %sum to i8*
  %63 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 16, i32 8, i1 false)
  %64 = load double, double* %angle_alt, align 8
  %65 = load double, double* %angle, align 8
  %sub12 = fsub double %64, %65
  %66 = load double, double* @filter_epsilon, align 8
  %cmp13 = fcmp oge double %sub12, %66
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %for.body.8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %sum, i32 0, i32 0
  %67 = load double, double* %dx, align 8
  %cmp14 = fcmp une double %67, 0.000000e+00
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %sum, i32 0, i32 1
  %68 = load double, double* %dy, align 8
  %cmp16 = fcmp une double %68, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %69 = bitcast %struct.vector_type* %in to i8*
  %70 = bitcast %struct.vector_type* %in_alt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 16, i32 8, i1 false)
  %71 = bitcast %struct.vector_type* %out to i8*
  %72 = bitcast %struct.vector_type* %out_alt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false)
  %73 = load i32, i32* %alt_count, align 4
  store i32 %73, i32* %count, align 4
  %74 = load double, double* %angle_alt, align 8
  store double %74, double* %angle, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %land.lhs.true.15, %land.lhs.true, %for.body.8
  %75 = load i32, i32* %this_point, align 4
  %idxprom = zext i32 %75 to i64
  %76 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list19 = getelementptr inbounds %struct.curve, %struct.curve* %76, i32 0, i32 0
  %77 = load %struct.point_type*, %struct.point_type** %point_list19, align 8
  %arrayidx20 = getelementptr inbounds %struct.point_type, %struct.point_type* %77, i64 %idxprom
  %coord21 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx20, i32 0, i32 0
  %78 = bitcast %struct.real_coordinate_type* %new_point to i8*
  %79 = bitcast %struct.real_coordinate_type* %coord21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false)
  %80 = bitcast %struct.vector_type* %in to { double, double }*
  %81 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 0
  %82 = load double, double* %81, align 1
  %83 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 1
  %84 = load double, double* %83, align 1
  %85 = bitcast %struct.vector_type* %out to { double, double }*
  %86 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 0
  %87 = load double, double* %86, align 1
  %88 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 1
  %89 = load double, double* %88, align 1
  %call22 = call { double, double } @Vadd(double %82, double %84, double %87, double %89)
  %90 = bitcast %struct.vector_type* %coerce23 to { double, double }*
  %91 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 0
  %92 = extractvalue { double, double } %call22, 0
  store double %92, double* %91, align 8
  %93 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 1
  %94 = extractvalue { double, double } %call22, 1
  store double %94, double* %93, align 8
  %95 = bitcast %struct.vector_type* %sum to i8*
  %96 = bitcast %struct.vector_type* %coerce23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 16, i32 8, i1 false)
  %dx24 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %sum, i32 0, i32 0
  %97 = load double, double* %dx24, align 8
  %98 = load double, double* @filter_percent, align 8
  %mul = fmul double %97, %98
  %99 = load i32, i32* %count, align 4
  %conv = uitofp i32 %99 to double
  %div = fdiv double %mul, %conv
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_point, i32 0, i32 0
  %100 = load double, double* %x, align 8
  %add = fadd double %100, %div
  store double %add, double* %x, align 8
  %dy25 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %sum, i32 0, i32 1
  %101 = load double, double* %dy25, align 8
  %102 = load double, double* @filter_percent, align 8
  %mul26 = fmul double %101, %102
  %103 = load i32, i32* %count, align 4
  %conv27 = uitofp i32 %103 to double
  %div28 = fdiv double %mul26, %conv27
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %new_point, i32 0, i32 1
  %104 = load double, double* %y, align 8
  %add29 = fadd double %104, %div28
  store double %add29, double* %y, align 8
  %105 = load %struct.curve*, %struct.curve** %new_curve, align 8
  %106 = bitcast %struct.real_coordinate_type* %new_point to { double, double }*
  %107 = getelementptr { double, double }, { double, double }* %106, i32 0, i32 0
  %108 = load double, double* %107, align 1
  %109 = getelementptr { double, double }, { double, double }* %106, i32 0, i32 1
  %110 = load double, double* %109, align 1
  call void @append_point(%struct.curve* %105, double %108, double %110)
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %111 = load i32, i32* %this_point, align 4
  %inc = add i32 %111, 1
  store i32 %inc, i32* %this_point, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %112 = load i32, i32* %offset, align 4
  %tobool30 = icmp ne i32 %112, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %for.end
  %113 = load %struct.curve*, %struct.curve** %new_curve, align 8
  %114 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length32 = getelementptr inbounds %struct.curve, %struct.curve* %114, i32 0, i32 1
  %115 = load i32, i32* %length32, align 4
  %sub33 = sub nsw i32 %115, 1
  %idxprom34 = sext i32 %sub33 to i64
  %116 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list35 = getelementptr inbounds %struct.curve, %struct.curve* %116, i32 0, i32 0
  %117 = load %struct.point_type*, %struct.point_type** %point_list35, align 8
  %arrayidx36 = getelementptr inbounds %struct.point_type, %struct.point_type* %117, i64 %idxprom34
  %coord37 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx36, i32 0, i32 0
  %118 = bitcast %struct.real_coordinate_type* %coord37 to { double, double }*
  %119 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 0
  %120 = load double, double* %119, align 1
  %121 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 1
  %122 = load double, double* %121, align 1
  call void @append_point(%struct.curve* %113, double %120, double %122)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %for.end
  %123 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @free_curve(%struct.curve* %123)
  %124 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %125 = load %struct.curve*, %struct.curve** %new_curve, align 8
  %126 = bitcast %struct.curve* %124 to i8*
  %127 = bitcast %struct.curve* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 48, i32 8, i1 false)
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %128 = load i32, i32* %iteration, align 4
  %inc40 = add i32 %128, 1
  store i32 %inc40, i32* %iteration, align 4
  br label %for.cond

for.end.41:                                       ; preds = %if.then, %for.cond
  ret void
}

declare void @append_point(%struct.curve*, double, double) #1

; Function Attrs: nounwind uwtable
define internal %struct.spline_list_type* @fit_curve(%struct.curve* %curve) #0 {
entry:
  %retval = alloca %struct.spline_list_type*, align 8
  %curve.addr = alloca %struct.curve*, align 8
  %fitted_splines = alloca %struct.spline_list_type*, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct.spline_list_type* null, %struct.spline_list_type** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length1 = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 1
  %3 = load i32, i32* %length1, align 4
  %cmp2 = icmp slt i32 %3, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call3 = call %struct.spline_list_type* @fit_with_line(%struct.curve* %4)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call4 = call %struct.spline_list_type* @fit_with_least_squares(%struct.curve* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.spline_list_type* [ %call3, %cond.true ], [ %call4, %cond.false ]
  store %struct.spline_list_type* %cond, %struct.spline_list_type** %fitted_splines, align 8
  %6 = load %struct.spline_list_type*, %struct.spline_list_type** %fitted_splines, align 8
  store %struct.spline_list_type* %6, %struct.spline_list_type** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %7 = load %struct.spline_list_type*, %struct.spline_list_type** %retval
  ret %struct.spline_list_type* %7
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @change_bad_lines(%struct.spline_list_type* %spline_list) #0 {
entry:
  %spline_list.addr = alloca %struct.spline_list_type*, align 8
  %this_spline = alloca i32, align 4
  %found_cubic = alloca i32, align 4
  %length = alloca i32, align 4
  %s = alloca %struct.spline_type, align 8
  store %struct.spline_list_type* %spline_list, %struct.spline_list_type** %spline_list.addr, align 8
  store i32 0, i32* %found_cubic, align 4
  %0 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %length1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %0, i32 0, i32 1
  %1 = load i32, i32* %length1, align 4
  store i32 %1, i32* %length, align 4
  store i32 0, i32* %this_spline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %this_spline, align 4
  %3 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %this_spline, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %5, i32 0, i32 0
  %6 = load %struct.spline_type*, %struct.spline_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.spline_type, %struct.spline_type* %6, i64 %idxprom
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %degree, align 4
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found_cubic, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %this_spline, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %this_spline, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %found_cubic, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  store i32 0, i32* %this_spline, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.21, %if.then.3
  %10 = load i32, i32* %this_spline, align 4
  %11 = load i32, i32* %length, align 4
  %cmp5 = icmp ult i32 %10, %11
  br i1 %cmp5, label %for.body.6, label %for.end.23

for.body.6:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %this_spline, align 4
  %idxprom7 = zext i32 %12 to i64
  %13 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %data8 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %13, i32 0, i32 0
  %14 = load %struct.spline_type*, %struct.spline_type** %data8, align 8
  %arrayidx9 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %14, i64 %idxprom7
  %15 = bitcast %struct.spline_type* %s to i8*
  %16 = bitcast %struct.spline_type* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 80, i32 8, i1 false)
  %degree10 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 1
  %17 = load i32, i32* %degree10, align 4
  %cmp11 = icmp eq i32 %17, 1
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %for.body.6
  %linearity = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 2
  %18 = load double, double* %linearity, align 8
  %19 = load double, double* @line_reversion_threshold, align 8
  %cmp13 = fcmp ogt double %18, %19
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  %20 = load i32, i32* %this_spline, align 4
  %idxprom15 = zext i32 %20 to i64
  %21 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %data16 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %21, i32 0, i32 0
  %22 = load %struct.spline_type*, %struct.spline_type** %data16, align 8
  %arrayidx17 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %22, i64 %idxprom15
  %degree18 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx17, i32 0, i32 1
  store i32 3, i32* %degree18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body.6
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %23 = load i32, i32* %this_spline, align 4
  %inc22 = add i32 %23, 1
  store i32 %inc22, i32* %this_spline, align 4
  br label %for.cond.4

for.end.23:                                       ; preds = %for.cond.4
  br label %if.end.24

if.else:                                          ; preds = %for.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %for.end.23
  ret void
}

declare void @concat_spline_lists(%struct.spline_list_type*, %struct.spline_type*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @align(%struct.spline_list_type* %l) #0 {
entry:
  %l.addr = alloca %struct.spline_list_type*, align 8
  %change = alloca i32, align 4
  %this_spline = alloca i32, align 4
  %length = alloca i32, align 4
  %spline_change = alloca i32, align 4
  %s = alloca %struct.spline_type*, align 8
  %start = alloca %struct.real_coordinate_type, align 8
  %end = alloca %struct.real_coordinate_type, align 8
  %delta = alloca double, align 8
  %next = alloca %struct.spline_type*, align 8
  %prev = alloca %struct.spline_type*, align 8
  %delta36 = alloca double, align 8
  %next45 = alloca %struct.spline_type*, align 8
  %prev52 = alloca %struct.spline_type*, align 8
  store %struct.spline_list_type* %l, %struct.spline_list_type** %l.addr, align 8
  %0 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %0, i32 0, i32 1
  %1 = load i32, i32* %length1, align 4
  store i32 %1, i32* %length, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %change, align 4
  store i32 0, i32* %this_spline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %2 = load i32, i32* %this_spline, align 4
  %3 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %spline_change, align 4
  %4 = load i32, i32* %this_spline, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %5, i32 0, i32 0
  %6 = load %struct.spline_type*, %struct.spline_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.spline_type, %struct.spline_type* %6, i64 %idxprom
  store %struct.spline_type* %arrayidx, %struct.spline_type** %s, align 8
  %7 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %7, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %8 = bitcast %struct.real_coordinate_type* %start to i8*
  %9 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v3 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %10, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v3, i32 0, i64 3
  %11 = bitcast %struct.real_coordinate_type* %end to i8*
  %12 = bitcast %struct.real_coordinate_type* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %do.body.5

do.body.5:                                        ; preds = %for.body
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %end, i32 0, i32 0
  %13 = load double, double* %x, align 8
  %x6 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %start, i32 0, i32 0
  %14 = load double, double* %x6, align 8
  %sub = fsub double %13, %14
  %call = call double @fabs(double %sub) #6
  store double %call, double* %delta, align 8
  %15 = load double, double* %delta, align 8
  %call7 = call i32 @epsilon_equal(double %15, double 0.000000e+00)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.5
  %16 = load double, double* %delta, align 8
  %17 = load double, double* @align_threshold, align 8
  %cmp8 = fcmp ole double %16, %17
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, i32* %this_spline, align 4
  %add = add i32 %18, 1
  %19 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length9 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %19, i32 0, i32 1
  %20 = load i32, i32* %length9, align 4
  %rem = urem i32 %add, %20
  %idxprom10 = zext i32 %rem to i64
  %21 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data11 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %21, i32 0, i32 0
  %22 = load %struct.spline_type*, %struct.spline_type** %data11, align 8
  %arrayidx12 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %22, i64 %idxprom10
  store %struct.spline_type* %arrayidx12, %struct.spline_type** %next, align 8
  %23 = load i32, i32* %this_spline, align 4
  %cmp13 = icmp eq i32 %23, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %24 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length14 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %24, i32 0, i32 1
  %25 = load i32, i32* %length14, align 4
  %sub15 = sub i32 %25, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %26 = load i32, i32* %this_spline, align 4
  %sub16 = sub i32 %26, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ %sub16, %cond.false ]
  %idxprom17 = zext i32 %cond to i64
  %27 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data18 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %27, i32 0, i32 0
  %28 = load %struct.spline_type*, %struct.spline_type** %data18, align 8
  %arrayidx19 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %28, i64 %idxprom17
  store %struct.spline_type* %arrayidx19, %struct.spline_type** %prev, align 8
  %x20 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %start, i32 0, i32 0
  %29 = load double, double* %x20, align 8
  %x21 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %end, i32 0, i32 0
  %30 = load double, double* %x21, align 8
  %add22 = fadd double %29, %30
  %div = fdiv double %add22, 2.000000e+00
  %31 = load %struct.spline_type*, %struct.spline_type** %next, align 8
  %v23 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %31, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v23, i32 0, i64 0
  %x25 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx24, i32 0, i32 0
  store double %div, double* %x25, align 8
  %32 = load %struct.spline_type*, %struct.spline_type** %prev, align 8
  %v26 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %32, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v26, i32 0, i64 3
  %x28 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx27, i32 0, i32 0
  store double %div, double* %x28, align 8
  %33 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v29 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %33, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v29, i32 0, i64 3
  %x31 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx30, i32 0, i32 0
  store double %div, double* %x31, align 8
  %34 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v32 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %34, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v32, i32 0, i64 0
  %x34 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx33, i32 0, i32 0
  store double %div, double* %x34, align 8
  store i32 1, i32* %spline_change, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %do.body.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.35

do.body.35:                                       ; preds = %do.end
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %end, i32 0, i32 1
  %35 = load double, double* %y, align 8
  %y37 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %start, i32 0, i32 1
  %36 = load double, double* %y37, align 8
  %sub38 = fsub double %35, %36
  %call39 = call double @fabs(double %sub38) #6
  store double %call39, double* %delta36, align 8
  %37 = load double, double* %delta36, align 8
  %call40 = call i32 @epsilon_equal(double %37, double 0.000000e+00)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.80, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %do.body.35
  %38 = load double, double* %delta36, align 8
  %39 = load double, double* @align_threshold, align 8
  %cmp43 = fcmp ole double %38, %39
  br i1 %cmp43, label %if.then.44, label %if.end.80

if.then.44:                                       ; preds = %land.lhs.true.42
  %40 = load i32, i32* %this_spline, align 4
  %add46 = add i32 %40, 1
  %41 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length47 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %41, i32 0, i32 1
  %42 = load i32, i32* %length47, align 4
  %rem48 = urem i32 %add46, %42
  %idxprom49 = zext i32 %rem48 to i64
  %43 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data50 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %43, i32 0, i32 0
  %44 = load %struct.spline_type*, %struct.spline_type** %data50, align 8
  %arrayidx51 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %44, i64 %idxprom49
  store %struct.spline_type* %arrayidx51, %struct.spline_type** %next45, align 8
  %45 = load i32, i32* %this_spline, align 4
  %cmp53 = icmp eq i32 %45, 0
  br i1 %cmp53, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %if.then.44
  %46 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length55 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %46, i32 0, i32 1
  %47 = load i32, i32* %length55, align 4
  %sub56 = sub i32 %47, 1
  br label %cond.end.59

cond.false.57:                                    ; preds = %if.then.44
  %48 = load i32, i32* %this_spline, align 4
  %sub58 = sub i32 %48, 1
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.54
  %cond60 = phi i32 [ %sub56, %cond.true.54 ], [ %sub58, %cond.false.57 ]
  %idxprom61 = zext i32 %cond60 to i64
  %49 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data62 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %49, i32 0, i32 0
  %50 = load %struct.spline_type*, %struct.spline_type** %data62, align 8
  %arrayidx63 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %50, i64 %idxprom61
  store %struct.spline_type* %arrayidx63, %struct.spline_type** %prev52, align 8
  %y64 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %start, i32 0, i32 1
  %51 = load double, double* %y64, align 8
  %y65 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %end, i32 0, i32 1
  %52 = load double, double* %y65, align 8
  %add66 = fadd double %51, %52
  %div67 = fdiv double %add66, 2.000000e+00
  %53 = load %struct.spline_type*, %struct.spline_type** %next45, align 8
  %v68 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %53, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v68, i32 0, i64 0
  %y70 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx69, i32 0, i32 1
  store double %div67, double* %y70, align 8
  %54 = load %struct.spline_type*, %struct.spline_type** %prev52, align 8
  %v71 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %54, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v71, i32 0, i64 3
  %y73 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx72, i32 0, i32 1
  store double %div67, double* %y73, align 8
  %55 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v74 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %55, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v74, i32 0, i64 3
  %y76 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx75, i32 0, i32 1
  store double %div67, double* %y76, align 8
  %56 = load %struct.spline_type*, %struct.spline_type** %s, align 8
  %v77 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %56, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v77, i32 0, i64 0
  %y79 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx78, i32 0, i32 1
  store double %div67, double* %y79, align 8
  store i32 1, i32* %spline_change, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.59, %land.lhs.true.42, %do.body.35
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %57 = load i32, i32* %spline_change, align 4
  %tobool82 = icmp ne i32 %57, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %do.end.81
  %58 = load i32, i32* %spline_change, align 4
  %59 = load i32, i32* %change, align 4
  %or = or i32 %59, %58
  store i32 %or, i32* %change, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %do.end.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %60 = load i32, i32* %this_spline, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %this_spline, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %61 = load i32, i32* %change, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %do.body, label %do.end.86

do.end.86:                                        ; preds = %do.cond
  ret void
}

declare i64 @real_to_int_coord(double, double) #1

declare %struct.curve* @copy_most_of_curve(%struct.curve*) #1

declare void @append_pixel(%struct.curve*, i64) #1

declare { double, double } @IPsubtract(i64, i64) #1

declare void @free_curve(%struct.curve*) #1

; Function Attrs: nounwind uwtable
define internal void @find_curve_vectors(i32 %test_index, %struct.curve* %curve, i32 %surround, %struct.vector_type* %in, %struct.vector_type* %out, i32* %count) #0 {
entry:
  %test_index.addr = alloca i32, align 4
  %curve.addr = alloca %struct.curve*, align 8
  %surround.addr = alloca i32, align 4
  %in.addr = alloca %struct.vector_type*, align 8
  %out.addr = alloca %struct.vector_type*, align 8
  %count.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %in_count = alloca i32, align 4
  %out_count = alloca i32, align 4
  %n_done = alloca i32, align 4
  %candidate = alloca %struct.real_coordinate_type, align 8
  %agg.tmp = alloca %struct.vector_type, align 8
  %coerce = alloca %struct.vector_type, align 8
  %agg.tmp57 = alloca %struct.vector_type, align 8
  %coerce64 = alloca %struct.vector_type, align 8
  %agg.tmp111 = alloca %struct.vector_type, align 8
  %coerce118 = alloca %struct.vector_type, align 8
  store i32 %test_index, i32* %test_index.addr, align 4
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 %surround, i32* %surround.addr, align 4
  store %struct.vector_type* %in, %struct.vector_type** %in.addr, align 8
  store %struct.vector_type* %out, %struct.vector_type** %out.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  %0 = load i32, i32* %test_index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %1, i32 0, i32 0
  %2 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %2, i64 %idxprom
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %3 = bitcast %struct.real_coordinate_type* %candidate to i8*
  %4 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %5, i32 0, i32 0
  store double 0.000000e+00, double* %dx, align 8
  %6 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %6, i32 0, i32 1
  store double 0.000000e+00, double* %dy, align 8
  %7 = load i32, i32* %test_index.addr, align 4
  %sub = sub nsw i32 %7, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false.3

cond.true:                                        ; preds = %entry
  %8 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %8, i32 0, i32 2
  %9 = load i32, i32* %cyclic, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true.1, label %cond.false

cond.true.1:                                      ; preds = %cond.true
  %10 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %10, i32 0, i32 1
  %11 = load i32, i32* %length, align 4
  %12 = load i32, i32* %test_index.addr, align 4
  %add = add nsw i32 %11, %12
  %sub2 = sub nsw i32 %add, 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.1
  %cond = phi i32 [ %sub2, %cond.true.1 ], [ -1, %cond.false ]
  br label %cond.end.5

cond.false.3:                                     ; preds = %entry
  %13 = load i32, i32* %test_index.addr, align 4
  %sub4 = sub nsw i32 %13, 1
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.3, %cond.end
  %cond6 = phi i32 [ %cond, %cond.end ], [ %sub4, %cond.false.3 ]
  store i32 %cond6, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.28, %cond.end.5
  %14 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %n_done, align 4
  %16 = load i32, i32* %surround.addr, align 4
  %cmp8 = icmp ult i32 %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %19 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list10 = getelementptr inbounds %struct.curve, %struct.curve* %21, i32 0, i32 0
  %22 = load %struct.point_type*, %struct.point_type** %point_list10, align 8
  %arrayidx11 = getelementptr inbounds %struct.point_type, %struct.point_type* %22, i64 %idxprom9
  %coord12 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx11, i32 0, i32 0
  %23 = bitcast %struct.real_coordinate_type* %coord12 to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %28 = bitcast %struct.real_coordinate_type* %candidate to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %call = call { double, double } @Psubtract(double %25, double %27, double %30, double %32)
  %33 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %34 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 0
  %35 = extractvalue { double, double } %call, 0
  store double %35, double* %34, align 8
  %36 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 1
  %37 = extractvalue { double, double } %call, 1
  store double %37, double* %36, align 8
  %38 = bitcast %struct.vector_type* %19 to { double, double }*
  %39 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 0
  %40 = load double, double* %39, align 1
  %41 = getelementptr { double, double }, { double, double }* %38, i32 0, i32 1
  %42 = load double, double* %41, align 1
  %43 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %44 = getelementptr { double, double }, { double, double }* %43, i32 0, i32 0
  %45 = load double, double* %44, align 1
  %46 = getelementptr { double, double }, { double, double }* %43, i32 0, i32 1
  %47 = load double, double* %46, align 1
  %call13 = call { double, double } @Vadd(double %40, double %42, double %45, double %47)
  %48 = bitcast %struct.vector_type* %coerce to { double, double }*
  %49 = getelementptr { double, double }, { double, double }* %48, i32 0, i32 0
  %50 = extractvalue { double, double } %call13, 0
  store double %50, double* %49, align 8
  %51 = getelementptr { double, double }, { double, double }* %48, i32 0, i32 1
  %52 = extractvalue { double, double } %call13, 1
  store double %52, double* %51, align 8
  %53 = bitcast %struct.vector_type* %18 to i8*
  %54 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %55, 1
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.26

cond.true.16:                                     ; preds = %for.inc
  %56 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic17 = getelementptr inbounds %struct.curve, %struct.curve* %56, i32 0, i32 2
  %57 = load i32, i32* %cyclic17, align 4
  %tobool18 = icmp ne i32 %57, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.true.16
  %58 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length20 = getelementptr inbounds %struct.curve, %struct.curve* %58, i32 0, i32 1
  %59 = load i32, i32* %length20, align 4
  %60 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %59, %60
  %sub22 = sub nsw i32 %add21, 1
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.true.16
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.19
  %cond25 = phi i32 [ %sub22, %cond.true.19 ], [ -1, %cond.false.23 ]
  br label %cond.end.28

cond.false.26:                                    ; preds = %for.inc
  %61 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %61, 1
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.end.24
  %cond29 = phi i32 [ %cond25, %cond.end.24 ], [ %sub27, %cond.false.26 ]
  store i32 %cond29, i32* %i, align 4
  %62 = load i32, i32* %n_done, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %n_done, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %63 = load i32, i32* %n_done, align 4
  store i32 %63, i32* %in_count, align 4
  %64 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %dx30 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %64, i32 0, i32 0
  store double 0.000000e+00, double* %dx30, align 8
  %65 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %dy31 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %65, i32 0, i32 1
  store double 0.000000e+00, double* %dy31, align 8
  %66 = load i32, i32* %test_index.addr, align 4
  %add32 = add i32 %66, 1
  %67 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length33 = getelementptr inbounds %struct.curve, %struct.curve* %67, i32 0, i32 1
  %68 = load i32, i32* %length33, align 4
  %cmp34 = icmp uge i32 %add32, %68
  br i1 %cmp34, label %cond.true.35, label %cond.false.45

cond.true.35:                                     ; preds = %for.end
  %69 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic36 = getelementptr inbounds %struct.curve, %struct.curve* %69, i32 0, i32 2
  %70 = load i32, i32* %cyclic36, align 4
  %tobool37 = icmp ne i32 %70, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.true.35
  %71 = load i32, i32* %test_index.addr, align 4
  %add39 = add i32 %71, 1
  %72 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length40 = getelementptr inbounds %struct.curve, %struct.curve* %72, i32 0, i32 1
  %73 = load i32, i32* %length40, align 4
  %rem = urem i32 %add39, %73
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.true.35
  %74 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length42 = getelementptr inbounds %struct.curve, %struct.curve* %74, i32 0, i32 1
  %75 = load i32, i32* %length42, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.38
  %cond44 = phi i32 [ %rem, %cond.true.38 ], [ %75, %cond.false.41 ]
  br label %cond.end.47

cond.false.45:                                    ; preds = %for.end
  %76 = load i32, i32* %test_index.addr, align 4
  %add46 = add i32 %76, 1
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.end.43
  %cond48 = phi i32 [ %cond44, %cond.end.43 ], [ %add46, %cond.false.45 ]
  store i32 %cond48, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %cond.end.82, %cond.end.47
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length50 = getelementptr inbounds %struct.curve, %struct.curve* %78, i32 0, i32 1
  %79 = load i32, i32* %length50, align 4
  %cmp51 = icmp slt i32 %77, %79
  br i1 %cmp51, label %land.lhs.true, label %land.end.55

land.lhs.true:                                    ; preds = %for.cond.49
  %80 = load i32, i32* %n_done, align 4
  %81 = load i32, i32* %surround.addr, align 4
  %cmp52 = icmp ult i32 %80, %81
  br i1 %cmp52, label %land.rhs.53, label %land.end.55

land.rhs.53:                                      ; preds = %land.lhs.true
  %82 = load i32, i32* %n_done, align 4
  %83 = load i32, i32* %in_count, align 4
  %cmp54 = icmp ult i32 %82, %83
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.53, %land.lhs.true, %for.cond.49
  %84 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.49 ], [ %cmp54, %land.rhs.53 ]
  br i1 %84, label %for.body.56, label %for.end.85

for.body.56:                                      ; preds = %land.end.55
  %85 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %86 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %87 to i64
  %88 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list59 = getelementptr inbounds %struct.curve, %struct.curve* %88, i32 0, i32 0
  %89 = load %struct.point_type*, %struct.point_type** %point_list59, align 8
  %arrayidx60 = getelementptr inbounds %struct.point_type, %struct.point_type* %89, i64 %idxprom58
  %coord61 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx60, i32 0, i32 0
  %90 = bitcast %struct.real_coordinate_type* %coord61 to { double, double }*
  %91 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 0
  %92 = load double, double* %91, align 1
  %93 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 1
  %94 = load double, double* %93, align 1
  %95 = bitcast %struct.real_coordinate_type* %candidate to { double, double }*
  %96 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = load double, double* %96, align 1
  %98 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = load double, double* %98, align 1
  %call62 = call { double, double } @Psubtract(double %92, double %94, double %97, double %99)
  %100 = bitcast %struct.vector_type* %agg.tmp57 to { double, double }*
  %101 = getelementptr { double, double }, { double, double }* %100, i32 0, i32 0
  %102 = extractvalue { double, double } %call62, 0
  store double %102, double* %101, align 8
  %103 = getelementptr { double, double }, { double, double }* %100, i32 0, i32 1
  %104 = extractvalue { double, double } %call62, 1
  store double %104, double* %103, align 8
  %105 = bitcast %struct.vector_type* %86 to { double, double }*
  %106 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 0
  %107 = load double, double* %106, align 1
  %108 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 1
  %109 = load double, double* %108, align 1
  %110 = bitcast %struct.vector_type* %agg.tmp57 to { double, double }*
  %111 = getelementptr { double, double }, { double, double }* %110, i32 0, i32 0
  %112 = load double, double* %111, align 1
  %113 = getelementptr { double, double }, { double, double }* %110, i32 0, i32 1
  %114 = load double, double* %113, align 1
  %call63 = call { double, double } @Vadd(double %107, double %109, double %112, double %114)
  %115 = bitcast %struct.vector_type* %coerce64 to { double, double }*
  %116 = getelementptr { double, double }, { double, double }* %115, i32 0, i32 0
  %117 = extractvalue { double, double } %call63, 0
  store double %117, double* %116, align 8
  %118 = getelementptr { double, double }, { double, double }* %115, i32 0, i32 1
  %119 = extractvalue { double, double } %call63, 1
  store double %119, double* %118, align 8
  %120 = bitcast %struct.vector_type* %85 to i8*
  %121 = bitcast %struct.vector_type* %coerce64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 16, i32 8, i1 false)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.56
  %122 = load i32, i32* %i, align 4
  %add66 = add nsw i32 %122, 1
  %123 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length67 = getelementptr inbounds %struct.curve, %struct.curve* %123, i32 0, i32 1
  %124 = load i32, i32* %length67, align 4
  %cmp68 = icmp sge i32 %add66, %124
  br i1 %cmp68, label %cond.true.69, label %cond.false.80

cond.true.69:                                     ; preds = %for.inc.65
  %125 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic70 = getelementptr inbounds %struct.curve, %struct.curve* %125, i32 0, i32 2
  %126 = load i32, i32* %cyclic70, align 4
  %tobool71 = icmp ne i32 %126, 0
  br i1 %tobool71, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %cond.true.69
  %127 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %127, 1
  %128 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length74 = getelementptr inbounds %struct.curve, %struct.curve* %128, i32 0, i32 1
  %129 = load i32, i32* %length74, align 4
  %rem75 = srem i32 %add73, %129
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.true.69
  %130 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length77 = getelementptr inbounds %struct.curve, %struct.curve* %130, i32 0, i32 1
  %131 = load i32, i32* %length77, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.72
  %cond79 = phi i32 [ %rem75, %cond.true.72 ], [ %131, %cond.false.76 ]
  br label %cond.end.82

cond.false.80:                                    ; preds = %for.inc.65
  %132 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %132, 1
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.end.78
  %cond83 = phi i32 [ %cond79, %cond.end.78 ], [ %add81, %cond.false.80 ]
  store i32 %cond83, i32* %i, align 4
  %133 = load i32, i32* %n_done, align 4
  %inc84 = add i32 %133, 1
  store i32 %inc84, i32* %n_done, align 4
  br label %for.cond.49

for.end.85:                                       ; preds = %land.end.55
  %134 = load i32, i32* %n_done, align 4
  store i32 %134, i32* %out_count, align 4
  %135 = load i32, i32* %out_count, align 4
  %136 = load i32, i32* %in_count, align 4
  %cmp86 = icmp ult i32 %135, %136
  br i1 %cmp86, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.85
  %137 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dx87 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %137, i32 0, i32 0
  store double 0.000000e+00, double* %dx87, align 8
  %138 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dy88 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %138, i32 0, i32 1
  store double 0.000000e+00, double* %dy88, align 8
  %139 = load i32, i32* %test_index.addr, align 4
  %sub89 = sub nsw i32 %139, 1
  %cmp90 = icmp slt i32 %sub89, 0
  br i1 %cmp90, label %cond.true.91, label %cond.false.101

cond.true.91:                                     ; preds = %if.then
  %140 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic92 = getelementptr inbounds %struct.curve, %struct.curve* %140, i32 0, i32 2
  %141 = load i32, i32* %cyclic92, align 4
  %tobool93 = icmp ne i32 %141, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %cond.true.91
  %142 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length95 = getelementptr inbounds %struct.curve, %struct.curve* %142, i32 0, i32 1
  %143 = load i32, i32* %length95, align 4
  %144 = load i32, i32* %test_index.addr, align 4
  %add96 = add nsw i32 %143, %144
  %sub97 = sub nsw i32 %add96, 1
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.true.91
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.94
  %cond100 = phi i32 [ %sub97, %cond.true.94 ], [ -1, %cond.false.98 ]
  br label %cond.end.103

cond.false.101:                                   ; preds = %if.then
  %145 = load i32, i32* %test_index.addr, align 4
  %sub102 = sub nsw i32 %145, 1
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.end.99
  %cond104 = phi i32 [ %cond100, %cond.end.99 ], [ %sub102, %cond.false.101 ]
  store i32 %cond104, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %cond.end.134, %cond.end.103
  %146 = load i32, i32* %i, align 4
  %cmp106 = icmp sge i32 %146, 0
  br i1 %cmp106, label %land.rhs.107, label %land.end.109

land.rhs.107:                                     ; preds = %for.cond.105
  %147 = load i32, i32* %n_done, align 4
  %148 = load i32, i32* %out_count, align 4
  %cmp108 = icmp ult i32 %147, %148
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.107, %for.cond.105
  %149 = phi i1 [ false, %for.cond.105 ], [ %cmp108, %land.rhs.107 ]
  br i1 %149, label %for.body.110, label %for.end.137

for.body.110:                                     ; preds = %land.end.109
  %150 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %151 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %152 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %152 to i64
  %153 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list113 = getelementptr inbounds %struct.curve, %struct.curve* %153, i32 0, i32 0
  %154 = load %struct.point_type*, %struct.point_type** %point_list113, align 8
  %arrayidx114 = getelementptr inbounds %struct.point_type, %struct.point_type* %154, i64 %idxprom112
  %coord115 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx114, i32 0, i32 0
  %155 = bitcast %struct.real_coordinate_type* %coord115 to { double, double }*
  %156 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 0
  %157 = load double, double* %156, align 1
  %158 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 1
  %159 = load double, double* %158, align 1
  %160 = bitcast %struct.real_coordinate_type* %candidate to { double, double }*
  %161 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 0
  %162 = load double, double* %161, align 1
  %163 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 1
  %164 = load double, double* %163, align 1
  %call116 = call { double, double } @Psubtract(double %157, double %159, double %162, double %164)
  %165 = bitcast %struct.vector_type* %agg.tmp111 to { double, double }*
  %166 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = extractvalue { double, double } %call116, 0
  store double %167, double* %166, align 8
  %168 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = extractvalue { double, double } %call116, 1
  store double %169, double* %168, align 8
  %170 = bitcast %struct.vector_type* %151 to { double, double }*
  %171 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 0
  %172 = load double, double* %171, align 1
  %173 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 1
  %174 = load double, double* %173, align 1
  %175 = bitcast %struct.vector_type* %agg.tmp111 to { double, double }*
  %176 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = load double, double* %176, align 1
  %178 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = load double, double* %178, align 1
  %call117 = call { double, double } @Vadd(double %172, double %174, double %177, double %179)
  %180 = bitcast %struct.vector_type* %coerce118 to { double, double }*
  %181 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 0
  %182 = extractvalue { double, double } %call117, 0
  store double %182, double* %181, align 8
  %183 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 1
  %184 = extractvalue { double, double } %call117, 1
  store double %184, double* %183, align 8
  %185 = bitcast %struct.vector_type* %150 to i8*
  %186 = bitcast %struct.vector_type* %coerce118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 16, i32 8, i1 false)
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.110
  %187 = load i32, i32* %i, align 4
  %sub120 = sub nsw i32 %187, 1
  %cmp121 = icmp slt i32 %sub120, 0
  br i1 %cmp121, label %cond.true.122, label %cond.false.132

cond.true.122:                                    ; preds = %for.inc.119
  %188 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic123 = getelementptr inbounds %struct.curve, %struct.curve* %188, i32 0, i32 2
  %189 = load i32, i32* %cyclic123, align 4
  %tobool124 = icmp ne i32 %189, 0
  br i1 %tobool124, label %cond.true.125, label %cond.false.129

cond.true.125:                                    ; preds = %cond.true.122
  %190 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length126 = getelementptr inbounds %struct.curve, %struct.curve* %190, i32 0, i32 1
  %191 = load i32, i32* %length126, align 4
  %192 = load i32, i32* %i, align 4
  %add127 = add nsw i32 %191, %192
  %sub128 = sub nsw i32 %add127, 1
  br label %cond.end.130

cond.false.129:                                   ; preds = %cond.true.122
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.125
  %cond131 = phi i32 [ %sub128, %cond.true.125 ], [ -1, %cond.false.129 ]
  br label %cond.end.134

cond.false.132:                                   ; preds = %for.inc.119
  %193 = load i32, i32* %i, align 4
  %sub133 = sub nsw i32 %193, 1
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.end.130
  %cond135 = phi i32 [ %cond131, %cond.end.130 ], [ %sub133, %cond.false.132 ]
  store i32 %cond135, i32* %i, align 4
  %194 = load i32, i32* %n_done, align 4
  %inc136 = add i32 %194, 1
  store i32 %inc136, i32* %n_done, align 4
  br label %for.cond.105

for.end.137:                                      ; preds = %land.end.109
  %195 = load i32, i32* %n_done, align 4
  store i32 %195, i32* %in_count, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.137, %for.end.85
  %196 = load i32, i32* %in_count, align 4
  %197 = load i32, i32* %out_count, align 4
  %cmp138 = icmp eq i32 %196, %197
  br i1 %cmp138, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %if.end
  br label %cond.end.141

cond.false.140:                                   ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1046, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__.find_curve_vectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.141

cond.end.141:                                     ; preds = %198, %cond.true.139
  %199 = load i32, i32* %in_count, align 4
  %200 = load i32*, i32** %count.addr, align 8
  store i32 %199, i32* %200, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @filter_angle(double %in.coerce0, double %in.coerce1, double %out.coerce0, double %out.coerce1) #0 {
entry:
  %in = alloca %struct.vector_type, align 8
  %out = alloca %struct.vector_type, align 8
  %angle = alloca double, align 8
  %0 = bitcast %struct.vector_type* %in to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %in.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %in.coerce1, double* %2
  %3 = bitcast %struct.vector_type* %out to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %out.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %out.coerce1, double* %5
  %6 = bitcast %struct.vector_type* %in to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  %8 = load double, double* %7, align 1
  %9 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  %10 = load double, double* %9, align 1
  %11 = bitcast %struct.vector_type* %out to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = load double, double* %12, align 1
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 1
  %call = call double @Vangle(double %8, double %10, double %13, double %15)
  store double %call, double* %angle, align 8
  %16 = load double, double* %angle, align 8
  %call1 = call double @fmod(double %16, double 1.990000e+03) #2
  store double %call1, double* %angle, align 8
  %17 = load double, double* %angle, align 8
  %cmp = fcmp ogt double %17, 4.500000e+01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load double, double* %angle, align 8
  %sub = fsub double 9.000000e+01, %18
  store double %sub, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load double, double* %angle, align 8
  ret double %19
}

declare { double, double } @Vadd(double, double, double, double) #1

declare { double, double } @Psubtract(double, double, double, double) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare double @Vangle(double, double, double, double) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #4

; Function Attrs: nounwind uwtable
define internal %struct.spline_list_type* @fit_with_line(%struct.curve* %curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %line = alloca %struct.spline_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  call void @new_spline(%struct.spline_type* sret %line)
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 1
  store i32 1, i32* %degree, align 4
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %v1 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v1, i32 0, i64 1
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 0
  %1 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx3 = getelementptr inbounds %struct.point_type, %struct.point_type* %1, i64 0
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx3, i32 0, i32 0
  %2 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  %3 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %struct.real_coordinate_type* %arrayidx to i8*
  %5 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %v4 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v4, i32 0, i64 3
  %v6 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v6, i32 0, i64 2
  %6 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %6, i32 0, i32 1
  %7 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list8 = getelementptr inbounds %struct.curve, %struct.curve* %8, i32 0, i32 0
  %9 = load %struct.point_type*, %struct.point_type** %point_list8, align 8
  %arrayidx9 = getelementptr inbounds %struct.point_type, %struct.point_type* %9, i64 %idxprom
  %coord10 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx9, i32 0, i32 0
  %10 = bitcast %struct.real_coordinate_type* %arrayidx7 to i8*
  %11 = bitcast %struct.real_coordinate_type* %coord10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.real_coordinate_type* %arrayidx5 to i8*
  %13 = bitcast %struct.real_coordinate_type* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %linearity = getelementptr inbounds %struct.spline_type, %struct.spline_type* %line, i32 0, i32 2
  store double 0.000000e+00, double* %linearity, align 8
  %call = call %struct.spline_list_type* @init_spline_list(%struct.spline_type* byval align 8 %line)
  ret %struct.spline_list_type* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.spline_list_type* @fit_with_least_squares(%struct.curve* %curve) #0 {
entry:
  %retval = alloca %struct.spline_list_type*, align 8
  %curve.addr = alloca %struct.curve*, align 8
  %error = alloca double, align 8
  %best_error = alloca double, align 8
  %spline = alloca %struct.spline_type, align 8
  %best_spline = alloca %struct.spline_type, align 8
  %spline_list = alloca %struct.spline_list_type*, align 8
  %worst_point = alloca i32, align 4
  %iteration = alloca i32, align 4
  %previous_error = alloca double, align 8
  %improvement = alloca double, align 8
  %tmp = alloca %struct.spline_type, align 8
  %subdivision_index = alloca i32, align 4
  %left_spline_list = alloca %struct.spline_list_type*, align 8
  %right_spline_list = alloca %struct.spline_list_type*, align 8
  %left_curve = alloca %struct.curve*, align 8
  %right_curve = alloca %struct.curve*, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store double 0x47EFFFFFE0000000, double* %best_error, align 8
  store i32 0, i32* %iteration, align 4
  store double 0x47EFFFFFE0000000, double* %previous_error, align 8
  store double 0x47EFFFFFE0000000, double* %improvement, align 8
  %0 = bitcast %struct.spline_type* %best_spline to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @find_tangent(%struct.curve* %1, i32 1, i32 0)
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @find_tangent(%struct.curve* %2, i32 0, i32 0)
  %3 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @set_initial_parameter_values(%struct.curve* %3)
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.7
  %4 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  call void @fit_one_spline(%struct.spline_type* sret %tmp, %struct.curve* %4)
  %5 = bitcast %struct.spline_type* %spline to i8*
  %6 = bitcast %struct.spline_type* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 80, i32 8, i1 false)
  %7 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call = call double @find_error(%struct.curve* %7, %struct.spline_type* byval align 8 %spline, i32* %worst_point)
  store double %call, double* %error, align 8
  %8 = load double, double* %error, align 8
  %9 = load double, double* %previous_error, align 8
  %cmp = fcmp ogt double %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load double, double* %error, align 8
  store double %10, double* %best_error, align 8
  %11 = bitcast %struct.spline_type* %best_spline to i8*
  %12 = bitcast %struct.spline_type* %spline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 80, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load double, double* %error, align 8
  %14 = load double, double* %previous_error, align 8
  %div = fdiv double %13, %14
  %sub = fsub double 1.000000e+00, %div
  store double %sub, double* %improvement, align 8
  %15 = load double, double* %improvement, align 8
  %16 = load double, double* @reparameterize_improvement, align 8
  %cmp1 = fcmp olt double %15, %16
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load double, double* %error, align 8
  %18 = load double, double* @reparameterize_threshold, align 8
  %cmp2 = fcmp ogt double %17, %18
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %while.end

if.end.4:                                         ; preds = %lor.lhs.false
  %19 = load i32, i32* %iteration, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %iteration, align 4
  %20 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call5 = call i32 @reparameterize(%struct.curve* %20, %struct.spline_type* byval align 8 %spline)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  br label %while.end

if.end.7:                                         ; preds = %if.end.4
  %21 = load double, double* %error, align 8
  store double %21, double* %previous_error, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.6, %if.then.3
  %22 = bitcast %struct.spline_type* %spline to i8*
  %23 = bitcast %struct.spline_type* %best_spline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 80, i32 8, i1 false)
  %24 = load double, double* %best_error, align 8
  store double %24, double* %error, align 8
  %25 = load double, double* %error, align 8
  %26 = load double, double* @error_threshold, align 8
  %cmp8 = fcmp olt double %25, %26
  br i1 %cmp8, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %while.end
  %27 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %call10 = call i32 @spline_linear_enough(%struct.spline_type* %spline, %struct.curve* %27)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 1
  store i32 1, i32* %degree, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %call14 = call %struct.spline_list_type* @init_spline_list(%struct.spline_type* byval align 8 %spline)
  store %struct.spline_list_type* %call14, %struct.spline_list_type** %spline_list, align 8
  br label %if.end.63

if.else.15:                                       ; preds = %while.end
  %call20 = call %struct.curve* @new_curve()
  store %struct.curve* %call20, %struct.curve** %left_curve, align 8
  %call22 = call %struct.curve* @new_curve()
  store %struct.curve* %call22, %struct.curve** %right_curve, align 8
  %28 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %next = getelementptr inbounds %struct.curve, %struct.curve* %28, i32 0, i32 6
  %29 = load %struct.curve*, %struct.curve** %next, align 8
  %30 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %next23 = getelementptr inbounds %struct.curve, %struct.curve* %30, i32 0, i32 6
  store %struct.curve* %29, %struct.curve** %next23, align 8
  %31 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %32 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %previous = getelementptr inbounds %struct.curve, %struct.curve* %32, i32 0, i32 5
  store %struct.curve* %31, %struct.curve** %previous, align 8
  %33 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %34 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %next24 = getelementptr inbounds %struct.curve, %struct.curve* %34, i32 0, i32 6
  store %struct.curve* %33, %struct.curve** %next24, align 8
  %35 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %36 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %previous25 = getelementptr inbounds %struct.curve, %struct.curve* %36, i32 0, i32 5
  store %struct.curve* %35, %struct.curve** %previous25, align 8
  %37 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %38 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %next26 = getelementptr inbounds %struct.curve, %struct.curve* %38, i32 0, i32 6
  store %struct.curve* %37, %struct.curve** %next26, align 8
  %39 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %40 = load i32, i32* %worst_point, align 4
  %call27 = call i32 @find_subdivision(%struct.curve* %39, i32 %40)
  store i32 %call27, i32* %subdivision_index, align 4
  %41 = load i32, i32* %subdivision_index, align 4
  %add = add i32 %41, 1
  %42 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %42, i32 0, i32 1
  store i32 %add, i32* %length, align 4
  %43 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length28 = getelementptr inbounds %struct.curve, %struct.curve* %43, i32 0, i32 1
  %44 = load i32, i32* %length28, align 4
  %45 = load i32, i32* %subdivision_index, align 4
  %sub29 = sub i32 %44, %45
  %46 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %length30 = getelementptr inbounds %struct.curve, %struct.curve* %46, i32 0, i32 1
  store i32 %sub29, i32* %length30, align 4
  %47 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %47, i32 0, i32 0
  %48 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %49 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %point_list31 = getelementptr inbounds %struct.curve, %struct.curve* %49, i32 0, i32 0
  store %struct.point_type* %48, %struct.point_type** %point_list31, align 8
  %50 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list32 = getelementptr inbounds %struct.curve, %struct.curve* %50, i32 0, i32 0
  %51 = load %struct.point_type*, %struct.point_type** %point_list32, align 8
  %52 = load i32, i32* %subdivision_index, align 4
  %idx.ext = zext i32 %52 to i64
  %add.ptr = getelementptr inbounds %struct.point_type, %struct.point_type* %51, i64 %idx.ext
  %53 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %point_list33 = getelementptr inbounds %struct.curve, %struct.curve* %53, i32 0, i32 0
  store %struct.point_type* %add.ptr, %struct.point_type** %point_list33, align 8
  %54 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %start_tangent = getelementptr inbounds %struct.curve, %struct.curve* %54, i32 0, i32 3
  %55 = load %struct.vector_type*, %struct.vector_type** %start_tangent, align 8
  %56 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %start_tangent34 = getelementptr inbounds %struct.curve, %struct.curve* %56, i32 0, i32 3
  store %struct.vector_type* %55, %struct.vector_type** %start_tangent34, align 8
  %57 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %end_tangent = getelementptr inbounds %struct.curve, %struct.curve* %57, i32 0, i32 4
  %58 = load %struct.vector_type*, %struct.vector_type** %end_tangent, align 8
  %59 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %end_tangent35 = getelementptr inbounds %struct.curve, %struct.curve* %59, i32 0, i32 4
  store %struct.vector_type* %58, %struct.vector_type** %end_tangent35, align 8
  %60 = load %struct.curve*, %struct.curve** %left_curve, align 8
  call void @find_tangent(%struct.curve* %60, i32 0, i32 1)
  %61 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %end_tangent36 = getelementptr inbounds %struct.curve, %struct.curve* %61, i32 0, i32 4
  %62 = load %struct.vector_type*, %struct.vector_type** %end_tangent36, align 8
  %63 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %start_tangent37 = getelementptr inbounds %struct.curve, %struct.curve* %63, i32 0, i32 3
  store %struct.vector_type* %62, %struct.vector_type** %start_tangent37, align 8
  %64 = load %struct.curve*, %struct.curve** %left_curve, align 8
  %call38 = call %struct.spline_list_type* @fit_curve(%struct.curve* %64)
  store %struct.spline_list_type* %call38, %struct.spline_list_type** %left_spline_list, align 8
  %65 = load %struct.curve*, %struct.curve** %right_curve, align 8
  %call39 = call %struct.spline_list_type* @fit_curve(%struct.curve* %65)
  store %struct.spline_list_type* %call39, %struct.spline_list_type** %right_spline_list, align 8
  %66 = load %struct.spline_list_type*, %struct.spline_list_type** %left_spline_list, align 8
  %cmp40 = icmp eq %struct.spline_list_type* %66, null
  br i1 %cmp40, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.else.15
  %67 = load %struct.spline_list_type*, %struct.spline_list_type** %right_spline_list, align 8
  %cmp41 = icmp eq %struct.spline_list_type* %67, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  store %struct.spline_list_type* null, %struct.spline_list_type** %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true, %if.else.15
  %call44 = call %struct.spline_list_type* @new_spline_list()
  store %struct.spline_list_type* %call44, %struct.spline_list_type** %spline_list, align 8
  %68 = load %struct.spline_list_type*, %struct.spline_list_type** %left_spline_list, align 8
  %cmp45 = icmp eq %struct.spline_list_type* %68, null
  br i1 %cmp45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.end.43
  br label %do.body

do.body:                                          ; preds = %if.then.46
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call50 = call i32 @fflush(%struct._IO_FILE* %72)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.43
  %73 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list, align 8
  %74 = load %struct.spline_list_type*, %struct.spline_list_type** %left_spline_list, align 8
  %75 = bitcast %struct.spline_list_type* %74 to { %struct.spline_type*, i32 }*
  %76 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %75, i32 0, i32 0
  %77 = load %struct.spline_type*, %struct.spline_type** %76, align 1
  %78 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %75, i32 0, i32 1
  %79 = load i32, i32* %78, align 1
  call void @concat_spline_lists(%struct.spline_list_type* %73, %struct.spline_type* %77, i32 %79)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %do.end
  %80 = load %struct.spline_list_type*, %struct.spline_list_type** %right_spline_list, align 8
  %cmp53 = icmp eq %struct.spline_list_type* %80, null
  br i1 %cmp53, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.end.52
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %81)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call59 = call i32 @fflush(%struct._IO_FILE* %84)
  br label %do.end.60

do.end.60:                                        ; preds = %do.body.55
  br label %if.end.62

if.else.61:                                       ; preds = %if.end.52
  %85 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list, align 8
  %86 = load %struct.spline_list_type*, %struct.spline_list_type** %right_spline_list, align 8
  %87 = bitcast %struct.spline_list_type* %86 to { %struct.spline_type*, i32 }*
  %88 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %87, i32 0, i32 0
  %89 = load %struct.spline_type*, %struct.spline_type** %88, align 1
  %90 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %87, i32 0, i32 1
  %91 = load i32, i32* %90, align 1
  call void @concat_spline_lists(%struct.spline_list_type* %85, %struct.spline_type* %89, i32 %91)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %do.end.60
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.13
  %92 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list, align 8
  store %struct.spline_list_type* %92, %struct.spline_list_type** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.42
  %93 = load %struct.spline_list_type*, %struct.spline_list_type** %retval
  ret %struct.spline_list_type* %93
}

declare void @new_spline(%struct.spline_type* sret) #1

declare %struct.spline_list_type* @init_spline_list(%struct.spline_type* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @find_tangent(%struct.curve* %curve, i32 %to_start_point, i32 %cross_curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %to_start_point.addr = alloca i32, align 4
  %cross_curve.addr = alloca i32, align 4
  %tangent = alloca %struct.vector_type, align 8
  %curve_tangent = alloca %struct.vector_type**, align 8
  %n_points = alloca i32, align 4
  %coerce = alloca %struct.vector_type, align 8
  %adjacent_curve = alloca %struct.curve*, align 8
  %tangent2 = alloca %struct.vector_type, align 8
  %coerce12 = alloca %struct.vector_type, align 8
  %coerce18 = alloca %struct.vector_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 %to_start_point, i32* %to_start_point.addr, align 4
  store i32 %cross_curve, i32* %cross_curve.addr, align 4
  %0 = load i32, i32* %to_start_point.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %start_tangent = getelementptr inbounds %struct.curve, %struct.curve* %1, i32 0, i32 3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %end_tangent = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.vector_type** [ %start_tangent, %cond.true ], [ %end_tangent, %cond.false ]
  store %struct.vector_type** %cond, %struct.vector_type*** %curve_tangent, align 8
  store i32 0, i32* %n_points, align 4
  %3 = load %struct.vector_type**, %struct.vector_type*** %curve_tangent, align 8
  %4 = load %struct.vector_type*, %struct.vector_type** %3, align 8
  %cmp = icmp eq %struct.vector_type* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %5 = bitcast i8* %call to %struct.vector_type*
  %6 = load %struct.vector_type**, %struct.vector_type*** %curve_tangent, align 8
  store %struct.vector_type* %5, %struct.vector_type** %6, align 8
  %7 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %8 = load i32, i32* %to_start_point.addr, align 4
  %call1 = call { double, double } @find_half_tangent(%struct.curve* %7, i32 %8, i32* %n_points)
  %9 = bitcast %struct.vector_type* %coerce to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  %11 = extractvalue { double, double } %call1, 0
  store double %11, double* %10, align 8
  %12 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  %13 = extractvalue { double, double } %call1, 1
  store double %13, double* %12, align 8
  %14 = bitcast %struct.vector_type* %tangent to i8*
  %15 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = load i32, i32* %cross_curve.addr, align 4
  %tobool2 = icmp ne i32 %16, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %17 = load i32, i32* %to_start_point.addr, align 4
  %tobool4 = icmp ne i32 %17, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.then.3
  %18 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %previous = getelementptr inbounds %struct.curve, %struct.curve* %18, i32 0, i32 5
  %19 = load %struct.curve*, %struct.curve** %previous, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %if.then.3
  %20 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %next = getelementptr inbounds %struct.curve, %struct.curve* %20, i32 0, i32 6
  %21 = load %struct.curve*, %struct.curve** %next, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi %struct.curve* [ %19, %cond.true.5 ], [ %21, %cond.false.6 ]
  store %struct.curve* %cond8, %struct.curve** %adjacent_curve, align 8
  %22 = load %struct.curve*, %struct.curve** %adjacent_curve, align 8
  %23 = load i32, i32* %to_start_point.addr, align 4
  %tobool9 = icmp ne i32 %23, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  %call10 = call { double, double } @find_half_tangent(%struct.curve* %22, i32 %lnot.ext, i32* %n_points)
  %24 = bitcast %struct.vector_type* %tangent2 to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = extractvalue { double, double } %call10, 0
  store double %26, double* %25, align 8
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = extractvalue { double, double } %call10, 1
  store double %28, double* %27, align 8
  %29 = bitcast %struct.vector_type* %tangent to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = load double, double* %30, align 1
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = load double, double* %32, align 1
  %34 = bitcast %struct.vector_type* %tangent2 to { double, double }*
  %35 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = load double, double* %35, align 1
  %37 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = load double, double* %37, align 1
  %call11 = call { double, double } @Vadd(double %31, double %33, double %36, double %38)
  %39 = bitcast %struct.vector_type* %coerce12 to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call11, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call11, 1
  store double %43, double* %42, align 8
  %44 = bitcast %struct.vector_type* %tangent to i8*
  %45 = bitcast %struct.vector_type* %coerce12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %cond.end.7, %if.then
  %46 = load i32, i32* %n_points, align 4
  %cmp13 = icmp ugt i32 %46, 0
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1652, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.find_tangent, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.16

cond.end.16:                                      ; preds = %47, %cond.true.14
  %48 = load %struct.vector_type**, %struct.vector_type*** %curve_tangent, align 8
  %49 = load %struct.vector_type*, %struct.vector_type** %48, align 8
  %50 = load i32, i32* %n_points, align 4
  %conv = uitofp i32 %50 to double
  %div = fdiv double 1.000000e+00, %conv
  %51 = bitcast %struct.vector_type* %tangent to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = load double, double* %52, align 1
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = load double, double* %54, align 1
  %call17 = call { double, double } @Vmult_scalar(double %53, double %55, double %div)
  %56 = bitcast %struct.vector_type* %coerce18 to { double, double }*
  %57 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 0
  %58 = extractvalue { double, double } %call17, 0
  store double %58, double* %57, align 8
  %59 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 1
  %60 = extractvalue { double, double } %call17, 1
  store double %60, double* %59, align 8
  %61 = bitcast %struct.vector_type* %49 to i8*
  %62 = bitcast %struct.vector_type* %coerce18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false)
  br label %if.end.19

if.else:                                          ; preds = %cond.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %cond.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_initial_parameter_values(%struct.curve* %curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %p = alloca i32, align 4
  %point = alloca %struct.real_coordinate_type, align 8
  %previous_p = alloca %struct.real_coordinate_type, align 8
  %d = alloca double, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 0
  %1 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %1, i64 0
  %t = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 1
  store double 0.000000e+00, double* %t, align 8
  store i32 1, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %p, align 4
  %3 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %p, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list1 = getelementptr inbounds %struct.curve, %struct.curve* %6, i32 0, i32 0
  %7 = load %struct.point_type*, %struct.point_type** %point_list1, align 8
  %arrayidx2 = getelementptr inbounds %struct.point_type, %struct.point_type* %7, i64 %idxprom
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx2, i32 0, i32 0
  %8 = bitcast %struct.real_coordinate_type* %point to i8*
  %9 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load i32, i32* %p, align 4
  %sub = sub i32 %10, 1
  %idxprom3 = zext i32 %sub to i64
  %11 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list4 = getelementptr inbounds %struct.curve, %struct.curve* %11, i32 0, i32 0
  %12 = load %struct.point_type*, %struct.point_type** %point_list4, align 8
  %arrayidx5 = getelementptr inbounds %struct.point_type, %struct.point_type* %12, i64 %idxprom3
  %coord6 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx5, i32 0, i32 0
  %13 = bitcast %struct.real_coordinate_type* %previous_p to i8*
  %14 = bitcast %struct.real_coordinate_type* %coord6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = bitcast %struct.real_coordinate_type* %point to { double, double }*
  %16 = getelementptr { double, double }, { double, double }* %15, i32 0, i32 0
  %17 = load double, double* %16, align 1
  %18 = getelementptr { double, double }, { double, double }* %15, i32 0, i32 1
  %19 = load double, double* %18, align 1
  %20 = bitcast %struct.real_coordinate_type* %previous_p to { double, double }*
  %21 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 0
  %22 = load double, double* %21, align 1
  %23 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 1
  %24 = load double, double* %23, align 1
  %call = call double @distance(double %17, double %19, double %22, double %24)
  store double %call, double* %d, align 8
  %25 = load i32, i32* %p, align 4
  %sub7 = sub i32 %25, 1
  %idxprom8 = zext i32 %sub7 to i64
  %26 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list9 = getelementptr inbounds %struct.curve, %struct.curve* %26, i32 0, i32 0
  %27 = load %struct.point_type*, %struct.point_type** %point_list9, align 8
  %arrayidx10 = getelementptr inbounds %struct.point_type, %struct.point_type* %27, i64 %idxprom8
  %t11 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx10, i32 0, i32 1
  %28 = load double, double* %t11, align 8
  %29 = load double, double* %d, align 8
  %add = fadd double %28, %29
  %30 = load i32, i32* %p, align 4
  %idxprom12 = zext i32 %30 to i64
  %31 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list13 = getelementptr inbounds %struct.curve, %struct.curve* %31, i32 0, i32 0
  %32 = load %struct.point_type*, %struct.point_type** %point_list13, align 8
  %arrayidx14 = getelementptr inbounds %struct.point_type, %struct.point_type* %32, i64 %idxprom12
  %t15 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx14, i32 0, i32 1
  store double %add, double* %t15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %p, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length16 = getelementptr inbounds %struct.curve, %struct.curve* %34, i32 0, i32 1
  %35 = load i32, i32* %length16, align 4
  %sub17 = sub nsw i32 %35, 1
  %idxprom18 = sext i32 %sub17 to i64
  %36 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list19 = getelementptr inbounds %struct.curve, %struct.curve* %36, i32 0, i32 0
  %37 = load %struct.point_type*, %struct.point_type** %point_list19, align 8
  %arrayidx20 = getelementptr inbounds %struct.point_type, %struct.point_type* %37, i64 %idxprom18
  %t21 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx20, i32 0, i32 1
  %38 = load double, double* %t21, align 8
  %cmp22 = fcmp une double %38, 0.000000e+00
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1608, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.set_initial_parameter_values, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %39, %cond.true
  store i32 1, i32* %p, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.41, %cond.end
  %40 = load i32, i32* %p, align 4
  %41 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length24 = getelementptr inbounds %struct.curve, %struct.curve* %41, i32 0, i32 1
  %42 = load i32, i32* %length24, align 4
  %cmp25 = icmp ult i32 %40, %42
  br i1 %cmp25, label %for.body.26, label %for.end.43

for.body.26:                                      ; preds = %for.cond.23
  %43 = load i32, i32* %p, align 4
  %idxprom27 = zext i32 %43 to i64
  %44 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list28 = getelementptr inbounds %struct.curve, %struct.curve* %44, i32 0, i32 0
  %45 = load %struct.point_type*, %struct.point_type** %point_list28, align 8
  %arrayidx29 = getelementptr inbounds %struct.point_type, %struct.point_type* %45, i64 %idxprom27
  %t30 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx29, i32 0, i32 1
  %46 = load double, double* %t30, align 8
  %47 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length31 = getelementptr inbounds %struct.curve, %struct.curve* %47, i32 0, i32 1
  %48 = load i32, i32* %length31, align 4
  %sub32 = sub nsw i32 %48, 1
  %idxprom33 = sext i32 %sub32 to i64
  %49 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list34 = getelementptr inbounds %struct.curve, %struct.curve* %49, i32 0, i32 0
  %50 = load %struct.point_type*, %struct.point_type** %point_list34, align 8
  %arrayidx35 = getelementptr inbounds %struct.point_type, %struct.point_type* %50, i64 %idxprom33
  %t36 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx35, i32 0, i32 1
  %51 = load double, double* %t36, align 8
  %div = fdiv double %46, %51
  %52 = load i32, i32* %p, align 4
  %idxprom37 = zext i32 %52 to i64
  %53 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list38 = getelementptr inbounds %struct.curve, %struct.curve* %53, i32 0, i32 0
  %54 = load %struct.point_type*, %struct.point_type** %point_list38, align 8
  %arrayidx39 = getelementptr inbounds %struct.point_type, %struct.point_type* %54, i64 %idxprom37
  %t40 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx39, i32 0, i32 1
  store double %div, double* %t40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.26
  %55 = load i32, i32* %p, align 4
  %inc42 = add i32 %55, 1
  store i32 %inc42, i32* %p, align 4
  br label %for.cond.23

for.end.43:                                       ; preds = %for.cond.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fit_one_spline(%struct.spline_type* noalias sret %agg.result, %struct.curve* %curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %X_C1_det = alloca double, align 8
  %C0_X_det = alloca double, align 8
  %C0_C1_det = alloca double, align 8
  %alpha1 = alloca double, align 8
  %alpha2 = alloca double, align 8
  %spline = alloca %struct.spline_type, align 8
  %start_vector = alloca %struct.vector_type, align 8
  %end_vector = alloca %struct.vector_type, align 8
  %i = alloca i32, align 4
  %t1_hat = alloca %struct.vector_type, align 8
  %t2_hat = alloca %struct.vector_type, align 8
  %C = alloca [2 x [2 x double]], align 16
  %X = alloca [2 x double], align 16
  %Alen = alloca i32, align 4
  %A = alloca %struct.vector_type*, align 8
  %coerce = alloca %struct.vector_type, align 8
  %coerce14 = alloca %struct.vector_type, align 8
  %coerce37 = alloca %struct.vector_type, align 8
  %coerce59 = alloca %struct.vector_type, align 8
  %temp = alloca %struct.vector_type, align 8
  %temp0 = alloca %struct.vector_type, align 8
  %temp1 = alloca %struct.vector_type, align 8
  %temp2 = alloca %struct.vector_type, align 8
  %temp3 = alloca %struct.vector_type, align 8
  %Ai = alloca %struct.vector_type*, align 8
  %coerce104 = alloca %struct.vector_type, align 8
  %coerce123 = alloca %struct.vector_type, align 8
  %coerce141 = alloca %struct.vector_type, align 8
  %coerce157 = alloca %struct.vector_type, align 8
  %agg.tmp = alloca %struct.real_coordinate_type, align 8
  %agg.tmp162 = alloca %struct.vector_type, align 8
  %agg.tmp163 = alloca %struct.vector_type, align 8
  %agg.tmp164 = alloca %struct.vector_type, align 8
  %coerce170 = alloca %struct.vector_type, align 8
  %agg.tmp225 = alloca %struct.vector_type, align 8
  %coerce228 = alloca %struct.real_coordinate_type, align 8
  %agg.tmp233 = alloca %struct.vector_type, align 8
  %coerce236 = alloca %struct.real_coordinate_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %start_tangent = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 3
  %1 = load %struct.vector_type*, %struct.vector_type** %start_tangent, align 8
  %2 = bitcast %struct.vector_type* %t1_hat to i8*
  %3 = bitcast %struct.vector_type* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %end_tangent = getelementptr inbounds %struct.curve, %struct.curve* %4, i32 0, i32 4
  %5 = load %struct.vector_type*, %struct.vector_type** %end_tangent, align 8
  %6 = bitcast %struct.vector_type* %t2_hat to i8*
  %7 = bitcast %struct.vector_type* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast [2 x [2 x double]]* %C to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 16, i1 false)
  %9 = bitcast [2 x double]* %X to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 16, i1 false)
  %10 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %10, i32 0, i32 1
  %11 = load i32, i32* %length, align 4
  store i32 %11, i32* %Alen, align 4
  %12 = load i32, i32* %Alen, align 4
  %mul = mul nsw i32 %12, 2
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %13 = bitcast i8* %call to %struct.vector_type*
  store %struct.vector_type* %13, %struct.vector_type** %A, align 8
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %14 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %14, i32 0, i32 0
  %15 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx1 = getelementptr inbounds %struct.point_type, %struct.point_type* %15, i64 0
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx1, i32 0, i32 0
  %16 = bitcast %struct.real_coordinate_type* %arrayidx to i8*
  %17 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %v2 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v2, i32 0, i64 3
  %18 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length4 = getelementptr inbounds %struct.curve, %struct.curve* %18, i32 0, i32 1
  %19 = load i32, i32* %length4, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub to i64
  %20 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list5 = getelementptr inbounds %struct.curve, %struct.curve* %20, i32 0, i32 0
  %21 = load %struct.point_type*, %struct.point_type** %point_list5, align 8
  %arrayidx6 = getelementptr inbounds %struct.point_type, %struct.point_type* %21, i64 %idxprom
  %coord7 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx6, i32 0, i32 0
  %22 = bitcast %struct.real_coordinate_type* %arrayidx3 to i8*
  %23 = bitcast %struct.real_coordinate_type* %coord7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %linearity = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 2
  store double 0.000000e+00, double* %linearity, align 8
  %v8 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v8, i32 0, i64 0
  %24 = bitcast %struct.real_coordinate_type* %arrayidx9 to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  %call10 = call { double, double } @make_vector(double %26, double %28)
  %29 = bitcast %struct.vector_type* %coerce to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call10, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call10, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.vector_type* %start_vector to i8*
  %35 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %v11 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v11, i32 0, i64 3
  %36 = bitcast %struct.real_coordinate_type* %arrayidx12 to { double, double }*
  %37 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 0
  %38 = load double, double* %37, align 1
  %39 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 1
  %40 = load double, double* %39, align 1
  %call13 = call { double, double } @make_vector(double %38, double %40)
  %41 = bitcast %struct.vector_type* %coerce14 to { double, double }*
  %42 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = extractvalue { double, double } %call13, 0
  store double %43, double* %42, align 8
  %44 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 1
  %45 = extractvalue { double, double } %call13, 1
  store double %45, double* %44, align 8
  %46 = bitcast %struct.vector_type* %end_vector to i8*
  %47 = bitcast %struct.vector_type* %coerce14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length15 = getelementptr inbounds %struct.curve, %struct.curve* %49, i32 0, i32 1
  %50 = load i32, i32* %length15, align 4
  %cmp = icmp ult i32 %48, %50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %mul17 = mul i32 %51, 2
  %add = add i32 %mul17, 0
  %idxprom18 = zext i32 %add to i64
  %52 = load %struct.vector_type*, %struct.vector_type** %A, align 8
  %arrayidx19 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %52, i64 %idxprom18
  %53 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %53 to i64
  %54 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list21 = getelementptr inbounds %struct.curve, %struct.curve* %54, i32 0, i32 0
  %55 = load %struct.point_type*, %struct.point_type** %point_list21, align 8
  %arrayidx22 = getelementptr inbounds %struct.point_type, %struct.point_type* %55, i64 %idxprom20
  %t = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx22, i32 0, i32 1
  %56 = load double, double* %t, align 8
  %mul23 = fmul double 3.000000e+00, %56
  %57 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %57 to i64
  %58 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list25 = getelementptr inbounds %struct.curve, %struct.curve* %58, i32 0, i32 0
  %59 = load %struct.point_type*, %struct.point_type** %point_list25, align 8
  %arrayidx26 = getelementptr inbounds %struct.point_type, %struct.point_type* %59, i64 %idxprom24
  %t27 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx26, i32 0, i32 1
  %60 = load double, double* %t27, align 8
  %sub28 = fsub double 1.000000e+00, %60
  %61 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %61 to i64
  %62 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list30 = getelementptr inbounds %struct.curve, %struct.curve* %62, i32 0, i32 0
  %63 = load %struct.point_type*, %struct.point_type** %point_list30, align 8
  %arrayidx31 = getelementptr inbounds %struct.point_type, %struct.point_type* %63, i64 %idxprom29
  %t32 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx31, i32 0, i32 1
  %64 = load double, double* %t32, align 8
  %sub33 = fsub double 1.000000e+00, %64
  %mul34 = fmul double %sub28, %sub33
  %mul35 = fmul double %mul23, %mul34
  %65 = bitcast %struct.vector_type* %t1_hat to { double, double }*
  %66 = getelementptr { double, double }, { double, double }* %65, i32 0, i32 0
  %67 = load double, double* %66, align 1
  %68 = getelementptr { double, double }, { double, double }* %65, i32 0, i32 1
  %69 = load double, double* %68, align 1
  %call36 = call { double, double } @Vmult_scalar(double %67, double %69, double %mul35)
  %70 = bitcast %struct.vector_type* %coerce37 to { double, double }*
  %71 = getelementptr { double, double }, { double, double }* %70, i32 0, i32 0
  %72 = extractvalue { double, double } %call36, 0
  store double %72, double* %71, align 8
  %73 = getelementptr { double, double }, { double, double }* %70, i32 0, i32 1
  %74 = extractvalue { double, double } %call36, 1
  store double %74, double* %73, align 8
  %75 = bitcast %struct.vector_type* %arrayidx19 to i8*
  %76 = bitcast %struct.vector_type* %coerce37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false)
  %77 = load i32, i32* %i, align 4
  %mul38 = mul i32 %77, 2
  %add39 = add i32 %mul38, 1
  %idxprom40 = zext i32 %add39 to i64
  %78 = load %struct.vector_type*, %struct.vector_type** %A, align 8
  %arrayidx41 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %78, i64 %idxprom40
  %79 = load i32, i32* %i, align 4
  %idxprom42 = zext i32 %79 to i64
  %80 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list43 = getelementptr inbounds %struct.curve, %struct.curve* %80, i32 0, i32 0
  %81 = load %struct.point_type*, %struct.point_type** %point_list43, align 8
  %arrayidx44 = getelementptr inbounds %struct.point_type, %struct.point_type* %81, i64 %idxprom42
  %t45 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx44, i32 0, i32 1
  %82 = load double, double* %t45, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %83 to i64
  %84 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list47 = getelementptr inbounds %struct.curve, %struct.curve* %84, i32 0, i32 0
  %85 = load %struct.point_type*, %struct.point_type** %point_list47, align 8
  %arrayidx48 = getelementptr inbounds %struct.point_type, %struct.point_type* %85, i64 %idxprom46
  %t49 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx48, i32 0, i32 1
  %86 = load double, double* %t49, align 8
  %mul50 = fmul double %82, %86
  %mul51 = fmul double 3.000000e+00, %mul50
  %87 = load i32, i32* %i, align 4
  %idxprom52 = zext i32 %87 to i64
  %88 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list53 = getelementptr inbounds %struct.curve, %struct.curve* %88, i32 0, i32 0
  %89 = load %struct.point_type*, %struct.point_type** %point_list53, align 8
  %arrayidx54 = getelementptr inbounds %struct.point_type, %struct.point_type* %89, i64 %idxprom52
  %t55 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx54, i32 0, i32 1
  %90 = load double, double* %t55, align 8
  %sub56 = fsub double 1.000000e+00, %90
  %mul57 = fmul double %mul51, %sub56
  %91 = bitcast %struct.vector_type* %t2_hat to { double, double }*
  %92 = getelementptr { double, double }, { double, double }* %91, i32 0, i32 0
  %93 = load double, double* %92, align 1
  %94 = getelementptr { double, double }, { double, double }* %91, i32 0, i32 1
  %95 = load double, double* %94, align 1
  %call58 = call { double, double } @Vmult_scalar(double %93, double %95, double %mul57)
  %96 = bitcast %struct.vector_type* %coerce59 to { double, double }*
  %97 = getelementptr { double, double }, { double, double }* %96, i32 0, i32 0
  %98 = extractvalue { double, double } %call58, 0
  store double %98, double* %97, align 8
  %99 = getelementptr { double, double }, { double, double }* %96, i32 0, i32 1
  %100 = extractvalue { double, double } %call58, 1
  store double %100, double* %99, align 8
  %101 = bitcast %struct.vector_type* %arrayidx41 to i8*
  %102 = bitcast %struct.vector_type* %coerce59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load i32, i32* %i, align 4
  %inc = add i32 %103, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.179, %for.end
  %104 = load i32, i32* %i, align 4
  %105 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length61 = getelementptr inbounds %struct.curve, %struct.curve* %105, i32 0, i32 1
  %106 = load i32, i32* %length61, align 4
  %cmp62 = icmp ult i32 %104, %106
  br i1 %cmp62, label %for.body.64, label %for.end.181

for.body.64:                                      ; preds = %for.cond.60
  %107 = load i32, i32* %i, align 4
  %mul65 = mul i32 %107, 2
  %idxprom66 = zext i32 %mul65 to i64
  %108 = load %struct.vector_type*, %struct.vector_type** %A, align 8
  %arrayidx67 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %108, i64 %idxprom66
  store %struct.vector_type* %arrayidx67, %struct.vector_type** %Ai, align 8
  %109 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx68 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %109, i64 0
  %110 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx69 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %110, i64 0
  %111 = bitcast %struct.vector_type* %arrayidx68 to { double, double }*
  %112 = getelementptr { double, double }, { double, double }* %111, i32 0, i32 0
  %113 = load double, double* %112, align 1
  %114 = getelementptr { double, double }, { double, double }* %111, i32 0, i32 1
  %115 = load double, double* %114, align 1
  %116 = bitcast %struct.vector_type* %arrayidx69 to { double, double }*
  %117 = getelementptr { double, double }, { double, double }* %116, i32 0, i32 0
  %118 = load double, double* %117, align 1
  %119 = getelementptr { double, double }, { double, double }* %116, i32 0, i32 1
  %120 = load double, double* %119, align 1
  %call70 = call double @Vdot(double %113, double %115, double %118, double %120)
  %arrayidx71 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx72 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx71, i32 0, i64 0
  %121 = load double, double* %arrayidx72, align 8
  %add73 = fadd double %121, %call70
  store double %add73, double* %arrayidx72, align 8
  %122 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx74 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %122, i64 0
  %123 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx75 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %123, i64 1
  %124 = bitcast %struct.vector_type* %arrayidx74 to { double, double }*
  %125 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 0
  %126 = load double, double* %125, align 1
  %127 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 1
  %128 = load double, double* %127, align 1
  %129 = bitcast %struct.vector_type* %arrayidx75 to { double, double }*
  %130 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = load double, double* %130, align 1
  %132 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = load double, double* %132, align 1
  %call76 = call double @Vdot(double %126, double %128, double %131, double %133)
  %arrayidx77 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx77, i32 0, i64 1
  %134 = load double, double* %arrayidx78, align 8
  %add79 = fadd double %134, %call76
  store double %add79, double* %arrayidx78, align 8
  %135 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx80 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %135, i64 1
  %136 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx81 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %136, i64 1
  %137 = bitcast %struct.vector_type* %arrayidx80 to { double, double }*
  %138 = getelementptr { double, double }, { double, double }* %137, i32 0, i32 0
  %139 = load double, double* %138, align 1
  %140 = getelementptr { double, double }, { double, double }* %137, i32 0, i32 1
  %141 = load double, double* %140, align 1
  %142 = bitcast %struct.vector_type* %arrayidx81 to { double, double }*
  %143 = getelementptr { double, double }, { double, double }* %142, i32 0, i32 0
  %144 = load double, double* %143, align 1
  %145 = getelementptr { double, double }, { double, double }* %142, i32 0, i32 1
  %146 = load double, double* %145, align 1
  %call82 = call double @Vdot(double %139, double %141, double %144, double %146)
  %arrayidx83 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 1
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx83, i32 0, i64 1
  %147 = load double, double* %arrayidx84, align 8
  %add85 = fadd double %147, %call82
  store double %add85, double* %arrayidx84, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom86 = zext i32 %148 to i64
  %149 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list87 = getelementptr inbounds %struct.curve, %struct.curve* %149, i32 0, i32 0
  %150 = load %struct.point_type*, %struct.point_type** %point_list87, align 8
  %arrayidx88 = getelementptr inbounds %struct.point_type, %struct.point_type* %150, i64 %idxprom86
  %t89 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx88, i32 0, i32 1
  %151 = load double, double* %t89, align 8
  %sub90 = fsub double 1.000000e+00, %151
  %152 = load i32, i32* %i, align 4
  %idxprom91 = zext i32 %152 to i64
  %153 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list92 = getelementptr inbounds %struct.curve, %struct.curve* %153, i32 0, i32 0
  %154 = load %struct.point_type*, %struct.point_type** %point_list92, align 8
  %arrayidx93 = getelementptr inbounds %struct.point_type, %struct.point_type* %154, i64 %idxprom91
  %t94 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx93, i32 0, i32 1
  %155 = load double, double* %t94, align 8
  %sub95 = fsub double 1.000000e+00, %155
  %mul96 = fmul double %sub90, %sub95
  %156 = load i32, i32* %i, align 4
  %idxprom97 = zext i32 %156 to i64
  %157 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list98 = getelementptr inbounds %struct.curve, %struct.curve* %157, i32 0, i32 0
  %158 = load %struct.point_type*, %struct.point_type** %point_list98, align 8
  %arrayidx99 = getelementptr inbounds %struct.point_type, %struct.point_type* %158, i64 %idxprom97
  %t100 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx99, i32 0, i32 1
  %159 = load double, double* %t100, align 8
  %sub101 = fsub double 1.000000e+00, %159
  %mul102 = fmul double %mul96, %sub101
  %160 = bitcast %struct.vector_type* %start_vector to { double, double }*
  %161 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 0
  %162 = load double, double* %161, align 1
  %163 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 1
  %164 = load double, double* %163, align 1
  %call103 = call { double, double } @Vmult_scalar(double %162, double %164, double %mul102)
  %165 = bitcast %struct.vector_type* %coerce104 to { double, double }*
  %166 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = extractvalue { double, double } %call103, 0
  store double %167, double* %166, align 8
  %168 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = extractvalue { double, double } %call103, 1
  store double %169, double* %168, align 8
  %170 = bitcast %struct.vector_type* %temp0 to i8*
  %171 = bitcast %struct.vector_type* %coerce104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %170, i8* %171, i64 16, i32 8, i1 false)
  %172 = load i32, i32* %i, align 4
  %idxprom105 = zext i32 %172 to i64
  %173 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list106 = getelementptr inbounds %struct.curve, %struct.curve* %173, i32 0, i32 0
  %174 = load %struct.point_type*, %struct.point_type** %point_list106, align 8
  %arrayidx107 = getelementptr inbounds %struct.point_type, %struct.point_type* %174, i64 %idxprom105
  %t108 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx107, i32 0, i32 1
  %175 = load double, double* %t108, align 8
  %mul109 = fmul double 3.000000e+00, %175
  %176 = load i32, i32* %i, align 4
  %idxprom110 = zext i32 %176 to i64
  %177 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list111 = getelementptr inbounds %struct.curve, %struct.curve* %177, i32 0, i32 0
  %178 = load %struct.point_type*, %struct.point_type** %point_list111, align 8
  %arrayidx112 = getelementptr inbounds %struct.point_type, %struct.point_type* %178, i64 %idxprom110
  %t113 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx112, i32 0, i32 1
  %179 = load double, double* %t113, align 8
  %sub114 = fsub double 1.000000e+00, %179
  %180 = load i32, i32* %i, align 4
  %idxprom115 = zext i32 %180 to i64
  %181 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list116 = getelementptr inbounds %struct.curve, %struct.curve* %181, i32 0, i32 0
  %182 = load %struct.point_type*, %struct.point_type** %point_list116, align 8
  %arrayidx117 = getelementptr inbounds %struct.point_type, %struct.point_type* %182, i64 %idxprom115
  %t118 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx117, i32 0, i32 1
  %183 = load double, double* %t118, align 8
  %sub119 = fsub double 1.000000e+00, %183
  %mul120 = fmul double %sub114, %sub119
  %mul121 = fmul double %mul109, %mul120
  %184 = bitcast %struct.vector_type* %start_vector to { double, double }*
  %185 = getelementptr { double, double }, { double, double }* %184, i32 0, i32 0
  %186 = load double, double* %185, align 1
  %187 = getelementptr { double, double }, { double, double }* %184, i32 0, i32 1
  %188 = load double, double* %187, align 1
  %call122 = call { double, double } @Vmult_scalar(double %186, double %188, double %mul121)
  %189 = bitcast %struct.vector_type* %coerce123 to { double, double }*
  %190 = getelementptr { double, double }, { double, double }* %189, i32 0, i32 0
  %191 = extractvalue { double, double } %call122, 0
  store double %191, double* %190, align 8
  %192 = getelementptr { double, double }, { double, double }* %189, i32 0, i32 1
  %193 = extractvalue { double, double } %call122, 1
  store double %193, double* %192, align 8
  %194 = bitcast %struct.vector_type* %temp1 to i8*
  %195 = bitcast %struct.vector_type* %coerce123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 16, i32 8, i1 false)
  %196 = load i32, i32* %i, align 4
  %idxprom124 = zext i32 %196 to i64
  %197 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list125 = getelementptr inbounds %struct.curve, %struct.curve* %197, i32 0, i32 0
  %198 = load %struct.point_type*, %struct.point_type** %point_list125, align 8
  %arrayidx126 = getelementptr inbounds %struct.point_type, %struct.point_type* %198, i64 %idxprom124
  %t127 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx126, i32 0, i32 1
  %199 = load double, double* %t127, align 8
  %200 = load i32, i32* %i, align 4
  %idxprom128 = zext i32 %200 to i64
  %201 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list129 = getelementptr inbounds %struct.curve, %struct.curve* %201, i32 0, i32 0
  %202 = load %struct.point_type*, %struct.point_type** %point_list129, align 8
  %arrayidx130 = getelementptr inbounds %struct.point_type, %struct.point_type* %202, i64 %idxprom128
  %t131 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx130, i32 0, i32 1
  %203 = load double, double* %t131, align 8
  %mul132 = fmul double %199, %203
  %mul133 = fmul double 3.000000e+00, %mul132
  %204 = load i32, i32* %i, align 4
  %idxprom134 = zext i32 %204 to i64
  %205 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list135 = getelementptr inbounds %struct.curve, %struct.curve* %205, i32 0, i32 0
  %206 = load %struct.point_type*, %struct.point_type** %point_list135, align 8
  %arrayidx136 = getelementptr inbounds %struct.point_type, %struct.point_type* %206, i64 %idxprom134
  %t137 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx136, i32 0, i32 1
  %207 = load double, double* %t137, align 8
  %sub138 = fsub double 1.000000e+00, %207
  %mul139 = fmul double %mul133, %sub138
  %208 = bitcast %struct.vector_type* %end_vector to { double, double }*
  %209 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 0
  %210 = load double, double* %209, align 1
  %211 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 1
  %212 = load double, double* %211, align 1
  %call140 = call { double, double } @Vmult_scalar(double %210, double %212, double %mul139)
  %213 = bitcast %struct.vector_type* %coerce141 to { double, double }*
  %214 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 0
  %215 = extractvalue { double, double } %call140, 0
  store double %215, double* %214, align 8
  %216 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 1
  %217 = extractvalue { double, double } %call140, 1
  store double %217, double* %216, align 8
  %218 = bitcast %struct.vector_type* %temp2 to i8*
  %219 = bitcast %struct.vector_type* %coerce141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 16, i32 8, i1 false)
  %220 = load i32, i32* %i, align 4
  %idxprom142 = zext i32 %220 to i64
  %221 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list143 = getelementptr inbounds %struct.curve, %struct.curve* %221, i32 0, i32 0
  %222 = load %struct.point_type*, %struct.point_type** %point_list143, align 8
  %arrayidx144 = getelementptr inbounds %struct.point_type, %struct.point_type* %222, i64 %idxprom142
  %t145 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx144, i32 0, i32 1
  %223 = load double, double* %t145, align 8
  %224 = load i32, i32* %i, align 4
  %idxprom146 = zext i32 %224 to i64
  %225 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list147 = getelementptr inbounds %struct.curve, %struct.curve* %225, i32 0, i32 0
  %226 = load %struct.point_type*, %struct.point_type** %point_list147, align 8
  %arrayidx148 = getelementptr inbounds %struct.point_type, %struct.point_type* %226, i64 %idxprom146
  %t149 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx148, i32 0, i32 1
  %227 = load double, double* %t149, align 8
  %mul150 = fmul double %223, %227
  %228 = load i32, i32* %i, align 4
  %idxprom151 = zext i32 %228 to i64
  %229 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list152 = getelementptr inbounds %struct.curve, %struct.curve* %229, i32 0, i32 0
  %230 = load %struct.point_type*, %struct.point_type** %point_list152, align 8
  %arrayidx153 = getelementptr inbounds %struct.point_type, %struct.point_type* %230, i64 %idxprom151
  %t154 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx153, i32 0, i32 1
  %231 = load double, double* %t154, align 8
  %mul155 = fmul double %mul150, %231
  %232 = bitcast %struct.vector_type* %end_vector to { double, double }*
  %233 = getelementptr { double, double }, { double, double }* %232, i32 0, i32 0
  %234 = load double, double* %233, align 1
  %235 = getelementptr { double, double }, { double, double }* %232, i32 0, i32 1
  %236 = load double, double* %235, align 1
  %call156 = call { double, double } @Vmult_scalar(double %234, double %236, double %mul155)
  %237 = bitcast %struct.vector_type* %coerce157 to { double, double }*
  %238 = getelementptr { double, double }, { double, double }* %237, i32 0, i32 0
  %239 = extractvalue { double, double } %call156, 0
  store double %239, double* %238, align 8
  %240 = getelementptr { double, double }, { double, double }* %237, i32 0, i32 1
  %241 = extractvalue { double, double } %call156, 1
  store double %241, double* %240, align 8
  %242 = bitcast %struct.vector_type* %temp3 to i8*
  %243 = bitcast %struct.vector_type* %coerce157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %243, i64 16, i32 8, i1 false)
  %244 = load i32, i32* %i, align 4
  %idxprom158 = zext i32 %244 to i64
  %245 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list159 = getelementptr inbounds %struct.curve, %struct.curve* %245, i32 0, i32 0
  %246 = load %struct.point_type*, %struct.point_type** %point_list159, align 8
  %arrayidx160 = getelementptr inbounds %struct.point_type, %struct.point_type* %246, i64 %idxprom158
  %coord161 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx160, i32 0, i32 0
  %247 = bitcast %struct.vector_type* %temp2 to { double, double }*
  %248 = getelementptr { double, double }, { double, double }* %247, i32 0, i32 0
  %249 = load double, double* %248, align 1
  %250 = getelementptr { double, double }, { double, double }* %247, i32 0, i32 1
  %251 = load double, double* %250, align 1
  %252 = bitcast %struct.vector_type* %temp3 to { double, double }*
  %253 = getelementptr { double, double }, { double, double }* %252, i32 0, i32 0
  %254 = load double, double* %253, align 1
  %255 = getelementptr { double, double }, { double, double }* %252, i32 0, i32 1
  %256 = load double, double* %255, align 1
  %call165 = call { double, double } @Vadd(double %249, double %251, double %254, double %256)
  %257 = bitcast %struct.vector_type* %agg.tmp164 to { double, double }*
  %258 = getelementptr { double, double }, { double, double }* %257, i32 0, i32 0
  %259 = extractvalue { double, double } %call165, 0
  store double %259, double* %258, align 8
  %260 = getelementptr { double, double }, { double, double }* %257, i32 0, i32 1
  %261 = extractvalue { double, double } %call165, 1
  store double %261, double* %260, align 8
  %262 = bitcast %struct.vector_type* %temp1 to { double, double }*
  %263 = getelementptr { double, double }, { double, double }* %262, i32 0, i32 0
  %264 = load double, double* %263, align 1
  %265 = getelementptr { double, double }, { double, double }* %262, i32 0, i32 1
  %266 = load double, double* %265, align 1
  %267 = bitcast %struct.vector_type* %agg.tmp164 to { double, double }*
  %268 = getelementptr { double, double }, { double, double }* %267, i32 0, i32 0
  %269 = load double, double* %268, align 1
  %270 = getelementptr { double, double }, { double, double }* %267, i32 0, i32 1
  %271 = load double, double* %270, align 1
  %call166 = call { double, double } @Vadd(double %264, double %266, double %269, double %271)
  %272 = bitcast %struct.vector_type* %agg.tmp163 to { double, double }*
  %273 = getelementptr { double, double }, { double, double }* %272, i32 0, i32 0
  %274 = extractvalue { double, double } %call166, 0
  store double %274, double* %273, align 8
  %275 = getelementptr { double, double }, { double, double }* %272, i32 0, i32 1
  %276 = extractvalue { double, double } %call166, 1
  store double %276, double* %275, align 8
  %277 = bitcast %struct.vector_type* %temp0 to { double, double }*
  %278 = getelementptr { double, double }, { double, double }* %277, i32 0, i32 0
  %279 = load double, double* %278, align 1
  %280 = getelementptr { double, double }, { double, double }* %277, i32 0, i32 1
  %281 = load double, double* %280, align 1
  %282 = bitcast %struct.vector_type* %agg.tmp163 to { double, double }*
  %283 = getelementptr { double, double }, { double, double }* %282, i32 0, i32 0
  %284 = load double, double* %283, align 1
  %285 = getelementptr { double, double }, { double, double }* %282, i32 0, i32 1
  %286 = load double, double* %285, align 1
  %call167 = call { double, double } @Vadd(double %279, double %281, double %284, double %286)
  %287 = bitcast %struct.vector_type* %agg.tmp162 to { double, double }*
  %288 = getelementptr { double, double }, { double, double }* %287, i32 0, i32 0
  %289 = extractvalue { double, double } %call167, 0
  store double %289, double* %288, align 8
  %290 = getelementptr { double, double }, { double, double }* %287, i32 0, i32 1
  %291 = extractvalue { double, double } %call167, 1
  store double %291, double* %290, align 8
  %292 = bitcast %struct.real_coordinate_type* %coord161 to { double, double }*
  %293 = getelementptr { double, double }, { double, double }* %292, i32 0, i32 0
  %294 = load double, double* %293, align 1
  %295 = getelementptr { double, double }, { double, double }* %292, i32 0, i32 1
  %296 = load double, double* %295, align 1
  %297 = bitcast %struct.vector_type* %agg.tmp162 to { double, double }*
  %298 = getelementptr { double, double }, { double, double }* %297, i32 0, i32 0
  %299 = load double, double* %298, align 1
  %300 = getelementptr { double, double }, { double, double }* %297, i32 0, i32 1
  %301 = load double, double* %300, align 1
  %call168 = call { double, double } @Vsubtract_point(double %294, double %296, double %299, double %301)
  %302 = bitcast %struct.real_coordinate_type* %agg.tmp to { double, double }*
  %303 = getelementptr { double, double }, { double, double }* %302, i32 0, i32 0
  %304 = extractvalue { double, double } %call168, 0
  store double %304, double* %303, align 8
  %305 = getelementptr { double, double }, { double, double }* %302, i32 0, i32 1
  %306 = extractvalue { double, double } %call168, 1
  store double %306, double* %305, align 8
  %307 = bitcast %struct.real_coordinate_type* %agg.tmp to { double, double }*
  %308 = getelementptr { double, double }, { double, double }* %307, i32 0, i32 0
  %309 = load double, double* %308, align 1
  %310 = getelementptr { double, double }, { double, double }* %307, i32 0, i32 1
  %311 = load double, double* %310, align 1
  %call169 = call { double, double } @make_vector(double %309, double %311)
  %312 = bitcast %struct.vector_type* %coerce170 to { double, double }*
  %313 = getelementptr { double, double }, { double, double }* %312, i32 0, i32 0
  %314 = extractvalue { double, double } %call169, 0
  store double %314, double* %313, align 8
  %315 = getelementptr { double, double }, { double, double }* %312, i32 0, i32 1
  %316 = extractvalue { double, double } %call169, 1
  store double %316, double* %315, align 8
  %317 = bitcast %struct.vector_type* %temp to i8*
  %318 = bitcast %struct.vector_type* %coerce170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %317, i8* %318, i64 16, i32 8, i1 false)
  %319 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx171 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %319, i64 0
  %320 = bitcast %struct.vector_type* %temp to { double, double }*
  %321 = getelementptr { double, double }, { double, double }* %320, i32 0, i32 0
  %322 = load double, double* %321, align 1
  %323 = getelementptr { double, double }, { double, double }* %320, i32 0, i32 1
  %324 = load double, double* %323, align 1
  %325 = bitcast %struct.vector_type* %arrayidx171 to { double, double }*
  %326 = getelementptr { double, double }, { double, double }* %325, i32 0, i32 0
  %327 = load double, double* %326, align 1
  %328 = getelementptr { double, double }, { double, double }* %325, i32 0, i32 1
  %329 = load double, double* %328, align 1
  %call172 = call double @Vdot(double %322, double %324, double %327, double %329)
  %arrayidx173 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 0
  %330 = load double, double* %arrayidx173, align 8
  %add174 = fadd double %330, %call172
  store double %add174, double* %arrayidx173, align 8
  %331 = load %struct.vector_type*, %struct.vector_type** %Ai, align 8
  %arrayidx175 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %331, i64 1
  %332 = bitcast %struct.vector_type* %temp to { double, double }*
  %333 = getelementptr { double, double }, { double, double }* %332, i32 0, i32 0
  %334 = load double, double* %333, align 1
  %335 = getelementptr { double, double }, { double, double }* %332, i32 0, i32 1
  %336 = load double, double* %335, align 1
  %337 = bitcast %struct.vector_type* %arrayidx175 to { double, double }*
  %338 = getelementptr { double, double }, { double, double }* %337, i32 0, i32 0
  %339 = load double, double* %338, align 1
  %340 = getelementptr { double, double }, { double, double }* %337, i32 0, i32 1
  %341 = load double, double* %340, align 1
  %call176 = call double @Vdot(double %334, double %336, double %339, double %341)
  %arrayidx177 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 1
  %342 = load double, double* %arrayidx177, align 8
  %add178 = fadd double %342, %call176
  store double %add178, double* %arrayidx177, align 8
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.64
  %343 = load i32, i32* %i, align 4
  %inc180 = add i32 %343, 1
  store i32 %inc180, i32* %i, align 4
  br label %for.cond.60

for.end.181:                                      ; preds = %for.cond.60
  %arrayidx182 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx183 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx182, i32 0, i64 1
  %344 = load double, double* %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 1
  %arrayidx185 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx184, i32 0, i64 0
  store double %344, double* %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 0
  %345 = load double, double* %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 1
  %arrayidx188 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx187, i32 0, i64 1
  %346 = load double, double* %arrayidx188, align 8
  %mul189 = fmul double %345, %346
  %arrayidx190 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 1
  %347 = load double, double* %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx192 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx191, i32 0, i64 1
  %348 = load double, double* %arrayidx192, align 8
  %mul193 = fmul double %347, %348
  %sub194 = fsub double %mul189, %mul193
  store double %sub194, double* %X_C1_det, align 8
  %arrayidx195 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx196 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx195, i32 0, i64 0
  %349 = load double, double* %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 1
  %350 = load double, double* %arrayidx197, align 8
  %mul198 = fmul double %349, %350
  %arrayidx199 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx200 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx199, i32 0, i64 1
  %351 = load double, double* %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds [2 x double], [2 x double]* %X, i32 0, i64 0
  %352 = load double, double* %arrayidx201, align 8
  %mul202 = fmul double %351, %352
  %sub203 = fsub double %mul198, %mul202
  store double %sub203, double* %C0_X_det, align 8
  %arrayidx204 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx205 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx204, i32 0, i64 0
  %353 = load double, double* %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 1
  %arrayidx207 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx206, i32 0, i64 1
  %354 = load double, double* %arrayidx207, align 8
  %mul208 = fmul double %353, %354
  %arrayidx209 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 1
  %arrayidx210 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx209, i32 0, i64 0
  %355 = load double, double* %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %C, i32 0, i64 0
  %arrayidx212 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx211, i32 0, i64 1
  %356 = load double, double* %arrayidx212, align 8
  %mul213 = fmul double %355, %356
  %sub214 = fsub double %mul208, %mul213
  store double %sub214, double* %C0_C1_det, align 8
  %357 = load double, double* %C0_C1_det, align 8
  %cmp215 = fcmp oeq double %357, 0.000000e+00
  br i1 %cmp215, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.181
  br label %do.body

do.body:                                          ; preds = %if.then
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call217 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %358)
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call219 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %360)
  call void @exit(i32 1) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.181
  %361 = load double, double* %X_C1_det, align 8
  %362 = load double, double* %C0_C1_det, align 8
  %div = fdiv double %361, %362
  store double %div, double* %alpha1, align 8
  %363 = load double, double* %C0_X_det, align 8
  %364 = load double, double* %C0_C1_det, align 8
  %div220 = fdiv double %363, %364
  store double %div220, double* %alpha2, align 8
  %v221 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v221, i32 0, i64 1
  %v223 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v223, i32 0, i64 0
  %365 = load double, double* %alpha1, align 8
  %366 = bitcast %struct.vector_type* %t1_hat to { double, double }*
  %367 = getelementptr { double, double }, { double, double }* %366, i32 0, i32 0
  %368 = load double, double* %367, align 1
  %369 = getelementptr { double, double }, { double, double }* %366, i32 0, i32 1
  %370 = load double, double* %369, align 1
  %call226 = call { double, double } @Vmult_scalar(double %368, double %370, double %365)
  %371 = bitcast %struct.vector_type* %agg.tmp225 to { double, double }*
  %372 = getelementptr { double, double }, { double, double }* %371, i32 0, i32 0
  %373 = extractvalue { double, double } %call226, 0
  store double %373, double* %372, align 8
  %374 = getelementptr { double, double }, { double, double }* %371, i32 0, i32 1
  %375 = extractvalue { double, double } %call226, 1
  store double %375, double* %374, align 8
  %376 = bitcast %struct.real_coordinate_type* %arrayidx224 to { double, double }*
  %377 = getelementptr { double, double }, { double, double }* %376, i32 0, i32 0
  %378 = load double, double* %377, align 1
  %379 = getelementptr { double, double }, { double, double }* %376, i32 0, i32 1
  %380 = load double, double* %379, align 1
  %381 = bitcast %struct.vector_type* %agg.tmp225 to { double, double }*
  %382 = getelementptr { double, double }, { double, double }* %381, i32 0, i32 0
  %383 = load double, double* %382, align 1
  %384 = getelementptr { double, double }, { double, double }* %381, i32 0, i32 1
  %385 = load double, double* %384, align 1
  %call227 = call { double, double } @Vadd_point(double %378, double %380, double %383, double %385)
  %386 = bitcast %struct.real_coordinate_type* %coerce228 to { double, double }*
  %387 = getelementptr { double, double }, { double, double }* %386, i32 0, i32 0
  %388 = extractvalue { double, double } %call227, 0
  store double %388, double* %387, align 8
  %389 = getelementptr { double, double }, { double, double }* %386, i32 0, i32 1
  %390 = extractvalue { double, double } %call227, 1
  store double %390, double* %389, align 8
  %391 = bitcast %struct.real_coordinate_type* %arrayidx222 to i8*
  %392 = bitcast %struct.real_coordinate_type* %coerce228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %391, i8* %392, i64 16, i32 8, i1 false)
  %v229 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v229, i32 0, i64 2
  %v231 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v231, i32 0, i64 3
  %393 = load double, double* %alpha2, align 8
  %394 = bitcast %struct.vector_type* %t2_hat to { double, double }*
  %395 = getelementptr { double, double }, { double, double }* %394, i32 0, i32 0
  %396 = load double, double* %395, align 1
  %397 = getelementptr { double, double }, { double, double }* %394, i32 0, i32 1
  %398 = load double, double* %397, align 1
  %call234 = call { double, double } @Vmult_scalar(double %396, double %398, double %393)
  %399 = bitcast %struct.vector_type* %agg.tmp233 to { double, double }*
  %400 = getelementptr { double, double }, { double, double }* %399, i32 0, i32 0
  %401 = extractvalue { double, double } %call234, 0
  store double %401, double* %400, align 8
  %402 = getelementptr { double, double }, { double, double }* %399, i32 0, i32 1
  %403 = extractvalue { double, double } %call234, 1
  store double %403, double* %402, align 8
  %404 = bitcast %struct.real_coordinate_type* %arrayidx232 to { double, double }*
  %405 = getelementptr { double, double }, { double, double }* %404, i32 0, i32 0
  %406 = load double, double* %405, align 1
  %407 = getelementptr { double, double }, { double, double }* %404, i32 0, i32 1
  %408 = load double, double* %407, align 1
  %409 = bitcast %struct.vector_type* %agg.tmp233 to { double, double }*
  %410 = getelementptr { double, double }, { double, double }* %409, i32 0, i32 0
  %411 = load double, double* %410, align 1
  %412 = getelementptr { double, double }, { double, double }* %409, i32 0, i32 1
  %413 = load double, double* %412, align 1
  %call235 = call { double, double } @Vadd_point(double %406, double %408, double %411, double %413)
  %414 = bitcast %struct.real_coordinate_type* %coerce236 to { double, double }*
  %415 = getelementptr { double, double }, { double, double }* %414, i32 0, i32 0
  %416 = extractvalue { double, double } %call235, 0
  store double %416, double* %415, align 8
  %417 = getelementptr { double, double }, { double, double }* %414, i32 0, i32 1
  %418 = extractvalue { double, double } %call235, 1
  store double %418, double* %417, align 8
  %419 = bitcast %struct.real_coordinate_type* %arrayidx230 to i8*
  %420 = bitcast %struct.real_coordinate_type* %coerce236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %419, i8* %420, i64 16, i32 8, i1 false)
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 1
  store i32 3, i32* %degree, align 4
  %421 = load %struct.vector_type*, %struct.vector_type** %A, align 8
  %422 = bitcast %struct.vector_type* %421 to i8*
  call void @g_free(i8* %422)
  %423 = bitcast %struct.spline_type* %agg.result to i8*
  %424 = bitcast %struct.spline_type* %spline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %423, i8* %424, i64 80, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @find_error(%struct.curve* %curve, %struct.spline_type* byval align 8 %spline, i32* %worst_point) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %worst_point.addr = alloca i32*, align 8
  %this_point = alloca i32, align 4
  %total_error = alloca double, align 8
  %worst_error = alloca double, align 8
  %curve_point = alloca %struct.real_coordinate_type, align 8
  %t = alloca double, align 8
  %spline_point = alloca %struct.real_coordinate_type, align 8
  %this_error = alloca double, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32* %worst_point, i32** %worst_point.addr, align 8
  store double 0.000000e+00, double* %total_error, align 8
  store double 0x3810000000000000, double* %worst_error, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32*, i32** %worst_point.addr, align 8
  store i32 %add, i32* %2, align 4
  store i32 0, i32* %this_point, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %this_point, align 4
  %4 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length1 = getelementptr inbounds %struct.curve, %struct.curve* %4, i32 0, i32 1
  %5 = load i32, i32* %length1, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %this_point, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %7, i32 0, i32 0
  %8 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %8, i64 %idxprom
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %9 = bitcast %struct.real_coordinate_type* %curve_point to i8*
  %10 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load i32, i32* %this_point, align 4
  %idxprom2 = zext i32 %11 to i64
  %12 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list3 = getelementptr inbounds %struct.curve, %struct.curve* %12, i32 0, i32 0
  %13 = load %struct.point_type*, %struct.point_type** %point_list3, align 8
  %arrayidx4 = getelementptr inbounds %struct.point_type, %struct.point_type* %13, i64 %idxprom2
  %t5 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx4, i32 0, i32 1
  %14 = load double, double* %t5, align 8
  store double %14, double* %t, align 8
  %15 = load double, double* %t, align 8
  %call = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %spline, double %15)
  %16 = bitcast %struct.real_coordinate_type* %spline_point to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = extractvalue { double, double } %call, 0
  store double %18, double* %17, align 8
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = extractvalue { double, double } %call, 1
  store double %20, double* %19, align 8
  %21 = bitcast %struct.real_coordinate_type* %curve_point to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %26 = bitcast %struct.real_coordinate_type* %spline_point to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call6 = call double @distance(double %23, double %25, double %28, double %30)
  store double %call6, double* %this_error, align 8
  %31 = load double, double* %this_error, align 8
  %32 = load double, double* %worst_error, align 8
  %cmp7 = fcmp ogt double %31, %32
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %33 = load i32, i32* %this_point, align 4
  %34 = load i32*, i32** %worst_point.addr, align 8
  store i32 %33, i32* %34, align 4
  %35 = load double, double* %this_error, align 8
  store double %35, double* %worst_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %36 = load double, double* %this_error, align 8
  %37 = load double, double* %total_error, align 8
  %add8 = fadd double %37, %36
  store double %add8, double* %total_error, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %this_point, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %this_point, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32*, i32** %worst_point.addr, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length9 = getelementptr inbounds %struct.curve, %struct.curve* %41, i32 0, i32 1
  %42 = load i32, i32* %length9, align 4
  %add10 = add nsw i32 %42, 1
  %cmp11 = icmp eq i32 %40, %add10
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %for.end
  %43 = load double, double* %total_error, align 8
  %call13 = call i32 @epsilon_equal(double %43, double 0.000000e+00)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  br label %if.end.16

if.else:                                          ; preds = %if.then.12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %if.end.18

if.else.17:                                       ; preds = %for.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  %44 = load double, double* %worst_error, align 8
  ret double %44
}

; Function Attrs: nounwind uwtable
define internal i32 @reparameterize(%struct.curve* %curve, %struct.spline_type* byval align 8 %S) #0 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct.curve*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %S1 = alloca %struct.spline_type, align 8
  %S2 = alloca %struct.spline_type, align 8
  %new_distance = alloca double, align 8
  %old_distance = alloca double, align 8
  %new_point = alloca %struct.real_coordinate_type, align 8
  %point = alloca %struct.real_coordinate_type, align 8
  %t = alloca double, align 8
  %S_t = alloca %struct.real_coordinate_type, align 8
  %S1_t = alloca %struct.real_coordinate_type, align 8
  %S2_t = alloca %struct.real_coordinate_type, align 8
  %d = alloca %struct.real_coordinate_type, align 8
  %numerator = alloca double, align 8
  %denominator = alloca double, align 8
  %coerce = alloca %struct.real_coordinate_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add i32 %1, 1
  %idxprom = zext i32 %add to i64
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %3 to i64
  %v2 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v2, i32 0, i64 %idxprom1
  %x4 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx3, i32 0, i32 0
  %4 = load double, double* %x4, align 8
  %sub = fsub double %2, %4
  %mul = fmul double 3.000000e+00, %sub
  %5 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %5 to i64
  %v6 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v6, i32 0, i64 %idxprom5
  %x8 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx7, i32 0, i32 0
  store double %mul, double* %x8, align 8
  %6 = load i32, i32* %i, align 4
  %add9 = add i32 %6, 1
  %idxprom10 = zext i32 %add9 to i64
  %v11 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v11, i32 0, i64 %idxprom10
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx12, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %8 to i64
  %v14 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v14, i32 0, i64 %idxprom13
  %y16 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx15, i32 0, i32 1
  %9 = load double, double* %y16, align 8
  %sub17 = fsub double %7, %9
  %mul18 = fmul double 3.000000e+00, %sub17
  %10 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %10 to i64
  %v20 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v20, i32 0, i64 %idxprom19
  %y22 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx21, i32 0, i32 1
  store double %mul18, double* %y22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %12 to i64
  %v24 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v24, i32 0, i64 %idxprom23
  %y26 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx25, i32 0, i32 1
  store double -1.000000e+00, double* %y26, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %13 to i64
  %v28 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v28, i32 0, i64 %idxprom27
  %x30 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx29, i32 0, i32 0
  store double -1.000000e+00, double* %x30, align 8
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 1
  store i32 2, i32* %degree, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.64, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp32 = icmp ult i32 %14, 2
  br i1 %cmp32, label %for.body.33, label %for.end.66

for.body.33:                                      ; preds = %for.cond.31
  %15 = load i32, i32* %i, align 4
  %add34 = add i32 %15, 1
  %idxprom35 = zext i32 %add34 to i64
  %v36 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v36, i32 0, i64 %idxprom35
  %x38 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx37, i32 0, i32 0
  %16 = load double, double* %x38, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %17 to i64
  %v40 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v40, i32 0, i64 %idxprom39
  %x42 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx41, i32 0, i32 0
  %18 = load double, double* %x42, align 8
  %sub43 = fsub double %16, %18
  %mul44 = fmul double 2.000000e+00, %sub43
  %19 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %19 to i64
  %v46 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v46, i32 0, i64 %idxprom45
  %x48 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx47, i32 0, i32 0
  store double %mul44, double* %x48, align 8
  %20 = load i32, i32* %i, align 4
  %add49 = add i32 %20, 1
  %idxprom50 = zext i32 %add49 to i64
  %v51 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v51, i32 0, i64 %idxprom50
  %y53 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx52, i32 0, i32 1
  %21 = load double, double* %y53, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %22 to i64
  %v55 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S1, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v55, i32 0, i64 %idxprom54
  %y57 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx56, i32 0, i32 1
  %23 = load double, double* %y57, align 8
  %sub58 = fsub double %21, %23
  %mul59 = fmul double 2.000000e+00, %sub58
  %24 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %24 to i64
  %v61 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v61, i32 0, i64 %idxprom60
  %y63 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx62, i32 0, i32 1
  store double %mul59, double* %y63, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.33
  %25 = load i32, i32* %i, align 4
  %inc65 = add i32 %25, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.31

for.end.66:                                       ; preds = %for.cond.31
  %v67 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v67, i32 0, i64 3
  %y69 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx68, i32 0, i32 1
  store double -1.000000e+00, double* %y69, align 8
  %v70 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v70, i32 0, i64 3
  %x72 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx71, i32 0, i32 0
  store double -1.000000e+00, double* %x72, align 8
  %v73 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v73, i32 0, i64 2
  %y75 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx74, i32 0, i32 1
  store double -1.000000e+00, double* %y75, align 8
  %v76 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v76, i32 0, i64 2
  %x78 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx77, i32 0, i32 0
  store double -1.000000e+00, double* %x78, align 8
  %degree79 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %S2, i32 0, i32 1
  store i32 1, i32* %degree79, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.134, %for.end.66
  %26 = load i32, i32* %p, align 4
  %27 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %27, i32 0, i32 1
  %28 = load i32, i32* %length, align 4
  %cmp81 = icmp ult i32 %26, %28
  br i1 %cmp81, label %for.body.82, label %for.end.136

for.body.82:                                      ; preds = %for.cond.80
  %29 = load i32, i32* %p, align 4
  %idxprom83 = zext i32 %29 to i64
  %30 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %30, i32 0, i32 0
  %31 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx84 = getelementptr inbounds %struct.point_type, %struct.point_type* %31, i64 %idxprom83
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx84, i32 0, i32 0
  %32 = bitcast %struct.real_coordinate_type* %point to i8*
  %33 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = load i32, i32* %p, align 4
  %idxprom85 = zext i32 %34 to i64
  %35 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list86 = getelementptr inbounds %struct.curve, %struct.curve* %35, i32 0, i32 0
  %36 = load %struct.point_type*, %struct.point_type** %point_list86, align 8
  %arrayidx87 = getelementptr inbounds %struct.point_type, %struct.point_type* %36, i64 %idxprom85
  %t88 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx87, i32 0, i32 1
  %37 = load double, double* %t88, align 8
  store double %37, double* %t, align 8
  %38 = load double, double* %t, align 8
  %call = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %S, double %38)
  %39 = bitcast %struct.real_coordinate_type* %S_t to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call, 1
  store double %43, double* %42, align 8
  %44 = load double, double* %t, align 8
  %call89 = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %S1, double %44)
  %45 = bitcast %struct.real_coordinate_type* %S1_t to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = extractvalue { double, double } %call89, 0
  store double %47, double* %46, align 8
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = extractvalue { double, double } %call89, 1
  store double %49, double* %48, align 8
  %50 = load double, double* %t, align 8
  %call90 = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %S2, double %50)
  %51 = bitcast %struct.real_coordinate_type* %S2_t to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = extractvalue { double, double } %call90, 0
  store double %53, double* %52, align 8
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = extractvalue { double, double } %call90, 1
  store double %55, double* %54, align 8
  %x91 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S_t, i32 0, i32 0
  %56 = load double, double* %x91, align 8
  %x92 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %point, i32 0, i32 0
  %57 = load double, double* %x92, align 8
  %sub93 = fsub double %56, %57
  %x94 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 0
  store double %sub93, double* %x94, align 8
  %y95 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S_t, i32 0, i32 1
  %58 = load double, double* %y95, align 8
  %y96 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %point, i32 0, i32 1
  %59 = load double, double* %y96, align 8
  %sub97 = fsub double %58, %59
  %y98 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 1
  store double %sub97, double* %y98, align 8
  %x99 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 0
  %60 = load double, double* %x99, align 8
  %x100 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 0
  %61 = load double, double* %x100, align 8
  %mul101 = fmul double %60, %61
  %y102 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 1
  %62 = load double, double* %y102, align 8
  %y103 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 1
  %63 = load double, double* %y103, align 8
  %mul104 = fmul double %62, %63
  %add105 = fadd double %mul101, %mul104
  store double %add105, double* %numerator, align 8
  %x106 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 0
  %64 = load double, double* %x106, align 8
  %x107 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 0
  %65 = load double, double* %x107, align 8
  %mul108 = fmul double %64, %65
  %x109 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 0
  %66 = load double, double* %x109, align 8
  %x110 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S2_t, i32 0, i32 0
  %67 = load double, double* %x110, align 8
  %mul111 = fmul double %66, %67
  %add112 = fadd double %mul108, %mul111
  %y113 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 1
  %68 = load double, double* %y113, align 8
  %y114 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S1_t, i32 0, i32 1
  %69 = load double, double* %y114, align 8
  %mul115 = fmul double %68, %69
  %add116 = fadd double %add112, %mul115
  %y117 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %d, i32 0, i32 1
  %70 = load double, double* %y117, align 8
  %y118 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %S2_t, i32 0, i32 1
  %71 = load double, double* %y118, align 8
  %mul119 = fmul double %70, %71
  %add120 = fadd double %add116, %mul119
  store double %add120, double* %denominator, align 8
  %72 = bitcast %struct.real_coordinate_type* %S_t to { double, double }*
  %73 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 1
  %75 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = load double, double* %75, align 1
  %77 = bitcast %struct.real_coordinate_type* %point to { double, double }*
  %78 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = load double, double* %78, align 1
  %80 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = load double, double* %80, align 1
  %call121 = call double @distance(double %74, double %76, double %79, double %81)
  store double %call121, double* %old_distance, align 8
  %82 = load double, double* %numerator, align 8
  %83 = load double, double* %denominator, align 8
  %div = fdiv double %82, %83
  %84 = load i32, i32* %p, align 4
  %idxprom122 = zext i32 %84 to i64
  %85 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list123 = getelementptr inbounds %struct.curve, %struct.curve* %85, i32 0, i32 0
  %86 = load %struct.point_type*, %struct.point_type** %point_list123, align 8
  %arrayidx124 = getelementptr inbounds %struct.point_type, %struct.point_type* %86, i64 %idxprom122
  %t125 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx124, i32 0, i32 1
  %87 = load double, double* %t125, align 8
  %sub126 = fsub double %87, %div
  store double %sub126, double* %t125, align 8
  %88 = load i32, i32* %p, align 4
  %idxprom127 = zext i32 %88 to i64
  %89 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list128 = getelementptr inbounds %struct.curve, %struct.curve* %89, i32 0, i32 0
  %90 = load %struct.point_type*, %struct.point_type** %point_list128, align 8
  %arrayidx129 = getelementptr inbounds %struct.point_type, %struct.point_type* %90, i64 %idxprom127
  %t130 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx129, i32 0, i32 1
  %91 = load double, double* %t130, align 8
  %call131 = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %S, double %91)
  %92 = bitcast %struct.real_coordinate_type* %coerce to { double, double }*
  %93 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 0
  %94 = extractvalue { double, double } %call131, 0
  store double %94, double* %93, align 8
  %95 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 1
  %96 = extractvalue { double, double } %call131, 1
  store double %96, double* %95, align 8
  %97 = bitcast %struct.real_coordinate_type* %new_point to i8*
  %98 = bitcast %struct.real_coordinate_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false)
  %99 = bitcast %struct.real_coordinate_type* %new_point to { double, double }*
  %100 = getelementptr { double, double }, { double, double }* %99, i32 0, i32 0
  %101 = load double, double* %100, align 1
  %102 = getelementptr { double, double }, { double, double }* %99, i32 0, i32 1
  %103 = load double, double* %102, align 1
  %104 = bitcast %struct.real_coordinate_type* %point to { double, double }*
  %105 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 0
  %106 = load double, double* %105, align 1
  %107 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 1
  %108 = load double, double* %107, align 1
  %call132 = call double @distance(double %101, double %103, double %106, double %108)
  store double %call132, double* %new_distance, align 8
  %109 = load double, double* %new_distance, align 8
  %110 = load double, double* %old_distance, align 8
  %cmp133 = fcmp ogt double %109, %110
  br i1 %cmp133, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.82
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.82
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end
  %111 = load i32, i32* %p, align 4
  %inc135 = add i32 %111, 1
  store i32 %inc135, i32* %p, align 4
  br label %for.cond.80

for.end.136:                                      ; preds = %for.cond.80
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.136, %if.then
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @spline_linear_enough(%struct.spline_type* %spline, %struct.curve* %curve) #0 {
entry:
  %spline.addr = alloca %struct.spline_type*, align 8
  %curve.addr = alloca %struct.curve*, align 8
  %A = alloca double, align 8
  %B = alloca double, align 8
  %C = alloca double, align 8
  %slope = alloca double, align 8
  %this_point = alloca i32, align 4
  %distance = alloca double, align 8
  %t = alloca double, align 8
  %spline_point = alloca %struct.real_coordinate_type, align 8
  store %struct.spline_type* %spline, %struct.spline_type** %spline.addr, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store double 0.000000e+00, double* %distance, align 8
  %0 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v1 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v1, i32 0, i64 3
  %x3 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx2, i32 0, i32 0
  %3 = load double, double* %x3, align 8
  %call = call i32 @epsilon_equal(double %1, double %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %A, align 8
  store double 0.000000e+00, double* %B, align 8
  %4 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v4 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v4, i32 0, i64 0
  %x6 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx5, i32 0, i32 0
  %5 = load double, double* %x6, align 8
  %sub = fsub double -0.000000e+00, %5
  store double %sub, double* %C, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v7 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v7, i32 0, i64 3
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx8, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v9 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v9, i32 0, i64 0
  %y11 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx10, i32 0, i32 1
  %9 = load double, double* %y11, align 8
  %sub12 = fsub double %7, %9
  %10 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v13 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %10, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v13, i32 0, i64 3
  %x15 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx14, i32 0, i32 0
  %11 = load double, double* %x15, align 8
  %12 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v16 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %12, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v16, i32 0, i64 0
  %x18 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx17, i32 0, i32 0
  %13 = load double, double* %x18, align 8
  %sub19 = fsub double %11, %13
  %div = fdiv double %sub12, %sub19
  store double %div, double* %slope, align 8
  %14 = load double, double* %slope, align 8
  %sub20 = fsub double -0.000000e+00, %14
  store double %sub20, double* %A, align 8
  store double 1.000000e+00, double* %B, align 8
  %15 = load double, double* %slope, align 8
  %16 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v21 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %16, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v21, i32 0, i64 0
  %x23 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx22, i32 0, i32 0
  %17 = load double, double* %x23, align 8
  %mul = fmul double %15, %17
  %18 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %v24 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %18, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v24, i32 0, i64 0
  %y26 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx25, i32 0, i32 1
  %19 = load double, double* %y26, align 8
  %sub27 = fsub double %mul, %19
  store double %sub27, double* %C, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %this_point, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %this_point, align 4
  %21 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %21, i32 0, i32 1
  %22 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %this_point, align 4
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %24, i32 0, i32 0
  %25 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx28 = getelementptr inbounds %struct.point_type, %struct.point_type* %25, i64 %idxprom
  %t29 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx28, i32 0, i32 1
  %26 = load double, double* %t29, align 8
  store double %26, double* %t, align 8
  %27 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %28 = load double, double* %t, align 8
  %call30 = call { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %27, double %28)
  %29 = bitcast %struct.real_coordinate_type* %spline_point to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call30, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call30, 1
  store double %33, double* %32, align 8
  %34 = load double, double* %A, align 8
  %x31 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %spline_point, i32 0, i32 0
  %35 = load double, double* %x31, align 8
  %mul32 = fmul double %34, %35
  %36 = load double, double* %B, align 8
  %y33 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %spline_point, i32 0, i32 1
  %37 = load double, double* %y33, align 8
  %mul34 = fmul double %36, %37
  %add = fadd double %mul32, %mul34
  %38 = load double, double* %C, align 8
  %add35 = fadd double %add, %38
  %call36 = call double @fabs(double %add35) #6
  %39 = load double, double* %A, align 8
  %40 = load double, double* %A, align 8
  %mul37 = fmul double %39, %40
  %41 = load double, double* %B, align 8
  %42 = load double, double* %B, align 8
  %mul38 = fmul double %41, %42
  %add39 = fadd double %mul37, %mul38
  %call40 = call double @sqrt(double %add39) #2
  %div41 = fdiv double %call36, %call40
  %43 = load double, double* %distance, align 8
  %add42 = fadd double %43, %div41
  store double %add42, double* %distance, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %this_point, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %this_point, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length43 = getelementptr inbounds %struct.curve, %struct.curve* %45, i32 0, i32 1
  %46 = load i32, i32* %length43, align 4
  %conv = sitofp i32 %46 to double
  %47 = load double, double* %distance, align 8
  %div44 = fdiv double %47, %conv
  store double %div44, double* %distance, align 8
  %48 = load double, double* %distance, align 8
  %49 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length45 = getelementptr inbounds %struct.curve, %struct.curve* %49, i32 0, i32 1
  %50 = load i32, i32* %length45, align 4
  %conv46 = sitofp i32 %50 to double
  %div47 = fdiv double %48, %conv46
  %51 = load %struct.spline_type*, %struct.spline_type** %spline.addr, align 8
  %linearity = getelementptr inbounds %struct.spline_type, %struct.spline_type* %51, i32 0, i32 2
  store double %div47, double* %linearity, align 8
  %52 = load double, double* %distance, align 8
  %53 = load double, double* @line_threshold, align 8
  %cmp48 = fcmp olt double %52, %53
  %conv49 = zext i1 %cmp48 to i32
  ret i32 %conv49
}

declare %struct.curve* @new_curve() #1

; Function Attrs: nounwind uwtable
define internal i32 @find_subdivision(%struct.curve* %curve, i32 %initial) #0 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct.curve*, align 8
  %initial.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_done = alloca i32, align 4
  %best_point = alloca i32, align 4
  %best = alloca %struct.vector_type, align 8
  %search = alloca i32, align 4
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 %initial, i32* %initial.addr, align 4
  store i32 -1, i32* %best_point, align 4
  %0 = bitcast %struct.vector_type* %best to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.vector_type* @find_subdivision.best to i8*), i64 16, i32 8, i1 false)
  %1 = load double, double* @subdivide_search, align 8
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %1, %conv
  %conv1 = fptoui double %mul to i32
  store i32 %conv1, i32* %search, align 4
  %4 = load i32, i32* %initial.addr, align 4
  store i32 %4, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.13, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %n_done, align 4
  %7 = load i32, i32* %search, align 4
  %cmp3 = icmp ult i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call = call i32 @test_subdivision_point(%struct.curve* %9, i32 %10, %struct.vector_type* %best)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %best_point, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %cond.true, label %cond.false.11

cond.true:                                        ; preds = %for.inc
  %13 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %13, i32 0, i32 2
  %14 = load i32, i32* %cyclic, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false

cond.true.8:                                      ; preds = %cond.true
  %15 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length9 = getelementptr inbounds %struct.curve, %struct.curve* %15, i32 0, i32 1
  %16 = load i32, i32* %length9, align 4
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, %17
  %sub10 = sub nsw i32 %add, 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.8
  %cond = phi i32 [ %sub10, %cond.true.8 ], [ -1, %cond.false ]
  br label %cond.end.13

cond.false.11:                                    ; preds = %for.inc
  %18 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 %18, 1
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.end
  %cond14 = phi i32 [ %cond, %cond.end ], [ %sub12, %cond.false.11 ]
  store i32 %cond14, i32* %i, align 4
  %19 = load i32, i32* %n_done, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %n_done, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* %best_point, align 4
  %cmp15 = icmp ne i32 %20, -1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  %21 = load i32, i32* %best_point, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.end
  %22 = load i32, i32* %initial.addr, align 4
  %add19 = add i32 %22, 1
  %23 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length20 = getelementptr inbounds %struct.curve, %struct.curve* %23, i32 0, i32 1
  %24 = load i32, i32* %length20, align 4
  %cmp21 = icmp uge i32 %add19, %24
  br i1 %cmp21, label %cond.true.23, label %cond.false.33

cond.true.23:                                     ; preds = %if.end.18
  %25 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic24 = getelementptr inbounds %struct.curve, %struct.curve* %25, i32 0, i32 2
  %26 = load i32, i32* %cyclic24, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %cond.true.23
  %27 = load i32, i32* %initial.addr, align 4
  %add27 = add i32 %27, 1
  %28 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length28 = getelementptr inbounds %struct.curve, %struct.curve* %28, i32 0, i32 1
  %29 = load i32, i32* %length28, align 4
  %rem = urem i32 %add27, %29
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.true.23
  %30 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length30 = getelementptr inbounds %struct.curve, %struct.curve* %30, i32 0, i32 1
  %31 = load i32, i32* %length30, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.26
  %cond32 = phi i32 [ %rem, %cond.true.26 ], [ %31, %cond.false.29 ]
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.end.18
  %32 = load i32, i32* %initial.addr, align 4
  %add34 = add i32 %32, 1
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.end.31
  %cond36 = phi i32 [ %cond32, %cond.end.31 ], [ %add34, %cond.false.33 ]
  store i32 %cond36, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %cond.end.69, %cond.end.35
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length38 = getelementptr inbounds %struct.curve, %struct.curve* %34, i32 0, i32 1
  %35 = load i32, i32* %length38, align 4
  %sub39 = sub nsw i32 %35, 1
  %cmp40 = icmp ult i32 %33, %sub39
  br i1 %cmp40, label %land.rhs.42, label %land.end.45

land.rhs.42:                                      ; preds = %for.cond.37
  %36 = load i32, i32* %n_done, align 4
  %37 = load i32, i32* %search, align 4
  %cmp43 = icmp ult i32 %36, %37
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.42, %for.cond.37
  %38 = phi i1 [ false, %for.cond.37 ], [ %cmp43, %land.rhs.42 ]
  br i1 %38, label %for.body.46, label %for.end.72

for.body.46:                                      ; preds = %land.end.45
  %39 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call47 = call i32 @test_subdivision_point(%struct.curve* %39, i32 %40, %struct.vector_type* %best)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.46
  %41 = load i32, i32* %i, align 4
  store i32 %41, i32* %best_point, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.body.46
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %42 = load i32, i32* %i, align 4
  %add52 = add i32 %42, 1
  %43 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length53 = getelementptr inbounds %struct.curve, %struct.curve* %43, i32 0, i32 1
  %44 = load i32, i32* %length53, align 4
  %cmp54 = icmp uge i32 %add52, %44
  br i1 %cmp54, label %cond.true.56, label %cond.false.67

cond.true.56:                                     ; preds = %for.inc.51
  %45 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %cyclic57 = getelementptr inbounds %struct.curve, %struct.curve* %45, i32 0, i32 2
  %46 = load i32, i32* %cyclic57, align 4
  %tobool58 = icmp ne i32 %46, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.63

cond.true.59:                                     ; preds = %cond.true.56
  %47 = load i32, i32* %i, align 4
  %add60 = add i32 %47, 1
  %48 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length61 = getelementptr inbounds %struct.curve, %struct.curve* %48, i32 0, i32 1
  %49 = load i32, i32* %length61, align 4
  %rem62 = urem i32 %add60, %49
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.true.56
  %50 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length64 = getelementptr inbounds %struct.curve, %struct.curve* %50, i32 0, i32 1
  %51 = load i32, i32* %length64, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.59
  %cond66 = phi i32 [ %rem62, %cond.true.59 ], [ %51, %cond.false.63 ]
  br label %cond.end.69

cond.false.67:                                    ; preds = %for.inc.51
  %52 = load i32, i32* %i, align 4
  %add68 = add i32 %52, 1
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.end.65
  %cond70 = phi i32 [ %cond66, %cond.end.65 ], [ %add68, %cond.false.67 ]
  store i32 %cond70, i32* %i, align 4
  %53 = load i32, i32* %n_done, align 4
  %inc71 = add i32 %53, 1
  store i32 %inc71, i32* %n_done, align 4
  br label %for.cond.37

for.end.72:                                       ; preds = %land.end.45
  %54 = load i32, i32* %best_point, align 4
  %cmp73 = icmp eq i32 %54, -1
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %for.end.72
  %55 = load i32, i32* %initial.addr, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %for.end.72
  %56 = load i32, i32* %best_point, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %55, %cond.true.75 ], [ %56, %cond.false.76 ]
  store i32 %cond78, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.77, %if.then.17
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @find_half_tangent(%struct.curve* %c, i32 %to_start_point, i32* %n_points) #0 {
entry:
  %retval = alloca %struct.vector_type, align 8
  %c.addr = alloca %struct.curve*, align 8
  %to_start_point.addr = alloca i32, align 4
  %n_points.addr = alloca i32*, align 8
  %p = alloca i32, align 4
  %factor = alloca i32, align 4
  %tangent_index = alloca i32, align 4
  %tangent_point = alloca %struct.real_coordinate_type, align 8
  %tangent = alloca %struct.vector_type, align 8
  %this_index = alloca i32, align 4
  %this_point = alloca %struct.real_coordinate_type, align 8
  %agg.tmp = alloca %struct.vector_type, align 8
  %agg.tmp12 = alloca %struct.vector_type, align 8
  %coerce = alloca %struct.vector_type, align 8
  store %struct.curve* %c, %struct.curve** %c.addr, align 8
  store i32 %to_start_point, i32* %to_start_point.addr, align 4
  store i32* %n_points, i32** %n_points.addr, align 8
  %0 = load i32, i32* %to_start_point.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 -1
  store i32 %cond, i32* %factor, align 4
  %1 = load i32, i32* %to_start_point.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.curve*, %struct.curve** %c.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %3, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond2, i32* %tangent_index, align 4
  %4 = load i32, i32* %tangent_index, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.curve*, %struct.curve** %c.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %5, i32 0, i32 0
  %6 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %6, i64 %idxprom
  %coord = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %7 = bitcast %struct.real_coordinate_type* %tangent_point to i8*
  %8 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %tangent, i32 0, i32 0
  store double 0.000000e+00, double* %dx, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %tangent, i32 0, i32 1
  store double 0.000000e+00, double* %dy, align 8
  store i32 1, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %p, align 4
  %10 = load i32, i32* @tangent_surround, align 4
  %cmp = icmp ule i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %p, align 4
  %12 = load i32, i32* %factor, align 4
  %mul = mul i32 %11, %12
  %13 = load i32, i32* %tangent_index, align 4
  %add = add i32 %mul, %13
  store i32 %add, i32* %this_index, align 4
  %14 = load i32, i32* %this_index, align 4
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %this_index, align 4
  %16 = load %struct.curve*, %struct.curve** %c.addr, align 8
  %length4 = getelementptr inbounds %struct.curve, %struct.curve* %16, i32 0, i32 1
  %17 = load i32, i32* %length4, align 4
  %cmp5 = icmp sge i32 %15, %17
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, i32* %p, align 4
  %19 = load i32, i32* %factor, align 4
  %mul6 = mul i32 %18, %19
  %20 = load i32, i32* %tangent_index, align 4
  %add7 = add i32 %mul6, %20
  %idxprom8 = zext i32 %add7 to i64
  %21 = load %struct.curve*, %struct.curve** %c.addr, align 8
  %point_list9 = getelementptr inbounds %struct.curve, %struct.curve* %21, i32 0, i32 0
  %22 = load %struct.point_type*, %struct.point_type** %point_list9, align 8
  %arrayidx10 = getelementptr inbounds %struct.point_type, %struct.point_type* %22, i64 %idxprom8
  %coord11 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx10, i32 0, i32 0
  %23 = bitcast %struct.real_coordinate_type* %this_point to i8*
  %24 = bitcast %struct.real_coordinate_type* %coord11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %25 = bitcast %struct.real_coordinate_type* %this_point to { double, double }*
  %26 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 0
  %27 = load double, double* %26, align 1
  %28 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 1
  %29 = load double, double* %28, align 1
  %30 = bitcast %struct.real_coordinate_type* %tangent_point to { double, double }*
  %31 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 0
  %32 = load double, double* %31, align 1
  %33 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 1
  %34 = load double, double* %33, align 1
  %call = call { double, double } @Psubtract(double %27, double %29, double %32, double %34)
  %35 = bitcast %struct.vector_type* %agg.tmp12 to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = extractvalue { double, double } %call, 0
  store double %37, double* %36, align 8
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = extractvalue { double, double } %call, 1
  store double %39, double* %38, align 8
  %40 = load i32, i32* %factor, align 4
  %conv = sitofp i32 %40 to double
  %41 = bitcast %struct.vector_type* %agg.tmp12 to { double, double }*
  %42 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = load double, double* %42, align 1
  %44 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 1
  %45 = load double, double* %44, align 1
  %call13 = call { double, double } @Vmult_scalar(double %43, double %45, double %conv)
  %46 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = extractvalue { double, double } %call13, 0
  store double %48, double* %47, align 8
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = extractvalue { double, double } %call13, 1
  store double %50, double* %49, align 8
  %51 = bitcast %struct.vector_type* %tangent to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = load double, double* %52, align 1
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = load double, double* %54, align 1
  %56 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %57 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 0
  %58 = load double, double* %57, align 1
  %59 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 1
  %60 = load double, double* %59, align 1
  %call14 = call { double, double } @Vadd(double %53, double %55, double %58, double %60)
  %61 = bitcast %struct.vector_type* %coerce to { double, double }*
  %62 = getelementptr { double, double }, { double, double }* %61, i32 0, i32 0
  %63 = extractvalue { double, double } %call14, 0
  store double %63, double* %62, align 8
  %64 = getelementptr { double, double }, { double, double }* %61, i32 0, i32 1
  %65 = extractvalue { double, double } %call14, 1
  store double %65, double* %64, align 8
  %66 = bitcast %struct.vector_type* %tangent to i8*
  %67 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false)
  %68 = load i32*, i32** %n_points.addr, align 8
  %69 = load i32, i32* %68, align 4
  %inc = add i32 %69, 1
  store i32 %inc, i32* %68, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %70 = load i32, i32* %p, align 4
  %inc15 = add i32 %70, 1
  store i32 %inc15, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %71 = bitcast %struct.vector_type* %retval to i8*
  %72 = bitcast %struct.vector_type* %tangent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false)
  %73 = bitcast %struct.vector_type* %retval to { double, double }*
  %74 = load { double, double }, { double, double }* %73, align 8
  ret { double, double } %74
}

declare { double, double } @Vmult_scalar(double, double, double) #1

declare double @distance(double, double, double, double) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare { double, double } @make_vector(double, double) #1

declare double @Vdot(double, double, double, double) #1

declare { double, double } @Vsubtract_point(double, double, double, double) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare { double, double } @Vadd_point(double, double, double, double) #1

declare void @g_free(i8*) #1

declare { double, double } @evaluate_spline(%struct.spline_type* byval align 8, double) #1

declare i32 @epsilon_equal(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @test_subdivision_point(%struct.curve* %curve, i32 %index, %struct.vector_type* %best) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  %index.addr = alloca i32, align 4
  %best.addr = alloca %struct.vector_type*, align 8
  %count = alloca i32, align 4
  %in = alloca %struct.vector_type, align 8
  %out = alloca %struct.vector_type, align 8
  %join = alloca i32, align 4
  %coerce = alloca %struct.vector_type, align 8
  %coerce2 = alloca %struct.vector_type, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.vector_type* %best, %struct.vector_type** %best.addr, align 8
  store i32 0, i32* %join, align 4
  %0 = load i32, i32* %index.addr, align 4
  %1 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %2 = load i32, i32* @subdivide_surround, align 4
  call void @find_curve_vectors(i32 %0, %struct.curve* %1, i32 %2, %struct.vector_type* %in, %struct.vector_type* %out, i32* %count)
  %3 = load i32, i32* %count, align 4
  %4 = load i32, i32* @subdivide_surround, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end.80

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.vector_type* %in to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call = call { double, double } @Vabs(double %7, double %9)
  %10 = bitcast %struct.vector_type* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.vector_type* %in to i8*
  %16 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = bitcast %struct.vector_type* %out to { double, double }*
  %18 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 0
  %19 = load double, double* %18, align 1
  %20 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 1
  %21 = load double, double* %20, align 1
  %call1 = call { double, double } @Vabs(double %19, double %21)
  %22 = bitcast %struct.vector_type* %coerce2 to { double, double }*
  %23 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 0
  %24 = extractvalue { double, double } %call1, 0
  store double %24, double* %23, align 8
  %25 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 1
  %26 = extractvalue { double, double } %call1, 1
  store double %26, double* %25, align 8
  %27 = bitcast %struct.vector_type* %out to i8*
  %28 = bitcast %struct.vector_type* %coerce2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %29 = load double, double* %dx, align 8
  %30 = load double, double* @subdivide_threshold, align 8
  %cmp3 = fcmp olt double %29, %30
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %31 = load double, double* %dy, align 8
  %32 = load double, double* @subdivide_threshold, align 8
  %cmp4 = fcmp ogt double %31, %32
  br i1 %cmp4, label %land.lhs.true.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %dy5 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %33 = load double, double* %dy5, align 8
  %34 = load double, double* @subdivide_threshold, align 8
  %cmp6 = fcmp olt double %33, %34
  br i1 %cmp6, label %land.lhs.true.7, label %lor.rhs

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %dx8 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %35 = load double, double* %dx8, align 8
  %36 = load double, double* @subdivide_threshold, align 8
  %cmp9 = fcmp ogt double %35, %36
  br i1 %cmp9, label %land.lhs.true.10, label %lor.rhs

land.lhs.true.10:                                 ; preds = %land.lhs.true.7, %land.lhs.true
  %dx11 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %37 = load double, double* %dx11, align 8
  %38 = load double, double* @subdivide_threshold, align 8
  %cmp12 = fcmp ogt double %37, %38
  br i1 %cmp12, label %land.lhs.true.13, label %lor.rhs

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %dy14 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %39 = load double, double* %dy14, align 8
  %40 = load double, double* @subdivide_threshold, align 8
  %cmp15 = fcmp ogt double %39, %40
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.7, %lor.lhs.false
  %dx16 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %41 = load double, double* %dx16, align 8
  %42 = load double, double* @subdivide_threshold, align 8
  %cmp17 = fcmp olt double %41, %42
  br i1 %cmp17, label %land.lhs.true.18, label %lor.lhs.false.21

land.lhs.true.18:                                 ; preds = %lor.rhs
  %dy19 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %43 = load double, double* %dy19, align 8
  %44 = load double, double* @subdivide_threshold, align 8
  %cmp20 = fcmp ogt double %43, %44
  br i1 %cmp20, label %land.rhs, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.18, %lor.rhs
  %dy22 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %45 = load double, double* %dy22, align 8
  %46 = load double, double* @subdivide_threshold, align 8
  %cmp23 = fcmp olt double %45, %46
  br i1 %cmp23, label %land.lhs.true.24, label %land.end.32

land.lhs.true.24:                                 ; preds = %lor.lhs.false.21
  %dx25 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %47 = load double, double* %dx25, align 8
  %48 = load double, double* @subdivide_threshold, align 8
  %cmp26 = fcmp ogt double %47, %48
  br i1 %cmp26, label %land.rhs, label %land.end.32

land.rhs:                                         ; preds = %land.lhs.true.24, %land.lhs.true.18
  %dx27 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %49 = load double, double* %dx27, align 8
  %50 = load double, double* @subdivide_threshold, align 8
  %cmp28 = fcmp ogt double %49, %50
  br i1 %cmp28, label %land.rhs.29, label %land.end

land.rhs.29:                                      ; preds = %land.rhs
  %dy30 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %51 = load double, double* %dy30, align 8
  %52 = load double, double* @subdivide_threshold, align 8
  %cmp31 = fcmp ogt double %51, %52
  br label %land.end

land.end:                                         ; preds = %land.rhs.29, %land.rhs
  %53 = phi i1 [ false, %land.rhs ], [ %cmp31, %land.rhs.29 ]
  br label %land.end.32

land.end.32:                                      ; preds = %land.end, %land.lhs.true.24, %lor.lhs.false.21
  %54 = phi i1 [ false, %land.lhs.true.24 ], [ false, %lor.lhs.false.21 ], [ %53, %land.end ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.32, %land.lhs.true.13
  %55 = phi i1 [ true, %land.lhs.true.13 ], [ %54, %land.end.32 ]
  %lor.ext = zext i1 %55 to i32
  store i32 %lor.ext, i32* %join, align 4
  %56 = load i32, i32* %join, align 4
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then.33, label %if.end.79

if.then.33:                                       ; preds = %lor.end
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %dx34 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %57 = load double, double* %dx34, align 8
  %58 = load double, double* @subdivide_threshold, align 8
  %cmp35 = fcmp olt double %57, %58
  br i1 %cmp35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %do.body
  %dx37 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %59 = load double, double* %dx37, align 8
  %60 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dx38 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %60, i32 0, i32 0
  %61 = load double, double* %dx38, align 8
  %cmp39 = fcmp olt double %59, %61
  br i1 %cmp39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.lhs.true.36
  %dx41 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 0
  %62 = load double, double* %dx41, align 8
  %63 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dx42 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %63, i32 0, i32 0
  store double %62, double* %dx42, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.lhs.true.36, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.43

do.body.43:                                       ; preds = %do.end
  %dy44 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %64 = load double, double* %dy44, align 8
  %65 = load double, double* @subdivide_threshold, align 8
  %cmp45 = fcmp olt double %64, %65
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.53

land.lhs.true.46:                                 ; preds = %do.body.43
  %dy47 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %66 = load double, double* %dy47, align 8
  %67 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dy48 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %67, i32 0, i32 1
  %68 = load double, double* %dy48, align 8
  %cmp49 = fcmp olt double %66, %68
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %land.lhs.true.46
  %dy51 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %in, i32 0, i32 1
  %69 = load double, double* %dy51, align 8
  %70 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dy52 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %70, i32 0, i32 1
  store double %69, double* %dy52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %land.lhs.true.46, %do.body.43
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %dx56 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %71 = load double, double* %dx56, align 8
  %72 = load double, double* @subdivide_threshold, align 8
  %cmp57 = fcmp olt double %71, %72
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %do.body.55
  %dx59 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %73 = load double, double* %dx59, align 8
  %74 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dx60 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %74, i32 0, i32 0
  %75 = load double, double* %dx60, align 8
  %cmp61 = fcmp olt double %73, %75
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %land.lhs.true.58
  %dx63 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 0
  %76 = load double, double* %dx63, align 8
  %77 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dx64 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %77, i32 0, i32 0
  store double %76, double* %dx64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %land.lhs.true.58, %do.body.55
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %dy68 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %78 = load double, double* %dy68, align 8
  %79 = load double, double* @subdivide_threshold, align 8
  %cmp69 = fcmp olt double %78, %79
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %do.body.67
  %dy71 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %80 = load double, double* %dy71, align 8
  %81 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dy72 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %81, i32 0, i32 1
  %82 = load double, double* %dy72, align 8
  %cmp73 = fcmp olt double %80, %82
  br i1 %cmp73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %land.lhs.true.70
  %dy75 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %out, i32 0, i32 1
  %83 = load double, double* %dy75, align 8
  %84 = load %struct.vector_type*, %struct.vector_type** %best.addr, align 8
  %dy76 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %84, i32 0, i32 1
  store double %83, double* %dy76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %land.lhs.true.70, %do.body.67
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %lor.end
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %entry
  %85 = load i32, i32* %join, align 4
  ret i32 %85
}

declare { double, double } @Vabs(double, double) #1

declare { %struct.curve_list_type*, i32 } @new_curve_list_array() #1

declare { %struct.curve**, i64 } @new_curve_list() #1

; Function Attrs: nounwind uwtable
define internal { i32*, i32 } @find_corners(%struct.coordinate_type* %pixel_outline.coerce0, i64 %pixel_outline.coerce1) #0 {
entry:
  %retval = alloca %struct.index_list, align 8
  %pixel_outline = alloca %struct.pixel_outline_type, align 8
  %p = alloca i32, align 4
  %corner_list = alloca %struct.index_list, align 8
  %corner_angle = alloca double, align 8
  %in_vector = alloca %struct.vector_type, align 8
  %out_vector = alloca %struct.vector_type, align 8
  %best_corner_angle = alloca double, align 8
  %best_corner_index = alloca i32, align 4
  %equally_good_list = alloca %struct.index_list, align 8
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  %coerce = alloca %struct.index_list, align 8
  %i27 = alloca i32, align 4
  %0 = bitcast %struct.pixel_outline_type* %pixel_outline to { %struct.coordinate_type*, i64 }*
  %1 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 0
  store %struct.coordinate_type* %pixel_outline.coerce0, %struct.coordinate_type** %1
  %2 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 1
  store i64 %pixel_outline.coerce1, i64* %2
  %call = call { i32*, i32 } @new_index_list()
  %3 = bitcast %struct.index_list* %corner_list to { i32*, i32 }*
  %4 = getelementptr { i32*, i32 }, { i32*, i32 }* %3, i32 0, i32 0
  %5 = extractvalue { i32*, i32 } %call, 0
  store i32* %5, i32** %4, align 8
  %6 = getelementptr { i32*, i32 }, { i32*, i32 }* %3, i32 0, i32 1
  %7 = extractvalue { i32*, i32 } %call, 1
  store i32 %7, i32* %6, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %8 = load i32, i32* %p, align 4
  %length = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  %9 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %p, align 4
  %11 = bitcast %struct.pixel_outline_type* %pixel_outline to { %struct.coordinate_type*, i64 }*
  %12 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %11, i32 0, i32 0
  %13 = load %struct.coordinate_type*, %struct.coordinate_type** %12, align 1
  %14 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 1
  call void @find_vectors(i32 %10, %struct.coordinate_type* %13, i64 %15, %struct.vector_type* %in_vector, %struct.vector_type* %out_vector)
  %16 = bitcast %struct.vector_type* %in_vector to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %21 = bitcast %struct.vector_type* %out_vector to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %call1 = call double @Vangle(double %18, double %20, double %23, double %25)
  store double %call1, double* %corner_angle, align 8
  %26 = load double, double* %corner_angle, align 8
  %call2 = call double @fabs(double %26) #6
  %27 = load double, double* @corner_threshold, align 8
  %cmp3 = fcmp ole double %call2, %27
  br i1 %cmp3, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body
  %28 = load double, double* %corner_angle, align 8
  store double %28, double* %best_corner_angle, align 8
  %29 = load i32, i32* %p, align 4
  store i32 %29, i32* %best_corner_index, align 4
  %call4 = call { i32*, i32 } @new_index_list()
  %30 = bitcast %struct.index_list* %equally_good_list to { i32*, i32 }*
  %31 = getelementptr { i32*, i32 }, { i32*, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i32*, i32 } %call4, 0
  store i32* %32, i32** %31, align 8
  %33 = getelementptr { i32*, i32 }, { i32*, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i32*, i32 } %call4, 1
  store i32 %34, i32* %33, align 8
  %35 = load i32, i32* %p, align 4
  store i32 %35, i32* %q, align 4
  %36 = load i32, i32* %p, align 4
  %add = add i32 %36, 1
  store i32 %add, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.22
  %37 = load double, double* %corner_angle, align 8
  %38 = load double, double* @corner_always_threshold, align 8
  %cmp5 = fcmp ole double %37, %38
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %39 = load i32, i32* %q, align 4
  %40 = load i32, i32* %p, align 4
  %cmp6 = icmp uge i32 %39, %40
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %41 = load i32, i32* %q, align 4
  call void @append_index(%struct.index_list* %corner_list, i32 %41)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %while.body
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %best_corner_index, align 4
  %44 = load i32, i32* @corner_surround, align 4
  %add8 = add i32 %43, %44
  %cmp9 = icmp uge i32 %42, %add8
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %45 = load i32, i32* %i, align 4
  %length10 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  %46 = load i32, i32* %length10, align 4
  %cmp11 = icmp uge i32 %45, %46
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  br label %while.end

if.end.13:                                        ; preds = %lor.lhs.false
  %47 = load i32, i32* %i, align 4
  %length14 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  %48 = load i32, i32* %length14, align 4
  %rem = urem i32 %47, %48
  store i32 %rem, i32* %q, align 4
  %49 = load i32, i32* %q, align 4
  %50 = bitcast %struct.pixel_outline_type* %pixel_outline to { %struct.coordinate_type*, i64 }*
  %51 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %50, i32 0, i32 0
  %52 = load %struct.coordinate_type*, %struct.coordinate_type** %51, align 1
  %53 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 1
  call void @find_vectors(i32 %49, %struct.coordinate_type* %52, i64 %54, %struct.vector_type* %in_vector, %struct.vector_type* %out_vector)
  %55 = bitcast %struct.vector_type* %in_vector to { double, double }*
  %56 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 0
  %57 = load double, double* %56, align 1
  %58 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 1
  %59 = load double, double* %58, align 1
  %60 = bitcast %struct.vector_type* %out_vector to { double, double }*
  %61 = getelementptr { double, double }, { double, double }* %60, i32 0, i32 0
  %62 = load double, double* %61, align 1
  %63 = getelementptr { double, double }, { double, double }* %60, i32 0, i32 1
  %64 = load double, double* %63, align 1
  %call15 = call double @Vangle(double %57, double %59, double %62, double %64)
  store double %call15, double* %corner_angle, align 8
  %65 = load double, double* %corner_angle, align 8
  %66 = load double, double* %best_corner_angle, align 8
  %call16 = call i32 @epsilon_equal(double %65, double %66)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %67 = load i32, i32* %q, align 4
  call void @append_index(%struct.index_list* %equally_good_list, i32 %67)
  br label %if.end.22

if.else:                                          ; preds = %if.end.13
  %68 = load double, double* %corner_angle, align 8
  %69 = load double, double* %best_corner_angle, align 8
  %cmp18 = fcmp olt double %68, %69
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %70 = load double, double* %corner_angle, align 8
  store double %70, double* %best_corner_angle, align 8
  %71 = load i32, i32* %q, align 4
  store i32 %71, i32* %best_corner_index, align 4
  store i32 %71, i32* %i, align 4
  call void @free_index_list(%struct.index_list* %equally_good_list)
  %call20 = call { i32*, i32 } @new_index_list()
  %72 = bitcast %struct.index_list* %coerce to { i32*, i32 }*
  %73 = getelementptr { i32*, i32 }, { i32*, i32 }* %72, i32 0, i32 0
  %74 = extractvalue { i32*, i32 } %call20, 0
  store i32* %74, i32** %73, align 8
  %75 = getelementptr { i32*, i32 }, { i32*, i32 }* %72, i32 0, i32 1
  %76 = extractvalue { i32*, i32 } %call20, 1
  store i32 %76, i32* %75, align 8
  %77 = bitcast %struct.index_list* %equally_good_list to i8*
  %78 = bitcast %struct.index_list* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 16, i32 8, i1 false)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.17
  %79 = load i32, i32* %i, align 4
  %inc = add i32 %79, 1
  store i32 %inc, i32* %i, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.12
  %80 = load double, double* %best_corner_angle, align 8
  %81 = load double, double* @corner_always_threshold, align 8
  %cmp23 = fcmp ogt double %80, %81
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.37

land.lhs.true.24:                                 ; preds = %while.end
  %82 = load i32, i32* %best_corner_index, align 4
  %83 = load i32, i32* %p, align 4
  %cmp25 = icmp uge i32 %82, %83
  br i1 %cmp25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %land.lhs.true.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.26
  %84 = load i32, i32* %best_corner_index, align 4
  call void @append_index(%struct.index_list* %corner_list, i32 %84)
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.28
  store i32 0, i32* %i27, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %do.end.29
  %85 = load i32, i32* %i27, align 4
  %length31 = getelementptr inbounds %struct.index_list, %struct.index_list* %equally_good_list, i32 0, i32 1
  %86 = load i32, i32* %length31, align 4
  %cmp32 = icmp ult i32 %85, %86
  br i1 %cmp32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  br label %do.body.34

do.body.34:                                       ; preds = %for.body.33
  %87 = load i32, i32* %i27, align 4
  %idxprom = zext i32 %87 to i64
  %data = getelementptr inbounds %struct.index_list, %struct.index_list* %equally_good_list, i32 0, i32 0
  %88 = load i32*, i32** %data, align 8
  %arrayidx = getelementptr inbounds i32, i32* %88, i64 %idxprom
  %89 = load i32, i32* %arrayidx, align 4
  call void @append_index(%struct.index_list* %corner_list, i32 %89)
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.34
  br label %for.inc

for.inc:                                          ; preds = %do.end.35
  %90 = load i32, i32* %i27, align 4
  %inc36 = add i32 %90, 1
  store i32 %inc36, i32* %i27, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  call void @free_index_list(%struct.index_list* %equally_good_list)
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %land.lhs.true.24, %while.end
  %91 = load i32, i32* %q, align 4
  %92 = load i32, i32* %p, align 4
  %cmp38 = icmp ult i32 %91, %92
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %length39 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  %93 = load i32, i32* %length39, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %94 = load i32, i32* %q, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ %94, %cond.false ]
  store i32 %cond, i32* %p, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end, %for.body
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %95 = load i32, i32* %p, align 4
  %inc42 = add i32 %95, 1
  store i32 %inc42, i32* %p, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %length44 = getelementptr inbounds %struct.index_list, %struct.index_list* %corner_list, i32 0, i32 1
  %96 = load i32, i32* %length44, align 4
  %cmp45 = icmp ugt i32 %96, 0
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.end.43
  %length47 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %pixel_outline, i32 0, i32 1
  %97 = load i32, i32* %length47, align 4
  %sub = sub i32 %97, 1
  call void @remove_adjacent_corners(%struct.index_list* %corner_list, i32 %sub)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %for.end.43
  %98 = bitcast %struct.index_list* %retval to i8*
  %99 = bitcast %struct.index_list* %corner_list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 16, i32 8, i1 false)
  %100 = bitcast %struct.index_list* %retval to { i32*, i32 }*
  %101 = load { i32*, i32 }, { i32*, i32 }* %100, align 8
  ret { i32*, i32 } %101
}

declare void @append_curve(%struct.curve_list_type*, %struct.curve*) #1

declare void @append_curve_list(%struct.curve_list_array_type*, %struct.curve**, i64) #1

; Function Attrs: nounwind uwtable
define internal { i32*, i32 } @new_index_list() #0 {
entry:
  %retval = alloca %struct.index_list, align 8
  %index_list = alloca %struct.index_list, align 8
  %data = getelementptr inbounds %struct.index_list, %struct.index_list* %index_list, i32 0, i32 0
  store i32* null, i32** %data, align 8
  %length = getelementptr inbounds %struct.index_list, %struct.index_list* %index_list, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %0 = bitcast %struct.index_list* %retval to i8*
  %1 = bitcast %struct.index_list* %index_list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.index_list* %retval to { i32*, i32 }*
  %3 = load { i32*, i32 }, { i32*, i32 }* %2, align 8
  ret { i32*, i32 } %3
}

; Function Attrs: nounwind uwtable
define internal void @find_vectors(i32 %test_index, %struct.coordinate_type* %outline.coerce0, i64 %outline.coerce1, %struct.vector_type* %in, %struct.vector_type* %out) #0 {
entry:
  %outline = alloca %struct.pixel_outline_type, align 8
  %test_index.addr = alloca i32, align 4
  %in.addr = alloca %struct.vector_type*, align 8
  %out.addr = alloca %struct.vector_type*, align 8
  %i = alloca i32, align 4
  %n_done = alloca i32, align 4
  %candidate = alloca %struct.coordinate_type, align 4
  %agg.tmp = alloca %struct.vector_type, align 8
  %coerce = alloca %struct.vector_type, align 8
  %agg.tmp21 = alloca %struct.vector_type, align 8
  %coerce27 = alloca %struct.vector_type, align 8
  %0 = bitcast %struct.pixel_outline_type* %outline to { %struct.coordinate_type*, i64 }*
  %1 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 0
  store %struct.coordinate_type* %outline.coerce0, %struct.coordinate_type** %1
  %2 = getelementptr { %struct.coordinate_type*, i64 }, { %struct.coordinate_type*, i64 }* %0, i32 0, i32 1
  store i64 %outline.coerce1, i64* %2
  store i32 %test_index, i32* %test_index.addr, align 4
  store %struct.vector_type* %in, %struct.vector_type** %in.addr, align 8
  store %struct.vector_type* %out, %struct.vector_type** %out.addr, align 8
  %3 = load i32, i32* %test_index.addr, align 4
  %idxprom = zext i32 %3 to i64
  %data = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 0
  %4 = load %struct.coordinate_type*, %struct.coordinate_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %4, i64 %idxprom
  %5 = bitcast %struct.coordinate_type* %candidate to i8*
  %6 = bitcast %struct.coordinate_type* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %7 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dx = getelementptr inbounds %struct.vector_type, %struct.vector_type* %7, i32 0, i32 0
  store double 0.000000e+00, double* %dx, align 8
  %8 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %dy = getelementptr inbounds %struct.vector_type, %struct.vector_type* %8, i32 0, i32 1
  store double 0.000000e+00, double* %dy, align 8
  %9 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %dx1 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %9, i32 0, i32 0
  store double 0.000000e+00, double* %dx1, align 8
  %10 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %dy2 = getelementptr inbounds %struct.vector_type, %struct.vector_type* %10, i32 0, i32 1
  store double 0.000000e+00, double* %dy2, align 8
  %11 = load i32, i32* %test_index.addr, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %length = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 1
  %12 = load i32, i32* %length, align 4
  %sub = sub i32 %12, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %test_index.addr, align 4
  %sub3 = sub i32 %13, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.15, %cond.end
  %14 = load i32, i32* %n_done, align 4
  %15 = load i32, i32* @corner_surround, align 4
  %cmp4 = icmp ult i32 %14, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %17 = load %struct.vector_type*, %struct.vector_type** %in.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %18 to i64
  %data6 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 0
  %19 = load %struct.coordinate_type*, %struct.coordinate_type** %data6, align 8
  %arrayidx7 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %19, i64 %idxprom5
  %20 = bitcast %struct.coordinate_type* %arrayidx7 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = bitcast %struct.coordinate_type* %candidate to i64*
  %23 = load i64, i64* %22, align 4
  %call = call { double, double } @IPsubtract(i64 %21, i64 %23)
  %24 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = extractvalue { double, double } %call, 0
  store double %26, double* %25, align 8
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = extractvalue { double, double } %call, 1
  store double %28, double* %27, align 8
  %29 = bitcast %struct.vector_type* %17 to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = load double, double* %30, align 1
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = load double, double* %32, align 1
  %34 = bitcast %struct.vector_type* %agg.tmp to { double, double }*
  %35 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = load double, double* %35, align 1
  %37 = getelementptr { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = load double, double* %37, align 1
  %call8 = call { double, double } @Vadd(double %31, double %33, double %36, double %38)
  %39 = bitcast %struct.vector_type* %coerce to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call8, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call8, 1
  store double %43, double* %42, align 8
  %44 = bitcast %struct.vector_type* %16 to i8*
  %45 = bitcast %struct.vector_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %46, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %for.inc
  %length11 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 1
  %47 = load i32, i32* %length11, align 4
  %sub12 = sub i32 %47, 1
  br label %cond.end.15

cond.false.13:                                    ; preds = %for.inc
  %48 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %48, 1
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.10
  %cond16 = phi i32 [ %sub12, %cond.true.10 ], [ %sub14, %cond.false.13 ]
  store i32 %cond16, i32* %i, align 4
  %49 = load i32, i32* %n_done, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %n_done, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %test_index.addr, align 4
  %add = add i32 %50, 1
  %length17 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 1
  %51 = load i32, i32* %length17, align 4
  %rem = urem i32 %add, %51
  store i32 %rem, i32* %i, align 4
  store i32 0, i32* %n_done, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.28, %for.end
  %52 = load i32, i32* %n_done, align 4
  %53 = load i32, i32* @corner_surround, align 4
  %cmp19 = icmp ult i32 %52, %53
  br i1 %cmp19, label %for.body.20, label %for.end.33

for.body.20:                                      ; preds = %for.cond.18
  %54 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %55 = load %struct.vector_type*, %struct.vector_type** %out.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %56 to i64
  %data23 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 0
  %57 = load %struct.coordinate_type*, %struct.coordinate_type** %data23, align 8
  %arrayidx24 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %57, i64 %idxprom22
  %58 = bitcast %struct.coordinate_type* %arrayidx24 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = bitcast %struct.coordinate_type* %candidate to i64*
  %61 = load i64, i64* %60, align 4
  %call25 = call { double, double } @IPsubtract(i64 %59, i64 %61)
  %62 = bitcast %struct.vector_type* %agg.tmp21 to { double, double }*
  %63 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 0
  %64 = extractvalue { double, double } %call25, 0
  store double %64, double* %63, align 8
  %65 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 1
  %66 = extractvalue { double, double } %call25, 1
  store double %66, double* %65, align 8
  %67 = bitcast %struct.vector_type* %55 to { double, double }*
  %68 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 0
  %69 = load double, double* %68, align 1
  %70 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 1
  %71 = load double, double* %70, align 1
  %72 = bitcast %struct.vector_type* %agg.tmp21 to { double, double }*
  %73 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 1
  %75 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = load double, double* %75, align 1
  %call26 = call { double, double } @Vadd(double %69, double %71, double %74, double %76)
  %77 = bitcast %struct.vector_type* %coerce27 to { double, double }*
  %78 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = extractvalue { double, double } %call26, 0
  store double %79, double* %78, align 8
  %80 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = extractvalue { double, double } %call26, 1
  store double %81, double* %80, align 8
  %82 = bitcast %struct.vector_type* %54 to i8*
  %83 = bitcast %struct.vector_type* %coerce27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.20
  %84 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %84, 1
  %length30 = getelementptr inbounds %struct.pixel_outline_type, %struct.pixel_outline_type* %outline, i32 0, i32 1
  %85 = load i32, i32* %length30, align 4
  %rem31 = urem i32 %add29, %85
  store i32 %rem31, i32* %i, align 4
  %86 = load i32, i32* %n_done, align 4
  %inc32 = add i32 %86, 1
  store i32 %inc32, i32* %n_done, align 4
  br label %for.cond.18

for.end.33:                                       ; preds = %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @append_index(%struct.index_list* %list, i32 %new_index) #0 {
entry:
  %list.addr = alloca %struct.index_list*, align 8
  %new_index.addr = alloca i32, align 4
  store %struct.index_list* %list, %struct.index_list** %list.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  %0 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length = getelementptr inbounds %struct.index_list, %struct.index_list* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %length, align 4
  %2 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data = getelementptr inbounds %struct.index_list, %struct.index_list* %2, i32 0, i32 0
  %3 = load i32*, i32** %data, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length1 = getelementptr inbounds %struct.index_list, %struct.index_list* %5, i32 0, i32 1
  %6 = load i32, i32* %length1, align 4
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @g_realloc(i8* %4, i64 %mul)
  %7 = bitcast i8* %call to i32*
  %8 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data2 = getelementptr inbounds %struct.index_list, %struct.index_list* %8, i32 0, i32 0
  store i32* %7, i32** %data2, align 8
  %9 = load i32, i32* %new_index.addr, align 4
  %10 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length3 = getelementptr inbounds %struct.index_list, %struct.index_list* %10, i32 0, i32 1
  %11 = load i32, i32* %length3, align 4
  %sub = sub i32 %11, 1
  %idxprom = zext i32 %sub to i64
  %12 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data4 = getelementptr inbounds %struct.index_list, %struct.index_list* %12, i32 0, i32 0
  %13 = load i32*, i32** %data4, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %9, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_index_list(%struct.index_list* %index_list) #0 {
entry:
  %index_list.addr = alloca %struct.index_list*, align 8
  store %struct.index_list* %index_list, %struct.index_list** %index_list.addr, align 8
  %0 = load %struct.index_list*, %struct.index_list** %index_list.addr, align 8
  %length = getelementptr inbounds %struct.index_list, %struct.index_list* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.index_list*, %struct.index_list** %index_list.addr, align 8
  %data = getelementptr inbounds %struct.index_list, %struct.index_list* %2, i32 0, i32 0
  %3 = load i32*, i32** %data, align 8
  %4 = bitcast i32* %3 to i8*
  call void @g_free(i8* %4)
  %5 = load %struct.index_list*, %struct.index_list** %index_list.addr, align 8
  %data1 = getelementptr inbounds %struct.index_list, %struct.index_list* %5, i32 0, i32 0
  store i32* null, i32** %data1, align 8
  %6 = load %struct.index_list*, %struct.index_list** %index_list.addr, align 8
  %length2 = getelementptr inbounds %struct.index_list, %struct.index_list* %6, i32 0, i32 1
  store i32 0, i32* %length2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_adjacent_corners(%struct.index_list* %list, i32 %last_index) #0 {
entry:
  %list.addr = alloca %struct.index_list*, align 8
  %last_index.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %last = alloca i32, align 4
  %new = alloca %struct.index_list, align 8
  %search = alloca i32, align 4
  %temp = alloca i32, align 4
  %max_index = alloca i32, align 4
  %current = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.index_list* %list, %struct.index_list** %list.addr, align 8
  store i32 %last_index, i32* %last_index.addr, align 4
  %call = call { i32*, i32 } @new_index_list()
  %0 = bitcast %struct.index_list* %new to { i32*, i32 }*
  %1 = getelementptr { i32*, i32 }, { i32*, i32 }* %0, i32 0, i32 0
  %2 = extractvalue { i32*, i32 } %call, 0
  store i32* %2, i32** %1, align 8
  %3 = getelementptr { i32*, i32 }, { i32*, i32 }* %0, i32 0, i32 1
  %4 = extractvalue { i32*, i32 } %call, 1
  store i32 %4, i32* %3, align 8
  %5 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length = getelementptr inbounds %struct.index_list, %struct.index_list* %5, i32 0, i32 1
  %6 = load i32, i32* %length, align 4
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %7 = load i32, i32* %j, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  store i32 %8, i32* %max_index, align 4
  store i32 0, i32* %search, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %search, align 4
  %10 = load i32, i32* %j, align 4
  %cmp2 = icmp ult i32 %9, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %search, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data = getelementptr inbounds %struct.index_list, %struct.index_list* %12, i32 0, i32 0
  %13 = load i32*, i32** %data, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %max_index, align 4
  %idxprom4 = zext i32 %15 to i64
  %16 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data5 = getelementptr inbounds %struct.index_list, %struct.index_list* %16, i32 0, i32 0
  %17 = load i32*, i32** %data5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom4
  %18 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ugt i32 %14, %18
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %19 = load i32, i32* %search, align 4
  store i32 %19, i32* %max_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %search, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %search, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %21 = load i32, i32* %max_index, align 4
  %22 = load i32, i32* %j, align 4
  %cmp8 = icmp ne i32 %21, %22
  br i1 %cmp8, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %idxprom10 = zext i32 %23 to i64
  %24 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data11 = getelementptr inbounds %struct.index_list, %struct.index_list* %24, i32 0, i32 0
  %25 = load i32*, i32** %data11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx12, align 4
  store i32 %26, i32* %temp, align 4
  %27 = load i32, i32* %max_index, align 4
  %idxprom13 = zext i32 %27 to i64
  %28 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data14 = getelementptr inbounds %struct.index_list, %struct.index_list* %28, i32 0, i32 0
  %29 = load i32*, i32** %data14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom13
  %30 = load i32, i32* %arrayidx15, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom16 = zext i32 %31 to i64
  %32 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data17 = getelementptr inbounds %struct.index_list, %struct.index_list* %32, i32 0, i32 0
  %33 = load i32*, i32** %data17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %33, i64 %idxprom16
  store i32 %30, i32* %arrayidx18, align 4
  %34 = load i32, i32* %temp, align 4
  %35 = load i32, i32* %max_index, align 4
  %idxprom19 = zext i32 %35 to i64
  %36 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data20 = getelementptr inbounds %struct.index_list, %struct.index_list* %36, i32 0, i32 0
  %37 = load i32*, i32** %data20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %37, i64 %idxprom19
  store i32 %34, i32* %arrayidx21, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.9, %for.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %38 = load i32, i32* %j, align 4
  %dec = add i32 %38, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.43, %for.end.25
  %39 = load i32, i32* %j, align 4
  %40 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length27 = getelementptr inbounds %struct.index_list, %struct.index_list* %40, i32 0, i32 1
  %41 = load i32, i32* %length27, align 4
  %sub28 = sub i32 %41, 1
  %cmp29 = icmp ult i32 %39, %sub28
  br i1 %cmp29, label %for.body.30, label %for.end.45

for.body.30:                                      ; preds = %for.cond.26
  %42 = load i32, i32* %j, align 4
  %idxprom31 = zext i32 %42 to i64
  %43 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data32 = getelementptr inbounds %struct.index_list, %struct.index_list* %43, i32 0, i32 0
  %44 = load i32*, i32** %data32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %44, i64 %idxprom31
  %45 = load i32, i32* %arrayidx33, align 4
  store i32 %45, i32* %current, align 4
  %46 = load i32, i32* %j, align 4
  %add = add i32 %46, 1
  %idxprom34 = zext i32 %add to i64
  %47 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data35 = getelementptr inbounds %struct.index_list, %struct.index_list* %47, i32 0, i32 0
  %48 = load i32*, i32** %data35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %48, i64 %idxprom34
  %49 = load i32, i32* %arrayidx36, align 4
  store i32 %49, i32* %next, align 4
  %50 = load i32, i32* %current, align 4
  %51 = load i32, i32* %next, align 4
  %cmp37 = icmp ne i32 %50, %51
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.30
  br label %cond.end

cond.false:                                       ; preds = %for.body.30
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 757, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.remove_adjacent_corners, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %52, %cond.true
  %53 = load i32, i32* %current, align 4
  call void @append_index(%struct.index_list* %new, i32 %53)
  %54 = load i32, i32* %next, align 4
  %55 = load i32, i32* %current, align 4
  %add38 = add i32 %55, 1
  %cmp39 = icmp eq i32 %54, %add38
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %cond.end
  %56 = load i32, i32* %j, align 4
  %inc41 = add i32 %56, 1
  store i32 %inc41, i32* %j, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %cond.end
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %57 = load i32, i32* %j, align 4
  %inc44 = add i32 %57, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.26

for.end.45:                                       ; preds = %for.cond.26
  %58 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %length46 = getelementptr inbounds %struct.index_list, %struct.index_list* %58, i32 0, i32 1
  %59 = load i32, i32* %length46, align 4
  %sub47 = sub i32 %59, 1
  %idxprom48 = zext i32 %sub47 to i64
  %60 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data49 = getelementptr inbounds %struct.index_list, %struct.index_list* %60, i32 0, i32 0
  %61 = load i32*, i32** %data49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %61, i64 %idxprom48
  %62 = load i32, i32* %arrayidx50, align 4
  store i32 %62, i32* %last, align 4
  %length51 = getelementptr inbounds %struct.index_list, %struct.index_list* %new, i32 0, i32 1
  %63 = load i32, i32* %length51, align 4
  %cmp52 = icmp eq i32 %63, 0
  br i1 %cmp52, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.45
  %64 = load i32, i32* %last, align 4
  %length53 = getelementptr inbounds %struct.index_list, %struct.index_list* %new, i32 0, i32 1
  %65 = load i32, i32* %length53, align 4
  %sub54 = sub i32 %65, 1
  %idxprom55 = zext i32 %sub54 to i64
  %data56 = getelementptr inbounds %struct.index_list, %struct.index_list* %new, i32 0, i32 0
  %66 = load i32*, i32** %data56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %66, i64 %idxprom55
  %67 = load i32, i32* %arrayidx57, align 4
  %add58 = add i32 %67, 1
  %cmp59 = icmp eq i32 %64, %add58
  br i1 %cmp59, label %if.end.66, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %68 = load i32, i32* %last, align 4
  %69 = load i32, i32* %last_index.addr, align 4
  %cmp61 = icmp eq i32 %68, %69
  br i1 %cmp61, label %land.lhs.true, label %if.then.65

land.lhs.true:                                    ; preds = %lor.lhs.false.60
  %70 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %data62 = getelementptr inbounds %struct.index_list, %struct.index_list* %70, i32 0, i32 0
  %71 = load i32*, i32** %data62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp eq i32 %72, 0
  br i1 %cmp64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true, %lor.lhs.false.60, %for.end.45
  %73 = load i32, i32* %last, align 4
  call void @append_index(%struct.index_list* %new, i32 %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %land.lhs.true, %lor.lhs.false
  %74 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  call void @free_index_list(%struct.index_list* %74)
  %75 = load %struct.index_list*, %struct.index_list** %list.addr, align 8
  %76 = bitcast %struct.index_list* %75 to i8*
  %77 = bitcast %struct.index_list* %new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 16, i32 8, i1 false)
  ret void
}

declare i8* @g_realloc(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
