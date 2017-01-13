; ModuleID = './gsimpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.status = type { %struct.gs_state_s*, i8*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @gs_imagepath(%struct.gs_state_s* %pgs, i32 %width, i32 %height, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %stat = alloca %struct.status, align 8
  %out = alloca %struct.status*, align 8
  %code = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.status* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.status** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.status* %stat, %struct.status** %out, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 1
  store i8* %6, i8** %data2, align 8, !tbaa !9
  %7 = load i32, i32* %width.addr, align 4, !tbaa !5
  %width3 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 2
  store i32 %7, i32* %width3, align 4, !tbaa !10
  %8 = load i32, i32* %height.addr, align 4, !tbaa !5
  %height4 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 3
  store i32 %8, i32* %height4, align 4, !tbaa !11
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, 7
  %div = sdiv i32 %add, 8
  %raster = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  store i32 %div, i32* %raster, align 4, !tbaa !12
  %10 = load i32, i32* %height.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %12, 1
  store i32 %sub5, i32* %x, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %x, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %13, 0
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %14 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %15 = load i32, i32* %x, align 4, !tbaa !5
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %call = call i32 @get_pixel(%struct.status* %14, i32 %15, i32 %16) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body.8
  %17 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %18 = load i32, i32* %x, align 4, !tbaa !5
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %sub9 = sub nsw i32 %19, 1
  %call10 = call i32 @get_pixel(%struct.status* %17, i32 %18, i32 %sub9) #3
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.34, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %20 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %21 = load i32, i32* %x, align 4, !tbaa !5
  %add13 = add nsw i32 %21, 1
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %call14 = call i32 @get_pixel(%struct.status* %20, i32 %add13, i32 %22) #3
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false, label %land.lhs.true.20

lor.lhs.false:                                    ; preds = %land.lhs.true.12
  %23 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %add16 = add nsw i32 %24, 1
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %sub17 = sub nsw i32 %25, 1
  %call18 = call i32 @get_pixel(%struct.status* %23, i32 %add16, i32 %sub17) #3
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.34

land.lhs.true.20:                                 ; preds = %lor.lhs.false, %land.lhs.true.12
  %26 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %call21 = call i32 @trace_from(%struct.status* %26, i32 %27, i32 %28, i32 1) #3
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.34, label %if.then

if.then:                                          ; preds = %land.lhs.true.20
  %count = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 7
  store i32 0, i32* %count, align 4, !tbaa !13
  %dy = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 6
  store i32 0, i32* %dy, align 4, !tbaa !14
  %dx = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 5
  store i32 0, i32* %dx, align 4, !tbaa !15
  %29 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %31 = load i32, i32* %y, align 4, !tbaa !5
  %call23 = call i32 @trace_from(%struct.status* %29, i32 %30, i32 %31, i32 0) #3
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %33 = load %struct.status*, %struct.status** %out, align 8, !tbaa !1
  %call26 = call i32 @add_dxdy(%struct.status* %33, i32 0, i32 0, i32 1) #3
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call30 = call i32 @gs_closepath(%struct.gs_state_s* %35) #3
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.20, %lor.lhs.false, %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %x, align 4, !tbaa !5
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %38 = load i32, i32* %y, align 4, !tbaa !5
  %dec36 = add nsw i32 %38, -1
  store i32 %dec36, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.37, %if.then.32, %if.then.28, %if.then.25
  %39 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.status** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.status* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_pixel(%struct.status* %out, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.status, %struct.status* %2, i32 0, i32 2
  %3 = load i32, i32* %width, align 4, !tbaa !10
  %cmp1 = icmp sge i32 %1, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.status, %struct.status* %6, i32 0, i32 3
  %7 = load i32, i32* %height, align 4, !tbaa !11
  %cmp5 = icmp sge i32 %5, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.status, %struct.status* %9, i32 0, i32 4
  %10 = load i32, i32* %raster, align 4, !tbaa !12
  %mul = mul nsw i32 %8, %10
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %11, 3
  %add = add nsw i32 %mul, %shr
  %idxprom = sext i32 %add to i64
  %12 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.status, %struct.status* %12, i32 0, i32 1
  %13 = load i8*, i8** %data, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %neg = xor i32 %15, -1
  %and = and i32 %neg, 7
  %shr6 = ashr i32 %conv, %and
  %and7 = and i32 %shr6, 1
  store i32 %and7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @trace_from(%struct.status* %out, i32 %x0, i32 %y0, i32 %detect) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %detect.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %part = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %detect, i32* %detect.addr, align 4, !tbaa !5
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !5
  store i32 %1, i32* %x, align 4, !tbaa !5
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %y0.addr, align 4, !tbaa !5
  store i32 %3, i32* %y, align 4, !tbaa !5
  %4 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1, i32* %dx, align 4, !tbaa !5
  %5 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %dy, align 4, !tbaa !5
  %6 = bitcast i32* %part to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %part, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %detect.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %10 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %call = call i32 @get_pixel(%struct.status* %9, i32 %add, i32 %sub) #3
  %tobool1 = icmp ne i32 %call, 0
  %cond = select i1 %tobool1, i32 3, i32 1
  store i32 %cond, i32* %part, align 4, !tbaa !5
  %12 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.status, %struct.status* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %14 = load i32, i32* %x, align 4, !tbaa !5
  %add2 = add nsw i32 %14, 1
  %conv = sitofp i32 %add2 to float
  %15 = load i32, i32* %part, align 4, !tbaa !5
  %conv3 = sitofp i32 %15 to float
  %div = fdiv float %conv3, 4.000000e+00
  %sub4 = fsub float %conv, %div
  %conv5 = fpext float %sub4 to double
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %conv6 = sitofp i32 %16 to float
  %conv7 = fpext float %conv6 to double
  %call8 = call i32 @gs_moveto(%struct.gs_state_s* %13, double %conv5, double %conv7) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.119

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.11
  br label %while.body

while.body:                                       ; preds = %while.cond
  %19 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %dx, align 4, !tbaa !5
  %21 = load i32, i32* %dy, align 4, !tbaa !5
  %sub12 = sub nsw i32 %20, %21
  store i32 %sub12, i32* %tx, align 4, !tbaa !5
  %22 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %dy, align 4, !tbaa !5
  %24 = load i32, i32* %dx, align 4, !tbaa !5
  %add13 = add nsw i32 %23, %24
  store i32 %add13, i32* %ty, align 4, !tbaa !5
  %25 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %26 = load i32, i32* %x, align 4, !tbaa !5
  %27 = load i32, i32* %tx, align 4, !tbaa !5
  %add14 = add nsw i32 %26, %27
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %29 = load i32, i32* %ty, align 4, !tbaa !5
  %add15 = add nsw i32 %28, %29
  %call16 = call i32 @get_pixel(%struct.status* %25, i32 %add14, i32 %add15) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.52

if.then.18:                                       ; preds = %while.body
  %30 = load i32, i32* %detect.addr, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %30, 0
  br i1 %tobool19, label %if.end.47, label %if.then.20

if.then.20:                                       ; preds = %if.then.18
  %31 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dx21 = getelementptr inbounds %struct.status, %struct.status* %31, i32 0, i32 5
  %32 = load i32, i32* %dx21, align 4, !tbaa !15
  %33 = load i32, i32* %ty, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %32, %33
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.20
  %34 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dy24 = getelementptr inbounds %struct.status, %struct.status* %34, i32 0, i32 6
  %35 = load i32, i32* %dy24, align 4, !tbaa !14
  %36 = load i32, i32* %tx, align 4, !tbaa !5
  %sub25 = sub nsw i32 0, %36
  %cmp26 = icmp eq i32 %35, %sub25
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  %37 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.status, %struct.status* %37, i32 0, i32 7
  %38 = load i32, i32* %count, align 4, !tbaa !13
  %sub29 = sub nsw i32 %38, 1
  store i32 %sub29, i32* %count, align 4, !tbaa !13
  %39 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %40 = load i32, i32* %tx, align 4, !tbaa !5
  %41 = load i32, i32* %ty, align 4, !tbaa !5
  %call30 = call i32 @add_dxdy(%struct.status* %39, i32 %40, i32 %41, i32 2) #3
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.28
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.28
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %if.then.20
  %43 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %44 = load i32, i32* %dx, align 4, !tbaa !5
  %45 = load i32, i32* %dy, align 4, !tbaa !5
  %46 = load i32, i32* %part, align 4, !tbaa !5
  %sub35 = sub nsw i32 1, %46
  %call36 = call i32 @add_dxdy(%struct.status* %43, i32 %44, i32 %45, i32 %sub35) #3
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.else
  %48 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %49 = load i32, i32* %tx, align 4, !tbaa !5
  %50 = load i32, i32* %ty, align 4, !tbaa !5
  %call41 = call i32 @add_dxdy(%struct.status* %48, i32 %49, i32 %50, i32 3) #3
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.34
  store i32 3, i32* %part, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.18
  %52 = load i32, i32* %tx, align 4, !tbaa !5
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %add48 = add nsw i32 %53, %52
  store i32 %add48, i32* %x, align 4, !tbaa !5
  %54 = load i32, i32* %ty, align 4, !tbaa !5
  %55 = load i32, i32* %y, align 4, !tbaa !5
  %add49 = add nsw i32 %55, %54
  store i32 %add49, i32* %y, align 4, !tbaa !5
  %56 = load i32, i32* %dy, align 4, !tbaa !5
  %sub50 = sub nsw i32 0, %56
  store i32 %sub50, i32* %dx, align 4, !tbaa !5
  %57 = load i32, i32* %tx, align 4, !tbaa !5
  %58 = load i32, i32* %dy, align 4, !tbaa !5
  %add51 = add nsw i32 %58, %57
  store i32 %add51, i32* %dy, align 4, !tbaa !5
  br label %if.end.86

if.else.52:                                       ; preds = %while.body
  %59 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %60 = load i32, i32* %x, align 4, !tbaa !5
  %61 = load i32, i32* %dx, align 4, !tbaa !5
  %add53 = add nsw i32 %60, %61
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %63 = load i32, i32* %dy, align 4, !tbaa !5
  %add54 = add nsw i32 %62, %63
  %call55 = call i32 @get_pixel(%struct.status* %59, i32 %add53, i32 %add54) #3
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.else.74, label %if.then.57

if.then.57:                                       ; preds = %if.else.52
  %64 = load i32, i32* %detect.addr, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %64, 0
  br i1 %tobool58, label %if.end.72, label %if.then.59

if.then.59:                                       ; preds = %if.then.57
  %65 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %66 = load i32, i32* %dx, align 4, !tbaa !5
  %67 = load i32, i32* %dy, align 4, !tbaa !5
  %68 = load i32, i32* %part, align 4, !tbaa !5
  %sub60 = sub nsw i32 3, %68
  %call61 = call i32 @add_dxdy(%struct.status* %65, i32 %66, i32 %67, i32 %sub60) #3
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.59
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.then.59
  %70 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %71 = load i32, i32* %ty, align 4, !tbaa !5
  %72 = load i32, i32* %tx, align 4, !tbaa !5
  %sub66 = sub nsw i32 0, %72
  %call67 = call i32 @add_dxdy(%struct.status* %70, i32 %71, i32 %sub66, i32 1) #3
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.65
  store i32 1, i32* %part, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.57
  %74 = load i32, i32* %dy, align 4, !tbaa !5
  store i32 %74, i32* %dx, align 4, !tbaa !5
  %75 = load i32, i32* %ty, align 4, !tbaa !5
  %76 = load i32, i32* %dy, align 4, !tbaa !5
  %sub73 = sub nsw i32 %76, %75
  store i32 %sub73, i32* %dy, align 4, !tbaa !5
  br label %if.end.85

if.else.74:                                       ; preds = %if.else.52
  %77 = load i32, i32* %detect.addr, align 4, !tbaa !5
  %tobool75 = icmp ne i32 %77, 0
  br i1 %tobool75, label %if.end.82, label %if.then.76

if.then.76:                                       ; preds = %if.else.74
  %78 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %79 = load i32, i32* %dx, align 4, !tbaa !5
  %80 = load i32, i32* %dy, align 4, !tbaa !5
  %call77 = call i32 @add_dxdy(%struct.status* %78, i32 %79, i32 %80, i32 4) #3
  store i32 %call77, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.then.76
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.else.74
  %82 = load i32, i32* %dx, align 4, !tbaa !5
  %83 = load i32, i32* %x, align 4, !tbaa !5
  %add83 = add nsw i32 %83, %82
  store i32 %add83, i32* %x, align 4, !tbaa !5
  %84 = load i32, i32* %dy, align 4, !tbaa !5
  %85 = load i32, i32* %y, align 4, !tbaa !5
  %add84 = add nsw i32 %85, %84
  store i32 %add84, i32* %y, align 4, !tbaa !5
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %if.end.72
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.47
  %86 = load i32, i32* %dx, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %86, -1
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.117

land.lhs.true.89:                                 ; preds = %if.end.86
  %87 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %87, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.117

land.lhs.true.92:                                 ; preds = %land.lhs.true.89
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %88, -1
  br i1 %cmp93, label %land.lhs.true.95, label %if.then.98

land.lhs.true.95:                                 ; preds = %land.lhs.true.92
  %89 = load i32, i32* %ty, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %89, -1
  br i1 %cmp96, label %if.end.117, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.95, %land.lhs.true.92
  %90 = load i32, i32* %x, align 4, !tbaa !5
  %91 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %90, %91
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.105

land.lhs.true.101:                                ; preds = %if.then.98
  %92 = load i32, i32* %y, align 4, !tbaa !5
  %93 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %92, %93
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %land.lhs.true.101, %if.then.98
  %94 = load i32, i32* %detect.addr, align 4, !tbaa !5
  %tobool106 = icmp ne i32 %94, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.116

land.lhs.true.107:                                ; preds = %if.end.105
  %95 = load i32, i32* %y, align 4, !tbaa !5
  %96 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp108 = icmp sgt i32 %95, %96
  br i1 %cmp108, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.107
  %97 = load i32, i32* %y, align 4, !tbaa !5
  %98 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %97, %98
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %lor.lhs.false
  %99 = load i32, i32* %x, align 4, !tbaa !5
  %100 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp113 = icmp sgt i32 %99, %100
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.112, %land.lhs.true.107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %land.lhs.true.112, %lor.lhs.false, %if.end.105
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %land.lhs.true.95, %land.lhs.true.89, %if.end.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.117, %if.then.115, %if.then.104, %if.then.80, %if.then.70, %if.then.64, %if.then.44, %if.then.39, %if.then.33
  %101 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.119 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

cleanup.119:                                      ; preds = %cleanup, %if.then.10
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %part to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal i32 @add_dxdy(%struct.status* %out, i32 %dx, i32 %dy, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.status* %out, %struct.status** %out.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %2 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dx1 = getelementptr inbounds %struct.status, %struct.status* %2, i32 0, i32 5
  %3 = load i32, i32* %dx1, align 4, !tbaa !15
  %cmp2 = icmp eq i32 %1, %3
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %dy.addr, align 4, !tbaa !5
  %5 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dy3 = getelementptr inbounds %struct.status, %struct.status* %5, i32 0, i32 6
  %6 = load i32, i32* %dy3, align 4, !tbaa !14
  %cmp4 = icmp eq i32 %4, %6
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %count.addr, align 4, !tbaa !5
  %8 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count6 = getelementptr inbounds %struct.status, %struct.status* %8, i32 0, i32 7
  %9 = load i32, i32* %count6, align 4, !tbaa !13
  %add = add nsw i32 %9, %7
  store i32 %add, i32* %count6, align 4, !tbaa !13
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count7 = getelementptr inbounds %struct.status, %struct.status* %10, i32 0, i32 7
  %11 = load i32, i32* %count7, align 4, !tbaa !13
  %cmp8 = icmp ne i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.else
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.status, %struct.status* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %15 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dx10 = getelementptr inbounds %struct.status, %struct.status* %15, i32 0, i32 5
  %16 = load i32, i32* %dx10, align 4, !tbaa !15
  %17 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count11 = getelementptr inbounds %struct.status, %struct.status* %17, i32 0, i32 7
  %18 = load i32, i32* %count11, align 4, !tbaa !13
  %mul = mul nsw i32 %16, %18
  %conv = sitofp i32 %mul to float
  %div = fdiv float %conv, 4.000000e+00
  %conv12 = fpext float %div to double
  %19 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dy13 = getelementptr inbounds %struct.status, %struct.status* %19, i32 0, i32 6
  %20 = load i32, i32* %dy13, align 4, !tbaa !14
  %21 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count14 = getelementptr inbounds %struct.status, %struct.status* %21, i32 0, i32 7
  %22 = load i32, i32* %count14, align 4, !tbaa !13
  %mul15 = mul nsw i32 %20, %22
  %conv16 = sitofp i32 %mul15 to float
  %div17 = fdiv float %conv16, 4.000000e+00
  %conv18 = fpext float %div17 to double
  %call = call i32 @gs_rlineto(%struct.gs_state_s* %14, double %conv12, double %conv18) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %23, 0
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.9
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.21
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.22

if.end.22:                                        ; preds = %cleanup.cont, %if.else
  %26 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %27 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dx23 = getelementptr inbounds %struct.status, %struct.status* %27, i32 0, i32 5
  store i32 %26, i32* %dx23, align 4, !tbaa !15
  %28 = load i32, i32* %dy.addr, align 4, !tbaa !5
  %29 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %dy24 = getelementptr inbounds %struct.status, %struct.status* %29, i32 0, i32 6
  store i32 %28, i32* %dy24, align 4, !tbaa !14
  %30 = load i32, i32* %count.addr, align 4, !tbaa !5
  %31 = load %struct.status*, %struct.status** %out.addr, align 8, !tbaa !1
  %count25 = getelementptr inbounds %struct.status, %struct.status* %31, i32 0, i32 7
  store i32 %30, i32* %count25, align 4, !tbaa !13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.22, %if.then.5
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %cleanup
  %32 = load i32, i32* %retval
  ret i32 %32

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_closepath(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_rlineto(%struct.gs_state_s*, double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!9 = !{!8, !2, i64 8}
!10 = !{!8, !6, i64 16}
!11 = !{!8, !6, i64 20}
!12 = !{!8, !6, i64 24}
!13 = !{!8, !6, i64 36}
!14 = !{!8, !6, i64 32}
!15 = !{!8, !6, i64 28}
!16 = !{!3, !3, i64 0}
