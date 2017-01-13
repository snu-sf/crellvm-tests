; ModuleID = './app/core/gimpbezierdesc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GimpVector2 = type { double, double }
%struct.anon = type { i32, i32 }

@gimp_bezier_desc_get_type.type = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpBezierDesc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_bezier_desc_new = private unnamed_addr constant [21 x i8] c"gimp_bezier_desc_new\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"n_data == 0 || data != NULL\00", align 1
@__func__.gimp_bezier_desc_new_from_bound_segs = private unnamed_addr constant [37 x i8] c"gimp_bezier_desc_new_from_bound_segs\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bound_segs != NULL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"n_bound_segs > 0\00", align 1
@__func__.gimp_bezier_desc_translate = private unnamed_addr constant [27 x i8] c"gimp_bezier_desc_translate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@__func__.gimp_bezier_desc_copy = private unnamed_addr constant [22 x i8] c"gimp_bezier_desc_copy\00", align 1
@__func__.gimp_bezier_desc_free = private unnamed_addr constant [22 x i8] c"gimp_bezier_desc_free\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_bezier_desc_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_bezier_desc_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct.cairo_path* (%struct.cairo_path*)* @gimp_bezier_desc_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct.cairo_path*)* @gimp_bezier_desc_free to void (i8*)*))
  store i64 %call, i64* @gimp_bezier_desc_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_bezier_desc_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_bezier_desc_copy(%struct.cairo_path* %desc) #2 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %desc.addr = alloca %struct.cairo_path*, align 8
  store %struct.cairo_path* %desc, %struct.cairo_path** %desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %cmp = icmp ne %struct.cairo_path* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_bezier_desc_copy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %1, i32 0, i32 1
  %2 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %3 = bitcast %union._cairo_path_data_t* %2 to i8*
  %4 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %4, i32 0, i32 2
  %5 = load i32, i32* %num_data, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 16
  %conv1 = trunc i64 %mul to i32
  %call = call noalias i8* @g_memdup(i8* %3, i32 %conv1)
  %6 = bitcast i8* %call to %union._cairo_path_data_t*
  %7 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %num_data2 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %7, i32 0, i32 2
  %8 = load i32, i32* %num_data2, align 4
  %call3 = call %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t* %6, i32 %8)
  store %struct.cairo_path* %call3, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %9 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %9
}

; Function Attrs: nounwind uwtable
define void @gimp_bezier_desc_free(%struct.cairo_path* %desc) #2 {
entry:
  %desc.addr = alloca %struct.cairo_path*, align 8
  store %struct.cairo_path* %desc, %struct.cairo_path** %desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %cmp = icmp ne %struct.cairo_path* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_bezier_desc_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %1, i32 0, i32 1
  %2 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %3 = bitcast %union._cairo_path_data_t* %2 to i8*
  call void @g_free(i8* %3)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %4 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %5 = bitcast %struct.cairo_path* %4 to i8*
  call void @g_slice_free1(i64 24, i8* %5)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t* %data, i32 %n_data) #2 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %data.addr = alloca %union._cairo_path_data_t*, align 8
  %n_data.addr = alloca i32, align 4
  %desc = alloca %struct.cairo_path*, align 8
  store %union._cairo_path_data_t* %data, %union._cairo_path_data_t** %data.addr, align 8
  store i32 %n_data, i32* %n_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %n_data.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data.addr, align 8
  %cmp1 = icmp ne %union._cairo_path_data_t* %1, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_bezier_desc_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc(i64 24)
  %2 = bitcast i8* %call to %struct.cairo_path*
  store %struct.cairo_path* %2, %struct.cairo_path** %desc, align 8
  %3 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  %status = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %3, i32 0, i32 0
  store i32 0, i32* %status, align 4
  %4 = load i32, i32* %n_data.addr, align 4
  %5 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %5, i32 0, i32 2
  store i32 %4, i32* %num_data, align 4
  %6 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data.addr, align 8
  %7 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  %data2 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %7, i32 0, i32 1
  store %union._cairo_path_data_t* %6, %union._cairo_path_data_t** %data2, align 8
  %8 = load %struct.cairo_path*, %struct.cairo_path** %desc, align 8
  store %struct.cairo_path* %8, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %9 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %9
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_bezier_desc_new_from_bound_segs(%struct._BoundSeg* %bound_segs, i32 %n_bound_segs, i32 %n_bound_groups) #2 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %n_bound_groups.addr = alloca i32, align 4
  %path_data = alloca %struct._GArray*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %n_points = alloca i32, align 4
  %seg = alloca i32, align 4
  %i = alloca i32, align 4
  %path_data_len = alloca i32, align 4
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store i32 %n_bound_groups, i32* %n_bound_groups.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %cmp = icmp ne %struct._BoundSeg* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_bezier_desc_new_from_bound_segs, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %n_bound_segs.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_bezier_desc_new_from_bound_segs, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 16)
  store %struct._GArray* %call, %struct._GArray** %path_data, align 8
  %2 = load i32, i32* %n_bound_segs.addr, align 4
  %add = add nsw i32 %2, 4
  %conv = sext i32 %add to i64
  %call7 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %3 = bitcast i8* %call7 to %struct._GimpVector2*
  store %struct._GimpVector2* %3, %struct._GimpVector2** %points, align 8
  store i32 0, i32* %seg, align 4
  store i32 0, i32* %n_points, align 4
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %4, i64 0
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4
  %conv8 = sitofp i32 %5 to double
  %6 = load i32, i32* %n_points, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx9, i32 0, i32 0
  store double %conv8, double* %x, align 8
  %8 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %8, i64 0
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx10, i32 0, i32 1
  %9 = load i32, i32* %y1, align 4
  %conv11 = sitofp i32 %9 to double
  %10 = load i32, i32* %n_points, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %11, i64 %idxprom12
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx13, i32 0, i32 1
  store double %conv11, double* %y, align 8
  %12 = load i32, i32* %n_points, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %n_points, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_bound_groups.addr, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %15 = load i32, i32* %seg, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %16, i64 %idxprom16
  %x118 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx17, i32 0, i32 0
  %17 = load i32, i32* %x118, align 4
  %cmp19 = icmp ne i32 %17, -1
  br i1 %cmp19, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %18 = load i32, i32* %seg, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %19, i64 %idxprom21
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx22, i32 0, i32 2
  %20 = load i32, i32* %x2, align 4
  %cmp23 = icmp ne i32 %20, -1
  br i1 %cmp23, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %seg, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %22, i64 %idxprom26
  %y128 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx27, i32 0, i32 1
  %23 = load i32, i32* %y128, align 4
  %cmp29 = icmp ne i32 %23, -1
  br i1 %cmp29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.25
  %24 = load i32, i32* %seg, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %25, i64 %idxprom31
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx32, i32 0, i32 3
  %26 = load i32, i32* %y2, align 4
  %cmp33 = icmp ne i32 %26, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.25, %lor.lhs.false, %while.cond
  %27 = phi i1 [ true, %lor.lhs.false.25 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp33, %lor.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %28 = load i32, i32* %seg, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %29, i64 %idxprom35
  %x137 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx36, i32 0, i32 0
  %30 = load i32, i32* %x137, align 4
  %conv38 = sitofp i32 %30 to double
  %31 = load i32, i32* %n_points, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i64 %idxprom39
  %x41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx40, i32 0, i32 0
  store double %conv38, double* %x41, align 8
  %33 = load i32, i32* %seg, align 4
  %idxprom42 = sext i32 %33 to i64
  %34 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %34, i64 %idxprom42
  %y144 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx43, i32 0, i32 1
  %35 = load i32, i32* %y144, align 4
  %conv45 = sitofp i32 %35 to double
  %36 = load i32, i32* %n_points, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %37, i64 %idxprom46
  %y48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx47, i32 0, i32 1
  store double %conv45, double* %y48, align 8
  %38 = load i32, i32* %n_points, align 4
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, i32* %n_points, align 4
  %39 = load i32, i32* %seg, align 4
  %inc50 = add nsw i32 %39, 1
  store i32 %inc50, i32* %seg, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %40 = load i32, i32* %n_points, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %41, i64 %idxprom51
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %42, i64 0
  %43 = bitcast %struct._GimpVector2* %arrayidx52 to i8*
  %44 = bitcast %struct._GimpVector2* %arrayidx53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = load i32, i32* %n_points, align 4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, i32* %n_points, align 4
  %46 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %47 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %48 = load i32, i32* %n_points, align 4
  call void @add_polyline(%struct._GArray* %46, %struct._GimpVector2* %47, i32 %48, i32 1)
  store i32 0, i32* %n_points, align 4
  %49 = load i32, i32* %seg, align 4
  %inc55 = add nsw i32 %49, 1
  store i32 %inc55, i32* %seg, align 4
  %50 = load i32, i32* %seg, align 4
  %idxprom56 = sext i32 %50 to i64
  %51 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %51, i64 %idxprom56
  %x158 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx57, i32 0, i32 0
  %52 = load i32, i32* %x158, align 4
  %conv59 = sitofp i32 %52 to double
  %53 = load i32, i32* %n_points, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %54, i64 %idxprom60
  %x62 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx61, i32 0, i32 0
  store double %conv59, double* %x62, align 8
  %55 = load i32, i32* %seg, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %56, i64 %idxprom63
  %y165 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx64, i32 0, i32 1
  %57 = load i32, i32* %y165, align 4
  %conv66 = sitofp i32 %57 to double
  %58 = load i32, i32* %n_points, align 4
  %idxprom67 = sext i32 %58 to i64
  %59 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %59, i64 %idxprom67
  %y69 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx68, i32 0, i32 1
  store double %conv66, double* %y69, align 8
  %60 = load i32, i32* %n_points, align 4
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %n_points, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %61 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %61, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %63 = bitcast %struct._GimpVector2* %62 to i8*
  call void @g_free(i8* %63)
  %64 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %64, i32 0, i32 1
  %65 = load i32, i32* %len, align 4
  store i32 %65, i32* %path_data_len, align 4
  %66 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %call72 = call i8* @g_array_free(%struct._GArray* %66, i32 0)
  %67 = bitcast i8* %call72 to %union._cairo_path_data_t*
  %68 = load i32, i32* %path_data_len, align 4
  %call73 = call %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t* %67, i32 %68)
  store %struct.cairo_path* %call73, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %69 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %69
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @add_polyline(%struct._GArray* %path_data, %struct._GimpVector2* %points, i32 %n_points, i32 %closed) #2 {
entry:
  %path_data.addr = alloca %struct._GArray*, align 8
  %points.addr = alloca %struct._GimpVector2*, align 8
  %n_points.addr = alloca i32, align 4
  %closed.addr = alloca i32, align 4
  %prev = alloca %struct._GimpVector2, align 8
  %pd = alloca %union._cairo_path_data_t, align 8
  %i = alloca i32, align 4
  store %struct._GArray* %path_data, %struct._GArray** %path_data.addr, align 8
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store i32 %closed, i32* %closed.addr, align 4
  %0 = bitcast %struct._GimpVector2* %prev to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_points.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %prev, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i64 %idxprom
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %cmp3 = fcmp une double %4, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %prev, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i64 %idxprom5
  %y7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx6, i32 0, i32 1
  %11 = load double, double* %y7, align 8
  %cmp8 = fcmp une double %8, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  %12 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %12, 0
  %cond = select i1 %cmp9, i32 0, i32 1
  %header = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %type = getelementptr inbounds %struct.anon, %struct.anon* %header, i32 0, i32 0
  store i32 %cond, i32* %type, align 4
  %header10 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %length = getelementptr inbounds %struct.anon, %struct.anon* %header10, i32 0, i32 1
  store i32 2, i32* %length, align 4
  %13 = load %struct._GArray*, %struct._GArray** %path_data.addr, align 8
  %14 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call = call %struct._GArray* @g_array_append_vals(%struct._GArray* %13, i8* %14, i32 1)
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %16, i64 %idxprom11
  %x13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx12, i32 0, i32 0
  %17 = load double, double* %x13, align 8
  %point = bitcast %union._cairo_path_data_t* %pd to %struct.anon.0*
  %x14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point, i32 0, i32 0
  store double %17, double* %x14, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i64 %idxprom15
  %y17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx16, i32 0, i32 1
  %20 = load double, double* %y17, align 8
  %point18 = bitcast %union._cairo_path_data_t* %pd to %struct.anon.0*
  %y19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point18, i32 0, i32 1
  store double %20, double* %y19, align 8
  %21 = load %struct._GArray*, %struct._GArray** %path_data.addr, align 8
  %22 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call20 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %21, i8* %22, i32 1)
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %24, i64 %idxprom21
  %25 = bitcast %struct._GimpVector2* %prev to i8*
  %26 = bitcast %struct._GimpVector2* %arrayidx22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %closed.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %for.end
  %header24 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %type25 = getelementptr inbounds %struct.anon, %struct.anon* %header24, i32 0, i32 0
  store i32 3, i32* %type25, align 4
  %header26 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %length27 = getelementptr inbounds %struct.anon, %struct.anon* %header26, i32 0, i32 1
  store i32 1, i32* %length27, align 4
  %29 = load %struct._GArray*, %struct._GArray** %path_data.addr, align 8
  %30 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call28 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %29, i8* %30, i32 1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %for.end
  ret void
}

declare void @g_free(i8*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_bezier_desc_translate(%struct.cairo_path* %desc, double %offset_x, double %offset_y) #2 {
entry:
  %desc.addr = alloca %struct.cairo_path*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.cairo_path* %desc, %struct.cairo_path** %desc.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %cmp = icmp ne %struct.cairo_path* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_desc_translate, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end.22

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %2, i32 0, i32 2
  %3 = load i32, i32* %num_data, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %6, i32 0, i32 1
  %7 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %7, i64 %idxprom
  %header = bitcast %union._cairo_path_data_t* %arrayidx to %struct.anon*
  %length = getelementptr inbounds %struct.anon, %struct.anon* %header, i32 0, i32 1
  %8 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %4, %8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load double, double* %offset_x.addr, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, %11
  %idxprom5 = sext i32 %add to i64
  %12 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data6 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %12, i32 0, i32 1
  %13 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data6, align 8
  %arrayidx7 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %13, i64 %idxprom5
  %point = bitcast %union._cairo_path_data_t* %arrayidx7 to %struct.anon.0*
  %x = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %add8 = fadd double %14, %9
  store double %add8, double* %x, align 8
  %15 = load double, double* %offset_y.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %16, %17
  %idxprom10 = sext i32 %add9 to i64
  %18 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data11 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %18, i32 0, i32 1
  %19 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data11, align 8
  %arrayidx12 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %19, i64 %idxprom10
  %point13 = bitcast %union._cairo_path_data_t* %arrayidx12 to %struct.anon.0*
  %y = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point13, i32 0, i32 1
  %20 = load double, double* %y, align 8
  %add14 = fadd double %20, %15
  store double %add14, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %data17 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %23, i32 0, i32 1
  %24 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data17, align 8
  %arrayidx18 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %24, i64 %idxprom16
  %header19 = bitcast %union._cairo_path_data_t* %arrayidx18 to %struct.anon*
  %length20 = getelementptr inbounds %struct.anon, %struct.anon* %header19, i32 0, i32 1
  %25 = load i32, i32* %length20, align 4
  %26 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %26, %25
  store i32 %add21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %if.else, %for.cond
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
