; ModuleID = './MultiSource.Benchmarks.MallocBench/28.espresso.cofactor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8
@cdata = external global %struct.cdata_struct, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"BINATE_SPLIT_SELECT: split against %d\0A\00", align 1
@verbose_debug = external global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cl=%s\0Acr=%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32** @cofactor(i32** %T, i32* %c) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %c.addr = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %Tc_save = alloca i32**, align 8
  %Tc = alloca i32**, align 8
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %listlen = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w46 = alloca i32, align 4
  %var = alloca i32, align 4
  %last47 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32** %T, i32*** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  %4 = bitcast i32* %3 to i32**
  %5 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %add = add nsw i64 %sub, 5
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %listlen, align 4
  %6 = load i32, i32* %listlen, align 4
  %conv2 = sext i32 %6 to i64
  %mul = mul i64 8, %conv2
  %call = call i8* @malloc(i64 %mul)
  %7 = bitcast i8* %call to i32**
  store i32** %7, i32*** %Tc, align 8
  store i32** %7, i32*** %Tc_save, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %8, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub4 = sub nsw i32 %9, 1
  %shr = ashr i32 %sub4, 5
  %add5 = add nsw i32 %shr, 1
  %add6 = add nsw i32 %add5, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add6, %cond.false ]
  %conv7 = sext i32 %cond to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call i8* @malloc(i64 %mul8)
  %10 = bitcast i8* %call9 to i32*
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call10 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %10, i32 %11)
  %12 = load i32**, i32*** %T.addr, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx11, align 8
  %14 = load i32*, i32** %temp, align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %16 = load i32*, i32** %c.addr, align 8
  %call12 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %14, i32* %15, i32* %16)
  %call13 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %call10, i32* %13, i32* %call12)
  %17 = load i32**, i32*** %Tc, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %17, i32 1
  store i32** %incdec.ptr, i32*** %Tc, align 8
  store i32* %call13, i32** %17, align 8
  %18 = load i32**, i32*** %Tc, align 8
  %incdec.ptr14 = getelementptr inbounds i32*, i32** %18, i32 1
  store i32** %incdec.ptr14, i32*** %Tc, align 8
  %19 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %19, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.80, %cond.end
  %20 = load i32**, i32*** %T1, align 8
  %incdec.ptr15 = getelementptr inbounds i32*, i32** %20, i32 1
  store i32** %incdec.ptr15, i32*** %T1, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %p, align 8
  %cmp16 = icmp ne i32* %21, null
  br i1 %cmp16, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %22 = load i32*, i32** %p, align 8
  %23 = load i32*, i32** %c.addr, align 8
  %cmp18 = icmp ne i32* %22, %23
  br i1 %cmp18, label %if.then, label %if.end.80

if.then:                                          ; preds = %for.body
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %24, i32* %last, align 4
  %cmp20 = icmp ne i32 %24, -1
  br i1 %cmp20, label %if.then.22, label %if.end.45

if.then.22:                                       ; preds = %if.then
  %25 = load i32, i32* %last, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %p, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx23, align 4
  %28 = load i32, i32* %last, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load i32*, i32** %c.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 %idxprom24
  %30 = load i32, i32* %arrayidx25, align 4
  %and = and i32 %27, %30
  store i32 %and, i32* %x, align 4
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %x, align 4
  %shr26 = lshr i32 %32, 1
  %or = or i32 %31, %shr26
  %neg = xor i32 %or, -1
  %33 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and27 = and i32 %neg, %33
  %tobool = icmp ne i32 %and27, 0
  br i1 %tobool, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.22
  br label %false

if.end:                                           ; preds = %if.then.22
  store i32 1, i32* %w, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end
  %34 = load i32, i32* %w, align 4
  %35 = load i32, i32* %last, align 4
  %cmp30 = icmp slt i32 %34, %35
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %36 = load i32, i32* %w, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %37, i64 %idxprom33
  %38 = load i32, i32* %arrayidx34, align 4
  %39 = load i32, i32* %w, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load i32*, i32** %c.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %40, i64 %idxprom35
  %41 = load i32, i32* %arrayidx36, align 4
  %and37 = and i32 %38, %41
  store i32 %and37, i32* %x, align 4
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %x, align 4
  %shr38 = lshr i32 %43, 1
  %or39 = or i32 %42, %shr38
  %neg40 = xor i32 %or39, -1
  %and41 = and i32 %neg40, 1431655765
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.32
  br label %false

if.end.44:                                        ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %44 = load i32, i32* %w, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %if.then
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %45, i32* %var, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.76, %if.end.45
  %46 = load i32, i32* %var, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp49 = icmp slt i32 %46, %47
  br i1 %cmp49, label %for.body.51, label %for.end.78

for.body.51:                                      ; preds = %for.cond.48
  %48 = load i32, i32* %var, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %49, i64 %idxprom52
  %50 = load i32*, i32** %arrayidx53, align 8
  store i32* %50, i32** %mask, align 8
  %51 = load i32, i32* %var, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %52, i64 %idxprom54
  %53 = load i32, i32* %arrayidx55, align 4
  store i32 %53, i32* %last47, align 4
  %54 = load i32, i32* %var, align 4
  %idxprom56 = sext i32 %54 to i64
  %55 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %55, i64 %idxprom56
  %56 = load i32, i32* %arrayidx57, align 4
  store i32 %56, i32* %w46, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.73, %for.body.51
  %57 = load i32, i32* %w46, align 4
  %58 = load i32, i32* %last47, align 4
  %cmp59 = icmp sle i32 %57, %58
  br i1 %cmp59, label %for.body.61, label %for.end.75

for.body.61:                                      ; preds = %for.cond.58
  %59 = load i32, i32* %w46, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load i32*, i32** %p, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %60, i64 %idxprom62
  %61 = load i32, i32* %arrayidx63, align 4
  %62 = load i32, i32* %w46, align 4
  %idxprom64 = sext i32 %62 to i64
  %63 = load i32*, i32** %c.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %63, i64 %idxprom64
  %64 = load i32, i32* %arrayidx65, align 4
  %and66 = and i32 %61, %64
  %65 = load i32, i32* %w46, align 4
  %idxprom67 = sext i32 %65 to i64
  %66 = load i32*, i32** %mask, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %66, i64 %idxprom67
  %67 = load i32, i32* %arrayidx68, align 4
  %and69 = and i32 %and66, %67
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body.61
  br label %nextvar

if.end.72:                                        ; preds = %for.body.61
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %68 = load i32, i32* %w46, align 4
  %inc74 = add nsw i32 %68, 1
  store i32 %inc74, i32* %w46, align 4
  br label %for.cond.58

for.end.75:                                       ; preds = %for.cond.58
  br label %false

nextvar:                                          ; preds = %if.then.71
  br label %for.inc.76

for.inc.76:                                       ; preds = %nextvar
  %69 = load i32, i32* %var, align 4
  %inc77 = add nsw i32 %69, 1
  store i32 %inc77, i32* %var, align 4
  br label %for.cond.48

for.end.78:                                       ; preds = %for.cond.48
  %70 = load i32*, i32** %p, align 8
  %71 = load i32**, i32*** %Tc, align 8
  %incdec.ptr79 = getelementptr inbounds i32*, i32** %71, i32 1
  store i32** %incdec.ptr79, i32*** %Tc, align 8
  store i32* %70, i32** %71, align 8
  br label %false

false:                                            ; preds = %for.end.78, %for.end.75, %if.then.43, %if.then.28
  br label %if.end.80

if.end.80:                                        ; preds = %false, %for.body
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  %72 = load i32**, i32*** %Tc, align 8
  %incdec.ptr82 = getelementptr inbounds i32*, i32** %72, i32 1
  store i32** %incdec.ptr82, i32*** %Tc, align 8
  store i32* null, i32** %72, align 8
  %73 = load i32**, i32*** %Tc, align 8
  %74 = bitcast i32** %73 to i32*
  %75 = load i32**, i32*** %Tc_save, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* %74, i32** %arrayidx83, align 8
  %76 = load i32**, i32*** %Tc_save, align 8
  ret i32** %76
}

declare i8* @malloc(i64) #1

declare i32* @set_or(...) #1

declare i32* @set_clear(...) #1

declare i32* @set_diff(...) #1

; Function Attrs: nounwind uwtable
define i32** @scofactor(i32** %T, i32* %c, i32 %var) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %c.addr = alloca i32*, align 8
  %var.addr = alloca i32, align 4
  %Tc = alloca i32**, align 8
  %Tc_save = alloca i32**, align 8
  %p = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %T1 = alloca i32**, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %listlen = alloca i32, align 4
  %i = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 1
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %mask, align 8
  %2 = load i32, i32* %var.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %first, align 4
  %5 = load i32, i32* %var.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  store i32 %7, i32* %last, align 4
  %8 = load i32**, i32*** %T.addr, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %8, i64 1
  %9 = load i32*, i32** %arrayidx4, align 8
  %10 = bitcast i32* %9 to i32**
  %11 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %add = add nsw i64 %sub, 5
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %listlen, align 4
  %12 = load i32, i32* %listlen, align 4
  %conv5 = sext i32 %12 to i64
  %mul = mul i64 8, %conv5
  %call = call i8* @malloc(i64 %mul)
  %13 = bitcast i8* %call to i32**
  store i32** %13, i32*** %Tc, align 8
  store i32** %13, i32*** %Tc_save, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %14, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub7 = sub nsw i32 %15, 1
  %shr = ashr i32 %sub7, 5
  %add8 = add nsw i32 %shr, 1
  %add9 = add nsw i32 %add8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add9, %cond.false ]
  %conv10 = sext i32 %cond to i64
  %mul11 = mul i64 4, %conv10
  %call12 = call i8* @malloc(i64 %mul11)
  %16 = bitcast i8* %call12 to i32*
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call13 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %16, i32 %17)
  %18 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %18, i64 0
  %19 = load i32*, i32** %arrayidx14, align 8
  %20 = load i32*, i32** %mask, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %22 = load i32*, i32** %c.addr, align 8
  %call15 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %20, i32* %21, i32* %22)
  %call16 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %call13, i32* %19, i32* %call15)
  %23 = load i32**, i32*** %Tc, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr, i32*** %Tc, align 8
  store i32* %call16, i32** %23, align 8
  %24 = load i32**, i32*** %Tc, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %24, i32 1
  store i32** %incdec.ptr17, i32*** %Tc, align 8
  %25 = load i32*, i32** %mask, align 8
  %26 = load i32, i32* %var.addr, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %27, i64 %idxprom18
  %28 = load i32*, i32** %arrayidx19, align 8
  %29 = load i32*, i32** %c.addr, align 8
  %call20 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %25, i32* %28, i32* %29)
  %30 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %30, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.34, %cond.end
  %31 = load i32**, i32*** %T1, align 8
  %incdec.ptr21 = getelementptr inbounds i32*, i32** %31, i32 1
  store i32** %incdec.ptr21, i32*** %T1, align 8
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %p, align 8
  %cmp22 = icmp ne i32* %32, null
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32*, i32** %p, align 8
  %34 = load i32*, i32** %c.addr, align 8
  %cmp24 = icmp ne i32* %33, %34
  br i1 %cmp24, label %if.then, label %if.end.34

if.then:                                          ; preds = %for.body
  %35 = load i32, i32* %first, align 4
  store i32 %35, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26
  %38 = load i32, i32* %arrayidx27, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load i32*, i32** %mask, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom28
  %41 = load i32, i32* %arrayidx29, align 4
  %and = and i32 %38, %41
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %do.body
  %42 = load i32*, i32** %p, align 8
  %43 = load i32**, i32*** %Tc, align 8
  %incdec.ptr31 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %incdec.ptr31, i32*** %Tc, align 8
  store i32* %42, i32** %43, align 8
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  %45 = load i32, i32* %last, align 4
  %cmp32 = icmp sle i32 %inc, %45
  br i1 %cmp32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %do.end, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32**, i32*** %Tc, align 8
  %incdec.ptr35 = getelementptr inbounds i32*, i32** %46, i32 1
  store i32** %incdec.ptr35, i32*** %Tc, align 8
  store i32* null, i32** %46, align 8
  %47 = load i32**, i32*** %Tc, align 8
  %48 = bitcast i32** %47 to i32*
  %49 = load i32**, i32*** %Tc_save, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %49, i64 1
  store i32* %48, i32** %arrayidx36, align 8
  %50 = load i32**, i32*** %Tc_save, align 8
  ret i32** %50
}

declare i32* @set_and(...) #1

; Function Attrs: nounwind uwtable
define void @massive_count(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %count = alloca i32*, align 8
  %T1 = alloca i32**, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %cnt = alloca i32*, align 8
  %val = alloca i32, align 4
  %p = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %full = alloca i32*, align 8
  %var = alloca i32, align 4
  %i230 = alloca i32, align 4
  %lastbit = alloca i32, align 4
  %active = alloca i32, align 4
  %maxactive = alloca i32, align 4
  %best = alloca i32, align 4
  %mostactive = alloca i32, align 4
  %mostzero = alloca i32, align 4
  %mostbalanced = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* %0, i32** %count, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %count, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32**, i32*** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %6, i64 0
  %7 = load i32*, i32** %arrayidx2, align 8
  store i32* %7, i32** %cof, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32* %8, i32** %full, align 8
  %9 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %9, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.end.228, %for.end
  %10 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %p, align 8
  %cmp4 = icmp ne i32* %11, null
  br i1 %cmp4, label %for.body.5, label %for.end.229

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32*, i32** %p, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %13, 1023
  store i32 %and, i32* %i1, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.226, %for.body.5
  %14 = load i32, i32* %i1, align 4
  %cmp8 = icmp sgt i32 %14, 0
  br i1 %cmp8, label %for.body.9, label %for.end.228

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %i1, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32*, i32** %full, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32, i32* %i1, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i32*, i32** %p, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %20 = load i32, i32* %arrayidx13, align 4
  %21 = load i32, i32* %i1, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32*, i32** %cof, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  %or = or i32 %20, %23
  %neg = xor i32 %or, -1
  %and16 = and i32 %17, %neg
  store i32 %and16, i32* %val, align 4
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then, label %if.end.225

if.then:                                          ; preds = %for.body.9
  %24 = load i32*, i32** %count, align 8
  %25 = load i32, i32* %i1, align 4
  %sub17 = sub nsw i32 %25, 1
  %shl = shl i32 %sub17, 5
  %idx.ext = sext i32 %shl to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %24, i64 %idx.ext
  store i32* %add.ptr18, i32** %cnt, align 8
  %26 = load i32, i32* %val, align 4
  %and19 = and i32 %26, -16777216
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.68

if.then.21:                                       ; preds = %if.then
  %27 = load i32, i32* %val, align 4
  %and22 = and i32 %27, -2147483648
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.21
  %28 = load i32*, i32** %cnt, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 31
  %29 = load i32, i32* %arrayidx25, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.21
  %30 = load i32, i32* %val, align 4
  %and26 = and i32 %30, 1073741824
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end
  %31 = load i32*, i32** %cnt, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 30
  %32 = load i32, i32* %arrayidx29, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %arrayidx29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end
  %33 = load i32, i32* %val, align 4
  %and32 = and i32 %33, 536870912
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %34 = load i32*, i32** %cnt, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %34, i64 29
  %35 = load i32, i32* %arrayidx35, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %arrayidx35, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %36 = load i32, i32* %val, align 4
  %and38 = and i32 %36, 268435456
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %37 = load i32*, i32** %cnt, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %37, i64 28
  %38 = load i32, i32* %arrayidx41, align 4
  %inc42 = add nsw i32 %38, 1
  store i32 %inc42, i32* %arrayidx41, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %39 = load i32, i32* %val, align 4
  %and44 = and i32 %39, 134217728
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %40 = load i32*, i32** %cnt, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %40, i64 27
  %41 = load i32, i32* %arrayidx47, align 4
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %arrayidx47, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %42 = load i32, i32* %val, align 4
  %and50 = and i32 %42, 67108864
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.49
  %43 = load i32*, i32** %cnt, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %43, i64 26
  %44 = load i32, i32* %arrayidx53, align 4
  %inc54 = add nsw i32 %44, 1
  store i32 %inc54, i32* %arrayidx53, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.49
  %45 = load i32, i32* %val, align 4
  %and56 = and i32 %45, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.55
  %46 = load i32*, i32** %cnt, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %46, i64 25
  %47 = load i32, i32* %arrayidx59, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %arrayidx59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.55
  %48 = load i32, i32* %val, align 4
  %and62 = and i32 %48, 16777216
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  %49 = load i32*, i32** %cnt, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %49, i64 24
  %50 = load i32, i32* %arrayidx65, align 4
  %inc66 = add nsw i32 %50, 1
  store i32 %inc66, i32* %arrayidx65, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.61
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then
  %51 = load i32, i32* %val, align 4
  %and69 = and i32 %51, 16711680
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.120

if.then.71:                                       ; preds = %if.end.68
  %52 = load i32, i32* %val, align 4
  %and72 = and i32 %52, 8388608
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.then.71
  %53 = load i32*, i32** %cnt, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %53, i64 23
  %54 = load i32, i32* %arrayidx75, align 4
  %inc76 = add nsw i32 %54, 1
  store i32 %inc76, i32* %arrayidx75, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.then.71
  %55 = load i32, i32* %val, align 4
  %and78 = and i32 %55, 4194304
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.77
  %56 = load i32*, i32** %cnt, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %56, i64 22
  %57 = load i32, i32* %arrayidx81, align 4
  %inc82 = add nsw i32 %57, 1
  store i32 %inc82, i32* %arrayidx81, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.77
  %58 = load i32, i32* %val, align 4
  %and84 = and i32 %58, 2097152
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.83
  %59 = load i32*, i32** %cnt, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %59, i64 21
  %60 = load i32, i32* %arrayidx87, align 4
  %inc88 = add nsw i32 %60, 1
  store i32 %inc88, i32* %arrayidx87, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.83
  %61 = load i32, i32* %val, align 4
  %and90 = and i32 %61, 1048576
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.89
  %62 = load i32*, i32** %cnt, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %62, i64 20
  %63 = load i32, i32* %arrayidx93, align 4
  %inc94 = add nsw i32 %63, 1
  store i32 %inc94, i32* %arrayidx93, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.end.89
  %64 = load i32, i32* %val, align 4
  %and96 = and i32 %64, 524288
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.95
  %65 = load i32*, i32** %cnt, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %65, i64 19
  %66 = load i32, i32* %arrayidx99, align 4
  %inc100 = add nsw i32 %66, 1
  store i32 %inc100, i32* %arrayidx99, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.95
  %67 = load i32, i32* %val, align 4
  %and102 = and i32 %67, 262144
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.101
  %68 = load i32*, i32** %cnt, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %68, i64 18
  %69 = load i32, i32* %arrayidx105, align 4
  %inc106 = add nsw i32 %69, 1
  store i32 %inc106, i32* %arrayidx105, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.end.101
  %70 = load i32, i32* %val, align 4
  %and108 = and i32 %70, 131072
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.end.107
  %71 = load i32*, i32** %cnt, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %71, i64 17
  %72 = load i32, i32* %arrayidx111, align 4
  %inc112 = add nsw i32 %72, 1
  store i32 %inc112, i32* %arrayidx111, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.end.107
  %73 = load i32, i32* %val, align 4
  %and114 = and i32 %73, 65536
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.end.113
  %74 = load i32*, i32** %cnt, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %74, i64 16
  %75 = load i32, i32* %arrayidx117, align 4
  %inc118 = add nsw i32 %75, 1
  store i32 %inc118, i32* %arrayidx117, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.end.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.68
  %76 = load i32, i32* %val, align 4
  %and121 = and i32 %76, 65280
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.172

if.then.123:                                      ; preds = %if.end.120
  %77 = load i32, i32* %val, align 4
  %and124 = and i32 %77, 32768
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.then.123
  %78 = load i32*, i32** %cnt, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %78, i64 15
  %79 = load i32, i32* %arrayidx127, align 4
  %inc128 = add nsw i32 %79, 1
  store i32 %inc128, i32* %arrayidx127, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.then.123
  %80 = load i32, i32* %val, align 4
  %and130 = and i32 %80, 16384
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %if.end.129
  %81 = load i32*, i32** %cnt, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %81, i64 14
  %82 = load i32, i32* %arrayidx133, align 4
  %inc134 = add nsw i32 %82, 1
  store i32 %inc134, i32* %arrayidx133, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.132, %if.end.129
  %83 = load i32, i32* %val, align 4
  %and136 = and i32 %83, 8192
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %if.end.135
  %84 = load i32*, i32** %cnt, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %84, i64 13
  %85 = load i32, i32* %arrayidx139, align 4
  %inc140 = add nsw i32 %85, 1
  store i32 %inc140, i32* %arrayidx139, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.138, %if.end.135
  %86 = load i32, i32* %val, align 4
  %and142 = and i32 %86, 4096
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %if.end.141
  %87 = load i32*, i32** %cnt, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %87, i64 12
  %88 = load i32, i32* %arrayidx145, align 4
  %inc146 = add nsw i32 %88, 1
  store i32 %inc146, i32* %arrayidx145, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %if.end.141
  %89 = load i32, i32* %val, align 4
  %and148 = and i32 %89, 2048
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.153

if.then.150:                                      ; preds = %if.end.147
  %90 = load i32*, i32** %cnt, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %90, i64 11
  %91 = load i32, i32* %arrayidx151, align 4
  %inc152 = add nsw i32 %91, 1
  store i32 %inc152, i32* %arrayidx151, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.150, %if.end.147
  %92 = load i32, i32* %val, align 4
  %and154 = and i32 %92, 1024
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %if.end.153
  %93 = load i32*, i32** %cnt, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %93, i64 10
  %94 = load i32, i32* %arrayidx157, align 4
  %inc158 = add nsw i32 %94, 1
  store i32 %inc158, i32* %arrayidx157, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %if.end.153
  %95 = load i32, i32* %val, align 4
  %and160 = and i32 %95, 512
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %if.end.159
  %96 = load i32*, i32** %cnt, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %96, i64 9
  %97 = load i32, i32* %arrayidx163, align 4
  %inc164 = add nsw i32 %97, 1
  store i32 %inc164, i32* %arrayidx163, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %if.end.159
  %98 = load i32, i32* %val, align 4
  %and166 = and i32 %98, 256
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.end.165
  %99 = load i32*, i32** %cnt, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %99, i64 8
  %100 = load i32, i32* %arrayidx169, align 4
  %inc170 = add nsw i32 %100, 1
  store i32 %inc170, i32* %arrayidx169, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %if.end.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.120
  %101 = load i32, i32* %val, align 4
  %and173 = and i32 %101, 255
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.224

if.then.175:                                      ; preds = %if.end.172
  %102 = load i32, i32* %val, align 4
  %and176 = and i32 %102, 128
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.then.175
  %103 = load i32*, i32** %cnt, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %103, i64 7
  %104 = load i32, i32* %arrayidx179, align 4
  %inc180 = add nsw i32 %104, 1
  store i32 %inc180, i32* %arrayidx179, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.then.175
  %105 = load i32, i32* %val, align 4
  %and182 = and i32 %105, 64
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.187

if.then.184:                                      ; preds = %if.end.181
  %106 = load i32*, i32** %cnt, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %106, i64 6
  %107 = load i32, i32* %arrayidx185, align 4
  %inc186 = add nsw i32 %107, 1
  store i32 %inc186, i32* %arrayidx185, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.184, %if.end.181
  %108 = load i32, i32* %val, align 4
  %and188 = and i32 %108, 32
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %if.end.187
  %109 = load i32*, i32** %cnt, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %109, i64 5
  %110 = load i32, i32* %arrayidx191, align 4
  %inc192 = add nsw i32 %110, 1
  store i32 %inc192, i32* %arrayidx191, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.190, %if.end.187
  %111 = load i32, i32* %val, align 4
  %and194 = and i32 %111, 16
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.199

if.then.196:                                      ; preds = %if.end.193
  %112 = load i32*, i32** %cnt, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %112, i64 4
  %113 = load i32, i32* %arrayidx197, align 4
  %inc198 = add nsw i32 %113, 1
  store i32 %inc198, i32* %arrayidx197, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.196, %if.end.193
  %114 = load i32, i32* %val, align 4
  %and200 = and i32 %114, 8
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %if.end.199
  %115 = load i32*, i32** %cnt, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %115, i64 3
  %116 = load i32, i32* %arrayidx203, align 4
  %inc204 = add nsw i32 %116, 1
  store i32 %inc204, i32* %arrayidx203, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %if.end.199
  %117 = load i32, i32* %val, align 4
  %and206 = and i32 %117, 4
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.211

if.then.208:                                      ; preds = %if.end.205
  %118 = load i32*, i32** %cnt, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %118, i64 2
  %119 = load i32, i32* %arrayidx209, align 4
  %inc210 = add nsw i32 %119, 1
  store i32 %inc210, i32* %arrayidx209, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.208, %if.end.205
  %120 = load i32, i32* %val, align 4
  %and212 = and i32 %120, 2
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %if.end.211
  %121 = load i32*, i32** %cnt, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %121, i64 1
  %122 = load i32, i32* %arrayidx215, align 4
  %inc216 = add nsw i32 %122, 1
  store i32 %inc216, i32* %arrayidx215, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.214, %if.end.211
  %123 = load i32, i32* %val, align 4
  %and218 = and i32 %123, 1
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %if.end.217
  %124 = load i32*, i32** %cnt, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx221, align 4
  %inc222 = add nsw i32 %125, 1
  store i32 %inc222, i32* %arrayidx221, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %if.end.217
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.end.172
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %for.body.9
  br label %for.inc.226

for.inc.226:                                      ; preds = %if.end.225
  %126 = load i32, i32* %i1, align 4
  %dec227 = add nsw i32 %126, -1
  store i32 %dec227, i32* %i1, align 4
  br label %for.cond.7

for.end.228:                                      ; preds = %for.cond.7
  br label %for.cond.3

for.end.229:                                      ; preds = %for.cond.3
  store i32 -1, i32* %best, align 4
  store i32 0, i32* %mostactive, align 4
  store i32 0, i32* %mostzero, align 4
  store i32 32000, i32* %mostbalanced, align 4
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  store i32 0, i32* %var, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.320, %for.end.229
  %127 = load i32, i32* %var, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp232 = icmp slt i32 %127, %128
  br i1 %cmp232, label %for.body.233, label %for.end.322

for.body.233:                                     ; preds = %for.cond.231
  %129 = load i32, i32* %var, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp234 = icmp slt i32 %129, %130
  br i1 %cmp234, label %if.then.235, label %if.else

if.then.235:                                      ; preds = %for.body.233
  %131 = load i32, i32* %var, align 4
  %mul = mul nsw i32 %131, 2
  %idxprom236 = sext i32 %mul to i64
  %132 = load i32*, i32** %count, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %132, i64 %idxprom236
  %133 = load i32, i32* %arrayidx237, align 4
  store i32 %133, i32* %i230, align 4
  %134 = load i32, i32* %var, align 4
  %mul238 = mul nsw i32 %134, 2
  %add = add nsw i32 %mul238, 1
  %idxprom239 = sext i32 %add to i64
  %135 = load i32*, i32** %count, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %135, i64 %idxprom239
  %136 = load i32, i32* %arrayidx240, align 4
  store i32 %136, i32* %lastbit, align 4
  %137 = load i32, i32* %i230, align 4
  %cmp241 = icmp sgt i32 %137, 0
  %conv = zext i1 %cmp241 to i32
  %138 = load i32, i32* %lastbit, align 4
  %cmp242 = icmp sgt i32 %138, 0
  %conv243 = zext i1 %cmp242 to i32
  %add244 = add nsw i32 %conv, %conv243
  store i32 %add244, i32* %active, align 4
  %139 = load i32, i32* %i230, align 4
  %140 = load i32, i32* %lastbit, align 4
  %add245 = add nsw i32 %139, %140
  %141 = load i32, i32* %var, align 4
  %idxprom246 = sext i32 %141 to i64
  %142 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %142, i64 %idxprom246
  store i32 %add245, i32* %arrayidx247, align 4
  %143 = load i32, i32* %i230, align 4
  %144 = load i32, i32* %lastbit, align 4
  %cmp248 = icmp sgt i32 %143, %144
  br i1 %cmp248, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.235
  %145 = load i32, i32* %i230, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.235
  %146 = load i32, i32* %lastbit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %145, %cond.true ], [ %146, %cond.false ]
  store i32 %cond, i32* %maxactive, align 4
  br label %if.end.277

if.else:                                          ; preds = %for.body.233
  %147 = load i32, i32* %var, align 4
  %idxprom250 = sext i32 %147 to i64
  %148 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %148, i64 %idxprom250
  store i32 0, i32* %arrayidx251, align 4
  store i32 0, i32* %active, align 4
  store i32 0, i32* %maxactive, align 4
  %149 = load i32, i32* %var, align 4
  %idxprom252 = sext i32 %149 to i64
  %150 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %150, i64 %idxprom252
  %151 = load i32, i32* %arrayidx253, align 4
  store i32 %151, i32* %lastbit, align 4
  %152 = load i32, i32* %var, align 4
  %idxprom254 = sext i32 %152 to i64
  %153 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %153, i64 %idxprom254
  %154 = load i32, i32* %arrayidx255, align 4
  store i32 %154, i32* %i230, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.274, %if.else
  %155 = load i32, i32* %i230, align 4
  %156 = load i32, i32* %lastbit, align 4
  %cmp257 = icmp sle i32 %155, %156
  br i1 %cmp257, label %for.body.259, label %for.end.276

for.body.259:                                     ; preds = %for.cond.256
  %157 = load i32, i32* %i230, align 4
  %idxprom260 = sext i32 %157 to i64
  %158 = load i32*, i32** %count, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %158, i64 %idxprom260
  %159 = load i32, i32* %arrayidx261, align 4
  %160 = load i32, i32* %var, align 4
  %idxprom262 = sext i32 %160 to i64
  %161 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %161, i64 %idxprom262
  %162 = load i32, i32* %arrayidx263, align 4
  %add264 = add nsw i32 %162, %159
  store i32 %add264, i32* %arrayidx263, align 4
  %163 = load i32, i32* %i230, align 4
  %idxprom265 = sext i32 %163 to i64
  %164 = load i32*, i32** %count, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %164, i64 %idxprom265
  %165 = load i32, i32* %arrayidx266, align 4
  %cmp267 = icmp sgt i32 %165, 0
  %conv268 = zext i1 %cmp267 to i32
  %166 = load i32, i32* %active, align 4
  %add269 = add nsw i32 %166, %conv268
  store i32 %add269, i32* %active, align 4
  %167 = load i32, i32* %active, align 4
  %168 = load i32, i32* %maxactive, align 4
  %cmp270 = icmp sgt i32 %167, %168
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %for.body.259
  %169 = load i32, i32* %active, align 4
  store i32 %169, i32* %maxactive, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %for.body.259
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %170 = load i32, i32* %i230, align 4
  %inc275 = add nsw i32 %170, 1
  store i32 %inc275, i32* %i230, align 4
  br label %for.cond.256

for.end.276:                                      ; preds = %for.cond.256
  br label %if.end.277

if.end.277:                                       ; preds = %for.end.276, %cond.end
  %171 = load i32, i32* %active, align 4
  %172 = load i32, i32* %mostactive, align 4
  %cmp278 = icmp sgt i32 %171, %172
  br i1 %cmp278, label %if.then.280, label %if.else.283

if.then.280:                                      ; preds = %if.end.277
  %173 = load i32, i32* %var, align 4
  store i32 %173, i32* %best, align 4
  %174 = load i32, i32* %active, align 4
  store i32 %174, i32* %mostactive, align 4
  %175 = load i32, i32* %best, align 4
  %idxprom281 = sext i32 %175 to i64
  %176 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %176, i64 %idxprom281
  %177 = load i32, i32* %arrayidx282, align 4
  store i32 %177, i32* %mostzero, align 4
  %178 = load i32, i32* %maxactive, align 4
  store i32 %178, i32* %mostbalanced, align 4
  br label %if.end.307

if.else.283:                                      ; preds = %if.end.277
  %179 = load i32, i32* %active, align 4
  %180 = load i32, i32* %mostactive, align 4
  %cmp284 = icmp eq i32 %179, %180
  br i1 %cmp284, label %if.then.286, label %if.end.306

if.then.286:                                      ; preds = %if.else.283
  %181 = load i32, i32* %var, align 4
  %idxprom287 = sext i32 %181 to i64
  %182 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %182, i64 %idxprom287
  %183 = load i32, i32* %arrayidx288, align 4
  %184 = load i32, i32* %mostzero, align 4
  %cmp289 = icmp sgt i32 %183, %184
  br i1 %cmp289, label %if.then.291, label %if.else.294

if.then.291:                                      ; preds = %if.then.286
  %185 = load i32, i32* %var, align 4
  store i32 %185, i32* %best, align 4
  %186 = load i32, i32* %best, align 4
  %idxprom292 = sext i32 %186 to i64
  %187 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %187, i64 %idxprom292
  %188 = load i32, i32* %arrayidx293, align 4
  store i32 %188, i32* %mostzero, align 4
  %189 = load i32, i32* %maxactive, align 4
  store i32 %189, i32* %mostbalanced, align 4
  br label %if.end.305

if.else.294:                                      ; preds = %if.then.286
  %190 = load i32, i32* %var, align 4
  %idxprom295 = sext i32 %190 to i64
  %191 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %191, i64 %idxprom295
  %192 = load i32, i32* %arrayidx296, align 4
  %193 = load i32, i32* %mostzero, align 4
  %cmp297 = icmp eq i32 %192, %193
  br i1 %cmp297, label %if.then.299, label %if.end.304

if.then.299:                                      ; preds = %if.else.294
  %194 = load i32, i32* %maxactive, align 4
  %195 = load i32, i32* %mostbalanced, align 4
  %cmp300 = icmp slt i32 %194, %195
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.then.299
  %196 = load i32, i32* %var, align 4
  store i32 %196, i32* %best, align 4
  %197 = load i32, i32* %maxactive, align 4
  store i32 %197, i32* %mostbalanced, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.then.299
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.else.294
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.then.291
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.else.283
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.then.280
  %198 = load i32, i32* %active, align 4
  %199 = load i32, i32* %var, align 4
  %idxprom308 = sext i32 %199 to i64
  %200 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %200, i64 %idxprom308
  store i32 %198, i32* %arrayidx309, align 4
  %201 = load i32, i32* %active, align 4
  %cmp310 = icmp eq i32 %201, 1
  %conv311 = zext i1 %cmp310 to i32
  %202 = load i32, i32* %var, align 4
  %idxprom312 = sext i32 %202 to i64
  %203 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %203, i64 %idxprom312
  store i32 %conv311, i32* %arrayidx313, align 4
  %204 = load i32, i32* %active, align 4
  %cmp314 = icmp sgt i32 %204, 0
  %conv315 = zext i1 %cmp314 to i32
  %205 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %add316 = add nsw i32 %205, %conv315
  store i32 %add316, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %206 = load i32, i32* %active, align 4
  %cmp317 = icmp eq i32 %206, 1
  %conv318 = zext i1 %cmp317 to i32
  %207 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %add319 = add nsw i32 %207, %conv318
  store i32 %add319, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.307
  %208 = load i32, i32* %var, align 4
  %inc321 = add nsw i32 %208, 1
  store i32 %inc321, i32* %var, align 4
  br label %for.cond.231

for.end.322:                                      ; preds = %for.cond.231
  %209 = load i32, i32* %best, align 4
  store i32 %209, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @binate_split_select(i32** %T, i32* %cleft, i32* %cright, i32 %debug_flag) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %cleft.addr = alloca i32*, align 8
  %cright.addr = alloca i32*, align 8
  %debug_flag.addr = alloca i32, align 4
  %best = alloca i32, align 4
  %i = alloca i32, align 4
  %lastbit = alloca i32, align 4
  %halfbit = alloca i32, align 4
  %cof = alloca i32*, align 8
  store i32** %T, i32*** %T.addr, align 8
  store i32* %cleft, i32** %cleft.addr, align 8
  store i32* %cright, i32** %cright.addr, align 8
  store i32 %debug_flag, i32* %debug_flag.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 4
  store i32 %0, i32* %best, align 4
  %1 = load i32, i32* %best, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %lastbit, align 4
  store i32 0, i32* %halfbit, align 4
  %4 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %4, i64 0
  %5 = load i32*, i32** %arrayidx1, align 8
  store i32* %5, i32** %cof, align 8
  %6 = load i32*, i32** %cleft.addr, align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %8 = load i32, i32* %best, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %9, i64 %idxprom2
  %10 = load i32*, i32** %arrayidx3, align 8
  %call = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %6, i32* %7, i32* %10)
  %11 = load i32*, i32** %cright.addr, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %13 = load i32, i32* %best, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %call6 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %11, i32* %12, i32* %15)
  %16 = load i32, i32* %best, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  store i32 %18, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %lastbit, align 4
  %cmp = icmp sle i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %shr = ashr i32 %21, 5
  %add = add nsw i32 %shr, 1
  %idxprom9 = sext i32 %add to i64
  %22 = load i32*, i32** %cof, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom9
  %23 = load i32, i32* %arrayidx10, align 4
  %24 = load i32, i32* %i, align 4
  %and = and i32 %24, 31
  %shl = shl i32 1, %and
  %and11 = and i32 %23, %shl
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %halfbit, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %halfbit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %26, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %best, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %28, i64 %idxprom13
  %29 = load i32, i32* %arrayidx14, align 4
  store i32 %29, i32* %i, align 4
  %30 = load i32, i32* %halfbit, align 4
  %div = sdiv i32 %30, 2
  store i32 %div, i32* %halfbit, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.34, %for.end
  %31 = load i32, i32* %halfbit, align 4
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %for.body.17, label %for.end.36

for.body.17:                                      ; preds = %for.cond.15
  %32 = load i32, i32* %i, align 4
  %shr18 = ashr i32 %32, 5
  %add19 = add nsw i32 %shr18, 1
  %idxprom20 = sext i32 %add19 to i64
  %33 = load i32*, i32** %cof, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 %idxprom20
  %34 = load i32, i32* %arrayidx21, align 4
  %35 = load i32, i32* %i, align 4
  %and22 = and i32 %35, 31
  %shl23 = shl i32 1, %and22
  %and24 = and i32 %34, %shl23
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.33, label %if.then.26

if.then.26:                                       ; preds = %for.body.17
  %36 = load i32, i32* %halfbit, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %halfbit, align 4
  %37 = load i32, i32* %i, align 4
  %and27 = and i32 %37, 31
  %shl28 = shl i32 1, %and27
  %38 = load i32, i32* %i, align 4
  %shr29 = ashr i32 %38, 5
  %add30 = add nsw i32 %shr29, 1
  %idxprom31 = sext i32 %add30 to i64
  %39 = load i32*, i32** %cleft.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %39, i64 %idxprom31
  %40 = load i32, i32* %arrayidx32, align 4
  %or = or i32 %40, %shl28
  store i32 %or, i32* %arrayidx32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %for.body.17
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %41 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.15

for.end.36:                                       ; preds = %for.cond.15
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.57, %for.end.36
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %lastbit, align 4
  %cmp38 = icmp sle i32 %42, %43
  br i1 %cmp38, label %for.body.39, label %for.end.59

for.body.39:                                      ; preds = %for.cond.37
  %44 = load i32, i32* %i, align 4
  %shr40 = ashr i32 %44, 5
  %add41 = add nsw i32 %shr40, 1
  %idxprom42 = sext i32 %add41 to i64
  %45 = load i32*, i32** %cof, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %45, i64 %idxprom42
  %46 = load i32, i32* %arrayidx43, align 4
  %47 = load i32, i32* %i, align 4
  %and44 = and i32 %47, 31
  %shl45 = shl i32 1, %and44
  %and46 = and i32 %46, %shl45
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.end.56, label %if.then.48

if.then.48:                                       ; preds = %for.body.39
  %48 = load i32, i32* %i, align 4
  %and49 = and i32 %48, 31
  %shl50 = shl i32 1, %and49
  %49 = load i32, i32* %i, align 4
  %shr51 = ashr i32 %49, 5
  %add52 = add nsw i32 %shr51, 1
  %idxprom53 = sext i32 %add52 to i64
  %50 = load i32*, i32** %cright.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %50, i64 %idxprom53
  %51 = load i32, i32* %arrayidx54, align 4
  %or55 = or i32 %51, %shl50
  store i32 %or55, i32* %arrayidx54, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.48, %for.body.39
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %52 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %52, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.37

for.end.59:                                       ; preds = %for.cond.37
  %53 = load i32, i32* @debug, align 4
  %54 = load i32, i32* %debug_flag.addr, align 4
  %and60 = and i32 %53, %54
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %for.end.59
  %55 = load i32, i32* %best, align 4
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %55)
  %56 = load i32, i32* @verbose_debug, align 4
  %tobool64 = icmp ne i32 %56, 0
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.then.62
  %57 = load i32*, i32** %cleft.addr, align 8
  %call66 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %57)
  %58 = load i32*, i32** %cright.addr, align 8
  %call67 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* %58)
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* %call66, i8* %call67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.then.62
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.end.59
  %59 = load i32, i32* %best, align 4
  ret i32 %59
}

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare i8* @pc2(...) #1

; Function Attrs: nounwind uwtable
define i32** @cube1list(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %plist = alloca i32**, align 8
  %list = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %add = add nsw i32 %1, 3
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32**
  store i32** %2, i32*** %plist, align 8
  store i32** %2, i32*** %list, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %3, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %4, 1
  %shr = ashr i32 %sub, 5
  %add2 = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add2, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv4 = sext i32 %cond to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call i8* @malloc(i64 %mul5)
  %5 = bitcast i8* %call6 to i32*
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call7 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %5, i32 %6)
  %7 = load i32**, i32*** %plist, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %7, i32 1
  store i32** %incdec.ptr, i32*** %plist, align 8
  store i32* %call7, i32** %7, align 8
  %8 = load i32**, i32*** %plist, align 8
  %incdec.ptr8 = getelementptr inbounds i32*, i32** %8, i32 1
  store i32** %incdec.ptr8, i32*** %plist, align 8
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count9, align 4
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize, align 4
  %mul10 = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %last, align 8
  %cmp11 = icmp ult i32* %16, %17
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32*, i32** %p, align 8
  %19 = load i32**, i32*** %plist, align 8
  %incdec.ptr13 = getelementptr inbounds i32*, i32** %19, i32 1
  store i32** %incdec.ptr13, i32*** %plist, align 8
  store i32* %18, i32** %19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize14 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 0
  %21 = load i32, i32* %wsize14, align 4
  %22 = load i32*, i32** %p, align 8
  %idx.ext15 = sext i32 %21 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %22, i64 %idx.ext15
  store i32* %add.ptr16, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32**, i32*** %plist, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr17, i32*** %plist, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32**, i32*** %plist, align 8
  %25 = bitcast i32** %24 to i32*
  %26 = load i32**, i32*** %list, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %25, i32** %arrayidx, align 8
  %27 = load i32**, i32*** %list, align 8
  ret i32** %27
}

; Function Attrs: nounwind uwtable
define i32** @cube2list(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %plist = alloca i32**, align 8
  %list = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count1, align 4
  %add = add nsw i32 %1, %3
  %add2 = add nsw i32 %add, 3
  %conv = sext i32 %add2 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call to i32**
  store i32** %4, i32*** %plist, align 8
  store i32** %4, i32*** %list, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %5, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %6, 1
  %shr = ashr i32 %sub, 5
  %add4 = add nsw i32 %shr, 1
  %add5 = add nsw i32 %add4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add5, %cond.false ]
  %conv6 = sext i32 %cond to i64
  %mul7 = mul i64 4, %conv6
  %call8 = call i8* @malloc(i64 %mul7)
  %7 = bitcast i8* %call8 to i32*
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call9 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %7, i32 %8)
  %9 = load i32**, i32*** %plist, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %9, i32 1
  store i32** %incdec.ptr, i32*** %plist, align 8
  store i32* %call9, i32** %9, align 8
  %10 = load i32**, i32*** %plist, align 8
  %incdec.ptr10 = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %incdec.ptr10, i32*** %plist, align 8
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 5
  %12 = load i32*, i32** %data, align 8
  store i32* %12, i32** %p, align 8
  %13 = load i32*, i32** %p, align 8
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count11 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count11, align 4
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize, align 4
  %mul12 = mul nsw i32 %15, %17
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32*, i32** %p, align 8
  %19 = load i32*, i32** %last, align 8
  %cmp13 = icmp ult i32* %18, %19
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32*, i32** %p, align 8
  %21 = load i32**, i32*** %plist, align 8
  %incdec.ptr15 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %incdec.ptr15, i32*** %plist, align 8
  store i32* %20, i32** %21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 0
  %23 = load i32, i32* %wsize16, align 4
  %24 = load i32*, i32** %p, align 8
  %idx.ext17 = sext i32 %23 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %24, i64 %idx.ext17
  store i32* %add.ptr18, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data19 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data19, align 8
  store i32* %26, i32** %p, align 8
  %27 = load i32*, i32** %p, align 8
  %28 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count20 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count20, align 4
  %30 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize21 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize21, align 4
  %mul22 = mul nsw i32 %29, %31
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %27, i64 %idx.ext23
  store i32* %add.ptr24, i32** %last, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.30, %for.end
  %32 = load i32*, i32** %p, align 8
  %33 = load i32*, i32** %last, align 8
  %cmp26 = icmp ult i32* %32, %33
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.25
  %34 = load i32*, i32** %p, align 8
  %35 = load i32**, i32*** %plist, align 8
  %incdec.ptr29 = getelementptr inbounds i32*, i32** %35, i32 1
  store i32** %incdec.ptr29, i32*** %plist, align 8
  store i32* %34, i32** %35, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.28
  %36 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize31 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 0
  %37 = load i32, i32* %wsize31, align 4
  %38 = load i32*, i32** %p, align 8
  %idx.ext32 = sext i32 %37 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %38, i64 %idx.ext32
  store i32* %add.ptr33, i32** %p, align 8
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  %39 = load i32**, i32*** %plist, align 8
  %incdec.ptr35 = getelementptr inbounds i32*, i32** %39, i32 1
  store i32** %incdec.ptr35, i32*** %plist, align 8
  store i32* null, i32** %39, align 8
  %40 = load i32**, i32*** %plist, align 8
  %41 = bitcast i32** %40 to i32*
  %42 = load i32**, i32*** %list, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* %41, i32** %arrayidx, align 8
  %43 = load i32**, i32*** %list, align 8
  ret i32** %43
}

; Function Attrs: nounwind uwtable
define i32** @cube3list(%struct.set_family* %A, %struct.set_family* %B, %struct.set_family* %C) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %C.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %plist = alloca i32**, align 8
  %list = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  store %struct.set_family* %C, %struct.set_family** %C.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count1, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.set_family*, %struct.set_family** %C.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %add3 = add nsw i32 %add, %5
  %add4 = add nsw i32 %add3, 3
  %conv = sext i32 %add4 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %6 = bitcast i8* %call to i32**
  store i32** %6, i32*** %plist, align 8
  %7 = load i32**, i32*** %plist, align 8
  store i32** %7, i32*** %list, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %8, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %9, 1
  %shr = ashr i32 %sub, 5
  %add6 = add nsw i32 %shr, 1
  %add7 = add nsw i32 %add6, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add7, %cond.false ]
  %conv8 = sext i32 %cond to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call i8* @malloc(i64 %mul9)
  %10 = bitcast i8* %call10 to i32*
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call11 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %10, i32 %11)
  %12 = load i32**, i32*** %plist, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %12, i32 1
  store i32** %incdec.ptr, i32*** %plist, align 8
  store i32* %call11, i32** %12, align 8
  %13 = load i32**, i32*** %plist, align 8
  %incdec.ptr12 = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %incdec.ptr12, i32*** %plist, align 8
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %15 = load i32*, i32** %data, align 8
  store i32* %15, i32** %p, align 8
  %16 = load i32*, i32** %p, align 8
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count13 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %18 = load i32, i32* %count13, align 4
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize, align 4
  %mul14 = mul nsw i32 %18, %20
  %idx.ext = sext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load i32*, i32** %p, align 8
  %22 = load i32*, i32** %last, align 8
  %cmp15 = icmp ult i32* %21, %22
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32*, i32** %p, align 8
  %24 = load i32**, i32*** %plist, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %24, i32 1
  store i32** %incdec.ptr17, i32*** %plist, align 8
  store i32* %23, i32** %24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %26 = load i32, i32* %wsize18, align 4
  %27 = load i32*, i32** %p, align 8
  %idx.ext19 = sext i32 %26 to i64
  %add.ptr20 = getelementptr inbounds i32, i32* %27, i64 %idx.ext19
  store i32* %add.ptr20, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data21 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data21, align 8
  store i32* %29, i32** %p, align 8
  %30 = load i32*, i32** %p, align 8
  %31 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count22 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 3
  %32 = load i32, i32* %count22, align 4
  %33 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize23 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 0
  %34 = load i32, i32* %wsize23, align 4
  %mul24 = mul nsw i32 %32, %34
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i32, i32* %30, i64 %idx.ext25
  store i32* %add.ptr26, i32** %last, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.32, %for.end
  %35 = load i32*, i32** %p, align 8
  %36 = load i32*, i32** %last, align 8
  %cmp28 = icmp ult i32* %35, %36
  br i1 %cmp28, label %for.body.30, label %for.end.36

for.body.30:                                      ; preds = %for.cond.27
  %37 = load i32*, i32** %p, align 8
  %38 = load i32**, i32*** %plist, align 8
  %incdec.ptr31 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %incdec.ptr31, i32*** %plist, align 8
  store i32* %37, i32** %38, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.30
  %39 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize33 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 0
  %40 = load i32, i32* %wsize33, align 4
  %41 = load i32*, i32** %p, align 8
  %idx.ext34 = sext i32 %40 to i64
  %add.ptr35 = getelementptr inbounds i32, i32* %41, i64 %idx.ext34
  store i32* %add.ptr35, i32** %p, align 8
  br label %for.cond.27

for.end.36:                                       ; preds = %for.cond.27
  %42 = load %struct.set_family*, %struct.set_family** %C.addr, align 8
  %data37 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 5
  %43 = load i32*, i32** %data37, align 8
  store i32* %43, i32** %p, align 8
  %44 = load i32*, i32** %p, align 8
  %45 = load %struct.set_family*, %struct.set_family** %C.addr, align 8
  %count38 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 3
  %46 = load i32, i32* %count38, align 4
  %47 = load %struct.set_family*, %struct.set_family** %C.addr, align 8
  %wsize39 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 0
  %48 = load i32, i32* %wsize39, align 4
  %mul40 = mul nsw i32 %46, %48
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds i32, i32* %44, i64 %idx.ext41
  store i32* %add.ptr42, i32** %last, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.48, %for.end.36
  %49 = load i32*, i32** %p, align 8
  %50 = load i32*, i32** %last, align 8
  %cmp44 = icmp ult i32* %49, %50
  br i1 %cmp44, label %for.body.46, label %for.end.52

for.body.46:                                      ; preds = %for.cond.43
  %51 = load i32*, i32** %p, align 8
  %52 = load i32**, i32*** %plist, align 8
  %incdec.ptr47 = getelementptr inbounds i32*, i32** %52, i32 1
  store i32** %incdec.ptr47, i32*** %plist, align 8
  store i32* %51, i32** %52, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.46
  %53 = load %struct.set_family*, %struct.set_family** %C.addr, align 8
  %wsize49 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 0
  %54 = load i32, i32* %wsize49, align 4
  %55 = load i32*, i32** %p, align 8
  %idx.ext50 = sext i32 %54 to i64
  %add.ptr51 = getelementptr inbounds i32, i32* %55, i64 %idx.ext50
  store i32* %add.ptr51, i32** %p, align 8
  br label %for.cond.43

for.end.52:                                       ; preds = %for.cond.43
  %56 = load i32**, i32*** %plist, align 8
  %incdec.ptr53 = getelementptr inbounds i32*, i32** %56, i32 1
  store i32** %incdec.ptr53, i32*** %plist, align 8
  store i32* null, i32** %56, align 8
  %57 = load i32**, i32*** %plist, align 8
  %58 = bitcast i32** %57 to i32*
  %59 = load i32**, i32*** %list, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* %58, i32** %arrayidx, align 8
  %60 = load i32**, i32*** %list, align 8
  ret i32** %60
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @cubeunlist(i32** %A1) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %cof = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %cof, align 8
  %2 = load i32**, i32*** %A1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  %4 = bitcast i32* %3 to i32**
  %5 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i64, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i64, i32, ...)*)(i64 %sub, i32 %6)
  store %struct.set_family* %call, %struct.set_family** %A, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32**, i32*** %A1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %8, i64 %idxprom
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %p, align 8
  %cmp = icmp ne i32* %9, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %11 = load i32*, i32** %data, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %14 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %14, 2
  %mul = mul nsw i32 %13, %sub3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %pdest, align 8
  %15 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx4, align 4
  %and = and i32 %16, 1023
  store i32 %and, i32* %i_, align 4
  %17 = load i32*, i32** %pdest, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %18, -1024
  store i32 %and6, i32* %arrayidx5, align 4
  %19 = load i32, i32* %i_, align 4
  %20 = load i32*, i32** %pdest, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx7, align 4
  %or = or i32 %21, %19
  store i32 %or, i32* %arrayidx7, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %22 = load i32, i32* %i_, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load i32*, i32** %p, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom8
  %24 = load i32, i32* %arrayidx9, align 4
  %25 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load i32*, i32** %cof, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 %idxprom10
  %27 = load i32, i32* %arrayidx11, align 4
  %or12 = or i32 %24, %27
  %28 = load i32, i32* %i_, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load i32*, i32** %pdest, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 %idxprom13
  store i32 %or12, i32* %arrayidx14, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32**, i32*** %A1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %32, i64 1
  %33 = load i32*, i32** %arrayidx16, align 8
  %34 = bitcast i32* %33 to i32**
  %35 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i32** %34 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i32** %35 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %sub.ptr.div20 = sdiv exact i64 %sub.ptr.sub19, 8
  %sub21 = sub nsw i64 %sub.ptr.div20, 3
  %conv = trunc i64 %sub21 to i32
  %36 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 3
  store i32 %conv, i32* %count, align 4
  %37 = load %struct.set_family*, %struct.set_family** %A, align 8
  ret %struct.set_family* %37
}

declare %struct.set_family* @sf_new(...) #1

; Function Attrs: nounwind uwtable
define i32 @simplify_cubelist(i32** %T) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %Tdest = alloca i32**, align 8
  %i = alloca i32, align 4
  %ncubes = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = load i32**, i32*** %T.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 0
  %3 = load i32*, i32** %arrayidx1, align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %1, i32* %3)
  %4 = load i32**, i32*** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 1
  %5 = load i32*, i32** %arrayidx2, align 8
  %6 = bitcast i32* %5 to i32**
  %7 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %ncubes, align 4
  %8 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %8, i64 2
  %9 = bitcast i32** %add.ptr to i8*
  %10 = load i32, i32* %ncubes, align 4
  %conv3 = sext i32 %10 to i64
  call void @qsort(i8* %9, i64 %conv3, i64 8, i32 (i8*, i8*)* bitcast (i32 (...)* @d1_order to i32 (i8*, i8*)*))
  %11 = load i32**, i32*** %T.addr, align 8
  %add.ptr4 = getelementptr inbounds i32*, i32** %11, i64 2
  store i32** %add.ptr4, i32*** %Tdest, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %ncubes, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub6 = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub6 to i64
  %15 = load i32**, i32*** %T.addr, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %15, i64 %idxprom
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32**, i32*** %T.addr, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %17, i64 %idxprom8
  %call10 = call i32 (i32**, i32**, ...) bitcast (i32 (...)* @d1_order to i32 (i32**, i32**, ...)*)(i32** %arrayidx7, i32** %arrayidx9)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %19, i64 %idxprom13
  %20 = load i32*, i32** %arrayidx14, align 8
  %21 = load i32**, i32*** %Tdest, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %incdec.ptr, i32*** %Tdest, align 8
  store i32* %20, i32** %21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32**, i32*** %Tdest, align 8
  %incdec.ptr15 = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr15, i32*** %Tdest, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32**, i32*** %Tdest, align 8
  %25 = bitcast i32** %24 to i32*
  %26 = load i32**, i32*** %Tdest, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %25, i32** %arrayidx16, align 8
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32* @set_copy(...) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare i32 @d1_order(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
