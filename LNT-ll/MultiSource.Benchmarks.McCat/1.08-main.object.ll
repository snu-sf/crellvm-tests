; ModuleID = './MultiSource.Benchmarks.McCat/1.08-main.object.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ObjectStruct = type { [57 x i8], %struct.PointListStruct*, %struct.Poly3Struct*, %struct.Poly4Struct*, %struct.Texture*, %struct.Material*, %struct.RGBStruct, i32, i32, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.ObjectStruct*, %struct.ObjectStruct*, i32, i32, i32, i32, i32, i32, i32, %struct.ObjectStruct*, %struct.ObjectStruct* }
%struct.PointListStruct = type { %struct.ObjPointStruct*, %struct.PointListStruct*, %struct.PointListStruct* }
%struct.ObjPointStruct = type { double, double, double, double, double, double }
%struct.Poly3Struct = type { [3 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly3Struct*, %struct.Poly3Struct* }
%struct.Poly4Struct = type { [4 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly4Struct*, %struct.Poly4Struct* }
%struct.Texture = type { %struct.PointStruct, %struct.BitMapListStruct*, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.Texture*, %struct.Texture* }
%struct.BitMapListStruct = type { %struct.BitMapStruct, %struct.BitMapListStruct*, %struct.BitMapListStruct* }
%struct.BitMapStruct = type { i8* }
%struct.Material = type { float, float, float, %struct.Material*, %struct.Material* }
%struct.RGBStruct = type { double, double, double }
%struct.PointStruct = type { double, double, double }
%struct.HPointStruct = type { double, double, double, double }

@.str = private unnamed_addr constant [31 x i8] c"Point[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" -> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PrintPoly3s[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"-> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PrintPoly4s[%i] = %.2f, %.2f, %.2f\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Scale    : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Origin   : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Rotation : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Color    : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Style     : FULL\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Style     : HALF\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Style     : NONE\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Cannot Translate NULL-object\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Cannot Rotate NULL-object\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Cannot Scale NULL-object\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ObjectStruct* @Oalloc(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %o = alloca %struct.ObjectStruct*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %o, align 8
  %call = call noalias i8* @calloc(i64 272, i64 1) #3
  %0 = bitcast i8* %call to %struct.ObjectStruct*
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %o, align 8
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Name = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [57 x i8], [57 x i8]* %Name, i32 0, i32 0
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %2) #3
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Color = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %3, i32 0, i32 6
  %R = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color, i32 0, i32 0
  store double 1.000000e+00, double* %R, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Color2 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 6
  %G = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color2, i32 0, i32 1
  store double 1.000000e+00, double* %G, align 8
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Color3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %5, i32 0, i32 6
  %B = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color3, i32 0, i32 2
  store double 1.000000e+00, double* %B, align 8
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %ReNo = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 7
  store i32 0, i32* %ReNo, align 4
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %styletag = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 8
  store i32 0, i32* %styletag, align 4
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 14
  store i32 0, i32* %Number_of_Children, align 4
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %9, i32 0, i32 15
  store i32 0, i32* %Number_of_Points, align 4
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Poly3s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 16
  store i32 0, i32* %Number_of_Poly3s, align 4
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Poly4s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %11, i32 0, i32 17
  store i32 0, i32* %Number_of_Poly4s, align 4
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Textures = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %12, i32 0, i32 18
  store i32 0, i32* %Number_of_Textures, align 4
  %13 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_Materials = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %13, i32 0, i32 19
  store i32 0, i32* %Number_of_Materials, align 4
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Number_of_BitMaps = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 20
  store i32 0, i32* %Number_of_BitMaps, align 4
  %15 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %15, i32 0, i32 12
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %Children, align 8
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Parent = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 13
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %Parent, align 8
  %17 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Rotation = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %17, i32 0, i32 10
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Rotation4 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %18, i32 0, i32 10
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation4, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %19 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Rotation5 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %19, i32 0, i32 10
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation5, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Scale = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 11
  %x6 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale, i32 0, i32 0
  store double 1.000000e+00, double* %x6, align 8
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Scale7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 11
  %y8 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale7, i32 0, i32 1
  store double 1.000000e+00, double* %y8, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Scale9 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 11
  %z10 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale9, i32 0, i32 2
  store double 1.000000e+00, double* %z10, align 8
  %23 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Origin = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %23, i32 0, i32 9
  %x11 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin, i32 0, i32 0
  store double 0.000000e+00, double* %x11, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Origin12 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 9
  %y13 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin12, i32 0, i32 1
  store double 0.000000e+00, double* %y13, align 8
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Origin14 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %25, i32 0, i32 9
  %z15 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin14, i32 0, i32 2
  store double 0.000000e+00, double* %z15, align 8
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  ret %struct.ObjectStruct* %26
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %o, double %x, double %y, double %z) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %tmp = alloca %struct.PointListStruct*, align 8
  %prv = alloca %struct.PointListStruct*, align 8
  %p = alloca %struct.ObjPointStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %prv, align 8
  store %struct.ObjPointStruct* null, %struct.ObjPointStruct** %p, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Number_of_Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %0, i32 0, i32 15
  %1 = load i32, i32* %Number_of_Points, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #3
  %2 = bitcast i8* %call to %struct.PointListStruct*
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %3, i32 0, i32 1
  store %struct.PointListStruct* %2, %struct.PointListStruct** %Points, align 8
  %call3 = call noalias i8* @malloc(i64 48) #3
  %4 = bitcast i8* %call3 to %struct.ObjPointStruct*
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points4 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %5, i32 0, i32 1
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %Points4, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %6, i32 0, i32 0
  store %struct.ObjPointStruct* %4, %struct.ObjPointStruct** %P, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points5 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 1
  %9 = load %struct.PointListStruct*, %struct.PointListStruct** %Points5, align 8
  %P6 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %9, i32 0, i32 0
  %10 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P6, align 8
  %x7 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %10, i32 0, i32 0
  store double %7, double* %x7, align 8
  %11 = load double, double* %y.addr, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points8 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %12, i32 0, i32 1
  %13 = load %struct.PointListStruct*, %struct.PointListStruct** %Points8, align 8
  %P9 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %13, i32 0, i32 0
  %14 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P9, align 8
  %y10 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %14, i32 0, i32 1
  store double %11, double* %y10, align 8
  %15 = load double, double* %z.addr, align 8
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 1
  %17 = load %struct.PointListStruct*, %struct.PointListStruct** %Points11, align 8
  %P12 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %17, i32 0, i32 0
  %18 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P12, align 8
  %z13 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %18, i32 0, i32 2
  store double %15, double* %z13, align 8
  %19 = load double, double* %x.addr, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points14 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 1
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %Points14, align 8
  %P15 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P15, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 3
  store double %19, double* %tx, align 8
  %23 = load double, double* %y.addr, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points16 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 1
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %Points16, align 8
  %P17 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %25, i32 0, i32 0
  %26 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P17, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %26, i32 0, i32 4
  store double %23, double* %ty, align 8
  %27 = load double, double* %z.addr, align 8
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points18 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 1
  %29 = load %struct.PointListStruct*, %struct.PointListStruct** %Points18, align 8
  %P19 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %29, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P19, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %30, i32 0, i32 5
  store double %27, double* %tz, align 8
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points20 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %31, i32 0, i32 1
  %32 = load %struct.PointListStruct*, %struct.PointListStruct** %Points20, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %32, i32 0, i32 1
  store %struct.PointListStruct* null, %struct.PointListStruct** %NextPoint, align 8
  %33 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points21 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %33, i32 0, i32 1
  %34 = load %struct.PointListStruct*, %struct.PointListStruct** %Points21, align 8
  %PrevPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %34, i32 0, i32 2
  store %struct.PointListStruct* null, %struct.PointListStruct** %PrevPoint, align 8
  %35 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %35, i32 0, i32 1
  %36 = load %struct.PointListStruct*, %struct.PointListStruct** %Points22, align 8
  %P23 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %36, i32 0, i32 0
  %37 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P23, align 8
  store %struct.ObjPointStruct* %37, %struct.ObjPointStruct** %p, align 8
  %38 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Number_of_Points24 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %38, i32 0, i32 15
  %39 = load i32, i32* %Number_of_Points24, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %Number_of_Points24, align 4
  br label %if.end.70

if.else:                                          ; preds = %entry
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points25 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %40, i32 0, i32 1
  %41 = load %struct.PointListStruct*, %struct.PointListStruct** %Points25, align 8
  store %struct.PointListStruct* %41, %struct.PointListStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %42 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %cmp26 = icmp ne %struct.PointListStruct* %42, null
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %43 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %p, align 8
  %cmp27 = icmp eq %struct.ObjPointStruct* %43, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P28 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %45, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P28, align 8
  %x29 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 0
  %47 = load double, double* %x29, align 8
  %48 = load double, double* %x.addr, align 8
  %call30 = call i32 @FPEqual(double %47, double %48)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %while.body
  %49 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P31 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %49, i32 0, i32 0
  %50 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P31, align 8
  %y32 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %50, i32 0, i32 1
  %51 = load double, double* %y32, align 8
  %52 = load double, double* %y.addr, align 8
  %call33 = call i32 @FPEqual(double %51, double %52)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.42

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %53 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P36 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %53, i32 0, i32 0
  %54 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P36, align 8
  %z37 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %54, i32 0, i32 2
  %55 = load double, double* %z37, align 8
  %56 = load double, double* %z.addr, align 8
  %call38 = call i32 @FPEqual(double %55, double %56)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true.35
  %57 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P41 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %57, i32 0, i32 0
  %58 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P41, align 8
  store %struct.ObjPointStruct* %58, %struct.ObjPointStruct** %p, align 8
  br label %if.end

if.else.42:                                       ; preds = %land.lhs.true.35, %land.lhs.true, %while.body
  %59 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  store %struct.PointListStruct* %59, %struct.PointListStruct** %prv, align 8
  %60 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %NextPoint43 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %60, i32 0, i32 1
  %61 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint43, align 8
  store %struct.PointListStruct* %61, %struct.PointListStruct** %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.42, %if.then.40
  br label %while.cond

while.end:                                        ; preds = %land.end
  %62 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %cmp44 = icmp eq %struct.PointListStruct* %62, null
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.69

land.lhs.true.45:                                 ; preds = %while.end
  %63 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %p, align 8
  %cmp46 = icmp eq %struct.ObjPointStruct* %63, null
  br i1 %cmp46, label %if.then.47, label %if.end.69

if.then.47:                                       ; preds = %land.lhs.true.45
  %call48 = call noalias i8* @malloc(i64 24) #3
  %64 = bitcast i8* %call48 to %struct.PointListStruct*
  store %struct.PointListStruct* %64, %struct.PointListStruct** %tmp, align 8
  %65 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %66 = load %struct.PointListStruct*, %struct.PointListStruct** %prv, align 8
  %NextPoint49 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %66, i32 0, i32 1
  store %struct.PointListStruct* %65, %struct.PointListStruct** %NextPoint49, align 8
  %call50 = call noalias i8* @malloc(i64 48) #3
  %67 = bitcast i8* %call50 to %struct.ObjPointStruct*
  %68 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %68, i32 0, i32 0
  store %struct.ObjPointStruct* %67, %struct.ObjPointStruct** %P51, align 8
  %69 = load double, double* %x.addr, align 8
  %70 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P52 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %70, i32 0, i32 0
  %71 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P52, align 8
  %x53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %71, i32 0, i32 0
  store double %69, double* %x53, align 8
  %72 = load double, double* %y.addr, align 8
  %73 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P54 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %73, i32 0, i32 0
  %74 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P54, align 8
  %y55 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %74, i32 0, i32 1
  store double %72, double* %y55, align 8
  %75 = load double, double* %z.addr, align 8
  %76 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P56 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %76, i32 0, i32 0
  %77 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P56, align 8
  %z57 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %77, i32 0, i32 2
  store double %75, double* %z57, align 8
  %78 = load double, double* %x.addr, align 8
  %79 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P58 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %79, i32 0, i32 0
  %80 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P58, align 8
  %tx59 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %80, i32 0, i32 3
  store double %78, double* %tx59, align 8
  %81 = load double, double* %y.addr, align 8
  %82 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P60 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %82, i32 0, i32 0
  %83 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P60, align 8
  %ty61 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %83, i32 0, i32 4
  store double %81, double* %ty61, align 8
  %84 = load double, double* %z.addr, align 8
  %85 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P62 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %85, i32 0, i32 0
  %86 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P62, align 8
  %tz63 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %86, i32 0, i32 5
  store double %84, double* %tz63, align 8
  %87 = load %struct.PointListStruct*, %struct.PointListStruct** %prv, align 8
  %88 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %PrevPoint64 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %88, i32 0, i32 2
  store %struct.PointListStruct* %87, %struct.PointListStruct** %PrevPoint64, align 8
  %89 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %NextPoint65 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %89, i32 0, i32 1
  store %struct.PointListStruct* null, %struct.PointListStruct** %NextPoint65, align 8
  %90 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P66 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %90, i32 0, i32 0
  %91 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P66, align 8
  store %struct.ObjPointStruct* %91, %struct.ObjPointStruct** %p, align 8
  %92 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Number_of_Points67 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %92, i32 0, i32 15
  %93 = load i32, i32* %Number_of_Points67, align 4
  %inc68 = add nsw i32 %93, 1
  store i32 %inc68, i32* %Number_of_Points67, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.47, %land.lhs.true.45, %while.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then
  %94 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %p, align 8
  ret %struct.ObjPointStruct* %94
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @FPEqual(double %d1, double %d2) #0 {
entry:
  %d1.addr = alloca double, align 8
  %d2.addr = alloca double, align 8
  store double %d1, double* %d1.addr, align 8
  store double %d2, double* %d2.addr, align 8
  %0 = load double, double* %d1.addr, align 8
  %1 = load double, double* %d2.addr, align 8
  %sub = fsub double %0, %1
  %call = call double @fabs(double %sub) #5
  %conv = fpext double %call to x86_fp80
  %cmp = fcmp olt x86_fp80 %conv, 0xK3FEB8637BD05AF6C69B6
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @InsertPoly3(%struct.ObjectStruct* %o, %struct.PointStruct* %p, %struct.Texture* %txture, %struct.Material* %mtrial) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %p.addr = alloca %struct.PointStruct*, align 8
  %txture.addr = alloca %struct.Texture*, align 8
  %mtrial.addr = alloca %struct.Material*, align 8
  %tmp = alloca %struct.Poly3Struct*, align 8
  %i = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.PointStruct* %p, %struct.PointStruct** %p.addr, align 8
  store %struct.Texture* %txture, %struct.Texture** %txture.addr, align 8
  store %struct.Material* %mtrial, %struct.Material** %mtrial.addr, align 8
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %tmp, align 8
  %call = call noalias i8* @malloc(i64 56) #3
  %0 = bitcast i8* %call to %struct.Poly3Struct*
  store %struct.Poly3Struct* %0, %struct.Poly3Struct** %tmp, align 8
  %1 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Next = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %1, i32 0, i32 3
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %Next, align 8
  %2 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Prev = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %2, i32 0, i32 4
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %Prev, align 8
  %3 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Mat = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %3, i32 0, i32 1
  store %struct.Material* null, %struct.Material** %Mat, align 8
  %4 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Txt = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %4, i32 0, i32 2
  store %struct.Texture* null, %struct.Texture** %Txt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %8, i64 %idxprom
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %11, i64 %idxprom2
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx3, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %14, i64 %idxprom4
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx5, i32 0, i32 2
  %15 = load double, double* %z, align 8
  %call6 = call %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %6, double %9, double %12, double %15)
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %17, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P, i32 0, i64 %idxprom7
  store %struct.ObjPointStruct* %call6, %struct.ObjPointStruct** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %19, i32 0, i32 2
  %20 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Poly3s, align 8
  %cmp9 = icmp eq %struct.Poly3Struct* %20, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %21 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s10 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 2
  store %struct.Poly3Struct* %21, %struct.Poly3Struct** %Poly3s10, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %23 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 2
  %25 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Poly3s11, align 8
  %Prev12 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %25, i32 0, i32 4
  store %struct.Poly3Struct* %23, %struct.Poly3Struct** %Prev12, align 8
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s13 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %26, i32 0, i32 2
  %27 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Poly3s13, align 8
  %28 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Next14 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %28, i32 0, i32 3
  store %struct.Poly3Struct* %27, %struct.Poly3Struct** %Next14, align 8
  %29 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %30 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %30, i32 0, i32 2
  store %struct.Poly3Struct* %29, %struct.Poly3Struct** %Poly3s15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Number_of_Poly3s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %31, i32 0, i32 16
  %32 = load i32, i32* %Number_of_Poly3s, align 4
  %inc16 = add nsw i32 %32, 1
  store i32 %inc16, i32* %Number_of_Poly3s, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @InsertPoly4(%struct.ObjectStruct* %o, %struct.PointStruct* %p, %struct.Texture* %txture, %struct.Material* %mtrial) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %p.addr = alloca %struct.PointStruct*, align 8
  %txture.addr = alloca %struct.Texture*, align 8
  %mtrial.addr = alloca %struct.Material*, align 8
  %tmp = alloca %struct.Poly4Struct*, align 8
  %i = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.PointStruct* %p, %struct.PointStruct** %p.addr, align 8
  store %struct.Texture* %txture, %struct.Texture** %txture.addr, align 8
  store %struct.Material* %mtrial, %struct.Material** %mtrial.addr, align 8
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %tmp, align 8
  %call = call noalias i8* @malloc(i64 64) #3
  %0 = bitcast i8* %call to %struct.Poly4Struct*
  store %struct.Poly4Struct* %0, %struct.Poly4Struct** %tmp, align 8
  %1 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Next = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %1, i32 0, i32 3
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %Next, align 8
  %2 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Prev = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %2, i32 0, i32 4
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %Prev, align 8
  %3 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Mat = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %3, i32 0, i32 1
  store %struct.Material* null, %struct.Material** %Mat, align 8
  %4 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Txt = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %4, i32 0, i32 2
  store %struct.Texture* null, %struct.Texture** %Txt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %8, i64 %idxprom
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %11, i64 %idxprom2
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx3, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.PointStruct*, %struct.PointStruct** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %14, i64 %idxprom4
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx5, i32 0, i32 2
  %15 = load double, double* %z, align 8
  %call6 = call %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %6, double %9, double %12, double %15)
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %17, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P, i32 0, i64 %idxprom7
  store %struct.ObjPointStruct* %call6, %struct.ObjPointStruct** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %19, i32 0, i32 3
  %20 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Poly4s, align 8
  %cmp9 = icmp eq %struct.Poly4Struct* %20, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %21 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s10 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 3
  store %struct.Poly4Struct* %21, %struct.Poly4Struct** %Poly4s10, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %23 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 3
  %25 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Poly4s11, align 8
  %Prev12 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %25, i32 0, i32 4
  store %struct.Poly4Struct* %23, %struct.Poly4Struct** %Prev12, align 8
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s13 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %26, i32 0, i32 3
  %27 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Poly4s13, align 8
  %28 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Next14 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %28, i32 0, i32 3
  store %struct.Poly4Struct* %27, %struct.Poly4Struct** %Next14, align 8
  %29 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %30 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %30, i32 0, i32 3
  store %struct.Poly4Struct* %29, %struct.Poly4Struct** %Poly4s15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Number_of_Poly4s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %31, i32 0, i32 17
  %32 = load i32, i32* %Number_of_Poly4s, align 4
  %inc16 = add nsw i32 %32, 1
  store i32 %inc16, i32* %Number_of_Poly4s, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.ObjectStruct* @ArrayToPoly3(%struct.ObjectStruct* %o, [3 x double]* %array, i32 %size) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %array.addr = alloca [3 x double]*, align 8
  %size.addr = alloca i32, align 4
  %p = alloca [3 x %struct.PointStruct], align 16
  %i = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store [3 x double]* %array, [3 x double]** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 0
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx2, i32 0, i32 0
  store double %4, double* %x, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 1
  %7 = load double, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 0
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx6, i32 0, i32 1
  store double %7, double* %y, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 2
  %10 = load double, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 0
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx10, i32 0, i32 2
  store double %10, double* %z, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom11 = sext i32 %add to i64
  %12 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 0
  %13 = load double, double* %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 1
  %x15 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx14, i32 0, i32 0
  store double %13, double* %x15, align 8
  %14 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %14, 1
  %idxprom17 = sext i32 %add16 to i64
  %15 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 1
  %16 = load double, double* %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 1
  %y21 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx20, i32 0, i32 1
  store double %16, double* %y21, align 8
  %17 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %17, 1
  %idxprom23 = sext i32 %add22 to i64
  %18 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  %19 = load double, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 1
  %z27 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx26, i32 0, i32 2
  store double %19, double* %z27, align 8
  %20 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %20, 2
  %idxprom29 = sext i32 %add28 to i64
  %21 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx30, i32 0, i64 0
  %22 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 2
  %x33 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx32, i32 0, i32 0
  store double %22, double* %x33, align 8
  %23 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %23, 2
  %idxprom35 = sext i32 %add34 to i64
  %24 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx36, i32 0, i64 1
  %25 = load double, double* %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 2
  %y39 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx38, i32 0, i32 1
  store double %25, double* %y39, align 8
  %26 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %26, 2
  %idxprom41 = sext i32 %add40 to i64
  %27 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i32 0, i64 2
  %28 = load double, double* %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i64 2
  %z45 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx44, i32 0, i32 2
  store double %28, double* %z45, align 8
  %29 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %p, i32 0, i32 0
  call void @InsertPoly3(%struct.ObjectStruct* %29, %struct.PointStruct* %arraydecay, %struct.Texture* null, %struct.Material* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %30, 3
  store i32 %add46, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  ret %struct.ObjectStruct* %31
}

; Function Attrs: nounwind uwtable
define %struct.ObjectStruct* @ArrayToPoly4(%struct.ObjectStruct* %o, [3 x double]* %array, i32 %size) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %array.addr = alloca [3 x double]*, align 8
  %size.addr = alloca i32, align 4
  %p = alloca [4 x %struct.PointStruct], align 16
  %i = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store [3 x double]* %array, [3 x double]** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx2, i32 0, i32 0
  store double %4, double* %x, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 1
  %7 = load double, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx6, i32 0, i32 1
  store double %7, double* %y, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 2
  %10 = load double, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx10, i32 0, i32 2
  store double %10, double* %z, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom11 = sext i32 %add to i64
  %12 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 0
  %13 = load double, double* %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %x15 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx14, i32 0, i32 0
  store double %13, double* %x15, align 8
  %14 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %14, 1
  %idxprom17 = sext i32 %add16 to i64
  %15 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 1
  %16 = load double, double* %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %y21 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx20, i32 0, i32 1
  store double %16, double* %y21, align 8
  %17 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %17, 1
  %idxprom23 = sext i32 %add22 to i64
  %18 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  %19 = load double, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %z27 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx26, i32 0, i32 2
  store double %19, double* %z27, align 8
  %20 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %20, 2
  %idxprom29 = sext i32 %add28 to i64
  %21 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx30, i32 0, i64 0
  %22 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %x33 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx32, i32 0, i32 0
  store double %22, double* %x33, align 8
  %23 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %23, 2
  %idxprom35 = sext i32 %add34 to i64
  %24 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx36, i32 0, i64 1
  %25 = load double, double* %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %y39 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx38, i32 0, i32 1
  store double %25, double* %y39, align 8
  %26 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %26, 2
  %idxprom41 = sext i32 %add40 to i64
  %27 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i32 0, i64 2
  %28 = load double, double* %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %z45 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx44, i32 0, i32 2
  store double %28, double* %z45, align 8
  %29 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %29, 3
  %idxprom47 = sext i32 %add46 to i64
  %30 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx48, i32 0, i64 0
  %31 = load double, double* %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %x51 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx50, i32 0, i32 0
  store double %31, double* %x51, align 8
  %32 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %32, 3
  %idxprom53 = sext i32 %add52 to i64
  %33 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx54, i32 0, i64 1
  %34 = load double, double* %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %y57 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx56, i32 0, i32 1
  store double %34, double* %y57, align 8
  %35 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %35, 3
  %idxprom59 = sext i32 %add58 to i64
  %36 = load [3 x double]*, [3 x double]** %array.addr, align 8
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx60, i32 0, i64 2
  %37 = load double, double* %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %z63 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx62, i32 0, i32 2
  store double %37, double* %z63, align 8
  %38 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %arraydecay = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i32 0
  call void @InsertPoly4(%struct.ObjectStruct* %38, %struct.PointStruct* %arraydecay, %struct.Texture* null, %struct.Material* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %39, 4
  store i32 %add64, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  ret %struct.ObjectStruct* %40
}

; Function Attrs: nounwind uwtable
define void @PrintPoints(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.PointListStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store i32 0, i32* %i, align 4
  store %struct.PointListStruct* null, %struct.PointListStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %0, i32 0, i32 1
  %1 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  %cmp = icmp ne %struct.PointListStruct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points1 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 1
  %3 = load %struct.PointListStruct*, %struct.PointListStruct** %Points1, align 8
  store %struct.PointListStruct* %3, %struct.PointListStruct** %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %cmp2 = icmp ne %struct.PointListStruct* %4, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %6, i32 0, i32 0
  %7 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  %x = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %9 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %9, i32 0, i32 0
  %10 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %y = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %10, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %12 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %12, i32 0, i32 0
  %13 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %z = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %13, i32 0, i32 2
  %14 = load double, double* %z, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %5, double %8, double %11, double %14)
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  %17 = load double, double* %tx, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P6 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P6, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  %20 = load double, double* %ty, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %P7 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P7, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  %23 = load double, double* %tz, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), double %17, double %20, double %23)
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %tmp, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %25, i32 0, i32 1
  %26 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %26, %struct.PointListStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PrintPoly3s(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.Poly3Struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %tmp, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %0, i32 0, i32 2
  %1 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Poly3s, align 8
  %cmp = icmp ne %struct.Poly3Struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly3s3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 2
  %3 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Poly3s3, align 8
  store %struct.Poly3Struct* %3, %struct.Poly3Struct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then
  %4 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %cmp4 = icmp ne %struct.Poly3Struct* %4, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 3
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P, i32 0, i64 %idxprom
  %9 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx, align 8
  %x = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P7 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %12, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P7, i32 0, i64 %idxprom6
  %13 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx8, align 8
  %y = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P10 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %16, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P10, i32 0, i64 %idxprom9
  %17 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx11, align 8
  %z = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %17, i32 0, i32 2
  %18 = load double, double* %z, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %6, double %10, double %14, double %18)
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P13 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %20, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P13, i32 0, i64 %idxprom12
  %21 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx14, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %21, i32 0, i32 3
  %22 = load double, double* %tx, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P16 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %24, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P16, i32 0, i64 %idxprom15
  %25 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx17, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %25, i32 0, i32 4
  %26 = load double, double* %ty, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %P19 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %28, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %P19, i32 0, i64 %idxprom18
  %29 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx20, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %29, i32 0, i32 5
  %30 = load double, double* %tz, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), double %22, double %26, double %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.Poly3Struct*, %struct.Poly3Struct** %tmp, align 8
  %Next = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %32, i32 0, i32 3
  %33 = load %struct.Poly3Struct*, %struct.Poly3Struct** %Next, align 8
  store %struct.Poly3Struct* %33, %struct.Poly3Struct** %tmp, align 8
  %34 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %34, 1
  store i32 %inc22, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintPoly4s(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.Poly4Struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %tmp, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %0, i32 0, i32 3
  %1 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Poly4s, align 8
  %cmp = icmp ne %struct.Poly4Struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Poly4s3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 3
  %3 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Poly4s3, align 8
  store %struct.Poly4Struct* %3, %struct.Poly4Struct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then
  %4 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %cmp4 = icmp ne %struct.Poly4Struct* %4, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P, i32 0, i64 %idxprom
  %9 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx, align 8
  %x = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P7 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %12, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P7, i32 0, i64 %idxprom6
  %13 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx8, align 8
  %y = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P10 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %16, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P10, i32 0, i64 %idxprom9
  %17 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx11, align 8
  %z = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %17, i32 0, i32 2
  %18 = load double, double* %z, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i32 %6, double %10, double %14, double %18)
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P13 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %20, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P13, i32 0, i64 %idxprom12
  %21 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx14, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %21, i32 0, i32 3
  %22 = load double, double* %tx, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P16 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %24, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P16, i32 0, i64 %idxprom15
  %25 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx17, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %25, i32 0, i32 4
  %26 = load double, double* %ty, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %P19 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %28, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %P19, i32 0, i64 %idxprom18
  %29 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %arrayidx20, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %29, i32 0, i32 5
  %30 = load double, double* %tz, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), double %22, double %26, double %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.Poly4Struct*, %struct.Poly4Struct** %tmp, align 8
  %Next = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %32, i32 0, i32 3
  %33 = load %struct.Poly4Struct*, %struct.Poly4Struct** %Next, align 8
  store %struct.Poly4Struct* %33, %struct.Poly4Struct** %tmp, align 8
  %34 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %34, 1
  store i32 %inc22, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintObject(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Name = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [57 x i8], [57 x i8]* %Name, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay)
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @PrintPoints(%struct.ObjectStruct* %1)
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @PrintPoly3s(%struct.ObjectStruct* %2)
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @PrintPoly4s(%struct.ObjectStruct* %3)
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 11
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale1 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 11
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale1, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale2 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 11
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale2, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), double %5, double %7, double %9)
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 9
  %x4 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin, i32 0, i32 0
  %11 = load double, double* %x4, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin5 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %12, i32 0, i32 9
  %y6 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin5, i32 0, i32 1
  %13 = load double, double* %y6, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 9
  %z8 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin7, i32 0, i32 2
  %15 = load double, double* %z8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), double %11, double %13, double %15)
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 10
  %x10 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation, i32 0, i32 0
  %17 = load double, double* %x10, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %18, i32 0, i32 10
  %y12 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation11, i32 0, i32 1
  %19 = load double, double* %y12, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation13 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 10
  %z14 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation13, i32 0, i32 2
  %21 = load double, double* %z14, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), double %17, double %19, double %21)
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 6
  %R = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color, i32 0, i32 0
  %23 = load double, double* %R, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color16 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 6
  %G = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color16, i32 0, i32 1
  %25 = load double, double* %G, align 8
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color17 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %26, i32 0, i32 6
  %B = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color17, i32 0, i32 2
  %27 = load double, double* %B, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), double %23, double %25, double %27)
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %styletag = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 8
  %29 = load i32, i32* %styletag, align 4
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %styletag20 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %30, i32 0, i32 8
  %31 = load i32, i32* %styletag20, align 4
  %cmp21 = icmp eq i32 %31, 1
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end
  %32 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %styletag25 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %32, i32 0, i32 8
  %33 = load i32, i32* %styletag25, align 4
  %cmp26 = icmp eq i32 %33, 2
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define void @InsertChild(%struct.ObjectStruct* %par, %struct.ObjectStruct* %chld) #0 {
entry:
  %par.addr = alloca %struct.ObjectStruct*, align 8
  %chld.addr = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %par, %struct.ObjectStruct** %par.addr, align 8
  store %struct.ObjectStruct* %chld, %struct.ObjectStruct** %chld.addr, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 12
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children, align 8
  %cmp1 = icmp eq %struct.ObjectStruct* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %chld.addr, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %Children3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 12
  store %struct.ObjectStruct* %3, %struct.ObjectStruct** %Children3, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %chld.addr, align 8
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %Children4 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 12
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children4, align 8
  %next = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 21
  store %struct.ObjectStruct* %5, %struct.ObjectStruct** %next, align 8
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %Children5 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 12
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children5, align 8
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %chld.addr, align 8
  %prev = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 22
  store %struct.ObjectStruct* %9, %struct.ObjectStruct** %prev, align 8
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %chld.addr, align 8
  %next6 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %11, i32 0, i32 21
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %next6, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %chld.addr, align 8
  %13 = load %struct.ObjectStruct*, %struct.ObjectStruct** %par.addr, align 8
  %Children7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %13, i32 0, i32 12
  store %struct.ObjectStruct* %12, %struct.ObjectStruct** %Children7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalcObjectChildren(%struct.ObjectStruct* %o, double %sx, double %sy, double %sz, double %ax, double %ay, double %az, double %dx, double %dy, double %dz) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %sz.addr = alloca double, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %az.addr = alloca double, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %dz.addr = alloca double, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %sz, double* %sz.addr, align 8
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store double %az, double* %az.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store double %dz, double* %dz.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 12
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children, align 8
  store %struct.ObjectStruct* %2, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %cmp1 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %5 = load double, double* %sx.addr, align 8
  %6 = load double, double* %sy.addr, align 8
  %7 = load double, double* %sz.addr, align 8
  call void @ScaleObjectAdd(%struct.ObjectStruct* %4, double %5, double %6, double %7)
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %9 = load double, double* %ax.addr, align 8
  %10 = load double, double* %ay.addr, align 8
  %11 = load double, double* %az.addr, align 8
  call void @RotateObjectAdd(%struct.ObjectStruct* %8, double %9, double %10, double %11)
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %13 = load double, double* %dx.addr, align 8
  %14 = load double, double* %dy.addr, align 8
  %15 = load double, double* %dz.addr, align 8
  call void @TranslateObjectAdd(%struct.ObjectStruct* %12, double %13, double %14, double %15)
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %17 = load double, double* %sx.addr, align 8
  %18 = load double, double* %sy.addr, align 8
  %19 = load double, double* %sz.addr, align 8
  %20 = load double, double* %ax.addr, align 8
  %21 = load double, double* %ay.addr, align 8
  %22 = load double, double* %az.addr, align 8
  %23 = load double, double* %dx.addr, align 8
  %24 = load double, double* %dy.addr, align 8
  %25 = load double, double* %dz.addr, align 8
  call void @CalcObjectChildren(%struct.ObjectStruct* %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23, double %24, double %25)
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %next = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %26, i32 0, i32 21
  %27 = load %struct.ObjectStruct*, %struct.ObjectStruct** %next, align 8
  store %struct.ObjectStruct* %27, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ScaleObjectAdd(%struct.ObjectStruct* %o, double %sx, double %sy, double %sz) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %sz.addr = alloca double, align 8
  %Scale = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %sz, double* %sz.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Scale, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load double, double* %sx.addr, align 8
  %1 = load double, double* %sy.addr, align 8
  %2 = load double, double* %sz.addr, align 8
  %call = call [4 x [4 x double]]* @ScaleMatrix(double %0, double %1, double %2)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Scale, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Scale, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @RotateObjectAdd(%struct.ObjectStruct* %o, double %ax, double %ay, double %az) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %az.addr = alloca double, align 8
  %Rot = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store double %az, double* %az.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Rot, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %ax.addr, align 8
  %2 = load double, double* %ay.addr, align 8
  %3 = load double, double* %az.addr, align 8
  %call = call [4 x [4 x double]]* @RotateMatrix(double %1, double %2, double %3)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Rot, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Rot, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @TranslateObjectAdd(%struct.ObjectStruct* %o, double %dx, double %dy, double %dz) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %dz.addr = alloca double, align 8
  %Rot = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store double %dz, double* %dz.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Rot, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %dx.addr, align 8
  %2 = load double, double* %dy.addr, align 8
  %3 = load double, double* %dz.addr, align 8
  %call = call [4 x [4 x double]]* @TranslateMatrix(double %1, double %2, double %3)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Rot, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Rot, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalcObject(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 12
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children, align 8
  store %struct.ObjectStruct* %2, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %cmp1 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @CalcObject(%struct.ObjectStruct* %4)
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %next = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %5, i32 0, i32 21
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %next, align 8
  store %struct.ObjectStruct* %6, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 11
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale2 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 11
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale2, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %12, i32 0, i32 11
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale3, i32 0, i32 2
  %13 = load double, double* %z, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 10
  %x4 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation, i32 0, i32 0
  %15 = load double, double* %x4, align 8
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation5 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 10
  %y6 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation5, i32 0, i32 1
  %17 = load double, double* %y6, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %18, i32 0, i32 10
  %z8 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation7, i32 0, i32 2
  %19 = load double, double* %z8, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 9
  %x9 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin, i32 0, i32 0
  %21 = load double, double* %x9, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin10 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 9
  %y11 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin10, i32 0, i32 1
  %23 = load double, double* %y11, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin12 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 9
  %z13 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin12, i32 0, i32 2
  %25 = load double, double* %z13, align 8
  call void @CalcObjectChildren(%struct.ObjectStruct* %7, double %9, double %11, double %13, double %15, double %17, double %19, double %21, double %23, double %25)
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %27 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale14 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %27, i32 0, i32 11
  %x15 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale14, i32 0, i32 0
  %28 = load double, double* %x15, align 8
  %29 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale16 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %29, i32 0, i32 11
  %y17 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale16, i32 0, i32 1
  %30 = load double, double* %y17, align 8
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Scale18 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %31, i32 0, i32 11
  %z19 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Scale18, i32 0, i32 2
  %32 = load double, double* %z19, align 8
  call void @ScaleObjectOverwrite(%struct.ObjectStruct* %26, double %28, double %30, double %32)
  %33 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %34 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation20 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %34, i32 0, i32 10
  %x21 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation20, i32 0, i32 0
  %35 = load double, double* %x21, align 8
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %36, i32 0, i32 10
  %y23 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation22, i32 0, i32 1
  %37 = load double, double* %y23, align 8
  %38 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Rotation24 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %38, i32 0, i32 10
  %z25 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation24, i32 0, i32 2
  %39 = load double, double* %z25, align 8
  call void @RotateObjectAdd(%struct.ObjectStruct* %33, double %35, double %37, double %39)
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %41 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin26 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %41, i32 0, i32 9
  %x27 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin26, i32 0, i32 0
  %42 = load double, double* %x27, align 8
  %43 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin28 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %43, i32 0, i32 9
  %y29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin28, i32 0, i32 1
  %44 = load double, double* %y29, align 8
  %45 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Origin30 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %45, i32 0, i32 9
  %z31 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin30, i32 0, i32 2
  %46 = load double, double* %z31, align 8
  call void @TranslateObjectAdd(%struct.ObjectStruct* %40, double %42, double %44, double %46)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ScaleObjectOverwrite(%struct.ObjectStruct* %o, double %sx, double %sy, double %sz) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %sz.addr = alloca double, align 8
  %Scale = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %sz, double* %sz.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Scale, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load double, double* %sx.addr, align 8
  %1 = load double, double* %sy.addr, align 8
  %2 = load double, double* %sz.addr, align 8
  %call = call [4 x [4 x double]]* @ScaleMatrix(double %0, double %1, double %2)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Scale, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Scale, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

declare [4 x [4 x double]]* @TranslateMatrix(double, double, double) #2

declare void @TPointToHPoint(%struct.HPointStruct* sret, %struct.ObjPointStruct* byval align 8) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @MultMatrixHPoint(%struct.HPointStruct* sret, [4 x [4 x double]]*, %struct.HPointStruct* byval align 8) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @TranslateObjectOverwrite(%struct.ObjectStruct* %o, double %dx, double %dy, double %dz) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %dz.addr = alloca double, align 8
  %Rot = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store double %dz, double* %dz.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Rot, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %dx.addr, align 8
  %2 = load double, double* %dy.addr, align 8
  %3 = load double, double* %dz.addr, align 8
  %call = call [4 x [4 x double]]* @TranslateMatrix(double %1, double %2, double %3)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Rot, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Rot, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

declare void @PointToHPoint(%struct.HPointStruct* sret, %struct.ObjPointStruct* byval align 8) #2

declare [4 x [4 x double]]* @RotateMatrix(double, double, double) #2

; Function Attrs: nounwind uwtable
define void @RotateObjectOverwrite(%struct.ObjectStruct* %o, double %ax, double %ay, double %az) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %az.addr = alloca double, align 8
  %Rot = alloca [4 x [4 x double]]*, align 8
  %hp = alloca %struct.HPointStruct, align 8
  %index = alloca %struct.PointListStruct*, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp2 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store double %az, double* %az.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Rot, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %index, align 8
  %0 = load double, double* %ax.addr, align 8
  %1 = load double, double* %ay.addr, align 8
  %2 = load double, double* %az.addr, align 8
  %call = call [4 x [4 x double]]* @RotateMatrix(double %0, double %1, double %2)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Rot, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Points = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 1
  %5 = load %struct.PointListStruct*, %struct.PointListStruct** %Points, align 8
  store %struct.PointListStruct* %5, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %cmp1 = icmp ne %struct.PointListStruct* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %7, i32 0, i32 0
  %8 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %8)
  %9 = bitcast %struct.HPointStruct* %hp to i8*
  %10 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Rot, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp2, [4 x [4 x double]]* %11, %struct.HPointStruct* byval align 8 %hp)
  %12 = bitcast %struct.HPointStruct* %hp to i8*
  %13 = bitcast %struct.HPointStruct* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P3 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %15, i32 0, i32 0
  %16 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P3, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %16, i32 0, i32 3
  store double %14, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P4 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %18, i32 0, i32 0
  %19 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P4, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %19, i32 0, i32 4
  store double %17, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %hp, i32 0, i32 2
  %20 = load double, double* %z, align 8
  %21 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %P5 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %21, i32 0, i32 0
  %22 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %P5, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %22, i32 0, i32 5
  store double %20, double* %tz, align 8
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %index, align 8
  %NextPoint = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %23, i32 0, i32 1
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %NextPoint, align 8
  store %struct.PointListStruct* %24, %struct.PointListStruct** %index, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

declare [4 x [4 x double]]* @ScaleMatrix(double, double, double) #2

; Function Attrs: nounwind uwtable
define void @SetObjectColor(%struct.ObjectStruct* %o, float %R, float %G, float %B) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %R.addr = alloca float, align 4
  %G.addr = alloca float, align 4
  %B.addr = alloca float, align 4
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store float %R, float* %R.addr, align 4
  store float %G, float* %G.addr, align 4
  store float %B, float* %B.addr, align 4
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %R.addr, align 4
  %conv = fpext float %1 to double
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 6
  %R1 = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color, i32 0, i32 0
  store double %conv, double* %R1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load float, float* %G.addr, align 4
  %conv2 = fpext float %3 to double
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color3 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %4, i32 0, i32 6
  %G4 = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color3, i32 0, i32 1
  store double %conv2, double* %G4, align 8
  %5 = load float, float* %B.addr, align 4
  %conv5 = fpext float %5 to double
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Color6 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 6
  %B7 = getelementptr inbounds %struct.RGBStruct, %struct.RGBStruct* %Color6, i32 0, i32 2
  store double %conv5, double* %B7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Draw_Children(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @PrintObject(%struct.ObjectStruct* %1)
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 12
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children, align 8
  store %struct.ObjectStruct* %3, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %cmp1 = icmp ne %struct.ObjectStruct* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @Draw_Children(%struct.ObjectStruct* %5)
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %next = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 21
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %next, align 8
  store %struct.ObjectStruct* %7, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Draw_Object(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @PrintObject(%struct.ObjectStruct* %1)
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %Children = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 12
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %Children, align 8
  call void @Draw_Children(%struct.ObjectStruct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Draw_All_Nexts(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %next = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 21
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %next, align 8
  store %struct.ObjectStruct* %2, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %cmp1 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @CalcObject(%struct.ObjectStruct* %4)
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @Draw_Object(%struct.ObjectStruct* %5)
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %next2 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 21
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %next2, align 8
  store %struct.ObjectStruct* %7, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Draw_All_Prevs(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %prev = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 22
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %prev, align 8
  store %struct.ObjectStruct* %2, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %cmp1 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @CalcObject(%struct.ObjectStruct* %4)
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @Draw_Object(%struct.ObjectStruct* %5)
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %prev2 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 22
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %prev2, align 8
  store %struct.ObjectStruct* %7, %struct.ObjectStruct** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Draw_All(%struct.ObjectStruct* %o) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %cmp = icmp ne %struct.ObjectStruct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @CalcObject(%struct.ObjectStruct* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @Draw_All_Prevs(%struct.ObjectStruct* %2)
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @Draw_Object(%struct.ObjectStruct* %3)
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  call void @Draw_All_Nexts(%struct.ObjectStruct* %4)
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
