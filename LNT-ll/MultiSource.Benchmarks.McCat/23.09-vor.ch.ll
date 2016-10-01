; ModuleID = './MultiSource.Benchmarks.McCat/23.09-vor.ch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.point = type { i32, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.DCEL_segment = type { %struct.point, %struct.point, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment* }

@Splaytree = external global %struct.splay_node*, align 8
@CHno = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @empty() #0 {
entry:
  %0 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  %cmp = icmp eq %struct.splay_node* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @point_equal(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %y = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y2 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %5 = load i32, i32* %y2, align 4
  %cmp3 = icmp eq i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @determinant(i64 %p1.coerce, i64 %p2.coerce, i64 %p3.coerce) #0 {
entry:
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %p3 = alloca %struct.point, align 8
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %2 = bitcast %struct.point* %p3 to i64*
  store i64 %p3.coerce, i64* %2, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %y1 = getelementptr inbounds %struct.point, %struct.point* %p3, i32 0, i32 1
  %5 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %4, %5
  %mul = mul nsw i32 %3, %sub
  %y2 = getelementptr inbounds %struct.point, %struct.point* %p1, i32 0, i32 1
  %6 = load i32, i32* %y2, align 4
  %x3 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4
  %x4 = getelementptr inbounds %struct.point, %struct.point* %p3, i32 0, i32 0
  %8 = load i32, i32* %x4, align 4
  %sub5 = sub nsw i32 %7, %8
  %mul6 = mul nsw i32 %6, %sub5
  %sub7 = sub nsw i32 %mul, %mul6
  %x8 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 0
  %9 = load i32, i32* %x8, align 4
  %y9 = getelementptr inbounds %struct.point, %struct.point* %p3, i32 0, i32 1
  %10 = load i32, i32* %y9, align 4
  %mul10 = mul nsw i32 %9, %10
  %add = add nsw i32 %sub7, %mul10
  %y11 = getelementptr inbounds %struct.point, %struct.point* %p2, i32 0, i32 1
  %11 = load i32, i32* %y11, align 4
  %x12 = getelementptr inbounds %struct.point, %struct.point* %p3, i32 0, i32 0
  %12 = load i32, i32* %x12, align 4
  %mul13 = mul nsw i32 %11, %12
  %sub14 = sub nsw i32 %add, %mul13
  ret i32 %sub14
}

; Function Attrs: nounwind uwtable
define i32 @visible(i32 %direction, i64 %p1.coerce, i64 %p2.coerce, i64 %p3.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %p1 = alloca %struct.point, align 8
  %p2 = alloca %struct.point, align 8
  %p3 = alloca %struct.point, align 8
  %direction.addr = alloca i32, align 4
  %0 = bitcast %struct.point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 8
  %1 = bitcast %struct.point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 8
  %2 = bitcast %struct.point* %p3 to i64*
  store i64 %p3.coerce, i64* %2, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %3 = load i32, i32* %direction.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.point* %p1 to i64*
  %5 = load i64, i64* %4, align 4
  %6 = bitcast %struct.point* %p2 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = bitcast %struct.point* %p3 to i64*
  %9 = load i64, i64* %8, align 4
  %call = call i32 @determinant(i64 %5, i64 %7, i64 %9)
  %cmp1 = icmp slt i32 %call, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = bitcast %struct.point* %p1 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = bitcast %struct.point* %p2 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = bitcast %struct.point* %p3 to i64*
  %15 = load i64, i64* %14, align 4
  %call2 = call i32 @determinant(i64 %11, i64 %13, i64 %15)
  %cmp3 = icmp sgt i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* %left, %struct.DCEL_segment* %right) #0 {
entry:
  %left.addr = alloca %struct.DCEL_segment*, align 8
  %right.addr = alloca %struct.DCEL_segment*, align 8
  %n = alloca %struct.DCEL_segment*, align 8
  %end = alloca %struct.DCEL_segment*, align 8
  %tmp = alloca %struct.DCEL_segment*, align 8
  %P = alloca %struct.CHpoints*, align 8
  store %struct.DCEL_segment* %left, %struct.DCEL_segment** %left.addr, align 8
  store %struct.DCEL_segment* %right, %struct.DCEL_segment** %right.addr, align 8
  store %struct.CHpoints* null, %struct.CHpoints** %P, align 8
  %0 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %end, align 8
  %1 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %v2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i32 0, i32 1
  %2 = bitcast %struct.point* %v2 to i64*
  %3 = load i64, i64* %2, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %3)
  %4 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %q1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i32 0, i32 4
  %5 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q1, align 8
  %6 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %cmp = icmp eq %struct.DCEL_segment* %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %p2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %7, i32 0, i32 3
  %8 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p2, align 8
  store %struct.DCEL_segment* %8, %struct.DCEL_segment** %tmp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %p1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %9, i32 0, i32 2
  %10 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p1, align 8
  store %struct.DCEL_segment* %10, %struct.DCEL_segment** %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  store %struct.DCEL_segment* %11, %struct.DCEL_segment** %right.addr, align 8
  %12 = load %struct.DCEL_segment*, %struct.DCEL_segment** %tmp, align 8
  store %struct.DCEL_segment* %12, %struct.DCEL_segment** %left.addr, align 8
  %13 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %end, align 8
  %cmp2 = icmp ne %struct.DCEL_segment* %13, %14
  br i1 %cmp2, label %if.then.3, label %if.else.20

if.then.3:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.then.3
  %15 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %16 = load %struct.DCEL_segment*, %struct.DCEL_segment** %end, align 8
  %cmp4 = icmp ne %struct.DCEL_segment* %15, %16
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %q15 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %17, i32 0, i32 4
  %18 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q15, align 8
  %19 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %cmp6 = icmp eq %struct.DCEL_segment* %18, %19
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %while.body
  %20 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %v1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %20, i32 0, i32 0
  %21 = bitcast %struct.point* %v1 to i64*
  %22 = load i64, i64* %21, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %22)
  %23 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %p28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %23, i32 0, i32 3
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p28, align 8
  store %struct.DCEL_segment* %24, %struct.DCEL_segment** %tmp, align 8
  br label %if.end.12

if.else.9:                                        ; preds = %while.body
  %25 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %v210 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i32 0, i32 1
  %26 = bitcast %struct.point* %v210 to i64*
  %27 = load i64, i64* %26, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %27)
  %28 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %p111 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %28, i32 0, i32 2
  %29 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p111, align 8
  store %struct.DCEL_segment* %29, %struct.DCEL_segment** %tmp, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.then.7
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  store %struct.DCEL_segment* %30, %struct.DCEL_segment** %right.addr, align 8
  %31 = load %struct.DCEL_segment*, %struct.DCEL_segment** %tmp, align 8
  store %struct.DCEL_segment* %31, %struct.DCEL_segment** %left.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %q113 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %32, i32 0, i32 4
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q113, align 8
  %34 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %cmp14 = icmp eq %struct.DCEL_segment* %33, %34
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %while.end
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %v116 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %35, i32 0, i32 0
  %36 = bitcast %struct.point* %v116 to i64*
  %37 = load i64, i64* %36, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %37)
  br label %if.end.19

if.else.17:                                       ; preds = %while.end
  %38 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left.addr, align 8
  %v218 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %38, i32 0, i32 1
  %39 = bitcast %struct.point* %v218 to i64*
  %40 = load i64, i64* %39, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %40)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.26

if.else.20:                                       ; preds = %if.end
  %41 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %v221 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %41, i32 0, i32 1
  %42 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %v122 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %42, i32 0, i32 0
  %43 = bitcast %struct.point* %v221 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = bitcast %struct.point* %v122 to i64*
  %46 = load i64, i64* %45, align 4
  %call = call i32 @point_equal(i64 %44, i64 %46)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.else.20
  %47 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right.addr, align 8
  %v124 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %47, i32 0, i32 0
  %48 = bitcast %struct.point* %v124 to i64*
  %49 = load i64, i64* %48, align 4
  call void @point_list_insert(%struct.CHpoints** %P, i64 %49)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.19
  %50 = load %struct.CHpoints*, %struct.CHpoints** %P, align 8
  ret %struct.CHpoints* %50
}

declare void @point_list_insert(%struct.CHpoints**, i64) #1

; Function Attrs: nounwind uwtable
define void @add_segments(%struct.DCEL_segment* %n, %struct.DCEL_segment* %act, %struct.DCEL_segment* %first, i32 %direction) #0 {
entry:
  %n.addr = alloca %struct.DCEL_segment*, align 8
  %act.addr = alloca %struct.DCEL_segment*, align 8
  %first.addr = alloca %struct.DCEL_segment*, align 8
  %direction.addr = alloca i32, align 4
  %k = alloca %struct.DCEL_segment*, align 8
  %p = alloca %struct.point, align 4
  store %struct.DCEL_segment* %n, %struct.DCEL_segment** %n.addr, align 8
  store %struct.DCEL_segment* %act, %struct.DCEL_segment** %act.addr, align 8
  store %struct.DCEL_segment* %first, %struct.DCEL_segment** %first.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %v1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i32 0, i32 0
  %1 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %v11 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i32 0, i32 0
  %2 = bitcast %struct.point* %v1 to i64*
  %3 = load i64, i64* %2, align 4
  %4 = bitcast %struct.point* %v11 to i64*
  %5 = load i64, i64* %4, align 4
  %call = call i32 @point_equal(i64 %3, i64 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %v2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %6, i32 0, i32 1
  %7 = bitcast %struct.point* %p to i8*
  %8 = bitcast %struct.point* %v2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %v12 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %9, i32 0, i32 0
  %10 = bitcast %struct.point* %p to i8*
  %11 = bitcast %struct.point* %v12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %direction.addr, align 4
  %13 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %v13 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %13, i32 0, i32 0
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %v24 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %14, i32 0, i32 1
  %15 = bitcast %struct.point* %v13 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = bitcast %struct.point* %v24 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = bitcast %struct.point* %p to i64*
  %20 = load i64, i64* %19, align 4
  %call5 = call i32 @visible(i32 %12, i64 %16, i64 %18, i64 %20)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.51

if.then.7:                                        ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 48) #2
  %21 = bitcast i8* %call8 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %21, %struct.DCEL_segment** %k, align 8
  %22 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %v19 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %22, i32 0, i32 0
  %23 = bitcast %struct.point* %v19 to i8*
  %24 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 4, i1 false)
  %25 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %v210 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i32 0, i32 1
  %26 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %v211 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %26, i32 0, i32 1
  %27 = bitcast %struct.point* %v210 to i8*
  %28 = bitcast %struct.point* %v211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 4, i1 false)
  %29 = load i32, i32* %direction.addr, align 4
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then.12, label %if.else.29

if.then.12:                                       ; preds = %if.then.7
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %p1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %30, i32 0, i32 2
  %31 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p1, align 8
  %32 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %p113 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %32, i32 0, i32 2
  store %struct.DCEL_segment* %31, %struct.DCEL_segment** %p113, align 8
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %34 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %p2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %34, i32 0, i32 3
  store %struct.DCEL_segment* %33, %struct.DCEL_segment** %p2, align 8
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %36 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %q1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %36, i32 0, i32 4
  store %struct.DCEL_segment* %35, %struct.DCEL_segment** %q1, align 8
  %37 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %38 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %q2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %38, i32 0, i32 5
  store %struct.DCEL_segment* %37, %struct.DCEL_segment** %q2, align 8
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %40 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %q214 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %40, i32 0, i32 5
  store %struct.DCEL_segment* %39, %struct.DCEL_segment** %q214, align 8
  %41 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %p115 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %41, i32 0, i32 2
  %42 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p115, align 8
  %v116 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %42, i32 0, i32 0
  %43 = bitcast %struct.point* %v116 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = bitcast %struct.point* %p to i64*
  %46 = load i64, i64* %45, align 4
  %call17 = call i32 @point_equal(i64 %44, i64 %46)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.then.12
  %47 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %48 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %p120 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %48, i32 0, i32 2
  %49 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p120, align 8
  %q121 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %49, i32 0, i32 4
  store %struct.DCEL_segment* %47, %struct.DCEL_segment** %q121, align 8
  br label %if.end.25

if.else.22:                                       ; preds = %if.then.12
  %50 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %51 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %p123 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %51, i32 0, i32 2
  %52 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p123, align 8
  %q224 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %52, i32 0, i32 5
  store %struct.DCEL_segment* %50, %struct.DCEL_segment** %q224, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.19
  %53 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %54 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %p126 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %54, i32 0, i32 2
  store %struct.DCEL_segment* %53, %struct.DCEL_segment** %p126, align 8
  %55 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %56 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %p227 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %56, i32 0, i32 3
  store %struct.DCEL_segment* %55, %struct.DCEL_segment** %p227, align 8
  %57 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %58 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %p128 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %58, i32 0, i32 2
  %59 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p128, align 8
  %60 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %61 = load i32, i32* %direction.addr, align 4
  call void @add_segments(%struct.DCEL_segment* %57, %struct.DCEL_segment* %59, %struct.DCEL_segment* %60, i32 %61)
  br label %if.end.50

if.else.29:                                       ; preds = %if.then.7
  %62 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %q130 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %62, i32 0, i32 4
  %63 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q130, align 8
  %64 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %q131 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %64, i32 0, i32 4
  store %struct.DCEL_segment* %63, %struct.DCEL_segment** %q131, align 8
  %65 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %66 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %q232 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %66, i32 0, i32 5
  store %struct.DCEL_segment* %65, %struct.DCEL_segment** %q232, align 8
  %67 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %68 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %p133 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %68, i32 0, i32 2
  store %struct.DCEL_segment* %67, %struct.DCEL_segment** %p133, align 8
  %69 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %p234 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 3
  store %struct.DCEL_segment* %69, %struct.DCEL_segment** %p234, align 8
  %71 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %72 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n.addr, align 8
  %p235 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %72, i32 0, i32 3
  store %struct.DCEL_segment* %71, %struct.DCEL_segment** %p235, align 8
  %73 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %q136 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %73, i32 0, i32 4
  %74 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q136, align 8
  %v137 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %74, i32 0, i32 0
  %75 = bitcast %struct.point* %v137 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = bitcast %struct.point* %p to i64*
  %78 = load i64, i64* %77, align 4
  %call38 = call i32 @point_equal(i64 %76, i64 %78)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.else.29
  %79 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %80 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %q141 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %80, i32 0, i32 4
  %81 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q141, align 8
  %p142 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %81, i32 0, i32 2
  store %struct.DCEL_segment* %79, %struct.DCEL_segment** %p142, align 8
  br label %if.end.46

if.else.43:                                       ; preds = %if.else.29
  %82 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %83 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %q144 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %83, i32 0, i32 4
  %84 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q144, align 8
  %p245 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %84, i32 0, i32 3
  store %struct.DCEL_segment* %82, %struct.DCEL_segment** %p245, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.40
  %85 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %86 = load %struct.DCEL_segment*, %struct.DCEL_segment** %act.addr, align 8
  %q147 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %86, i32 0, i32 4
  store %struct.DCEL_segment* %85, %struct.DCEL_segment** %q147, align 8
  %87 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %88 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %q248 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %88, i32 0, i32 5
  store %struct.DCEL_segment* %87, %struct.DCEL_segment** %q248, align 8
  %89 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %90 = load %struct.DCEL_segment*, %struct.DCEL_segment** %k, align 8
  %q149 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %90, i32 0, i32 4
  %91 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q149, align 8
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %first.addr, align 8
  %93 = load i32, i32* %direction.addr, align 4
  call void @add_segments(%struct.DCEL_segment* %89, %struct.DCEL_segment* %91, %struct.DCEL_segment* %92, i32 %93)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.46, %if.end.25
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @construct_ch() #0 {
entry:
  %retval = alloca %struct.CHpoints*, align 8
  %root = alloca %struct.DCEL_segment*, align 8
  %left = alloca %struct.DCEL_segment*, align 8
  %right = alloca %struct.DCEL_segment*, align 8
  %coerce = alloca %struct.point, align 4
  %coerce9 = alloca %struct.point, align 4
  %n = alloca %struct.DCEL_segment*, align 8
  %coerce17 = alloca %struct.point, align 4
  store i32 0, i32* @CHno, align 4
  %call = call i32 @empty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.28, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 48) #2
  %0 = bitcast i8* %call1 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %root, align 8
  %1 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %v1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i32 0, i32 0
  %call2 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %2 = bitcast %struct.point* %coerce to i64*
  store i64 %call2, i64* %2, align 4
  %3 = bitcast %struct.point* %v1 to i8*
  %4 = bitcast %struct.point* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 4, i1 false)
  %5 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %6 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %p1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %6, i32 0, i32 2
  store %struct.DCEL_segment* %5, %struct.DCEL_segment** %p1, align 8
  %7 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %8 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %p2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %8, i32 0, i32 3
  store %struct.DCEL_segment* %7, %struct.DCEL_segment** %p2, align 8
  %9 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %10 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %q1 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %10, i32 0, i32 4
  store %struct.DCEL_segment* %9, %struct.DCEL_segment** %q1, align 8
  %11 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %12 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %q2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %12, i32 0, i32 5
  store %struct.DCEL_segment* %11, %struct.DCEL_segment** %q2, align 8
  %13 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  store %struct.DCEL_segment* %13, %struct.DCEL_segment** %left, align 8
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  store %struct.DCEL_segment* %14, %struct.DCEL_segment** %right, align 8
  %call3 = call i32 @empty()
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %15 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %v2 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %15, i32 0, i32 1
  %16 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %v16 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %16, i32 0, i32 0
  %17 = bitcast %struct.point* %v2 to i8*
  %18 = bitcast %struct.point* %v16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct.DCEL_segment*, %struct.DCEL_segment** %root, align 8
  %v27 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %19, i32 0, i32 1
  %call8 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %20 = bitcast %struct.point* %coerce9 to i64*
  store i64 %call8, i64* %20, align 4
  %21 = bitcast %struct.point* %v27 to i8*
  %22 = bitcast %struct.point* %coerce9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %call10 = call i32 @empty()
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call noalias i8* @malloc(i64 48) #2
  %23 = bitcast i8* %call12 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %23, %struct.DCEL_segment** %n, align 8
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %v113 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %24, i32 0, i32 0
  %25 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %v214 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i32 0, i32 1
  %26 = bitcast %struct.point* %v113 to i8*
  %27 = bitcast %struct.point* %v214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 4, i1 false)
  %28 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %v215 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %28, i32 0, i32 1
  %call16 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %29 = bitcast %struct.point* %coerce17 to i64*
  store i64 %call16, i64* %29, align 4
  %30 = bitcast %struct.point* %v215 to i8*
  %31 = bitcast %struct.point* %coerce17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 4, i1 false)
  %32 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %p118 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %33, i32 0, i32 2
  store %struct.DCEL_segment* %32, %struct.DCEL_segment** %p118, align 8
  %34 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right, align 8
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %q119 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %35, i32 0, i32 4
  store %struct.DCEL_segment* %34, %struct.DCEL_segment** %q119, align 8
  %36 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %37 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %p220 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %37, i32 0, i32 3
  store %struct.DCEL_segment* %36, %struct.DCEL_segment** %p220, align 8
  %38 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %q221 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %39, i32 0, i32 5
  store %struct.DCEL_segment* %38, %struct.DCEL_segment** %q221, align 8
  %40 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %41 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right, align 8
  %p222 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %41, i32 0, i32 3
  store %struct.DCEL_segment* %40, %struct.DCEL_segment** %p222, align 8
  %42 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %43 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %q223 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %43, i32 0, i32 5
  store %struct.DCEL_segment* %42, %struct.DCEL_segment** %q223, align 8
  %44 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %45 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %46 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  call void @add_segments(%struct.DCEL_segment* %44, %struct.DCEL_segment* %45, %struct.DCEL_segment* %46, i32 0)
  %47 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %p224 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %47, i32 0, i32 3
  %48 = load %struct.DCEL_segment*, %struct.DCEL_segment** %p224, align 8
  store %struct.DCEL_segment* %48, %struct.DCEL_segment** %left, align 8
  %49 = load %struct.DCEL_segment*, %struct.DCEL_segment** %n, align 8
  %50 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right, align 8
  %51 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  call void @add_segments(%struct.DCEL_segment* %49, %struct.DCEL_segment* %50, %struct.DCEL_segment* %51, i32 1)
  %52 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %q225 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %52, i32 0, i32 5
  %53 = load %struct.DCEL_segment*, %struct.DCEL_segment** %q225, align 8
  store %struct.DCEL_segment* %53, %struct.DCEL_segment** %right, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.5
  %54 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  call void @free_tree(%struct.splay_node* %54)
  %55 = load %struct.DCEL_segment*, %struct.DCEL_segment** %left, align 8
  %56 = load %struct.DCEL_segment*, %struct.DCEL_segment** %right, align 8
  %call26 = call %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* %55, %struct.DCEL_segment* %56)
  %call27 = call %struct.CHpoints* @remove_points(%struct.CHpoints* %call26)
  store %struct.CHpoints* %call27, %struct.CHpoints** %retval
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  %57 = load %struct.CHpoints*, %struct.CHpoints** %retval
  ret %struct.CHpoints* %57
}

declare i64 @delete_min(%struct.splay_node**) #1

declare void @free_tree(%struct.splay_node*) #1

declare %struct.CHpoints* @remove_points(%struct.CHpoints*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
