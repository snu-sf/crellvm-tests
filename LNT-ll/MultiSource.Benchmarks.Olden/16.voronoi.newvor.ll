; ModuleID = './MultiSource.Benchmarks.Olden/16.voronoi.newvor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_rec = type { %struct.VERTEX*, %struct.edge_rec*, i64, i8* }
%struct.VERTEX = type { %struct.VEC2, %struct.VERTEX*, %struct.VERTEX* }
%struct.VEC2 = type { double, double, double }
%struct.EDGE_PAIR = type { %struct.edge_rec*, %struct.edge_rec* }
%struct.EDGE_STACK = type { i32, %struct.edge_rec**, i32 }
%struct.get_point = type { %struct.VERTEX*, double, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ERROR: Only 1 point!\0A\00", align 1
@next_edge = common global %struct.edge_rec* null, align 8
@avail_edge = common global %struct.edge_rec* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"myalign() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Aborting in alloc_edge, ans = 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Entered DUMP_QUAD: ptr=0x%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DUMP_QUAD: ptr=0x%p onext=0x%p,v=0x%p\0A\00", align 1
@loop = global i32 0, align 4
@randum = global i32 1, align 4
@filein = global i32 0, align 4
@fileout = global i32 1, align 4
@statistics = global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"X=%f, Y=%f\0A\00", align 1
@to_color = common global i32 0, align 4
@to_3d_out = common global i32 0, align 4
@to_off = common global i32 0, align 4
@to_lincoln = common global i32 0, align 4
@delaunay = common global i32 0, align 4
@voronoi = common global i32 0, align 4
@ahost = common global i32 0, align 4
@interactive = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"getting %d points\0A\00", align 1
@NumNodes = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Done getting points\0A\00", align 1
@num_vertices = common global i32 0, align 4
@flag = common global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Doing voronoi on %d nodes\0A\00", align 1
@num_edgeparts = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"cannot push onto stack: stack is too large\0A\00", align 1
@vp = common global %struct.VERTEX** null, align 8
@va = common global %struct.VERTEX* null, align 8
@next = common global %struct.edge_rec** null, align 8
@org = common global %struct.VERTEX** null, align 8
@stack_size = common global i32 0, align 4
@see = common global i8* null, align 8
@NDim = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @connect_left(%struct.edge_rec* %a, %struct.edge_rec* %b) #0 {
entry:
  %a.addr = alloca %struct.edge_rec*, align 8
  %b.addr = alloca %struct.edge_rec*, align 8
  %t1 = alloca %struct.VERTEX*, align 8
  %t2 = alloca %struct.VERTEX*, align 8
  %ans = alloca %struct.edge_rec*, align 8
  %lnexta = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %a, %struct.edge_rec** %a.addr, align 8
  store %struct.edge_rec* %b, %struct.edge_rec** %b.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %xor = xor i64 %1, 64
  %2 = inttoptr i64 %xor to %struct.edge_rec*
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %2, i32 0, i32 0
  %3 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  store %struct.VERTEX* %3, %struct.VERTEX** %t1, align 8
  %4 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %5 = ptrtoint %struct.edge_rec* %4 to i64
  %add = add i64 %5, 96
  %and = and i64 %add, 127
  %6 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %7 = ptrtoint %struct.edge_rec* %6 to i64
  %and1 = and i64 %7, -128
  %or = or i64 %and, %and1
  %8 = inttoptr i64 %or to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %8, i32 0, i32 1
  %9 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %add2 = add i64 %10, 32
  %and3 = and i64 %add2, 127
  %11 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %add4 = add i64 %12, 96
  %and5 = and i64 %add4, 127
  %13 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %14 = ptrtoint %struct.edge_rec* %13 to i64
  %and6 = and i64 %14, -128
  %or7 = or i64 %and5, %and6
  %15 = inttoptr i64 %or7 to %struct.edge_rec*
  %next8 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %15, i32 0, i32 1
  %16 = load %struct.edge_rec*, %struct.edge_rec** %next8, align 8
  %17 = ptrtoint %struct.edge_rec* %16 to i64
  %and9 = and i64 %17, -128
  %or10 = or i64 %and3, %and9
  %18 = inttoptr i64 %or10 to %struct.edge_rec*
  store %struct.edge_rec* %18, %struct.edge_rec** %lnexta, align 8
  %19 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %v11 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %19, i32 0, i32 0
  %20 = load %struct.VERTEX*, %struct.VERTEX** %v11, align 8
  store %struct.VERTEX* %20, %struct.VERTEX** %t2, align 8
  %21 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %22 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %call = call %struct.edge_rec* @makeedge(%struct.VERTEX* %21, %struct.VERTEX* %22)
  store %struct.edge_rec* %call, %struct.edge_rec** %ans, align 8
  %23 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %lnexta, align 8
  call void @splice(%struct.edge_rec* %23, %struct.edge_rec* %24)
  %25 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %26 = ptrtoint %struct.edge_rec* %25 to i64
  %xor12 = xor i64 %26, 64
  %27 = inttoptr i64 %xor12 to %struct.edge_rec*
  %28 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  call void @splice(%struct.edge_rec* %27, %struct.edge_rec* %28)
  %29 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  ret %struct.edge_rec* %29
}

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @connect_right(%struct.edge_rec* %a, %struct.edge_rec* %b) #0 {
entry:
  %a.addr = alloca %struct.edge_rec*, align 8
  %b.addr = alloca %struct.edge_rec*, align 8
  %t1 = alloca %struct.VERTEX*, align 8
  %t2 = alloca %struct.VERTEX*, align 8
  %ans = alloca %struct.edge_rec*, align 8
  %oprevb = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %a, %struct.edge_rec** %a.addr, align 8
  store %struct.edge_rec* %b, %struct.edge_rec** %b.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %xor = xor i64 %1, 64
  %2 = inttoptr i64 %xor to %struct.edge_rec*
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %2, i32 0, i32 0
  %3 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  store %struct.VERTEX* %3, %struct.VERTEX** %t1, align 8
  %4 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %v1 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 0
  %5 = load %struct.VERTEX*, %struct.VERTEX** %v1, align 8
  store %struct.VERTEX* %5, %struct.VERTEX** %t2, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %7 = ptrtoint %struct.edge_rec* %6 to i64
  %add = add i64 %7, 32
  %and = and i64 %add, 127
  %8 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %9 = ptrtoint %struct.edge_rec* %8 to i64
  %and2 = and i64 %9, -128
  %or = or i64 %and, %and2
  %10 = inttoptr i64 %or to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i32 0, i32 1
  %11 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %add3 = add i64 %12, 32
  %and4 = and i64 %add3, 127
  %13 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %14 = ptrtoint %struct.edge_rec* %13 to i64
  %add5 = add i64 %14, 32
  %and6 = and i64 %add5, 127
  %15 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %16 = ptrtoint %struct.edge_rec* %15 to i64
  %and7 = and i64 %16, -128
  %or8 = or i64 %and6, %and7
  %17 = inttoptr i64 %or8 to %struct.edge_rec*
  %next9 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %17, i32 0, i32 1
  %18 = load %struct.edge_rec*, %struct.edge_rec** %next9, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %and10 = and i64 %19, -128
  %or11 = or i64 %and4, %and10
  %20 = inttoptr i64 %or11 to %struct.edge_rec*
  store %struct.edge_rec* %20, %struct.edge_rec** %oprevb, align 8
  %21 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %22 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %call = call %struct.edge_rec* @makeedge(%struct.VERTEX* %21, %struct.VERTEX* %22)
  store %struct.edge_rec* %call, %struct.edge_rec** %ans, align 8
  %23 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %25 = ptrtoint %struct.edge_rec* %24 to i64
  %xor12 = xor i64 %25, 64
  %26 = inttoptr i64 %xor12 to %struct.edge_rec*
  call void @splice(%struct.edge_rec* %23, %struct.edge_rec* %26)
  %27 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %28 = ptrtoint %struct.edge_rec* %27 to i64
  %xor13 = xor i64 %28, 64
  %29 = inttoptr i64 %xor13 to %struct.edge_rec*
  %30 = load %struct.edge_rec*, %struct.edge_rec** %oprevb, align 8
  call void @splice(%struct.edge_rec* %29, %struct.edge_rec* %30)
  %31 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  ret %struct.edge_rec* %31
}

; Function Attrs: nounwind uwtable
define void @deleteedge(%struct.edge_rec* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_rec*, align 8
  %f = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %e, %struct.edge_rec** %e.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %add = add i64 %1, 32
  %and = and i64 %add, 127
  %2 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %3 = ptrtoint %struct.edge_rec* %2 to i64
  %and1 = and i64 %3, -128
  %or = or i64 %and, %and1
  %4 = inttoptr i64 %or to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 1
  %5 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %6 = ptrtoint %struct.edge_rec* %5 to i64
  %add2 = add i64 %6, 32
  %and3 = and i64 %add2, 127
  %7 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %8 = ptrtoint %struct.edge_rec* %7 to i64
  %add4 = add i64 %8, 32
  %and5 = and i64 %add4, 127
  %9 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %and6 = and i64 %10, -128
  %or7 = or i64 %and5, %and6
  %11 = inttoptr i64 %or7 to %struct.edge_rec*
  %next8 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %11, i32 0, i32 1
  %12 = load %struct.edge_rec*, %struct.edge_rec** %next8, align 8
  %13 = ptrtoint %struct.edge_rec* %12 to i64
  %and9 = and i64 %13, -128
  %or10 = or i64 %and3, %and9
  %14 = inttoptr i64 %or10 to %struct.edge_rec*
  store %struct.edge_rec* %14, %struct.edge_rec** %f, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %16 = load %struct.edge_rec*, %struct.edge_rec** %f, align 8
  call void @splice(%struct.edge_rec* %15, %struct.edge_rec* %16)
  %17 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %18 = ptrtoint %struct.edge_rec* %17 to i64
  %xor = xor i64 %18, 64
  %19 = inttoptr i64 %xor to %struct.edge_rec*
  %20 = ptrtoint %struct.edge_rec* %19 to i64
  %add11 = add i64 %20, 32
  %and12 = and i64 %add11, 127
  %21 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %22 = ptrtoint %struct.edge_rec* %21 to i64
  %xor13 = xor i64 %22, 64
  %23 = inttoptr i64 %xor13 to %struct.edge_rec*
  %24 = ptrtoint %struct.edge_rec* %23 to i64
  %and14 = and i64 %24, -128
  %or15 = or i64 %and12, %and14
  %25 = inttoptr i64 %or15 to %struct.edge_rec*
  %next16 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %25, i32 0, i32 1
  %26 = load %struct.edge_rec*, %struct.edge_rec** %next16, align 8
  %27 = ptrtoint %struct.edge_rec* %26 to i64
  %add17 = add i64 %27, 32
  %and18 = and i64 %add17, 127
  %28 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %29 = ptrtoint %struct.edge_rec* %28 to i64
  %xor19 = xor i64 %29, 64
  %30 = inttoptr i64 %xor19 to %struct.edge_rec*
  %31 = ptrtoint %struct.edge_rec* %30 to i64
  %add20 = add i64 %31, 32
  %and21 = and i64 %add20, 127
  %32 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %33 = ptrtoint %struct.edge_rec* %32 to i64
  %xor22 = xor i64 %33, 64
  %34 = inttoptr i64 %xor22 to %struct.edge_rec*
  %35 = ptrtoint %struct.edge_rec* %34 to i64
  %and23 = and i64 %35, -128
  %or24 = or i64 %and21, %and23
  %36 = inttoptr i64 %or24 to %struct.edge_rec*
  %next25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %36, i32 0, i32 1
  %37 = load %struct.edge_rec*, %struct.edge_rec** %next25, align 8
  %38 = ptrtoint %struct.edge_rec* %37 to i64
  %and26 = and i64 %38, -128
  %or27 = or i64 %and18, %and26
  %39 = inttoptr i64 %or27 to %struct.edge_rec*
  store %struct.edge_rec* %39, %struct.edge_rec** %f, align 8
  %40 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %41 = ptrtoint %struct.edge_rec* %40 to i64
  %xor28 = xor i64 %41, 64
  %42 = inttoptr i64 %xor28 to %struct.edge_rec*
  %43 = load %struct.edge_rec*, %struct.edge_rec** %f, align 8
  call void @splice(%struct.edge_rec* %42, %struct.edge_rec* %43)
  %44 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  call void @free_edge(%struct.edge_rec* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_edge(%struct.edge_rec* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %e, %struct.edge_rec** %e.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %2 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %3 = ptrtoint %struct.edge_rec* %2 to i64
  %and = and i64 %3, 127
  %xor = xor i64 %1, %and
  %4 = inttoptr i64 %xor to %struct.edge_rec*
  store %struct.edge_rec* %4, %struct.edge_rec** %e.addr, align 8
  %5 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 1
  store %struct.edge_rec* %5, %struct.edge_rec** %next, align 8
  %7 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  store %struct.edge_rec* %7, %struct.edge_rec** @avail_edge, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @build_delaunay_triangulation(%struct.VERTEX* %tree, %struct.VERTEX* %extra) #0 {
entry:
  %tree.addr = alloca %struct.VERTEX*, align 8
  %extra.addr = alloca %struct.VERTEX*, align 8
  %retval1 = alloca %struct.EDGE_PAIR, align 8
  %coerce = alloca %struct.EDGE_PAIR, align 8
  store %struct.VERTEX* %tree, %struct.VERTEX** %tree.addr, align 8
  store %struct.VERTEX* %extra, %struct.VERTEX** %extra.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %1 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  %call = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %0, %struct.VERTEX* %1)
  %2 = bitcast %struct.EDGE_PAIR* %coerce to { %struct.edge_rec*, %struct.edge_rec* }*
  %3 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %2, i32 0, i32 0
  %4 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call, 0
  store %struct.edge_rec* %4, %struct.edge_rec** %3, align 8
  %5 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %2, i32 0, i32 1
  %6 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call, 1
  store %struct.edge_rec* %6, %struct.edge_rec** %5, align 8
  %7 = bitcast %struct.EDGE_PAIR* %retval1 to i8*
  %8 = bitcast %struct.EDGE_PAIR* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %left = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  %9 = load %struct.edge_rec*, %struct.edge_rec** %left, align 8
  ret %struct.edge_rec* %9
}

; Function Attrs: nounwind uwtable
define { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %tree, %struct.VERTEX* %extra) #0 {
entry:
  %retval = alloca %struct.EDGE_PAIR, align 8
  %tree.addr = alloca %struct.VERTEX*, align 8
  %extra.addr = alloca %struct.VERTEX*, align 8
  %a = alloca %struct.edge_rec*, align 8
  %b = alloca %struct.edge_rec*, align 8
  %c = alloca %struct.edge_rec*, align 8
  %ldo = alloca %struct.edge_rec*, align 8
  %rdi = alloca %struct.edge_rec*, align 8
  %ldi = alloca %struct.edge_rec*, align 8
  %rdo = alloca %struct.edge_rec*, align 8
  %retval1 = alloca %struct.EDGE_PAIR, align 8
  %maxx = alloca %struct.VERTEX*, align 8
  %minx = alloca %struct.VERTEX*, align 8
  %s1 = alloca %struct.VERTEX*, align 8
  %s2 = alloca %struct.VERTEX*, align 8
  %s3 = alloca %struct.VERTEX*, align 8
  %delleft = alloca %struct.EDGE_PAIR, align 8
  %delright = alloca %struct.EDGE_PAIR, align 8
  %coerce = alloca %struct.EDGE_PAIR, align 8
  %coerce6 = alloca %struct.EDGE_PAIR, align 8
  %coerce12 = alloca %struct.EDGE_PAIR, align 8
  store %struct.VERTEX* %tree, %struct.VERTEX** %tree.addr, align 8
  store %struct.VERTEX* %extra, %struct.VERTEX** %extra.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %tobool = icmp ne %struct.VERTEX* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %right = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %1, i32 0, i32 2
  %2 = load %struct.VERTEX*, %struct.VERTEX** %right, align 8
  %tobool2 = icmp ne %struct.VERTEX* %2, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %call = call %struct.VERTEX* @get_low(%struct.VERTEX* %3)
  store %struct.VERTEX* %call, %struct.VERTEX** %minx, align 8
  %4 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  store %struct.VERTEX* %4, %struct.VERTEX** %maxx, align 8
  %5 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %right3 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %5, i32 0, i32 2
  %6 = load %struct.VERTEX*, %struct.VERTEX** %right3, align 8
  %7 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  %call4 = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %6, %struct.VERTEX* %7)
  %8 = bitcast %struct.EDGE_PAIR* %coerce to { %struct.edge_rec*, %struct.edge_rec* }*
  %9 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %8, i32 0, i32 0
  %10 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call4, 0
  store %struct.edge_rec* %10, %struct.edge_rec** %9, align 8
  %11 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %8, i32 0, i32 1
  %12 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call4, 1
  store %struct.edge_rec* %12, %struct.edge_rec** %11, align 8
  %13 = bitcast %struct.EDGE_PAIR* %delright to i8*
  %14 = bitcast %struct.EDGE_PAIR* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %left = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %15, i32 0, i32 1
  %16 = load %struct.VERTEX*, %struct.VERTEX** %left, align 8
  %17 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %call5 = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %16, %struct.VERTEX* %17)
  %18 = bitcast %struct.EDGE_PAIR* %coerce6 to { %struct.edge_rec*, %struct.edge_rec* }*
  %19 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %18, i32 0, i32 0
  %20 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call5, 0
  store %struct.edge_rec* %20, %struct.edge_rec** %19, align 8
  %21 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %18, i32 0, i32 1
  %22 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call5, 1
  store %struct.edge_rec* %22, %struct.edge_rec** %21, align 8
  %23 = bitcast %struct.EDGE_PAIR* %delleft to i8*
  %24 = bitcast %struct.EDGE_PAIR* %coerce6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %left7 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %delleft, i32 0, i32 0
  %25 = load %struct.edge_rec*, %struct.edge_rec** %left7, align 8
  store %struct.edge_rec* %25, %struct.edge_rec** %ldo, align 8
  %right8 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %delleft, i32 0, i32 1
  %26 = load %struct.edge_rec*, %struct.edge_rec** %right8, align 8
  store %struct.edge_rec* %26, %struct.edge_rec** %ldi, align 8
  %left9 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %delright, i32 0, i32 0
  %27 = load %struct.edge_rec*, %struct.edge_rec** %left9, align 8
  store %struct.edge_rec* %27, %struct.edge_rec** %rdi, align 8
  %right10 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %delright, i32 0, i32 1
  %28 = load %struct.edge_rec*, %struct.edge_rec** %right10, align 8
  store %struct.edge_rec* %28, %struct.edge_rec** %rdo, align 8
  %29 = load %struct.edge_rec*, %struct.edge_rec** %ldo, align 8
  %30 = load %struct.edge_rec*, %struct.edge_rec** %ldi, align 8
  %31 = load %struct.edge_rec*, %struct.edge_rec** %rdi, align 8
  %32 = load %struct.edge_rec*, %struct.edge_rec** %rdo, align 8
  %call11 = call { %struct.edge_rec*, %struct.edge_rec* } @do_merge(%struct.edge_rec* %29, %struct.edge_rec* %30, %struct.edge_rec* %31, %struct.edge_rec* %32)
  %33 = bitcast %struct.EDGE_PAIR* %coerce12 to { %struct.edge_rec*, %struct.edge_rec* }*
  %34 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %33, i32 0, i32 0
  %35 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call11, 0
  store %struct.edge_rec* %35, %struct.edge_rec** %34, align 8
  %36 = getelementptr { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %33, i32 0, i32 1
  %37 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %call11, 1
  store %struct.edge_rec* %37, %struct.edge_rec** %36, align 8
  %38 = bitcast %struct.EDGE_PAIR* %retval1 to i8*
  %39 = bitcast %struct.EDGE_PAIR* %coerce12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %left13 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  %40 = load %struct.edge_rec*, %struct.edge_rec** %left13, align 8
  store %struct.edge_rec* %40, %struct.edge_rec** %ldo, align 8
  %right14 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 1
  %41 = load %struct.edge_rec*, %struct.edge_rec** %right14, align 8
  store %struct.edge_rec* %41, %struct.edge_rec** %rdo, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %42 = load %struct.edge_rec*, %struct.edge_rec** %ldo, align 8
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %42, i32 0, i32 0
  %43 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  %44 = load %struct.VERTEX*, %struct.VERTEX** %minx, align 8
  %cmp = icmp ne %struct.VERTEX* %43, %44
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load %struct.edge_rec*, %struct.edge_rec** %ldo, align 8
  %46 = ptrtoint %struct.edge_rec* %45 to i64
  %xor = xor i64 %46, 64
  %47 = inttoptr i64 %xor to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %47, i32 0, i32 1
  %48 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %48, %struct.edge_rec** %ldo, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.18, %while.end
  %49 = load %struct.edge_rec*, %struct.edge_rec** %rdo, align 8
  %v16 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %49, i32 0, i32 0
  %50 = load %struct.VERTEX*, %struct.VERTEX** %v16, align 8
  %51 = load %struct.VERTEX*, %struct.VERTEX** %maxx, align 8
  %cmp17 = icmp ne %struct.VERTEX* %50, %51
  br i1 %cmp17, label %while.body.18, label %while.end.21

while.body.18:                                    ; preds = %while.cond.15
  %52 = load %struct.edge_rec*, %struct.edge_rec** %rdo, align 8
  %next19 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %52, i32 0, i32 1
  %53 = load %struct.edge_rec*, %struct.edge_rec** %next19, align 8
  %54 = ptrtoint %struct.edge_rec* %53 to i64
  %xor20 = xor i64 %54, 64
  %55 = inttoptr i64 %xor20 to %struct.edge_rec*
  store %struct.edge_rec* %55, %struct.edge_rec** %rdo, align 8
  br label %while.cond.15

while.end.21:                                     ; preds = %while.cond.15
  %56 = load %struct.edge_rec*, %struct.edge_rec** %ldo, align 8
  %left22 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  store %struct.edge_rec* %56, %struct.edge_rec** %left22, align 8
  %57 = load %struct.edge_rec*, %struct.edge_rec** %rdo, align 8
  %right23 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 1
  store %struct.edge_rec* %57, %struct.edge_rec** %right23, align 8
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %entry
  %58 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %tobool24 = icmp ne %struct.VERTEX* %58, null
  br i1 %tobool24, label %if.else.27, label %if.then.25

if.then.25:                                       ; preds = %if.else
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.else.27:                                       ; preds = %if.else
  %59 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %left28 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %59, i32 0, i32 1
  %60 = load %struct.VERTEX*, %struct.VERTEX** %left28, align 8
  %tobool29 = icmp ne %struct.VERTEX* %60, null
  br i1 %tobool29, label %if.else.35, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  %61 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %62 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  %call31 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %61, %struct.VERTEX* %62)
  store %struct.edge_rec* %call31, %struct.edge_rec** %a, align 8
  %63 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %left32 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  store %struct.edge_rec* %63, %struct.edge_rec** %left32, align 8
  %64 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %65 = ptrtoint %struct.edge_rec* %64 to i64
  %xor33 = xor i64 %65, 64
  %66 = inttoptr i64 %xor33 to %struct.edge_rec*
  %right34 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 1
  store %struct.edge_rec* %66, %struct.edge_rec** %right34, align 8
  br label %if.end.55

if.else.35:                                       ; preds = %if.else.27
  %67 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %left36 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %67, i32 0, i32 1
  %68 = load %struct.VERTEX*, %struct.VERTEX** %left36, align 8
  store %struct.VERTEX* %68, %struct.VERTEX** %s1, align 8
  %69 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  store %struct.VERTEX* %69, %struct.VERTEX** %s2, align 8
  %70 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  store %struct.VERTEX* %70, %struct.VERTEX** %s3, align 8
  %71 = load %struct.VERTEX*, %struct.VERTEX** %s1, align 8
  %72 = load %struct.VERTEX*, %struct.VERTEX** %s2, align 8
  %call37 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %71, %struct.VERTEX* %72)
  store %struct.edge_rec* %call37, %struct.edge_rec** %a, align 8
  %73 = load %struct.VERTEX*, %struct.VERTEX** %s2, align 8
  %74 = load %struct.VERTEX*, %struct.VERTEX** %s3, align 8
  %call38 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %73, %struct.VERTEX* %74)
  store %struct.edge_rec* %call38, %struct.edge_rec** %b, align 8
  %75 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %76 = ptrtoint %struct.edge_rec* %75 to i64
  %xor39 = xor i64 %76, 64
  %77 = inttoptr i64 %xor39 to %struct.edge_rec*
  %78 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  call void @splice(%struct.edge_rec* %77, %struct.edge_rec* %78)
  %79 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %80 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %call40 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %79, %struct.edge_rec* %80)
  store %struct.edge_rec* %call40, %struct.edge_rec** %c, align 8
  %81 = load %struct.VERTEX*, %struct.VERTEX** %s1, align 8
  %82 = load %struct.VERTEX*, %struct.VERTEX** %s3, align 8
  %83 = load %struct.VERTEX*, %struct.VERTEX** %s2, align 8
  %call41 = call i32 @ccw(%struct.VERTEX* %81, %struct.VERTEX* %82, %struct.VERTEX* %83)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.else.35
  %84 = load %struct.edge_rec*, %struct.edge_rec** %c, align 8
  %85 = ptrtoint %struct.edge_rec* %84 to i64
  %xor44 = xor i64 %85, 64
  %86 = inttoptr i64 %xor44 to %struct.edge_rec*
  %left45 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  store %struct.edge_rec* %86, %struct.edge_rec** %left45, align 8
  %87 = load %struct.edge_rec*, %struct.edge_rec** %c, align 8
  %right46 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 1
  store %struct.edge_rec* %87, %struct.edge_rec** %right46, align 8
  br label %if.end.54

if.else.47:                                       ; preds = %if.else.35
  %88 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %left48 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 0
  store %struct.edge_rec* %88, %struct.edge_rec** %left48, align 8
  %89 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %90 = ptrtoint %struct.edge_rec* %89 to i64
  %xor49 = xor i64 %90, 64
  %91 = inttoptr i64 %xor49 to %struct.edge_rec*
  %right50 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval1, i32 0, i32 1
  store %struct.edge_rec* %91, %struct.edge_rec** %right50, align 8
  %92 = load %struct.VERTEX*, %struct.VERTEX** %s1, align 8
  %93 = load %struct.VERTEX*, %struct.VERTEX** %s2, align 8
  %94 = load %struct.VERTEX*, %struct.VERTEX** %s3, align 8
  %call51 = call i32 @ccw(%struct.VERTEX* %92, %struct.VERTEX* %93, %struct.VERTEX* %94)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end, label %if.then.53

if.then.53:                                       ; preds = %if.else.47
  %95 = load %struct.edge_rec*, %struct.edge_rec** %c, align 8
  call void @deleteedge(%struct.edge_rec* %95)
  br label %if.end

if.end:                                           ; preds = %if.then.53, %if.else.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then.43
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.30
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %while.end.21
  %96 = bitcast %struct.EDGE_PAIR* %retval to i8*
  %97 = bitcast %struct.EDGE_PAIR* %retval1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 16, i32 8, i1 false)
  %98 = bitcast %struct.EDGE_PAIR* %retval to { %struct.edge_rec*, %struct.edge_rec* }*
  %99 = load { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %98, align 8
  ret { %struct.edge_rec*, %struct.edge_rec* } %99
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define %struct.VERTEX* @get_low(%struct.VERTEX* %tree) #0 {
entry:
  %tree.addr = alloca %struct.VERTEX*, align 8
  %temp = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %tree, %struct.VERTEX** %tree.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %left = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %0, i32 0, i32 1
  %1 = load %struct.VERTEX*, %struct.VERTEX** %left, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %temp, align 8
  %tobool = icmp ne %struct.VERTEX* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.VERTEX*, %struct.VERTEX** %temp, align 8
  store %struct.VERTEX* %2, %struct.VERTEX** %tree.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  ret %struct.VERTEX* %3
}

; Function Attrs: nounwind uwtable
define { %struct.edge_rec*, %struct.edge_rec* } @do_merge(%struct.edge_rec* %ldo, %struct.edge_rec* %ldi, %struct.edge_rec* %rdi, %struct.edge_rec* %rdo) #0 {
entry:
  %retval = alloca %struct.EDGE_PAIR, align 8
  %ldo.addr = alloca %struct.edge_rec*, align 8
  %ldi.addr = alloca %struct.edge_rec*, align 8
  %rdi.addr = alloca %struct.edge_rec*, align 8
  %rdo.addr = alloca %struct.edge_rec*, align 8
  %rvalid = alloca i32, align 4
  %lvalid = alloca i32, align 4
  %basel = alloca %struct.edge_rec*, align 8
  %lcand = alloca %struct.edge_rec*, align 8
  %rcand = alloca %struct.edge_rec*, align 8
  %t = alloca %struct.edge_rec*, align 8
  %t1 = alloca %struct.VERTEX*, align 8
  %t2 = alloca %struct.VERTEX*, align 8
  %t3 = alloca %struct.VERTEX*, align 8
  %v155 = alloca %struct.VERTEX*, align 8
  %v256 = alloca %struct.VERTEX*, align 8
  %v3 = alloca %struct.VERTEX*, align 8
  %v4 = alloca %struct.VERTEX*, align 8
  %retval133 = alloca %struct.EDGE_PAIR, align 8
  store %struct.edge_rec* %ldo, %struct.edge_rec** %ldo.addr, align 8
  store %struct.edge_rec* %ldi, %struct.edge_rec** %ldi.addr, align 8
  store %struct.edge_rec* %rdi, %struct.edge_rec** %rdi.addr, align 8
  store %struct.edge_rec* %rdo, %struct.edge_rec** %rdo.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load %struct.edge_rec*, %struct.edge_rec** %rdi.addr, align 8
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %0, i32 0, i32 0
  %1 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %t3, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %v1 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %2, i32 0, i32 0
  %3 = load %struct.VERTEX*, %struct.VERTEX** %v1, align 8
  store %struct.VERTEX* %3, %struct.VERTEX** %t1, align 8
  %4 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %5 = ptrtoint %struct.edge_rec* %4 to i64
  %xor = xor i64 %5, 64
  %6 = inttoptr i64 %xor to %struct.edge_rec*
  %v2 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 0
  %7 = load %struct.VERTEX*, %struct.VERTEX** %v2, align 8
  store %struct.VERTEX* %7, %struct.VERTEX** %t2, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.4, %while.body
  %8 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %9 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %10 = load %struct.VERTEX*, %struct.VERTEX** %t3, align 8
  %call = call i32 @ccw(%struct.VERTEX* %8, %struct.VERTEX* %9, %struct.VERTEX* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.3
  %11 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %add = add i64 %12, 96
  %and = and i64 %add, 127
  %13 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %14 = ptrtoint %struct.edge_rec* %13 to i64
  %and5 = and i64 %14, -128
  %or = or i64 %and, %and5
  %15 = inttoptr i64 %or to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %15, i32 0, i32 1
  %16 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %17 = ptrtoint %struct.edge_rec* %16 to i64
  %add6 = add i64 %17, 32
  %and7 = and i64 %add6, 127
  %18 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %add8 = add i64 %19, 96
  %and9 = and i64 %add8, 127
  %20 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %21 = ptrtoint %struct.edge_rec* %20 to i64
  %and10 = and i64 %21, -128
  %or11 = or i64 %and9, %and10
  %22 = inttoptr i64 %or11 to %struct.edge_rec*
  %next12 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 1
  %23 = load %struct.edge_rec*, %struct.edge_rec** %next12, align 8
  %24 = ptrtoint %struct.edge_rec* %23 to i64
  %and13 = and i64 %24, -128
  %or14 = or i64 %and7, %and13
  %25 = inttoptr i64 %or14 to %struct.edge_rec*
  store %struct.edge_rec* %25, %struct.edge_rec** %ldi.addr, align 8
  %26 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %v15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %26, i32 0, i32 0
  %27 = load %struct.VERTEX*, %struct.VERTEX** %v15, align 8
  store %struct.VERTEX* %27, %struct.VERTEX** %t1, align 8
  %28 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %29 = ptrtoint %struct.edge_rec* %28 to i64
  %xor16 = xor i64 %29, 64
  %30 = inttoptr i64 %xor16 to %struct.edge_rec*
  %v17 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %30, i32 0, i32 0
  %31 = load %struct.VERTEX*, %struct.VERTEX** %v17, align 8
  store %struct.VERTEX* %31, %struct.VERTEX** %t2, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %32 = load %struct.edge_rec*, %struct.edge_rec** %rdi.addr, align 8
  %33 = ptrtoint %struct.edge_rec* %32 to i64
  %xor18 = xor i64 %33, 64
  %34 = inttoptr i64 %xor18 to %struct.edge_rec*
  %v19 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %34, i32 0, i32 0
  %35 = load %struct.VERTEX*, %struct.VERTEX** %v19, align 8
  store %struct.VERTEX* %35, %struct.VERTEX** %t2, align 8
  %36 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %37 = load %struct.VERTEX*, %struct.VERTEX** %t3, align 8
  %38 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %call20 = call i32 @ccw(%struct.VERTEX* %36, %struct.VERTEX* %37, %struct.VERTEX* %38)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %39 = load %struct.edge_rec*, %struct.edge_rec** %rdi.addr, align 8
  %40 = ptrtoint %struct.edge_rec* %39 to i64
  %xor22 = xor i64 %40, 64
  %41 = inttoptr i64 %xor22 to %struct.edge_rec*
  %next23 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %41, i32 0, i32 1
  %42 = load %struct.edge_rec*, %struct.edge_rec** %next23, align 8
  store %struct.edge_rec* %42, %struct.edge_rec** %rdi.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.end.24

if.end:                                           ; preds = %if.then
  br label %while.body

while.end.24:                                     ; preds = %if.else
  %43 = load %struct.edge_rec*, %struct.edge_rec** %rdi.addr, align 8
  %44 = ptrtoint %struct.edge_rec* %43 to i64
  %xor25 = xor i64 %44, 64
  %45 = inttoptr i64 %xor25 to %struct.edge_rec*
  %46 = load %struct.edge_rec*, %struct.edge_rec** %ldi.addr, align 8
  %call26 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %45, %struct.edge_rec* %46)
  store %struct.edge_rec* %call26, %struct.edge_rec** %basel, align 8
  %47 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %48 = ptrtoint %struct.edge_rec* %47 to i64
  %xor27 = xor i64 %48, 64
  %49 = inttoptr i64 %xor27 to %struct.edge_rec*
  %next28 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %49, i32 0, i32 1
  %50 = load %struct.edge_rec*, %struct.edge_rec** %next28, align 8
  store %struct.edge_rec* %50, %struct.edge_rec** %lcand, align 8
  %51 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %52 = ptrtoint %struct.edge_rec* %51 to i64
  %add29 = add i64 %52, 32
  %and30 = and i64 %add29, 127
  %53 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %54 = ptrtoint %struct.edge_rec* %53 to i64
  %and31 = and i64 %54, -128
  %or32 = or i64 %and30, %and31
  %55 = inttoptr i64 %or32 to %struct.edge_rec*
  %next33 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %55, i32 0, i32 1
  %56 = load %struct.edge_rec*, %struct.edge_rec** %next33, align 8
  %57 = ptrtoint %struct.edge_rec* %56 to i64
  %add34 = add i64 %57, 32
  %and35 = and i64 %add34, 127
  %58 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %59 = ptrtoint %struct.edge_rec* %58 to i64
  %add36 = add i64 %59, 32
  %and37 = and i64 %add36, 127
  %60 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %61 = ptrtoint %struct.edge_rec* %60 to i64
  %and38 = and i64 %61, -128
  %or39 = or i64 %and37, %and38
  %62 = inttoptr i64 %or39 to %struct.edge_rec*
  %next40 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %62, i32 0, i32 1
  %63 = load %struct.edge_rec*, %struct.edge_rec** %next40, align 8
  %64 = ptrtoint %struct.edge_rec* %63 to i64
  %and41 = and i64 %64, -128
  %or42 = or i64 %and35, %and41
  %65 = inttoptr i64 %or42 to %struct.edge_rec*
  store %struct.edge_rec* %65, %struct.edge_rec** %rcand, align 8
  %66 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %v43 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %66, i32 0, i32 0
  %67 = load %struct.VERTEX*, %struct.VERTEX** %v43, align 8
  store %struct.VERTEX* %67, %struct.VERTEX** %t1, align 8
  %68 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %69 = ptrtoint %struct.edge_rec* %68 to i64
  %xor44 = xor i64 %69, 64
  %70 = inttoptr i64 %xor44 to %struct.edge_rec*
  %v45 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %70, i32 0, i32 0
  %71 = load %struct.VERTEX*, %struct.VERTEX** %v45, align 8
  store %struct.VERTEX* %71, %struct.VERTEX** %t2, align 8
  %72 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %73 = load %struct.edge_rec*, %struct.edge_rec** %rdo.addr, align 8
  %v46 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %73, i32 0, i32 0
  %74 = load %struct.VERTEX*, %struct.VERTEX** %v46, align 8
  %cmp = icmp eq %struct.VERTEX* %72, %74
  br i1 %cmp, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.end.24
  %75 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  store %struct.edge_rec* %75, %struct.edge_rec** %rdo.addr, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %while.end.24
  %76 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %77 = load %struct.edge_rec*, %struct.edge_rec** %ldo.addr, align 8
  %v49 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %77, i32 0, i32 0
  %78 = load %struct.VERTEX*, %struct.VERTEX** %v49, align 8
  %cmp50 = icmp eq %struct.VERTEX* %76, %78
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %79 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %80 = ptrtoint %struct.edge_rec* %79 to i64
  %xor52 = xor i64 %80, 64
  %81 = inttoptr i64 %xor52 to %struct.edge_rec*
  store %struct.edge_rec* %81, %struct.edge_rec** %ldo.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  br label %while.body.54

while.body.54:                                    ; preds = %if.end.53, %if.end.172
  %82 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %next57 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %82, i32 0, i32 1
  %83 = load %struct.edge_rec*, %struct.edge_rec** %next57, align 8
  store %struct.edge_rec* %83, %struct.edge_rec** %t, align 8
  %84 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %85 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %call58 = call i32 @valid(%struct.edge_rec* %84, %struct.edge_rec* %85)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.78

if.then.60:                                       ; preds = %while.body.54
  %86 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %v61 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %86, i32 0, i32 0
  %87 = load %struct.VERTEX*, %struct.VERTEX** %v61, align 8
  store %struct.VERTEX* %87, %struct.VERTEX** %v4, align 8
  %88 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %89 = ptrtoint %struct.edge_rec* %88 to i64
  %xor62 = xor i64 %89, 64
  %90 = inttoptr i64 %xor62 to %struct.edge_rec*
  %v63 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %90, i32 0, i32 0
  %91 = load %struct.VERTEX*, %struct.VERTEX** %v63, align 8
  store %struct.VERTEX* %91, %struct.VERTEX** %v155, align 8
  %92 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %v64 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %92, i32 0, i32 0
  %93 = load %struct.VERTEX*, %struct.VERTEX** %v64, align 8
  store %struct.VERTEX* %93, %struct.VERTEX** %v3, align 8
  %94 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %95 = ptrtoint %struct.edge_rec* %94 to i64
  %xor65 = xor i64 %95, 64
  %96 = inttoptr i64 %xor65 to %struct.edge_rec*
  %v66 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %96, i32 0, i32 0
  %97 = load %struct.VERTEX*, %struct.VERTEX** %v66, align 8
  store %struct.VERTEX* %97, %struct.VERTEX** %v256, align 8
  br label %while.cond.67

while.cond.67:                                    ; preds = %while.body.70, %if.then.60
  %98 = load %struct.VERTEX*, %struct.VERTEX** %v155, align 8
  %99 = load %struct.VERTEX*, %struct.VERTEX** %v256, align 8
  %100 = load %struct.VERTEX*, %struct.VERTEX** %v3, align 8
  %101 = load %struct.VERTEX*, %struct.VERTEX** %v4, align 8
  %call68 = call i32 @incircle(%struct.VERTEX* %98, %struct.VERTEX* %99, %struct.VERTEX* %100, %struct.VERTEX* %101)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %while.body.70, label %while.end.77

while.body.70:                                    ; preds = %while.cond.67
  %102 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  call void @deleteedge(%struct.edge_rec* %102)
  %103 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  store %struct.edge_rec* %103, %struct.edge_rec** %lcand, align 8
  %104 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %next71 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %104, i32 0, i32 1
  %105 = load %struct.edge_rec*, %struct.edge_rec** %next71, align 8
  store %struct.edge_rec* %105, %struct.edge_rec** %t, align 8
  %106 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %107 = ptrtoint %struct.edge_rec* %106 to i64
  %xor72 = xor i64 %107, 64
  %108 = inttoptr i64 %xor72 to %struct.edge_rec*
  %v73 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %108, i32 0, i32 0
  %109 = load %struct.VERTEX*, %struct.VERTEX** %v73, align 8
  store %struct.VERTEX* %109, %struct.VERTEX** %v155, align 8
  %110 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %v74 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %110, i32 0, i32 0
  %111 = load %struct.VERTEX*, %struct.VERTEX** %v74, align 8
  store %struct.VERTEX* %111, %struct.VERTEX** %v3, align 8
  %112 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %113 = ptrtoint %struct.edge_rec* %112 to i64
  %xor75 = xor i64 %113, 64
  %114 = inttoptr i64 %xor75 to %struct.edge_rec*
  %v76 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %114, i32 0, i32 0
  %115 = load %struct.VERTEX*, %struct.VERTEX** %v76, align 8
  store %struct.VERTEX* %115, %struct.VERTEX** %v256, align 8
  br label %while.cond.67

while.end.77:                                     ; preds = %while.cond.67
  br label %if.end.78

if.end.78:                                        ; preds = %while.end.77, %while.body.54
  %116 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %117 = ptrtoint %struct.edge_rec* %116 to i64
  %add79 = add i64 %117, 32
  %and80 = and i64 %add79, 127
  %118 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %119 = ptrtoint %struct.edge_rec* %118 to i64
  %and81 = and i64 %119, -128
  %or82 = or i64 %and80, %and81
  %120 = inttoptr i64 %or82 to %struct.edge_rec*
  %next83 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %120, i32 0, i32 1
  %121 = load %struct.edge_rec*, %struct.edge_rec** %next83, align 8
  %122 = ptrtoint %struct.edge_rec* %121 to i64
  %add84 = add i64 %122, 32
  %and85 = and i64 %add84, 127
  %123 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %124 = ptrtoint %struct.edge_rec* %123 to i64
  %add86 = add i64 %124, 32
  %and87 = and i64 %add86, 127
  %125 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %126 = ptrtoint %struct.edge_rec* %125 to i64
  %and88 = and i64 %126, -128
  %or89 = or i64 %and87, %and88
  %127 = inttoptr i64 %or89 to %struct.edge_rec*
  %next90 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %127, i32 0, i32 1
  %128 = load %struct.edge_rec*, %struct.edge_rec** %next90, align 8
  %129 = ptrtoint %struct.edge_rec* %128 to i64
  %and91 = and i64 %129, -128
  %or92 = or i64 %and85, %and91
  %130 = inttoptr i64 %or92 to %struct.edge_rec*
  store %struct.edge_rec* %130, %struct.edge_rec** %t, align 8
  %131 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %132 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %call93 = call i32 @valid(%struct.edge_rec* %131, %struct.edge_rec* %132)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.127

if.then.95:                                       ; preds = %if.end.78
  %133 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %134 = ptrtoint %struct.edge_rec* %133 to i64
  %xor96 = xor i64 %134, 64
  %135 = inttoptr i64 %xor96 to %struct.edge_rec*
  %v97 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %135, i32 0, i32 0
  %136 = load %struct.VERTEX*, %struct.VERTEX** %v97, align 8
  store %struct.VERTEX* %136, %struct.VERTEX** %v4, align 8
  %137 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %138 = ptrtoint %struct.edge_rec* %137 to i64
  %xor98 = xor i64 %138, 64
  %139 = inttoptr i64 %xor98 to %struct.edge_rec*
  %v99 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %139, i32 0, i32 0
  %140 = load %struct.VERTEX*, %struct.VERTEX** %v99, align 8
  store %struct.VERTEX* %140, %struct.VERTEX** %v155, align 8
  %141 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %142 = ptrtoint %struct.edge_rec* %141 to i64
  %xor100 = xor i64 %142, 64
  %143 = inttoptr i64 %xor100 to %struct.edge_rec*
  %v101 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %143, i32 0, i32 0
  %144 = load %struct.VERTEX*, %struct.VERTEX** %v101, align 8
  store %struct.VERTEX* %144, %struct.VERTEX** %v256, align 8
  %145 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %v102 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %145, i32 0, i32 0
  %146 = load %struct.VERTEX*, %struct.VERTEX** %v102, align 8
  store %struct.VERTEX* %146, %struct.VERTEX** %v3, align 8
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.106, %if.then.95
  %147 = load %struct.VERTEX*, %struct.VERTEX** %v155, align 8
  %148 = load %struct.VERTEX*, %struct.VERTEX** %v256, align 8
  %149 = load %struct.VERTEX*, %struct.VERTEX** %v3, align 8
  %150 = load %struct.VERTEX*, %struct.VERTEX** %v4, align 8
  %call104 = call i32 @incircle(%struct.VERTEX* %147, %struct.VERTEX* %148, %struct.VERTEX* %149, %struct.VERTEX* %150)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %while.body.106, label %while.end.126

while.body.106:                                   ; preds = %while.cond.103
  %151 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  call void @deleteedge(%struct.edge_rec* %151)
  %152 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  store %struct.edge_rec* %152, %struct.edge_rec** %rcand, align 8
  %153 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %154 = ptrtoint %struct.edge_rec* %153 to i64
  %add107 = add i64 %154, 32
  %and108 = and i64 %add107, 127
  %155 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %156 = ptrtoint %struct.edge_rec* %155 to i64
  %and109 = and i64 %156, -128
  %or110 = or i64 %and108, %and109
  %157 = inttoptr i64 %or110 to %struct.edge_rec*
  %next111 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %157, i32 0, i32 1
  %158 = load %struct.edge_rec*, %struct.edge_rec** %next111, align 8
  %159 = ptrtoint %struct.edge_rec* %158 to i64
  %add112 = add i64 %159, 32
  %and113 = and i64 %add112, 127
  %160 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %161 = ptrtoint %struct.edge_rec* %160 to i64
  %add114 = add i64 %161, 32
  %and115 = and i64 %add114, 127
  %162 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %163 = ptrtoint %struct.edge_rec* %162 to i64
  %and116 = and i64 %163, -128
  %or117 = or i64 %and115, %and116
  %164 = inttoptr i64 %or117 to %struct.edge_rec*
  %next118 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %164, i32 0, i32 1
  %165 = load %struct.edge_rec*, %struct.edge_rec** %next118, align 8
  %166 = ptrtoint %struct.edge_rec* %165 to i64
  %and119 = and i64 %166, -128
  %or120 = or i64 %and113, %and119
  %167 = inttoptr i64 %or120 to %struct.edge_rec*
  store %struct.edge_rec* %167, %struct.edge_rec** %t, align 8
  %168 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %169 = ptrtoint %struct.edge_rec* %168 to i64
  %xor121 = xor i64 %169, 64
  %170 = inttoptr i64 %xor121 to %struct.edge_rec*
  %v122 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %170, i32 0, i32 0
  %171 = load %struct.VERTEX*, %struct.VERTEX** %v122, align 8
  store %struct.VERTEX* %171, %struct.VERTEX** %v256, align 8
  %172 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %v123 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %172, i32 0, i32 0
  %173 = load %struct.VERTEX*, %struct.VERTEX** %v123, align 8
  store %struct.VERTEX* %173, %struct.VERTEX** %v3, align 8
  %174 = load %struct.edge_rec*, %struct.edge_rec** %t, align 8
  %175 = ptrtoint %struct.edge_rec* %174 to i64
  %xor124 = xor i64 %175, 64
  %176 = inttoptr i64 %xor124 to %struct.edge_rec*
  %v125 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %176, i32 0, i32 0
  %177 = load %struct.VERTEX*, %struct.VERTEX** %v125, align 8
  store %struct.VERTEX* %177, %struct.VERTEX** %v155, align 8
  br label %while.cond.103

while.end.126:                                    ; preds = %while.cond.103
  br label %if.end.127

if.end.127:                                       ; preds = %while.end.126, %if.end.78
  %178 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %179 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %call128 = call i32 @valid(%struct.edge_rec* %178, %struct.edge_rec* %179)
  store i32 %call128, i32* %lvalid, align 4
  %180 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %181 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %call129 = call i32 @valid(%struct.edge_rec* %180, %struct.edge_rec* %181)
  store i32 %call129, i32* %rvalid, align 4
  %182 = load i32, i32* %lvalid, align 4
  %tobool130 = icmp ne i32 %182, 0
  br i1 %tobool130, label %if.end.134, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.127
  %183 = load i32, i32* %rvalid, align 4
  %tobool131 = icmp ne i32 %183, 0
  br i1 %tobool131, label %if.end.134, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true
  %184 = load %struct.edge_rec*, %struct.edge_rec** %ldo.addr, align 8
  %left = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval133, i32 0, i32 0
  store %struct.edge_rec* %184, %struct.edge_rec** %left, align 8
  %185 = load %struct.edge_rec*, %struct.edge_rec** %rdo.addr, align 8
  %right = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %retval133, i32 0, i32 1
  store %struct.edge_rec* %185, %struct.edge_rec** %right, align 8
  %186 = bitcast %struct.EDGE_PAIR* %retval to i8*
  %187 = bitcast %struct.EDGE_PAIR* %retval133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 16, i32 8, i1 false)
  %188 = bitcast %struct.EDGE_PAIR* %retval to { %struct.edge_rec*, %struct.edge_rec* }*
  %189 = load { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %188, align 8
  ret { %struct.edge_rec*, %struct.edge_rec* } %189

if.end.134:                                       ; preds = %land.lhs.true, %if.end.127
  %190 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %191 = ptrtoint %struct.edge_rec* %190 to i64
  %xor135 = xor i64 %191, 64
  %192 = inttoptr i64 %xor135 to %struct.edge_rec*
  %v136 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %192, i32 0, i32 0
  %193 = load %struct.VERTEX*, %struct.VERTEX** %v136, align 8
  store %struct.VERTEX* %193, %struct.VERTEX** %v155, align 8
  %194 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %v137 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %194, i32 0, i32 0
  %195 = load %struct.VERTEX*, %struct.VERTEX** %v137, align 8
  store %struct.VERTEX* %195, %struct.VERTEX** %v256, align 8
  %196 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %v138 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %196, i32 0, i32 0
  %197 = load %struct.VERTEX*, %struct.VERTEX** %v138, align 8
  store %struct.VERTEX* %197, %struct.VERTEX** %v3, align 8
  %198 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %199 = ptrtoint %struct.edge_rec* %198 to i64
  %xor139 = xor i64 %199, 64
  %200 = inttoptr i64 %xor139 to %struct.edge_rec*
  %v140 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %200, i32 0, i32 0
  %201 = load %struct.VERTEX*, %struct.VERTEX** %v140, align 8
  store %struct.VERTEX* %201, %struct.VERTEX** %v4, align 8
  %202 = load i32, i32* %lvalid, align 4
  %tobool141 = icmp ne i32 %202, 0
  br i1 %tobool141, label %lor.lhs.false, label %if.then.146

lor.lhs.false:                                    ; preds = %if.end.134
  %203 = load i32, i32* %rvalid, align 4
  %tobool142 = icmp ne i32 %203, 0
  br i1 %tobool142, label %land.lhs.true.143, label %if.else.167

land.lhs.true.143:                                ; preds = %lor.lhs.false
  %204 = load %struct.VERTEX*, %struct.VERTEX** %v155, align 8
  %205 = load %struct.VERTEX*, %struct.VERTEX** %v256, align 8
  %206 = load %struct.VERTEX*, %struct.VERTEX** %v3, align 8
  %207 = load %struct.VERTEX*, %struct.VERTEX** %v4, align 8
  %call144 = call i32 @incircle(%struct.VERTEX* %204, %struct.VERTEX* %205, %struct.VERTEX* %206, %struct.VERTEX* %207)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.else.167

if.then.146:                                      ; preds = %land.lhs.true.143, %if.end.134
  %208 = load %struct.edge_rec*, %struct.edge_rec** %rcand, align 8
  %209 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %210 = ptrtoint %struct.edge_rec* %209 to i64
  %xor147 = xor i64 %210, 64
  %211 = inttoptr i64 %xor147 to %struct.edge_rec*
  %call148 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %208, %struct.edge_rec* %211)
  store %struct.edge_rec* %call148, %struct.edge_rec** %basel, align 8
  %212 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %213 = ptrtoint %struct.edge_rec* %212 to i64
  %xor149 = xor i64 %213, 64
  %214 = inttoptr i64 %xor149 to %struct.edge_rec*
  %215 = ptrtoint %struct.edge_rec* %214 to i64
  %add150 = add i64 %215, 96
  %and151 = and i64 %add150, 127
  %216 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %217 = ptrtoint %struct.edge_rec* %216 to i64
  %xor152 = xor i64 %217, 64
  %218 = inttoptr i64 %xor152 to %struct.edge_rec*
  %219 = ptrtoint %struct.edge_rec* %218 to i64
  %and153 = and i64 %219, -128
  %or154 = or i64 %and151, %and153
  %220 = inttoptr i64 %or154 to %struct.edge_rec*
  %next155 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %220, i32 0, i32 1
  %221 = load %struct.edge_rec*, %struct.edge_rec** %next155, align 8
  %222 = ptrtoint %struct.edge_rec* %221 to i64
  %add156 = add i64 %222, 32
  %and157 = and i64 %add156, 127
  %223 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %224 = ptrtoint %struct.edge_rec* %223 to i64
  %xor158 = xor i64 %224, 64
  %225 = inttoptr i64 %xor158 to %struct.edge_rec*
  %226 = ptrtoint %struct.edge_rec* %225 to i64
  %add159 = add i64 %226, 96
  %and160 = and i64 %add159, 127
  %227 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %228 = ptrtoint %struct.edge_rec* %227 to i64
  %xor161 = xor i64 %228, 64
  %229 = inttoptr i64 %xor161 to %struct.edge_rec*
  %230 = ptrtoint %struct.edge_rec* %229 to i64
  %and162 = and i64 %230, -128
  %or163 = or i64 %and160, %and162
  %231 = inttoptr i64 %or163 to %struct.edge_rec*
  %next164 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %231, i32 0, i32 1
  %232 = load %struct.edge_rec*, %struct.edge_rec** %next164, align 8
  %233 = ptrtoint %struct.edge_rec* %232 to i64
  %and165 = and i64 %233, -128
  %or166 = or i64 %and157, %and165
  %234 = inttoptr i64 %or166 to %struct.edge_rec*
  store %struct.edge_rec* %234, %struct.edge_rec** %rcand, align 8
  br label %if.end.172

if.else.167:                                      ; preds = %land.lhs.true.143, %lor.lhs.false
  %235 = load %struct.edge_rec*, %struct.edge_rec** %lcand, align 8
  %236 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %call168 = call %struct.edge_rec* @connect_right(%struct.edge_rec* %235, %struct.edge_rec* %236)
  %237 = ptrtoint %struct.edge_rec* %call168 to i64
  %xor169 = xor i64 %237, 64
  %238 = inttoptr i64 %xor169 to %struct.edge_rec*
  store %struct.edge_rec* %238, %struct.edge_rec** %basel, align 8
  %239 = load %struct.edge_rec*, %struct.edge_rec** %basel, align 8
  %240 = ptrtoint %struct.edge_rec* %239 to i64
  %xor170 = xor i64 %240, 64
  %241 = inttoptr i64 %xor170 to %struct.edge_rec*
  %next171 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %241, i32 0, i32 1
  %242 = load %struct.edge_rec*, %struct.edge_rec** %next171, align 8
  store %struct.edge_rec* %242, %struct.edge_rec** %lcand, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.167, %if.then.146
  br label %while.body.54
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @ccw(%struct.VERTEX* %a, %struct.VERTEX* %b, %struct.VERTEX* %c) #0 {
entry:
  %a.addr = alloca %struct.VERTEX*, align 8
  %b.addr = alloca %struct.VERTEX*, align 8
  %c.addr = alloca %struct.VERTEX*, align 8
  %dret = alloca double, align 8
  %xa = alloca double, align 8
  %ya = alloca double, align 8
  %xb = alloca double, align 8
  %yb = alloca double, align 8
  %xc = alloca double, align 8
  %yc = alloca double, align 8
  %loc_a = alloca %struct.VERTEX*, align 8
  %loc_b = alloca %struct.VERTEX*, align 8
  %loc_c = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %a, %struct.VERTEX** %a.addr, align 8
  store %struct.VERTEX* %b, %struct.VERTEX** %b.addr, align 8
  store %struct.VERTEX* %c, %struct.VERTEX** %c.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %a.addr, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %loc_a, align 8
  %1 = load %struct.VERTEX*, %struct.VERTEX** %loc_a, align 8
  %v = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %2 = load double, double* %x, align 8
  store double %2, double* %xa, align 8
  %3 = load %struct.VERTEX*, %struct.VERTEX** %loc_a, align 8
  %v1 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %3, i32 0, i32 0
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v1, i32 0, i32 1
  %4 = load double, double* %y, align 8
  store double %4, double* %ya, align 8
  %5 = load %struct.VERTEX*, %struct.VERTEX** %b.addr, align 8
  store %struct.VERTEX* %5, %struct.VERTEX** %loc_b, align 8
  %6 = load %struct.VERTEX*, %struct.VERTEX** %loc_b, align 8
  %v2 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %6, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v2, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  store double %7, double* %xb, align 8
  %8 = load %struct.VERTEX*, %struct.VERTEX** %loc_b, align 8
  %v4 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %8, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v4, i32 0, i32 1
  %9 = load double, double* %y5, align 8
  store double %9, double* %yb, align 8
  %10 = load %struct.VERTEX*, %struct.VERTEX** %c.addr, align 8
  store %struct.VERTEX* %10, %struct.VERTEX** %loc_c, align 8
  %11 = load %struct.VERTEX*, %struct.VERTEX** %loc_c, align 8
  %v6 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %11, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v6, i32 0, i32 0
  %12 = load double, double* %x7, align 8
  store double %12, double* %xc, align 8
  %13 = load %struct.VERTEX*, %struct.VERTEX** %loc_c, align 8
  %v8 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %13, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v8, i32 0, i32 1
  %14 = load double, double* %y9, align 8
  store double %14, double* %yc, align 8
  %15 = load double, double* %xa, align 8
  %16 = load double, double* %xc, align 8
  %sub = fsub double %15, %16
  %17 = load double, double* %yb, align 8
  %18 = load double, double* %yc, align 8
  %sub10 = fsub double %17, %18
  %mul = fmul double %sub, %sub10
  %19 = load double, double* %xb, align 8
  %20 = load double, double* %xc, align 8
  %sub11 = fsub double %19, %20
  %21 = load double, double* %ya, align 8
  %22 = load double, double* %yc, align 8
  %sub12 = fsub double %21, %22
  %mul13 = fmul double %sub11, %sub12
  %sub14 = fsub double %mul, %mul13
  store double %sub14, double* %dret, align 8
  %23 = load double, double* %dret, align 8
  %cmp = fcmp ogt double %23, 0.000000e+00
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @delete_all_edges() #0 {
entry:
  store %struct.edge_rec* null, %struct.edge_rec** @next_edge, align 8
  store %struct.edge_rec* null, %struct.edge_rec** @avail_edge, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @myalign(i32 %align_size, i32 %alloc_size) #0 {
entry:
  %align_size.addr = alloca i32, align 4
  %alloc_size.addr = alloca i32, align 4
  %base = alloca i8*, align 8
  %Result = alloca i8*, align 8
  store i32 %align_size, i32* %align_size.addr, align 4
  store i32 %alloc_size, i32* %alloc_size.addr, align 4
  %0 = load i32, i32* %align_size.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %alloc_size.addr, align 4
  %conv1 = sext i32 %1 to i64
  %call = call noalias i8* @memalign(i64 %conv, i64 %conv1) #1
  store i8* %call, i8** %base, align 8
  %2 = load i8*, i8** %base, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %base, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #4

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @alloc_edge() #0 {
entry:
  %ans = alloca %struct.edge_rec*, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %cmp = icmp eq %struct.edge_rec* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @myalign(i32 128, i32 128)
  %1 = bitcast i8* %call to %struct.edge_rec*
  store %struct.edge_rec* %1, %struct.edge_rec** %ans, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %3 = ptrtoint %struct.edge_rec* %2 to i64
  %and = and i64 %3, 127
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), %struct.edge_rec* %4)
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.else:                                          ; preds = %entry
  %5 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  store %struct.edge_rec* %5, %struct.edge_rec** %ans, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 1
  %7 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %7, %struct.edge_rec** @avail_edge, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  %8 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %arrayidx = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %8, i64 0
  %wasseen = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %arrayidx, i32 0, i32 2
  store i64 0, i64* %wasseen, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %arrayidx4 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %9, i64 1
  %wasseen5 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %arrayidx4, i32 0, i32 2
  store i64 0, i64* %wasseen5, align 8
  %10 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %arrayidx6 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i64 2
  %wasseen7 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %arrayidx6, i32 0, i32 2
  store i64 0, i64* %wasseen7, align 8
  %11 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %arrayidx8 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %11, i64 3
  %wasseen9 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %arrayidx8, i32 0, i32 2
  store i64 0, i64* %wasseen9, align 8
  %12 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  ret %struct.edge_rec* %12
}

; Function Attrs: nounwind uwtable
define i32 @incircle(%struct.VERTEX* %a, %struct.VERTEX* %b, %struct.VERTEX* %c, %struct.VERTEX* %d) #0 {
entry:
  %a.addr = alloca %struct.VERTEX*, align 8
  %b.addr = alloca %struct.VERTEX*, align 8
  %c.addr = alloca %struct.VERTEX*, align 8
  %d.addr = alloca %struct.VERTEX*, align 8
  %adx = alloca double, align 8
  %ady = alloca double, align 8
  %bdx = alloca double, align 8
  %bdy = alloca double, align 8
  %cdx = alloca double, align 8
  %cdy = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %anorm = alloca double, align 8
  %bnorm = alloca double, align 8
  %cnorm = alloca double, align 8
  %dnorm = alloca double, align 8
  %dret = alloca double, align 8
  %loc_a = alloca %struct.VERTEX*, align 8
  %loc_b = alloca %struct.VERTEX*, align 8
  %loc_c = alloca %struct.VERTEX*, align 8
  %loc_d = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %a, %struct.VERTEX** %a.addr, align 8
  store %struct.VERTEX* %b, %struct.VERTEX** %b.addr, align 8
  store %struct.VERTEX* %c, %struct.VERTEX** %c.addr, align 8
  store %struct.VERTEX* %d, %struct.VERTEX** %d.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %d.addr, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %loc_d, align 8
  %1 = load %struct.VERTEX*, %struct.VERTEX** %loc_d, align 8
  %v = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %2 = load double, double* %x, align 8
  store double %2, double* %dx, align 8
  %3 = load %struct.VERTEX*, %struct.VERTEX** %loc_d, align 8
  %v1 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %3, i32 0, i32 0
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v1, i32 0, i32 1
  %4 = load double, double* %y, align 8
  store double %4, double* %dy, align 8
  %5 = load %struct.VERTEX*, %struct.VERTEX** %loc_d, align 8
  %v2 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %5, i32 0, i32 0
  %norm = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v2, i32 0, i32 2
  %6 = load double, double* %norm, align 8
  store double %6, double* %dnorm, align 8
  %7 = load %struct.VERTEX*, %struct.VERTEX** %a.addr, align 8
  store %struct.VERTEX* %7, %struct.VERTEX** %loc_a, align 8
  %8 = load %struct.VERTEX*, %struct.VERTEX** %loc_a, align 8
  %v3 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %8, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v3, i32 0, i32 0
  %9 = load double, double* %x4, align 8
  %10 = load double, double* %dx, align 8
  %sub = fsub double %9, %10
  store double %sub, double* %adx, align 8
  %11 = load %struct.VERTEX*, %struct.VERTEX** %loc_a, align 8
  %v5 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %11, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v5, i32 0, i32 1
  %12 = load double, double* %y6, align 8
  %13 = load double, double* %dy, align 8
  %sub7 = fsub double %12, %13
  store double %sub7, double* %ady, align 8
  %14 = load %struct.VERTEX*, %struct.VERTEX** %loc_a, align 8
  %v8 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %14, i32 0, i32 0
  %norm9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v8, i32 0, i32 2
  %15 = load double, double* %norm9, align 8
  store double %15, double* %anorm, align 8
  %16 = load %struct.VERTEX*, %struct.VERTEX** %b.addr, align 8
  store %struct.VERTEX* %16, %struct.VERTEX** %loc_b, align 8
  %17 = load %struct.VERTEX*, %struct.VERTEX** %loc_b, align 8
  %v10 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %17, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v10, i32 0, i32 0
  %18 = load double, double* %x11, align 8
  %19 = load double, double* %dx, align 8
  %sub12 = fsub double %18, %19
  store double %sub12, double* %bdx, align 8
  %20 = load %struct.VERTEX*, %struct.VERTEX** %loc_b, align 8
  %v13 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %20, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v13, i32 0, i32 1
  %21 = load double, double* %y14, align 8
  %22 = load double, double* %dy, align 8
  %sub15 = fsub double %21, %22
  store double %sub15, double* %bdy, align 8
  %23 = load %struct.VERTEX*, %struct.VERTEX** %loc_b, align 8
  %v16 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %23, i32 0, i32 0
  %norm17 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v16, i32 0, i32 2
  %24 = load double, double* %norm17, align 8
  store double %24, double* %bnorm, align 8
  %25 = load %struct.VERTEX*, %struct.VERTEX** %c.addr, align 8
  store %struct.VERTEX* %25, %struct.VERTEX** %loc_c, align 8
  %26 = load %struct.VERTEX*, %struct.VERTEX** %loc_c, align 8
  %v18 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %26, i32 0, i32 0
  %x19 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v18, i32 0, i32 0
  %27 = load double, double* %x19, align 8
  %28 = load double, double* %dx, align 8
  %sub20 = fsub double %27, %28
  store double %sub20, double* %cdx, align 8
  %29 = load %struct.VERTEX*, %struct.VERTEX** %loc_c, align 8
  %v21 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %29, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v21, i32 0, i32 1
  %30 = load double, double* %y22, align 8
  %31 = load double, double* %dy, align 8
  %sub23 = fsub double %30, %31
  store double %sub23, double* %cdy, align 8
  %32 = load %struct.VERTEX*, %struct.VERTEX** %loc_c, align 8
  %v24 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %32, i32 0, i32 0
  %norm25 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v24, i32 0, i32 2
  %33 = load double, double* %norm25, align 8
  store double %33, double* %cnorm, align 8
  %34 = load double, double* %anorm, align 8
  %35 = load double, double* %dnorm, align 8
  %sub26 = fsub double %34, %35
  %36 = load double, double* %bdx, align 8
  %37 = load double, double* %cdy, align 8
  %mul = fmul double %36, %37
  %38 = load double, double* %bdy, align 8
  %39 = load double, double* %cdx, align 8
  %mul27 = fmul double %38, %39
  %sub28 = fsub double %mul, %mul27
  %mul29 = fmul double %sub26, %sub28
  store double %mul29, double* %dret, align 8
  %40 = load double, double* %bnorm, align 8
  %41 = load double, double* %dnorm, align 8
  %sub30 = fsub double %40, %41
  %42 = load double, double* %cdx, align 8
  %43 = load double, double* %ady, align 8
  %mul31 = fmul double %42, %43
  %44 = load double, double* %cdy, align 8
  %45 = load double, double* %adx, align 8
  %mul32 = fmul double %44, %45
  %sub33 = fsub double %mul31, %mul32
  %mul34 = fmul double %sub30, %sub33
  %46 = load double, double* %dret, align 8
  %add = fadd double %46, %mul34
  store double %add, double* %dret, align 8
  %47 = load double, double* %cnorm, align 8
  %48 = load double, double* %dnorm, align 8
  %sub35 = fsub double %47, %48
  %49 = load double, double* %adx, align 8
  %50 = load double, double* %bdy, align 8
  %mul36 = fmul double %49, %50
  %51 = load double, double* %ady, align 8
  %52 = load double, double* %bdx, align 8
  %mul37 = fmul double %51, %52
  %sub38 = fsub double %mul36, %mul37
  %mul39 = fmul double %sub35, %sub38
  %53 = load double, double* %dret, align 8
  %add40 = fadd double %53, %mul39
  store double %add40, double* %dret, align 8
  %54 = load double, double* %dret, align 8
  %cmp = fcmp olt double 0.000000e+00, %54
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @makeedge(%struct.VERTEX* %origin, %struct.VERTEX* %destination) #0 {
entry:
  %origin.addr = alloca %struct.VERTEX*, align 8
  %destination.addr = alloca %struct.VERTEX*, align 8
  %temp = alloca %struct.edge_rec*, align 8
  %ans = alloca %struct.edge_rec*, align 8
  store %struct.VERTEX* %origin, %struct.VERTEX** %origin.addr, align 8
  store %struct.VERTEX* %destination, %struct.VERTEX** %destination.addr, align 8
  %call = call %struct.edge_rec* @alloc_edge()
  store %struct.edge_rec* %call, %struct.edge_rec** %temp, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %ans, align 8
  %1 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %2, i32 0, i32 1
  store %struct.edge_rec* %1, %struct.edge_rec** %next, align 8
  %3 = load %struct.VERTEX*, %struct.VERTEX** %origin.addr, align 8
  %4 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 0
  store %struct.VERTEX* %3, %struct.VERTEX** %v, align 8
  %5 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %6 = ptrtoint %struct.edge_rec* %5 to i64
  %add = add i64 %6, 32
  %7 = inttoptr i64 %add to %struct.edge_rec*
  store %struct.edge_rec* %7, %struct.edge_rec** %temp, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %9 = ptrtoint %struct.edge_rec* %8 to i64
  %add1 = add i64 %9, 96
  %10 = inttoptr i64 %add1 to %struct.edge_rec*
  %11 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %next2 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %11, i32 0, i32 1
  store %struct.edge_rec* %10, %struct.edge_rec** %next2, align 8
  %12 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %13 = ptrtoint %struct.edge_rec* %12 to i64
  %add3 = add i64 %13, 32
  %14 = inttoptr i64 %add3 to %struct.edge_rec*
  store %struct.edge_rec* %14, %struct.edge_rec** %temp, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %16 = ptrtoint %struct.edge_rec* %15 to i64
  %add4 = add i64 %16, 64
  %17 = inttoptr i64 %add4 to %struct.edge_rec*
  %18 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %next5 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %18, i32 0, i32 1
  store %struct.edge_rec* %17, %struct.edge_rec** %next5, align 8
  %19 = load %struct.VERTEX*, %struct.VERTEX** %destination.addr, align 8
  %20 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %v6 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %20, i32 0, i32 0
  store %struct.VERTEX* %19, %struct.VERTEX** %v6, align 8
  %21 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %22 = ptrtoint %struct.edge_rec* %21 to i64
  %add7 = add i64 %22, 32
  %23 = inttoptr i64 %add7 to %struct.edge_rec*
  store %struct.edge_rec* %23, %struct.edge_rec** %temp, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  %25 = ptrtoint %struct.edge_rec* %24 to i64
  %add8 = add i64 %25, 32
  %26 = inttoptr i64 %add8 to %struct.edge_rec*
  %27 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %next9 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %27, i32 0, i32 1
  store %struct.edge_rec* %26, %struct.edge_rec** %next9, align 8
  %28 = load %struct.edge_rec*, %struct.edge_rec** %ans, align 8
  ret %struct.edge_rec* %28
}

; Function Attrs: nounwind uwtable
define void @splice(%struct.edge_rec* %a, %struct.edge_rec* %b) #0 {
entry:
  %a.addr = alloca %struct.edge_rec*, align 8
  %b.addr = alloca %struct.edge_rec*, align 8
  %alpha = alloca %struct.edge_rec*, align 8
  %beta = alloca %struct.edge_rec*, align 8
  %temp = alloca %struct.edge_rec*, align 8
  %t1 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %a, %struct.edge_rec** %a.addr, align 8
  store %struct.edge_rec* %b, %struct.edge_rec** %b.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %0, i32 0, i32 1
  %1 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %2 = ptrtoint %struct.edge_rec* %1 to i64
  %add = add i64 %2, 32
  %and = and i64 %add, 127
  %3 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %next1 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %3, i32 0, i32 1
  %4 = load %struct.edge_rec*, %struct.edge_rec** %next1, align 8
  %5 = ptrtoint %struct.edge_rec* %4 to i64
  %and2 = and i64 %5, -128
  %or = or i64 %and, %and2
  %6 = inttoptr i64 %or to %struct.edge_rec*
  store %struct.edge_rec* %6, %struct.edge_rec** %alpha, align 8
  %7 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %next3 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %7, i32 0, i32 1
  %8 = load %struct.edge_rec*, %struct.edge_rec** %next3, align 8
  %9 = ptrtoint %struct.edge_rec* %8 to i64
  %add4 = add i64 %9, 32
  %and5 = and i64 %add4, 127
  %10 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %next6 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i32 0, i32 1
  %11 = load %struct.edge_rec*, %struct.edge_rec** %next6, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %and7 = and i64 %12, -128
  %or8 = or i64 %and5, %and7
  %13 = inttoptr i64 %or8 to %struct.edge_rec*
  store %struct.edge_rec* %13, %struct.edge_rec** %beta, align 8
  %14 = load %struct.edge_rec*, %struct.edge_rec** %beta, align 8
  %next9 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %14, i32 0, i32 1
  %15 = load %struct.edge_rec*, %struct.edge_rec** %next9, align 8
  store %struct.edge_rec* %15, %struct.edge_rec** %t1, align 8
  %16 = load %struct.edge_rec*, %struct.edge_rec** %alpha, align 8
  %next10 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %16, i32 0, i32 1
  %17 = load %struct.edge_rec*, %struct.edge_rec** %next10, align 8
  store %struct.edge_rec* %17, %struct.edge_rec** %temp, align 8
  %18 = load %struct.edge_rec*, %struct.edge_rec** %t1, align 8
  %19 = load %struct.edge_rec*, %struct.edge_rec** %alpha, align 8
  %next11 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %19, i32 0, i32 1
  store %struct.edge_rec* %18, %struct.edge_rec** %next11, align 8
  %20 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %21 = load %struct.edge_rec*, %struct.edge_rec** %beta, align 8
  %next12 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %21, i32 0, i32 1
  store %struct.edge_rec* %20, %struct.edge_rec** %next12, align 8
  %22 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %next13 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 1
  %23 = load %struct.edge_rec*, %struct.edge_rec** %next13, align 8
  store %struct.edge_rec* %23, %struct.edge_rec** %temp, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %next14 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %24, i32 0, i32 1
  %25 = load %struct.edge_rec*, %struct.edge_rec** %next14, align 8
  store %struct.edge_rec* %25, %struct.edge_rec** %t1, align 8
  %26 = load %struct.edge_rec*, %struct.edge_rec** %temp, align 8
  %27 = load %struct.edge_rec*, %struct.edge_rec** %b.addr, align 8
  %next15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %27, i32 0, i32 1
  store %struct.edge_rec* %26, %struct.edge_rec** %next15, align 8
  %28 = load %struct.edge_rec*, %struct.edge_rec** %t1, align 8
  %29 = load %struct.edge_rec*, %struct.edge_rec** %a.addr, align 8
  %next16 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %29, i32 0, i32 1
  store %struct.edge_rec* %28, %struct.edge_rec** %next16, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @swapedge(%struct.edge_rec* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_rec*, align 8
  %a = alloca %struct.edge_rec*, align 8
  %b = alloca %struct.edge_rec*, align 8
  %syme = alloca %struct.edge_rec*, align 8
  %lnexttmp = alloca %struct.edge_rec*, align 8
  %a1 = alloca %struct.VERTEX*, align 8
  %b1 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %e, %struct.edge_rec** %e.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %add = add i64 %1, 32
  %and = and i64 %add, 127
  %2 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %3 = ptrtoint %struct.edge_rec* %2 to i64
  %and1 = and i64 %3, -128
  %or = or i64 %and, %and1
  %4 = inttoptr i64 %or to %struct.edge_rec*
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 1
  %5 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  %6 = ptrtoint %struct.edge_rec* %5 to i64
  %add2 = add i64 %6, 32
  %and3 = and i64 %add2, 127
  %7 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %8 = ptrtoint %struct.edge_rec* %7 to i64
  %add4 = add i64 %8, 32
  %and5 = and i64 %add4, 127
  %9 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %and6 = and i64 %10, -128
  %or7 = or i64 %and5, %and6
  %11 = inttoptr i64 %or7 to %struct.edge_rec*
  %next8 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %11, i32 0, i32 1
  %12 = load %struct.edge_rec*, %struct.edge_rec** %next8, align 8
  %13 = ptrtoint %struct.edge_rec* %12 to i64
  %and9 = and i64 %13, -128
  %or10 = or i64 %and3, %and9
  %14 = inttoptr i64 %or10 to %struct.edge_rec*
  store %struct.edge_rec* %14, %struct.edge_rec** %a, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %16 = ptrtoint %struct.edge_rec* %15 to i64
  %xor = xor i64 %16, 64
  %17 = inttoptr i64 %xor to %struct.edge_rec*
  store %struct.edge_rec* %17, %struct.edge_rec** %syme, align 8
  %18 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %add11 = add i64 %19, 32
  %and12 = and i64 %add11, 127
  %20 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %21 = ptrtoint %struct.edge_rec* %20 to i64
  %and13 = and i64 %21, -128
  %or14 = or i64 %and12, %and13
  %22 = inttoptr i64 %or14 to %struct.edge_rec*
  %next15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 1
  %23 = load %struct.edge_rec*, %struct.edge_rec** %next15, align 8
  %24 = ptrtoint %struct.edge_rec* %23 to i64
  %add16 = add i64 %24, 32
  %and17 = and i64 %add16, 127
  %25 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %26 = ptrtoint %struct.edge_rec* %25 to i64
  %add18 = add i64 %26, 32
  %and19 = and i64 %add18, 127
  %27 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %28 = ptrtoint %struct.edge_rec* %27 to i64
  %and20 = and i64 %28, -128
  %or21 = or i64 %and19, %and20
  %29 = inttoptr i64 %or21 to %struct.edge_rec*
  %next22 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %29, i32 0, i32 1
  %30 = load %struct.edge_rec*, %struct.edge_rec** %next22, align 8
  %31 = ptrtoint %struct.edge_rec* %30 to i64
  %and23 = and i64 %31, -128
  %or24 = or i64 %and17, %and23
  %32 = inttoptr i64 %or24 to %struct.edge_rec*
  store %struct.edge_rec* %32, %struct.edge_rec** %b, align 8
  %33 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %34 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  call void @splice(%struct.edge_rec* %33, %struct.edge_rec* %34)
  %35 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %36 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  call void @splice(%struct.edge_rec* %35, %struct.edge_rec* %36)
  %37 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %38 = ptrtoint %struct.edge_rec* %37 to i64
  %add25 = add i64 %38, 96
  %and26 = and i64 %add25, 127
  %39 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %40 = ptrtoint %struct.edge_rec* %39 to i64
  %and27 = and i64 %40, -128
  %or28 = or i64 %and26, %and27
  %41 = inttoptr i64 %or28 to %struct.edge_rec*
  %next29 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %41, i32 0, i32 1
  %42 = load %struct.edge_rec*, %struct.edge_rec** %next29, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %add30 = add i64 %43, 32
  %and31 = and i64 %add30, 127
  %44 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %45 = ptrtoint %struct.edge_rec* %44 to i64
  %add32 = add i64 %45, 96
  %and33 = and i64 %add32, 127
  %46 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %47 = ptrtoint %struct.edge_rec* %46 to i64
  %and34 = and i64 %47, -128
  %or35 = or i64 %and33, %and34
  %48 = inttoptr i64 %or35 to %struct.edge_rec*
  %next36 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %48, i32 0, i32 1
  %49 = load %struct.edge_rec*, %struct.edge_rec** %next36, align 8
  %50 = ptrtoint %struct.edge_rec* %49 to i64
  %and37 = and i64 %50, -128
  %or38 = or i64 %and31, %and37
  %51 = inttoptr i64 %or38 to %struct.edge_rec*
  store %struct.edge_rec* %51, %struct.edge_rec** %lnexttmp, align 8
  %52 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %53 = load %struct.edge_rec*, %struct.edge_rec** %lnexttmp, align 8
  call void @splice(%struct.edge_rec* %52, %struct.edge_rec* %53)
  %54 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %55 = ptrtoint %struct.edge_rec* %54 to i64
  %add39 = add i64 %55, 96
  %and40 = and i64 %add39, 127
  %56 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %57 = ptrtoint %struct.edge_rec* %56 to i64
  %and41 = and i64 %57, -128
  %or42 = or i64 %and40, %and41
  %58 = inttoptr i64 %or42 to %struct.edge_rec*
  %next43 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %58, i32 0, i32 1
  %59 = load %struct.edge_rec*, %struct.edge_rec** %next43, align 8
  %60 = ptrtoint %struct.edge_rec* %59 to i64
  %add44 = add i64 %60, 32
  %and45 = and i64 %add44, 127
  %61 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %62 = ptrtoint %struct.edge_rec* %61 to i64
  %add46 = add i64 %62, 96
  %and47 = and i64 %add46, 127
  %63 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %64 = ptrtoint %struct.edge_rec* %63 to i64
  %and48 = and i64 %64, -128
  %or49 = or i64 %and47, %and48
  %65 = inttoptr i64 %or49 to %struct.edge_rec*
  %next50 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %65, i32 0, i32 1
  %66 = load %struct.edge_rec*, %struct.edge_rec** %next50, align 8
  %67 = ptrtoint %struct.edge_rec* %66 to i64
  %and51 = and i64 %67, -128
  %or52 = or i64 %and45, %and51
  %68 = inttoptr i64 %or52 to %struct.edge_rec*
  store %struct.edge_rec* %68, %struct.edge_rec** %lnexttmp, align 8
  %69 = load %struct.edge_rec*, %struct.edge_rec** %syme, align 8
  %70 = load %struct.edge_rec*, %struct.edge_rec** %lnexttmp, align 8
  call void @splice(%struct.edge_rec* %69, %struct.edge_rec* %70)
  %71 = load %struct.edge_rec*, %struct.edge_rec** %a, align 8
  %72 = ptrtoint %struct.edge_rec* %71 to i64
  %xor53 = xor i64 %72, 64
  %73 = inttoptr i64 %xor53 to %struct.edge_rec*
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %73, i32 0, i32 0
  %74 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  store %struct.VERTEX* %74, %struct.VERTEX** %a1, align 8
  %75 = load %struct.edge_rec*, %struct.edge_rec** %b, align 8
  %76 = ptrtoint %struct.edge_rec* %75 to i64
  %xor54 = xor i64 %76, 64
  %77 = inttoptr i64 %xor54 to %struct.edge_rec*
  %v55 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %77, i32 0, i32 0
  %78 = load %struct.VERTEX*, %struct.VERTEX** %v55, align 8
  store %struct.VERTEX* %78, %struct.VERTEX** %b1, align 8
  %79 = load %struct.VERTEX*, %struct.VERTEX** %a1, align 8
  %80 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %v56 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %80, i32 0, i32 0
  store %struct.VERTEX* %79, %struct.VERTEX** %v56, align 8
  %81 = load %struct.VERTEX*, %struct.VERTEX** %b1, align 8
  %82 = load %struct.edge_rec*, %struct.edge_rec** %e.addr, align 8
  %83 = ptrtoint %struct.edge_rec* %82 to i64
  %xor57 = xor i64 %83, 64
  %84 = inttoptr i64 %xor57 to %struct.edge_rec*
  %v58 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %84, i32 0, i32 0
  store %struct.VERTEX* %81, %struct.VERTEX** %v58, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @valid(%struct.edge_rec* %l, %struct.edge_rec* %basel) #0 {
entry:
  %l.addr = alloca %struct.edge_rec*, align 8
  %basel.addr = alloca %struct.edge_rec*, align 8
  %t1 = alloca %struct.VERTEX*, align 8
  %t2 = alloca %struct.VERTEX*, align 8
  %t3 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %l, %struct.edge_rec** %l.addr, align 8
  store %struct.edge_rec* %basel, %struct.edge_rec** %basel.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %basel.addr, align 8
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %0, i32 0, i32 0
  %1 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %t1, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %basel.addr, align 8
  %3 = ptrtoint %struct.edge_rec* %2 to i64
  %xor = xor i64 %3, 64
  %4 = inttoptr i64 %xor to %struct.edge_rec*
  %v1 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 0
  %5 = load %struct.VERTEX*, %struct.VERTEX** %v1, align 8
  store %struct.VERTEX* %5, %struct.VERTEX** %t3, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %l.addr, align 8
  %7 = ptrtoint %struct.edge_rec* %6 to i64
  %xor2 = xor i64 %7, 64
  %8 = inttoptr i64 %xor2 to %struct.edge_rec*
  %v3 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %8, i32 0, i32 0
  %9 = load %struct.VERTEX*, %struct.VERTEX** %v3, align 8
  store %struct.VERTEX* %9, %struct.VERTEX** %t2, align 8
  %10 = load %struct.VERTEX*, %struct.VERTEX** %t1, align 8
  %11 = load %struct.VERTEX*, %struct.VERTEX** %t2, align 8
  %12 = load %struct.VERTEX*, %struct.VERTEX** %t3, align 8
  %call = call i32 @ccw(%struct.VERTEX* %10, %struct.VERTEX* %11, %struct.VERTEX* %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @dump_quad(%struct.edge_rec* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.edge_rec*, align 8
  %i = alloca i32, align 4
  %j = alloca %struct.edge_rec*, align 8
  %v = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %ptr, %struct.edge_rec** %ptr.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %ptr.addr, align 8
  %1 = ptrtoint %struct.edge_rec* %0 to i64
  %and = and i64 %1, -128
  %2 = inttoptr i64 %and to %struct.edge_rec*
  store %struct.edge_rec* %2, %struct.edge_rec** %ptr.addr, align 8
  %3 = load %struct.edge_rec*, %struct.edge_rec** %ptr.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), %struct.edge_rec* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.edge_rec*, %struct.edge_rec** %ptr.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %5, i64 %idx.ext
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %add.ptr, i32 0, i32 1
  %7 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %7, %struct.edge_rec** %j, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %j, align 8
  %v1 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %8, i32 0, i32 0
  %9 = load %struct.VERTEX*, %struct.VERTEX** %v1, align 8
  store %struct.VERTEX* %9, %struct.VERTEX** %v, align 8
  %10 = load %struct.edge_rec*, %struct.edge_rec** %ptr.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %11 to i64
  %add.ptr3 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i64 %idx.ext2
  %12 = load %struct.edge_rec*, %struct.edge_rec** %j, align 8
  %13 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), %struct.edge_rec* %add.ptr3, %struct.edge_rec* %12, %struct.VERTEX* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @in_order(%struct.VERTEX* %tree) #0 {
entry:
  %tree.addr = alloca %struct.VERTEX*, align 8
  %tleft = alloca %struct.VERTEX*, align 8
  %tright = alloca %struct.VERTEX*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.VERTEX* %tree, %struct.VERTEX** %tree.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %tobool = icmp ne %struct.VERTEX* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %v = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %1, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %2 = load double, double* %x1, align 8
  store double %2, double* %x, align 8
  %3 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %v2 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %3, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v2, i32 0, i32 1
  %4 = load double, double* %y3, align 8
  store double %4, double* %y, align 8
  %5 = load double, double* %x, align 8
  %6 = load double, double* %y, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), double %5, double %6)
  %7 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %left = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %7, i32 0, i32 1
  %8 = load %struct.VERTEX*, %struct.VERTEX** %left, align 8
  store %struct.VERTEX* %8, %struct.VERTEX** %tleft, align 8
  %9 = load %struct.VERTEX*, %struct.VERTEX** %tleft, align 8
  call void @in_order(%struct.VERTEX* %9)
  %10 = load %struct.VERTEX*, %struct.VERTEX** %tree.addr, align 8
  %right = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %10, i32 0, i32 2
  %11 = load %struct.VERTEX*, %struct.VERTEX** %right, align 8
  store %struct.VERTEX* %11, %struct.VERTEX** %tright, align 8
  %12 = load %struct.VERTEX*, %struct.VERTEX** %tright, align 8
  call void @in_order(%struct.VERTEX* %12)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mult(i32 %p, i32 %q) #0 {
entry:
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p0 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q0 = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %div = sdiv i32 %0, 10000
  store i32 %div, i32* %p1, align 4
  %1 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %1, 10000
  store i32 %rem, i32* %p0, align 4
  %2 = load i32, i32* %q.addr, align 4
  %div1 = sdiv i32 %2, 10000
  store i32 %div1, i32* %q1, align 4
  %3 = load i32, i32* %q.addr, align 4
  %rem2 = srem i32 %3, 10000
  store i32 %rem2, i32* %q0, align 4
  %4 = load i32, i32* %p0, align 4
  %5 = load i32, i32* %q1, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %p1, align 4
  %7 = load i32, i32* %q0, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, %mul3
  %rem4 = srem i32 %add, 10000
  %mul5 = mul nsw i32 %rem4, 10000
  %8 = load i32, i32* %p0, align 4
  %9 = load i32, i32* %q0, align 4
  %mul6 = mul nsw i32 %8, %9
  %add7 = add nsw i32 %mul5, %mul6
  ret i32 %add7
}

; Function Attrs: nounwind uwtable
define i32 @skiprand(i32 %seed, i32 %n) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %seed.addr, align 4
  %call = call i32 @myrandom(i32 %1)
  store i32 %call, i32* %seed.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %seed.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @myrandom(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %call = call i32 @mult(i32 %0, i32 31415821)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %seed.addr, align 4
  %1 = load i32, i32* %seed.addr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @print_extra(%struct.VERTEX* %extra) #0 {
entry:
  %extra.addr = alloca %struct.VERTEX*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.VERTEX* %extra, %struct.VERTEX** %extra.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  %v = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %0, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  store double %1, double* %x, align 8
  %2 = load %struct.VERTEX*, %struct.VERTEX** %extra.addr, align 8
  %v2 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %2, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v2, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  store double %3, double* %y, align 8
  %4 = load double, double* %x, align 8
  %5 = load double, double* %y, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), double %4, double %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %my_stack = alloca %struct.EDGE_STACK*, align 8
  %point = alloca %struct.get_point, align 8
  %extra = alloca %struct.get_point, align 8
  %edge = alloca %struct.edge_rec*, align 8
  %n = alloca i32, align 4
  %retained = alloca i32, align 4
  %tmp = alloca %struct.get_point, align 8
  %tmp5 = alloca %struct.get_point, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* @to_color, align 4
  store i32 0, i32* @to_3d_out, align 4
  store i32 0, i32* @to_off, align 4
  store i32 0, i32* @to_lincoln, align 4
  store i32 1, i32* @delaunay, align 4
  store i32 1, i32* @voronoi, align 4
  store i32 0, i32* @ahost, align 4
  store i32 0, i32* @interactive, align 4
  store i32 0, i32* %retained, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %0)
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call1 = call i32 @dealwithargs(i32 %1, i8** %2)
  store i32 %call1, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 %3)
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* @NumNodes, align 4
  %sub = sub nsw i32 %5, 1
  call void @get_points(%struct.get_point* sret %tmp, i32 1, double 1.000000e+00, i32 %4, i32 1023, i32 %sub, i32 1)
  %6 = bitcast %struct.get_point* %extra to i8*
  %7 = bitcast %struct.get_point* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  %8 = load i32, i32* %n, align 4
  %sub3 = sub nsw i32 %8, 1
  %curmax = getelementptr inbounds %struct.get_point, %struct.get_point* %extra, i32 0, i32 1
  %9 = load double, double* %curmax, align 8
  %10 = load i32, i32* %n, align 4
  %sub4 = sub nsw i32 %10, 1
  %seed = getelementptr inbounds %struct.get_point, %struct.get_point* %extra, i32 0, i32 2
  %11 = load i32, i32* %seed, align 4
  %12 = load i32, i32* @NumNodes, align 4
  call void @get_points(%struct.get_point* sret %tmp5, i32 %sub3, double %9, i32 %sub4, i32 %11, i32 0, i32 %12)
  %13 = bitcast %struct.get_point* %point to i8*
  %14 = bitcast %struct.get_point* %tmp5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 8, i1 false)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  %15 = load i32, i32* %n, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, i32* @num_vertices, align 4
  %16 = load i32, i32* @num_vertices, align 4
  %call7 = call %struct.EDGE_STACK* @allocate_stack(i32 %16)
  store %struct.EDGE_STACK* %call7, %struct.EDGE_STACK** %my_stack, align 8
  %17 = load i32, i32* @flag, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %v = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  %18 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  call void @in_order(%struct.VERTEX* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* @flag, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %v10 = getelementptr inbounds %struct.get_point, %struct.get_point* %extra, i32 0, i32 0
  %20 = load %struct.VERTEX*, %struct.VERTEX** %v10, align 8
  call void @print_extra(%struct.VERTEX* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %21 = load i32, i32* %n, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %21)
  %v13 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  %22 = load %struct.VERTEX*, %struct.VERTEX** %v13, align 8
  %v14 = getelementptr inbounds %struct.get_point, %struct.get_point* %extra, i32 0, i32 0
  %23 = load %struct.VERTEX*, %struct.VERTEX** %v14, align 8
  %call15 = call %struct.edge_rec* @build_delaunay_triangulation(%struct.VERTEX* %22, %struct.VERTEX* %23)
  store %struct.edge_rec* %call15, %struct.edge_rec** %edge, align 8
  %24 = load i32, i32* @flag, align 4
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  %25 = load %struct.edge_rec*, %struct.edge_rec** %edge, align 8
  %26 = load i32, i32* %n, align 4
  %27 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack, align 8
  call void @output_voronoi_diagram(%struct.edge_rec* %25, i32 %26, %struct.EDGE_STACK* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.11
  ret i32 0
}

declare i32 @dealwithargs(i32, i8**) #2

; Function Attrs: nounwind uwtable
define void @get_points(%struct.get_point* noalias sret %agg.result, i32 %n, double %curmax, i32 %i, i32 %seed, i32 %processor, i32 %numnodes) #0 {
entry:
  %n.addr = alloca i32, align 4
  %curmax.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %processor.addr = alloca i32, align 4
  %numnodes.addr = alloca i32, align 4
  %node = alloca %struct.VERTEX*, align 8
  %point = alloca %struct.get_point, align 8
  %j = alloca i32, align 4
  %tmp = alloca %struct.get_point, align 8
  %tmp44 = alloca %struct.get_point, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %curmax, double* %curmax.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %processor, i32* %processor.addr, align 4
  store i32 %numnodes, i32* %numnodes.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %v = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  store %struct.VERTEX* null, %struct.VERTEX** %v, align 8
  %1 = load double, double* %curmax.addr, align 8
  %curmax1 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 1
  store double %1, double* %curmax1, align 8
  %2 = load i32, i32* %seed.addr, align 4
  %seed2 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  store i32 %2, i32* %seed2, align 4
  %3 = bitcast %struct.get_point* %agg.result to i8*
  %4 = bitcast %struct.get_point* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %5, 2
  %6 = load double, double* %curmax.addr, align 8
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* %seed.addr, align 4
  %9 = load i32, i32* %processor.addr, align 4
  %10 = load i32, i32* %numnodes.addr, align 4
  %div3 = sdiv i32 %10, 2
  %add = add nsw i32 %9, %div3
  %11 = load i32, i32* %numnodes.addr, align 4
  %div4 = sdiv i32 %11, 2
  call void @get_points(%struct.get_point* sret %tmp, i32 %div, double %6, i32 %7, i32 %8, i32 %add, i32 %div4)
  %12 = bitcast %struct.get_point* %point to i8*
  %13 = bitcast %struct.get_point* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = load i32, i32* %n.addr, align 4
  %div5 = sdiv i32 %14, 2
  %15 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %15, %div5
  store i32 %sub, i32* %i.addr, align 4
  %16 = load i32, i32* @NumNodes, align 4
  %17 = load i32, i32* @NumNodes, align 4
  %sub6 = sub nsw i32 %17, 1
  %div7 = sdiv i32 %sub6, 2
  %sub8 = sub nsw i32 %16, %div7
  store i32 %sub8, i32* %j, align 4
  %call = call noalias i8* @malloc(i64 40) #1
  %18 = bitcast i8* %call to %struct.VERTEX*
  store %struct.VERTEX* %18, %struct.VERTEX** %node, align 8
  %curmax9 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 1
  %19 = load double, double* %curmax9, align 8
  %seed10 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  %20 = load i32, i32* %seed10, align 4
  %call11 = call i32 @myrandom(i32 %20)
  %seed12 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  store i32 %call11, i32* %seed12, align 4
  %conv = sitofp i32 %call11 to double
  %div13 = fdiv double %conv, 0x41DFFFFFFFC00000
  %call14 = call double @log(double %div13) #1
  %21 = load i32, i32* %i.addr, align 4
  %conv15 = sitofp i32 %21 to double
  %div16 = fdiv double %call14, %conv15
  %call17 = call double @exp(double %div16) #1
  %mul = fmul double %19, %call17
  %22 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v18 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %22, i32 0, i32 0
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v18, i32 0, i32 0
  store double %mul, double* %x, align 8
  %seed19 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  %23 = load i32, i32* %seed19, align 4
  %call20 = call i32 @myrandom(i32 %23)
  %seed21 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  store i32 %call20, i32* %seed21, align 4
  %conv22 = sitofp i32 %call20 to double
  %div23 = fdiv double %conv22, 0x41DFFFFFFFC00000
  %24 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v24 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %24, i32 0, i32 0
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v24, i32 0, i32 1
  store double %div23, double* %y, align 8
  %25 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v25 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %25, i32 0, i32 0
  %x26 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v25, i32 0, i32 0
  %26 = load double, double* %x26, align 8
  %27 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v27 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %27, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v27, i32 0, i32 0
  %28 = load double, double* %x28, align 8
  %mul29 = fmul double %26, %28
  %29 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v30 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %29, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v30, i32 0, i32 1
  %30 = load double, double* %y31, align 8
  %31 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v32 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %31, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v32, i32 0, i32 1
  %32 = load double, double* %y33, align 8
  %mul34 = fmul double %30, %32
  %add35 = fadd double %mul29, %mul34
  %33 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v36 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %33, i32 0, i32 0
  %norm = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v36, i32 0, i32 2
  store double %add35, double* %norm, align 8
  %v37 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  %34 = load %struct.VERTEX*, %struct.VERTEX** %v37, align 8
  %35 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %right = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %35, i32 0, i32 2
  store %struct.VERTEX* %34, %struct.VERTEX** %right, align 8
  %36 = load i32, i32* %n.addr, align 4
  %div38 = sdiv i32 %36, 2
  %37 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v39 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %37, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v39, i32 0, i32 0
  %38 = load double, double* %x40, align 8
  %39 = load i32, i32* %i.addr, align 4
  %sub41 = sub nsw i32 %39, 1
  %seed42 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 2
  %40 = load i32, i32* %seed42, align 4
  %41 = load i32, i32* %processor.addr, align 4
  %42 = load i32, i32* %numnodes.addr, align 4
  %div43 = sdiv i32 %42, 2
  call void @get_points(%struct.get_point* sret %tmp44, i32 %div38, double %38, i32 %sub41, i32 %40, i32 %41, i32 %div43)
  %43 = bitcast %struct.get_point* %point to i8*
  %44 = bitcast %struct.get_point* %tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 24, i32 8, i1 false)
  %v45 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  %45 = load %struct.VERTEX*, %struct.VERTEX** %v45, align 8
  %46 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %left = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %46, i32 0, i32 1
  store %struct.VERTEX* %45, %struct.VERTEX** %left, align 8
  %47 = load %struct.VERTEX*, %struct.VERTEX** %node, align 8
  %v46 = getelementptr inbounds %struct.get_point, %struct.get_point* %point, i32 0, i32 0
  store %struct.VERTEX* %47, %struct.VERTEX** %v46, align 8
  %48 = bitcast %struct.get_point* %agg.result to i8*
  %49 = bitcast %struct.get_point* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.EDGE_STACK* @allocate_stack(i32 %num_vertice) #0 {
entry:
  %num_vertice.addr = alloca i32, align 4
  %my_stack = alloca %struct.EDGE_STACK*, align 8
  store i32 %num_vertice, i32* %num_vertice.addr, align 4
  %0 = load i32, i32* %num_vertice.addr, align 4
  %mul = mul nsw i32 12, %0
  store i32 %mul, i32* @num_edgeparts, align 4
  %call = call noalias i8* @malloc(i64 24) #1
  %1 = bitcast i8* %call to %struct.EDGE_STACK*
  store %struct.EDGE_STACK* %1, %struct.EDGE_STACK** %my_stack, align 8
  %2 = load i32, i32* @num_edgeparts, align 4
  %conv = sext i32 %2 to i64
  %mul1 = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 %mul1) #1
  %3 = bitcast i8* %call2 to %struct.edge_rec**
  %4 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack, align 8
  %elts = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %4, i32 0, i32 1
  store %struct.edge_rec** %3, %struct.edge_rec*** %elts, align 8
  %5 = load i32, i32* @num_edgeparts, align 4
  %div = sdiv i32 %5, 2
  %6 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack, align 8
  %stack_size = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %6, i32 0, i32 2
  store i32 %div, i32* %stack_size, align 4
  %7 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack, align 8
  ret %struct.EDGE_STACK* %7
}

declare void @output_voronoi_diagram(%struct.edge_rec*, i32, %struct.EDGE_STACK*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define void @free_all(i32 %cont, %struct.EDGE_STACK* %my_stack) #0 {
entry:
  %cont.addr = alloca i32, align 4
  %my_stack.addr = alloca %struct.EDGE_STACK*, align 8
  store i32 %cont, i32* %cont.addr, align 4
  store %struct.EDGE_STACK* %my_stack, %struct.EDGE_STACK** %my_stack.addr, align 8
  %0 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %elts = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %0, i32 0, i32 1
  %1 = load %struct.edge_rec**, %struct.edge_rec*** %elts, align 8
  %2 = bitcast %struct.edge_rec** %1 to i8*
  call void @free(i8* %2) #1
  %3 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %4 = bitcast %struct.EDGE_STACK* %3 to i8*
  call void @free(i8* %4) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define %struct.edge_rec* @pop_edge(%struct.EDGE_STACK* %x) #0 {
entry:
  %x.addr = alloca %struct.EDGE_STACK*, align 8
  %a = alloca i32, align 4
  store %struct.EDGE_STACK* %x, %struct.EDGE_STACK** %x.addr, align 8
  %0 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %x.addr, align 8
  %ptr = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %0, i32 0, i32 0
  %1 = load i32, i32* %ptr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %ptr, align 4
  store i32 %1, i32* %a, align 4
  %2 = load i32, i32* %a, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %x.addr, align 8
  %elts = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %3, i32 0, i32 1
  %4 = load %struct.edge_rec**, %struct.edge_rec*** %elts, align 8
  %arrayidx = getelementptr inbounds %struct.edge_rec*, %struct.edge_rec** %4, i64 %idxprom
  %5 = load %struct.edge_rec*, %struct.edge_rec** %arrayidx, align 8
  ret %struct.edge_rec* %5
}

; Function Attrs: nounwind uwtable
define void @push_edge(%struct.EDGE_STACK* %stack, %struct.edge_rec* %edge) #0 {
entry:
  %stack.addr = alloca %struct.EDGE_STACK*, align 8
  %edge.addr = alloca %struct.edge_rec*, align 8
  %a = alloca i32, align 4
  store %struct.EDGE_STACK* %stack, %struct.EDGE_STACK** %stack.addr, align 8
  store %struct.edge_rec* %edge, %struct.edge_rec** %edge.addr, align 8
  %0 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %ptr = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %0, i32 0, i32 0
  %1 = load i32, i32* %ptr, align 4
  %2 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %stack_size = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %2, i32 0, i32 2
  %3 = load i32, i32* %stack_size, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %ptr1 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %4, i32 0, i32 0
  %5 = load i32, i32* %ptr1, align 4
  store i32 %5, i32* %a, align 4
  %6 = load i32, i32* %a, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %a, align 4
  %7 = load i32, i32* %a, align 4
  %8 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %ptr2 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %8, i32 0, i32 0
  store i32 %7, i32* %ptr2, align 4
  %9 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %10 = load i32, i32* %a, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %elts = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %11, i32 0, i32 1
  %12 = load %struct.edge_rec**, %struct.edge_rec*** %elts, align 8
  %arrayidx = getelementptr inbounds %struct.edge_rec*, %struct.edge_rec** %12, i64 %idxprom
  store %struct.edge_rec* %9, %struct.edge_rec** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_ring(%struct.EDGE_STACK* %stack, %struct.edge_rec* %edge) #0 {
entry:
  %stack.addr = alloca %struct.EDGE_STACK*, align 8
  %edge.addr = alloca %struct.edge_rec*, align 8
  %nex = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %stack, %struct.EDGE_STACK** %stack.addr, align 8
  store %struct.edge_rec* %edge, %struct.edge_rec** %edge.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %0, i32 0, i32 1
  %1 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %nex, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %3 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %cmp = icmp ne %struct.edge_rec* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %wasseen = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 2
  %5 = load i64, i64* %wasseen, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %wasseen2 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 2
  store i64 1, i64* %wasseen2, align 8
  %7 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  call void @push_edge(%struct.EDGE_STACK* %7, %struct.edge_rec* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %next3 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %9, i32 0, i32 1
  %10 = load %struct.edge_rec*, %struct.edge_rec** %next3, align 8
  store %struct.edge_rec* %10, %struct.edge_rec** %nex, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_nonzero_ring(%struct.EDGE_STACK* %stack, %struct.edge_rec* %edge) #0 {
entry:
  %stack.addr = alloca %struct.EDGE_STACK*, align 8
  %edge.addr = alloca %struct.edge_rec*, align 8
  %nex = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %stack, %struct.EDGE_STACK** %stack.addr, align 8
  store %struct.edge_rec* %edge, %struct.edge_rec** %edge.addr, align 8
  %0 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %0, i32 0, i32 1
  %1 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %nex, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %3 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %cmp = icmp ne %struct.edge_rec* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %wasseen = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %4, i32 0, i32 2
  %5 = load i64, i64* %wasseen, align 8
  %cmp1 = icmp ne i64 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %wasseen2 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 2
  store i64 0, i64* %wasseen2, align 8
  %7 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %stack.addr, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  call void @push_edge(%struct.EDGE_STACK* %7, %struct.edge_rec* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %next3 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %9, i32 0, i32 1
  %10 = load %struct.edge_rec*, %struct.edge_rec** %next3, align 8
  store %struct.edge_rec* %10, %struct.edge_rec** %nex, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @zero_seen(%struct.EDGE_STACK* %my_stack, %struct.edge_rec* %edge) #0 {
entry:
  %my_stack.addr = alloca %struct.EDGE_STACK*, align 8
  %edge.addr = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %my_stack, %struct.EDGE_STACK** %my_stack.addr, align 8
  store %struct.edge_rec* %edge, %struct.edge_rec** %edge.addr, align 8
  %0 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %ptr = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %0, i32 0, i32 0
  store i32 0, i32* %ptr, align 4
  %1 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  call void @push_nonzero_ring(%struct.EDGE_STACK* %1, %struct.edge_rec* %2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %ptr1 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %3, i32 0, i32 0
  %4 = load i32, i32* %ptr1, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %call = call %struct.edge_rec* @pop_edge(%struct.EDGE_STACK* %5)
  store %struct.edge_rec* %call, %struct.edge_rec** %edge.addr, align 8
  %6 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %7 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %8 = ptrtoint %struct.edge_rec* %7 to i64
  %xor = xor i64 %8, 64
  %9 = inttoptr i64 %xor to %struct.edge_rec*
  call void @push_nonzero_ring(%struct.EDGE_STACK* %6, %struct.edge_rec* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
