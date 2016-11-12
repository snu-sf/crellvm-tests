; ModuleID = './plug-ins/selection-to-path/math.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_coordinate_type = type { double, double }
%struct.coordinate_type = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"acosd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"math.c\00", align 1
@__func__.slope = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"coord2.x - coord1.x != 0\00", align 1

; Function Attrs: nounwind uwtable
define i32 @epsilon_equal(double %v1, double %v2) #0 {
entry:
  %v1.addr = alloca double, align 8
  %v2.addr = alloca double, align 8
  store double %v1, double* %v1.addr, align 8
  store double %v2, double* %v2.addr, align 8
  %0 = load double, double* %v1.addr, align 8
  %1 = load double, double* %v2.addr, align 8
  %cmp = fcmp oeq double %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load double, double* %v1.addr, align 8
  %3 = load double, double* %v2.addr, align 8
  %sub = fsub double %2, %3
  %call = call double @fabs(double %sub) #7
  %cmp1 = fcmp ole double %call, 1.000000e-05
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define double @distance(double %p1.coerce0, double %p1.coerce1, double %p2.coerce0, double %p2.coerce1) #0 {
entry:
  %p1 = alloca %struct.real_coordinate_type, align 8
  %p2 = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %p1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p1.coerce1, double* %2
  %3 = bitcast %struct.real_coordinate_type* %p2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %p2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %p2.coerce1, double* %5
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %p1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %p2, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %sub = fsub double %6, %7
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %p1, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %p2, i32 0, i32 1
  %9 = load double, double* %y2, align 8
  %sub3 = fsub double %8, %9
  %call = call double @hypot(double %sub, double %sub3) #6
  ret double %call
}

; Function Attrs: nounwind
declare double @hypot(double, double) #2

; Function Attrs: nounwind uwtable
define double @int_distance(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %p1 = alloca %struct.coordinate_type, align 8
  %p2 = alloca %struct.coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.coordinate_type* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %p1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %x1 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %p2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %conv2 = sitofp i32 %3 to double
  %sub = fsub double %conv, %conv2
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %p1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %conv3 = sitofp i32 %4 to double
  %y4 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %p2, i32 0, i32 1
  %5 = load i32, i32* %y4, align 4
  %conv5 = sitofp i32 %5 to double
  %sub6 = fsub double %conv3, %conv5
  %call = call double @hypot(double %sub, double %sub6) #6
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @my_acosd(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %a = alloca double, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %call = call i32 @epsilon_equal(double %0, double 1.000000e+00)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %v.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load double, double* %v.addr, align 8
  %call1 = call i32 @epsilon_equal(double %1, double -1.000000e+00)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store double -1.000000e+00, double* %v.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %call5 = call i32* @__errno_location() #7
  store i32 0, i32* %call5, align 4
  %2 = load double, double* %v.addr, align 8
  %call6 = call double @acos(double %2) #6
  store double %call6, double* %a, align 8
  %call7 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call7, align 4
  %cmp = icmp eq i32 %3, 34
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %call8 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call8, align 4
  %cmp9 = icmp eq i32 %4, 33
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.10
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %call11 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call11, align 4
  call void @exit(i32 %5) #8
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %lor.lhs.false
  %6 = load double, double* %a, align 8
  %mul = fmul double %6, 1.800000e+02
  %div = fdiv double %mul, 0x400921FB54442D18
  ret double %div
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare double @acos(double) #2

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define double @slope(double %coord1.coerce0, double %coord1.coerce1, double %coord2.coerce0, double %coord2.coerce1) #0 {
entry:
  %coord1 = alloca %struct.real_coordinate_type, align 8
  %coord2 = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %coord1 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %coord1.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %coord1.coerce1, double* %2
  %3 = bitcast %struct.real_coordinate_type* %coord2 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %coord2.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %coord2.coerce1, double* %5
  br label %do.body

do.body:                                          ; preds = %entry
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord2, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord1, i32 0, i32 0
  %7 = load double, double* %x1, align 8
  %sub = fsub double %6, %7
  %cmp = fcmp une double %sub, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__func__.slope, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord2, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord1, i32 0, i32 1
  %9 = load double, double* %y2, align 8
  %sub3 = fsub double %8, %9
  %x4 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord2, i32 0, i32 0
  %10 = load double, double* %x4, align 8
  %x5 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %coord1, i32 0, i32 0
  %11 = load double, double* %x5, align 8
  %sub6 = fsub double %10, %11
  %div = fdiv double %sub3, %sub6
  ret double %div
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define { double, double } @int_to_real_coord(i64 %int_coord.coerce) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %int_coord = alloca %struct.coordinate_type, align 8
  %real_coord = alloca %struct.real_coordinate_type, align 8
  %0 = bitcast %struct.coordinate_type* %int_coord to i64*
  store i64 %int_coord.coerce, i64* %0, align 8
  %x = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %int_coord, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %x1 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 0
  store double %conv, double* %x1, align 8
  %y = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %int_coord, i32 0, i32 1
  %2 = load i32, i32* %y, align 4
  %conv2 = sitofp i32 %2 to double
  %y3 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 1
  store double %conv2, double* %y3, align 8
  %3 = bitcast %struct.real_coordinate_type* %retval to i8*
  %4 = bitcast %struct.real_coordinate_type* %real_coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %6 = load { double, double }, { double, double }* %5, align 8
  ret { double, double } %6
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i64 @real_to_int_coord(double %real_coord.coerce0, double %real_coord.coerce1) #0 {
entry:
  %retval = alloca %struct.coordinate_type, align 4
  %real_coord = alloca %struct.real_coordinate_type, align 8
  %int_coord = alloca %struct.coordinate_type, align 4
  %0 = bitcast %struct.real_coordinate_type* %real_coord to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %real_coord.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %real_coord.coerce1, double* %2
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %conv = fptosi double %3 to i32
  %conv1 = sitofp i32 %conv to double
  %x2 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 0
  %4 = load double, double* %x2, align 8
  %cmp = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %x4 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 0
  %5 = load double, double* %x4, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  %cond = select i1 %cmp5, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv8 = sitofp i32 %cond7 to double
  %mul = fmul double 5.000000e-01, %conv8
  %add = fadd double %conv1, %mul
  %conv9 = fptosi double %add to i32
  %x10 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %int_coord, i32 0, i32 0
  store i32 %conv9, i32* %x10, align 4
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %conv11 = fptosi double %6 to i32
  %conv12 = sitofp i32 %conv11 to double
  %y13 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 1
  %7 = load double, double* %y13, align 8
  %cmp14 = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.22

cond.false.17:                                    ; preds = %cond.end
  %y18 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %real_coord, i32 0, i32 1
  %8 = load double, double* %y18, align 8
  %cmp19 = fcmp olt double %8, 0.000000e+00
  %cond21 = select i1 %cmp19, i32 -1, i32 0
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.17, %cond.true.16
  %cond23 = phi i32 [ 1, %cond.true.16 ], [ %cond21, %cond.false.17 ]
  %conv24 = sitofp i32 %cond23 to double
  %mul25 = fmul double 5.000000e-01, %conv24
  %add26 = fadd double %conv12, %mul25
  %conv27 = fptosi double %add26 to i32
  %y28 = getelementptr inbounds %struct.coordinate_type, %struct.coordinate_type* %int_coord, i32 0, i32 1
  store i32 %conv27, i32* %y28, align 4
  %9 = bitcast %struct.coordinate_type* %retval to i8*
  %10 = bitcast %struct.coordinate_type* %int_coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false)
  %11 = bitcast %struct.coordinate_type* %retval to i64*
  %12 = load i64, i64* %11, align 4
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i32 @points_adjacent_p(i32 %row1, i32 %col1, i32 %row2, i32 %col2) #0 {
entry:
  %row1.addr = alloca i32, align 4
  %col1.addr = alloca i32, align 4
  %row2.addr = alloca i32, align 4
  %col2.addr = alloca i32, align 4
  %row_diff = alloca i32, align 4
  %col_diff = alloca i32, align 4
  store i32 %row1, i32* %row1.addr, align 4
  store i32 %col1, i32* %col1.addr, align 4
  store i32 %row2, i32* %row2.addr, align 4
  store i32 %col2, i32* %col2.addr, align 4
  %0 = load i32, i32* %row1.addr, align 4
  %1 = load i32, i32* %row2.addr, align 4
  %sub = sub nsw i32 %0, %1
  %call = call i32 @abs(i32 %sub) #7
  store i32 %call, i32* %row_diff, align 4
  %2 = load i32, i32* %col1.addr, align 4
  %3 = load i32, i32* %col2.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %call2 = call i32 @abs(i32 %sub1) #7
  store i32 %call2, i32* %col_diff, align 4
  %4 = load i32, i32* %row_diff, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %col_diff, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %row_diff, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %land.lhs.true.5, label %lor.rhs

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %col_diff, align 4
  %cmp6 = icmp eq i32 %7, 1
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.5, %lor.lhs.false
  %8 = load i32, i32* %row_diff, align 4
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load i32, i32* %col_diff, align 4
  %cmp8 = icmp eq i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.5, %land.lhs.true
  %11 = phi i1 [ true, %land.lhs.true.5 ], [ true, %land.lhs.true ], [ %10, %land.end ]
  %lor.ext = zext i1 %11 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind uwtable
define void @find_bounds(double* %values, i32 %value_count, double* %min, double* %max) #0 {
entry:
  %values.addr = alloca double*, align 8
  %value_count.addr = alloca i32, align 4
  %min.addr = alloca double*, align 8
  %max.addr = alloca double*, align 8
  %this_value = alloca i32, align 4
  store double* %values, double** %values.addr, align 8
  store i32 %value_count, i32* %value_count.addr, align 4
  store double* %min, double** %min.addr, align 8
  store double* %max, double** %max.addr, align 8
  %0 = load double*, double** %min.addr, align 8
  store double 0x47EFFFFFE0000000, double* %0, align 8
  %1 = load double*, double** %max.addr, align 8
  store double 0x3810000000000000, double* %1, align 8
  store i32 0, i32* %this_value, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %this_value, align 4
  %3 = load i32, i32* %value_count.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %this_value, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load double*, double** %values.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double*, double** %min.addr, align 8
  %8 = load double, double* %7, align 8
  %cmp1 = fcmp olt double %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %this_value, align 4
  %idxprom2 = zext i32 %9 to i64
  %10 = load double*, double** %values.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %10, i64 %idxprom2
  %11 = load double, double* %arrayidx3, align 8
  %12 = load double*, double** %min.addr, align 8
  store double %11, double* %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %this_value, align 4
  %idxprom4 = zext i32 %13 to i64
  %14 = load double*, double** %values.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %14, i64 %idxprom4
  %15 = load double, double* %arrayidx5, align 8
  %16 = load double*, double** %max.addr, align 8
  %17 = load double, double* %16, align 8
  %cmp6 = fcmp ogt double %15, %17
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %18 = load i32, i32* %this_value, align 4
  %idxprom8 = zext i32 %18 to i64
  %19 = load double*, double** %values.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %19, i64 %idxprom8
  %20 = load double, double* %arrayidx9, align 8
  %21 = load double*, double** %max.addr, align 8
  store double %20, double* %21, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %22 = load i32, i32* %this_value, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %this_value, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double* @map_to_unit(double* %values, i32 %value_count) #0 {
entry:
  %values.addr = alloca double*, align 8
  %value_count.addr = alloca i32, align 4
  %smallest = alloca double, align 8
  %largest = alloca double, align 8
  %this_value = alloca i32, align 4
  %mapped_values = alloca double*, align 8
  store double* %values, double** %values.addr, align 8
  store i32 %value_count, i32* %value_count.addr, align 4
  %0 = load i32, i32* %value_count.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %1 = bitcast i8* %call to double*
  store double* %1, double** %mapped_values, align 8
  %2 = load double*, double** %values.addr, align 8
  %3 = load i32, i32* %value_count.addr, align 4
  call void @find_bounds(double* %2, i32 %3, double* %smallest, double* %largest)
  %4 = load double, double* %smallest, align 8
  %5 = load double, double* %largest, align 8
  %sub = fsub double %5, %4
  store double %sub, double* %largest, align 8
  store i32 0, i32* %this_value, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %this_value, align 4
  %7 = load i32, i32* %value_count.addr, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %this_value, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double*, double** %values.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8
  %11 = load double, double* %smallest, align 8
  %sub2 = fsub double %10, %11
  %12 = load double, double* %largest, align 8
  %div = fdiv double %sub2, %12
  %13 = load i32, i32* %this_value, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %mapped_values, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  store double %div, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %this_value, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %this_value, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double*, double** %mapped_values, align 8
  ret double* %16
}

declare noalias i8* @g_malloc_n(i64, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
