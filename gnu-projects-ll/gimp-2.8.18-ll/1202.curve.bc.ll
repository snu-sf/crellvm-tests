; ModuleID = './plug-ins/selection-to-path/curve.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curve = type { %struct.point_type*, i32, i32, %struct.vector_type*, %struct.vector_type*, %struct.curve*, %struct.curve* }
%struct.point_type = type { %struct.real_coordinate_type, double }
%struct.real_coordinate_type = type { double, double }
%struct.vector_type = type { double, double }
%struct.coordinate_type = type { i32, i32 }
%struct.curve_list_type = type { %struct.curve**, i32, i32 }
%struct.curve_list_array_type = type { %struct.curve_list_type*, i32 }

; Function Attrs: nounwind uwtable
define %struct.curve* @new_curve() #0 {
entry:
  %curve = alloca %struct.curve*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.curve*
  store %struct.curve* %0, %struct.curve** %curve, align 8
  %1 = load %struct.curve*, %struct.curve** %curve, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %1, i32 0, i32 0
  store %struct.point_type* null, %struct.point_type** %point_list, align 8
  %2 = load %struct.curve*, %struct.curve** %curve, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %3 = load %struct.curve*, %struct.curve** %curve, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 2
  store i32 0, i32* %cyclic, align 4
  %4 = load %struct.curve*, %struct.curve** %curve, align 8
  %end_tangent = getelementptr inbounds %struct.curve, %struct.curve* %4, i32 0, i32 4
  store %struct.vector_type* null, %struct.vector_type** %end_tangent, align 8
  %5 = load %struct.curve*, %struct.curve** %curve, align 8
  %start_tangent = getelementptr inbounds %struct.curve, %struct.curve* %5, i32 0, i32 3
  store %struct.vector_type* null, %struct.vector_type** %start_tangent, align 8
  %6 = load %struct.curve*, %struct.curve** %curve, align 8
  %next = getelementptr inbounds %struct.curve, %struct.curve* %6, i32 0, i32 6
  store %struct.curve* null, %struct.curve** %next, align 8
  %7 = load %struct.curve*, %struct.curve** %curve, align 8
  %previous = getelementptr inbounds %struct.curve, %struct.curve* %7, i32 0, i32 5
  store %struct.curve* null, %struct.curve** %previous, align 8
  %8 = load %struct.curve*, %struct.curve** %curve, align 8
  ret %struct.curve* %8
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.curve* @init_curve(i64 %coord.coerce) #0 {
entry:
  %coord = alloca %struct.coordinate_type, align 8
  %curve = alloca %struct.curve*, align 8
  %coerce = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %coord to i64*
  store i64 %coord.coerce, i64* %0, align 8
  %call = call %struct.curve* @new_curve()
  store %struct.curve* %call, %struct.curve** %curve, align 8
  %call1 = call noalias i8* @g_malloc_n(i64 1, i64 24)
  %1 = bitcast i8* %call1 to %struct.point_type*
  %2 = load %struct.curve*, %struct.curve** %curve, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 0
  store %struct.point_type* %1, %struct.point_type** %point_list, align 8
  %3 = load %struct.curve*, %struct.curve** %curve, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 1
  store i32 1, i32* %length, align 4
  %4 = load %struct.curve*, %struct.curve** %curve, align 8
  %point_list2 = getelementptr inbounds %struct.curve, %struct.curve* %4, i32 0, i32 0
  %5 = load %struct.point_type*, %struct.point_type** %point_list2, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %5, i64 0
  %coord3 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %6 = bitcast %struct.coordinate_type* %coord to i64*
  %7 = load i64, i64* %6, align 4
  %call4 = call { double, double } @int_to_real_coord(i64 %7)
  %8 = bitcast %struct.real_coordinate_type* %coerce to { double, double }*
  %9 = getelementptr { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = extractvalue { double, double } %call4, 0
  store double %10, double* %9, align 8
  %11 = getelementptr { double, double }, { double, double }* %8, i32 0, i32 1
  %12 = extractvalue { double, double } %call4, 1
  store double %12, double* %11, align 8
  %13 = bitcast %struct.real_coordinate_type* %coord3 to i8*
  %14 = bitcast %struct.real_coordinate_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.curve*, %struct.curve** %curve, align 8
  ret %struct.curve* %15
}

declare { double, double } @int_to_real_coord(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.curve* @copy_most_of_curve(%struct.curve* %old_curve) #0 {
entry:
  %old_curve.addr = alloca %struct.curve*, align 8
  %curve = alloca %struct.curve*, align 8
  store %struct.curve* %old_curve, %struct.curve** %old_curve.addr, align 8
  %call = call %struct.curve* @new_curve()
  store %struct.curve* %call, %struct.curve** %curve, align 8
  %0 = load %struct.curve*, %struct.curve** %old_curve.addr, align 8
  %cyclic = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 2
  %1 = load i32, i32* %cyclic, align 4
  %2 = load %struct.curve*, %struct.curve** %curve, align 8
  %cyclic1 = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 2
  store i32 %1, i32* %cyclic1, align 4
  %3 = load %struct.curve*, %struct.curve** %old_curve.addr, align 8
  %previous = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 5
  %4 = load %struct.curve*, %struct.curve** %previous, align 8
  %5 = load %struct.curve*, %struct.curve** %curve, align 8
  %previous2 = getelementptr inbounds %struct.curve, %struct.curve* %5, i32 0, i32 5
  store %struct.curve* %4, %struct.curve** %previous2, align 8
  %6 = load %struct.curve*, %struct.curve** %old_curve.addr, align 8
  %next = getelementptr inbounds %struct.curve, %struct.curve* %6, i32 0, i32 6
  %7 = load %struct.curve*, %struct.curve** %next, align 8
  %8 = load %struct.curve*, %struct.curve** %curve, align 8
  %next3 = getelementptr inbounds %struct.curve, %struct.curve* %8, i32 0, i32 6
  store %struct.curve* %7, %struct.curve** %next3, align 8
  %9 = load %struct.curve*, %struct.curve** %curve, align 8
  ret %struct.curve* %9
}

; Function Attrs: nounwind uwtable
define void @free_curve(%struct.curve* %curve) #0 {
entry:
  %curve.addr = alloca %struct.curve*, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %2, i32 0, i32 0
  %3 = bitcast %struct.point_type** %point_list to i8**
  call void @safe_free(i8** %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @safe_free(i8**) #1

; Function Attrs: nounwind uwtable
define void @append_pixel(%struct.curve* %curve, i64 %coord.coerce) #0 {
entry:
  %coord = alloca %struct.coordinate_type, align 8
  %curve.addr = alloca %struct.curve*, align 8
  %agg.tmp = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %coord to i64*
  store i64 %coord.coerce, i64* %0, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %1 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %2 = bitcast %struct.coordinate_type* %coord to i64*
  %3 = load i64, i64* %2, align 4
  %call = call { double, double } @int_to_real_coord(i64 %3)
  %4 = bitcast %struct.real_coordinate_type* %agg.tmp to { double, double }*
  %5 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 0
  %6 = extractvalue { double, double } %call, 0
  store double %6, double* %5, align 8
  %7 = getelementptr { double, double }, { double, double }* %4, i32 0, i32 1
  %8 = extractvalue { double, double } %call, 1
  store double %8, double* %7, align 8
  %9 = bitcast %struct.real_coordinate_type* %agg.tmp to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  %11 = load double, double* %10, align 1
  %12 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  %13 = load double, double* %12, align 1
  call void @append_point(%struct.curve* %1, double %11, double %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @append_point(%struct.curve* %curve, double %coord.coerce0, double %coord.coerce1) #0 {
entry:
  %coord = alloca %struct.real_coordinate_type, align 8
  %curve.addr = alloca %struct.curve*, align 8
  %0 = bitcast %struct.real_coordinate_type* %coord to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %coord.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %coord.coerce1, double* %2
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %3 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length = getelementptr inbounds %struct.curve, %struct.curve* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %length, align 4
  %5 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list = getelementptr inbounds %struct.curve, %struct.curve* %5, i32 0, i32 0
  %6 = load %struct.point_type*, %struct.point_type** %point_list, align 8
  %7 = bitcast %struct.point_type* %6 to i8*
  %8 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length1 = getelementptr inbounds %struct.curve, %struct.curve* %8, i32 0, i32 1
  %9 = load i32, i32* %length1, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* @g_realloc(i8* %7, i64 %mul)
  %10 = bitcast i8* %call to %struct.point_type*
  %11 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list2 = getelementptr inbounds %struct.curve, %struct.curve* %11, i32 0, i32 0
  store %struct.point_type* %10, %struct.point_type** %point_list2, align 8
  %12 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %length3 = getelementptr inbounds %struct.curve, %struct.curve* %12, i32 0, i32 1
  %13 = load i32, i32* %length3, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub to i64
  %14 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %point_list4 = getelementptr inbounds %struct.curve, %struct.curve* %14, i32 0, i32 0
  %15 = load %struct.point_type*, %struct.point_type** %point_list4, align 8
  %arrayidx = getelementptr inbounds %struct.point_type, %struct.point_type* %15, i64 %idxprom
  %coord5 = getelementptr inbounds %struct.point_type, %struct.point_type* %arrayidx, i32 0, i32 0
  %16 = bitcast %struct.real_coordinate_type* %coord5 to i8*
  %17 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  ret void
}

declare i8* @g_realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define { %struct.curve**, i64 } @new_curve_list() #0 {
entry:
  %retval = alloca %struct.curve_list_type, align 8
  %curve_list = alloca %struct.curve_list_type, align 8
  %length = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %data = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 0
  store %struct.curve** null, %struct.curve*** %data, align 8
  %clockwise = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %curve_list, i32 0, i32 2
  store i32 0, i32* %clockwise, align 4
  %0 = bitcast %struct.curve_list_type* %retval to i8*
  %1 = bitcast %struct.curve_list_type* %curve_list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.curve_list_type* %retval to { %struct.curve**, i64 }*
  %3 = load { %struct.curve**, i64 }, { %struct.curve**, i64 }* %2, align 8
  ret { %struct.curve**, i64 } %3
}

; Function Attrs: nounwind uwtable
define void @free_curve_list(%struct.curve_list_type* %curve_list) #0 {
entry:
  %curve_list.addr = alloca %struct.curve_list_type*, align 8
  %this_curve = alloca i32, align 4
  store %struct.curve_list_type* %curve_list, %struct.curve_list_type** %curve_list.addr, align 8
  store i32 0, i32* %this_curve, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %this_curve, align 4
  %1 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %length = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %this_curve, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %4, i32 0, i32 0
  %5 = load %struct.curve**, %struct.curve*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.curve*, %struct.curve** %5, i64 %idxprom
  %6 = load %struct.curve*, %struct.curve** %arrayidx, align 8
  call void @free_curve(%struct.curve* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %this_curve, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %this_curve, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data1 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %8, i32 0, i32 0
  %9 = load %struct.curve**, %struct.curve*** %data1, align 8
  %cmp2 = icmp ne %struct.curve** %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data3 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %10, i32 0, i32 0
  %11 = bitcast %struct.curve*** %data3 to i8**
  call void @safe_free(i8** %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @append_curve(%struct.curve_list_type* %curve_list, %struct.curve* %curve) #0 {
entry:
  %curve_list.addr = alloca %struct.curve_list_type*, align 8
  %curve.addr = alloca %struct.curve*, align 8
  store %struct.curve_list_type* %curve_list, %struct.curve_list_type** %curve_list.addr, align 8
  store %struct.curve* %curve, %struct.curve** %curve.addr, align 8
  %0 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %length = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %length, align 4
  %2 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %2, i32 0, i32 0
  %3 = load %struct.curve**, %struct.curve*** %data, align 8
  %4 = bitcast %struct.curve** %3 to i8*
  %5 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %length1 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %5, i32 0, i32 1
  %6 = load i32, i32* %length1, align 4
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @g_realloc(i8* %4, i64 %mul)
  %7 = bitcast i8* %call to %struct.curve**
  %8 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data2 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %8, i32 0, i32 0
  store %struct.curve** %7, %struct.curve*** %data2, align 8
  %9 = load %struct.curve*, %struct.curve** %curve.addr, align 8
  %10 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %length3 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %10, i32 0, i32 1
  %11 = load i32, i32* %length3, align 4
  %sub = sub i32 %11, 1
  %idxprom = zext i32 %sub to i64
  %12 = load %struct.curve_list_type*, %struct.curve_list_type** %curve_list.addr, align 8
  %data4 = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %12, i32 0, i32 0
  %13 = load %struct.curve**, %struct.curve*** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.curve*, %struct.curve** %13, i64 %idxprom
  store %struct.curve* %9, %struct.curve** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { %struct.curve_list_type*, i32 } @new_curve_list_array() #0 {
entry:
  %retval = alloca %struct.curve_list_array_type, align 8
  %curve_list_array = alloca %struct.curve_list_array_type, align 8
  %length = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %curve_list_array, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %data = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %curve_list_array, i32 0, i32 0
  store %struct.curve_list_type* null, %struct.curve_list_type** %data, align 8
  %0 = bitcast %struct.curve_list_array_type* %retval to i8*
  %1 = bitcast %struct.curve_list_array_type* %curve_list_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.curve_list_array_type* %retval to { %struct.curve_list_type*, i32 }*
  %3 = load { %struct.curve_list_type*, i32 }, { %struct.curve_list_type*, i32 }* %2, align 8
  ret { %struct.curve_list_type*, i32 } %3
}

; Function Attrs: nounwind uwtable
define void @free_curve_list_array(%struct.curve_list_array_type* %curve_list_array) #0 {
entry:
  %curve_list_array.addr = alloca %struct.curve_list_array_type*, align 8
  %this_list = alloca i32, align 4
  store %struct.curve_list_array_type* %curve_list_array, %struct.curve_list_array_type** %curve_list_array.addr, align 8
  store i32 0, i32* %this_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %this_list, align 4
  %1 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %curve_list_array.addr, align 8
  %length = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %this_list, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %curve_list_array.addr, align 8
  %data = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %4, i32 0, i32 0
  %5 = load %struct.curve_list_type*, %struct.curve_list_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %5, i64 %idxprom
  call void @free_curve_list(%struct.curve_list_type* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %this_list, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %this_list, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %curve_list_array.addr, align 8
  %data1 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %7, i32 0, i32 0
  %8 = load %struct.curve_list_type*, %struct.curve_list_type** %data1, align 8
  %cmp2 = icmp ne %struct.curve_list_type* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %curve_list_array.addr, align 8
  %data3 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %9, i32 0, i32 0
  %10 = bitcast %struct.curve_list_type** %data3 to i8**
  call void @safe_free(i8** %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @append_curve_list(%struct.curve_list_array_type* %l, %struct.curve** %curve_list.coerce0, i64 %curve_list.coerce1) #0 {
entry:
  %curve_list = alloca %struct.curve_list_type, align 8
  %l.addr = alloca %struct.curve_list_array_type*, align 8
  %0 = bitcast %struct.curve_list_type* %curve_list to { %struct.curve**, i64 }*
  %1 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %0, i32 0, i32 0
  store %struct.curve** %curve_list.coerce0, %struct.curve*** %1
  %2 = getelementptr { %struct.curve**, i64 }, { %struct.curve**, i64 }* %0, i32 0, i32 1
  store i64 %curve_list.coerce1, i64* %2
  store %struct.curve_list_array_type* %l, %struct.curve_list_array_type** %l.addr, align 8
  %3 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %length = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %length, align 4
  %5 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %data = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %5, i32 0, i32 0
  %6 = load %struct.curve_list_type*, %struct.curve_list_type** %data, align 8
  %7 = bitcast %struct.curve_list_type* %6 to i8*
  %8 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %length1 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %8, i32 0, i32 1
  %9 = load i32, i32* %length1, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @g_realloc(i8* %7, i64 %mul)
  %10 = bitcast i8* %call to %struct.curve_list_type*
  %11 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %data2 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %11, i32 0, i32 0
  store %struct.curve_list_type* %10, %struct.curve_list_type** %data2, align 8
  %12 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %length3 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %12, i32 0, i32 1
  %13 = load i32, i32* %length3, align 4
  %sub = sub i32 %13, 1
  %idxprom = zext i32 %sub to i64
  %14 = load %struct.curve_list_array_type*, %struct.curve_list_array_type** %l.addr, align 8
  %data4 = getelementptr inbounds %struct.curve_list_array_type, %struct.curve_list_array_type* %14, i32 0, i32 0
  %15 = load %struct.curve_list_type*, %struct.curve_list_type** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.curve_list_type, %struct.curve_list_type* %15, i64 %idxprom
  %16 = bitcast %struct.curve_list_type* %arrayidx to i8*
  %17 = bitcast %struct.curve_list_type* %curve_list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
