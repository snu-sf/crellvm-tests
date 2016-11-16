; ModuleID = './plug-ins/gimpressionist/repaint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GRand = type opaque
%struct.ppm = type { i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@repaint.running = internal global i32 0, align 4
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@runningvals = internal global %struct.gimpressionist_vals_t zeroinitializer, align 8
@img_has_alpha = external global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"Huh? Image size != alpha size?\0A\00", align 1
@repaint.tmpcol = private unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@random_generator = external global %struct._GRand*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%.1f %%\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Internal error; Unknown orientationtype\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Internal error; Unknown size_type\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_Update\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"What!? No brushes?!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @repaint(%struct.ppm* %p, %struct.ppm* %a) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %a.addr = alloca %struct.ppm*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %atmp = alloca %struct.ppm, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %on = alloca i32, align 4
  %sn = alloca i32, align 4
  %num_brushes = alloca i32, align 4
  %maxbrushwidth = alloca i32, align 4
  %maxbrushheight = alloca i32, align 4
  %back = alloca [3 x i8], align 1
  %brushes = alloca %struct.ppm*, align 8
  %shadows = alloca %struct.ppm*, align 8
  %brush = alloca %struct.ppm*, align 8
  %shadow = alloca %struct.ppm*, align 8
  %brushes_sum = alloca double*, align 8
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %maxdist = alloca i32, align 4
  %scale = alloca double, align 8
  %relief = alloca double, align 8
  %startangle = alloca double, align 8
  %anglespan = alloca double, align 8
  %density = alloca double, align 8
  %bgamma = alloca double, align 8
  %max_progress = alloca i32, align 4
  %paper_ppm = alloca %struct.ppm, align 8
  %dirmap = alloca %struct.ppm, align 8
  %sizmap = alloca %struct.ppm, align 8
  %xpos = alloca i32*, align 8
  %ypos = alloca i32*, align 8
  %progstep = alloca i32, align 4
  %dropshadow = alloca i32, align 4
  %shadowblur = alloca i32, align 4
  %sv = alloca double, align 8
  %xp = alloca i32, align 4
  %yp = alloca i32, align 4
  %blk = alloca [3 x i8], align 1
  %tmpcol = alloca [3 x i8], align 1
  %tmpcol308 = alloca [3 x i8], align 1
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %lx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rx = alloca i32, align 4
  %dstrow = alloca i8*, align 8
  %srcrow = alloca i8*, align 8
  %dstrow484 = alloca i8*, align 8
  %ysqr = alloca double, align 8
  %dstrow529 = alloca i8*, align 8
  %dstrow580 = alloca i8*, align 8
  %srcrow588 = alloca i8*, align 8
  %tmpcol616 = alloca [3 x i8], align 1
  %dstrow633 = alloca i8*, align 8
  %tmpy = alloca double, align 8
  %dstrow678 = alloca i8*, align 8
  %srcrow686 = alloca i8*, align 8
  %dstrow737 = alloca i8*, align 8
  %ysqr745 = alloca double, align 8
  %dstrow786 = alloca i8*, align 8
  %dstrow843 = alloca i8*, align 8
  %srcrow851 = alloca i8*, align 8
  %tmpcol882 = alloca [3 x i8], align 1
  %dstrow902 = alloca i8*, align 8
  %tmpy910 = alloca double, align 8
  %j987 = alloca i32, align 4
  %factor = alloca i32, align 4
  %a1036 = alloca i32, align 4
  %b1038 = alloca i32, align 4
  %n = alloca i32, align 4
  %thissum = alloca double, align 8
  %tmps = alloca [40 x i8], align 16
  %z = alloca double, align 8
  %st = alloca i32, align 4
  %row = alloca i8*, align 8
  %k = alloca i32, align 4
  %v = alloca double, align 8
  %pixel = alloca i8*, align 8
  %v1384 = alloca double, align 8
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %dox = alloca i32, align 4
  %doy = alloca i32, align 4
  %h1566 = alloca double, align 8
  %v1568 = alloca double, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %k1579 = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store %struct.ppm* %a, %struct.ppm** %a.addr, align 8
  store i32 0, i32* %tx, align 4
  store i32 0, i32* %ty, align 4
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = bitcast %struct.ppm* %atmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %2 = bitcast [3 x i8]* %back to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 3, i32 1, i1 false)
  store %struct.ppm* null, %struct.ppm** %shadow, align 8
  %3 = bitcast %struct.ppm* %paper_ppm to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = bitcast %struct.ppm* %dirmap to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false)
  %5 = bitcast %struct.ppm* %sizmap to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  store i32* null, i32** %xpos, align 8
  store i32* null, i32** %ypos, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  store i32 %6, i32* %dropshadow, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  store i32 %7, i32* %shadowblur, align 4
  %8 = load i32, i32* @repaint.running, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* @repaint.running, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @repaint.running, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.gimpressionist_vals_t* @runningvals to i8*), i8* bitcast (%struct.gimpressionist_vals_t* @pcvals to i8*), i64 5088, i32 8, i1 false)
  %10 = load i32, i32* @img_has_alpha, align 4
  %tobool37 = icmp ne i32 %10, 0
  br i1 %tobool37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.end
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 0
  %12 = load i32, i32* %width, align 4
  %13 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %width39 = getelementptr inbounds %struct.ppm, %struct.ppm* %13, i32 0, i32 0
  %14 = load i32, i32* %width39, align 4
  %cmp = icmp ne i32 %12, %14
  br i1 %cmp, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.38
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %15, i32 0, i32 1
  %16 = load i32, i32* %height, align 4
  %17 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %height40 = getelementptr inbounds %struct.ppm, %struct.ppm* %17, i32 0, i32 1
  %18 = load i32, i32* %height40, align 4
  %cmp41 = icmp ne i32 %16, %18
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %if.then.38
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end
  %19 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %mul = mul nsw i32 %19, %20
  store i32 %mul, i32* %num_brushes, align 4
  %21 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 1), align 8
  store double %21, double* %startangle, align 8
  %22 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 2), align 8
  store double %22, double* %anglespan, align 8
  %23 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 6), align 8
  store double %23, double* %density, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp45 = icmp eq i32 %24, 1
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %25 = load double, double* %density, align 8
  %div = fdiv double %25, 3.000000e+00
  store double %div, double* %density, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %26 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 7), align 8
  store double %26, double* %bgamma, align 8
  %27 = load i32, i32* %num_brushes, align 4
  %conv = sext i32 %27 to i64
  %mul48 = mul i64 %conv, 16
  %call = call noalias i8* @g_malloc(i64 %mul48)
  %28 = bitcast i8* %call to %struct.ppm*
  store %struct.ppm* %28, %struct.ppm** %brushes, align 8
  %29 = load i32, i32* %num_brushes, align 4
  %conv49 = sext i32 %29 to i64
  %mul50 = mul i64 %conv49, 8
  %call51 = call noalias i8* @g_malloc(i64 %mul50)
  %30 = bitcast i8* %call51 to double*
  store double* %30, double** %brushes_sum, align 8
  %31 = load i32, i32* %dropshadow, align 4
  %tobool52 = icmp ne i32 %31, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.47
  %32 = load i32, i32* %num_brushes, align 4
  %conv54 = sext i32 %32 to i64
  %mul55 = mul i64 %conv54, 16
  %call56 = call noalias i8* @g_malloc(i64 %mul55)
  %33 = bitcast i8* %call56 to %struct.ppm*
  store %struct.ppm* %33, %struct.ppm** %shadows, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.end.47
  store %struct.ppm* null, %struct.ppm** %shadows, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.53
  %34 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx = getelementptr inbounds %struct.ppm, %struct.ppm* %34, i64 0
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx, i32 0, i32 2
  store i8* null, i8** %col, align 8
  %35 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx58 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i64 0
  call void @brush_get_selected(%struct.ppm* %arrayidx58)
  %36 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx59 = getelementptr inbounds %struct.ppm, %struct.ppm* %36, i64 0
  %37 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx60 = getelementptr inbounds %struct.ppm, %struct.ppm* %37, i64 0
  %width61 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx60, i32 0, i32 0
  %38 = load i32, i32* %width61, align 4
  %39 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx62 = getelementptr inbounds %struct.ppm, %struct.ppm* %39, i64 0
  %height63 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx62, i32 0, i32 1
  %40 = load i32, i32* %height63, align 4
  %conv64 = sitofp i32 %40 to double
  %41 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 22), align 8
  %call65 = call double @pow(double 1.000000e+01, double %41) #1
  %mul66 = fmul double %conv64, %call65
  %conv67 = fptosi double %mul66 to i32
  call void @resize(%struct.ppm* %arrayidx59, i32 %38, i32 %conv67)
  %42 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 33), align 8
  %43 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx68 = getelementptr inbounds %struct.ppm, %struct.ppm* %43, i64 0
  %width69 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx68, i32 0, i32 0
  %44 = load i32, i32* %width69, align 4
  %45 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx70 = getelementptr inbounds %struct.ppm, %struct.ppm* %45, i64 0
  %height71 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx70, i32 0, i32 1
  %46 = load i32, i32* %height71, align 4
  %cmp72 = icmp sgt i32 %44, %46
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  %47 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx74 = getelementptr inbounds %struct.ppm, %struct.ppm* %47, i64 0
  %width75 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx74, i32 0, i32 0
  %48 = load i32, i32* %width75, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %49 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx76 = getelementptr inbounds %struct.ppm, %struct.ppm* %49, i64 0
  %height77 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx76, i32 0, i32 1
  %50 = load i32, i32* %height77, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %50, %cond.false ]
  %conv78 = sitofp i32 %cond to double
  %div79 = fdiv double %42, %conv78
  store double %div79, double* %scale, align 8
  %51 = load double, double* %bgamma, align 8
  %cmp80 = fcmp une double %51, 1.000000e+00
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %cond.end
  %52 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx83 = getelementptr inbounds %struct.ppm, %struct.ppm* %52, i64 0
  %53 = load double, double* %bgamma, align 8
  %div84 = fdiv double 1.000000e+00, %53
  %conv85 = fptrunc double %div84 to float
  call void @ppm_apply_gamma(%struct.ppm* %arrayidx83, float %conv85, i32 1, i32 1, i32 1)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %cond.end
  %54 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx87 = getelementptr inbounds %struct.ppm, %struct.ppm* %54, i64 0
  %55 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx88 = getelementptr inbounds %struct.ppm, %struct.ppm* %55, i64 0
  %width89 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx88, i32 0, i32 0
  %56 = load i32, i32* %width89, align 4
  %conv90 = sitofp i32 %56 to double
  %57 = load double, double* %scale, align 8
  %mul91 = fmul double %conv90, %57
  %conv92 = fptosi double %mul91 to i32
  %58 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx93 = getelementptr inbounds %struct.ppm, %struct.ppm* %58, i64 0
  %height94 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx93, i32 0, i32 1
  %59 = load i32, i32* %height94, align 4
  %conv95 = sitofp i32 %59 to double
  %60 = load double, double* %scale, align 8
  %mul96 = fmul double %conv95, %60
  %conv97 = fptosi double %mul96 to i32
  call void @resize(%struct.ppm* %arrayidx87, i32 %conv92, i32 %conv97)
  %61 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx98 = getelementptr inbounds %struct.ppm, %struct.ppm* %61, i64 0
  %width99 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx98, i32 0, i32 0
  %62 = load i32, i32* %width99, align 4
  %63 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx100 = getelementptr inbounds %struct.ppm, %struct.ppm* %63, i64 0
  %width101 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx100, i32 0, i32 0
  %64 = load i32, i32* %width101, align 4
  %mul102 = mul nsw i32 %62, %64
  %65 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx103 = getelementptr inbounds %struct.ppm, %struct.ppm* %65, i64 0
  %height104 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx103, i32 0, i32 1
  %66 = load i32, i32* %height104, align 4
  %67 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx105 = getelementptr inbounds %struct.ppm, %struct.ppm* %67, i64 0
  %height106 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx105, i32 0, i32 1
  %68 = load i32, i32* %height106, align 4
  %mul107 = mul nsw i32 %66, %68
  %add = add nsw i32 %mul102, %mul107
  %conv108 = sitofp i32 %add to double
  %call109 = call double @sqrt(double %conv108) #1
  %add110 = fadd double 1.000000e+00, %call109
  %conv111 = fptosi double %add110 to i32
  store i32 %conv111, i32* %i, align 4
  %69 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx112 = getelementptr inbounds %struct.ppm, %struct.ppm* %69, i64 0
  %70 = load i32, i32* %i, align 4
  %71 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx113 = getelementptr inbounds %struct.ppm, %struct.ppm* %71, i64 0
  %width114 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx113, i32 0, i32 0
  %72 = load i32, i32* %width114, align 4
  %sub = sub nsw i32 %70, %72
  %73 = load i32, i32* %i, align 4
  %74 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx115 = getelementptr inbounds %struct.ppm, %struct.ppm* %74, i64 0
  %width116 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx115, i32 0, i32 0
  %75 = load i32, i32* %width116, align 4
  %sub117 = sub nsw i32 %73, %75
  %76 = load i32, i32* %i, align 4
  %77 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx118 = getelementptr inbounds %struct.ppm, %struct.ppm* %77, i64 0
  %height119 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx118, i32 0, i32 1
  %78 = load i32, i32* %height119, align 4
  %sub120 = sub nsw i32 %76, %78
  %79 = load i32, i32* %i, align 4
  %80 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx121 = getelementptr inbounds %struct.ppm, %struct.ppm* %80, i64 0
  %height122 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx121, i32 0, i32 1
  %81 = load i32, i32* %height122, align 4
  %sub123 = sub nsw i32 %79, %81
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %back, i32 0, i32 0
  call void @ppm_pad(%struct.ppm* %arrayidx112, i32 %sub, i32 %sub117, i32 %sub120, i32 %sub123, i8* %arraydecay)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.86
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %num_brushes, align 4
  %cmp124 = icmp slt i32 %82, %83
  br i1 %cmp124, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx126 = getelementptr inbounds %struct.ppm, %struct.ppm* %85, i64 %idxprom
  %col127 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx126, i32 0, i32 2
  store i8* null, i8** %col127, align 8
  %86 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx128 = getelementptr inbounds %struct.ppm, %struct.ppm* %86, i64 0
  %87 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %87 to i64
  %88 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx130 = getelementptr inbounds %struct.ppm, %struct.ppm* %88, i64 %idxprom129
  call void @ppm_copy(%struct.ppm* %arrayidx128, %struct.ppm* %arrayidx130)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %89, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.171, %for.end
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %cmp133 = icmp slt i32 %90, %91
  br i1 %cmp133, label %for.body.135, label %for.end.173

for.body.135:                                     ; preds = %for.cond.132
  %92 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %cmp137 = icmp sgt i32 %92, 1
  br i1 %cmp137, label %if.then.139, label %if.else.144

if.then.139:                                      ; preds = %for.body.135
  %93 = load i32, i32* %i, align 4
  %conv140 = sitofp i32 %93 to double
  %94 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %conv141 = sitofp i32 %94 to double
  %sub142 = fsub double %conv141, 1.000000e+00
  %div143 = fdiv double %conv140, %sub142
  store double %div143, double* %sv, align 8
  br label %if.end.145

if.else.144:                                      ; preds = %for.body.135
  store double 1.000000e+00, double* %sv, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.144, %if.then.139
  store i32 0, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.168, %if.end.145
  %95 = load i32, i32* %j, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %cmp147 = icmp slt i32 %95, %96
  br i1 %cmp147, label %for.body.149, label %for.end.170

for.body.149:                                     ; preds = %for.cond.146
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %mul150 = mul nsw i32 %98, %99
  %add151 = add nsw i32 %97, %mul150
  store i32 %add151, i32* %h, align 4
  %100 = load i32, i32* %h, align 4
  %idxprom152 = sext i32 %100 to i64
  %101 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx153 = getelementptr inbounds %struct.ppm, %struct.ppm* %101, i64 %idxprom152
  %102 = load double, double* %startangle, align 8
  %103 = load i32, i32* %j, align 4
  %conv154 = sitofp i32 %103 to double
  %104 = load double, double* %anglespan, align 8
  %mul155 = fmul double %conv154, %104
  %105 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %conv156 = sitofp i32 %105 to double
  %div157 = fdiv double %mul155, %conv156
  %add158 = fadd double %102, %div157
  call void @free_rotate(%struct.ppm* %arrayidx153, double %add158)
  %106 = load i32, i32* %h, align 4
  %idxprom159 = sext i32 %106 to i64
  %107 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx160 = getelementptr inbounds %struct.ppm, %struct.ppm* %107, i64 %idxprom159
  %108 = load double, double* %sv, align 8
  %109 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 32), align 8
  %mul161 = fmul double %108, %109
  %110 = load double, double* %sv, align 8
  %sub162 = fsub double 1.000000e+00, %110
  %111 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 33), align 8
  %mul163 = fmul double %sub162, %111
  %add164 = fadd double %mul161, %mul163
  %112 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 33), align 8
  %div165 = fdiv double %add164, %112
  call void @rescale(%struct.ppm* %arrayidx160, double %div165)
  %113 = load i32, i32* %h, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx167 = getelementptr inbounds %struct.ppm, %struct.ppm* %114, i64 %idxprom166
  call void @autocrop(%struct.ppm* %arrayidx167, i32 1)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.149
  %115 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %115, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.146

for.end.170:                                      ; preds = %for.cond.146
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end.170
  %116 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %116, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.132

for.end.173:                                      ; preds = %for.cond.132
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.188, %for.end.173
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %num_brushes, align 4
  %cmp175 = icmp slt i32 %117, %118
  br i1 %cmp175, label %for.body.177, label %for.end.190

for.body.177:                                     ; preds = %for.cond.174
  %119 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 28), align 4
  %tobool178 = icmp ne i32 %119, 0
  br i1 %tobool178, label %if.end.182, label %if.then.179

if.then.179:                                      ; preds = %for.body.177
  %120 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %120 to i64
  %121 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx181 = getelementptr inbounds %struct.ppm, %struct.ppm* %121, i64 %idxprom180
  call void @prepare_brush(%struct.ppm* %arrayidx181)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %for.body.177
  %122 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %122 to i64
  %123 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx184 = getelementptr inbounds %struct.ppm, %struct.ppm* %123, i64 %idxprom183
  %call185 = call double @sum_brush(%struct.ppm* %arrayidx184)
  %124 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %124 to i64
  %125 = load double*, double** %brushes_sum, align 8
  %arrayidx187 = getelementptr inbounds double, double* %125, i64 %idxprom186
  store double %call185, double* %arrayidx187, align 8
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.182
  %126 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %126, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond.174

for.end.190:                                      ; preds = %for.cond.174
  %127 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx191 = getelementptr inbounds %struct.ppm, %struct.ppm* %127, i64 0
  store %struct.ppm* %arrayidx191, %struct.ppm** %brush, align 8
  store i32 0, i32* %maxbrushheight, align 4
  store i32 0, i32* %maxbrushwidth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.216, %for.end.190
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %num_brushes, align 4
  %cmp193 = icmp slt i32 %128, %129
  br i1 %cmp193, label %for.body.195, label %for.end.218

for.body.195:                                     ; preds = %for.cond.192
  %130 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %130 to i64
  %131 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx197 = getelementptr inbounds %struct.ppm, %struct.ppm* %131, i64 %idxprom196
  %width198 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx197, i32 0, i32 0
  %132 = load i32, i32* %width198, align 4
  %133 = load i32, i32* %maxbrushwidth, align 4
  %cmp199 = icmp sgt i32 %132, %133
  br i1 %cmp199, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %for.body.195
  %134 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %134 to i64
  %135 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx203 = getelementptr inbounds %struct.ppm, %struct.ppm* %135, i64 %idxprom202
  %width204 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx203, i32 0, i32 0
  %136 = load i32, i32* %width204, align 4
  store i32 %136, i32* %maxbrushwidth, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.201, %for.body.195
  %137 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %137 to i64
  %138 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx207 = getelementptr inbounds %struct.ppm, %struct.ppm* %138, i64 %idxprom206
  %height208 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx207, i32 0, i32 1
  %139 = load i32, i32* %height208, align 4
  %140 = load i32, i32* %maxbrushheight, align 4
  %cmp209 = icmp sgt i32 %139, %140
  br i1 %cmp209, label %if.then.211, label %if.end.215

if.then.211:                                      ; preds = %if.end.205
  %141 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %141 to i64
  %142 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx213 = getelementptr inbounds %struct.ppm, %struct.ppm* %142, i64 %idxprom212
  %height214 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx213, i32 0, i32 1
  %143 = load i32, i32* %height214, align 4
  store i32 %143, i32* %maxbrushheight, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.211, %if.end.205
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %144 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %144, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.192

for.end.218:                                      ; preds = %for.cond.192
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.248, %for.end.218
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %num_brushes, align 4
  %cmp220 = icmp slt i32 %145, %146
  br i1 %cmp220, label %for.body.222, label %for.end.250

for.body.222:                                     ; preds = %for.cond.219
  %147 = bitcast [3 x i8]* %blk to i8*
  call void @llvm.memset.p0i8.i64(i8* %147, i8 0, i64 3, i32 1, i1 false)
  %148 = load i32, i32* %maxbrushwidth, align 4
  %149 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %149 to i64
  %150 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx227 = getelementptr inbounds %struct.ppm, %struct.ppm* %150, i64 %idxprom226
  %width228 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx227, i32 0, i32 0
  %151 = load i32, i32* %width228, align 4
  %sub229 = sub nsw i32 %148, %151
  store i32 %sub229, i32* %xp, align 4
  %152 = load i32, i32* %maxbrushheight, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %153 to i64
  %154 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx231 = getelementptr inbounds %struct.ppm, %struct.ppm* %154, i64 %idxprom230
  %height232 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx231, i32 0, i32 1
  %155 = load i32, i32* %height232, align 4
  %sub233 = sub nsw i32 %152, %155
  store i32 %sub233, i32* %yp, align 4
  %156 = load i32, i32* %xp, align 4
  %tobool234 = icmp ne i32 %156, 0
  br i1 %tobool234, label %if.then.237, label %lor.lhs.false.235

lor.lhs.false.235:                                ; preds = %for.body.222
  %157 = load i32, i32* %yp, align 4
  %tobool236 = icmp ne i32 %157, 0
  br i1 %tobool236, label %if.then.237, label %if.end.247

if.then.237:                                      ; preds = %lor.lhs.false.235, %for.body.222
  %158 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %158 to i64
  %159 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx239 = getelementptr inbounds %struct.ppm, %struct.ppm* %159, i64 %idxprom238
  %160 = load i32, i32* %xp, align 4
  %div240 = sdiv i32 %160, 2
  %161 = load i32, i32* %xp, align 4
  %162 = load i32, i32* %xp, align 4
  %div241 = sdiv i32 %162, 2
  %sub242 = sub nsw i32 %161, %div241
  %163 = load i32, i32* %yp, align 4
  %div243 = sdiv i32 %163, 2
  %164 = load i32, i32* %yp, align 4
  %165 = load i32, i32* %yp, align 4
  %div244 = sdiv i32 %165, 2
  %sub245 = sub nsw i32 %164, %div244
  %arraydecay246 = getelementptr inbounds [3 x i8], [3 x i8]* %blk, i32 0, i32 0
  call void @ppm_pad(%struct.ppm* %arrayidx239, i32 %div240, i32 %sub242, i32 %div243, i32 %sub245, i8* %arraydecay246)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.237, %lor.lhs.false.235
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %166 = load i32, i32* %i, align 4
  %inc249 = add nsw i32 %166, 1
  store i32 %inc249, i32* %i, align 4
  br label %for.cond.219

for.end.250:                                      ; preds = %for.cond.219
  %167 = load i32, i32* %dropshadow, align 4
  %tobool251 = icmp ne i32 %167, 0
  br i1 %tobool251, label %if.then.252, label %if.end.285

if.then.252:                                      ; preds = %for.end.250
  store i32 0, i32* %i, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.282, %if.then.252
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %num_brushes, align 4
  %cmp254 = icmp slt i32 %168, %169
  br i1 %cmp254, label %for.body.256, label %for.end.284

for.body.256:                                     ; preds = %for.cond.253
  %170 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %170 to i64
  %171 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx258 = getelementptr inbounds %struct.ppm, %struct.ppm* %171, i64 %idxprom257
  %col259 = getelementptr inbounds %struct.ppm, %struct.ppm* %arrayidx258, i32 0, i32 2
  store i8* null, i8** %col259, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %172 to i64
  %173 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx261 = getelementptr inbounds %struct.ppm, %struct.ppm* %173, i64 %idxprom260
  %174 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %174 to i64
  %175 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx263 = getelementptr inbounds %struct.ppm, %struct.ppm* %175, i64 %idxprom262
  call void @ppm_copy(%struct.ppm* %arrayidx261, %struct.ppm* %arrayidx263)
  %176 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %176 to i64
  %177 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx265 = getelementptr inbounds %struct.ppm, %struct.ppm* %177, i64 %idxprom264
  call void @ppm_apply_gamma(%struct.ppm* %arrayidx265, float 0.000000e+00, i32 1, i32 1, i32 0)
  %178 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %178 to i64
  %179 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx267 = getelementptr inbounds %struct.ppm, %struct.ppm* %179, i64 %idxprom266
  %180 = load i32, i32* %shadowblur, align 4
  %mul268 = mul nsw i32 %180, 2
  %181 = load i32, i32* %shadowblur, align 4
  %mul269 = mul nsw i32 %181, 2
  %182 = load i32, i32* %shadowblur, align 4
  %mul270 = mul nsw i32 %182, 2
  %183 = load i32, i32* %shadowblur, align 4
  %mul271 = mul nsw i32 %183, 2
  %arraydecay272 = getelementptr inbounds [3 x i8], [3 x i8]* %back, i32 0, i32 0
  call void @ppm_pad(%struct.ppm* %arrayidx267, i32 %mul268, i32 %mul269, i32 %mul270, i32 %mul271, i8* %arraydecay272)
  store i32 0, i32* %j, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.279, %for.body.256
  %184 = load i32, i32* %j, align 4
  %185 = load i32, i32* %shadowblur, align 4
  %cmp274 = icmp slt i32 %184, %185
  br i1 %cmp274, label %for.body.276, label %for.end.281

for.body.276:                                     ; preds = %for.cond.273
  %186 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %186 to i64
  %187 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx278 = getelementptr inbounds %struct.ppm, %struct.ppm* %187, i64 %idxprom277
  call void @blur(%struct.ppm* %arrayidx278, i32 2, i32 2)
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.276
  %188 = load i32, i32* %j, align 4
  %inc280 = add nsw i32 %188, 1
  store i32 %inc280, i32* %j, align 4
  br label %for.cond.273

for.end.281:                                      ; preds = %for.cond.273
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.end.281
  %189 = load i32, i32* %i, align 4
  %inc283 = add nsw i32 %189, 1
  store i32 %inc283, i32* %i, align 4
  br label %for.cond.253

for.end.284:                                      ; preds = %for.cond.253
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %for.end.250
  %190 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool286 = icmp ne i32 %190, 0
  br i1 %tobool286, label %if.then.287, label %if.end.291

if.then.287:                                      ; preds = %if.end.285
  %191 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %192 = load i32, i32* %maxbrushwidth, align 4
  %193 = load i32, i32* %maxbrushwidth, align 4
  %194 = load i32, i32* %maxbrushheight, align 4
  %195 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %196 = load i32, i32* @img_has_alpha, align 4
  %tobool288 = icmp ne i32 %196, 0
  br i1 %tobool288, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.then.287
  %197 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %198 = load i32, i32* %maxbrushwidth, align 4
  %199 = load i32, i32* %maxbrushwidth, align 4
  %200 = load i32, i32* %maxbrushheight, align 4
  %201 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %197, i32 %198, i32 %199, i32 %200, i32 %201)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %if.then.287
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.285
  %202 = load i32, i32* @img_has_alpha, align 4
  %tobool292 = icmp ne i32 %202, 0
  br i1 %tobool292, label %if.then.293, label %if.end.303

if.then.293:                                      ; preds = %if.end.291
  %203 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 8), align 4
  %cmp294 = icmp eq i32 %203, 3
  br i1 %cmp294, label %if.then.296, label %if.else.301

if.then.296:                                      ; preds = %if.then.293
  %204 = bitcast [3 x i8]* %tmpcol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @repaint.tmpcol, i32 0, i32 0), i64 3, i32 1, i1 false)
  %205 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %width298 = getelementptr inbounds %struct.ppm, %struct.ppm* %205, i32 0, i32 0
  %206 = load i32, i32* %width298, align 4
  %207 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %height299 = getelementptr inbounds %struct.ppm, %struct.ppm* %207, i32 0, i32 1
  %208 = load i32, i32* %height299, align 4
  call void @ppm_new(%struct.ppm* %atmp, i32 %206, i32 %208)
  %arraydecay300 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol, i32 0, i32 0
  call void @fill(%struct.ppm* %atmp, i8* %arraydecay300)
  br label %if.end.302

if.else.301:                                      ; preds = %if.then.293
  %209 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  call void @ppm_copy(%struct.ppm* %209, %struct.ppm* %atmp)
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.301, %if.then.296
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.end.291
  %210 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 8), align 4
  %cmp304 = icmp eq i32 %210, 0
  br i1 %cmp304, label %if.then.306, label %if.else.315

if.then.306:                                      ; preds = %if.end.303
  %211 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width309 = getelementptr inbounds %struct.ppm, %struct.ppm* %211, i32 0, i32 0
  %212 = load i32, i32* %width309, align 4
  %213 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height310 = getelementptr inbounds %struct.ppm, %struct.ppm* %213, i32 0, i32 1
  %214 = load i32, i32* %height310, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %212, i32 %214)
  %arrayidx311 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol308, i32 0, i64 0
  %arrayidx312 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol308, i32 0, i64 1
  %arrayidx313 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol308, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 16), i8* %arrayidx311, i8* %arrayidx312, i8* %arrayidx313)
  %arraydecay314 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol308, i32 0, i32 0
  call void @fill(%struct.ppm* %tmp, i8* %arraydecay314)
  br label %if.end.411

if.else.315:                                      ; preds = %if.end.303
  %215 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 8), align 4
  %cmp316 = icmp eq i32 %215, 1
  br i1 %cmp316, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %if.else.315
  %216 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_copy(%struct.ppm* %216, %struct.ppm* %tmp)
  br label %if.end.410

if.else.319:                                      ; preds = %if.else.315
  %217 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width322 = getelementptr inbounds %struct.ppm, %struct.ppm* %217, i32 0, i32 0
  %218 = load i32, i32* %width322, align 4
  %219 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height323 = getelementptr inbounds %struct.ppm, %struct.ppm* %219, i32 0, i32 1
  %220 = load i32, i32* %height323, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %218, i32 %220)
  call void @ppm_load(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 15, i32 0), %struct.ppm* %paper_ppm)
  %221 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 11), align 8
  %cmp324 = fcmp une double %221, 1.000000e+02
  br i1 %cmp324, label %if.then.326, label %if.end.336

if.then.326:                                      ; preds = %if.else.319
  %222 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 11), align 8
  %div327 = fdiv double %222, 1.000000e+02
  store double %div327, double* %scale, align 8
  %width328 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %223 = load i32, i32* %width328, align 4
  %conv329 = sitofp i32 %223 to double
  %224 = load double, double* %scale, align 8
  %mul330 = fmul double %conv329, %224
  %conv331 = fptosi double %mul330 to i32
  %height332 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 1
  %225 = load i32, i32* %height332, align 4
  %conv333 = sitofp i32 %225 to double
  %226 = load double, double* %scale, align 8
  %mul334 = fmul double %conv333, %226
  %conv335 = fptosi double %mul334 to i32
  call void @resize(%struct.ppm* %paper_ppm, i32 %conv331, i32 %conv335)
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.326, %if.else.319
  %227 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 12), align 4
  %tobool337 = icmp ne i32 %227, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.336
  call void @ppm_apply_gamma(%struct.ppm* %paper_ppm, float -1.000000e+00, i32 1, i32 1, i32 1)
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.end.336
  %228 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool340 = icmp ne i32 %228, 0
  br i1 %tobool340, label %cond.true.341, label %cond.false.344

cond.true.341:                                    ; preds = %if.end.339
  %width342 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %229 = load i32, i32* %width342, align 4
  %230 = load i32, i32* %maxbrushwidth, align 4
  %sub343 = sub nsw i32 %229, %230
  br label %cond.end.345

cond.false.344:                                   ; preds = %if.end.339
  br label %cond.end.345

cond.end.345:                                     ; preds = %cond.false.344, %cond.true.341
  %cond346 = phi i32 [ %sub343, %cond.true.341 ], [ 0, %cond.false.344 ]
  store i32 %cond346, i32* %dx, align 4
  %231 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool347 = icmp ne i32 %231, 0
  br i1 %tobool347, label %cond.true.348, label %cond.false.351

cond.true.348:                                    ; preds = %cond.end.345
  %height349 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 1
  %232 = load i32, i32* %height349, align 4
  %233 = load i32, i32* %maxbrushheight, align 4
  %sub350 = sub nsw i32 %232, %233
  br label %cond.end.352

cond.false.351:                                   ; preds = %cond.end.345
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.351, %cond.true.348
  %cond353 = phi i32 [ %sub350, %cond.true.348 ], [ 0, %cond.false.351 ]
  store i32 %cond353, i32* %dy, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.407, %cond.end.352
  %234 = load i32, i32* %y, align 4
  %height355 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %235 = load i32, i32* %height355, align 4
  %cmp356 = icmp slt i32 %234, %235
  br i1 %cmp356, label %for.body.358, label %for.end.409

for.body.358:                                     ; preds = %for.cond.354
  %236 = load i32, i32* %y, align 4
  %237 = load i32, i32* %dy, align 4
  %add361 = add nsw i32 %236, %237
  %height362 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 1
  %238 = load i32, i32* %height362, align 4
  %rem = srem i32 %add361, %238
  store i32 %rem, i32* %ry, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.404, %for.body.358
  %239 = load i32, i32* %x, align 4
  %width364 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %240 = load i32, i32* %width364, align 4
  %cmp365 = icmp slt i32 %239, %240
  br i1 %cmp365, label %for.body.367, label %for.end.406

for.body.367:                                     ; preds = %for.cond.363
  %241 = load i32, i32* %x, align 4
  %242 = load i32, i32* %dx, align 4
  %add369 = add nsw i32 %241, %242
  %width370 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %243 = load i32, i32* %width370, align 4
  %rem371 = srem i32 %add369, %243
  store i32 %rem371, i32* %rx, align 4
  %width372 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %244 = load i32, i32* %width372, align 4
  %245 = load i32, i32* %x, align 4
  %sub373 = sub nsw i32 %244, %245
  %width374 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %246 = load i32, i32* %width374, align 4
  %247 = load i32, i32* %rx, align 4
  %sub375 = sub nsw i32 %246, %247
  %cmp376 = icmp slt i32 %sub373, %sub375
  br i1 %cmp376, label %cond.true.378, label %cond.false.381

cond.true.378:                                    ; preds = %for.body.367
  %width379 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %248 = load i32, i32* %width379, align 4
  %249 = load i32, i32* %x, align 4
  %sub380 = sub nsw i32 %248, %249
  br label %cond.end.384

cond.false.381:                                   ; preds = %for.body.367
  %width382 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %250 = load i32, i32* %width382, align 4
  %251 = load i32, i32* %rx, align 4
  %sub383 = sub nsw i32 %250, %251
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.381, %cond.true.378
  %cond385 = phi i32 [ %sub380, %cond.true.378 ], [ %sub383, %cond.false.381 ]
  store i32 %cond385, i32* %lx, align 4
  %252 = load i32, i32* %y, align 4
  %width386 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %253 = load i32, i32* %width386, align 4
  %mul387 = mul nsw i32 %252, %253
  %mul388 = mul nsw i32 %mul387, 3
  %254 = load i32, i32* %x, align 4
  %mul389 = mul nsw i32 %254, 3
  %add390 = add nsw i32 %mul388, %mul389
  %idxprom391 = sext i32 %add390 to i64
  %col392 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %255 = load i8*, i8** %col392, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %255, i64 %idxprom391
  %256 = load i32, i32* %ry, align 4
  %width394 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 0
  %257 = load i32, i32* %width394, align 4
  %mul395 = mul nsw i32 %256, %257
  %mul396 = mul nsw i32 %mul395, 3
  %258 = load i32, i32* %rx, align 4
  %mul397 = mul nsw i32 %258, 3
  %add398 = add nsw i32 %mul396, %mul397
  %idxprom399 = sext i32 %add398 to i64
  %col400 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 2
  %259 = load i8*, i8** %col400, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %259, i64 %idxprom399
  %260 = load i32, i32* %lx, align 4
  %mul402 = mul nsw i32 3, %260
  %conv403 = sext i32 %mul402 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx393, i8* %arrayidx401, i64 %conv403, i32 1, i1 false)
  br label %for.inc.404

for.inc.404:                                      ; preds = %cond.end.384
  %261 = load i32, i32* %lx, align 4
  %262 = load i32, i32* %x, align 4
  %add405 = add nsw i32 %262, %261
  store i32 %add405, i32* %x, align 4
  br label %for.cond.363

for.end.406:                                      ; preds = %for.cond.363
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.end.406
  %263 = load i32, i32* %y, align 4
  %inc408 = add nsw i32 %263, 1
  store i32 %inc408, i32* %y, align 4
  br label %for.cond.354

for.end.409:                                      ; preds = %for.cond.354
  br label %if.end.410

if.end.410:                                       ; preds = %for.end.409, %if.then.318
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.306
  %264 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width412 = getelementptr inbounds %struct.ppm, %struct.ppm* %264, i32 0, i32 0
  %265 = load i32, i32* %width412, align 4
  %div413 = sdiv i32 %265, 2
  store i32 %div413, i32* %cx, align 4
  %266 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height414 = getelementptr inbounds %struct.ppm, %struct.ppm* %266, i32 0, i32 1
  %267 = load i32, i32* %height414, align 4
  %div415 = sdiv i32 %267, 2
  store i32 %div415, i32* %cy, align 4
  %268 = load i32, i32* %cx, align 4
  %269 = load i32, i32* %cx, align 4
  %mul416 = mul nsw i32 %268, %269
  %270 = load i32, i32* %cy, align 4
  %271 = load i32, i32* %cy, align 4
  %mul417 = mul nsw i32 %270, %271
  %add418 = add nsw i32 %mul416, %mul417
  %conv419 = sitofp i32 %add418 to double
  %call420 = call double @sqrt(double %conv419) #1
  %conv421 = fptosi double %call420 to i32
  store i32 %conv421, i32* %maxdist, align 4
  %272 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 3), align 4
  switch i32 %272, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.475
    i32 3, label %sw.bb.520
    i32 4, label %sw.bb.559
    i32 5, label %sw.bb.571
    i32 6, label %sw.bb.614
    i32 7, label %sw.bb.620
  ]

sw.bb:                                            ; preds = %if.end.411
  %273 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width422 = getelementptr inbounds %struct.ppm, %struct.ppm* %273, i32 0, i32 0
  %274 = load i32, i32* %width422, align 4
  %275 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height423 = getelementptr inbounds %struct.ppm, %struct.ppm* %275, i32 0, i32 1
  %276 = load i32, i32* %height423, align 4
  call void @ppm_new(%struct.ppm* %dirmap, i32 %274, i32 %276)
  store i32 0, i32* %y, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.472, %sw.bb
  %277 = load i32, i32* %y, align 4
  %height425 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %278 = load i32, i32* %height425, align 4
  %cmp426 = icmp slt i32 %277, %278
  br i1 %cmp426, label %for.body.428, label %for.end.474

for.body.428:                                     ; preds = %for.cond.424
  %279 = load i32, i32* %y, align 4
  %width430 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %280 = load i32, i32* %width430, align 4
  %mul431 = mul nsw i32 %279, %280
  %mul432 = mul nsw i32 %mul431, 3
  %idxprom433 = sext i32 %mul432 to i64
  %col434 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %281 = load i8*, i8** %col434, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %281, i64 %idxprom433
  store i8* %arrayidx435, i8** %dstrow, align 8
  %282 = load i32, i32* %y, align 4
  %283 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width437 = getelementptr inbounds %struct.ppm, %struct.ppm* %283, i32 0, i32 0
  %284 = load i32, i32* %width437, align 4
  %mul438 = mul nsw i32 %282, %284
  %mul439 = mul nsw i32 %mul438, 3
  %idxprom440 = sext i32 %mul439 to i64
  %285 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col441 = getelementptr inbounds %struct.ppm, %struct.ppm* %285, i32 0, i32 2
  %286 = load i8*, i8** %col441, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %286, i64 %idxprom440
  store i8* %arrayidx442, i8** %srcrow, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.469, %for.body.428
  %287 = load i32, i32* %x, align 4
  %width444 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %288 = load i32, i32* %width444, align 4
  %cmp445 = icmp slt i32 %287, %288
  br i1 %cmp445, label %for.body.447, label %for.end.471

for.body.447:                                     ; preds = %for.cond.443
  %289 = load i32, i32* %x, align 4
  %mul448 = mul nsw i32 %289, 3
  %idxprom449 = sext i32 %mul448 to i64
  %290 = load i8*, i8** %srcrow, align 8
  %arrayidx450 = getelementptr inbounds i8, i8* %290, i64 %idxprom449
  %291 = load i8, i8* %arrayidx450, align 1
  %conv451 = zext i8 %291 to i32
  %292 = load i32, i32* %x, align 4
  %mul452 = mul nsw i32 %292, 3
  %add453 = add nsw i32 %mul452, 1
  %idxprom454 = sext i32 %add453 to i64
  %293 = load i8*, i8** %srcrow, align 8
  %arrayidx455 = getelementptr inbounds i8, i8* %293, i64 %idxprom454
  %294 = load i8, i8* %arrayidx455, align 1
  %conv456 = zext i8 %294 to i32
  %add457 = add nsw i32 %conv451, %conv456
  %295 = load i32, i32* %x, align 4
  %mul458 = mul nsw i32 %295, 3
  %add459 = add nsw i32 %mul458, 2
  %idxprom460 = sext i32 %add459 to i64
  %296 = load i8*, i8** %srcrow, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %296, i64 %idxprom460
  %297 = load i8, i8* %arrayidx461, align 1
  %conv462 = zext i8 %297 to i32
  %add463 = add nsw i32 %add457, %conv462
  %div464 = sdiv i32 %add463, 3
  %conv465 = trunc i32 %div464 to i8
  %298 = load i32, i32* %x, align 4
  %mul466 = mul nsw i32 %298, 3
  %idxprom467 = sext i32 %mul466 to i64
  %299 = load i8*, i8** %dstrow, align 8
  %arrayidx468 = getelementptr inbounds i8, i8* %299, i64 %idxprom467
  store i8 %conv465, i8* %arrayidx468, align 1
  br label %for.inc.469

for.inc.469:                                      ; preds = %for.body.447
  %300 = load i32, i32* %x, align 4
  %inc470 = add nsw i32 %300, 1
  store i32 %inc470, i32* %x, align 4
  br label %for.cond.443

for.end.471:                                      ; preds = %for.cond.443
  br label %for.inc.472

for.inc.472:                                      ; preds = %for.end.471
  %301 = load i32, i32* %y, align 4
  %inc473 = add nsw i32 %301, 1
  store i32 %inc473, i32* %y, align 4
  br label %for.cond.424

for.end.474:                                      ; preds = %for.cond.424
  br label %sw.epilog

sw.bb.475:                                        ; preds = %if.end.411
  %302 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width476 = getelementptr inbounds %struct.ppm, %struct.ppm* %302, i32 0, i32 0
  %303 = load i32, i32* %width476, align 4
  %304 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height477 = getelementptr inbounds %struct.ppm, %struct.ppm* %304, i32 0, i32 1
  %305 = load i32, i32* %height477, align 4
  call void @ppm_new(%struct.ppm* %dirmap, i32 %303, i32 %305)
  store i32 0, i32* %y, align 4
  br label %for.cond.478

for.cond.478:                                     ; preds = %for.inc.517, %sw.bb.475
  %306 = load i32, i32* %y, align 4
  %height479 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %307 = load i32, i32* %height479, align 4
  %cmp480 = icmp slt i32 %306, %307
  br i1 %cmp480, label %for.body.482, label %for.end.519

for.body.482:                                     ; preds = %for.cond.478
  %308 = load i32, i32* %y, align 4
  %width485 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %309 = load i32, i32* %width485, align 4
  %mul486 = mul nsw i32 %308, %309
  %mul487 = mul nsw i32 %mul486, 3
  %idxprom488 = sext i32 %mul487 to i64
  %col489 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %310 = load i8*, i8** %col489, align 8
  %arrayidx490 = getelementptr inbounds i8, i8* %310, i64 %idxprom488
  store i8* %arrayidx490, i8** %dstrow484, align 8
  %311 = load i32, i32* %cy, align 4
  %312 = load i32, i32* %y, align 4
  %sub492 = sub nsw i32 %311, %312
  %313 = load i32, i32* %cy, align 4
  %314 = load i32, i32* %y, align 4
  %sub493 = sub nsw i32 %313, %314
  %mul494 = mul nsw i32 %sub492, %sub493
  %conv495 = sitofp i32 %mul494 to double
  store double %conv495, double* %ysqr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.496

for.cond.496:                                     ; preds = %for.inc.514, %for.body.482
  %315 = load i32, i32* %x, align 4
  %width497 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %316 = load i32, i32* %width497, align 4
  %cmp498 = icmp slt i32 %315, %316
  br i1 %cmp498, label %for.body.500, label %for.end.516

for.body.500:                                     ; preds = %for.cond.496
  %317 = load i32, i32* %cx, align 4
  %318 = load i32, i32* %x, align 4
  %sub501 = sub nsw i32 %317, %318
  %319 = load i32, i32* %cx, align 4
  %320 = load i32, i32* %x, align 4
  %sub502 = sub nsw i32 %319, %320
  %mul503 = mul nsw i32 %sub501, %sub502
  %conv504 = sitofp i32 %mul503 to double
  %321 = load double, double* %ysqr, align 8
  %add505 = fadd double %conv504, %321
  %call506 = call double @sqrt(double %add505) #1
  %mul507 = fmul double %call506, 2.550000e+02
  %322 = load i32, i32* %maxdist, align 4
  %conv508 = sitofp i32 %322 to double
  %div509 = fdiv double %mul507, %conv508
  %conv510 = fptoui double %div509 to i8
  %323 = load i32, i32* %x, align 4
  %mul511 = mul nsw i32 %323, 3
  %idxprom512 = sext i32 %mul511 to i64
  %324 = load i8*, i8** %dstrow484, align 8
  %arrayidx513 = getelementptr inbounds i8, i8* %324, i64 %idxprom512
  store i8 %conv510, i8* %arrayidx513, align 1
  br label %for.inc.514

for.inc.514:                                      ; preds = %for.body.500
  %325 = load i32, i32* %x, align 4
  %inc515 = add nsw i32 %325, 1
  store i32 %inc515, i32* %x, align 4
  br label %for.cond.496

for.end.516:                                      ; preds = %for.cond.496
  br label %for.inc.517

for.inc.517:                                      ; preds = %for.end.516
  %326 = load i32, i32* %y, align 4
  %inc518 = add nsw i32 %326, 1
  store i32 %inc518, i32* %y, align 4
  br label %for.cond.478

for.end.519:                                      ; preds = %for.cond.478
  br label %sw.epilog

sw.bb.520:                                        ; preds = %if.end.411
  %327 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width521 = getelementptr inbounds %struct.ppm, %struct.ppm* %327, i32 0, i32 0
  %328 = load i32, i32* %width521, align 4
  %329 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height522 = getelementptr inbounds %struct.ppm, %struct.ppm* %329, i32 0, i32 1
  %330 = load i32, i32* %height522, align 4
  call void @ppm_new(%struct.ppm* %dirmap, i32 %328, i32 %330)
  store i32 0, i32* %y, align 4
  br label %for.cond.523

for.cond.523:                                     ; preds = %for.inc.556, %sw.bb.520
  %331 = load i32, i32* %y, align 4
  %height524 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %332 = load i32, i32* %height524, align 4
  %cmp525 = icmp slt i32 %331, %332
  br i1 %cmp525, label %for.body.527, label %for.end.558

for.body.527:                                     ; preds = %for.cond.523
  %333 = load i32, i32* %y, align 4
  %width530 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %334 = load i32, i32* %width530, align 4
  %mul531 = mul nsw i32 %333, %334
  %mul532 = mul nsw i32 %mul531, 3
  %idxprom533 = sext i32 %mul532 to i64
  %col534 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %335 = load i8*, i8** %col534, align 8
  %arrayidx535 = getelementptr inbounds i8, i8* %335, i64 %idxprom533
  store i8* %arrayidx535, i8** %dstrow529, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.553, %for.body.527
  %336 = load i32, i32* %x, align 4
  %width537 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %337 = load i32, i32* %width537, align 4
  %cmp538 = icmp slt i32 %336, %337
  br i1 %cmp538, label %for.body.540, label %for.end.555

for.body.540:                                     ; preds = %for.cond.536
  %338 = load i32, i32* %cy, align 4
  %339 = load i32, i32* %y, align 4
  %sub541 = sub nsw i32 %338, %339
  %conv542 = sitofp i32 %sub541 to double
  %340 = load i32, i32* %cx, align 4
  %341 = load i32, i32* %x, align 4
  %sub543 = sub nsw i32 %340, %341
  %conv544 = sitofp i32 %sub543 to double
  %call545 = call double @atan2(double %conv542, double %conv544) #1
  %add546 = fadd double 0x400921FB54442D18, %call545
  %mul547 = fmul double %add546, 2.550000e+02
  %div548 = fdiv double %mul547, 0x401921FB54442D18
  %conv549 = fptoui double %div548 to i8
  %342 = load i32, i32* %x, align 4
  %mul550 = mul nsw i32 %342, 3
  %idxprom551 = sext i32 %mul550 to i64
  %343 = load i8*, i8** %dstrow529, align 8
  %arrayidx552 = getelementptr inbounds i8, i8* %343, i64 %idxprom551
  store i8 %conv549, i8* %arrayidx552, align 1
  br label %for.inc.553

for.inc.553:                                      ; preds = %for.body.540
  %344 = load i32, i32* %x, align 4
  %inc554 = add nsw i32 %344, 1
  store i32 %inc554, i32* %x, align 4
  br label %for.cond.536

for.end.555:                                      ; preds = %for.cond.536
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.end.555
  %345 = load i32, i32* %y, align 4
  %inc557 = add nsw i32 %345, 1
  store i32 %inc557, i32* %y, align 4
  br label %for.cond.523

for.end.558:                                      ; preds = %for.cond.523
  br label %sw.epilog

sw.bb.559:                                        ; preds = %if.end.411
  %346 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width560 = getelementptr inbounds %struct.ppm, %struct.ppm* %346, i32 0, i32 0
  %347 = load i32, i32* %width560, align 4
  %div561 = sdiv i32 %347, 6
  %add562 = add nsw i32 %div561, 5
  %348 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height563 = getelementptr inbounds %struct.ppm, %struct.ppm* %348, i32 0, i32 1
  %349 = load i32, i32* %height563, align 4
  %div564 = sdiv i32 %349, 6
  %add565 = add nsw i32 %div564, 5
  call void @ppm_new(%struct.ppm* %dirmap, i32 %add562, i32 %add565)
  call void @mkgrayplasma(%struct.ppm* %dirmap, float 1.500000e+01)
  call void @blur(%struct.ppm* %dirmap, i32 2, i32 2)
  call void @blur(%struct.ppm* %dirmap, i32 2, i32 2)
  %350 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width566 = getelementptr inbounds %struct.ppm, %struct.ppm* %350, i32 0, i32 0
  %351 = load i32, i32* %width566, align 4
  %352 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height567 = getelementptr inbounds %struct.ppm, %struct.ppm* %352, i32 0, i32 1
  %353 = load i32, i32* %height567, align 4
  call void @resize(%struct.ppm* %dirmap, i32 %351, i32 %353)
  call void @blur(%struct.ppm* %dirmap, i32 2, i32 2)
  %354 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool568 = icmp ne i32 %354, 0
  br i1 %tobool568, label %if.then.569, label %if.end.570

if.then.569:                                      ; preds = %sw.bb.559
  %355 = load i32, i32* %maxbrushwidth, align 4
  %356 = load i32, i32* %maxbrushheight, align 4
  %357 = load i32, i32* %maxbrushwidth, align 4
  %358 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %dirmap, i32 %355, i32 %356, i32 %357, i32 %358)
  br label %if.end.570

if.end.570:                                       ; preds = %if.then.569, %sw.bb.559
  br label %sw.epilog

sw.bb.571:                                        ; preds = %if.end.411
  %359 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width572 = getelementptr inbounds %struct.ppm, %struct.ppm* %359, i32 0, i32 0
  %360 = load i32, i32* %width572, align 4
  %361 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height573 = getelementptr inbounds %struct.ppm, %struct.ppm* %361, i32 0, i32 1
  %362 = load i32, i32* %height573, align 4
  call void @ppm_new(%struct.ppm* %dirmap, i32 %360, i32 %362)
  store i32 0, i32* %y, align 4
  br label %for.cond.574

for.cond.574:                                     ; preds = %for.inc.611, %sw.bb.571
  %363 = load i32, i32* %y, align 4
  %height575 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %364 = load i32, i32* %height575, align 4
  %cmp576 = icmp slt i32 %363, %364
  br i1 %cmp576, label %for.body.578, label %for.end.613

for.body.578:                                     ; preds = %for.cond.574
  %365 = load i32, i32* %y, align 4
  %width581 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %366 = load i32, i32* %width581, align 4
  %mul582 = mul nsw i32 %365, %366
  %mul583 = mul nsw i32 %mul582, 3
  %idxprom584 = sext i32 %mul583 to i64
  %col585 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %367 = load i8*, i8** %col585, align 8
  %arrayidx586 = getelementptr inbounds i8, i8* %367, i64 %idxprom584
  store i8* %arrayidx586, i8** %dstrow580, align 8
  %368 = load i32, i32* %y, align 4
  %369 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width589 = getelementptr inbounds %struct.ppm, %struct.ppm* %369, i32 0, i32 0
  %370 = load i32, i32* %width589, align 4
  %mul590 = mul nsw i32 %368, %370
  %mul591 = mul nsw i32 %mul590, 3
  %idxprom592 = sext i32 %mul591 to i64
  %371 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col593 = getelementptr inbounds %struct.ppm, %struct.ppm* %371, i32 0, i32 2
  %372 = load i8*, i8** %col593, align 8
  %arrayidx594 = getelementptr inbounds i8, i8* %372, i64 %idxprom592
  store i8* %arrayidx594, i8** %srcrow588, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.595

for.cond.595:                                     ; preds = %for.inc.608, %for.body.578
  %373 = load i32, i32* %x, align 4
  %width596 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %374 = load i32, i32* %width596, align 4
  %cmp597 = icmp slt i32 %373, %374
  br i1 %cmp597, label %for.body.599, label %for.end.610

for.body.599:                                     ; preds = %for.cond.595
  %375 = load i32, i32* %x, align 4
  %mul600 = mul nsw i32 %375, 3
  %idxprom601 = sext i32 %mul600 to i64
  %376 = load i8*, i8** %srcrow588, align 8
  %arrayidx602 = getelementptr inbounds i8, i8* %376, i64 %idxprom601
  %call603 = call i32 @get_hue(i8* %arrayidx602)
  %conv604 = trunc i32 %call603 to i8
  %377 = load i32, i32* %x, align 4
  %mul605 = mul nsw i32 %377, 3
  %idxprom606 = sext i32 %mul605 to i64
  %378 = load i8*, i8** %dstrow580, align 8
  %arrayidx607 = getelementptr inbounds i8, i8* %378, i64 %idxprom606
  store i8 %conv604, i8* %arrayidx607, align 1
  br label %for.inc.608

for.inc.608:                                      ; preds = %for.body.599
  %379 = load i32, i32* %x, align 4
  %inc609 = add nsw i32 %379, 1
  store i32 %inc609, i32* %x, align 4
  br label %for.cond.595

for.end.610:                                      ; preds = %for.cond.595
  br label %for.inc.611

for.inc.611:                                      ; preds = %for.end.610
  %380 = load i32, i32* %y, align 4
  %inc612 = add nsw i32 %380, 1
  store i32 %inc612, i32* %y, align 4
  br label %for.cond.574

for.end.613:                                      ; preds = %for.cond.574
  br label %sw.epilog

sw.bb.614:                                        ; preds = %if.end.411
  %381 = bitcast [3 x i8]* %tmpcol616 to i8*
  call void @llvm.memset.p0i8.i64(i8* %381, i8 0, i64 3, i32 1, i1 false)
  %382 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width617 = getelementptr inbounds %struct.ppm, %struct.ppm* %382, i32 0, i32 0
  %383 = load i32, i32* %width617, align 4
  %384 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height618 = getelementptr inbounds %struct.ppm, %struct.ppm* %384, i32 0, i32 1
  %385 = load i32, i32* %height618, align 4
  call void @ppm_new(%struct.ppm* %dirmap, i32 %383, i32 %385)
  %arraydecay619 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol616, i32 0, i32 0
  call void @fill(%struct.ppm* %dirmap, i8* %arraydecay619)
  br label %sw.epilog

sw.bb.620:                                        ; preds = %if.end.411
  %386 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width621 = getelementptr inbounds %struct.ppm, %struct.ppm* %386, i32 0, i32 0
  %387 = load i32, i32* %width621, align 4
  %388 = load i32, i32* %maxbrushwidth, align 4
  %mul622 = mul nsw i32 %388, 2
  %sub623 = sub nsw i32 %387, %mul622
  %389 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height624 = getelementptr inbounds %struct.ppm, %struct.ppm* %389, i32 0, i32 1
  %390 = load i32, i32* %height624, align 4
  %391 = load i32, i32* %maxbrushheight, align 4
  %mul625 = mul nsw i32 %391, 2
  %sub626 = sub nsw i32 %390, %mul625
  call void @ppm_new(%struct.ppm* %dirmap, i32 %sub623, i32 %sub626)
  store i32 0, i32* %y, align 4
  br label %for.cond.627

for.cond.627:                                     ; preds = %for.inc.664, %sw.bb.620
  %392 = load i32, i32* %y, align 4
  %height628 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %393 = load i32, i32* %height628, align 4
  %cmp629 = icmp slt i32 %392, %393
  br i1 %cmp629, label %for.body.631, label %for.end.666

for.body.631:                                     ; preds = %for.cond.627
  %394 = load i32, i32* %y, align 4
  %width634 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %395 = load i32, i32* %width634, align 4
  %mul635 = mul nsw i32 %394, %395
  %mul636 = mul nsw i32 %mul635, 3
  %idxprom637 = sext i32 %mul636 to i64
  %col638 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %396 = load i8*, i8** %col638, align 8
  %arrayidx639 = getelementptr inbounds i8, i8* %396, i64 %idxprom637
  store i8* %arrayidx639, i8** %dstrow633, align 8
  %397 = load i32, i32* %y, align 4
  %conv641 = sitofp i32 %397 to double
  %height642 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 1
  %398 = load i32, i32* %height642, align 4
  %conv643 = sitofp i32 %398 to double
  %div644 = fdiv double %conv641, %conv643
  store double %div644, double* %tmpy, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.645

for.cond.645:                                     ; preds = %for.inc.661, %for.body.631
  %399 = load i32, i32* %x, align 4
  %width646 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %400 = load i32, i32* %width646, align 4
  %cmp647 = icmp slt i32 %399, %400
  br i1 %cmp647, label %for.body.649, label %for.end.663

for.body.649:                                     ; preds = %for.cond.645
  %401 = load i32, i32* %x, align 4
  %conv650 = sitofp i32 %401 to double
  %width651 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %402 = load i32, i32* %width651, align 4
  %conv652 = sitofp i32 %402 to double
  %div653 = fdiv double %conv650, %conv652
  %403 = load double, double* %tmpy, align 8
  %call654 = call double @get_direction(double %div653, double %403, i32 1)
  %sub655 = fsub double 9.000000e+01, %call654
  %call656 = call i32 @get_pixel_value(double %sub655)
  %conv657 = trunc i32 %call656 to i8
  %404 = load i32, i32* %x, align 4
  %mul658 = mul nsw i32 %404, 3
  %idxprom659 = sext i32 %mul658 to i64
  %405 = load i8*, i8** %dstrow633, align 8
  %arrayidx660 = getelementptr inbounds i8, i8* %405, i64 %idxprom659
  store i8 %conv657, i8* %arrayidx660, align 1
  br label %for.inc.661

for.inc.661:                                      ; preds = %for.body.649
  %406 = load i32, i32* %x, align 4
  %inc662 = add nsw i32 %406, 1
  store i32 %inc662, i32* %x, align 4
  br label %for.cond.645

for.end.663:                                      ; preds = %for.cond.645
  br label %for.inc.664

for.inc.664:                                      ; preds = %for.end.663
  %407 = load i32, i32* %y, align 4
  %inc665 = add nsw i32 %407, 1
  store i32 %inc665, i32* %y, align 4
  br label %for.cond.627

for.end.666:                                      ; preds = %for.cond.627
  %408 = load i32, i32* %maxbrushwidth, align 4
  %409 = load i32, i32* %maxbrushwidth, align 4
  %410 = load i32, i32* %maxbrushheight, align 4
  %411 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %dirmap, i32 %408, i32 %409, i32 %410, i32 %411)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.411, %for.end.666, %sw.bb.614, %for.end.613, %if.end.570, %for.end.558, %for.end.519, %for.end.474
  %412 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp667 = icmp eq i32 %412, 0
  br i1 %cmp667, label %if.then.669, label %if.else.725

if.then.669:                                      ; preds = %sw.epilog
  %413 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width670 = getelementptr inbounds %struct.ppm, %struct.ppm* %413, i32 0, i32 0
  %414 = load i32, i32* %width670, align 4
  %415 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height671 = getelementptr inbounds %struct.ppm, %struct.ppm* %415, i32 0, i32 1
  %416 = load i32, i32* %height671, align 4
  call void @ppm_new(%struct.ppm* %sizmap, i32 %414, i32 %416)
  store i32 0, i32* %y, align 4
  br label %for.cond.672

for.cond.672:                                     ; preds = %for.inc.722, %if.then.669
  %417 = load i32, i32* %y, align 4
  %height673 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %418 = load i32, i32* %height673, align 4
  %cmp674 = icmp slt i32 %417, %418
  br i1 %cmp674, label %for.body.676, label %for.end.724

for.body.676:                                     ; preds = %for.cond.672
  %419 = load i32, i32* %y, align 4
  %width679 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %420 = load i32, i32* %width679, align 4
  %mul680 = mul nsw i32 %419, %420
  %mul681 = mul nsw i32 %mul680, 3
  %idxprom682 = sext i32 %mul681 to i64
  %col683 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %421 = load i8*, i8** %col683, align 8
  %arrayidx684 = getelementptr inbounds i8, i8* %421, i64 %idxprom682
  store i8* %arrayidx684, i8** %dstrow678, align 8
  %422 = load i32, i32* %y, align 4
  %423 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width687 = getelementptr inbounds %struct.ppm, %struct.ppm* %423, i32 0, i32 0
  %424 = load i32, i32* %width687, align 4
  %mul688 = mul nsw i32 %422, %424
  %mul689 = mul nsw i32 %mul688, 3
  %idxprom690 = sext i32 %mul689 to i64
  %425 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col691 = getelementptr inbounds %struct.ppm, %struct.ppm* %425, i32 0, i32 2
  %426 = load i8*, i8** %col691, align 8
  %arrayidx692 = getelementptr inbounds i8, i8* %426, i64 %idxprom690
  store i8* %arrayidx692, i8** %srcrow686, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.693

for.cond.693:                                     ; preds = %for.inc.719, %for.body.676
  %427 = load i32, i32* %x, align 4
  %width694 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %428 = load i32, i32* %width694, align 4
  %cmp695 = icmp slt i32 %427, %428
  br i1 %cmp695, label %for.body.697, label %for.end.721

for.body.697:                                     ; preds = %for.cond.693
  %429 = load i32, i32* %x, align 4
  %mul698 = mul nsw i32 %429, 3
  %idxprom699 = sext i32 %mul698 to i64
  %430 = load i8*, i8** %srcrow686, align 8
  %arrayidx700 = getelementptr inbounds i8, i8* %430, i64 %idxprom699
  %431 = load i8, i8* %arrayidx700, align 1
  %conv701 = zext i8 %431 to i32
  %432 = load i32, i32* %x, align 4
  %mul702 = mul nsw i32 %432, 3
  %add703 = add nsw i32 %mul702, 1
  %idxprom704 = sext i32 %add703 to i64
  %433 = load i8*, i8** %srcrow686, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %433, i64 %idxprom704
  %434 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %434 to i32
  %add707 = add nsw i32 %conv701, %conv706
  %435 = load i32, i32* %x, align 4
  %mul708 = mul nsw i32 %435, 3
  %add709 = add nsw i32 %mul708, 2
  %idxprom710 = sext i32 %add709 to i64
  %436 = load i8*, i8** %srcrow686, align 8
  %arrayidx711 = getelementptr inbounds i8, i8* %436, i64 %idxprom710
  %437 = load i8, i8* %arrayidx711, align 1
  %conv712 = zext i8 %437 to i32
  %add713 = add nsw i32 %add707, %conv712
  %div714 = sdiv i32 %add713, 3
  %conv715 = trunc i32 %div714 to i8
  %438 = load i32, i32* %x, align 4
  %mul716 = mul nsw i32 %438, 3
  %idxprom717 = sext i32 %mul716 to i64
  %439 = load i8*, i8** %dstrow678, align 8
  %arrayidx718 = getelementptr inbounds i8, i8* %439, i64 %idxprom717
  store i8 %conv715, i8* %arrayidx718, align 1
  br label %for.inc.719

for.inc.719:                                      ; preds = %for.body.697
  %440 = load i32, i32* %x, align 4
  %inc720 = add nsw i32 %440, 1
  store i32 %inc720, i32* %x, align 4
  br label %for.cond.693

for.end.721:                                      ; preds = %for.cond.693
  br label %for.inc.722

for.inc.722:                                      ; preds = %for.end.721
  %441 = load i32, i32* %y, align 4
  %inc723 = add nsw i32 %441, 1
  store i32 %inc723, i32* %y, align 4
  br label %for.cond.672

for.end.724:                                      ; preds = %for.cond.672
  br label %if.end.943

if.else.725:                                      ; preds = %sw.epilog
  %442 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp726 = icmp eq i32 %442, 1
  br i1 %cmp726, label %if.then.728, label %if.else.774

if.then.728:                                      ; preds = %if.else.725
  %443 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width729 = getelementptr inbounds %struct.ppm, %struct.ppm* %443, i32 0, i32 0
  %444 = load i32, i32* %width729, align 4
  %445 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height730 = getelementptr inbounds %struct.ppm, %struct.ppm* %445, i32 0, i32 1
  %446 = load i32, i32* %height730, align 4
  call void @ppm_new(%struct.ppm* %sizmap, i32 %444, i32 %446)
  store i32 0, i32* %y, align 4
  br label %for.cond.731

for.cond.731:                                     ; preds = %for.inc.771, %if.then.728
  %447 = load i32, i32* %y, align 4
  %height732 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %448 = load i32, i32* %height732, align 4
  %cmp733 = icmp slt i32 %447, %448
  br i1 %cmp733, label %for.body.735, label %for.end.773

for.body.735:                                     ; preds = %for.cond.731
  %449 = load i32, i32* %y, align 4
  %width738 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %450 = load i32, i32* %width738, align 4
  %mul739 = mul nsw i32 %449, %450
  %mul740 = mul nsw i32 %mul739, 3
  %idxprom741 = sext i32 %mul740 to i64
  %col742 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %451 = load i8*, i8** %col742, align 8
  %arrayidx743 = getelementptr inbounds i8, i8* %451, i64 %idxprom741
  store i8* %arrayidx743, i8** %dstrow737, align 8
  %452 = load i32, i32* %cy, align 4
  %453 = load i32, i32* %y, align 4
  %sub746 = sub nsw i32 %452, %453
  %454 = load i32, i32* %cy, align 4
  %455 = load i32, i32* %y, align 4
  %sub747 = sub nsw i32 %454, %455
  %mul748 = mul nsw i32 %sub746, %sub747
  %conv749 = sitofp i32 %mul748 to double
  store double %conv749, double* %ysqr745, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.750

for.cond.750:                                     ; preds = %for.inc.768, %for.body.735
  %456 = load i32, i32* %x, align 4
  %width751 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %457 = load i32, i32* %width751, align 4
  %cmp752 = icmp slt i32 %456, %457
  br i1 %cmp752, label %for.body.754, label %for.end.770

for.body.754:                                     ; preds = %for.cond.750
  %458 = load i32, i32* %cx, align 4
  %459 = load i32, i32* %x, align 4
  %sub755 = sub nsw i32 %458, %459
  %460 = load i32, i32* %cx, align 4
  %461 = load i32, i32* %x, align 4
  %sub756 = sub nsw i32 %460, %461
  %mul757 = mul nsw i32 %sub755, %sub756
  %conv758 = sitofp i32 %mul757 to double
  %462 = load double, double* %ysqr745, align 8
  %add759 = fadd double %conv758, %462
  %call760 = call double @sqrt(double %add759) #1
  %mul761 = fmul double %call760, 2.550000e+02
  %463 = load i32, i32* %maxdist, align 4
  %conv762 = sitofp i32 %463 to double
  %div763 = fdiv double %mul761, %conv762
  %conv764 = fptoui double %div763 to i8
  %464 = load i32, i32* %x, align 4
  %mul765 = mul nsw i32 %464, 3
  %idxprom766 = sext i32 %mul765 to i64
  %465 = load i8*, i8** %dstrow737, align 8
  %arrayidx767 = getelementptr inbounds i8, i8* %465, i64 %idxprom766
  store i8 %conv764, i8* %arrayidx767, align 1
  br label %for.inc.768

for.inc.768:                                      ; preds = %for.body.754
  %466 = load i32, i32* %x, align 4
  %inc769 = add nsw i32 %466, 1
  store i32 %inc769, i32* %x, align 4
  br label %for.cond.750

for.end.770:                                      ; preds = %for.cond.750
  br label %for.inc.771

for.inc.771:                                      ; preds = %for.end.770
  %467 = load i32, i32* %y, align 4
  %inc772 = add nsw i32 %467, 1
  store i32 %inc772, i32* %y, align 4
  br label %for.cond.731

for.end.773:                                      ; preds = %for.cond.731
  br label %if.end.942

if.else.774:                                      ; preds = %if.else.725
  %468 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp775 = icmp eq i32 %468, 3
  br i1 %cmp775, label %if.then.777, label %if.else.816

if.then.777:                                      ; preds = %if.else.774
  %469 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width778 = getelementptr inbounds %struct.ppm, %struct.ppm* %469, i32 0, i32 0
  %470 = load i32, i32* %width778, align 4
  %471 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height779 = getelementptr inbounds %struct.ppm, %struct.ppm* %471, i32 0, i32 1
  %472 = load i32, i32* %height779, align 4
  call void @ppm_new(%struct.ppm* %sizmap, i32 %470, i32 %472)
  store i32 0, i32* %y, align 4
  br label %for.cond.780

for.cond.780:                                     ; preds = %for.inc.813, %if.then.777
  %473 = load i32, i32* %y, align 4
  %height781 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %474 = load i32, i32* %height781, align 4
  %cmp782 = icmp slt i32 %473, %474
  br i1 %cmp782, label %for.body.784, label %for.end.815

for.body.784:                                     ; preds = %for.cond.780
  %475 = load i32, i32* %y, align 4
  %width787 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %476 = load i32, i32* %width787, align 4
  %mul788 = mul nsw i32 %475, %476
  %mul789 = mul nsw i32 %mul788, 3
  %idxprom790 = sext i32 %mul789 to i64
  %col791 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %477 = load i8*, i8** %col791, align 8
  %arrayidx792 = getelementptr inbounds i8, i8* %477, i64 %idxprom790
  store i8* %arrayidx792, i8** %dstrow786, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.793

for.cond.793:                                     ; preds = %for.inc.810, %for.body.784
  %478 = load i32, i32* %x, align 4
  %width794 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %479 = load i32, i32* %width794, align 4
  %cmp795 = icmp slt i32 %478, %479
  br i1 %cmp795, label %for.body.797, label %for.end.812

for.body.797:                                     ; preds = %for.cond.793
  %480 = load i32, i32* %cy, align 4
  %481 = load i32, i32* %y, align 4
  %sub798 = sub nsw i32 %480, %481
  %conv799 = sitofp i32 %sub798 to double
  %482 = load i32, i32* %cx, align 4
  %483 = load i32, i32* %x, align 4
  %sub800 = sub nsw i32 %482, %483
  %conv801 = sitofp i32 %sub800 to double
  %call802 = call double @atan2(double %conv799, double %conv801) #1
  %add803 = fadd double 0x400921FB54442D18, %call802
  %mul804 = fmul double %add803, 2.550000e+02
  %div805 = fdiv double %mul804, 0x401921FB54442D18
  %conv806 = fptoui double %div805 to i8
  %484 = load i32, i32* %x, align 4
  %mul807 = mul nsw i32 %484, 3
  %idxprom808 = sext i32 %mul807 to i64
  %485 = load i8*, i8** %dstrow786, align 8
  %arrayidx809 = getelementptr inbounds i8, i8* %485, i64 %idxprom808
  store i8 %conv806, i8* %arrayidx809, align 1
  br label %for.inc.810

for.inc.810:                                      ; preds = %for.body.797
  %486 = load i32, i32* %x, align 4
  %inc811 = add nsw i32 %486, 1
  store i32 %inc811, i32* %x, align 4
  br label %for.cond.793

for.end.812:                                      ; preds = %for.cond.793
  br label %for.inc.813

for.inc.813:                                      ; preds = %for.end.812
  %487 = load i32, i32* %y, align 4
  %inc814 = add nsw i32 %487, 1
  store i32 %inc814, i32* %y, align 4
  br label %for.cond.780

for.end.815:                                      ; preds = %for.cond.780
  br label %if.end.941

if.else.816:                                      ; preds = %if.else.774
  %488 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp817 = icmp eq i32 %488, 4
  br i1 %cmp817, label %if.then.819, label %if.else.831

if.then.819:                                      ; preds = %if.else.816
  %489 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width820 = getelementptr inbounds %struct.ppm, %struct.ppm* %489, i32 0, i32 0
  %490 = load i32, i32* %width820, align 4
  %div821 = sdiv i32 %490, 6
  %add822 = add nsw i32 %div821, 5
  %491 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height823 = getelementptr inbounds %struct.ppm, %struct.ppm* %491, i32 0, i32 1
  %492 = load i32, i32* %height823, align 4
  %div824 = sdiv i32 %492, 6
  %add825 = add nsw i32 %div824, 5
  call void @ppm_new(%struct.ppm* %sizmap, i32 %add822, i32 %add825)
  call void @mkgrayplasma(%struct.ppm* %sizmap, float 1.500000e+01)
  call void @blur(%struct.ppm* %sizmap, i32 2, i32 2)
  call void @blur(%struct.ppm* %sizmap, i32 2, i32 2)
  %493 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width826 = getelementptr inbounds %struct.ppm, %struct.ppm* %493, i32 0, i32 0
  %494 = load i32, i32* %width826, align 4
  %495 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height827 = getelementptr inbounds %struct.ppm, %struct.ppm* %495, i32 0, i32 1
  %496 = load i32, i32* %height827, align 4
  call void @resize(%struct.ppm* %sizmap, i32 %494, i32 %496)
  call void @blur(%struct.ppm* %sizmap, i32 2, i32 2)
  %497 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool828 = icmp ne i32 %497, 0
  br i1 %tobool828, label %if.then.829, label %if.end.830

if.then.829:                                      ; preds = %if.then.819
  %498 = load i32, i32* %maxbrushwidth, align 4
  %499 = load i32, i32* %maxbrushheight, align 4
  %500 = load i32, i32* %maxbrushwidth, align 4
  %501 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %sizmap, i32 %498, i32 %499, i32 %500, i32 %501)
  br label %if.end.830

if.end.830:                                       ; preds = %if.then.829, %if.then.819
  br label %if.end.940

if.else.831:                                      ; preds = %if.else.816
  %502 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp832 = icmp eq i32 %502, 5
  br i1 %cmp832, label %if.then.834, label %if.else.877

if.then.834:                                      ; preds = %if.else.831
  %503 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width835 = getelementptr inbounds %struct.ppm, %struct.ppm* %503, i32 0, i32 0
  %504 = load i32, i32* %width835, align 4
  %505 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height836 = getelementptr inbounds %struct.ppm, %struct.ppm* %505, i32 0, i32 1
  %506 = load i32, i32* %height836, align 4
  call void @ppm_new(%struct.ppm* %sizmap, i32 %504, i32 %506)
  store i32 0, i32* %y, align 4
  br label %for.cond.837

for.cond.837:                                     ; preds = %for.inc.874, %if.then.834
  %507 = load i32, i32* %y, align 4
  %height838 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %508 = load i32, i32* %height838, align 4
  %cmp839 = icmp slt i32 %507, %508
  br i1 %cmp839, label %for.body.841, label %for.end.876

for.body.841:                                     ; preds = %for.cond.837
  %509 = load i32, i32* %y, align 4
  %width844 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %510 = load i32, i32* %width844, align 4
  %mul845 = mul nsw i32 %509, %510
  %mul846 = mul nsw i32 %mul845, 3
  %idxprom847 = sext i32 %mul846 to i64
  %col848 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %511 = load i8*, i8** %col848, align 8
  %arrayidx849 = getelementptr inbounds i8, i8* %511, i64 %idxprom847
  store i8* %arrayidx849, i8** %dstrow843, align 8
  %512 = load i32, i32* %y, align 4
  %513 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width852 = getelementptr inbounds %struct.ppm, %struct.ppm* %513, i32 0, i32 0
  %514 = load i32, i32* %width852, align 4
  %mul853 = mul nsw i32 %512, %514
  %mul854 = mul nsw i32 %mul853, 3
  %idxprom855 = sext i32 %mul854 to i64
  %515 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col856 = getelementptr inbounds %struct.ppm, %struct.ppm* %515, i32 0, i32 2
  %516 = load i8*, i8** %col856, align 8
  %arrayidx857 = getelementptr inbounds i8, i8* %516, i64 %idxprom855
  store i8* %arrayidx857, i8** %srcrow851, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.858

for.cond.858:                                     ; preds = %for.inc.871, %for.body.841
  %517 = load i32, i32* %x, align 4
  %width859 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %518 = load i32, i32* %width859, align 4
  %cmp860 = icmp slt i32 %517, %518
  br i1 %cmp860, label %for.body.862, label %for.end.873

for.body.862:                                     ; preds = %for.cond.858
  %519 = load i32, i32* %x, align 4
  %mul863 = mul nsw i32 %519, 3
  %idxprom864 = sext i32 %mul863 to i64
  %520 = load i8*, i8** %srcrow851, align 8
  %arrayidx865 = getelementptr inbounds i8, i8* %520, i64 %idxprom864
  %call866 = call i32 @get_hue(i8* %arrayidx865)
  %conv867 = trunc i32 %call866 to i8
  %521 = load i32, i32* %x, align 4
  %mul868 = mul nsw i32 %521, 3
  %idxprom869 = sext i32 %mul868 to i64
  %522 = load i8*, i8** %dstrow843, align 8
  %arrayidx870 = getelementptr inbounds i8, i8* %522, i64 %idxprom869
  store i8 %conv867, i8* %arrayidx870, align 1
  br label %for.inc.871

for.inc.871:                                      ; preds = %for.body.862
  %523 = load i32, i32* %x, align 4
  %inc872 = add nsw i32 %523, 1
  store i32 %inc872, i32* %x, align 4
  br label %for.cond.858

for.end.873:                                      ; preds = %for.cond.858
  br label %for.inc.874

for.inc.874:                                      ; preds = %for.end.873
  %524 = load i32, i32* %y, align 4
  %inc875 = add nsw i32 %524, 1
  store i32 %inc875, i32* %y, align 4
  br label %for.cond.837

for.end.876:                                      ; preds = %for.cond.837
  br label %if.end.939

if.else.877:                                      ; preds = %if.else.831
  %525 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp878 = icmp eq i32 %525, 6
  br i1 %cmp878, label %if.then.880, label %if.else.886

if.then.880:                                      ; preds = %if.else.877
  %526 = bitcast [3 x i8]* %tmpcol882 to i8*
  call void @llvm.memset.p0i8.i64(i8* %526, i8 0, i64 3, i32 1, i1 false)
  %527 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width883 = getelementptr inbounds %struct.ppm, %struct.ppm* %527, i32 0, i32 0
  %528 = load i32, i32* %width883, align 4
  %529 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height884 = getelementptr inbounds %struct.ppm, %struct.ppm* %529, i32 0, i32 1
  %530 = load i32, i32* %height884, align 4
  call void @ppm_new(%struct.ppm* %sizmap, i32 %528, i32 %530)
  %arraydecay885 = getelementptr inbounds [3 x i8], [3 x i8]* %tmpcol882, i32 0, i32 0
  call void @fill(%struct.ppm* %sizmap, i8* %arraydecay885)
  br label %if.end.938

if.else.886:                                      ; preds = %if.else.877
  %531 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp887 = icmp eq i32 %531, 7
  br i1 %cmp887, label %if.then.889, label %if.end.937

if.then.889:                                      ; preds = %if.else.886
  %532 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width890 = getelementptr inbounds %struct.ppm, %struct.ppm* %532, i32 0, i32 0
  %533 = load i32, i32* %width890, align 4
  %534 = load i32, i32* %maxbrushwidth, align 4
  %mul891 = mul nsw i32 %534, 2
  %sub892 = sub nsw i32 %533, %mul891
  %535 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height893 = getelementptr inbounds %struct.ppm, %struct.ppm* %535, i32 0, i32 1
  %536 = load i32, i32* %height893, align 4
  %537 = load i32, i32* %maxbrushheight, align 4
  %mul894 = mul nsw i32 %537, 2
  %sub895 = sub nsw i32 %536, %mul894
  call void @ppm_new(%struct.ppm* %sizmap, i32 %sub892, i32 %sub895)
  store i32 0, i32* %y, align 4
  br label %for.cond.896

for.cond.896:                                     ; preds = %for.inc.934, %if.then.889
  %538 = load i32, i32* %y, align 4
  %height897 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %539 = load i32, i32* %height897, align 4
  %cmp898 = icmp slt i32 %538, %539
  br i1 %cmp898, label %for.body.900, label %for.end.936

for.body.900:                                     ; preds = %for.cond.896
  %540 = load i32, i32* %y, align 4
  %width903 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %541 = load i32, i32* %width903, align 4
  %mul904 = mul nsw i32 %540, %541
  %mul905 = mul nsw i32 %mul904, 3
  %idxprom906 = sext i32 %mul905 to i64
  %col907 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %542 = load i8*, i8** %col907, align 8
  %arrayidx908 = getelementptr inbounds i8, i8* %542, i64 %idxprom906
  store i8* %arrayidx908, i8** %dstrow902, align 8
  %543 = load i32, i32* %y, align 4
  %conv911 = sitofp i32 %543 to double
  %height912 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 1
  %544 = load i32, i32* %height912, align 4
  %conv913 = sitofp i32 %544 to double
  %div914 = fdiv double %conv911, %conv913
  store double %div914, double* %tmpy910, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.915

for.cond.915:                                     ; preds = %for.inc.931, %for.body.900
  %545 = load i32, i32* %x, align 4
  %width916 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %546 = load i32, i32* %width916, align 4
  %cmp917 = icmp slt i32 %545, %546
  br i1 %cmp917, label %for.body.919, label %for.end.933

for.body.919:                                     ; preds = %for.cond.915
  %547 = load i32, i32* %x, align 4
  %conv920 = sitofp i32 %547 to double
  %width921 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %548 = load i32, i32* %width921, align 4
  %conv922 = sitofp i32 %548 to double
  %div923 = fdiv double %conv920, %conv922
  %549 = load double, double* %tmpy910, align 8
  %call924 = call double @get_siz_from_pcvals(double %div923, double %549)
  %sub925 = fsub double 1.000000e+00, %call924
  %mul926 = fmul double 2.550000e+02, %sub925
  %conv927 = fptoui double %mul926 to i8
  %550 = load i32, i32* %x, align 4
  %mul928 = mul nsw i32 %550, 3
  %idxprom929 = sext i32 %mul928 to i64
  %551 = load i8*, i8** %dstrow902, align 8
  %arrayidx930 = getelementptr inbounds i8, i8* %551, i64 %idxprom929
  store i8 %conv927, i8* %arrayidx930, align 1
  br label %for.inc.931

for.inc.931:                                      ; preds = %for.body.919
  %552 = load i32, i32* %x, align 4
  %inc932 = add nsw i32 %552, 1
  store i32 %inc932, i32* %x, align 4
  br label %for.cond.915

for.end.933:                                      ; preds = %for.cond.915
  br label %for.inc.934

for.inc.934:                                      ; preds = %for.end.933
  %553 = load i32, i32* %y, align 4
  %inc935 = add nsw i32 %553, 1
  store i32 %inc935, i32* %y, align 4
  br label %for.cond.896

for.end.936:                                      ; preds = %for.cond.896
  %554 = load i32, i32* %maxbrushwidth, align 4
  %555 = load i32, i32* %maxbrushwidth, align 4
  %556 = load i32, i32* %maxbrushheight, align 4
  %557 = load i32, i32* %maxbrushheight, align 4
  call void @edgepad(%struct.ppm* %sizmap, i32 %554, i32 %555, i32 %556, i32 %557)
  br label %if.end.937

if.end.937:                                       ; preds = %for.end.936, %if.else.886
  br label %if.end.938

if.end.938:                                       ; preds = %if.end.937, %if.then.880
  br label %if.end.939

if.end.939:                                       ; preds = %if.end.938, %for.end.876
  br label %if.end.940

if.end.940:                                       ; preds = %if.end.939, %if.end.830
  br label %if.end.941

if.end.941:                                       ; preds = %if.end.940, %for.end.815
  br label %if.end.942

if.end.942:                                       ; preds = %if.end.941, %for.end.773
  br label %if.end.943

if.end.943:                                       ; preds = %if.end.942, %for.end.724
  %558 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp944 = icmp eq i32 %558, 0
  br i1 %cmp944, label %if.then.946, label %if.else.955

if.then.946:                                      ; preds = %if.end.943
  %width947 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %559 = load i32, i32* %width947, align 4
  %height948 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %560 = load i32, i32* %height948, align 4
  %mul949 = mul nsw i32 %559, %560
  %561 = load i32, i32* %maxbrushwidth, align 4
  %562 = load i32, i32* %maxbrushheight, align 4
  %mul950 = mul nsw i32 %561, %562
  %div951 = sdiv i32 %mul949, %mul950
  store i32 %div951, i32* %i, align 4
  %563 = load double, double* %density, align 8
  %564 = load i32, i32* %i, align 4
  %conv952 = sitofp i32 %564 to double
  %mul953 = fmul double %conv952, %563
  %conv954 = fptosi double %mul953 to i32
  store i32 %conv954, i32* %i, align 4
  br label %if.end.973

if.else.955:                                      ; preds = %if.end.943
  %565 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp956 = icmp eq i32 %565, 1
  br i1 %cmp956, label %if.then.958, label %if.end.972

if.then.958:                                      ; preds = %if.else.955
  %width959 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %566 = load i32, i32* %width959, align 4
  %conv960 = sitofp i32 %566 to double
  %567 = load double, double* %density, align 8
  %mul961 = fmul double %conv960, %567
  %568 = load i32, i32* %maxbrushwidth, align 4
  %conv962 = sitofp i32 %568 to double
  %div963 = fdiv double %mul961, %conv962
  %conv964 = fptosi double %div963 to i32
  %height965 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %569 = load i32, i32* %height965, align 4
  %conv966 = sitofp i32 %569 to double
  %570 = load double, double* %density, align 8
  %mul967 = fmul double %conv966, %570
  %571 = load i32, i32* %maxbrushheight, align 4
  %conv968 = sitofp i32 %571 to double
  %div969 = fdiv double %mul967, %conv968
  %conv970 = fptosi double %div969 to i32
  %mul971 = mul nsw i32 %conv964, %conv970
  store i32 %mul971, i32* %i, align 4
  br label %if.end.972

if.end.972:                                       ; preds = %if.then.958, %if.else.955
  br label %if.end.973

if.end.973:                                       ; preds = %if.end.972, %if.then.946
  %572 = load i32, i32* %i, align 4
  %cmp974 = icmp slt i32 %572, 1
  br i1 %cmp974, label %if.then.976, label %if.end.977

if.then.976:                                      ; preds = %if.end.973
  store i32 1, i32* %i, align 4
  br label %if.end.977

if.end.977:                                       ; preds = %if.then.976, %if.end.973
  %573 = load i32, i32* %i, align 4
  store i32 %573, i32* %max_progress, align 4
  %574 = load i32, i32* %max_progress, align 4
  %div978 = sdiv i32 %574, 30
  store i32 %div978, i32* %progstep, align 4
  %575 = load i32, i32* %progstep, align 4
  %cmp979 = icmp slt i32 %575, 10
  br i1 %cmp979, label %if.then.981, label %if.end.982

if.then.981:                                      ; preds = %if.end.977
  store i32 10, i32* %progstep, align 4
  br label %if.end.982

if.end.982:                                       ; preds = %if.then.981, %if.end.977
  %576 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp983 = icmp eq i32 %576, 1
  br i1 %cmp983, label %if.then.985, label %if.end.1059

if.then.985:                                      ; preds = %if.end.982
  %577 = load i32, i32* %i, align 4
  %conv988 = sext i32 %577 to i64
  %call989 = call noalias i8* @g_malloc_n(i64 %conv988, i64 4)
  %578 = bitcast i8* %call989 to i32*
  store i32* %578, i32** %xpos, align 8
  %579 = load i32, i32* %i, align 4
  %conv990 = sext i32 %579 to i64
  %call991 = call noalias i8* @g_malloc_n(i64 %conv990, i64 4)
  %580 = bitcast i8* %call991 to i32*
  store i32* %580, i32** %ypos, align 8
  store i32 0, i32* %j987, align 4
  br label %for.cond.992

for.cond.992:                                     ; preds = %for.inc.1028, %if.then.985
  %581 = load i32, i32* %j987, align 4
  %582 = load i32, i32* %i, align 4
  %cmp993 = icmp slt i32 %581, %582
  br i1 %cmp993, label %for.body.995, label %for.end.1030

for.body.995:                                     ; preds = %for.cond.992
  %width997 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %583 = load i32, i32* %width997, align 4
  %conv998 = sitofp i32 %583 to double
  %584 = load double, double* %density, align 8
  %mul999 = fmul double %conv998, %584
  %585 = load i32, i32* %maxbrushwidth, align 4
  %conv1000 = sitofp i32 %585 to double
  %div1001 = fdiv double %mul999, %conv1000
  %add1002 = fadd double %div1001, 5.000000e-01
  %conv1003 = fptosi double %add1002 to i32
  store i32 %conv1003, i32* %factor, align 4
  %586 = load i32, i32* %factor, align 4
  %cmp1004 = icmp slt i32 %586, 1
  br i1 %cmp1004, label %if.then.1006, label %if.end.1007

if.then.1006:                                     ; preds = %for.body.995
  store i32 1, i32* %factor, align 4
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.then.1006, %for.body.995
  %587 = load i32, i32* %maxbrushwidth, align 4
  %div1008 = sdiv i32 %587, 2
  %conv1009 = sitofp i32 %div1008 to double
  %588 = load i32, i32* %j987, align 4
  %589 = load i32, i32* %factor, align 4
  %rem1010 = srem i32 %588, %589
  %590 = load i32, i32* %maxbrushwidth, align 4
  %mul1011 = mul nsw i32 %rem1010, %590
  %conv1012 = sitofp i32 %mul1011 to double
  %591 = load double, double* %density, align 8
  %div1013 = fdiv double %conv1012, %591
  %add1014 = fadd double %conv1009, %div1013
  %conv1015 = fptosi double %add1014 to i32
  %592 = load i32, i32* %j987, align 4
  %idxprom1016 = sext i32 %592 to i64
  %593 = load i32*, i32** %xpos, align 8
  %arrayidx1017 = getelementptr inbounds i32, i32* %593, i64 %idxprom1016
  store i32 %conv1015, i32* %arrayidx1017, align 4
  %594 = load i32, i32* %maxbrushheight, align 4
  %div1018 = sdiv i32 %594, 2
  %conv1019 = sitofp i32 %div1018 to double
  %595 = load i32, i32* %j987, align 4
  %596 = load i32, i32* %factor, align 4
  %div1020 = sdiv i32 %595, %596
  %597 = load i32, i32* %maxbrushheight, align 4
  %mul1021 = mul nsw i32 %div1020, %597
  %conv1022 = sitofp i32 %mul1021 to double
  %598 = load double, double* %density, align 8
  %div1023 = fdiv double %conv1022, %598
  %add1024 = fadd double %conv1019, %div1023
  %conv1025 = fptosi double %add1024 to i32
  %599 = load i32, i32* %j987, align 4
  %idxprom1026 = sext i32 %599 to i64
  %600 = load i32*, i32** %ypos, align 8
  %arrayidx1027 = getelementptr inbounds i32, i32* %600, i64 %idxprom1026
  store i32 %conv1025, i32* %arrayidx1027, align 4
  br label %for.inc.1028

for.inc.1028:                                     ; preds = %if.end.1007
  %601 = load i32, i32* %j987, align 4
  %inc1029 = add nsw i32 %601, 1
  store i32 %inc1029, i32* %j987, align 4
  br label %for.cond.992

for.end.1030:                                     ; preds = %for.cond.992
  store i32 0, i32* %j987, align 4
  br label %for.cond.1031

for.cond.1031:                                    ; preds = %for.inc.1056, %for.end.1030
  %602 = load i32, i32* %j987, align 4
  %603 = load i32, i32* %i, align 4
  %cmp1032 = icmp slt i32 %602, %603
  br i1 %cmp1032, label %for.body.1034, label %for.end.1058

for.body.1034:                                    ; preds = %for.cond.1031
  %604 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %605 = load i32, i32* %i, align 4
  %call1039 = call i32 @g_rand_int_range(%struct._GRand* %604, i32 0, i32 %605)
  store i32 %call1039, i32* %a1036, align 4
  %606 = load i32, i32* %j987, align 4
  %idxprom1040 = sext i32 %606 to i64
  %607 = load i32*, i32** %xpos, align 8
  %arrayidx1041 = getelementptr inbounds i32, i32* %607, i64 %idxprom1040
  %608 = load i32, i32* %arrayidx1041, align 4
  store i32 %608, i32* %b1038, align 4
  %609 = load i32, i32* %a1036, align 4
  %idxprom1042 = sext i32 %609 to i64
  %610 = load i32*, i32** %xpos, align 8
  %arrayidx1043 = getelementptr inbounds i32, i32* %610, i64 %idxprom1042
  %611 = load i32, i32* %arrayidx1043, align 4
  %612 = load i32, i32* %j987, align 4
  %idxprom1044 = sext i32 %612 to i64
  %613 = load i32*, i32** %xpos, align 8
  %arrayidx1045 = getelementptr inbounds i32, i32* %613, i64 %idxprom1044
  store i32 %611, i32* %arrayidx1045, align 4
  %614 = load i32, i32* %b1038, align 4
  %615 = load i32, i32* %a1036, align 4
  %idxprom1046 = sext i32 %615 to i64
  %616 = load i32*, i32** %xpos, align 8
  %arrayidx1047 = getelementptr inbounds i32, i32* %616, i64 %idxprom1046
  store i32 %614, i32* %arrayidx1047, align 4
  %617 = load i32, i32* %j987, align 4
  %idxprom1048 = sext i32 %617 to i64
  %618 = load i32*, i32** %ypos, align 8
  %arrayidx1049 = getelementptr inbounds i32, i32* %618, i64 %idxprom1048
  %619 = load i32, i32* %arrayidx1049, align 4
  store i32 %619, i32* %b1038, align 4
  %620 = load i32, i32* %a1036, align 4
  %idxprom1050 = sext i32 %620 to i64
  %621 = load i32*, i32** %ypos, align 8
  %arrayidx1051 = getelementptr inbounds i32, i32* %621, i64 %idxprom1050
  %622 = load i32, i32* %arrayidx1051, align 4
  %623 = load i32, i32* %j987, align 4
  %idxprom1052 = sext i32 %623 to i64
  %624 = load i32*, i32** %ypos, align 8
  %arrayidx1053 = getelementptr inbounds i32, i32* %624, i64 %idxprom1052
  store i32 %622, i32* %arrayidx1053, align 4
  %625 = load i32, i32* %b1038, align 4
  %626 = load i32, i32* %a1036, align 4
  %idxprom1054 = sext i32 %626 to i64
  %627 = load i32*, i32** %ypos, align 8
  %arrayidx1055 = getelementptr inbounds i32, i32* %627, i64 %idxprom1054
  store i32 %625, i32* %arrayidx1055, align 4
  br label %for.inc.1056

for.inc.1056:                                     ; preds = %for.body.1034
  %628 = load i32, i32* %j987, align 4
  %inc1057 = add nsw i32 %628, 1
  store i32 %inc1057, i32* %j987, align 4
  br label %for.cond.1031

for.end.1058:                                     ; preds = %for.cond.1031
  br label %if.end.1059

if.end.1059:                                      ; preds = %for.end.1058, %if.end.982
  br label %for.cond.1060

for.cond.1060:                                    ; preds = %for.inc.1496, %if.end.1059
  %629 = load i32, i32* %i, align 4
  %tobool1061 = icmp ne i32 %629, 0
  br i1 %tobool1061, label %for.body.1062, label %for.end.1497

for.body.1062:                                    ; preds = %for.cond.1060
  %630 = load i32, i32* %i, align 4
  %631 = load i32, i32* %progstep, align 4
  %rem1065 = srem i32 %630, %631
  %cmp1066 = icmp eq i32 %rem1065, 0
  br i1 %cmp1066, label %if.then.1068, label %if.end.1091

if.then.1068:                                     ; preds = %for.body.1062
  %632 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 13), align 4
  %tobool1069 = icmp ne i32 %632, 0
  br i1 %tobool1069, label %if.then.1070, label %if.else.1077

if.then.1070:                                     ; preds = %if.then.1068
  %633 = load i32, i32* %i, align 4
  %conv1071 = sitofp i32 %633 to double
  %634 = load i32, i32* %max_progress, align 4
  %conv1072 = sitofp i32 %634 to double
  %div1073 = fdiv double %conv1071, %conv1072
  %mul1074 = fmul double 8.000000e-01, %div1073
  %sub1075 = fsub double 8.000000e-01, %mul1074
  %call1076 = call i32 @gimp_progress_update(double %sub1075)
  br label %if.end.1090

if.else.1077:                                     ; preds = %if.then.1068
  %arraydecay1079 = getelementptr inbounds [40 x i8], [40 x i8]* %tmps, i32 0, i32 0
  %635 = load i32, i32* %i, align 4
  %conv1080 = sitofp i32 %635 to double
  %636 = load i32, i32* %max_progress, align 4
  %conv1081 = sitofp i32 %636 to double
  %div1082 = fdiv double %conv1080, %conv1081
  %sub1083 = fsub double 1.000000e+00, %div1082
  %mul1084 = fmul double 1.000000e+02, %sub1083
  %call1085 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1079, i64 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double %mul1084)
  %arraydecay1086 = getelementptr inbounds [40 x i8], [40 x i8]* %tmps, i32 0, i32 0
  call void @preview_set_button_label(i8* %arraydecay1086)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.1077
  %call1087 = call i32 @gtk_events_pending()
  %tobool1088 = icmp ne i32 %call1087, 0
  br i1 %tobool1088, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1089 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.1090

if.end.1090:                                      ; preds = %while.end, %if.then.1070
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.end.1090, %for.body.1062
  %637 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp1092 = icmp eq i32 %637, 0
  br i1 %cmp1092, label %if.then.1094, label %if.else.1105

if.then.1094:                                     ; preds = %if.end.1091
  %638 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %639 = load i32, i32* %maxbrushwidth, align 4
  %div1095 = sdiv i32 %639, 2
  %width1096 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %640 = load i32, i32* %width1096, align 4
  %641 = load i32, i32* %maxbrushwidth, align 4
  %div1097 = sdiv i32 %641, 2
  %sub1098 = sub nsw i32 %640, %div1097
  %call1099 = call i32 @g_rand_int_range(%struct._GRand* %638, i32 %div1095, i32 %sub1098)
  store i32 %call1099, i32* %tx, align 4
  %642 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %643 = load i32, i32* %maxbrushheight, align 4
  %div1100 = sdiv i32 %643, 2
  %height1101 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %644 = load i32, i32* %height1101, align 4
  %645 = load i32, i32* %maxbrushheight, align 4
  %div1102 = sdiv i32 %645, 2
  %sub1103 = sub nsw i32 %644, %div1102
  %call1104 = call i32 @g_rand_int_range(%struct._GRand* %642, i32 %div1100, i32 %sub1103)
  store i32 %call1104, i32* %ty, align 4
  br label %if.end.1116

if.else.1105:                                     ; preds = %if.end.1091
  %646 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 18), align 4
  %cmp1106 = icmp eq i32 %646, 1
  br i1 %cmp1106, label %if.then.1108, label %if.end.1115

if.then.1108:                                     ; preds = %if.else.1105
  %647 = load i32, i32* %i, align 4
  %sub1109 = sub nsw i32 %647, 1
  %idxprom1110 = sext i32 %sub1109 to i64
  %648 = load i32*, i32** %xpos, align 8
  %arrayidx1111 = getelementptr inbounds i32, i32* %648, i64 %idxprom1110
  %649 = load i32, i32* %arrayidx1111, align 4
  store i32 %649, i32* %tx, align 4
  %650 = load i32, i32* %i, align 4
  %sub1112 = sub nsw i32 %650, 1
  %idxprom1113 = sext i32 %sub1112 to i64
  %651 = load i32*, i32** %ypos, align 8
  %arrayidx1114 = getelementptr inbounds i32, i32* %651, i64 %idxprom1113
  %652 = load i32, i32* %arrayidx1114, align 4
  store i32 %652, i32* %ty, align 4
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.then.1108, %if.else.1105
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.end.1115, %if.then.1094
  %653 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 21), align 4
  %tobool1117 = icmp ne i32 %653, 0
  br i1 %tobool1117, label %if.then.1118, label %if.end.1139

if.then.1118:                                     ; preds = %if.end.1116
  %654 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %call1120 = call double @g_rand_double_range(%struct._GRand* %654, double 0.000000e+00, double 7.500000e-01)
  store double %call1120, double* %z, align 8
  %655 = load i32, i32* %tx, align 4
  %conv1121 = sitofp i32 %655 to double
  %656 = load double, double* %z, align 8
  %sub1122 = fsub double 1.000000e+00, %656
  %mul1123 = fmul double %conv1121, %sub1122
  %width1124 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %657 = load i32, i32* %width1124, align 4
  %div1125 = sdiv i32 %657, 2
  %conv1126 = sitofp i32 %div1125 to double
  %658 = load double, double* %z, align 8
  %mul1127 = fmul double %conv1126, %658
  %add1128 = fadd double %mul1123, %mul1127
  %conv1129 = fptosi double %add1128 to i32
  store i32 %conv1129, i32* %tx, align 4
  %659 = load i32, i32* %ty, align 4
  %conv1130 = sitofp i32 %659 to double
  %660 = load double, double* %z, align 8
  %sub1131 = fsub double 1.000000e+00, %660
  %mul1132 = fmul double %conv1130, %sub1131
  %height1133 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %661 = load i32, i32* %height1133, align 4
  %div1134 = sdiv i32 %661, 2
  %conv1135 = sitofp i32 %div1134 to double
  %662 = load double, double* %z, align 8
  %mul1136 = fmul double %conv1135, %662
  %add1137 = fadd double %mul1132, %mul1136
  %conv1138 = fptosi double %add1137 to i32
  store i32 %conv1138, i32* %ty, align 4
  br label %if.end.1139

if.end.1139:                                      ; preds = %if.then.1118, %if.end.1116
  %663 = load i32, i32* %tx, align 4
  %664 = load i32, i32* %maxbrushwidth, align 4
  %div1140 = sdiv i32 %664, 2
  %cmp1141 = icmp slt i32 %663, %div1140
  br i1 %cmp1141, label %if.then.1159, label %lor.lhs.false.1143

lor.lhs.false.1143:                               ; preds = %if.end.1139
  %665 = load i32, i32* %ty, align 4
  %666 = load i32, i32* %maxbrushwidth, align 4
  %div1144 = sdiv i32 %666, 2
  %cmp1145 = icmp slt i32 %665, %div1144
  br i1 %cmp1145, label %if.then.1159, label %lor.lhs.false.1147

lor.lhs.false.1147:                               ; preds = %lor.lhs.false.1143
  %667 = load i32, i32* %tx, align 4
  %668 = load i32, i32* %maxbrushwidth, align 4
  %div1148 = sdiv i32 %668, 2
  %add1149 = add nsw i32 %667, %div1148
  %669 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1150 = getelementptr inbounds %struct.ppm, %struct.ppm* %669, i32 0, i32 0
  %670 = load i32, i32* %width1150, align 4
  %cmp1151 = icmp sge i32 %add1149, %670
  br i1 %cmp1151, label %if.then.1159, label %lor.lhs.false.1153

lor.lhs.false.1153:                               ; preds = %lor.lhs.false.1147
  %671 = load i32, i32* %ty, align 4
  %672 = load i32, i32* %maxbrushheight, align 4
  %div1154 = sdiv i32 %672, 2
  %add1155 = add nsw i32 %671, %div1154
  %673 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height1156 = getelementptr inbounds %struct.ppm, %struct.ppm* %673, i32 0, i32 1
  %674 = load i32, i32* %height1156, align 4
  %cmp1157 = icmp sge i32 %add1155, %674
  br i1 %cmp1157, label %if.then.1159, label %if.end.1160

if.then.1159:                                     ; preds = %lor.lhs.false.1153, %lor.lhs.false.1147, %lor.lhs.false.1143, %if.end.1139
  br label %for.inc.1496

if.end.1160:                                      ; preds = %lor.lhs.false.1153
  %675 = load i32, i32* @img_has_alpha, align 4
  %tobool1161 = icmp ne i32 %675, 0
  br i1 %tobool1161, label %if.then.1162, label %if.end.1176

if.then.1162:                                     ; preds = %if.end.1160
  %676 = load i32, i32* %ty, align 4
  %677 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %width1163 = getelementptr inbounds %struct.ppm, %struct.ppm* %677, i32 0, i32 0
  %678 = load i32, i32* %width1163, align 4
  %mul1164 = mul nsw i32 %676, %678
  %mul1165 = mul nsw i32 %mul1164, 3
  %679 = load i32, i32* %tx, align 4
  %mul1166 = mul nsw i32 %679, 3
  %add1167 = add nsw i32 %mul1165, %mul1166
  %idxprom1168 = sext i32 %add1167 to i64
  %680 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %col1169 = getelementptr inbounds %struct.ppm, %struct.ppm* %680, i32 0, i32 2
  %681 = load i8*, i8** %col1169, align 8
  %arrayidx1170 = getelementptr inbounds i8, i8* %681, i64 %idxprom1168
  %682 = load i8, i8* %arrayidx1170, align 1
  %conv1171 = zext i8 %682 to i32
  %cmp1172 = icmp sgt i32 %conv1171, 128
  br i1 %cmp1172, label %if.then.1174, label %if.end.1175

if.then.1174:                                     ; preds = %if.then.1162
  br label %for.inc.1496

if.end.1175:                                      ; preds = %if.then.1162
  br label %if.end.1176

if.end.1176:                                      ; preds = %if.end.1175, %if.end.1160
  store i32 0, i32* %on, align 4
  store i32 0, i32* %sn, align 4
  %683 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 3), align 4
  switch i32 %683, label %sw.default [
    i32 2, label %sw.bb.1177
    i32 0, label %sw.bb.1179
    i32 1, label %sw.bb.1179
    i32 3, label %sw.bb.1179
    i32 4, label %sw.bb.1179
    i32 5, label %sw.bb.1179
    i32 7, label %sw.bb.1179
    i32 6, label %sw.bb.1191
  ]

sw.bb.1177:                                       ; preds = %if.end.1176
  %684 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %685 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %call1178 = call i32 @g_rand_int_range(%struct._GRand* %684, i32 0, i32 %685)
  store i32 %call1178, i32* %on, align 4
  br label %sw.epilog.1192

sw.bb.1179:                                       ; preds = %if.end.1176, %if.end.1176, %if.end.1176, %if.end.1176, %if.end.1176, %if.end.1176
  %686 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %687 = load i32, i32* %ty, align 4
  %width1180 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 0
  %688 = load i32, i32* %width1180, align 4
  %mul1181 = mul nsw i32 %687, %688
  %mul1182 = mul nsw i32 %mul1181, 3
  %689 = load i32, i32* %tx, align 4
  %mul1183 = mul nsw i32 %689, 3
  %add1184 = add nsw i32 %mul1182, %mul1183
  %idxprom1185 = sext i32 %add1184 to i64
  %col1186 = getelementptr inbounds %struct.ppm, %struct.ppm* %dirmap, i32 0, i32 2
  %690 = load i8*, i8** %col1186, align 8
  %arrayidx1187 = getelementptr inbounds i8, i8* %690, i64 %idxprom1185
  %691 = load i8, i8* %arrayidx1187, align 1
  %conv1188 = zext i8 %691 to i32
  %mul1189 = mul nsw i32 %686, %conv1188
  %div1190 = sdiv i32 %mul1189, 256
  store i32 %div1190, i32* %on, align 4
  br label %sw.epilog.1192

sw.bb.1191:                                       ; preds = %if.end.1176
  br label %sw.epilog.1192

sw.default:                                       ; preds = %if.end.1176
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %on, align 4
  br label %sw.epilog.1192

sw.epilog.1192:                                   ; preds = %sw.default, %sw.bb.1191, %sw.bb.1179, %sw.bb.1177
  %692 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  switch i32 %692, label %sw.default.1208 [
    i32 2, label %sw.bb.1193
    i32 0, label %sw.bb.1195
    i32 1, label %sw.bb.1195
    i32 3, label %sw.bb.1195
    i32 4, label %sw.bb.1195
    i32 5, label %sw.bb.1195
    i32 7, label %sw.bb.1195
    i32 6, label %sw.bb.1207
  ]

sw.bb.1193:                                       ; preds = %sw.epilog.1192
  %693 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %694 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %call1194 = call i32 @g_rand_int_range(%struct._GRand* %693, i32 0, i32 %694)
  store i32 %call1194, i32* %sn, align 4
  br label %sw.epilog.1209

sw.bb.1195:                                       ; preds = %sw.epilog.1192, %sw.epilog.1192, %sw.epilog.1192, %sw.epilog.1192, %sw.epilog.1192, %sw.epilog.1192
  %695 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 31), align 4
  %696 = load i32, i32* %ty, align 4
  %width1196 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 0
  %697 = load i32, i32* %width1196, align 4
  %mul1197 = mul nsw i32 %696, %697
  %mul1198 = mul nsw i32 %mul1197, 3
  %698 = load i32, i32* %tx, align 4
  %mul1199 = mul nsw i32 %698, 3
  %add1200 = add nsw i32 %mul1198, %mul1199
  %idxprom1201 = sext i32 %add1200 to i64
  %col1202 = getelementptr inbounds %struct.ppm, %struct.ppm* %sizmap, i32 0, i32 2
  %699 = load i8*, i8** %col1202, align 8
  %arrayidx1203 = getelementptr inbounds i8, i8* %699, i64 %idxprom1201
  %700 = load i8, i8* %arrayidx1203, align 1
  %conv1204 = zext i8 %700 to i32
  %mul1205 = mul nsw i32 %695, %conv1204
  %div1206 = sdiv i32 %mul1205, 256
  store i32 %div1206, i32* %sn, align 4
  br label %sw.epilog.1209

sw.bb.1207:                                       ; preds = %sw.epilog.1192
  br label %sw.epilog.1209

sw.default.1208:                                  ; preds = %sw.epilog.1192
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %sn, align 4
  br label %sw.epilog.1209

sw.epilog.1209:                                   ; preds = %sw.default.1208, %sw.bb.1207, %sw.bb.1195, %sw.bb.1193
  %701 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 3), align 4
  %cmp1210 = icmp eq i32 %701, 6
  br i1 %cmp1210, label %if.then.1212, label %if.else.1231

if.then.1212:                                     ; preds = %sw.epilog.1209
  %702 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp1213 = icmp eq i32 %702, 6
  br i1 %cmp1213, label %if.then.1215, label %if.else.1221

if.then.1215:                                     ; preds = %if.then.1212
  %703 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %704 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %705 = load i32, i32* %tx, align 4
  %706 = load i32, i32* %maxbrushwidth, align 4
  %div1216 = sdiv i32 %706, 2
  %sub1217 = sub nsw i32 %705, %div1216
  %707 = load i32, i32* %ty, align 4
  %708 = load i32, i32* %maxbrushheight, align 4
  %div1218 = sdiv i32 %708, 2
  %sub1219 = sub nsw i32 %707, %div1218
  %709 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %710 = load i32, i32* %num_brushes, align 4
  %711 = load double*, double** %brushes_sum, align 8
  %call1220 = call i32 @choose_best_brush(%struct.ppm* %703, %struct.ppm* %704, i32 %sub1217, i32 %sub1219, %struct.ppm* %709, i32 %710, double* %711, i32 0, i32 1)
  store i32 %call1220, i32* %n, align 4
  br label %if.end.1230

if.else.1221:                                     ; preds = %if.then.1212
  %712 = load i32, i32* %sn, align 4
  %713 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %mul1223 = mul nsw i32 %712, %713
  store i32 %mul1223, i32* %st, align 4
  %714 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %715 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %716 = load i32, i32* %tx, align 4
  %717 = load i32, i32* %maxbrushwidth, align 4
  %div1224 = sdiv i32 %717, 2
  %sub1225 = sub nsw i32 %716, %div1224
  %718 = load i32, i32* %ty, align 4
  %719 = load i32, i32* %maxbrushheight, align 4
  %div1226 = sdiv i32 %719, 2
  %sub1227 = sub nsw i32 %718, %div1226
  %720 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %721 = load i32, i32* %st, align 4
  %722 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %add1228 = add nsw i32 %721, %722
  %723 = load double*, double** %brushes_sum, align 8
  %724 = load i32, i32* %st, align 4
  %call1229 = call i32 @choose_best_brush(%struct.ppm* %714, %struct.ppm* %715, i32 %sub1225, i32 %sub1227, %struct.ppm* %720, i32 %add1228, double* %723, i32 %724, i32 1)
  store i32 %call1229, i32* %n, align 4
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.else.1221, %if.then.1215
  br label %if.end.1244

if.else.1231:                                     ; preds = %sw.epilog.1209
  %725 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 34), align 4
  %cmp1232 = icmp eq i32 %725, 6
  br i1 %cmp1232, label %if.then.1234, label %if.else.1240

if.then.1234:                                     ; preds = %if.else.1231
  %726 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %727 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %728 = load i32, i32* %tx, align 4
  %729 = load i32, i32* %maxbrushwidth, align 4
  %div1235 = sdiv i32 %729, 2
  %sub1236 = sub nsw i32 %728, %div1235
  %730 = load i32, i32* %ty, align 4
  %731 = load i32, i32* %maxbrushheight, align 4
  %div1237 = sdiv i32 %731, 2
  %sub1238 = sub nsw i32 %730, %div1237
  %732 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %733 = load i32, i32* %num_brushes, align 4
  %734 = load double*, double** %brushes_sum, align 8
  %735 = load i32, i32* %on, align 4
  %736 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %call1239 = call i32 @choose_best_brush(%struct.ppm* %726, %struct.ppm* %727, i32 %sub1236, i32 %sub1238, %struct.ppm* %732, i32 %733, double* %734, i32 %735, i32 %736)
  store i32 %call1239, i32* %n, align 4
  br label %if.end.1243

if.else.1240:                                     ; preds = %if.else.1231
  %737 = load i32, i32* %sn, align 4
  %738 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 0), align 4
  %mul1241 = mul nsw i32 %737, %738
  %739 = load i32, i32* %on, align 4
  %add1242 = add nsw i32 %mul1241, %739
  store i32 %add1242, i32* %n, align 4
  br label %if.end.1243

if.end.1243:                                      ; preds = %if.else.1240, %if.then.1234
  br label %if.end.1244

if.end.1244:                                      ; preds = %if.end.1243, %if.end.1230
  %740 = load i32, i32* %n, align 4
  %cmp1245 = icmp slt i32 %740, 0
  br i1 %cmp1245, label %if.then.1247, label %if.else.1248

if.then.1247:                                     ; preds = %if.end.1244
  store i32 0, i32* %n, align 4
  br label %if.end.1254

if.else.1248:                                     ; preds = %if.end.1244
  %741 = load i32, i32* %n, align 4
  %742 = load i32, i32* %num_brushes, align 4
  %cmp1249 = icmp sge i32 %741, %742
  br i1 %cmp1249, label %if.then.1251, label %if.end.1253

if.then.1251:                                     ; preds = %if.else.1248
  %743 = load i32, i32* %num_brushes, align 4
  %sub1252 = sub nsw i32 %743, 1
  store i32 %sub1252, i32* %n, align 4
  br label %if.end.1253

if.end.1253:                                      ; preds = %if.then.1251, %if.else.1248
  br label %if.end.1254

if.end.1254:                                      ; preds = %if.end.1253, %if.then.1247
  %744 = load i32, i32* %maxbrushwidth, align 4
  %div1255 = sdiv i32 %744, 2
  %745 = load i32, i32* %tx, align 4
  %sub1256 = sub nsw i32 %745, %div1255
  store i32 %sub1256, i32* %tx, align 4
  %746 = load i32, i32* %maxbrushheight, align 4
  %div1257 = sdiv i32 %746, 2
  %747 = load i32, i32* %ty, align 4
  %sub1258 = sub nsw i32 %747, %div1257
  store i32 %sub1258, i32* %ty, align 4
  %748 = load i32, i32* %n, align 4
  %idxprom1259 = sext i32 %748 to i64
  %749 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx1260 = getelementptr inbounds %struct.ppm, %struct.ppm* %749, i64 %idxprom1259
  store %struct.ppm* %arrayidx1260, %struct.ppm** %brush, align 8
  %750 = load i32, i32* %dropshadow, align 4
  %tobool1261 = icmp ne i32 %750, 0
  br i1 %tobool1261, label %if.then.1262, label %if.end.1265

if.then.1262:                                     ; preds = %if.end.1254
  %751 = load i32, i32* %n, align 4
  %idxprom1263 = sext i32 %751 to i64
  %752 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %arrayidx1264 = getelementptr inbounds %struct.ppm, %struct.ppm* %752, i64 %idxprom1263
  store %struct.ppm* %arrayidx1264, %struct.ppm** %shadow, align 8
  br label %if.end.1265

if.end.1265:                                      ; preds = %if.then.1262, %if.end.1254
  %753 = load i32, i32* %n, align 4
  %idxprom1266 = sext i32 %753 to i64
  %754 = load double*, double** %brushes_sum, align 8
  %arrayidx1267 = getelementptr inbounds double, double* %754, i64 %idxprom1266
  %755 = load double, double* %arrayidx1267, align 8
  store double %755, double* %thissum, align 8
  %756 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 42), align 4
  %cmp1268 = icmp eq i32 %756, 0
  br i1 %cmp1268, label %if.then.1270, label %if.else.1352

if.then.1270:                                     ; preds = %if.end.1265
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.1271

for.cond.1271:                                    ; preds = %for.inc.1337, %if.then.1270
  %757 = load i32, i32* %y, align 4
  %758 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %height1272 = getelementptr inbounds %struct.ppm, %struct.ppm* %758, i32 0, i32 1
  %759 = load i32, i32* %height1272, align 4
  %cmp1273 = icmp slt i32 %757, %759
  br i1 %cmp1273, label %for.body.1275, label %for.end.1339

for.body.1275:                                    ; preds = %for.cond.1271
  %760 = load i32, i32* %ty, align 4
  %761 = load i32, i32* %y, align 4
  %add1277 = add nsw i32 %760, %761
  %762 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1278 = getelementptr inbounds %struct.ppm, %struct.ppm* %762, i32 0, i32 0
  %763 = load i32, i32* %width1278, align 4
  %mul1279 = mul nsw i32 %add1277, %763
  %mul1280 = mul nsw i32 %mul1279, 3
  %idxprom1281 = sext i32 %mul1280 to i64
  %764 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1282 = getelementptr inbounds %struct.ppm, %struct.ppm* %764, i32 0, i32 2
  %765 = load i8*, i8** %col1282, align 8
  %arrayidx1283 = getelementptr inbounds i8, i8* %765, i64 %idxprom1281
  store i8* %arrayidx1283, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.1284

for.cond.1284:                                    ; preds = %for.inc.1334, %for.body.1275
  %766 = load i32, i32* %x, align 4
  %767 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width1285 = getelementptr inbounds %struct.ppm, %struct.ppm* %767, i32 0, i32 0
  %768 = load i32, i32* %width1285, align 4
  %cmp1286 = icmp slt i32 %766, %768
  br i1 %cmp1286, label %for.body.1288, label %for.end.1336

for.body.1288:                                    ; preds = %for.cond.1284
  %769 = load i32, i32* %tx, align 4
  %770 = load i32, i32* %x, align 4
  %add1290 = add nsw i32 %769, %770
  %mul1291 = mul nsw i32 %add1290, 3
  store i32 %mul1291, i32* %k, align 4
  %771 = load i32, i32* %y, align 4
  %772 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width1293 = getelementptr inbounds %struct.ppm, %struct.ppm* %772, i32 0, i32 0
  %773 = load i32, i32* %width1293, align 4
  %mul1294 = mul nsw i32 %771, %773
  %mul1295 = mul nsw i32 %mul1294, 3
  %774 = load i32, i32* %x, align 4
  %mul1296 = mul nsw i32 %774, 3
  %add1297 = add nsw i32 %mul1295, %mul1296
  %idxprom1298 = sext i32 %add1297 to i64
  %775 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %col1299 = getelementptr inbounds %struct.ppm, %struct.ppm* %775, i32 0, i32 2
  %776 = load i8*, i8** %col1299, align 8
  %arrayidx1300 = getelementptr inbounds i8, i8* %776, i64 %idxprom1298
  %777 = load i8, i8* %arrayidx1300, align 1
  %conv1301 = zext i8 %777 to i32
  store i32 %conv1301, i32* %h, align 4
  %tobool1302 = icmp ne i32 %conv1301, 0
  br i1 %tobool1302, label %if.then.1303, label %if.end.1333

if.then.1303:                                     ; preds = %for.body.1288
  %778 = load i32, i32* %h, align 4
  %conv1304 = sitofp i32 %778 to double
  %div1305 = fdiv double %conv1304, 2.550000e+02
  store double %div1305, double* %v, align 8
  %779 = load i32, i32* %k, align 4
  %add1306 = add nsw i32 %779, 0
  %idxprom1307 = sext i32 %add1306 to i64
  %780 = load i8*, i8** %row, align 8
  %arrayidx1308 = getelementptr inbounds i8, i8* %780, i64 %idxprom1307
  %781 = load i8, i8* %arrayidx1308, align 1
  %conv1309 = zext i8 %781 to i32
  %conv1310 = sitofp i32 %conv1309 to double
  %782 = load double, double* %v, align 8
  %mul1311 = fmul double %conv1310, %782
  %783 = load i32, i32* %r, align 4
  %conv1312 = sitofp i32 %783 to double
  %add1313 = fadd double %conv1312, %mul1311
  %conv1314 = fptosi double %add1313 to i32
  store i32 %conv1314, i32* %r, align 4
  %784 = load i32, i32* %k, align 4
  %add1315 = add nsw i32 %784, 1
  %idxprom1316 = sext i32 %add1315 to i64
  %785 = load i8*, i8** %row, align 8
  %arrayidx1317 = getelementptr inbounds i8, i8* %785, i64 %idxprom1316
  %786 = load i8, i8* %arrayidx1317, align 1
  %conv1318 = zext i8 %786 to i32
  %conv1319 = sitofp i32 %conv1318 to double
  %787 = load double, double* %v, align 8
  %mul1320 = fmul double %conv1319, %787
  %788 = load i32, i32* %g, align 4
  %conv1321 = sitofp i32 %788 to double
  %add1322 = fadd double %conv1321, %mul1320
  %conv1323 = fptosi double %add1322 to i32
  store i32 %conv1323, i32* %g, align 4
  %789 = load i32, i32* %k, align 4
  %add1324 = add nsw i32 %789, 2
  %idxprom1325 = sext i32 %add1324 to i64
  %790 = load i8*, i8** %row, align 8
  %arrayidx1326 = getelementptr inbounds i8, i8* %790, i64 %idxprom1325
  %791 = load i8, i8* %arrayidx1326, align 1
  %conv1327 = zext i8 %791 to i32
  %conv1328 = sitofp i32 %conv1327 to double
  %792 = load double, double* %v, align 8
  %mul1329 = fmul double %conv1328, %792
  %793 = load i32, i32* %b, align 4
  %conv1330 = sitofp i32 %793 to double
  %add1331 = fadd double %conv1330, %mul1329
  %conv1332 = fptosi double %add1331 to i32
  store i32 %conv1332, i32* %b, align 4
  br label %if.end.1333

if.end.1333:                                      ; preds = %if.then.1303, %for.body.1288
  br label %for.inc.1334

for.inc.1334:                                     ; preds = %if.end.1333
  %794 = load i32, i32* %x, align 4
  %inc1335 = add nsw i32 %794, 1
  store i32 %inc1335, i32* %x, align 4
  br label %for.cond.1284

for.end.1336:                                     ; preds = %for.cond.1284
  br label %for.inc.1337

for.inc.1337:                                     ; preds = %for.end.1336
  %795 = load i32, i32* %y, align 4
  %inc1338 = add nsw i32 %795, 1
  store i32 %inc1338, i32* %y, align 4
  br label %for.cond.1271

for.end.1339:                                     ; preds = %for.cond.1271
  %796 = load i32, i32* %r, align 4
  %conv1340 = sitofp i32 %796 to double
  %mul1341 = fmul double %conv1340, 2.550000e+02
  %797 = load double, double* %thissum, align 8
  %div1342 = fdiv double %mul1341, %797
  %conv1343 = fptosi double %div1342 to i32
  store i32 %conv1343, i32* %r, align 4
  %798 = load i32, i32* %g, align 4
  %conv1344 = sitofp i32 %798 to double
  %mul1345 = fmul double %conv1344, 2.550000e+02
  %799 = load double, double* %thissum, align 8
  %div1346 = fdiv double %mul1345, %799
  %conv1347 = fptosi double %div1346 to i32
  store i32 %conv1347, i32* %g, align 4
  %800 = load i32, i32* %b, align 4
  %conv1348 = sitofp i32 %800 to double
  %mul1349 = fmul double %conv1348, 2.550000e+02
  %801 = load double, double* %thissum, align 8
  %div1350 = fdiv double %mul1349, %801
  %conv1351 = fptosi double %div1350 to i32
  store i32 %conv1351, i32* %b, align 4
  br label %if.end.1379

if.else.1352:                                     ; preds = %if.end.1265
  %802 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 42), align 4
  %cmp1353 = icmp eq i32 %802, 1
  br i1 %cmp1353, label %if.then.1355, label %if.else.1377

if.then.1355:                                     ; preds = %if.else.1352
  %803 = load i32, i32* %ty, align 4
  %804 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %height1357 = getelementptr inbounds %struct.ppm, %struct.ppm* %804, i32 0, i32 1
  %805 = load i32, i32* %height1357, align 4
  %div1358 = sdiv i32 %805, 2
  %add1359 = add nsw i32 %803, %div1358
  store i32 %add1359, i32* %y, align 4
  %806 = load i32, i32* %tx, align 4
  %807 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width1360 = getelementptr inbounds %struct.ppm, %struct.ppm* %807, i32 0, i32 0
  %808 = load i32, i32* %width1360, align 4
  %div1361 = sdiv i32 %808, 2
  %add1362 = add nsw i32 %806, %div1361
  store i32 %add1362, i32* %x, align 4
  %809 = load i32, i32* %y, align 4
  %810 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1363 = getelementptr inbounds %struct.ppm, %struct.ppm* %810, i32 0, i32 0
  %811 = load i32, i32* %width1363, align 4
  %mul1364 = mul nsw i32 %809, %811
  %mul1365 = mul nsw i32 %mul1364, 3
  %812 = load i32, i32* %x, align 4
  %mul1366 = mul nsw i32 %812, 3
  %add1367 = add nsw i32 %mul1365, %mul1366
  %idxprom1368 = sext i32 %add1367 to i64
  %813 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1369 = getelementptr inbounds %struct.ppm, %struct.ppm* %813, i32 0, i32 2
  %814 = load i8*, i8** %col1369, align 8
  %arrayidx1370 = getelementptr inbounds i8, i8* %814, i64 %idxprom1368
  store i8* %arrayidx1370, i8** %pixel, align 8
  %815 = load i8*, i8** %pixel, align 8
  %arrayidx1371 = getelementptr inbounds i8, i8* %815, i64 0
  %816 = load i8, i8* %arrayidx1371, align 1
  %conv1372 = zext i8 %816 to i32
  store i32 %conv1372, i32* %r, align 4
  %817 = load i8*, i8** %pixel, align 8
  %arrayidx1373 = getelementptr inbounds i8, i8* %817, i64 1
  %818 = load i8, i8* %arrayidx1373, align 1
  %conv1374 = zext i8 %818 to i32
  store i32 %conv1374, i32* %g, align 4
  %819 = load i8*, i8** %pixel, align 8
  %arrayidx1375 = getelementptr inbounds i8, i8* %819, i64 2
  %820 = load i8, i8* %arrayidx1375, align 1
  %conv1376 = zext i8 %820 to i32
  store i32 %conv1376, i32* %b, align 4
  br label %if.end.1378

if.else.1377:                                     ; preds = %if.else.1352
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  br label %if.end.1378

if.end.1378:                                      ; preds = %if.else.1377, %if.then.1355
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.end.1378, %for.end.1339
  %821 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 43), align 8
  %cmp1380 = fcmp ogt double %821, 0.000000e+00
  br i1 %cmp1380, label %if.then.1382, label %if.end.1442

if.then.1382:                                     ; preds = %if.end.1379
  %822 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 43), align 8
  store double %822, double* %v1384, align 8
  %823 = load i32, i32* %r, align 4
  %conv1385 = sitofp i32 %823 to double
  %824 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %825 = load double, double* %v1384, align 8
  %sub1386 = fsub double -0.000000e+00, %825
  %div1387 = fdiv double %sub1386, 2.000000e+00
  %826 = load double, double* %v1384, align 8
  %div1388 = fdiv double %826, 2.000000e+00
  %call1389 = call double @g_rand_double_range(%struct._GRand* %824, double %div1387, double %div1388)
  %add1390 = fadd double %conv1385, %call1389
  %conv1391 = fptosi double %add1390 to i32
  store i32 %conv1391, i32* %r, align 4
  %827 = load i32, i32* %r, align 4
  %cmp1392 = icmp slt i32 %827, 0
  br i1 %cmp1392, label %cond.true.1394, label %cond.false.1395

cond.true.1394:                                   ; preds = %if.then.1382
  %828 = load i32, i32* %r, align 4
  br label %cond.end.1402

cond.false.1395:                                  ; preds = %if.then.1382
  %829 = load i32, i32* %r, align 4
  %cmp1396 = icmp sgt i32 %829, 255
  br i1 %cmp1396, label %cond.true.1398, label %cond.false.1399

cond.true.1398:                                   ; preds = %cond.false.1395
  br label %cond.end.1400

cond.false.1399:                                  ; preds = %cond.false.1395
  %830 = load i32, i32* %r, align 4
  br label %cond.end.1400

cond.end.1400:                                    ; preds = %cond.false.1399, %cond.true.1398
  %cond1401 = phi i32 [ 255, %cond.true.1398 ], [ %830, %cond.false.1399 ]
  br label %cond.end.1402

cond.end.1402:                                    ; preds = %cond.end.1400, %cond.true.1394
  %cond1403 = phi i32 [ %828, %cond.true.1394 ], [ %cond1401, %cond.end.1400 ]
  store i32 %cond1403, i32* %r, align 4
  %831 = load i32, i32* %g, align 4
  %conv1404 = sitofp i32 %831 to double
  %832 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %833 = load double, double* %v1384, align 8
  %sub1405 = fsub double -0.000000e+00, %833
  %div1406 = fdiv double %sub1405, 2.000000e+00
  %834 = load double, double* %v1384, align 8
  %div1407 = fdiv double %834, 2.000000e+00
  %call1408 = call double @g_rand_double_range(%struct._GRand* %832, double %div1406, double %div1407)
  %add1409 = fadd double %conv1404, %call1408
  %conv1410 = fptosi double %add1409 to i32
  store i32 %conv1410, i32* %g, align 4
  %835 = load i32, i32* %g, align 4
  %cmp1411 = icmp slt i32 %835, 0
  br i1 %cmp1411, label %cond.true.1413, label %cond.false.1414

cond.true.1413:                                   ; preds = %cond.end.1402
  %836 = load i32, i32* %g, align 4
  br label %cond.end.1421

cond.false.1414:                                  ; preds = %cond.end.1402
  %837 = load i32, i32* %g, align 4
  %cmp1415 = icmp sgt i32 %837, 255
  br i1 %cmp1415, label %cond.true.1417, label %cond.false.1418

cond.true.1417:                                   ; preds = %cond.false.1414
  br label %cond.end.1419

cond.false.1418:                                  ; preds = %cond.false.1414
  %838 = load i32, i32* %g, align 4
  br label %cond.end.1419

cond.end.1419:                                    ; preds = %cond.false.1418, %cond.true.1417
  %cond1420 = phi i32 [ 255, %cond.true.1417 ], [ %838, %cond.false.1418 ]
  br label %cond.end.1421

cond.end.1421:                                    ; preds = %cond.end.1419, %cond.true.1413
  %cond1422 = phi i32 [ %836, %cond.true.1413 ], [ %cond1420, %cond.end.1419 ]
  store i32 %cond1422, i32* %g, align 4
  %839 = load i32, i32* %b, align 4
  %conv1423 = sitofp i32 %839 to double
  %840 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %841 = load double, double* %v1384, align 8
  %sub1424 = fsub double -0.000000e+00, %841
  %div1425 = fdiv double %sub1424, 2.000000e+00
  %842 = load double, double* %v1384, align 8
  %div1426 = fdiv double %842, 2.000000e+00
  %call1427 = call double @g_rand_double_range(%struct._GRand* %840, double %div1425, double %div1426)
  %add1428 = fadd double %conv1423, %call1427
  %conv1429 = fptosi double %add1428 to i32
  store i32 %conv1429, i32* %b, align 4
  %843 = load i32, i32* %b, align 4
  %cmp1430 = icmp slt i32 %843, 0
  br i1 %cmp1430, label %cond.true.1432, label %cond.false.1433

cond.true.1432:                                   ; preds = %cond.end.1421
  %844 = load i32, i32* %b, align 4
  br label %cond.end.1440

cond.false.1433:                                  ; preds = %cond.end.1421
  %845 = load i32, i32* %b, align 4
  %cmp1434 = icmp sgt i32 %845, 255
  br i1 %cmp1434, label %cond.true.1436, label %cond.false.1437

cond.true.1436:                                   ; preds = %cond.false.1433
  br label %cond.end.1438

cond.false.1437:                                  ; preds = %cond.false.1433
  %846 = load i32, i32* %b, align 4
  br label %cond.end.1438

cond.end.1438:                                    ; preds = %cond.false.1437, %cond.true.1436
  %cond1439 = phi i32 [ 255, %cond.true.1436 ], [ %846, %cond.false.1437 ]
  br label %cond.end.1440

cond.end.1440:                                    ; preds = %cond.end.1438, %cond.true.1432
  %cond1441 = phi i32 [ %844, %cond.true.1432 ], [ %cond1439, %cond.end.1438 ]
  store i32 %cond1441, i32* %b, align 4
  br label %if.end.1442

if.end.1442:                                      ; preds = %cond.end.1440, %if.end.1379
  %847 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %848 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %849 = load i32, i32* %tx, align 4
  %850 = load i32, i32* %ty, align 4
  %851 = load i32, i32* %r, align 4
  %852 = load i32, i32* %g, align 4
  %853 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %847, %struct.ppm* %848, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %849, i32 %850, i32 %851, i32 %852, i32 %853)
  %854 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 25), align 4
  %tobool1443 = icmp ne i32 %854, 0
  br i1 %tobool1443, label %land.lhs.true, label %if.end.1495

land.lhs.true:                                    ; preds = %if.end.1442
  %855 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool1444 = icmp ne i32 %855, 0
  br i1 %tobool1444, label %if.then.1445, label %if.end.1495

if.then.1445:                                     ; preds = %land.lhs.true
  %width1447 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %856 = load i32, i32* %width1447, align 4
  %857 = load i32, i32* %maxbrushwidth, align 4
  %mul1448 = mul nsw i32 2, %857
  %sub1449 = sub nsw i32 %856, %mul1448
  store i32 %sub1449, i32* %orig_width, align 4
  %height1451 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %858 = load i32, i32* %height1451, align 4
  %859 = load i32, i32* %maxbrushheight, align 4
  %mul1452 = mul nsw i32 2, %859
  %sub1453 = sub nsw i32 %858, %mul1452
  store i32 %sub1453, i32* %orig_height, align 4
  store i32 0, i32* %dox, align 4
  store i32 0, i32* %doy, align 4
  %860 = load i32, i32* %tx, align 4
  %861 = load i32, i32* %maxbrushwidth, align 4
  %cmp1456 = icmp slt i32 %860, %861
  br i1 %cmp1456, label %if.then.1458, label %if.else.1460

if.then.1458:                                     ; preds = %if.then.1445
  %862 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %863 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %864 = load i32, i32* %tx, align 4
  %865 = load i32, i32* %orig_width, align 4
  %add1459 = add nsw i32 %864, %865
  %866 = load i32, i32* %ty, align 4
  %867 = load i32, i32* %r, align 4
  %868 = load i32, i32* %g, align 4
  %869 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %862, %struct.ppm* %863, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %add1459, i32 %866, i32 %867, i32 %868, i32 %869)
  store i32 -1, i32* %dox, align 4
  br label %if.end.1466

if.else.1460:                                     ; preds = %if.then.1445
  %870 = load i32, i32* %tx, align 4
  %871 = load i32, i32* %orig_width, align 4
  %cmp1461 = icmp sgt i32 %870, %871
  br i1 %cmp1461, label %if.then.1463, label %if.end.1465

if.then.1463:                                     ; preds = %if.else.1460
  %872 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %873 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %874 = load i32, i32* %tx, align 4
  %875 = load i32, i32* %orig_width, align 4
  %sub1464 = sub nsw i32 %874, %875
  %876 = load i32, i32* %ty, align 4
  %877 = load i32, i32* %r, align 4
  %878 = load i32, i32* %g, align 4
  %879 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %872, %struct.ppm* %873, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %sub1464, i32 %876, i32 %877, i32 %878, i32 %879)
  store i32 1, i32* %dox, align 4
  br label %if.end.1465

if.end.1465:                                      ; preds = %if.then.1463, %if.else.1460
  br label %if.end.1466

if.end.1466:                                      ; preds = %if.end.1465, %if.then.1458
  %880 = load i32, i32* %ty, align 4
  %881 = load i32, i32* %maxbrushheight, align 4
  %cmp1467 = icmp slt i32 %880, %881
  br i1 %cmp1467, label %if.then.1469, label %if.else.1471

if.then.1469:                                     ; preds = %if.end.1466
  %882 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %883 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %884 = load i32, i32* %tx, align 4
  %885 = load i32, i32* %ty, align 4
  %886 = load i32, i32* %orig_height, align 4
  %add1470 = add nsw i32 %885, %886
  %887 = load i32, i32* %r, align 4
  %888 = load i32, i32* %g, align 4
  %889 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %882, %struct.ppm* %883, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %884, i32 %add1470, i32 %887, i32 %888, i32 %889)
  store i32 1, i32* %doy, align 4
  br label %if.end.1477

if.else.1471:                                     ; preds = %if.end.1466
  %890 = load i32, i32* %ty, align 4
  %891 = load i32, i32* %orig_height, align 4
  %cmp1472 = icmp sgt i32 %890, %891
  br i1 %cmp1472, label %if.then.1474, label %if.end.1476

if.then.1474:                                     ; preds = %if.else.1471
  %892 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %893 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %894 = load i32, i32* %tx, align 4
  %895 = load i32, i32* %ty, align 4
  %896 = load i32, i32* %orig_height, align 4
  %sub1475 = sub nsw i32 %895, %896
  %897 = load i32, i32* %r, align 4
  %898 = load i32, i32* %g, align 4
  %899 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %892, %struct.ppm* %893, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %894, i32 %sub1475, i32 %897, i32 %898, i32 %899)
  store i32 -1, i32* %doy, align 4
  br label %if.end.1476

if.end.1476:                                      ; preds = %if.then.1474, %if.else.1471
  br label %if.end.1477

if.end.1477:                                      ; preds = %if.end.1476, %if.then.1469
  %900 = load i32, i32* %doy, align 4
  %tobool1478 = icmp ne i32 %900, 0
  br i1 %tobool1478, label %if.then.1479, label %if.end.1494

if.then.1479:                                     ; preds = %if.end.1477
  %901 = load i32, i32* %dox, align 4
  %cmp1480 = icmp slt i32 %901, 0
  br i1 %cmp1480, label %if.then.1482, label %if.end.1486

if.then.1482:                                     ; preds = %if.then.1479
  %902 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %903 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %904 = load i32, i32* %tx, align 4
  %905 = load i32, i32* %orig_width, align 4
  %add1483 = add nsw i32 %904, %905
  %906 = load i32, i32* %ty, align 4
  %907 = load i32, i32* %doy, align 4
  %908 = load i32, i32* %orig_height, align 4
  %mul1484 = mul nsw i32 %907, %908
  %add1485 = add nsw i32 %906, %mul1484
  %909 = load i32, i32* %r, align 4
  %910 = load i32, i32* %g, align 4
  %911 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %902, %struct.ppm* %903, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %add1483, i32 %add1485, i32 %909, i32 %910, i32 %911)
  br label %if.end.1486

if.end.1486:                                      ; preds = %if.then.1482, %if.then.1479
  %912 = load i32, i32* %dox, align 4
  %cmp1487 = icmp sgt i32 %912, 0
  br i1 %cmp1487, label %if.then.1489, label %if.end.1493

if.then.1489:                                     ; preds = %if.end.1486
  %913 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %914 = load %struct.ppm*, %struct.ppm** %shadow, align 8
  %915 = load i32, i32* %tx, align 4
  %916 = load i32, i32* %orig_width, align 4
  %sub1490 = sub nsw i32 %915, %916
  %917 = load i32, i32* %ty, align 4
  %918 = load i32, i32* %doy, align 4
  %919 = load i32, i32* %orig_height, align 4
  %mul1491 = mul nsw i32 %918, %919
  %add1492 = add nsw i32 %917, %mul1491
  %920 = load i32, i32* %r, align 4
  %921 = load i32, i32* %g, align 4
  %922 = load i32, i32* %b, align 4
  call void @apply_brush(%struct.ppm* %913, %struct.ppm* %914, %struct.ppm* %tmp, %struct.ppm* %atmp, i32 %sub1490, i32 %add1492, i32 %920, i32 %921, i32 %922)
  br label %if.end.1493

if.end.1493:                                      ; preds = %if.then.1489, %if.end.1486
  br label %if.end.1494

if.end.1494:                                      ; preds = %if.end.1493, %if.end.1477
  br label %if.end.1495

if.end.1495:                                      ; preds = %if.end.1494, %land.lhs.true, %if.end.1442
  br label %for.inc.1496

for.inc.1496:                                     ; preds = %if.end.1495, %if.then.1174, %if.then.1159
  %923 = load i32, i32* %i, align 4
  %dec = add nsw i32 %923, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.1060

for.end.1497:                                     ; preds = %for.cond.1060
  store i32 0, i32* %i, align 4
  br label %for.cond.1498

for.cond.1498:                                    ; preds = %for.inc.1504, %for.end.1497
  %924 = load i32, i32* %i, align 4
  %925 = load i32, i32* %num_brushes, align 4
  %cmp1499 = icmp slt i32 %924, %925
  br i1 %cmp1499, label %for.body.1501, label %for.end.1506

for.body.1501:                                    ; preds = %for.cond.1498
  %926 = load i32, i32* %i, align 4
  %idxprom1502 = sext i32 %926 to i64
  %927 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %arrayidx1503 = getelementptr inbounds %struct.ppm, %struct.ppm* %927, i64 %idxprom1502
  call void @ppm_kill(%struct.ppm* %arrayidx1503)
  br label %for.inc.1504

for.inc.1504:                                     ; preds = %for.body.1501
  %928 = load i32, i32* %i, align 4
  %inc1505 = add nsw i32 %928, 1
  store i32 %inc1505, i32* %i, align 4
  br label %for.cond.1498

for.end.1506:                                     ; preds = %for.cond.1498
  %929 = load %struct.ppm*, %struct.ppm** %brushes, align 8
  %930 = bitcast %struct.ppm* %929 to i8*
  call void @g_free(i8* %930)
  %931 = load %struct.ppm*, %struct.ppm** %shadows, align 8
  %932 = bitcast %struct.ppm* %931 to i8*
  call void @g_free(i8* %932)
  %933 = load double*, double** %brushes_sum, align 8
  %934 = bitcast double* %933 to i8*
  call void @g_free(i8* %934)
  %935 = load i32*, i32** %xpos, align 8
  %936 = bitcast i32* %935 to i8*
  call void @g_free(i8* %936)
  %937 = load i32*, i32** %ypos, align 8
  %938 = bitcast i32* %937 to i8*
  call void @g_free(i8* %938)
  %939 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 17), align 4
  %tobool1507 = icmp ne i32 %939, 0
  br i1 %tobool1507, label %if.then.1508, label %if.end.1520

if.then.1508:                                     ; preds = %for.end.1506
  %940 = load i32, i32* %maxbrushwidth, align 4
  %941 = load i32, i32* %maxbrushheight, align 4
  %width1509 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %942 = load i32, i32* %width1509, align 4
  %943 = load i32, i32* %maxbrushwidth, align 4
  %sub1510 = sub nsw i32 %942, %943
  %height1511 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %944 = load i32, i32* %height1511, align 4
  %945 = load i32, i32* %maxbrushheight, align 4
  %sub1512 = sub nsw i32 %944, %945
  call void @crop(%struct.ppm* %tmp, i32 %940, i32 %941, i32 %sub1510, i32 %sub1512)
  %946 = load i32, i32* @img_has_alpha, align 4
  %tobool1513 = icmp ne i32 %946, 0
  br i1 %tobool1513, label %if.then.1514, label %if.end.1519

if.then.1514:                                     ; preds = %if.then.1508
  %947 = load i32, i32* %maxbrushwidth, align 4
  %948 = load i32, i32* %maxbrushheight, align 4
  %width1515 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 0
  %949 = load i32, i32* %width1515, align 4
  %950 = load i32, i32* %maxbrushwidth, align 4
  %sub1516 = sub nsw i32 %949, %950
  %height1517 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 1
  %951 = load i32, i32* %height1517, align 4
  %952 = load i32, i32* %maxbrushheight, align 4
  %sub1518 = sub nsw i32 %951, %952
  call void @crop(%struct.ppm* %atmp, i32 %947, i32 %948, i32 %sub1516, i32 %sub1518)
  br label %if.end.1519

if.end.1519:                                      ; preds = %if.then.1514, %if.then.1508
  br label %if.end.1520

if.end.1520:                                      ; preds = %if.end.1519, %for.end.1506
  %953 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %953)
  %width1521 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %954 = load i32, i32* %width1521, align 4
  %955 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1522 = getelementptr inbounds %struct.ppm, %struct.ppm* %955, i32 0, i32 0
  store i32 %954, i32* %width1522, align 4
  %height1523 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %956 = load i32, i32* %height1523, align 4
  %957 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height1524 = getelementptr inbounds %struct.ppm, %struct.ppm* %957, i32 0, i32 1
  store i32 %956, i32* %height1524, align 4
  %col1525 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %958 = load i8*, i8** %col1525, align 8
  %959 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1526 = getelementptr inbounds %struct.ppm, %struct.ppm* %959, i32 0, i32 2
  store i8* %958, i8** %col1526, align 8
  %960 = load i32, i32* @img_has_alpha, align 4
  %tobool1527 = icmp ne i32 %960, 0
  br i1 %tobool1527, label %if.then.1528, label %if.end.1535

if.then.1528:                                     ; preds = %if.end.1520
  %961 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  call void @ppm_kill(%struct.ppm* %961)
  %width1529 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 0
  %962 = load i32, i32* %width1529, align 4
  %963 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %width1530 = getelementptr inbounds %struct.ppm, %struct.ppm* %963, i32 0, i32 0
  store i32 %962, i32* %width1530, align 4
  %height1531 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 1
  %964 = load i32, i32* %height1531, align 4
  %965 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %height1532 = getelementptr inbounds %struct.ppm, %struct.ppm* %965, i32 0, i32 1
  store i32 %964, i32* %height1532, align 4
  %col1533 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 2
  %966 = load i8*, i8** %col1533, align 8
  %967 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %col1534 = getelementptr inbounds %struct.ppm, %struct.ppm* %967, i32 0, i32 2
  store i8* %966, i8** %col1534, align 8
  br label %if.end.1535

if.end.1535:                                      ; preds = %if.then.1528, %if.end.1520
  %968 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 10), align 8
  %div1536 = fdiv double %968, 1.000000e+02
  store double %div1536, double* %relief, align 8
  %969 = load double, double* %relief, align 8
  %cmp1537 = fcmp ogt double %969, 1.000000e-03
  br i1 %cmp1537, label %if.then.1539, label %if.end.1729

if.then.1539:                                     ; preds = %if.end.1535
  %970 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 11), align 8
  %div1540 = fdiv double %970, 1.000000e+02
  store double %div1540, double* %scale, align 8
  %col1541 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 2
  %971 = load i8*, i8** %col1541, align 8
  %cmp1542 = icmp ne i8* %971, null
  br i1 %cmp1542, label %if.then.1544, label %if.else.1546

if.then.1544:                                     ; preds = %if.then.1539
  %972 = bitcast %struct.ppm* %tmp to i8*
  %973 = bitcast %struct.ppm* %paper_ppm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %972, i8* %973, i64 16, i32 8, i1 false)
  %col1545 = getelementptr inbounds %struct.ppm, %struct.ppm* %paper_ppm, i32 0, i32 2
  store i8* null, i8** %col1545, align 8
  br label %if.end.1559

if.else.1546:                                     ; preds = %if.then.1539
  %col1547 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  store i8* null, i8** %col1547, align 8
  call void @ppm_load(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 15, i32 0), %struct.ppm* %tmp)
  %width1548 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %974 = load i32, i32* %width1548, align 4
  %conv1549 = sitofp i32 %974 to double
  %975 = load double, double* %scale, align 8
  %mul1550 = fmul double %conv1549, %975
  %conv1551 = fptosi double %mul1550 to i32
  %height1552 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %976 = load i32, i32* %height1552, align 4
  %conv1553 = sitofp i32 %976 to double
  %977 = load double, double* %scale, align 8
  %mul1554 = fmul double %conv1553, %977
  %conv1555 = fptosi double %mul1554 to i32
  call void @resize(%struct.ppm* %tmp, i32 %conv1551, i32 %conv1555)
  %978 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 12), align 4
  %tobool1556 = icmp ne i32 %978, 0
  br i1 %tobool1556, label %if.then.1557, label %if.end.1558

if.then.1557:                                     ; preds = %if.else.1546
  call void @ppm_apply_gamma(%struct.ppm* %tmp, float -1.000000e+00, i32 1, i32 1, i32 1)
  br label %if.end.1558

if.end.1558:                                      ; preds = %if.then.1557, %if.else.1546
  br label %if.end.1559

if.end.1559:                                      ; preds = %if.end.1558, %if.then.1544
  store i32 0, i32* %x, align 4
  br label %for.cond.1560

for.cond.1560:                                    ; preds = %for.inc.1726, %if.end.1559
  %979 = load i32, i32* %x, align 4
  %980 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1561 = getelementptr inbounds %struct.ppm, %struct.ppm* %980, i32 0, i32 0
  %981 = load i32, i32* %width1561, align 4
  %cmp1562 = icmp slt i32 %979, %981
  br i1 %cmp1562, label %for.body.1564, label %for.end.1728

for.body.1564:                                    ; preds = %for.cond.1560
  %982 = load i32, i32* %x, align 4
  %width1570 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %983 = load i32, i32* %width1570, align 4
  %rem1571 = srem i32 %982, %983
  store i32 %rem1571, i32* %px, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.1573

for.cond.1573:                                    ; preds = %for.inc.1723, %for.body.1564
  %984 = load i32, i32* %y, align 4
  %985 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height1574 = getelementptr inbounds %struct.ppm, %struct.ppm* %985, i32 0, i32 1
  %986 = load i32, i32* %height1574, align 4
  %cmp1575 = icmp slt i32 %984, %986
  br i1 %cmp1575, label %for.body.1577, label %for.end.1725

for.body.1577:                                    ; preds = %for.cond.1573
  %987 = load i32, i32* %y, align 4
  %988 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1580 = getelementptr inbounds %struct.ppm, %struct.ppm* %988, i32 0, i32 0
  %989 = load i32, i32* %width1580, align 4
  %mul1581 = mul nsw i32 %987, %989
  %mul1582 = mul nsw i32 %mul1581, 3
  %990 = load i32, i32* %x, align 4
  %mul1583 = mul nsw i32 %990, 3
  %add1584 = add nsw i32 %mul1582, %mul1583
  store i32 %add1584, i32* %k1579, align 4
  %991 = load i32, i32* %y, align 4
  %height1585 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %992 = load i32, i32* %height1585, align 4
  %rem1586 = srem i32 %991, %992
  store i32 %rem1586, i32* %py, align 4
  %993 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 26), align 4
  %tobool1587 = icmp ne i32 %993, 0
  br i1 %tobool1587, label %if.then.1588, label %if.else.1601

if.then.1588:                                     ; preds = %for.body.1577
  %994 = load i32, i32* %py, align 4
  %width1589 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %995 = load i32, i32* %width1589, align 4
  %mul1590 = mul nsw i32 %994, %995
  %mul1591 = mul nsw i32 %mul1590, 3
  %996 = load i32, i32* %px, align 4
  %mul1592 = mul nsw i32 %996, 3
  %add1593 = add nsw i32 %mul1591, %mul1592
  %idxprom1594 = sext i32 %add1593 to i64
  %col1595 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %997 = load i8*, i8** %col1595, align 8
  %arrayidx1596 = getelementptr inbounds i8, i8* %997, i64 %idxprom1594
  %998 = load i8, i8* %arrayidx1596, align 1
  %conv1597 = zext i8 %998 to i32
  %sub1598 = sub nsw i32 %conv1597, 128
  %conv1599 = sitofp i32 %sub1598 to double
  %999 = load double, double* %relief, align 8
  %mul1600 = fmul double %conv1599, %999
  store double %mul1600, double* %h1566, align 8
  br label %if.end.1630

if.else.1601:                                     ; preds = %for.body.1577
  %1000 = load i32, i32* %py, align 4
  %width1602 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %1001 = load i32, i32* %width1602, align 4
  %mul1603 = mul nsw i32 %1000, %1001
  %mul1604 = mul nsw i32 %mul1603, 3
  %1002 = load i32, i32* %px, align 4
  %mul1605 = mul nsw i32 %1002, 3
  %add1606 = add nsw i32 %mul1604, %mul1605
  %idxprom1607 = sext i32 %add1606 to i64
  %col1608 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %1003 = load i8*, i8** %col1608, align 8
  %arrayidx1609 = getelementptr inbounds i8, i8* %1003, i64 %idxprom1607
  %1004 = load i8, i8* %arrayidx1609, align 1
  %conv1610 = zext i8 %1004 to i32
  %1005 = load i32, i32* %py, align 4
  %add1611 = add nsw i32 %1005, 1
  %height1612 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %1006 = load i32, i32* %height1612, align 4
  %rem1613 = srem i32 %add1611, %1006
  %width1614 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %1007 = load i32, i32* %width1614, align 4
  %mul1615 = mul nsw i32 %rem1613, %1007
  %mul1616 = mul nsw i32 %mul1615, 3
  %1008 = load i32, i32* %px, align 4
  %add1617 = add nsw i32 %1008, 1
  %width1618 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %1009 = load i32, i32* %width1618, align 4
  %rem1619 = srem i32 %add1617, %1009
  %mul1620 = mul nsw i32 %rem1619, 3
  %add1621 = add nsw i32 %mul1616, %mul1620
  %idxprom1622 = sext i32 %add1621 to i64
  %col1623 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %1010 = load i8*, i8** %col1623, align 8
  %arrayidx1624 = getelementptr inbounds i8, i8* %1010, i64 %idxprom1622
  %1011 = load i8, i8* %arrayidx1624, align 1
  %conv1625 = zext i8 %1011 to i32
  %sub1626 = sub nsw i32 %conv1610, %conv1625
  %conv1627 = sitofp i32 %sub1626 to double
  %div1628 = fdiv double %conv1627, -2.000000e+00
  %1012 = load double, double* %relief, align 8
  %mul1629 = fmul double %div1628, %1012
  store double %mul1629, double* %h1566, align 8
  br label %if.end.1630

if.end.1630:                                      ; preds = %if.else.1601, %if.then.1588
  %1013 = load double, double* %h1566, align 8
  %cmp1631 = fcmp ole double %1013, 0.000000e+00
  br i1 %cmp1631, label %if.then.1633, label %if.else.1666

if.then.1633:                                     ; preds = %if.end.1630
  %1014 = load double, double* %h1566, align 8
  %div1634 = fdiv double %1014, 1.280000e+02
  %add1635 = fadd double 1.000000e+00, %div1634
  store double %add1635, double* %v1568, align 8
  %1015 = load double, double* %v1568, align 8
  %cmp1636 = fcmp olt double %1015, 0.000000e+00
  br i1 %cmp1636, label %if.then.1638, label %if.else.1639

if.then.1638:                                     ; preds = %if.then.1633
  store double 0.000000e+00, double* %v1568, align 8
  br label %if.end.1644

if.else.1639:                                     ; preds = %if.then.1633
  %1016 = load double, double* %v1568, align 8
  %cmp1640 = fcmp ogt double %1016, 1.000000e+00
  br i1 %cmp1640, label %if.then.1642, label %if.end.1643

if.then.1642:                                     ; preds = %if.else.1639
  store double 1.000000e+00, double* %v1568, align 8
  br label %if.end.1643

if.end.1643:                                      ; preds = %if.then.1642, %if.else.1639
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.end.1643, %if.then.1638
  %1017 = load double, double* %v1568, align 8
  %1018 = load i32, i32* %k1579, align 4
  %add1645 = add nsw i32 %1018, 0
  %idxprom1646 = sext i32 %add1645 to i64
  %1019 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1647 = getelementptr inbounds %struct.ppm, %struct.ppm* %1019, i32 0, i32 2
  %1020 = load i8*, i8** %col1647, align 8
  %arrayidx1648 = getelementptr inbounds i8, i8* %1020, i64 %idxprom1646
  %1021 = load i8, i8* %arrayidx1648, align 1
  %conv1649 = uitofp i8 %1021 to double
  %mul1650 = fmul double %conv1649, %1017
  %conv1651 = fptoui double %mul1650 to i8
  store i8 %conv1651, i8* %arrayidx1648, align 1
  %1022 = load double, double* %v1568, align 8
  %1023 = load i32, i32* %k1579, align 4
  %add1652 = add nsw i32 %1023, 1
  %idxprom1653 = sext i32 %add1652 to i64
  %1024 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1654 = getelementptr inbounds %struct.ppm, %struct.ppm* %1024, i32 0, i32 2
  %1025 = load i8*, i8** %col1654, align 8
  %arrayidx1655 = getelementptr inbounds i8, i8* %1025, i64 %idxprom1653
  %1026 = load i8, i8* %arrayidx1655, align 1
  %conv1656 = uitofp i8 %1026 to double
  %mul1657 = fmul double %conv1656, %1022
  %conv1658 = fptoui double %mul1657 to i8
  store i8 %conv1658, i8* %arrayidx1655, align 1
  %1027 = load double, double* %v1568, align 8
  %1028 = load i32, i32* %k1579, align 4
  %add1659 = add nsw i32 %1028, 2
  %idxprom1660 = sext i32 %add1659 to i64
  %1029 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1661 = getelementptr inbounds %struct.ppm, %struct.ppm* %1029, i32 0, i32 2
  %1030 = load i8*, i8** %col1661, align 8
  %arrayidx1662 = getelementptr inbounds i8, i8* %1030, i64 %idxprom1660
  %1031 = load i8, i8* %arrayidx1662, align 1
  %conv1663 = uitofp i8 %1031 to double
  %mul1664 = fmul double %conv1663, %1027
  %conv1665 = fptoui double %mul1664 to i8
  store i8 %conv1665, i8* %arrayidx1662, align 1
  br label %if.end.1722

if.else.1666:                                     ; preds = %if.end.1630
  %1032 = load double, double* %h1566, align 8
  %div1667 = fdiv double %1032, 1.280000e+02
  store double %div1667, double* %v1568, align 8
  %1033 = load double, double* %v1568, align 8
  %cmp1668 = fcmp olt double %1033, 0.000000e+00
  br i1 %cmp1668, label %if.then.1670, label %if.else.1671

if.then.1670:                                     ; preds = %if.else.1666
  store double 0.000000e+00, double* %v1568, align 8
  br label %if.end.1676

if.else.1671:                                     ; preds = %if.else.1666
  %1034 = load double, double* %v1568, align 8
  %cmp1672 = fcmp ogt double %1034, 1.000000e+00
  br i1 %cmp1672, label %if.then.1674, label %if.end.1675

if.then.1674:                                     ; preds = %if.else.1671
  store double 1.000000e+00, double* %v1568, align 8
  br label %if.end.1675

if.end.1675:                                      ; preds = %if.then.1674, %if.else.1671
  br label %if.end.1676

if.end.1676:                                      ; preds = %if.end.1675, %if.then.1670
  %1035 = load i32, i32* %k1579, align 4
  %add1677 = add nsw i32 %1035, 0
  %idxprom1678 = sext i32 %add1677 to i64
  %1036 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1679 = getelementptr inbounds %struct.ppm, %struct.ppm* %1036, i32 0, i32 2
  %1037 = load i8*, i8** %col1679, align 8
  %arrayidx1680 = getelementptr inbounds i8, i8* %1037, i64 %idxprom1678
  %1038 = load i8, i8* %arrayidx1680, align 1
  %conv1681 = zext i8 %1038 to i32
  %conv1682 = sitofp i32 %conv1681 to double
  %1039 = load double, double* %v1568, align 8
  %sub1683 = fsub double 1.000000e+00, %1039
  %mul1684 = fmul double %conv1682, %sub1683
  %1040 = load double, double* %v1568, align 8
  %mul1685 = fmul double 2.550000e+02, %1040
  %add1686 = fadd double %mul1684, %mul1685
  %conv1687 = fptoui double %add1686 to i8
  %1041 = load i32, i32* %k1579, align 4
  %add1688 = add nsw i32 %1041, 0
  %idxprom1689 = sext i32 %add1688 to i64
  %1042 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1690 = getelementptr inbounds %struct.ppm, %struct.ppm* %1042, i32 0, i32 2
  %1043 = load i8*, i8** %col1690, align 8
  %arrayidx1691 = getelementptr inbounds i8, i8* %1043, i64 %idxprom1689
  store i8 %conv1687, i8* %arrayidx1691, align 1
  %1044 = load i32, i32* %k1579, align 4
  %add1692 = add nsw i32 %1044, 1
  %idxprom1693 = sext i32 %add1692 to i64
  %1045 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1694 = getelementptr inbounds %struct.ppm, %struct.ppm* %1045, i32 0, i32 2
  %1046 = load i8*, i8** %col1694, align 8
  %arrayidx1695 = getelementptr inbounds i8, i8* %1046, i64 %idxprom1693
  %1047 = load i8, i8* %arrayidx1695, align 1
  %conv1696 = zext i8 %1047 to i32
  %conv1697 = sitofp i32 %conv1696 to double
  %1048 = load double, double* %v1568, align 8
  %sub1698 = fsub double 1.000000e+00, %1048
  %mul1699 = fmul double %conv1697, %sub1698
  %1049 = load double, double* %v1568, align 8
  %mul1700 = fmul double 2.550000e+02, %1049
  %add1701 = fadd double %mul1699, %mul1700
  %conv1702 = fptoui double %add1701 to i8
  %1050 = load i32, i32* %k1579, align 4
  %add1703 = add nsw i32 %1050, 1
  %idxprom1704 = sext i32 %add1703 to i64
  %1051 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1705 = getelementptr inbounds %struct.ppm, %struct.ppm* %1051, i32 0, i32 2
  %1052 = load i8*, i8** %col1705, align 8
  %arrayidx1706 = getelementptr inbounds i8, i8* %1052, i64 %idxprom1704
  store i8 %conv1702, i8* %arrayidx1706, align 1
  %1053 = load i32, i32* %k1579, align 4
  %add1707 = add nsw i32 %1053, 2
  %idxprom1708 = sext i32 %add1707 to i64
  %1054 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1709 = getelementptr inbounds %struct.ppm, %struct.ppm* %1054, i32 0, i32 2
  %1055 = load i8*, i8** %col1709, align 8
  %arrayidx1710 = getelementptr inbounds i8, i8* %1055, i64 %idxprom1708
  %1056 = load i8, i8* %arrayidx1710, align 1
  %conv1711 = zext i8 %1056 to i32
  %conv1712 = sitofp i32 %conv1711 to double
  %1057 = load double, double* %v1568, align 8
  %sub1713 = fsub double 1.000000e+00, %1057
  %mul1714 = fmul double %conv1712, %sub1713
  %1058 = load double, double* %v1568, align 8
  %mul1715 = fmul double 2.550000e+02, %1058
  %add1716 = fadd double %mul1714, %mul1715
  %conv1717 = fptoui double %add1716 to i8
  %1059 = load i32, i32* %k1579, align 4
  %add1718 = add nsw i32 %1059, 2
  %idxprom1719 = sext i32 %add1718 to i64
  %1060 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1720 = getelementptr inbounds %struct.ppm, %struct.ppm* %1060, i32 0, i32 2
  %1061 = load i8*, i8** %col1720, align 8
  %arrayidx1721 = getelementptr inbounds i8, i8* %1061, i64 %idxprom1719
  store i8 %conv1717, i8* %arrayidx1721, align 1
  br label %if.end.1722

if.end.1722:                                      ; preds = %if.end.1676, %if.end.1644
  br label %for.inc.1723

for.inc.1723:                                     ; preds = %if.end.1722
  %1062 = load i32, i32* %y, align 4
  %inc1724 = add nsw i32 %1062, 1
  store i32 %inc1724, i32* %y, align 4
  br label %for.cond.1573

for.end.1725:                                     ; preds = %for.cond.1573
  br label %for.inc.1726

for.inc.1726:                                     ; preds = %for.end.1725
  %1063 = load i32, i32* %x, align 4
  %inc1727 = add nsw i32 %1063, 1
  store i32 %inc1727, i32* %x, align 4
  br label %for.cond.1560

for.end.1728:                                     ; preds = %for.cond.1560
  call void @ppm_kill(%struct.ppm* %tmp)
  br label %if.end.1729

if.end.1729:                                      ; preds = %for.end.1728, %if.end.1535
  call void @ppm_kill(%struct.ppm* %paper_ppm)
  call void @ppm_kill(%struct.ppm* %dirmap)
  call void @ppm_kill(%struct.ppm* %sizmap)
  %1064 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 13), align 4
  %tobool1730 = icmp ne i32 %1064, 0
  br i1 %tobool1730, label %if.then.1731, label %if.else.1733

if.then.1731:                                     ; preds = %if.end.1729
  %call1732 = call i32 @gimp_progress_update(double 8.000000e-01)
  br label %if.end.1735

if.else.1733:                                     ; preds = %if.end.1729
  %call1734 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #1
  call void @preview_set_button_label(i8* %call1734)
  br label %if.end.1735

if.end.1735:                                      ; preds = %if.else.1733, %if.then.1731
  store i32 0, i32* @repaint.running, align 4
  br label %return

return:                                           ; preds = %if.end.1735, %if.then.42, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @g_printerr(i8*, ...) #2

declare noalias i8* @g_malloc(i64) #2

declare void @brush_get_selected(%struct.ppm*) #2

declare void @resize(%struct.ppm*, i32, i32) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @ppm_apply_gamma(%struct.ppm*, float, i32, i32, i32) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @ppm_pad(%struct.ppm*, i32, i32, i32, i32, i8*) #2

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #2

declare void @free_rotate(%struct.ppm*, double) #2

declare void @rescale(%struct.ppm*, double) #2

declare void @autocrop(%struct.ppm*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @prepare_brush(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %2 = load i32, i32* %y, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width2 = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 0
  %7 = load i32, i32* %width2, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %rowstride, align 4
  %mul5 = mul nsw i32 %8, %9
  %10 = load i32, i32* %x, align 4
  %mul6 = mul nsw i32 %10, 3
  %add = add nsw i32 %mul5, %mul6
  %add7 = add nsw i32 %add, 1
  %idxprom = sext i32 %add7 to i64
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 2
  %12 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %14 = load i32, i32* %y, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %y, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i32 1, i32* %y, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.47, %for.end.10
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height12 = getelementptr inbounds %struct.ppm, %struct.ppm* %16, i32 0, i32 1
  %17 = load i32, i32* %height12, align 4
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %for.body.14, label %for.end.49

for.body.14:                                      ; preds = %for.cond.11
  store i32 1, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.44, %for.body.14
  %18 = load i32, i32* %x, align 4
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width16 = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 0
  %20 = load i32, i32* %width16, align 4
  %cmp17 = icmp slt i32 %18, %20
  br i1 %cmp17, label %for.body.18, label %for.end.46

for.body.18:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %rowstride, align 4
  %mul19 = mul nsw i32 %21, %22
  %23 = load i32, i32* %x, align 4
  %mul20 = mul nsw i32 %23, 3
  %add21 = add nsw i32 %mul19, %mul20
  %idxprom22 = sext i32 %add21 to i64
  %24 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col23 = getelementptr inbounds %struct.ppm, %struct.ppm* %24, i32 0, i32 2
  %25 = load i8*, i8** %col23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %idxprom22
  %26 = load i8, i8* %arrayidx24, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %27, 1
  %28 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %sub, %28
  %29 = load i32, i32* %x, align 4
  %sub26 = sub nsw i32 %29, 1
  %mul27 = mul nsw i32 %sub26, 3
  %add28 = add nsw i32 %mul25, %mul27
  %idxprom29 = sext i32 %add28 to i64
  %30 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col30 = getelementptr inbounds %struct.ppm, %struct.ppm* %30, i32 0, i32 2
  %31 = load i8*, i8** %col30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 %idxprom29
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %32 to i32
  %sub33 = sub nsw i32 %conv, %conv32
  store i32 %sub33, i32* %v, align 4
  %33 = load i32, i32* %v, align 4
  %cmp34 = icmp slt i32 %33, 0
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  store i32 0, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.18
  %34 = load i32, i32* %v, align 4
  %conv36 = trunc i32 %34 to i8
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %rowstride, align 4
  %mul37 = mul nsw i32 %35, %36
  %37 = load i32, i32* %x, align 4
  %mul38 = mul nsw i32 %37, 3
  %add39 = add nsw i32 %mul37, %mul38
  %add40 = add nsw i32 %add39, 1
  %idxprom41 = sext i32 %add40 to i64
  %38 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col42 = getelementptr inbounds %struct.ppm, %struct.ppm* %38, i32 0, i32 2
  %39 = load i8*, i8** %col42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  store i8 %conv36, i8* %arrayidx43, align 1
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end
  %40 = load i32, i32* %x, align 4
  %inc45 = add nsw i32 %40, 1
  store i32 %inc45, i32* %x, align 4
  br label %for.cond.15

for.end.46:                                       ; preds = %for.cond.15
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %41 = load i32, i32* %y, align 4
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %y, align 4
  br label %for.cond.11

for.end.49:                                       ; preds = %for.cond.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @sum_brush(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %2, 3
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %4
  %cmp = icmp slt i32 %0, %mul1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 2
  %7 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %conv2 = sitofp i32 %conv to double
  %9 = load double, double* %sum, align 8
  %add = fadd double %9, %conv2
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %10, 3
  store i32 %add3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %sum, align 8
  ret double %11
}

declare void @blur(%struct.ppm*, i32, i32) #2

declare void @edgepad(%struct.ppm*, i32, i32, i32, i32) #2

declare void @ppm_new(%struct.ppm*, i32, i32) #2

declare void @fill(%struct.ppm*, i8*) #2

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #2

declare void @ppm_load(i8*, %struct.ppm*) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #3

declare void @mkgrayplasma(%struct.ppm*, float) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_hue(i8* %rgb) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca i8*, align 8
  %h = alloca double, align 8
  %v = alloca double, align 8
  %temp = alloca double, align 8
  %diff = alloca double, align 8
  store i8* %rgb, i8** %rgb.addr, align 8
  %0 = load i8*, i8** %rgb.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %rgb.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %rgb.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %rgb.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i8*, i8** %rgb.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load i8*, i8** %rgb.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp sgt i32 %conv11, %conv13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i8*, i8** %rgb.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load i8*, i8** %rgb.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %conv19, %cond.false ]
  %conv20 = sitofp i32 %cond to double
  store double %conv20, double* %v, align 8
  %16 = load i8*, i8** %rgb.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %conv23 = sitofp i32 %conv22 to double
  %18 = load double, double* %v, align 8
  %cmp24 = fcmp ogt double %conv23, %18
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %cond.end
  %19 = load i8*, i8** %rgb.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx27, align 1
  %conv28 = uitofp i8 %20 to double
  store double %conv28, double* %v, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %cond.end
  %21 = load i8*, i8** %rgb.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %22 to i32
  %23 = load i8*, i8** %rgb.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %cmp34 = icmp sgt i32 %conv31, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %if.end.29
  %25 = load i8*, i8** %rgb.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %26 to i32
  br label %cond.end.42

cond.false.39:                                    ; preds = %if.end.29
  %27 = load i8*, i8** %rgb.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %28 to i32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.36
  %cond43 = phi i32 [ %conv38, %cond.true.36 ], [ %conv41, %cond.false.39 ]
  %conv44 = sitofp i32 %cond43 to double
  store double %conv44, double* %temp, align 8
  %29 = load i8*, i8** %rgb.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %conv47 = sitofp i32 %conv46 to double
  %31 = load double, double* %temp, align 8
  %cmp48 = fcmp olt double %conv47, %31
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %cond.end.42
  %32 = load i8*, i8** %rgb.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx51, align 1
  %conv52 = uitofp i8 %33 to double
  store double %conv52, double* %temp, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %cond.end.42
  %34 = load double, double* %v, align 8
  %35 = load double, double* %temp, align 8
  %sub = fsub double %34, %35
  store double %sub, double* %diff, align 8
  %36 = load double, double* %v, align 8
  %37 = load i8*, i8** %rgb.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %38 to i32
  %conv56 = sitofp i32 %conv55 to double
  %cmp57 = fcmp oeq double %36, %conv56
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.53
  %39 = load i8*, i8** %rgb.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx60, align 1
  %conv61 = uitofp i8 %40 to double
  %41 = load i8*, i8** %rgb.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %42 to i32
  %conv64 = sitofp i32 %conv63 to double
  %sub65 = fsub double %conv61, %conv64
  %43 = load double, double* %diff, align 8
  %div = fdiv double %sub65, %43
  store double %div, double* %h, align 8
  br label %if.end.89

if.else:                                          ; preds = %if.end.53
  %44 = load double, double* %v, align 8
  %45 = load i8*, i8** %rgb.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %46 to i32
  %conv68 = sitofp i32 %conv67 to double
  %cmp69 = fcmp oeq double %44, %conv68
  br i1 %cmp69, label %if.then.71, label %if.else.79

if.then.71:                                       ; preds = %if.else
  %47 = load i8*, i8** %rgb.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx72, align 1
  %conv73 = uitofp i8 %48 to double
  %49 = load i8*, i8** %rgb.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %50 to i32
  %conv76 = sitofp i32 %conv75 to double
  %sub77 = fsub double %conv73, %conv76
  %51 = load double, double* %diff, align 8
  %div78 = fdiv double %sub77, %51
  %add = fadd double %div78, 2.000000e+00
  store double %add, double* %h, align 8
  br label %if.end.88

if.else.79:                                       ; preds = %if.else
  %52 = load i8*, i8** %rgb.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx80, align 1
  %conv81 = uitofp i8 %53 to double
  %54 = load i8*, i8** %rgb.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %55 to i32
  %conv84 = sitofp i32 %conv83 to double
  %sub85 = fsub double %conv81, %conv84
  %56 = load double, double* %diff, align 8
  %div86 = fdiv double %sub85, %56
  %add87 = fadd double %div86, 4.000000e+00
  store double %add87, double* %h, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.79, %if.then.71
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.59
  %57 = load double, double* %h, align 8
  %cmp90 = fcmp olt double %57, 0.000000e+00
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %58 = load double, double* %h, align 8
  %add93 = fadd double %58, 6.000000e+00
  store double %add93, double* %h, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.89
  %59 = load double, double* %h, align 8
  %mul = fmul double %59, 2.550000e+02
  %div95 = fdiv double %mul, 6.000000e+00
  %conv96 = fptosi double %div95 to i32
  store i32 %conv96, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pixel_value(double %dir) #0 {
entry:
  %dir.addr = alloca double, align 8
  store double %dir, double* %dir.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, double* %dir.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double, double* %dir.addr, align 8
  %add = fadd double %1, 3.600000e+02
  store double %add, double* %dir.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.end
  %2 = load double, double* %dir.addr, align 8
  %cmp2 = fcmp oge double %2, 3.600000e+02
  br i1 %cmp2, label %while.body.3, label %while.end.4

while.body.3:                                     ; preds = %while.cond.1
  %3 = load double, double* %dir.addr, align 8
  %sub = fsub double %3, 3.600000e+02
  store double %sub, double* %dir.addr, align 8
  br label %while.cond.1

while.end.4:                                      ; preds = %while.cond.1
  %4 = load double, double* %dir.addr, align 8
  %mul = fmul double %4, 2.550000e+02
  %div = fdiv double %mul, 3.600000e+02
  %conv = fptosi double %div to i32
  ret i32 %conv
}

declare double @get_direction(double, double, i32) #2

; Function Attrs: nounwind uwtable
define internal double @get_siz_from_pcvals(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  %3 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 38), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 39), align 4
  %call = call double @getsiz_proto(double %0, double %1, i32 %2, %struct.smvector* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36, i32 0), double %3, i32 %4)
  ret double %call
}

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #2

declare i32 @gimp_progress_update(double) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

declare void @preview_set_button_label(i8*) #2

declare i32 @gtk_events_pending() #2

declare i32 @gtk_main_iteration() #2

declare double @g_rand_double_range(%struct._GRand*, double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @choose_best_brush(%struct.ppm* %p, %struct.ppm* %a, i32 %tx, i32 %ty, %struct.ppm* %brushes, i32 %num_brushes, double* %brushes_sum, i32 %start, i32 %step) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.ppm*, align 8
  %a.addr = alloca %struct.ppm*, align 8
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  %brushes.addr = alloca %struct.ppm*, align 8
  %num_brushes.addr = alloca i32, align 4
  %brushes_sum.addr = alloca double*, align 8
  %start.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %dev = alloca double, align 8
  %thissum = alloca double, align 8
  %bestdev = alloca double, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %best = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i64, align 8
  %brlist = alloca %struct._GList*, align 8
  %brush = alloca %struct.ppm*, align 8
  %row = alloca i8*, align 8
  %k = alloca i32, align 4
  %v = alloca double, align 8
  %row60 = alloca i8*, align 8
  %k73 = alloca i32, align 4
  %v76 = alloca double, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store %struct.ppm* %a, %struct.ppm** %a.addr, align 8
  store i32 %tx, i32* %tx.addr, align 4
  store i32 %ty, i32* %ty.addr, align 4
  store %struct.ppm* %brushes, %struct.ppm** %brushes.addr, align 8
  store i32 %num_brushes, i32* %num_brushes.addr, align 4
  store double* %brushes_sum, double** %brushes_sum.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %step, i32* %step.addr, align 4
  store double 0.000000e+00, double* %bestdev, align 8
  store i32 -1, i32* %best, align 4
  store %struct._GList* null, %struct._GList** %brlist, align 8
  %0 = load i32, i32* %start.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.168, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i32, i32* %num_brushes.addr, align 4
  %conv1 = sext i32 %2 to i64
  %cmp = icmp slt i64 %1, %conv1
  br i1 %cmp, label %for.body, label %for.end.171

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.ppm*, %struct.ppm** %brushes.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i64 %3
  store %struct.ppm* %arrayidx, %struct.ppm** %brush, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load double*, double** %brushes_sum.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %5
  %7 = load double, double* %arrayidx3, align 8
  store double %7, double* %thissum, align 8
  store double 0.000000e+00, double* %b, align 8
  store double 0.000000e+00, double* %g, align 8
  store double 0.000000e+00, double* %r, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.46, %for.body
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 1
  %10 = load i32, i32* %height, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body.7, label %for.end.48

for.body.7:                                       ; preds = %for.cond.4
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 2
  %12 = load i8*, i8** %col, align 8
  %13 = load i32, i32* %ty.addr, align 4
  %14 = load i32, i32* %y, align 4
  %add = add nsw i32 %13, %14
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %15, i32 0, i32 0
  %16 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %add, %16
  %mul8 = mul nsw i32 %mul, 3
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body.7
  %17 = load i32, i32* %x, align 4
  %18 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width10 = getelementptr inbounds %struct.ppm, %struct.ppm* %18, i32 0, i32 0
  %19 = load i32, i32* %width10, align 4
  %cmp11 = icmp slt i32 %17, %19
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %tx.addr, align 4
  %21 = load i32, i32* %x, align 4
  %add14 = add nsw i32 %20, %21
  %mul15 = mul nsw i32 %add14, 3
  store i32 %mul15, i32* %k, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width16 = getelementptr inbounds %struct.ppm, %struct.ppm* %23, i32 0, i32 0
  %24 = load i32, i32* %width16, align 4
  %mul17 = mul nsw i32 %22, %24
  %mul18 = mul nsw i32 %mul17, 3
  %25 = load i32, i32* %x, align 4
  %mul19 = mul nsw i32 %25, 3
  %add20 = add nsw i32 %mul18, %mul19
  %idxprom = sext i32 %add20 to i64
  %26 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %col21 = getelementptr inbounds %struct.ppm, %struct.ppm* %26, i32 0, i32 2
  %27 = load i8*, i8** %col21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %28 to i32
  store i32 %conv23, i32* %h, align 4
  %tobool = icmp ne i32 %conv23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %29 = load i32, i32* %h, align 4
  %conv24 = sitofp i32 %29 to double
  %div = fdiv double %conv24, 2.550000e+02
  store double %div, double* %v, align 8
  %30 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %30, 0
  %idxprom26 = sext i32 %add25 to i64
  %31 = load i8*, i8** %row, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i64 %idxprom26
  %32 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %32 to i32
  %conv29 = sitofp i32 %conv28 to double
  %33 = load double, double* %v, align 8
  %mul30 = fmul double %conv29, %33
  %34 = load double, double* %r, align 8
  %add31 = fadd double %34, %mul30
  store double %add31, double* %r, align 8
  %35 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %35, 1
  %idxprom33 = sext i32 %add32 to i64
  %36 = load i8*, i8** %row, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  %37 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %37 to i32
  %conv36 = sitofp i32 %conv35 to double
  %38 = load double, double* %v, align 8
  %mul37 = fmul double %conv36, %38
  %39 = load double, double* %g, align 8
  %add38 = fadd double %39, %mul37
  store double %add38, double* %g, align 8
  %40 = load i32, i32* %k, align 4
  %add39 = add nsw i32 %40, 2
  %idxprom40 = sext i32 %add39 to i64
  %41 = load i8*, i8** %row, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %41, i64 %idxprom40
  %42 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %42 to i32
  %conv43 = sitofp i32 %conv42 to double
  %43 = load double, double* %v, align 8
  %mul44 = fmul double %conv43, %43
  %44 = load double, double* %b, align 8
  %add45 = fadd double %44, %mul44
  store double %add45, double* %b, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %45 = load i32, i32* %x, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %46 = load i32, i32* %y, align 4
  %inc47 = add nsw i32 %46, 1
  store i32 %inc47, i32* %y, align 4
  br label %for.cond.4

for.end.48:                                       ; preds = %for.cond.4
  %47 = load double, double* %r, align 8
  %mul49 = fmul double %47, 2.550000e+02
  %48 = load double, double* %thissum, align 8
  %div50 = fdiv double %mul49, %48
  store double %div50, double* %r, align 8
  %49 = load double, double* %g, align 8
  %mul51 = fmul double %49, 2.550000e+02
  %50 = load double, double* %thissum, align 8
  %div52 = fdiv double %mul51, %50
  store double %div52, double* %g, align 8
  %51 = load double, double* %b, align 8
  %mul53 = fmul double %51, 2.550000e+02
  %52 = load double, double* %thissum, align 8
  %div54 = fdiv double %mul53, %52
  store double %div54, double* %b, align 8
  store double 0.000000e+00, double* %dev, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.142, %for.end.48
  %53 = load i32, i32* %y, align 4
  %54 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %height56 = getelementptr inbounds %struct.ppm, %struct.ppm* %54, i32 0, i32 1
  %55 = load i32, i32* %height56, align 4
  %cmp57 = icmp slt i32 %53, %55
  br i1 %cmp57, label %for.body.59, label %for.end.144

for.body.59:                                      ; preds = %for.cond.55
  %56 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col61 = getelementptr inbounds %struct.ppm, %struct.ppm* %56, i32 0, i32 2
  %57 = load i8*, i8** %col61, align 8
  %58 = load i32, i32* %ty.addr, align 4
  %59 = load i32, i32* %y, align 4
  %add62 = add nsw i32 %58, %59
  %60 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width63 = getelementptr inbounds %struct.ppm, %struct.ppm* %60, i32 0, i32 0
  %61 = load i32, i32* %width63, align 4
  %mul64 = mul nsw i32 %add62, %61
  %mul65 = mul nsw i32 %mul64, 3
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %57, i64 %idx.ext66
  store i8* %add.ptr67, i8** %row60, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.139, %for.body.59
  %62 = load i32, i32* %x, align 4
  %63 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width69 = getelementptr inbounds %struct.ppm, %struct.ppm* %63, i32 0, i32 0
  %64 = load i32, i32* %width69, align 4
  %cmp70 = icmp slt i32 %62, %64
  br i1 %cmp70, label %for.body.72, label %for.end.141

for.body.72:                                      ; preds = %for.cond.68
  %65 = load i32, i32* %tx.addr, align 4
  %66 = load i32, i32* %x, align 4
  %add74 = add nsw i32 %65, %66
  %mul75 = mul nsw i32 %add74, 3
  store i32 %mul75, i32* %k73, align 4
  %67 = load i32, i32* %y, align 4
  %68 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %width77 = getelementptr inbounds %struct.ppm, %struct.ppm* %68, i32 0, i32 0
  %69 = load i32, i32* %width77, align 4
  %mul78 = mul nsw i32 %67, %69
  %mul79 = mul nsw i32 %mul78, 3
  %70 = load i32, i32* %x, align 4
  %mul80 = mul nsw i32 %70, 3
  %add81 = add nsw i32 %mul79, %mul80
  %idxprom82 = sext i32 %add81 to i64
  %71 = load %struct.ppm*, %struct.ppm** %brush, align 8
  %col83 = getelementptr inbounds %struct.ppm, %struct.ppm* %71, i32 0, i32 2
  %72 = load i8*, i8** %col83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %72, i64 %idxprom82
  %73 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %73 to i32
  store i32 %conv85, i32* %h, align 4
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.138

if.then.87:                                       ; preds = %for.body.72
  %74 = load i32, i32* %h, align 4
  %conv88 = sitofp i32 %74 to double
  %div89 = fdiv double %conv88, 2.550000e+02
  store double %div89, double* %v76, align 8
  %75 = load i32, i32* %k73, align 4
  %add90 = add nsw i32 %75, 0
  %idxprom91 = sext i32 %add90 to i64
  %76 = load i8*, i8** %row60, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %76, i64 %idxprom91
  %77 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %77 to i32
  %conv94 = sitofp i32 %conv93 to double
  %78 = load double, double* %r, align 8
  %sub = fsub double %conv94, %78
  %conv95 = fptosi double %sub to i32
  %call = call i32 @abs(i32 %conv95) #5
  %conv96 = sitofp i32 %call to double
  %79 = load double, double* %v76, align 8
  %mul97 = fmul double %conv96, %79
  %80 = load double, double* %dev, align 8
  %add98 = fadd double %80, %mul97
  store double %add98, double* %dev, align 8
  %81 = load i32, i32* %k73, align 4
  %add99 = add nsw i32 %81, 1
  %idxprom100 = sext i32 %add99 to i64
  %82 = load i8*, i8** %row60, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %82, i64 %idxprom100
  %83 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %83 to i32
  %conv103 = sitofp i32 %conv102 to double
  %84 = load double, double* %g, align 8
  %sub104 = fsub double %conv103, %84
  %conv105 = fptosi double %sub104 to i32
  %call106 = call i32 @abs(i32 %conv105) #5
  %conv107 = sitofp i32 %call106 to double
  %85 = load double, double* %v76, align 8
  %mul108 = fmul double %conv107, %85
  %86 = load double, double* %dev, align 8
  %add109 = fadd double %86, %mul108
  store double %add109, double* %dev, align 8
  %87 = load i32, i32* %k73, align 4
  %add110 = add nsw i32 %87, 2
  %idxprom111 = sext i32 %add110 to i64
  %88 = load i8*, i8** %row60, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %88, i64 %idxprom111
  %89 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %89 to i32
  %conv114 = sitofp i32 %conv113 to double
  %90 = load double, double* %b, align 8
  %sub115 = fsub double %conv114, %90
  %conv116 = fptosi double %sub115 to i32
  %call117 = call i32 @abs(i32 %conv116) #5
  %conv118 = sitofp i32 %call117 to double
  %91 = load double, double* %v76, align 8
  %mul119 = fmul double %conv118, %91
  %92 = load double, double* %dev, align 8
  %add120 = fadd double %92, %mul119
  store double %add120, double* %dev, align 8
  %93 = load i32, i32* @img_has_alpha, align 4
  %tobool121 = icmp ne i32 %93, 0
  br i1 %tobool121, label %if.then.122, label %if.end.137

if.then.122:                                      ; preds = %if.then.87
  %94 = load i32, i32* %ty.addr, align 4
  %95 = load i32, i32* %y, align 4
  %add123 = add nsw i32 %94, %95
  %96 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %width124 = getelementptr inbounds %struct.ppm, %struct.ppm* %96, i32 0, i32 0
  %97 = load i32, i32* %width124, align 4
  %mul125 = mul nsw i32 %add123, %97
  %mul126 = mul nsw i32 %mul125, 3
  %98 = load i32, i32* %tx.addr, align 4
  %99 = load i32, i32* %x, align 4
  %add127 = add nsw i32 %98, %99
  %mul128 = mul nsw i32 %add127, 3
  %add129 = add nsw i32 %mul126, %mul128
  %idxprom130 = sext i32 %add129 to i64
  %100 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %col131 = getelementptr inbounds %struct.ppm, %struct.ppm* %100, i32 0, i32 2
  %101 = load i8*, i8** %col131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %101, i64 %idxprom130
  %102 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %102 to i32
  %conv134 = sitofp i32 %conv133 to double
  %103 = load double, double* %v76, align 8
  %mul135 = fmul double %conv134, %103
  %104 = load double, double* %dev, align 8
  %add136 = fadd double %104, %mul135
  store double %add136, double* %dev, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.122, %if.then.87
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.body.72
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %105 = load i32, i32* %x, align 4
  %inc140 = add nsw i32 %105, 1
  store i32 %inc140, i32* %x, align 4
  br label %for.cond.68

for.end.141:                                      ; preds = %for.cond.68
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %106 = load i32, i32* %y, align 4
  %inc143 = add nsw i32 %106, 1
  store i32 %inc143, i32* %y, align 4
  br label %for.cond.55

for.end.144:                                      ; preds = %for.cond.55
  %107 = load double, double* %thissum, align 8
  %108 = load double, double* %dev, align 8
  %div145 = fdiv double %108, %107
  store double %div145, double* %dev, align 8
  %109 = load i32, i32* %best, align 4
  %cmp146 = icmp eq i32 %109, -1
  br i1 %cmp146, label %if.then.150, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.144
  %110 = load double, double* %dev, align 8
  %111 = load double, double* %bestdev, align 8
  %cmp148 = fcmp olt double %110, %111
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %lor.lhs.false, %for.end.144
  %112 = load %struct._GList*, %struct._GList** %brlist, align 8
  %tobool151 = icmp ne %struct._GList* %112, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.then.150
  %113 = load %struct._GList*, %struct._GList** %brlist, align 8
  call void @g_list_free(%struct._GList* %113)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.then.150
  store %struct._GList* null, %struct._GList** %brlist, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %lor.lhs.false
  %114 = load double, double* %dev, align 8
  %115 = load double, double* %bestdev, align 8
  %cmp155 = fcmp ole double %114, %115
  br i1 %cmp155, label %if.then.160, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.154
  %116 = load i32, i32* %best, align 4
  %cmp158 = icmp slt i32 %116, 0
  br i1 %cmp158, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %lor.lhs.false.157, %if.end.154
  %117 = load i64, i64* %i, align 8
  %conv161 = trunc i64 %117 to i32
  store i32 %conv161, i32* %best, align 4
  %118 = load double, double* %dev, align 8
  store double %118, double* %bestdev, align 8
  %119 = load %struct._GList*, %struct._GList** %brlist, align 8
  %120 = load i64, i64* %i, align 8
  %121 = inttoptr i64 %120 to i8*
  %call162 = call %struct._GList* @g_list_append(%struct._GList* %119, i8* %121)
  store %struct._GList* %call162, %struct._GList** %brlist, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %lor.lhs.false.157
  %122 = load double, double* %dev, align 8
  %123 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 35), align 8
  %cmp164 = fcmp olt double %122, %123
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  br label %for.end.171

if.end.167:                                       ; preds = %if.end.163
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %124 = load i32, i32* %step.addr, align 4
  %conv169 = sext i32 %124 to i64
  %125 = load i64, i64* %i, align 8
  %add170 = add nsw i64 %125, %conv169
  store i64 %add170, i64* %i, align 8
  br label %for.cond

for.end.171:                                      ; preds = %if.then.166, %for.cond
  %126 = load %struct._GList*, %struct._GList** %brlist, align 8
  %tobool172 = icmp ne %struct._GList* %126, null
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %for.end.171
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.174:                                       ; preds = %for.end.171
  %127 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %128 = load %struct._GList*, %struct._GList** %brlist, align 8
  %call175 = call i32 @g_list_length(%struct._GList* %128)
  %call176 = call i32 @g_rand_int_range(%struct._GRand* %127, i32 0, i32 %call175)
  %conv177 = sext i32 %call176 to i64
  store i64 %conv177, i64* %i, align 8
  %129 = load %struct._GList*, %struct._GList** %brlist, align 8
  %130 = load i64, i64* %i, align 8
  %conv178 = trunc i64 %130 to i32
  %call179 = call %struct._GList* @g_list_nth(%struct._GList* %129, i32 %conv178)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call179, i32 0, i32 0
  %131 = load i8*, i8** %data, align 8
  %132 = ptrtoint i8* %131 to i64
  %conv180 = trunc i64 %132 to i32
  store i32 %conv180, i32* %best, align 4
  %133 = load %struct._GList*, %struct._GList** %brlist, align 8
  call void @g_list_free(%struct._GList* %133)
  %134 = load i32, i32* %best, align 4
  store i32 %134, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %if.then.173
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal void @apply_brush(%struct.ppm* %brush, %struct.ppm* %shadow, %struct.ppm* %p, %struct.ppm* %a, i32 %tx, i32 %ty, i32 %r, i32 %g, i32 %b) #0 {
entry:
  %brush.addr = alloca %struct.ppm*, align 8
  %shadow.addr = alloca %struct.ppm*, align 8
  %p.addr = alloca %struct.ppm*, align 8
  %a.addr = alloca %struct.ppm*, align 8
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %atmp = alloca %struct.ppm, align 8
  %v = alloca double, align 8
  %h = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %edgedarken = alloca double, align 8
  %relief = alloca double, align 8
  %shadowdepth = alloca i32, align 4
  %shadowblur = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %row = alloca i8*, align 8
  %arow = alloca i8*, align 8
  %k = alloca i32, align 4
  %row110 = alloca i8*, align 8
  %arow119 = alloca i8*, align 8
  %k136 = alloca i32, align 4
  %row264 = alloca i8*, align 8
  %k278 = alloca i32, align 4
  store %struct.ppm* %brush, %struct.ppm** %brush.addr, align 8
  store %struct.ppm* %shadow, %struct.ppm** %shadow.addr, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store %struct.ppm* %a, %struct.ppm** %a.addr, align 8
  store i32 %tx, i32* %tx.addr, align 4
  store i32 %ty, i32* %ty.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 9), align 8
  %sub = fsub double 1.000000e+00, %0
  store double %sub, double* %edgedarken, align 8
  %1 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 4), align 8
  %div = fdiv double %1, 1.000000e+02
  store double %div, double* %relief, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  store i32 %2, i32* %shadowdepth, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  store i32 %3, i32* %shadowblur, align 4
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 2
  store i8* null, i8** %col, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 0
  store i32 0, i32* %width, align 4
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %5 = bitcast %struct.ppm* %tmp to i8*
  %6 = bitcast %struct.ppm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = load i32, i32* @img_has_alpha, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %9 = bitcast %struct.ppm* %atmp to i8*
  %10 = bitcast %struct.ppm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.ppm*, %struct.ppm** %shadow.addr, align 8
  %tobool10 = icmp ne %struct.ppm* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.103

if.then.11:                                       ; preds = %if.end
  %12 = load i32, i32* %tx.addr, align 4
  %13 = load i32, i32* %shadowdepth, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %shadowblur, align 4
  %mul = mul nsw i32 %14, 2
  %sub13 = sub nsw i32 %add, %mul
  store i32 %sub13, i32* %sx, align 4
  %15 = load i32, i32* %ty.addr, align 4
  %16 = load i32, i32* %shadowdepth, align 4
  %add15 = add nsw i32 %15, %16
  %17 = load i32, i32* %shadowblur, align 4
  %mul16 = mul nsw i32 %17, 2
  %sub17 = sub nsw i32 %add15, %mul16
  store i32 %sub17, i32* %sy, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %if.then.11
  %18 = load i32, i32* %y, align 4
  %19 = load %struct.ppm*, %struct.ppm** %shadow.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 1
  %20 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %arow, align 8
  %21 = load i32, i32* %sy, align 4
  %22 = load i32, i32* %y, align 4
  %add20 = add nsw i32 %21, %22
  %cmp21 = icmp slt i32 %add20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  br label %for.inc.100

if.end.23:                                        ; preds = %for.body
  %23 = load i32, i32* %sy, align 4
  %24 = load i32, i32* %y, align 4
  %add24 = add nsw i32 %23, %24
  %height25 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %25 = load i32, i32* %height25, align 4
  %cmp26 = icmp sge i32 %add24, %25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %for.end.102

if.end.28:                                        ; preds = %if.end.23
  %col29 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %26 = load i8*, i8** %col29, align 8
  %27 = load i32, i32* %sy, align 4
  %28 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %27, %28
  %width31 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %29 = load i32, i32* %width31, align 4
  %mul32 = mul nsw i32 %add30, %29
  %mul33 = mul nsw i32 %mul32, 3
  %idx.ext = sext i32 %mul33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  %30 = load i32, i32* @img_has_alpha, align 4
  %tobool34 = icmp ne i32 %30, 0
  br i1 %tobool34, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %if.end.28
  %col36 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 2
  %31 = load i8*, i8** %col36, align 8
  %32 = load i32, i32* %sy, align 4
  %33 = load i32, i32* %y, align 4
  %add37 = add nsw i32 %32, %33
  %width38 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 0
  %34 = load i32, i32* %width38, align 4
  %mul39 = mul nsw i32 %add37, %34
  %mul40 = mul nsw i32 %mul39, 3
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %31, i64 %idx.ext41
  store i8* %add.ptr42, i8** %arow, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.35, %if.end.28
  store i32 0, i32* %x, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.end.43
  %35 = load i32, i32* %x, align 4
  %36 = load %struct.ppm*, %struct.ppm** %shadow.addr, align 8
  %width45 = getelementptr inbounds %struct.ppm, %struct.ppm* %36, i32 0, i32 0
  %37 = load i32, i32* %width45, align 4
  %cmp46 = icmp slt i32 %35, %37
  br i1 %cmp46, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.44
  %38 = load i32, i32* %sx, align 4
  %39 = load i32, i32* %x, align 4
  %add49 = add nsw i32 %38, %39
  %mul50 = mul nsw i32 %add49, 3
  store i32 %mul50, i32* %k, align 4
  %40 = load i32, i32* %sx, align 4
  %41 = load i32, i32* %x, align 4
  %add51 = add nsw i32 %40, %41
  %cmp52 = icmp slt i32 %add51, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.47
  br label %for.inc

if.end.54:                                        ; preds = %for.body.47
  %42 = load i32, i32* %sx, align 4
  %43 = load i32, i32* %x, align 4
  %add55 = add nsw i32 %42, %43
  %width56 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %44 = load i32, i32* %width56, align 4
  %cmp57 = icmp sge i32 %add55, %44
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  br label %for.end

if.end.59:                                        ; preds = %if.end.54
  %45 = load i32, i32* %y, align 4
  %46 = load %struct.ppm*, %struct.ppm** %shadow.addr, align 8
  %width60 = getelementptr inbounds %struct.ppm, %struct.ppm* %46, i32 0, i32 0
  %47 = load i32, i32* %width60, align 4
  %mul61 = mul nsw i32 %45, %47
  %mul62 = mul nsw i32 %mul61, 3
  %48 = load i32, i32* %x, align 4
  %mul63 = mul nsw i32 %48, 3
  %add64 = add nsw i32 %mul62, %mul63
  %add65 = add nsw i32 %add64, 2
  %idxprom = sext i32 %add65 to i64
  %49 = load %struct.ppm*, %struct.ppm** %shadow.addr, align 8
  %col66 = getelementptr inbounds %struct.ppm, %struct.ppm* %49, i32 0, i32 2
  %50 = load i8*, i8** %col66, align 8
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %51 to double
  store double %conv, double* %h, align 8
  %52 = load double, double* %h, align 8
  %tobool67 = fcmp une double %52, 0.000000e+00
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.59
  br label %for.inc

if.end.69:                                        ; preds = %if.end.59
  %53 = load double, double* %h, align 8
  %div70 = fdiv double %53, 2.550000e+02
  %54 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 30), align 8
  %mul71 = fmul double %div70, %54
  %div72 = fdiv double %mul71, 1.000000e+02
  %sub73 = fsub double 1.000000e+00, %div72
  store double %sub73, double* %v, align 8
  %55 = load double, double* %v, align 8
  %56 = load i32, i32* %k, align 4
  %add74 = add nsw i32 %56, 0
  %idxprom75 = sext i32 %add74 to i64
  %57 = load i8*, i8** %row, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %57, i64 %idxprom75
  %58 = load i8, i8* %arrayidx76, align 1
  %conv77 = uitofp i8 %58 to double
  %mul78 = fmul double %conv77, %55
  %conv79 = fptoui double %mul78 to i8
  store i8 %conv79, i8* %arrayidx76, align 1
  %59 = load double, double* %v, align 8
  %60 = load i32, i32* %k, align 4
  %add80 = add nsw i32 %60, 1
  %idxprom81 = sext i32 %add80 to i64
  %61 = load i8*, i8** %row, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %61, i64 %idxprom81
  %62 = load i8, i8* %arrayidx82, align 1
  %conv83 = uitofp i8 %62 to double
  %mul84 = fmul double %conv83, %59
  %conv85 = fptoui double %mul84 to i8
  store i8 %conv85, i8* %arrayidx82, align 1
  %63 = load double, double* %v, align 8
  %64 = load i32, i32* %k, align 4
  %add86 = add nsw i32 %64, 2
  %idxprom87 = sext i32 %add86 to i64
  %65 = load i8*, i8** %row, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %65, i64 %idxprom87
  %66 = load i8, i8* %arrayidx88, align 1
  %conv89 = uitofp i8 %66 to double
  %mul90 = fmul double %conv89, %63
  %conv91 = fptoui double %mul90 to i8
  store i8 %conv91, i8* %arrayidx88, align 1
  %67 = load i32, i32* @img_has_alpha, align 4
  %tobool92 = icmp ne i32 %67, 0
  br i1 %tobool92, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %if.end.69
  %68 = load double, double* %v, align 8
  %69 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load i8*, i8** %arow, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %70, i64 %idxprom94
  %71 = load i8, i8* %arrayidx95, align 1
  %conv96 = uitofp i8 %71 to double
  %mul97 = fmul double %conv96, %68
  %conv98 = fptoui double %mul97 to i8
  store i8 %conv98, i8* %arrayidx95, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.93, %if.end.69
  br label %for.inc

for.inc:                                          ; preds = %if.end.99, %if.then.68, %if.then.53
  %72 = load i32, i32* %x, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.44

for.end:                                          ; preds = %if.then.58, %for.cond.44
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end, %if.then.22
  %73 = load i32, i32* %y, align 4
  %inc101 = add nsw i32 %73, 1
  store i32 %inc101, i32* %y, align 4
  br label %for.cond

for.end.102:                                      ; preds = %if.then.27, %for.cond
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %if.end
  store i32 0, i32* %y, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.252, %if.end.103
  %74 = load i32, i32* %y, align 4
  %75 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %height105 = getelementptr inbounds %struct.ppm, %struct.ppm* %75, i32 0, i32 1
  %76 = load i32, i32* %height105, align 4
  %cmp106 = icmp slt i32 %74, %76
  br i1 %cmp106, label %for.body.108, label %for.end.254

for.body.108:                                     ; preds = %for.cond.104
  %col111 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %77 = load i8*, i8** %col111, align 8
  %78 = load i32, i32* %ty.addr, align 4
  %79 = load i32, i32* %y, align 4
  %add112 = add nsw i32 %78, %79
  %width113 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %80 = load i32, i32* %width113, align 4
  %mul114 = mul nsw i32 %add112, %80
  %mul115 = mul nsw i32 %mul114, 3
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %77, i64 %idx.ext116
  store i8* %add.ptr117, i8** %row110, align 8
  store i8* null, i8** %arow119, align 8
  %81 = load i32, i32* @img_has_alpha, align 4
  %tobool120 = icmp ne i32 %81, 0
  br i1 %tobool120, label %if.then.121, label %if.end.129

if.then.121:                                      ; preds = %for.body.108
  %col122 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 2
  %82 = load i8*, i8** %col122, align 8
  %83 = load i32, i32* %ty.addr, align 4
  %84 = load i32, i32* %y, align 4
  %add123 = add nsw i32 %83, %84
  %width124 = getelementptr inbounds %struct.ppm, %struct.ppm* %atmp, i32 0, i32 0
  %85 = load i32, i32* %width124, align 4
  %mul125 = mul nsw i32 %add123, %85
  %mul126 = mul nsw i32 %mul125, 3
  %idx.ext127 = sext i32 %mul126 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %82, i64 %idx.ext127
  store i8* %add.ptr128, i8** %arow119, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.121, %for.body.108
  store i32 0, i32* %x, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.249, %if.end.129
  %86 = load i32, i32* %x, align 4
  %87 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %width131 = getelementptr inbounds %struct.ppm, %struct.ppm* %87, i32 0, i32 0
  %88 = load i32, i32* %width131, align 4
  %cmp132 = icmp slt i32 %86, %88
  br i1 %cmp132, label %for.body.134, label %for.end.251

for.body.134:                                     ; preds = %for.cond.130
  %89 = load i32, i32* %tx.addr, align 4
  %90 = load i32, i32* %x, align 4
  %add137 = add nsw i32 %89, %90
  %mul138 = mul nsw i32 %add137, 3
  store i32 %mul138, i32* %k136, align 4
  %91 = load i32, i32* %y, align 4
  %92 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %width139 = getelementptr inbounds %struct.ppm, %struct.ppm* %92, i32 0, i32 0
  %93 = load i32, i32* %width139, align 4
  %mul140 = mul nsw i32 %91, %93
  %mul141 = mul nsw i32 %mul140, 3
  %94 = load i32, i32* %x, align 4
  %mul142 = mul nsw i32 %94, 3
  %add143 = add nsw i32 %mul141, %mul142
  %idxprom144 = sext i32 %add143 to i64
  %95 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %col145 = getelementptr inbounds %struct.ppm, %struct.ppm* %95, i32 0, i32 2
  %96 = load i8*, i8** %col145, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %96, i64 %idxprom144
  %97 = load i8, i8* %arrayidx146, align 1
  %conv147 = uitofp i8 %97 to double
  store double %conv147, double* %h, align 8
  %98 = load double, double* %h, align 8
  %tobool148 = fcmp une double %98, 0.000000e+00
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %for.body.134
  br label %for.inc.249

if.end.150:                                       ; preds = %for.body.134
  %99 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @runningvals, i32 0, i32 28), align 4
  %tobool151 = icmp ne i32 %99, 0
  br i1 %tobool151, label %if.then.152, label %if.end.194

if.then.152:                                      ; preds = %if.end.150
  %100 = load i32, i32* %y, align 4
  %101 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %width153 = getelementptr inbounds %struct.ppm, %struct.ppm* %101, i32 0, i32 0
  %102 = load i32, i32* %width153, align 4
  %mul154 = mul nsw i32 %100, %102
  %mul155 = mul nsw i32 %mul154, 3
  %103 = load i32, i32* %x, align 4
  %mul156 = mul nsw i32 %103, 3
  %add157 = add nsw i32 %mul155, %mul156
  %add158 = add nsw i32 %add157, 2
  %idxprom159 = sext i32 %add158 to i64
  %104 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %col160 = getelementptr inbounds %struct.ppm, %struct.ppm* %104, i32 0, i32 2
  %105 = load i8*, i8** %col160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %105, i64 %idxprom159
  %106 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %106 to i32
  %conv163 = sitofp i32 %conv162 to double
  %div164 = fdiv double %conv163, 2.550000e+02
  %sub165 = fsub double 1.000000e+00, %div164
  store double %sub165, double* %v, align 8
  %107 = load double, double* %v, align 8
  %108 = load i32, i32* %k136, align 4
  %add166 = add nsw i32 %108, 0
  %idxprom167 = sext i32 %add166 to i64
  %109 = load i8*, i8** %row110, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %109, i64 %idxprom167
  %110 = load i8, i8* %arrayidx168, align 1
  %conv169 = uitofp i8 %110 to double
  %mul170 = fmul double %conv169, %107
  %conv171 = fptoui double %mul170 to i8
  store i8 %conv171, i8* %arrayidx168, align 1
  %111 = load double, double* %v, align 8
  %112 = load i32, i32* %k136, align 4
  %add172 = add nsw i32 %112, 1
  %idxprom173 = sext i32 %add172 to i64
  %113 = load i8*, i8** %row110, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %113, i64 %idxprom173
  %114 = load i8, i8* %arrayidx174, align 1
  %conv175 = uitofp i8 %114 to double
  %mul176 = fmul double %conv175, %111
  %conv177 = fptoui double %mul176 to i8
  store i8 %conv177, i8* %arrayidx174, align 1
  %115 = load double, double* %v, align 8
  %116 = load i32, i32* %k136, align 4
  %add178 = add nsw i32 %116, 2
  %idxprom179 = sext i32 %add178 to i64
  %117 = load i8*, i8** %row110, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %117, i64 %idxprom179
  %118 = load i8, i8* %arrayidx180, align 1
  %conv181 = uitofp i8 %118 to double
  %mul182 = fmul double %conv181, %115
  %conv183 = fptoui double %mul182 to i8
  store i8 %conv183, i8* %arrayidx180, align 1
  %119 = load i32, i32* @img_has_alpha, align 4
  %tobool184 = icmp ne i32 %119, 0
  br i1 %tobool184, label %if.then.185, label %if.end.193

if.then.185:                                      ; preds = %if.then.152
  %120 = load double, double* %v, align 8
  %121 = load i32, i32* %tx.addr, align 4
  %122 = load i32, i32* %x, align 4
  %add186 = add nsw i32 %121, %122
  %mul187 = mul nsw i32 %add186, 3
  %idxprom188 = sext i32 %mul187 to i64
  %123 = load i8*, i8** %arow119, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %123, i64 %idxprom188
  %124 = load i8, i8* %arrayidx189, align 1
  %conv190 = uitofp i8 %124 to double
  %mul191 = fmul double %conv190, %120
  %conv192 = fptoui double %mul191 to i8
  store i8 %conv192, i8* %arrayidx189, align 1
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.185, %if.then.152
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.150
  %125 = load double, double* %h, align 8
  %div195 = fdiv double %125, 2.550000e+02
  %sub196 = fsub double 1.000000e+00, %div195
  %126 = load double, double* %edgedarken, align 8
  %mul197 = fmul double %sub196, %126
  store double %mul197, double* %v, align 8
  %127 = load double, double* %v, align 8
  %128 = load i32, i32* %k136, align 4
  %add198 = add nsw i32 %128, 0
  %idxprom199 = sext i32 %add198 to i64
  %129 = load i8*, i8** %row110, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %129, i64 %idxprom199
  %130 = load i8, i8* %arrayidx200, align 1
  %conv201 = uitofp i8 %130 to double
  %mul202 = fmul double %conv201, %127
  %conv203 = fptoui double %mul202 to i8
  store i8 %conv203, i8* %arrayidx200, align 1
  %131 = load double, double* %v, align 8
  %132 = load i32, i32* %k136, align 4
  %add204 = add nsw i32 %132, 1
  %idxprom205 = sext i32 %add204 to i64
  %133 = load i8*, i8** %row110, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %133, i64 %idxprom205
  %134 = load i8, i8* %arrayidx206, align 1
  %conv207 = uitofp i8 %134 to double
  %mul208 = fmul double %conv207, %131
  %conv209 = fptoui double %mul208 to i8
  store i8 %conv209, i8* %arrayidx206, align 1
  %135 = load double, double* %v, align 8
  %136 = load i32, i32* %k136, align 4
  %add210 = add nsw i32 %136, 2
  %idxprom211 = sext i32 %add210 to i64
  %137 = load i8*, i8** %row110, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %137, i64 %idxprom211
  %138 = load i8, i8* %arrayidx212, align 1
  %conv213 = uitofp i8 %138 to double
  %mul214 = fmul double %conv213, %135
  %conv215 = fptoui double %mul214 to i8
  store i8 %conv215, i8* %arrayidx212, align 1
  %139 = load i32, i32* @img_has_alpha, align 4
  %tobool216 = icmp ne i32 %139, 0
  br i1 %tobool216, label %if.then.217, label %if.end.223

if.then.217:                                      ; preds = %if.end.194
  %140 = load double, double* %v, align 8
  %141 = load i32, i32* %k136, align 4
  %idxprom218 = sext i32 %141 to i64
  %142 = load i8*, i8** %arow119, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %142, i64 %idxprom218
  %143 = load i8, i8* %arrayidx219, align 1
  %conv220 = uitofp i8 %143 to double
  %mul221 = fmul double %conv220, %140
  %conv222 = fptoui double %mul221 to i8
  store i8 %conv222, i8* %arrayidx219, align 1
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.217, %if.end.194
  %144 = load double, double* %h, align 8
  %div224 = fdiv double %144, 2.550000e+02
  store double %div224, double* %v, align 8
  %145 = load i32, i32* %r.addr, align 4
  %conv225 = sitofp i32 %145 to double
  %146 = load double, double* %v, align 8
  %mul226 = fmul double %conv225, %146
  %147 = load i32, i32* %k136, align 4
  %add227 = add nsw i32 %147, 0
  %idxprom228 = sext i32 %add227 to i64
  %148 = load i8*, i8** %row110, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %148, i64 %idxprom228
  %149 = load i8, i8* %arrayidx229, align 1
  %conv230 = uitofp i8 %149 to double
  %add231 = fadd double %conv230, %mul226
  %conv232 = fptoui double %add231 to i8
  store i8 %conv232, i8* %arrayidx229, align 1
  %150 = load i32, i32* %g.addr, align 4
  %conv233 = sitofp i32 %150 to double
  %151 = load double, double* %v, align 8
  %mul234 = fmul double %conv233, %151
  %152 = load i32, i32* %k136, align 4
  %add235 = add nsw i32 %152, 1
  %idxprom236 = sext i32 %add235 to i64
  %153 = load i8*, i8** %row110, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %153, i64 %idxprom236
  %154 = load i8, i8* %arrayidx237, align 1
  %conv238 = uitofp i8 %154 to double
  %add239 = fadd double %conv238, %mul234
  %conv240 = fptoui double %add239 to i8
  store i8 %conv240, i8* %arrayidx237, align 1
  %155 = load i32, i32* %b.addr, align 4
  %conv241 = sitofp i32 %155 to double
  %156 = load double, double* %v, align 8
  %mul242 = fmul double %conv241, %156
  %157 = load i32, i32* %k136, align 4
  %add243 = add nsw i32 %157, 2
  %idxprom244 = sext i32 %add243 to i64
  %158 = load i8*, i8** %row110, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %158, i64 %idxprom244
  %159 = load i8, i8* %arrayidx245, align 1
  %conv246 = uitofp i8 %159 to double
  %add247 = fadd double %conv246, %mul242
  %conv248 = fptoui double %add247 to i8
  store i8 %conv248, i8* %arrayidx245, align 1
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.223, %if.then.149
  %160 = load i32, i32* %x, align 4
  %inc250 = add nsw i32 %160, 1
  store i32 %inc250, i32* %x, align 4
  br label %for.cond.130

for.end.251:                                      ; preds = %for.cond.130
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.end.251
  %161 = load i32, i32* %y, align 4
  %inc253 = add nsw i32 %161, 1
  store i32 %inc253, i32* %y, align 4
  br label %for.cond.104

for.end.254:                                      ; preds = %for.cond.104
  %162 = load double, double* %relief, align 8
  %cmp255 = fcmp ogt double %162, 1.000000e-03
  br i1 %cmp255, label %if.then.257, label %if.end.349

if.then.257:                                      ; preds = %for.end.254
  store i32 1, i32* %y, align 4
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.346, %if.then.257
  %163 = load i32, i32* %y, align 4
  %164 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %height259 = getelementptr inbounds %struct.ppm, %struct.ppm* %164, i32 0, i32 1
  %165 = load i32, i32* %height259, align 4
  %cmp260 = icmp slt i32 %163, %165
  br i1 %cmp260, label %for.body.262, label %for.end.348

for.body.262:                                     ; preds = %for.cond.258
  %col265 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %166 = load i8*, i8** %col265, align 8
  %167 = load i32, i32* %ty.addr, align 4
  %168 = load i32, i32* %y, align 4
  %add266 = add nsw i32 %167, %168
  %width267 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %169 = load i32, i32* %width267, align 4
  %mul268 = mul nsw i32 %add266, %169
  %mul269 = mul nsw i32 %mul268, 3
  %idx.ext270 = sext i32 %mul269 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %166, i64 %idx.ext270
  store i8* %add.ptr271, i8** %row264, align 8
  store i32 1, i32* %x, align 4
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.343, %for.body.262
  %170 = load i32, i32* %x, align 4
  %171 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %width273 = getelementptr inbounds %struct.ppm, %struct.ppm* %171, i32 0, i32 0
  %172 = load i32, i32* %width273, align 4
  %cmp274 = icmp slt i32 %170, %172
  br i1 %cmp274, label %for.body.276, label %for.end.345

for.body.276:                                     ; preds = %for.cond.272
  %173 = load i32, i32* %tx.addr, align 4
  %174 = load i32, i32* %x, align 4
  %add279 = add nsw i32 %173, %174
  %mul280 = mul nsw i32 %add279, 3
  store i32 %mul280, i32* %k278, align 4
  %175 = load i32, i32* %y, align 4
  %176 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %width281 = getelementptr inbounds %struct.ppm, %struct.ppm* %176, i32 0, i32 0
  %177 = load i32, i32* %width281, align 4
  %mul282 = mul nsw i32 %175, %177
  %mul283 = mul nsw i32 %mul282, 3
  %178 = load i32, i32* %x, align 4
  %mul284 = mul nsw i32 %178, 3
  %add285 = add nsw i32 %mul283, %mul284
  %add286 = add nsw i32 %add285, 1
  %idxprom287 = sext i32 %add286 to i64
  %179 = load %struct.ppm*, %struct.ppm** %brush.addr, align 8
  %col288 = getelementptr inbounds %struct.ppm, %struct.ppm* %179, i32 0, i32 2
  %180 = load i8*, i8** %col288, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %180, i64 %idxprom287
  %181 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %181 to i32
  %conv291 = sitofp i32 %conv290 to double
  %182 = load double, double* %relief, align 8
  %mul292 = fmul double %conv291, %182
  store double %mul292, double* %h, align 8
  %183 = load double, double* %h, align 8
  %cmp293 = fcmp olt double %183, 1.000000e-03
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %for.body.276
  br label %for.inc.343

if.end.296:                                       ; preds = %for.body.276
  %184 = load double, double* %h, align 8
  %cmp297 = fcmp ogt double %184, 2.550000e+02
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.end.296
  store double 2.550000e+02, double* %h, align 8
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %if.end.296
  %185 = load i32, i32* %k278, align 4
  %add301 = add nsw i32 %185, 0
  %idxprom302 = sext i32 %add301 to i64
  %186 = load i8*, i8** %row264, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %186, i64 %idxprom302
  %187 = load i8, i8* %arrayidx303, align 1
  %conv304 = zext i8 %187 to i32
  %conv305 = sitofp i32 %conv304 to double
  %188 = load double, double* %h, align 8
  %sub306 = fsub double 2.550000e+02, %188
  %mul307 = fmul double %conv305, %sub306
  %189 = load double, double* %h, align 8
  %mul308 = fmul double 2.550000e+02, %189
  %add309 = fadd double %mul307, %mul308
  %div310 = fdiv double %add309, 2.550000e+02
  %conv311 = fptoui double %div310 to i8
  %190 = load i32, i32* %k278, align 4
  %add312 = add nsw i32 %190, 0
  %idxprom313 = sext i32 %add312 to i64
  %191 = load i8*, i8** %row264, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %191, i64 %idxprom313
  store i8 %conv311, i8* %arrayidx314, align 1
  %192 = load i32, i32* %k278, align 4
  %add315 = add nsw i32 %192, 1
  %idxprom316 = sext i32 %add315 to i64
  %193 = load i8*, i8** %row264, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %193, i64 %idxprom316
  %194 = load i8, i8* %arrayidx317, align 1
  %conv318 = zext i8 %194 to i32
  %conv319 = sitofp i32 %conv318 to double
  %195 = load double, double* %h, align 8
  %sub320 = fsub double 2.550000e+02, %195
  %mul321 = fmul double %conv319, %sub320
  %196 = load double, double* %h, align 8
  %mul322 = fmul double 2.550000e+02, %196
  %add323 = fadd double %mul321, %mul322
  %div324 = fdiv double %add323, 2.550000e+02
  %conv325 = fptoui double %div324 to i8
  %197 = load i32, i32* %k278, align 4
  %add326 = add nsw i32 %197, 1
  %idxprom327 = sext i32 %add326 to i64
  %198 = load i8*, i8** %row264, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %198, i64 %idxprom327
  store i8 %conv325, i8* %arrayidx328, align 1
  %199 = load i32, i32* %k278, align 4
  %add329 = add nsw i32 %199, 2
  %idxprom330 = sext i32 %add329 to i64
  %200 = load i8*, i8** %row264, align 8
  %arrayidx331 = getelementptr inbounds i8, i8* %200, i64 %idxprom330
  %201 = load i8, i8* %arrayidx331, align 1
  %conv332 = zext i8 %201 to i32
  %conv333 = sitofp i32 %conv332 to double
  %202 = load double, double* %h, align 8
  %sub334 = fsub double 2.550000e+02, %202
  %mul335 = fmul double %conv333, %sub334
  %203 = load double, double* %h, align 8
  %mul336 = fmul double 2.550000e+02, %203
  %add337 = fadd double %mul335, %mul336
  %div338 = fdiv double %add337, 2.550000e+02
  %conv339 = fptoui double %div338 to i8
  %204 = load i32, i32* %k278, align 4
  %add340 = add nsw i32 %204, 2
  %idxprom341 = sext i32 %add340 to i64
  %205 = load i8*, i8** %row264, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %205, i64 %idxprom341
  store i8 %conv339, i8* %arrayidx342, align 1
  br label %for.inc.343

for.inc.343:                                      ; preds = %if.end.300, %if.then.295
  %206 = load i32, i32* %x, align 4
  %inc344 = add nsw i32 %206, 1
  store i32 %inc344, i32* %x, align 4
  br label %for.cond.272

for.end.345:                                      ; preds = %for.cond.272
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.end.345
  %207 = load i32, i32* %y, align 4
  %inc347 = add nsw i32 %207, 1
  store i32 %inc347, i32* %y, align 4
  br label %for.cond.258

for.end.348:                                      ; preds = %for.cond.258
  br label %if.end.349

if.end.349:                                       ; preds = %for.end.348, %for.end.254
  ret void
}

declare void @ppm_kill(%struct.ppm*) #2

declare void @g_free(i8*) #2

declare void @crop(%struct.ppm*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare double @getsiz_proto(double, double, i32, %struct.smvector*, double, i32) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

declare void @g_list_free(%struct._GList*) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

declare i32 @g_list_length(%struct._GList*) #2

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
