; ModuleID = './app/composite/gimp-composite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpCompositeOperationEffects = type { i8, i8, i8 }
%struct.GimpCompositeOptions = type { i64 }
%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }

@gimp_composite_pixel_bpp = constant [5 x i8] c"\01\02\03\04\00", align 1
@gimp_composite_pixel_alphap = constant [5 x i8] c"\00\01\00\01\00", align 1
@gimp_composite_pixel_alpha = constant [5 x i32] [i32 1, i32 0, i32 3, i32 2, i32 4], align 16
@gimp_composite_operation_effects = global [29 x %struct.GimpCompositeOperationEffects] [%struct.GimpCompositeOperationEffects { i8 1, i8 1, i8 0 }, %struct.GimpCompositeOperationEffects { i8 1, i8 1, i8 0 }, %struct.GimpCompositeOperationEffects { i8 1, i8 1, i8 0 }, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects { i8 1, i8 0, i8 1 }, %struct.GimpCompositeOperationEffects { i8 1, i8 0, i8 1 }, %struct.GimpCompositeOperationEffects { i8 1, i8 1, i8 1 }, %struct.GimpCompositeOperationEffects { i8 1, i8 1, i8 0 }, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer, %struct.GimpCompositeOperationEffects zeroinitializer], align 16
@gimp_composite_options = global %struct.GimpCompositeOptions zeroinitializer, align 8
@gimp_composite_function = global [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"%s %s %s %s = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"gimp_composite: unsupported operation: %s %s %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"%p: op=%s\0A  A=%s(%d):%p\0A  B=%s(%d):%p\0A  D=%s(%d):%p\0A  M=%s(%d):%p\0A  n_pixels=%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GIMP_COMPOSITE_NORMAL\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"GIMP_COMPOSITE_DISSOLVE\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP_COMPOSITE_BEHIND\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"GIMP_COMPOSITE_MULTIPLY\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GIMP_COMPOSITE_SCREEN\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"GIMP_COMPOSITE_OVERLAY\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_COMPOSITE_DIFFERENCE\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"GIMP_COMPOSITE_ADDITION\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"GIMP_COMPOSITE_SUBTRACT\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"GIMP_COMPOSITE_DARKEN\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"GIMP_COMPOSITE_LIGHTEN\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"GIMP_COMPOSITE_HUE\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"GIMP_COMPOSITE_SATURATION\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"GIMP_COMPOSITE_COLOR_ONLY\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_VALUE\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"GIMP_COMPOSITE_DIVIDE\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_DODGE\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"GIMP_COMPOSITE_BURN\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"GIMP_COMPOSITE_HARDLIGHT\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"GIMP_COMPOSITE_SOFTLIGHT\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"GIMP_COMPOSITE_GRAIN_EXTRACT\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"GIMP_COMPOSITE_GRAIN_MERGE\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"GIMP_COMPOSITE_COLOR_ERASE\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_ERASE\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"GIMP_COMPOSITE_REPLACE\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"GIMP_COMPOSITE_ANTI_ERASE\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_BLEND\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_SHADE\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"GIMP_COMPOSITE_SWAP\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"GIMP_COMPOSITE_SCALE\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"GIMP_COMPOSITE_CONVERT\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"GIMP_COMPOSITE_XOR\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"bad mode\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"V8\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"VA8\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"RGB8\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"RGBA8\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"GIMP_COMPOSITE\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"gimp_composite: verbose=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"Processor instruction sets: %cmmx %csse %csse2 %c3dnow %caltivec %cvis\0A\00", align 1
@gimp_composite_function_name = global [32 x [5 x [5 x [5 x i8*]]]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @gimp_composite_dispatch(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %function = alloca void (%struct.GimpCompositeContext*)*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 7
  %1 = load i32, i32* %pixelformat_D, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 6
  %3 = load i32, i32* %pixelformat_B, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 5
  %5 = load i32, i32* %pixelformat_A, align 4
  %idxprom2 = zext i32 %5 to i64
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %op = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 14
  %7 = load i32, i32* %op, align 4
  %idxprom3 = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]], [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]]* @gimp_composite_function, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]], [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]* %arrayidx, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [5 x [5 x void (%struct.GimpCompositeContext*)*]], [5 x [5 x void (%struct.GimpCompositeContext*)*]]* %arrayidx4, i32 0, i64 %idxprom1
  %arrayidx6 = getelementptr inbounds [5 x void (%struct.GimpCompositeContext*)*], [5 x void (%struct.GimpCompositeContext*)*]* %arrayidx5, i32 0, i64 %idxprom
  %8 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %arrayidx6, align 8
  store void (%struct.GimpCompositeContext*)* %8, void (%struct.GimpCompositeContext*)** %function, align 8
  %9 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %function, align 8
  %tobool = icmp ne void (%struct.GimpCompositeContext*)* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i64, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  %and = and i64 %10, 4
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %op9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 14
  %12 = load i32, i32* %op9, align 4
  %call = call i8* @gimp_composite_mode_astext(i32 %12)
  %13 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A10 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %13, i32 0, i32 5
  %14 = load i32, i32* %pixelformat_A10, align 4
  %call11 = call i8* @gimp_composite_pixelformat_astext(i32 %14)
  %15 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B12 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %15, i32 0, i32 6
  %16 = load i32, i32* %pixelformat_B12, align 4
  %call13 = call i8* @gimp_composite_pixelformat_astext(i32 %16)
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D14 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 7
  %18 = load i32, i32* %pixelformat_D14, align 4
  %call15 = call i8* @gimp_composite_pixelformat_astext(i32 %18)
  %19 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %function, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %call, i8* %call11, i8* %call13, i8* %call15, void (%struct.GimpCompositeContext*)* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %20 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %function, align 8
  %21 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  call void %20(%struct.GimpCompositeContext* %21)
  br label %if.end.24

if.else:                                          ; preds = %entry
  %22 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %op16 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %22, i32 0, i32 14
  %23 = load i32, i32* %op16, align 4
  %call17 = call i8* @gimp_composite_mode_astext(i32 %23)
  %24 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A18 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %24, i32 0, i32 5
  %25 = load i32, i32* %pixelformat_A18, align 4
  %call19 = call i8* @gimp_composite_pixelformat_astext(i32 %25)
  %26 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B20 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %26, i32 0, i32 6
  %27 = load i32, i32* %pixelformat_B20, align 4
  %call21 = call i8* @gimp_composite_pixelformat_astext(i32 %27)
  %28 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D22 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %28, i32 0, i32 7
  %29 = load i32, i32* %pixelformat_D22, align 4
  %call23 = call i8* @gimp_composite_pixelformat_astext(i32 %29)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i8* %call17, i8* %call19, i8* %call21, i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.end
  ret void
}

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_composite_mode_astext(i32 %op) #0 {
entry:
  %retval = alloca i8*, align 8
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 22, label %sw.bb.22
    i32 23, label %sw.bb.23
    i32 24, label %sw.bb.24
    i32 25, label %sw.bb.25
    i32 26, label %sw.bb.26
    i32 27, label %sw.bb.27
    i32 28, label %sw.bb.28
    i32 29, label %sw.bb.29
    i32 30, label %sw.bb.30
    i32 31, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.28:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.29:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @gimp_composite_pixelformat_astext(i32 %format) #0 {
entry:
  %retval = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  store i32 %format, i32* %format.addr, align 4
  %0 = load i32, i32* %format.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_context_print(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %1 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %op = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %1, i32 0, i32 14
  %2 = load i32, i32* %op, align 4
  %call = call i8* @gimp_composite_mode_astext(i32 %2)
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 5
  %4 = load i32, i32* %pixelformat_A, align 4
  %call1 = call i8* @gimp_composite_pixelformat_astext(i32 %4)
  %5 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %5, i32 0, i32 5
  %6 = load i32, i32* %pixelformat_A2, align 4
  %7 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %7, i32 0, i32 0
  %8 = load i8*, i8** %A, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 6
  %10 = load i32, i32* %pixelformat_B, align 4
  %call3 = call i8* @gimp_composite_pixelformat_astext(i32 %10)
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B4, align 4
  %13 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %13, i32 0, i32 1
  %14 = load i8*, i8** %B, align 8
  %15 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %15, i32 0, i32 7
  %16 = load i32, i32* %pixelformat_D, align 4
  %call5 = call i8* @gimp_composite_pixelformat_astext(i32 %16)
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D6 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 7
  %18 = load i32, i32* %pixelformat_D6, align 4
  %19 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %19, i32 0, i32 2
  %20 = load i8*, i8** %D, align 8
  %21 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_M = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %21, i32 0, i32 8
  %22 = load i32, i32* %pixelformat_M, align 4
  %call7 = call i8* @gimp_composite_pixelformat_astext(i32 %22)
  %23 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_M8 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %23, i32 0, i32 8
  %24 = load i32, i32* %pixelformat_M8, align 4
  %25 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %M = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %25, i32 0, i32 3
  %26 = load i8*, i8** %M, align 8
  %27 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %27, i32 0, i32 4
  %28 = load i64, i64* %n_pixels, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i32 0, i32 0), %struct.GimpCompositeContext* %0, i8* %call, i8* %call1, i32 %6, i8* %8, i8* %call3, i32 %12, i8* %14, i8* %call5, i32 %18, i8* %20, i8* %call7, i32 %24, i8* %26, i64 %28)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_init(i32 %be_verbose, i32 %use_cpu_accel) #0 {
entry:
  %be_verbose.addr = alloca i32, align 4
  %use_cpu_accel.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %can_use_mmx = alloca i32, align 4
  %can_use_sse = alloca i32, align 4
  %can_use_sse2 = alloca i32, align 4
  %can_use_3dnow = alloca i32, align 4
  %can_use_altivec = alloca i32, align 4
  %can_use_vis = alloca i32, align 4
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  store i32 %use_cpu_accel, i32* %use_cpu_accel.addr, align 4
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0))
  store i8* %call, i8** %p, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %p, align 8
  %call1 = call i64 @strtoul(i8* %0, i8** null, i32 16) #3
  store i64 %call1, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %use_cpu_accel.addr, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  %or = or i64 %2, 2
  store i64 %or, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* %be_verbose.addr, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %4 = load i64, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  %and = and i64 %4, 4
  %tobool7 = icmp ne i64 %and, 0
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i8* %cond)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %call9 = call i32 @gimp_composite_generic_install()
  %5 = load i64, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  %and10 = and i64 %5, 2
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.end.34, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32 @gimp_composite_mmx_install()
  store i32 %call13, i32* %can_use_mmx, align 4
  %call14 = call i32 @gimp_composite_sse_install()
  store i32 %call14, i32* %can_use_sse, align 4
  %call15 = call i32 @gimp_composite_sse2_install()
  store i32 %call15, i32* %can_use_sse2, align 4
  %call16 = call i32 @gimp_composite_3dnow_install()
  store i32 %call16, i32* %can_use_3dnow, align 4
  %call17 = call i32 @gimp_composite_altivec_install()
  store i32 %call17, i32* %can_use_altivec, align 4
  %call18 = call i32 @gimp_composite_vis_install()
  store i32 %call18, i32* %can_use_vis, align 4
  %6 = load i32, i32* %be_verbose.addr, align 4
  %tobool19 = icmp ne i32 %6, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.then.12
  %7 = load i32, i32* %can_use_mmx, align 4
  %tobool21 = icmp ne i32 %7, 0
  %cond22 = select i1 %tobool21, i32 43, i32 45
  %8 = load i32, i32* %can_use_sse, align 4
  %tobool23 = icmp ne i32 %8, 0
  %cond24 = select i1 %tobool23, i32 43, i32 45
  %9 = load i32, i32* %can_use_sse2, align 4
  %tobool25 = icmp ne i32 %9, 0
  %cond26 = select i1 %tobool25, i32 43, i32 45
  %10 = load i32, i32* %can_use_3dnow, align 4
  %tobool27 = icmp ne i32 %10, 0
  %cond28 = select i1 %tobool27, i32 43, i32 45
  %11 = load i32, i32* %can_use_altivec, align 4
  %tobool29 = icmp ne i32 %11, 0
  %cond30 = select i1 %tobool29, i32 43, i32 45
  %12 = load i32, i32* %can_use_vis, align 4
  %tobool31 = icmp ne i32 %12, 0
  %cond32 = select i1 %tobool31, i32 43, i32 45
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i32 0, i32 0), i32 %cond22, i32 %cond24, i32 %cond26, i32 %cond28, i32 %cond30, i32 %cond32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.20, %if.then.12
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.8
  ret void
}

declare i8* @g_getenv(i8*) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

declare void @g_printerr(i8*, ...) #1

declare i32 @gimp_composite_generic_install() #1

declare i32 @gimp_composite_mmx_install() #1

declare i32 @gimp_composite_sse_install() #1

declare i32 @gimp_composite_sse2_install() #1

declare i32 @gimp_composite_3dnow_install() #1

declare i32 @gimp_composite_altivec_install() #1

declare i32 @gimp_composite_vis_install() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_composite_use_cpu_accel() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.GimpCompositeOptions, %struct.GimpCompositeOptions* @gimp_composite_options, i32 0, i32 0), align 8
  %and = and i64 %0, 2
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
