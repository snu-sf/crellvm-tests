; ModuleID = './app/vectors/gimpvectors-compat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GimpVectorsCompatPoint = type { i32, double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_vectors_compat_new = private unnamed_addr constant [24 x i8] c"gimp_vectors_compat_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"points != NULL || n_points == 0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"n_points >= 0\00", align 1
@default_coords = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8
@__func__.gimp_vectors_compat_is_compatible = private unnamed_addr constant [34 x i8] c"gimp_vectors_compat_is_compatible\00", align 1
@__func__.gimp_vectors_compat_get_points = private unnamed_addr constant [31 x i8] c"gimp_vectors_compat_get_points\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"n_points != NULL\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"closed != NULL\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"gimp_vectors_compat_get_points(): convert failed\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_vectors_compat_new(%struct._GimpImage* %image, i8* %name, %struct._GimpVectorsCompatPoint* %points, i32 %n_points, i32 %closed) #0 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %points.addr = alloca %struct._GimpVectorsCompatPoint*, align 8
  %n_points.addr = alloca i32, align 4
  %closed.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords = alloca %struct._GimpCoords*, align 8
  %curr_stroke = alloca %struct._GimpCoords*, align 8
  %curr_coord = alloca %struct._GimpCoords*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpVectorsCompatPoint* %points, %struct._GimpVectorsCompatPoint** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store i32 %closed, i32* %closed.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_compat_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_compat_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points.addr, align 8
  %cmp18 = icmp ne %struct._GimpVectorsCompatPoint* %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load i32, i32* %n_points.addr, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_compat_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %16 = load i32, i32* %n_points.addr, align 4
  %cmp25 = icmp sge i32 %16, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.24
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_compat_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call30 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %17, i8* %18)
  store %struct._GimpVectors* %call30, %struct._GimpVectors** %vectors, align 8
  %19 = load i32, i32* %n_points.addr, align 4
  %add = add nsw i32 %19, 1
  %conv = sext i32 %add to i64
  %call31 = call noalias i8* @g_malloc0_n(i64 %conv, i64 64)
  %20 = bitcast i8* %call31 to %struct._GimpCoords*
  store %struct._GimpCoords* %20, %struct._GimpCoords** %coords, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  store %struct._GimpCoords* %21, %struct._GimpCoords** %curr_coord, align 8
  store %struct._GimpCoords* %21, %struct._GimpCoords** %curr_stroke, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %incdec.ptr = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 1
  store %struct._GimpCoords* %incdec.ptr, %struct._GimpCoords** %curr_coord, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.29
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n_points.addr, align 4
  %cmp32 = icmp slt i32 %23, %24
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %26 = bitcast %struct._GimpCoords* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %28, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx, i32 0, i32 1
  %29 = load double, double* %x, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %x34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 0
  store double %29, double* %x34, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %32, i64 %idxprom35
  %y = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx36, i32 0, i32 2
  %33 = load double, double* %y, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %y37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 1
  store double %33, double* %y37, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %add.ptr = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i64 1
  %cmp38 = icmp eq %struct._GimpCoords* %35, %add.ptr
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %39 = bitcast %struct._GimpCoords* %37 to i8*
  %40 = bitcast %struct._GimpCoords* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 64, i32 8, i1 false)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %42, i64 %idxprom42
  %type = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx43, i32 0, i32 0
  %43 = load i32, i32* %type, align 4
  %cmp44 = icmp eq i32 %43, 3
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.end.41
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %add.ptr47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i64 -1
  %46 = bitcast %struct._GimpCoords* %44 to i8*
  %47 = bitcast %struct._GimpCoords* %add.ptr47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 64, i32 8, i1 false)
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._GimpCoords* %49 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct._GimpCoords* %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64
  %sub = sub nsw i64 %sub.ptr.div, 1
  %conv48 = trunc i64 %sub to i32
  %call49 = call %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords* %48, i32 %conv48, i32 1)
  store %struct._GimpStroke* %call49, %struct._GimpStroke** %stroke, align 8
  %51 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %52 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %51, %struct._GimpStroke* %52)
  %53 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %54 = bitcast %struct._GimpStroke* %53 to i8*
  call void @g_object_unref(i8* %54)
  %55 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %add.ptr50 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %55, i64 -1
  store %struct._GimpCoords* %add.ptr50, %struct._GimpCoords** %curr_stroke, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %57 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %58 = bitcast %struct._GimpCoords* %56 to i8*
  %59 = bitcast %struct._GimpCoords* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 64, i32 8, i1 false)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %if.end.41
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %incdec.ptr52 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i32 1
  store %struct._GimpCoords* %incdec.ptr52, %struct._GimpCoords** %curr_coord, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %closed.addr, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %incdec.ptr55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %63, i32 -1
  store %struct._GimpCoords* %incdec.ptr55, %struct._GimpCoords** %curr_coord, align 8
  %64 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %65 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %66 = bitcast %struct._GimpCoords* %64 to i8*
  %67 = bitcast %struct._GimpCoords* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 64, i32 8, i1 false)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_coord, align 8
  %70 = load %struct._GimpCoords*, %struct._GimpCoords** %curr_stroke, align 8
  %sub.ptr.lhs.cast57 = ptrtoint %struct._GimpCoords* %69 to i64
  %sub.ptr.rhs.cast58 = ptrtoint %struct._GimpCoords* %70 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %sub.ptr.div60 = sdiv exact i64 %sub.ptr.sub59, 64
  %conv61 = trunc i64 %sub.ptr.div60 to i32
  %71 = load i32, i32* %closed.addr, align 4
  %call62 = call %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords* %68, i32 %conv61, i32 %71)
  store %struct._GimpStroke* %call62, %struct._GimpStroke** %stroke, align 8
  %72 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %73 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %72, %struct._GimpStroke* %73)
  %74 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %75 = bitcast %struct._GimpStroke* %74 to i8*
  call void @g_object_unref(i8* %75)
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %77 = bitcast %struct._GimpCoords* %76 to i8*
  call void @g_free(i8* %77)
  %78 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpVectors* %78, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.else.27, %if.else.21, %if.else.14, %if.else.9
  %79 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %79
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords*, i32, i32) #3

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #3

declare void @g_object_unref(i8*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_compat_is_compatible(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %strokes = alloca %struct._GList*, align 8
  %open_count = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %__inst33 = alloca %struct._GTypeInstance*, align 8
  %__t35 = alloca i64, align 8
  %__r38 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_vectors_compat_is_compatible, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.69, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_vectors_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpVectors*
  store %struct._GimpVectors* %18, %struct._GimpVectors** %vectors, align 8
  store i32 0, i32* %open_count, align 4
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %20 = bitcast %struct._GimpVectors* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_visible(%struct._GimpItem* %21)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes24 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %strokes24, align 8
  store %struct._GList* %23, %struct._GList** %strokes, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %cond.end, %if.end.23
  %24 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool26 = icmp ne %struct._GList* %24, null
  br i1 %tobool26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %25 = load %struct._GList*, %struct._GList** %strokes, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data29, align 8
  %27 = bitcast i8* %26 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_stroke_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpStroke*
  store %struct._GimpStroke* %28, %struct._GimpStroke** %stroke, align 8
  %29 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %30 = bitcast %struct._GimpStroke* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst33, align 8
  %call36 = call i64 @gimp_bezier_stroke_get_type() #5
  store i64 %call36, i64* %__t35, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst33, align 8
  %tobool39 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool39, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %for.body.27
  store i32 0, i32* %__r38, align 4
  br label %if.end.52

if.else.41:                                       ; preds = %for.body.27
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst33, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %tobool43 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.else.49

land.lhs.true.44:                                 ; preds = %if.else.41
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst33, align 8
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %g_type46 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type46, align 8
  %37 = load i64, i64* %__t35, align 8
  %cmp47 = icmp eq i64 %36, %37
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %__r38, align 4
  br label %if.end.51

if.else.49:                                       ; preds = %land.lhs.true.44, %if.else.41
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst33, align 8
  %39 = load i64, i64* %__t35, align 8
  %call50 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #6
  store i32 %call50, i32* %__r38, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.40
  %40 = load i32, i32* %__r38, align 4
  store i32 %40, i32* %tmp53
  %41 = load i32, i32* %tmp53
  %tobool54 = icmp ne i32 %41, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %42 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %42, i32 0, i32 3
  %43 = load i32, i32* %closed, align 4
  %tobool57 = icmp ne i32 %43, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  %44 = load i32, i32* %open_count, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %open_count, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %45 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool60 = icmp ne %struct._GList* %45, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %46 = load %struct._GList*, %struct._GList** %strokes, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %47, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %strokes, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %48 = load i32, i32* %open_count, align 4
  %cmp61 = icmp sge i32 %48, 2
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %for.end
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool65 = icmp ne %struct._GList* %49, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %for.inc.64
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next67 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next67, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %for.inc.64
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.66
  %cond70 = phi %struct._GList* [ %51, %cond.true.66 ], [ null, %cond.false.68 ]
  store %struct._GList* %cond70, %struct._GList** %list, align 8
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.71, %if.then.62, %if.then.55, %if.then.22, %if.else.9
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_stroke_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpVectorsCompatPoint* @gimp_vectors_compat_get_points(%struct._GimpVectors* %vectors, i32* %n_points, i32* %closed) #0 {
entry:
  %retval = alloca %struct._GimpVectorsCompatPoint*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %n_points.addr = alloca i32*, align 8
  %closed.addr = alloca i32*, align 8
  %points = alloca %struct._GimpVectorsCompatPoint*, align 8
  %strokes = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %postponed = alloca %struct._GList*, align 8
  %open_count = alloca i32, align 4
  %first_stroke = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %n_anchors = alloca i32, align 4
  %stroke47 = alloca %struct._GimpStroke*, align 8
  %anchors49 = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32* %n_points, i32** %n_points.addr, align 8
  store i32* %closed, i32** %closed.addr, align 8
  store %struct._GList* null, %struct._GList** %postponed, align 8
  store i32 1, i32* %first_stroke, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_vectors_compat_get_points, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpVectorsCompatPoint* null, %struct._GimpVectorsCompatPoint** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %n_points.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_vectors_compat_get_points, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpVectorsCompatPoint* null, %struct._GimpVectorsCompatPoint** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %closed.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_vectors_compat_get_points, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpVectorsCompatPoint* null, %struct._GimpVectorsCompatPoint** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i32*, i32** %n_points.addr, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %closed.addr, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %open_count, align 4
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes23 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %strokes23, align 8
  store %struct._GList* %18, %struct._GList** %strokes, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.22
  %19 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool24 = icmp ne %struct._GList* %19, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %strokes, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpStroke*
  store %struct._GimpStroke* %22, %struct._GimpStroke** %stroke, align 8
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %closed27 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %23, i32 0, i32 3
  %24 = load i32, i32* %closed27, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %if.end.33, label %if.then.29

if.then.29:                                       ; preds = %for.body
  %25 = load i32, i32* %open_count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %open_count, align 4
  %26 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %26, %struct._GList** %postponed, align 8
  %27 = load i32*, i32** %closed.addr, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %open_count, align 4
  %cmp30 = icmp sge i32 %28, 2
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0))
  %29 = load i32*, i32** %n_points.addr, align 8
  store i32 0, i32* %29, align 4
  store %struct._GimpVectorsCompatPoint* null, %struct._GimpVectorsCompatPoint** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %30, i32 0, i32 2
  %31 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call34 = call i32 @g_list_length(%struct._GList* %31)
  store i32 %call34, i32* %n_anchors, align 4
  %32 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %closed35 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %32, i32 0, i32 3
  %33 = load i32, i32* %closed35, align 4
  %tobool36 = icmp ne i32 %33, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.33
  %34 = load i32, i32* %n_anchors, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %n_anchors, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.33
  %35 = load i32, i32* %n_anchors, align 4
  %36 = load i32*, i32** %n_points.addr, align 8
  %37 = load i32, i32* %36, align 4
  %add = add nsw i32 %37, %35
  store i32 %add, i32* %36, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %38 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool39 = icmp ne %struct._GList* %38, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GList*, %struct._GList** %strokes, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %strokes, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32*, i32** %n_points.addr, align 8
  %42 = load i32, i32* %41, align 4
  %conv = sext i32 %42 to i64
  %call40 = call noalias i8* @g_malloc0_n(i64 %conv, i64 24)
  %43 = bitcast i8* %call40 to %struct._GimpVectorsCompatPoint*
  store %struct._GimpVectorsCompatPoint* %43, %struct._GimpVectorsCompatPoint** %points, align 8
  store i32 0, i32* %i, align 4
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes41 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %strokes41, align 8
  store %struct._GList* %45, %struct._GList** %strokes, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %cond.end.137, %for.end
  %46 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool43 = icmp ne %struct._GList* %46, null
  br i1 %tobool43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond.42
  %47 = load %struct._GList*, %struct._GList** %postponed, align 8
  %tobool44 = icmp ne %struct._GList* %47, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond.42
  %48 = phi i1 [ true, %for.cond.42 ], [ %tobool44, %lor.rhs ]
  br i1 %48, label %for.body.45, label %for.end.139

for.body.45:                                      ; preds = %lor.end
  %49 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool50 = icmp ne %struct._GList* %49, null
  br i1 %tobool50, label %if.then.51, label %if.else.62

if.then.51:                                       ; preds = %for.body.45
  %50 = load %struct._GList*, %struct._GList** %postponed, align 8
  %tobool52 = icmp ne %struct._GList* %50, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.57

land.lhs.true.53:                                 ; preds = %if.then.51
  %51 = load %struct._GList*, %struct._GList** %strokes, align 8
  %52 = load %struct._GList*, %struct._GList** %postponed, align 8
  %cmp54 = icmp eq %struct._GList* %51, %52
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.53
  br label %for.inc.132

if.else.57:                                       ; preds = %land.lhs.true.53, %if.then.51
  %53 = load %struct._GList*, %struct._GList** %strokes, align 8
  %data58 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data58, align 8
  %55 = bitcast i8* %54 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_stroke_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call59)
  %56 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpStroke*
  store %struct._GimpStroke* %56, %struct._GimpStroke** %stroke47, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57
  br label %if.end.66

if.else.62:                                       ; preds = %for.body.45
  %57 = load %struct._GList*, %struct._GList** %postponed, align 8
  %data63 = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data63, align 8
  %59 = bitcast i8* %58 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_stroke_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call64)
  %60 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpStroke*
  store %struct._GimpStroke* %60, %struct._GimpStroke** %stroke47, align 8
  store %struct._GList* null, %struct._GList** %postponed, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.62, %if.end.61
  %61 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke47, align 8
  %anchors67 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %61, i32 0, i32 2
  %62 = load %struct._GList*, %struct._GList** %anchors67, align 8
  store %struct._GList* %62, %struct._GList** %anchors49, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %cond.end.129, %if.end.66
  %63 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %tobool69 = icmp ne %struct._GList* %63, null
  br i1 %tobool69, label %for.body.70, label %for.end.131

for.body.70:                                      ; preds = %for.cond.68
  %64 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %data72 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data72, align 8
  %66 = bitcast i8* %65 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %66, %struct._GimpAnchor** %anchor, align 8
  %67 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %67, i32 0, i32 2
  %68 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool73 = icmp ne %struct._GList* %68, null
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %for.body.70
  br label %for.inc.124

if.end.75:                                        ; preds = %for.body.70
  %69 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %69, i32 0, i32 1
  %70 = load i32, i32* %type, align 4
  switch i32 %70, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %if.end.75
  %71 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %prev76 = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 2
  %72 = load %struct._GList*, %struct._GList** %prev76, align 8
  %73 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke47, align 8
  %anchors77 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %73, i32 0, i32 2
  %74 = load %struct._GList*, %struct._GList** %anchors77, align 8
  %cmp78 = icmp eq %struct._GList* %72, %74
  br i1 %cmp78, label %land.lhs.true.80, label %if.else.84

land.lhs.true.80:                                 ; preds = %sw.bb
  %75 = load i32, i32* %first_stroke, align 4
  %tobool81 = icmp ne i32 %75, 0
  br i1 %tobool81, label %if.else.84, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.80
  %76 = load i32, i32* %i, align 4
  %idxprom = sext i32 %76 to i64
  %77 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %77, i64 %idxprom
  %type83 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx, i32 0, i32 0
  store i32 3, i32* %type83, align 4
  br label %if.end.88

if.else.84:                                       ; preds = %land.lhs.true.80, %sw.bb
  %78 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %78 to i64
  %79 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx86 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %79, i64 %idxprom85
  %type87 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx86, i32 0, i32 0
  store i32 1, i32* %type87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.82
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.75
  %80 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %80 to i64
  %81 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %81, i64 %idxprom90
  %type92 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx91, i32 0, i32 0
  store i32 2, i32* %type92, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.75, %sw.bb.89, %if.end.88
  %82 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %82, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %83 = load double, double* %x, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %84 to i64
  %85 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx94 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %85, i64 %idxprom93
  %x95 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx94, i32 0, i32 1
  store double %83, double* %x95, align 8
  %86 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position96 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %86, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position96, i32 0, i32 1
  %87 = load double, double* %y, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %88 to i64
  %89 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx98 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %89, i64 %idxprom97
  %y99 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx98, i32 0, i32 2
  store double %87, double* %y99, align 8
  %90 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %90, 1
  store i32 %inc100, i32* %i, align 4
  %91 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %next101 = getelementptr inbounds %struct._GList, %struct._GList* %91, i32 0, i32 1
  %92 = load %struct._GList*, %struct._GList** %next101, align 8
  %tobool102 = icmp ne %struct._GList* %92, null
  br i1 %tobool102, label %if.end.123, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %sw.epilog
  %93 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke47, align 8
  %closed104 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %93, i32 0, i32 3
  %94 = load i32, i32* %closed104, align 4
  %tobool105 = icmp ne i32 %94, 0
  br i1 %tobool105, label %if.then.106, label %if.end.123

if.then.106:                                      ; preds = %land.lhs.true.103
  %95 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke47, align 8
  %anchors107 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %95, i32 0, i32 2
  %96 = load %struct._GList*, %struct._GList** %anchors107, align 8
  %data108 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 0
  %97 = load i8*, i8** %data108, align 8
  %98 = bitcast i8* %97 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %98, %struct._GimpAnchor** %anchor, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %99 to i64
  %100 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %100, i64 %idxprom109
  %type111 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx110, i32 0, i32 0
  store i32 2, i32* %type111, align 4
  %101 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position112 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %101, i32 0, i32 0
  %x113 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position112, i32 0, i32 0
  %102 = load double, double* %x113, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %103 to i64
  %104 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx115 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %104, i64 %idxprom114
  %x116 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx115, i32 0, i32 1
  store double %102, double* %x116, align 8
  %105 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position117 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %105, i32 0, i32 0
  %y118 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position117, i32 0, i32 1
  %106 = load double, double* %y118, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %107 to i64
  %108 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx120 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %108, i64 %idxprom119
  %y121 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx120, i32 0, i32 2
  store double %106, double* %y121, align 8
  %109 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %109, 1
  store i32 %inc122, i32* %i, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.106, %land.lhs.true.103, %sw.epilog
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123, %if.then.74
  %110 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %tobool125 = icmp ne %struct._GList* %110, null
  br i1 %tobool125, label %cond.true.126, label %cond.false.128

cond.true.126:                                    ; preds = %for.inc.124
  %111 = load %struct._GList*, %struct._GList** %anchors49, align 8
  %next127 = getelementptr inbounds %struct._GList, %struct._GList* %111, i32 0, i32 1
  %112 = load %struct._GList*, %struct._GList** %next127, align 8
  br label %cond.end.129

cond.false.128:                                   ; preds = %for.inc.124
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.126
  %cond130 = phi %struct._GList* [ %112, %cond.true.126 ], [ null, %cond.false.128 ]
  store %struct._GList* %cond130, %struct._GList** %anchors49, align 8
  br label %for.cond.68

for.end.131:                                      ; preds = %for.cond.68
  store i32 0, i32* %first_stroke, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end.131, %if.then.56
  %113 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool133 = icmp ne %struct._GList* %113, null
  br i1 %tobool133, label %cond.true.134, label %cond.false.136

cond.true.134:                                    ; preds = %for.inc.132
  %114 = load %struct._GList*, %struct._GList** %strokes, align 8
  %next135 = getelementptr inbounds %struct._GList, %struct._GList* %114, i32 0, i32 1
  %115 = load %struct._GList*, %struct._GList** %next135, align 8
  br label %cond.end.137

cond.false.136:                                   ; preds = %for.inc.132
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.134
  %cond138 = phi %struct._GList* [ %115, %cond.true.134 ], [ null, %cond.false.136 ]
  store %struct._GList* %cond138, %struct._GList** %strokes, align 8
  br label %for.cond.42

for.end.139:                                      ; preds = %lor.end
  %116 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  store %struct._GimpVectorsCompatPoint* %116, %struct._GimpVectorsCompatPoint** %retval
  br label %return

return:                                           ; preds = %for.end.139, %if.then.31, %if.else.20, %if.else.14, %if.else.9
  %117 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %retval
  ret %struct._GimpVectorsCompatPoint* %117
}

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_list_length(%struct._GList*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
