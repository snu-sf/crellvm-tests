; ModuleID = 'com_vanilla.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msg_tag = type { i32, i32, i8*, i32 }
%struct.double_complex = type { double, double }
%struct.wilson_vector = type { [4 x %struct.su3_vector] }

@neighbor = common global i32** null, align 8
@n_gathers = common global i32 0, align 4
@nx = external global i32, align 4
@ny = external global i32, align 4
@nz = external global i32, align 4
@nt = external global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c"BOTCH: bad direction\0A\00", align 1
@this_node = external global i32, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Too many gathers! change MAX_GATHERS\0A\00", align 1
@sites_on_node = external global i32, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NODE %d: no room for neighbor vector\0A\00", align 1
@lattice = external global %struct.site*, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"DUMMY! Your gather mapping does not stay in lattice\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"It mapped %d %d %d %d to %d %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"DUMMY! Your gather mapping does not obey claimed parity\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"DUMMY! Your gather mapping is not its own inverse\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"It's square mapped %d %d %d %d to %d %d %d %d\0A\00", align 1
@even_sites_on_node = external global i32, align 4
@g_gather_flag = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"ERROR: node %d, two general_gathers() at once!\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"BOTCH: this never happens\0A\00", align 1
@name = internal global [17 x i8] c"Scalar processor\00", align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"termination\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Termination: status = %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @initialize_machine(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @make_nn_gathers() #0 {
entry:
  %i = alloca i32, align 4
  %call = call noalias i8* @calloc(i64 8, i64 8) #4
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** @neighbor, align 8
  store i32 0, i32* @n_gathers, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* @neighbor_coords_special, i32* %i, i32 1, i32 0, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32**, i32*** @neighbor, align 8
  %4 = bitcast i32** %3 to i8**
  call void @sort_eight_special(i8** %4)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* %func, i32* %args, i32 %inverse, i32 %want_even_odd, i32 %parity_conserve) #0 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, align 8
  %args.addr = alloca i32*, align 8
  %inverse.addr = alloca i32, align 4
  %want_even_odd.addr = alloca i32, align 4
  %parity_conserve.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %t2 = alloca i32, align 4
  store void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* %func, void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)** %func.addr, align 8
  store i32* %args, i32** %args.addr, align 8
  store i32 %inverse, i32* %inverse.addr, align 4
  store i32 %want_even_odd, i32* %want_even_odd.addr, align 4
  store i32 %parity_conserve, i32* %parity_conserve.addr, align 4
  %0 = load i32, i32* %inverse.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @n_gathers, align 4
  %add = add nsw i32 %1, 2
  store i32 %add, i32* @n_gathers, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @n_gathers, align 4
  %add1 = add nsw i32 %2, 1
  store i32 %add1, i32* @n_gathers, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @n_gathers, align 4
  %cmp2 = icmp sgt i32 %3, 32
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* @this_node, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  call void @exit(i32 1) #5
  unreachable

if.end.7:                                         ; preds = %if.end
  %5 = load i32**, i32*** @neighbor, align 8
  %6 = bitcast i32** %5 to i8*
  %7 = load i32, i32* @n_gathers, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 8
  %call8 = call i8* @realloc(i8* %6, i64 %mul) #4
  %8 = bitcast i8* %call8 to i32**
  store i32** %8, i32*** @neighbor, align 8
  %9 = load i32, i32* %inverse.addr, align 4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then.11, label %if.else.36

if.then.11:                                       ; preds = %if.end.7
  %10 = load i32, i32* @sites_on_node, align 4
  %conv12 = sext i32 %10 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 4) #4
  %11 = bitcast i8* %call13 to i32*
  %12 = load i32, i32* @n_gathers, align 4
  %sub = sub nsw i32 %12, 2
  %idxprom = sext i32 %sub to i64
  %13 = load i32**, i32*** @neighbor, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %13, i64 %idxprom
  store i32* %11, i32** %arrayidx, align 8
  %14 = load i32, i32* @n_gathers, align 4
  %sub14 = sub nsw i32 %14, 2
  %idxprom15 = sext i32 %sub14 to i64
  %15 = load i32**, i32*** @neighbor, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %15, i64 %idxprom15
  %16 = load i32*, i32** %arrayidx16, align 8
  %cmp17 = icmp eq i32* %16, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.11
  %17 = load i32, i32* @this_node, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %17)
  call void @terminate(i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.11
  %18 = load i32, i32* @sites_on_node, align 4
  %conv22 = sext i32 %18 to i64
  %call23 = call noalias i8* @calloc(i64 %conv22, i64 4) #4
  %19 = bitcast i8* %call23 to i32*
  %20 = load i32, i32* @n_gathers, align 4
  %sub24 = sub nsw i32 %20, 1
  %idxprom25 = sext i32 %sub24 to i64
  %21 = load i32**, i32*** @neighbor, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %21, i64 %idxprom25
  store i32* %19, i32** %arrayidx26, align 8
  %22 = load i32, i32* @n_gathers, align 4
  %sub27 = sub nsw i32 %22, 1
  %idxprom28 = sext i32 %sub27 to i64
  %23 = load i32**, i32*** @neighbor, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %23, i64 %idxprom28
  %24 = load i32*, i32** %arrayidx29, align 8
  %cmp30 = icmp eq i32* %24, null
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.21
  %25 = load i32, i32* @this_node, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  call void @terminate(i32 1)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.21
  %26 = load i32, i32* @n_gathers, align 4
  %sub35 = sub nsw i32 %26, 2
  store i32 %sub35, i32* %dir, align 4
  br label %if.end.51

if.else.36:                                       ; preds = %if.end.7
  %27 = load i32, i32* @sites_on_node, align 4
  %conv37 = sext i32 %27 to i64
  %call38 = call noalias i8* @calloc(i64 %conv37, i64 4) #4
  %28 = bitcast i8* %call38 to i32*
  %29 = load i32, i32* @n_gathers, align 4
  %sub39 = sub nsw i32 %29, 1
  %idxprom40 = sext i32 %sub39 to i64
  %30 = load i32**, i32*** @neighbor, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %30, i64 %idxprom40
  store i32* %28, i32** %arrayidx41, align 8
  %31 = load i32, i32* @n_gathers, align 4
  %sub42 = sub nsw i32 %31, 1
  %idxprom43 = sext i32 %sub42 to i64
  %32 = load i32**, i32*** @neighbor, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %32, i64 %idxprom43
  %33 = load i32*, i32** %arrayidx44, align 8
  %cmp45 = icmp eq i32* %33, null
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.else.36
  %34 = load i32, i32* @this_node, align 4
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %34)
  call void @terminate(i32 1)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.else.36
  %35 = load i32, i32* @n_gathers, align 4
  %sub50 = sub nsw i32 %35, 1
  store i32 %sub50, i32* %dir, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.49, %if.end.34
  store i32 0, i32* %i, align 4
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %36, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* @sites_on_node, align 4
  %cmp52 = icmp slt i32 %37, %38
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)** %func.addr, align 8
  %40 = load %struct.site*, %struct.site** %s, align 8
  %x54 = getelementptr inbounds %struct.site, %struct.site* %40, i32 0, i32 0
  %41 = load i16, i16* %x54, align 2
  %conv55 = sext i16 %41 to i32
  %42 = load %struct.site*, %struct.site** %s, align 8
  %y56 = getelementptr inbounds %struct.site, %struct.site* %42, i32 0, i32 1
  %43 = load i16, i16* %y56, align 2
  %conv57 = sext i16 %43 to i32
  %44 = load %struct.site*, %struct.site** %s, align 8
  %z58 = getelementptr inbounds %struct.site, %struct.site* %44, i32 0, i32 2
  %45 = load i16, i16* %z58, align 2
  %conv59 = sext i16 %45 to i32
  %46 = load %struct.site*, %struct.site** %s, align 8
  %t60 = getelementptr inbounds %struct.site, %struct.site* %46, i32 0, i32 3
  %47 = load i16, i16* %t60, align 2
  %conv61 = sext i16 %47 to i32
  %48 = load i32*, i32** %args.addr, align 8
  call void %39(i32 %conv55, i32 %conv57, i32 %conv59, i32 %conv61, i32* %48, i32 1, i32* %x, i32* %y, i32* %z, i32* %t)
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %y, align 4
  %add62 = add nsw i32 %49, %50
  %51 = load i32, i32* %z, align 4
  %add63 = add nsw i32 %add62, %51
  %52 = load i32, i32* %t, align 4
  %add64 = add nsw i32 %add63, %52
  %rem = srem i32 %add64, 2
  store i32 %rem, i32* %k, align 4
  %53 = load i32, i32* %x, align 4
  %cmp65 = icmp slt i32 %53, 0
  br i1 %cmp65, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %54 = load i32, i32* %y, align 4
  %cmp67 = icmp slt i32 %54, 0
  br i1 %cmp67, label %if.then.87, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false
  %55 = load i32, i32* %z, align 4
  %cmp70 = icmp slt i32 %55, 0
  br i1 %cmp70, label %if.then.87, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.69
  %56 = load i32, i32* %t, align 4
  %cmp73 = icmp slt i32 %56, 0
  br i1 %cmp73, label %if.then.87, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.72
  %57 = load i32, i32* %x, align 4
  %58 = load i32, i32* @nx, align 4
  %cmp76 = icmp sge i32 %57, %58
  br i1 %cmp76, label %if.then.87, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.75
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* @ny, align 4
  %cmp79 = icmp sge i32 %59, %60
  br i1 %cmp79, label %if.then.87, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.78
  %61 = load i32, i32* %z, align 4
  %62 = load i32, i32* @nz, align 4
  %cmp82 = icmp sge i32 %61, %62
  br i1 %cmp82, label %if.then.87, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.81
  %63 = load i32, i32* %t, align 4
  %64 = load i32, i32* @nt, align 4
  %cmp85 = icmp sge i32 %63, %64
  br i1 %cmp85, label %if.then.87, label %if.end.98

if.then.87:                                       ; preds = %lor.lhs.false.84, %lor.lhs.false.81, %lor.lhs.false.78, %lor.lhs.false.75, %lor.lhs.false.72, %lor.lhs.false.69, %lor.lhs.false, %for.body
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0))
  %65 = load %struct.site*, %struct.site** %s, align 8
  %x89 = getelementptr inbounds %struct.site, %struct.site* %65, i32 0, i32 0
  %66 = load i16, i16* %x89, align 2
  %conv90 = sext i16 %66 to i32
  %67 = load %struct.site*, %struct.site** %s, align 8
  %y91 = getelementptr inbounds %struct.site, %struct.site* %67, i32 0, i32 1
  %68 = load i16, i16* %y91, align 2
  %conv92 = sext i16 %68 to i32
  %69 = load %struct.site*, %struct.site** %s, align 8
  %z93 = getelementptr inbounds %struct.site, %struct.site* %69, i32 0, i32 2
  %70 = load i16, i16* %z93, align 2
  %conv94 = sext i16 %70 to i32
  %71 = load %struct.site*, %struct.site** %s, align 8
  %t95 = getelementptr inbounds %struct.site, %struct.site* %71, i32 0, i32 3
  %72 = load i16, i16* %t95, align 2
  %conv96 = sext i16 %72 to i32
  %73 = load i32, i32* %x, align 4
  %74 = load i32, i32* %y, align 4
  %75 = load i32, i32* %z, align 4
  %76 = load i32, i32* %t, align 4
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %conv90, i32 %conv92, i32 %conv94, i32 %conv96, i32 %73, i32 %74, i32 %75, i32 %76)
  call void @terminate(i32 1)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.87, %lor.lhs.false.84
  %77 = load i32, i32* %parity_conserve.addr, align 4
  %cmp99 = icmp eq i32 %77, 0
  br i1 %cmp99, label %land.lhs.true, label %lor.lhs.false.115

land.lhs.true:                                    ; preds = %if.end.98
  %78 = load i32, i32* %k, align 4
  %cmp101 = icmp eq i32 %78, 0
  br i1 %cmp101, label %land.lhs.true.103, label %lor.lhs.false.107

land.lhs.true.103:                                ; preds = %land.lhs.true
  %79 = load %struct.site*, %struct.site** %s, align 8
  %parity = getelementptr inbounds %struct.site, %struct.site* %79, i32 0, i32 4
  %80 = load i8, i8* %parity, align 1
  %conv104 = sext i8 %80 to i32
  %cmp105 = icmp eq i32 %conv104, 1
  br i1 %cmp105, label %if.then.134, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.103, %land.lhs.true
  %81 = load i32, i32* %k, align 4
  %cmp108 = icmp eq i32 %81, 1
  br i1 %cmp108, label %land.lhs.true.110, label %lor.lhs.false.115

land.lhs.true.110:                                ; preds = %lor.lhs.false.107
  %82 = load %struct.site*, %struct.site** %s, align 8
  %parity111 = getelementptr inbounds %struct.site, %struct.site* %82, i32 0, i32 4
  %83 = load i8, i8* %parity111, align 1
  %conv112 = sext i8 %83 to i32
  %cmp113 = icmp eq i32 %conv112, 2
  br i1 %cmp113, label %if.then.134, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %land.lhs.true.110, %lor.lhs.false.107, %if.end.98
  %84 = load i32, i32* %parity_conserve.addr, align 4
  %cmp116 = icmp eq i32 %84, 1
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.145

land.lhs.true.118:                                ; preds = %lor.lhs.false.115
  %85 = load i32, i32* %k, align 4
  %cmp119 = icmp eq i32 %85, 0
  br i1 %cmp119, label %land.lhs.true.121, label %lor.lhs.false.126

land.lhs.true.121:                                ; preds = %land.lhs.true.118
  %86 = load %struct.site*, %struct.site** %s, align 8
  %parity122 = getelementptr inbounds %struct.site, %struct.site* %86, i32 0, i32 4
  %87 = load i8, i8* %parity122, align 1
  %conv123 = sext i8 %87 to i32
  %cmp124 = icmp eq i32 %conv123, 2
  br i1 %cmp124, label %if.then.134, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %land.lhs.true.121, %land.lhs.true.118
  %88 = load i32, i32* %k, align 4
  %cmp127 = icmp eq i32 %88, 1
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.145

land.lhs.true.129:                                ; preds = %lor.lhs.false.126
  %89 = load %struct.site*, %struct.site** %s, align 8
  %parity130 = getelementptr inbounds %struct.site, %struct.site* %89, i32 0, i32 4
  %90 = load i8, i8* %parity130, align 1
  %conv131 = sext i8 %90 to i32
  %cmp132 = icmp eq i32 %conv131, 1
  br i1 %cmp132, label %if.then.134, label %if.end.145

if.then.134:                                      ; preds = %land.lhs.true.129, %land.lhs.true.121, %land.lhs.true.110, %land.lhs.true.103
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0))
  %91 = load %struct.site*, %struct.site** %s, align 8
  %x136 = getelementptr inbounds %struct.site, %struct.site* %91, i32 0, i32 0
  %92 = load i16, i16* %x136, align 2
  %conv137 = sext i16 %92 to i32
  %93 = load %struct.site*, %struct.site** %s, align 8
  %y138 = getelementptr inbounds %struct.site, %struct.site* %93, i32 0, i32 1
  %94 = load i16, i16* %y138, align 2
  %conv139 = sext i16 %94 to i32
  %95 = load %struct.site*, %struct.site** %s, align 8
  %z140 = getelementptr inbounds %struct.site, %struct.site* %95, i32 0, i32 2
  %96 = load i16, i16* %z140, align 2
  %conv141 = sext i16 %96 to i32
  %97 = load %struct.site*, %struct.site** %s, align 8
  %t142 = getelementptr inbounds %struct.site, %struct.site* %97, i32 0, i32 3
  %98 = load i16, i16* %t142, align 2
  %conv143 = sext i16 %98 to i32
  %99 = load i32, i32* %x, align 4
  %100 = load i32, i32* %y, align 4
  %101 = load i32, i32* %z, align 4
  %102 = load i32, i32* %t, align 4
  %call144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %conv137, i32 %conv139, i32 %conv141, i32 %conv143, i32 %99, i32 %100, i32 %101, i32 %102)
  call void @terminate(i32 1)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.134, %land.lhs.true.129, %lor.lhs.false.126, %lor.lhs.false.115
  %103 = load i32, i32* %inverse.addr, align 4
  %cmp146 = icmp eq i32 %103, 0
  br i1 %cmp146, label %if.then.148, label %if.end.180

if.then.148:                                      ; preds = %if.end.145
  %104 = load void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)** %func.addr, align 8
  %105 = load i32, i32* %x, align 4
  %106 = load i32, i32* %y, align 4
  %107 = load i32, i32* %z, align 4
  %108 = load i32, i32* %t, align 4
  %109 = load i32*, i32** %args.addr, align 8
  call void %104(i32 %105, i32 %106, i32 %107, i32 %108, i32* %109, i32 1, i32* %x2, i32* %y2, i32* %z2, i32* %t2)
  %110 = load %struct.site*, %struct.site** %s, align 8
  %x149 = getelementptr inbounds %struct.site, %struct.site* %110, i32 0, i32 0
  %111 = load i16, i16* %x149, align 2
  %conv150 = sext i16 %111 to i32
  %112 = load i32, i32* %x2, align 4
  %cmp151 = icmp ne i32 %conv150, %112
  br i1 %cmp151, label %if.then.168, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.then.148
  %113 = load %struct.site*, %struct.site** %s, align 8
  %y154 = getelementptr inbounds %struct.site, %struct.site* %113, i32 0, i32 1
  %114 = load i16, i16* %y154, align 2
  %conv155 = sext i16 %114 to i32
  %115 = load i32, i32* %y2, align 4
  %cmp156 = icmp ne i32 %conv155, %115
  br i1 %cmp156, label %if.then.168, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.153
  %116 = load %struct.site*, %struct.site** %s, align 8
  %z159 = getelementptr inbounds %struct.site, %struct.site* %116, i32 0, i32 2
  %117 = load i16, i16* %z159, align 2
  %conv160 = sext i16 %117 to i32
  %118 = load i32, i32* %z2, align 4
  %cmp161 = icmp ne i32 %conv160, %118
  br i1 %cmp161, label %if.then.168, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.158
  %119 = load %struct.site*, %struct.site** %s, align 8
  %t164 = getelementptr inbounds %struct.site, %struct.site* %119, i32 0, i32 3
  %120 = load i16, i16* %t164, align 2
  %conv165 = sext i16 %120 to i32
  %121 = load i32, i32* %t2, align 4
  %cmp166 = icmp ne i32 %conv165, %121
  br i1 %cmp166, label %if.then.168, label %if.end.179

if.then.168:                                      ; preds = %lor.lhs.false.163, %lor.lhs.false.158, %lor.lhs.false.153, %if.then.148
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0))
  %122 = load %struct.site*, %struct.site** %s, align 8
  %x170 = getelementptr inbounds %struct.site, %struct.site* %122, i32 0, i32 0
  %123 = load i16, i16* %x170, align 2
  %conv171 = sext i16 %123 to i32
  %124 = load %struct.site*, %struct.site** %s, align 8
  %y172 = getelementptr inbounds %struct.site, %struct.site* %124, i32 0, i32 1
  %125 = load i16, i16* %y172, align 2
  %conv173 = sext i16 %125 to i32
  %126 = load %struct.site*, %struct.site** %s, align 8
  %z174 = getelementptr inbounds %struct.site, %struct.site* %126, i32 0, i32 2
  %127 = load i16, i16* %z174, align 2
  %conv175 = sext i16 %127 to i32
  %128 = load %struct.site*, %struct.site** %s, align 8
  %t176 = getelementptr inbounds %struct.site, %struct.site* %128, i32 0, i32 3
  %129 = load i16, i16* %t176, align 2
  %conv177 = sext i16 %129 to i32
  %130 = load i32, i32* %x2, align 4
  %131 = load i32, i32* %y2, align 4
  %132 = load i32, i32* %z2, align 4
  %133 = load i32, i32* %t2, align 4
  %call178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %conv171, i32 %conv173, i32 %conv175, i32 %conv177, i32 %130, i32 %131, i32 %132, i32 %133)
  call void @terminate(i32 1)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.168, %lor.lhs.false.163
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.145
  br label %for.inc

for.inc:                                          ; preds = %if.end.180
  %134 = load i32, i32* %i, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %i, align 4
  %135 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %135, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %136 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %136, %struct.site** %s, align 8
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.198, %for.end
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* @sites_on_node, align 4
  %cmp182 = icmp slt i32 %137, %138
  br i1 %cmp182, label %for.body.184, label %for.end.201

for.body.184:                                     ; preds = %for.cond.181
  %139 = load void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)** %func.addr, align 8
  %140 = load %struct.site*, %struct.site** %s, align 8
  %x185 = getelementptr inbounds %struct.site, %struct.site* %140, i32 0, i32 0
  %141 = load i16, i16* %x185, align 2
  %conv186 = sext i16 %141 to i32
  %142 = load %struct.site*, %struct.site** %s, align 8
  %y187 = getelementptr inbounds %struct.site, %struct.site* %142, i32 0, i32 1
  %143 = load i16, i16* %y187, align 2
  %conv188 = sext i16 %143 to i32
  %144 = load %struct.site*, %struct.site** %s, align 8
  %z189 = getelementptr inbounds %struct.site, %struct.site* %144, i32 0, i32 2
  %145 = load i16, i16* %z189, align 2
  %conv190 = sext i16 %145 to i32
  %146 = load %struct.site*, %struct.site** %s, align 8
  %t191 = getelementptr inbounds %struct.site, %struct.site* %146, i32 0, i32 3
  %147 = load i16, i16* %t191, align 2
  %conv192 = sext i16 %147 to i32
  %148 = load i32*, i32** %args.addr, align 8
  call void %139(i32 %conv186, i32 %conv188, i32 %conv190, i32 %conv192, i32* %148, i32 1, i32* %x, i32* %y, i32* %z, i32* %t)
  %149 = load i32, i32* %x, align 4
  %150 = load i32, i32* %y, align 4
  %151 = load i32, i32* %z, align 4
  %152 = load i32, i32* %t, align 4
  %call193 = call i32 @node_index(i32 %149, i32 %150, i32 %151, i32 %152)
  %153 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %153 to i64
  %154 = load i32, i32* %dir, align 4
  %idxprom195 = sext i32 %154 to i64
  %155 = load i32**, i32*** @neighbor, align 8
  %arrayidx196 = getelementptr inbounds i32*, i32** %155, i64 %idxprom195
  %156 = load i32*, i32** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %156, i64 %idxprom194
  store i32 %call193, i32* %arrayidx197, align 4
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.184
  %157 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %157, 1
  store i32 %inc199, i32* %i, align 4
  %158 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr200 = getelementptr inbounds %struct.site, %struct.site* %158, i32 1
  store %struct.site* %incdec.ptr200, %struct.site** %s, align 8
  br label %for.cond.181

for.end.201:                                      ; preds = %for.cond.181
  %159 = load i32, i32* %inverse.addr, align 4
  %cmp202 = icmp ne i32 %159, 1
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %for.end.201
  %160 = load i32, i32* %dir, align 4
  store i32 %160, i32* %retval
  br label %return

if.end.205:                                       ; preds = %for.end.201
  %161 = load i32, i32* %dir, align 4
  %inc206 = add nsw i32 %161, 1
  store i32 %inc206, i32* %dir, align 4
  store i32 0, i32* %i, align 4
  %162 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %162, %struct.site** %s, align 8
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.224, %if.end.205
  %163 = load i32, i32* %i, align 4
  %164 = load i32, i32* @sites_on_node, align 4
  %cmp208 = icmp slt i32 %163, %164
  br i1 %cmp208, label %for.body.210, label %for.end.227

for.body.210:                                     ; preds = %for.cond.207
  %165 = load void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)** %func.addr, align 8
  %166 = load %struct.site*, %struct.site** %s, align 8
  %x211 = getelementptr inbounds %struct.site, %struct.site* %166, i32 0, i32 0
  %167 = load i16, i16* %x211, align 2
  %conv212 = sext i16 %167 to i32
  %168 = load %struct.site*, %struct.site** %s, align 8
  %y213 = getelementptr inbounds %struct.site, %struct.site* %168, i32 0, i32 1
  %169 = load i16, i16* %y213, align 2
  %conv214 = sext i16 %169 to i32
  %170 = load %struct.site*, %struct.site** %s, align 8
  %z215 = getelementptr inbounds %struct.site, %struct.site* %170, i32 0, i32 2
  %171 = load i16, i16* %z215, align 2
  %conv216 = sext i16 %171 to i32
  %172 = load %struct.site*, %struct.site** %s, align 8
  %t217 = getelementptr inbounds %struct.site, %struct.site* %172, i32 0, i32 3
  %173 = load i16, i16* %t217, align 2
  %conv218 = sext i16 %173 to i32
  %174 = load i32*, i32** %args.addr, align 8
  call void %165(i32 %conv212, i32 %conv214, i32 %conv216, i32 %conv218, i32* %174, i32 -1, i32* %x, i32* %y, i32* %z, i32* %t)
  %175 = load i32, i32* %x, align 4
  %176 = load i32, i32* %y, align 4
  %177 = load i32, i32* %z, align 4
  %178 = load i32, i32* %t, align 4
  %call219 = call i32 @node_index(i32 %175, i32 %176, i32 %177, i32 %178)
  %179 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %179 to i64
  %180 = load i32, i32* %dir, align 4
  %idxprom221 = sext i32 %180 to i64
  %181 = load i32**, i32*** @neighbor, align 8
  %arrayidx222 = getelementptr inbounds i32*, i32** %181, i64 %idxprom221
  %182 = load i32*, i32** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %182, i64 %idxprom220
  store i32 %call219, i32* %arrayidx223, align 4
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.body.210
  %183 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %183, 1
  store i32 %inc225, i32* %i, align 4
  %184 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr226 = getelementptr inbounds %struct.site, %struct.site* %184, i32 1
  store %struct.site* %incdec.ptr226, %struct.site** %s, align 8
  br label %for.cond.207

for.end.227:                                      ; preds = %for.cond.207
  %185 = load i32, i32* %dir, align 4
  %sub228 = sub nsw i32 %185, 1
  store i32 %sub228, i32* %retval
  br label %return

return:                                           ; preds = %for.end.227, %if.then.204
  %186 = load i32, i32* %retval
  ret i32 %186
}

; Function Attrs: nounwind uwtable
define void @neighbor_coords_special(i32 %x, i32 %y, i32 %z, i32 %t, i32* %dirpt, i32 %fb, i32* %x2p, i32* %y2p, i32* %z2p, i32* %t2p) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %dirpt.addr = alloca i32*, align 8
  %fb.addr = alloca i32, align 4
  %x2p.addr = alloca i32*, align 8
  %y2p.addr = alloca i32*, align 8
  %z2p.addr = alloca i32*, align 8
  %t2p.addr = alloca i32*, align 8
  %dir = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32* %dirpt, i32** %dirpt.addr, align 8
  store i32 %fb, i32* %fb.addr, align 4
  store i32* %x2p, i32** %x2p.addr, align 8
  store i32* %y2p, i32** %y2p.addr, align 8
  store i32* %z2p, i32** %z2p.addr, align 8
  store i32* %t2p, i32** %t2p.addr, align 8
  %0 = load i32, i32* %fb.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32*, i32** %dirpt.addr, align 8
  %2 = load i32, i32* %1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32*, i32** %dirpt.addr, align 8
  %4 = load i32, i32* %3, align 4
  %sub = sub nsw i32 7, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %dir, align 4
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32*, i32** %x2p.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32*, i32** %y2p.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %z.addr, align 4
  %10 = load i32*, i32** %z2p.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %t.addr, align 4
  %12 = load i32*, i32** %t2p.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %dir, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb.1
    i32 1, label %sw.bb.5
    i32 6, label %sw.bb.8
    i32 2, label %sw.bb.12
    i32 5, label %sw.bb.15
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %cond.end
  %14 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* @nx, align 4
  %rem = srem i32 %add, %15
  %16 = load i32*, i32** %x2p.addr, align 8
  store i32 %rem, i32* %16, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %cond.end
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* @nx, align 4
  %add2 = add nsw i32 %17, %18
  %sub3 = sub nsw i32 %add2, 1
  %19 = load i32, i32* @nx, align 4
  %rem4 = srem i32 %sub3, %19
  %20 = load i32*, i32** %x2p.addr, align 8
  store i32 %rem4, i32* %20, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end
  %21 = load i32, i32* %y.addr, align 4
  %add6 = add nsw i32 %21, 1
  %22 = load i32, i32* @ny, align 4
  %rem7 = srem i32 %add6, %22
  %23 = load i32*, i32** %y2p.addr, align 8
  store i32 %rem7, i32* %23, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %cond.end
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* @ny, align 4
  %add9 = add nsw i32 %24, %25
  %sub10 = sub nsw i32 %add9, 1
  %26 = load i32, i32* @ny, align 4
  %rem11 = srem i32 %sub10, %26
  %27 = load i32*, i32** %y2p.addr, align 8
  store i32 %rem11, i32* %27, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %cond.end
  %28 = load i32, i32* %z.addr, align 4
  %add13 = add nsw i32 %28, 1
  %29 = load i32, i32* @nz, align 4
  %rem14 = srem i32 %add13, %29
  %30 = load i32*, i32** %z2p.addr, align 8
  store i32 %rem14, i32* %30, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %cond.end
  %31 = load i32, i32* %z.addr, align 4
  %32 = load i32, i32* @nz, align 4
  %add16 = add nsw i32 %31, %32
  %sub17 = sub nsw i32 %add16, 1
  %33 = load i32, i32* @nz, align 4
  %rem18 = srem i32 %sub17, %33
  %34 = load i32*, i32** %z2p.addr, align 8
  store i32 %rem18, i32* %34, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %cond.end
  %35 = load i32, i32* %t.addr, align 4
  %add20 = add nsw i32 %35, 1
  %36 = load i32, i32* @nt, align 4
  %rem21 = srem i32 %add20, %36
  %37 = load i32*, i32** %t2p.addr, align 8
  store i32 %rem21, i32* %37, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %cond.end
  %38 = load i32, i32* %t.addr, align 4
  %39 = load i32, i32* @nt, align 4
  %add23 = add nsw i32 %38, %39
  %sub24 = sub nsw i32 %add23, 1
  %40 = load i32, i32* @nt, align 4
  %rem25 = srem i32 %sub24, %40
  %41 = load i32*, i32** %t2p.addr, align 8
  store i32 %rem25, i32* %41, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.22, %sw.bb.19, %sw.bb.15, %sw.bb.12, %sw.bb.8, %sw.bb.5, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_eight_special(i8** %pt) #0 {
entry:
  %pt.addr = alloca i8**, align 8
  %tt = alloca [8 x i8*], align 16
  %i = alloca i32, align 4
  store i8** %pt, i8*** %pt.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %pt.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tt, i32 0, i64 %idxprom1
  store i8* %3, i8** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.15, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %6, 3
  br i1 %cmp4, label %for.body.5, label %for.end.17

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %7
  %idxprom6 = sext i32 %mul to i64
  %arrayidx7 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tt, i32 0, i64 %idxprom6
  %8 = load i8*, i8** %arrayidx7, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8**, i8*** %pt.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %10, i64 %idxprom8
  store i8* %8, i8** %arrayidx9, align 8
  %11 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 2, %11
  %add = add nsw i32 %mul10, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tt, i32 0, i64 %idxprom11
  %12 = load i8*, i8** %arrayidx12, align 8
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 7, %13
  %idxprom13 = sext i32 %sub to i64
  %14 = load i8**, i8*** %pt.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %14, i64 %idxprom13
  store i8* %12, i8** %arrayidx14, align 8
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.5
  %15 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.3

for.end.17:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_eight_neighborlists(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32**, i32*** @neighbor, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = bitcast i32** %arrayidx to i8**
  call void @sort_eight_special(i8** %2)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @terminate(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @time_stamp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %0 = load i32, i32* %status.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %3) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @node_index(i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @neighbor_coords(i32 %x, i32 %y, i32 %z, i32 %t, i32 %dir, i32* %x2p, i32* %y2p, i32* %z2p, i32* %t2p) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %x2p.addr = alloca i32*, align 8
  %y2p.addr = alloca i32*, align 8
  %z2p.addr = alloca i32*, align 8
  %t2p.addr = alloca i32*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32* %x2p, i32** %x2p.addr, align 8
  store i32* %y2p, i32** %y2p.addr, align 8
  store i32* %z2p, i32** %z2p.addr, align 8
  store i32* %t2p, i32** %t2p.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32*, i32** %x2p.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32*, i32** %y2p.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %z.addr, align 4
  %5 = load i32*, i32** %z2p.addr, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* %t.addr, align 4
  %7 = load i32*, i32** %t2p.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %dir.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb.1
    i32 1, label %sw.bb.4
    i32 6, label %sw.bb.7
    i32 2, label %sw.bb.11
    i32 5, label %sw.bb.14
    i32 3, label %sw.bb.18
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %9 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* @nx, align 4
  %rem = srem i32 %add, %10
  %11 = load i32*, i32** %x2p.addr, align 8
  store i32 %rem, i32* %11, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* @nx, align 4
  %add2 = add nsw i32 %12, %13
  %sub = sub nsw i32 %add2, 1
  %14 = load i32, i32* @nx, align 4
  %rem3 = srem i32 %sub, %14
  %15 = load i32*, i32** %x2p.addr, align 8
  store i32 %rem3, i32* %15, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %16, 1
  %17 = load i32, i32* @ny, align 4
  %rem6 = srem i32 %add5, %17
  %18 = load i32*, i32** %y2p.addr, align 8
  store i32 %rem6, i32* %18, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* @ny, align 4
  %add8 = add nsw i32 %19, %20
  %sub9 = sub nsw i32 %add8, 1
  %21 = load i32, i32* @ny, align 4
  %rem10 = srem i32 %sub9, %21
  %22 = load i32*, i32** %y2p.addr, align 8
  store i32 %rem10, i32* %22, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %23 = load i32, i32* %z.addr, align 4
  %add12 = add nsw i32 %23, 1
  %24 = load i32, i32* @nz, align 4
  %rem13 = srem i32 %add12, %24
  %25 = load i32*, i32** %z2p.addr, align 8
  store i32 %rem13, i32* %25, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %26 = load i32, i32* %z.addr, align 4
  %27 = load i32, i32* @nz, align 4
  %add15 = add nsw i32 %26, %27
  %sub16 = sub nsw i32 %add15, 1
  %28 = load i32, i32* @nz, align 4
  %rem17 = srem i32 %sub16, %28
  %29 = load i32*, i32** %z2p.addr, align 8
  store i32 %rem17, i32* %29, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %30 = load i32, i32* %t.addr, align 4
  %add19 = add nsw i32 %30, 1
  %31 = load i32, i32* @nt, align 4
  %rem20 = srem i32 %add19, %31
  %32 = load i32*, i32** %t2p.addr, align 8
  store i32 %rem20, i32* %32, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %33 = load i32, i32* %t.addr, align 4
  %34 = load i32, i32* @nt, align 4
  %add22 = add nsw i32 %33, %34
  %sub23 = sub nsw i32 %add22, 1
  %35 = load i32, i32* @nt, align 4
  %rem24 = srem i32 %sub23, %35
  %36 = load i32*, i32** %t2p.addr, align 8
  store i32 %rem24, i32* %36, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.21, %sw.bb.18, %sw.bb.14, %sw.bb.11, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @start_handlers() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.msg_tag* @start_gather(i32 %field, i32 %size, i32 %index, i32 %parity, i8** %dest) #0 {
entry:
  %field.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %field, i32* %field.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load i32, i32* %parity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.7
    i32 3, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %j, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %1, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.site*, %struct.site** @lattice, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %index.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32**, i32*** @neighbor, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 %idxprom1
  %8 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.site, %struct.site* %4, i64 %idx.ext
  %10 = bitcast %struct.site* %add.ptr to i8*
  %11 = load i32, i32* %field.addr, align 4
  %idx.ext3 = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext3
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i8**, i8*** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom5
  store i8* %add.ptr4, i8** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  %15 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %15, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %16 = load i32, i32* @even_sites_on_node, align 4
  store i32 %16, i32* %j, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx9 = getelementptr inbounds %struct.site, %struct.site* %18, i64 %idxprom8
  store %struct.site* %arrayidx9, %struct.site** %s, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %sw.bb.7
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* @sites_on_node, align 4
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %21 = load %struct.site*, %struct.site** @lattice, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load i32, i32* %index.addr, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32**, i32*** @neighbor, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %24, i64 %idxprom14
  %25 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom13
  %26 = load i32, i32* %arrayidx16, align 4
  %idx.ext17 = sext i32 %26 to i64
  %add.ptr18 = getelementptr inbounds %struct.site, %struct.site* %21, i64 %idx.ext17
  %27 = bitcast %struct.site* %add.ptr18 to i8*
  %28 = load i32, i32* %field.addr, align 4
  %idx.ext19 = sext i32 %28 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %27, i64 %idx.ext19
  %29 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load i8**, i8*** %dest.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %30, i64 %idxprom21
  store i8* %add.ptr20, i8** %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.12
  %31 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %31, 1
  store i32 %inc24, i32* %j, align 4
  %32 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.site, %struct.site* %32, i32 1
  store %struct.site* %incdec.ptr25, %struct.site** %s, align 8
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  store i32 0, i32* %j, align 4
  %33 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %33, %struct.site** %s, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.41, %sw.bb.27
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* @sites_on_node, align 4
  %cmp29 = icmp slt i32 %34, %35
  br i1 %cmp29, label %for.body.30, label %for.end.44

for.body.30:                                      ; preds = %for.cond.28
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32, i32* %index.addr, align 4
  %idxprom32 = sext i32 %38 to i64
  %39 = load i32**, i32*** @neighbor, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %39, i64 %idxprom32
  %40 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %40, i64 %idxprom31
  %41 = load i32, i32* %arrayidx34, align 4
  %idx.ext35 = sext i32 %41 to i64
  %add.ptr36 = getelementptr inbounds %struct.site, %struct.site* %36, i64 %idx.ext35
  %42 = bitcast %struct.site* %add.ptr36 to i8*
  %43 = load i32, i32* %field.addr, align 4
  %idx.ext37 = sext i32 %43 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %42, i64 %idx.ext37
  %44 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load i8**, i8*** %dest.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %45, i64 %idxprom39
  store i8* %add.ptr38, i8** %arrayidx40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.30
  %46 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* %j, align 4
  %47 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr43 = getelementptr inbounds %struct.site, %struct.site* %47, i32 1
  store %struct.site* %incdec.ptr43, %struct.site** %s, align 8
  br label %for.cond.28

for.end.44:                                       ; preds = %for.cond.28
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.44, %for.end.26, %for.end
  ret %struct.msg_tag* null
}

; Function Attrs: nounwind uwtable
define void @restart_gather(i32 %field, i32 %size, i32 %index, i32 %parity, i8** %dest, %struct.msg_tag* %mbuf) #0 {
entry:
  %field.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store i32 %field, i32* %field.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.msg_tag* @start_gather_from_temp(i8* %field, i32 %size, i32 %index, i32 %parity, i8** %dest) #0 {
entry:
  %field.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i8* %field, i8** %field.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load i32, i32* %parity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.5
    i32 3, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %j, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %1, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %field.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %index.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32**, i32*** @neighbor, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 %idxprom1
  %8 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %9, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %11 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8**, i8*** %dest.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom3
  store i8* %add.ptr, i8** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  %14 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %14, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load i32, i32* @even_sites_on_node, align 4
  store i32 %15, i32* %j, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx7 = getelementptr inbounds %struct.site, %struct.site* %17, i64 %idxprom6
  store %struct.site* %arrayidx7, %struct.site** %s, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %sw.bb.5
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* @sites_on_node, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end.23

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i8*, i8** %field.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32, i32* %index.addr, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load i32**, i32*** @neighbor, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %23, i64 %idxprom12
  %24 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 %idxprom11
  %25 = load i32, i32* %arrayidx14, align 4
  %26 = load i32, i32* %size.addr, align 4
  %mul15 = mul nsw i32 %25, %26
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %20, i64 %idx.ext16
  %27 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i8**, i8*** %dest.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %28, i64 %idxprom18
  store i8* %add.ptr17, i8** %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.10
  %29 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %j, align 4
  %30 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.site, %struct.site* %30, i32 1
  store %struct.site* %incdec.ptr22, %struct.site** %s, align 8
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  store i32 0, i32* %j, align 4
  %31 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %31, %struct.site** %s, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %sw.bb.24
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* @sites_on_node, align 4
  %cmp26 = icmp slt i32 %32, %33
  br i1 %cmp26, label %for.body.27, label %for.end.40

for.body.27:                                      ; preds = %for.cond.25
  %34 = load i8*, i8** %field.addr, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load i32, i32* %index.addr, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load i32**, i32*** @neighbor, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %37, i64 %idxprom29
  %38 = load i32*, i32** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %38, i64 %idxprom28
  %39 = load i32, i32* %arrayidx31, align 4
  %40 = load i32, i32* %size.addr, align 4
  %mul32 = mul nsw i32 %39, %40
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %34, i64 %idx.ext33
  %41 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i8**, i8*** %dest.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %42, i64 %idxprom35
  store i8* %add.ptr34, i8** %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %43 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %j, align 4
  %44 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr39 = getelementptr inbounds %struct.site, %struct.site* %44, i32 1
  store %struct.site* %incdec.ptr39, %struct.site** %s, align 8
  br label %for.cond.25

for.end.40:                                       ; preds = %for.cond.25
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.40, %for.end.23, %for.end
  ret %struct.msg_tag* null
}

; Function Attrs: nounwind uwtable
define void @restart_gather_from_temp(i8* %field, i32 %size, i32 %index, i32 %parity, i8** %dest, %struct.msg_tag* %mbuf) #0 {
entry:
  %field.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store i8* %field, i8** %field.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @wait_gather(%struct.msg_tag* %mbuf) #0 {
entry:
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cleanup_gather(%struct.msg_tag* %mbuf) #0 {
entry:
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.msg_tag* @start_general_gather(i32 %field, i32 %size, i32* %displacement, i32 %parity, i8** %dest) #0 {
entry:
  %field.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %displacement.addr = alloca i32*, align 8
  %parity.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %tz = alloca i32, align 4
  %tt = alloca i32, align 4
  store i32 %field, i32* %field.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %displacement, i32** %displacement.addr, align 8
  store i32 %parity, i32* %parity.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load i32, i32* @g_gather_flag, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @mynode()
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i32 %call)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %parity.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %5, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %parity.addr, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %for.cond
  %8 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.6

cond.false.5:                                     ; preds = %for.cond
  %9 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %8, %cond.true.4 ], [ %9, %cond.false.5 ]
  %cmp8 = icmp slt i32 %6, %cond7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.6
  %10 = load i32*, i32** %displacement.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp ne i32 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body
  %12 = load %struct.site*, %struct.site** %s, align 8
  %x = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 0
  %13 = load i16, i16* %x, align 2
  %conv = sext i16 %13 to i32
  %14 = load i32*, i32** %displacement.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx12, align 4
  %add = add nsw i32 %conv, %15
  %16 = load i32, i32* @nx, align 4
  %add13 = add nsw i32 %add, %16
  %17 = load i32, i32* @nx, align 4
  %rem = srem i32 %add13, %17
  store i32 %rem, i32* %tx, align 4
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %18 = load %struct.site*, %struct.site** %s, align 8
  %x14 = getelementptr inbounds %struct.site, %struct.site* %18, i32 0, i32 0
  %19 = load i16, i16* %x14, align 2
  %conv15 = sext i16 %19 to i32
  store i32 %conv15, i32* %tx, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  %20 = load i32*, i32** %displacement.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp ne i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.end.16
  %22 = load %struct.site*, %struct.site** %s, align 8
  %y = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 1
  %23 = load i16, i16* %y, align 2
  %conv21 = sext i16 %23 to i32
  %24 = load i32*, i32** %displacement.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %24, i64 1
  %25 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %conv21, %25
  %26 = load i32, i32* @ny, align 4
  %add24 = add nsw i32 %add23, %26
  %27 = load i32, i32* @ny, align 4
  %rem25 = srem i32 %add24, %27
  store i32 %rem25, i32* %ty, align 4
  br label %if.end.29

if.else.26:                                       ; preds = %if.end.16
  %28 = load %struct.site*, %struct.site** %s, align 8
  %y27 = getelementptr inbounds %struct.site, %struct.site* %28, i32 0, i32 1
  %29 = load i16, i16* %y27, align 2
  %conv28 = sext i16 %29 to i32
  store i32 %conv28, i32* %ty, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.20
  %30 = load i32*, i32** %displacement.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp ne i32 %31, 0
  br i1 %cmp31, label %if.then.33, label %if.else.39

if.then.33:                                       ; preds = %if.end.29
  %32 = load %struct.site*, %struct.site** %s, align 8
  %z = getelementptr inbounds %struct.site, %struct.site* %32, i32 0, i32 2
  %33 = load i16, i16* %z, align 2
  %conv34 = sext i16 %33 to i32
  %34 = load i32*, i32** %displacement.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %34, i64 2
  %35 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %conv34, %35
  %36 = load i32, i32* @nz, align 4
  %add37 = add nsw i32 %add36, %36
  %37 = load i32, i32* @nz, align 4
  %rem38 = srem i32 %add37, %37
  store i32 %rem38, i32* %tz, align 4
  br label %if.end.42

if.else.39:                                       ; preds = %if.end.29
  %38 = load %struct.site*, %struct.site** %s, align 8
  %z40 = getelementptr inbounds %struct.site, %struct.site* %38, i32 0, i32 2
  %39 = load i16, i16* %z40, align 2
  %conv41 = sext i16 %39 to i32
  store i32 %conv41, i32* %tz, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.33
  %40 = load i32*, i32** %displacement.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %40, i64 3
  %41 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp ne i32 %41, 0
  br i1 %cmp44, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %if.end.42
  %42 = load %struct.site*, %struct.site** %s, align 8
  %t = getelementptr inbounds %struct.site, %struct.site* %42, i32 0, i32 3
  %43 = load i16, i16* %t, align 2
  %conv47 = sext i16 %43 to i32
  %44 = load i32*, i32** %displacement.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %44, i64 3
  %45 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %conv47, %45
  %46 = load i32, i32* @nt, align 4
  %add50 = add nsw i32 %add49, %46
  %47 = load i32, i32* @nt, align 4
  %rem51 = srem i32 %add50, %47
  store i32 %rem51, i32* %tt, align 4
  br label %if.end.55

if.else.52:                                       ; preds = %if.end.42
  %48 = load %struct.site*, %struct.site** %s, align 8
  %t53 = getelementptr inbounds %struct.site, %struct.site* %48, i32 0, i32 3
  %49 = load i16, i16* %t53, align 2
  %conv54 = sext i16 %49 to i32
  store i32 %conv54, i32* %tt, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.46
  %50 = load i32, i32* %tx, align 4
  %51 = load i32, i32* %ty, align 4
  %52 = load i32, i32* %tz, align 4
  %53 = load i32, i32* %tt, align 4
  %call56 = call i32 @node_index(i32 %50, i32 %51, i32 %52, i32 %53)
  %idxprom57 = sext i32 %call56 to i64
  %54 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx58 = getelementptr inbounds %struct.site, %struct.site* %54, i64 %idxprom57
  %55 = bitcast %struct.site* %arrayidx58 to i8*
  %56 = load i32, i32* %field.addr, align 4
  %idx.ext = sext i32 %56 to i64
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %idx.ext
  %57 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load i8**, i8*** %dest.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %58, i64 %idxprom59
  store i8* %add.ptr, i8** %arrayidx60, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  %60 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %60, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.6
  store i32 1, i32* @g_gather_flag, align 4
  ret %struct.msg_tag* null
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @wait_general_gather(%struct.msg_tag* %mbuf) #0 {
entry:
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  store i32 0, i32* @g_gather_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @cleanup_general_gather(%struct.msg_tag* %mbuf) #0 {
entry:
  %mbuf.addr = alloca %struct.msg_tag*, align 8
  store %struct.msg_tag* %mbuf, %struct.msg_tag** %mbuf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @field_pointer_at_coordinates(i32 %field, i32 %size, i32 %x, i32 %y, i32 %z, i32 %t) #0 {
entry:
  %field.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %field, i32* %field.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %z.addr, align 4
  %3 = load i32, i32* %t.addr, align 4
  %call = call i32 @node_index(i32 %0, i32 %1, i32 %2, i32 %3)
  store i32 %call, i32* %index, align 4
  %4 = load i32, i32* %index, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %5, i64 %idxprom
  %6 = bitcast %struct.site* %arrayidx to i8*
  %7 = load i32, i32* %field.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i8* @field_pointer_at_direction(i32 %field, i32 %size, %struct.site* %s, i32 %direction) #0 {
entry:
  %field.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %s.addr = alloca %struct.site*, align 8
  %direction.addr = alloca i32, align 4
  store i32 %field, i32* %field.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store %struct.site* %s, %struct.site** %s.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.site*, %struct.site** %s.addr, align 8
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.site* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.site* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2048
  %2 = load i32, i32* %direction.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32**, i32*** @neighbor, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %sub.ptr.div
  %5 = load i32, i32* %arrayidx1, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to i8*
  %7 = load i32, i32* %field.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define void @cleanup_field_pointer(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @send_field(i8* %buf, i32 %size, i32 %tonode) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %tonode.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %tonode, i32* %tonode.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_field(i8* %buf, i32 %size) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @machine_type() #0 {
entry:
  ret i8* getelementptr inbounds ([17 x i8], [17 x i8]* @name, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @mynode() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @numnodes() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @g_sync() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_floatsum(float* %fpt) #0 {
entry:
  %fpt.addr = alloca float*, align 8
  store float* %fpt, float** %fpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_doublesum(double* %dpt) #0 {
entry:
  %dpt.addr = alloca double*, align 8
  store double* %dpt, double** %dpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_vecdoublesum(double* %dpt, i32 %ndoubles) #0 {
entry:
  %dpt.addr = alloca double*, align 8
  %ndoubles.addr = alloca i32, align 4
  store double* %dpt, double** %dpt.addr, align 8
  store i32 %ndoubles, i32* %ndoubles.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_complexsum(%struct.complex* %cpt) #0 {
entry:
  %cpt.addr = alloca %struct.complex*, align 8
  store %struct.complex* %cpt, %struct.complex** %cpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_dcomplexsum(%struct.double_complex* %cpt) #0 {
entry:
  %cpt.addr = alloca %struct.double_complex*, align 8
  store %struct.double_complex* %cpt, %struct.double_complex** %cpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_veccomplexsum(%struct.complex* %cpt, i32 %ncomplex) #0 {
entry:
  %cpt.addr = alloca %struct.complex*, align 8
  %ncomplex.addr = alloca i32, align 4
  store %struct.complex* %cpt, %struct.complex** %cpt.addr, align 8
  store i32 %ncomplex, i32* %ncomplex.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_wvectorsum(%struct.wilson_vector* %wvpt) #0 {
entry:
  %wvpt.addr = alloca %struct.wilson_vector*, align 8
  store %struct.wilson_vector* %wvpt, %struct.wilson_vector** %wvpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_xor32(i32* %pt) #0 {
entry:
  %pt.addr = alloca i32*, align 8
  store i32* %pt, i32** %pt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_floatmax(float* %fpt) #0 {
entry:
  %fpt.addr = alloca float*, align 8
  store float* %fpt, float** %fpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @g_doublemax(double* %dpt) #0 {
entry:
  %dpt.addr = alloca double*, align 8
  store double* %dpt, double** %dpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @broadcast_float(float* %fpt) #0 {
entry:
  %fpt.addr = alloca float*, align 8
  store float* %fpt, float** %fpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @broadcast_double(double* %dpt) #0 {
entry:
  %dpt.addr = alloca double*, align 8
  store double* %dpt, double** %dpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @broadcast_complex(%struct.complex* %cpt) #0 {
entry:
  %cpt.addr = alloca %struct.complex*, align 8
  store %struct.complex* %cpt, %struct.complex** %cpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @broadcast_dcomplex(%struct.double_complex* %cpt) #0 {
entry:
  %cpt.addr = alloca %struct.double_complex*, align 8
  store %struct.double_complex* %cpt, %struct.double_complex** %cpt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @broadcast_bytes(i8* %buf, i32 %size) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @send_integer(i32 %tonode, i32* %address) #0 {
entry:
  %tonode.addr = alloca i32, align 4
  %address.addr = alloca i32*, align 8
  store i32 %tonode, i32* %tonode.addr, align 4
  store i32* %address, i32** %address.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @receive_integer(i32* %address) #0 {
entry:
  %address.addr = alloca i32*, align 8
  store i32* %address, i32** %address.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define double @dclock() #0 {
entry:
  %fine = alloca i64, align 8
  store i64 0, i64* %fine, align 8
  %0 = load i64, i64* %fine, align 8
  %conv = sitofp i64 %0 to double
  %div = fdiv double %conv, 1.000000e+06
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @time_stamp(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %time_stamp = alloca i64, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %call = call i32 @mynode()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @time(i64* %time_stamp) #4
  %0 = load i8*, i8** %msg.addr, align 8
  %call2 = call i8* @ctime(i64* %time_stamp) #4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %0, i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i8* @ctime(i64*) #1

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @normal_exit(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %0) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
