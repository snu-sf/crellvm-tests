; ModuleID = './MultiSource.Benchmarks.MallocBench/9.espresso.irred.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

@debug = external global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"# IRRED: F=%d E=%d R=%d Rt=%d Rp=%d Rc=%d Final=%d Bound=%d\0A\00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"IRRED1: zr=%d ze=%d to-go=%d time=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"IRRED1: zr=%d zrt=%d to-go=%d time=%s\0A\00", align 1
@Rp_current = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"IRRED1: %d of %d to-go=%d, table=%dx%d time=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"IRRED1: delete redundant rows, now %dx%d\0A\00", align 1
@tautology.taut_level = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"TAUTOLOGY\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"exit TAUTOLOGY[%d]: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"MAYBE\00", align 1
@cdata = external global %struct.cdata_struct, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"UNATE_REDUCTION: %d unate variables, reduced to %d\0A\00", align 1
@ftautology.ftaut_level = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"FIND_TAUTOLOGY\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"exit FIND_TAUTOLOGY[%d]: table is %d by %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.set_family* @irredundant(%struct.set_family* %F, %struct.set_family* %D) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  call void @mark_irredundant(%struct.set_family* %0, %struct.set_family* %1)
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %2)
  ret %struct.set_family* %call
}

declare %struct.set_family* @sf_inactive(...) #1

; Function Attrs: nounwind uwtable
define void @mark_irredundant(%struct.set_family* %F, %struct.set_family* %D) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %E = alloca %struct.set_family*, align 8
  %Rt = alloca %struct.set_family*, align 8
  %Rp = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %last = alloca i32*, align 8
  %table = alloca %struct.sm_matrix_struct*, align 8
  %cover = alloca %struct.sm_row_struct*, align 8
  %pe = alloca %struct.sm_element_struct*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  call void @irred_split_cover(%struct.set_family* %0, %struct.set_family* %1, %struct.set_family** %E, %struct.set_family** %Rt, %struct.set_family** %Rp)
  %2 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %3 = load %struct.set_family*, %struct.set_family** %E, align 8
  %4 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %call = call %struct.sm_matrix_struct* @irred_derive_table(%struct.set_family* %2, %struct.set_family* %3, %struct.set_family* %4)
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %table, align 8
  %5 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %call1 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* %5, i32* null, i32 1, i32 0)
  store %struct.sm_row_struct* %call1, %struct.sm_row_struct** %cover, align 8
  %6 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %11 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  %and = and i32 %16, -8193
  store i32 %and, i32* %arrayidx, align 4
  %17 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx2, align 4
  %and3 = and i32 %18, -1025
  store i32 %and3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize4, align 4
  %21 = load i32*, i32** %p, align 8
  %idx.ext5 = sext i32 %20 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %21, i64 %idx.ext5
  store i32* %add.ptr6, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.set_family*, %struct.set_family** %E, align 8
  %data7 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 5
  %23 = load i32*, i32** %data7, align 8
  store i32* %23, i32** %p, align 8
  %24 = load i32*, i32** %p, align 8
  %25 = load %struct.set_family*, %struct.set_family** %E, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count8, align 4
  %27 = load %struct.set_family*, %struct.set_family** %E, align 8
  %wsize9 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize9, align 4
  %mul10 = mul nsw i32 %26, %28
  %idx.ext11 = sext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %24, i64 %idx.ext11
  store i32* %add.ptr12, i32** %last, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.25, %for.end
  %29 = load i32*, i32** %p, align 8
  %30 = load i32*, i32** %last, align 8
  %cmp14 = icmp ult i32* %29, %30
  br i1 %cmp14, label %for.body.15, label %for.end.29

for.body.15:                                      ; preds = %for.cond.13
  %31 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data16 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 5
  %32 = load i32*, i32** %data16, align 8
  %33 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize17 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 0
  %34 = load i32, i32* %wsize17, align 4
  %35 = load i32*, i32** %p, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx18, align 4
  %shr = lshr i32 %36, 16
  %mul19 = mul i32 %34, %shr
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %32, i64 %idx.ext20
  store i32* %add.ptr21, i32** %p1, align 8
  %37 = load i32*, i32** %p1, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx22, align 4
  %or = or i32 %38, 8192
  store i32 %or, i32* %arrayidx22, align 4
  %39 = load i32*, i32** %p1, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx23, align 4
  %or24 = or i32 %40, 1024
  store i32 %or24, i32* %arrayidx23, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.15
  %41 = load %struct.set_family*, %struct.set_family** %E, align 8
  %wsize26 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 0
  %42 = load i32, i32* %wsize26, align 4
  %43 = load i32*, i32** %p, align 8
  %idx.ext27 = sext i32 %42 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %43, i64 %idx.ext27
  store i32* %add.ptr28, i32** %p, align 8
  br label %for.cond.13

for.end.29:                                       ; preds = %for.cond.13
  %44 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %44, i32 0, i32 3
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %45, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %for.end.29
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %cmp31 = icmp ne %struct.sm_element_struct* %46, null
  br i1 %cmp31, label %for.body.32, label %for.end.41

for.body.32:                                      ; preds = %for.cond.30
  %47 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data33 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 5
  %48 = load i32*, i32** %data33, align 8
  %49 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize34 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 0
  %50 = load i32, i32* %wsize34, align 4
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %col_num, align 4
  %mul35 = mul nsw i32 %50, %52
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %48, i64 %idx.ext36
  store i32* %add.ptr37, i32** %p1, align 8
  %53 = load i32*, i32** %p1, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx38, align 4
  %or39 = or i32 %54, 8192
  store i32 %or39, i32* %arrayidx38, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.32
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 4
  %56 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %56, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.30

for.end.41:                                       ; preds = %for.cond.30
  %57 = load i32, i32* @debug, align 4
  %and42 = and i32 %57, 32
  %tobool = icmp ne i32 %and42, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.41
  %58 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count43 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 3
  %59 = load i32, i32* %count43, align 4
  %60 = load %struct.set_family*, %struct.set_family** %E, align 8
  %count44 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 3
  %61 = load i32, i32* %count44, align 4
  %62 = load %struct.set_family*, %struct.set_family** %Rt, align 8
  %count45 = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %63 = load i32, i32* %count45, align 4
  %64 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %count46 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 3
  %65 = load i32, i32* %count46, align 4
  %add = add nsw i32 %63, %65
  %66 = load %struct.set_family*, %struct.set_family** %Rt, align 8
  %count47 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 3
  %67 = load i32, i32* %count47, align 4
  %68 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  %count48 = getelementptr inbounds %struct.set_family, %struct.set_family* %68, i32 0, i32 3
  %69 = load i32, i32* %count48, align 4
  %70 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  %length = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %70, i32 0, i32 1
  %71 = load i32, i32* %length, align 4
  %72 = load %struct.set_family*, %struct.set_family** %E, align 8
  %count49 = getelementptr inbounds %struct.set_family, %struct.set_family* %72, i32 0, i32 3
  %73 = load i32, i32* %count49, align 4
  %74 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  %length50 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %74, i32 0, i32 1
  %75 = load i32, i32* %length50, align 4
  %add51 = add nsw i32 %73, %75
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i32 %59, i32 %61, i32 %add, i32 %67, i32 %69, i32 %71, i32 %add51, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.41
  %76 = load %struct.set_family*, %struct.set_family** %E, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %76)
  %77 = load %struct.set_family*, %struct.set_family** %Rt, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %77)
  %78 = load %struct.set_family*, %struct.set_family** %Rp, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %78)
  %79 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %79)
  %80 = load %struct.sm_row_struct*, %struct.sm_row_struct** %cover, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %80)
  ret void
}

declare %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare i32 @printf(i8*, ...) #1

declare void @sf_free(...) #1

declare void @sm_free(...) #1

declare void @sm_row_free(...) #1

; Function Attrs: nounwind uwtable
define void @irred_split_cover(%struct.set_family* %F, %struct.set_family* %D, %struct.set_family** %E, %struct.set_family** %Rt, %struct.set_family** %Rp) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %E.addr = alloca %struct.set_family**, align 8
  %Rt.addr = alloca %struct.set_family**, align 8
  %Rp.addr = alloca %struct.set_family**, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %index = alloca i32, align 4
  %R = alloca %struct.set_family*, align 8
  %FD = alloca i32**, align 8
  %ED = alloca i32**, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family** %E, %struct.set_family*** %E.addr, align 8
  store %struct.set_family** %Rt, %struct.set_family*** %Rt.addr, align 8
  store %struct.set_family** %Rp, %struct.set_family*** %Rp.addr, align 8
  store i32 0, i32* %index, align 4
  %0 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 65535
  store i32 %and, i32* %arrayidx, align 4
  %11 = load i32, i32* %index, align 4
  %shl = shl i32 %11, 16
  %12 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx1, align 4
  %or = or i32 %13, %shl
  store i32 %or, i32* %arrayidx1, align 4
  %14 = load i32, i32* %index, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize2, align 4
  %17 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %16 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %17, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %18)
  %19 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  store %struct.set_family* %call, %struct.set_family** %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %20)
  %21 = load %struct.set_family**, %struct.set_family*** %Rt.addr, align 8
  store %struct.set_family* %call5, %struct.set_family** %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call6 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %22)
  %23 = load %struct.set_family**, %struct.set_family*** %Rp.addr, align 8
  store %struct.set_family* %call6, %struct.set_family** %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %24)
  store %struct.set_family* %call7, %struct.set_family** %R, align 8
  %25 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %26 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call8 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %25, %struct.set_family* %26)
  store i32** %call8, i32*** %FD, align 8
  %27 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data9 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data9, align 8
  store i32* %28, i32** %p, align 8
  %29 = load i32*, i32** %p, align 8
  %30 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 3
  %31 = load i32, i32* %count10, align 4
  %32 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize11 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize11, align 4
  %mul12 = mul nsw i32 %31, %33
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %29, i64 %idx.ext13
  store i32* %add.ptr14, i32** %last, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.33, %for.end
  %34 = load i32*, i32** %p, align 8
  %35 = load i32*, i32** %last, align 8
  %cmp16 = icmp ult i32* %34, %35
  br i1 %cmp16, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.15
  %36 = load i32**, i32*** %FD, align 8
  %37 = load i32*, i32** %p, align 8
  %call18 = call i32 @cube_is_covered(i32** %36, i32* %37)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.17
  %38 = load %struct.set_family*, %struct.set_family** %R, align 8
  %39 = load i32*, i32** %p, align 8
  %call19 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %38, i32* %39)
  store %struct.set_family* %call19, %struct.set_family** %R, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.17
  %40 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  %41 = load %struct.set_family*, %struct.set_family** %40, align 8
  %42 = load i32*, i32** %p, align 8
  %call20 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %41, i32* %42)
  %43 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  store %struct.set_family* %call20, %struct.set_family** %43, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %44 = load i32, i32* @debug, align 4
  %and21 = and i32 %44, 16384
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end
  %45 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count24 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 3
  %46 = load i32, i32* %count24, align 4
  %47 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  %48 = load %struct.set_family*, %struct.set_family** %47, align 8
  %count25 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 3
  %49 = load i32, i32* %count25, align 4
  %50 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count26 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 3
  %51 = load i32, i32* %count26, align 4
  %52 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count27 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 3
  %53 = load i32, i32* %count27, align 4
  %54 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  %55 = load %struct.set_family*, %struct.set_family** %54, align 8
  %count28 = getelementptr inbounds %struct.set_family, %struct.set_family* %55, i32 0, i32 3
  %56 = load i32, i32* %count28, align 4
  %add = add nsw i32 %53, %56
  %sub = sub nsw i32 %51, %add
  %call29 = call i64 (...) @util_cpu_time()
  %call30 = call i8* @util_print_time(i64 %call29)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %46, i32 %49, i32 %sub, i8* %call30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %if.end
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %57 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize34 = getelementptr inbounds %struct.set_family, %struct.set_family* %57, i32 0, i32 0
  %58 = load i32, i32* %wsize34, align 4
  %59 = load i32*, i32** %p, align 8
  %idx.ext35 = sext i32 %58 to i64
  %add.ptr36 = getelementptr inbounds i32, i32* %59, i64 %idx.ext35
  store i32* %add.ptr36, i32** %p, align 8
  br label %for.cond.15

for.end.37:                                       ; preds = %for.cond.15
  %60 = load i32**, i32*** %FD, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %60, i64 0
  %61 = load i32*, i32** %arrayidx38, align 8
  %tobool39 = icmp ne i32* %61, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.end.37
  %62 = load i32**, i32*** %FD, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %62, i64 0
  %63 = load i32*, i32** %arrayidx41, align 8
  %64 = bitcast i32* %63 to i8*
  call void @free(i8* %64)
  %65 = load i32**, i32*** %FD, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %65, i64 0
  store i32* null, i32** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %for.end.37
  %66 = load i32**, i32*** %FD, align 8
  %tobool44 = icmp ne i32** %66, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %67 = load i32**, i32*** %FD, align 8
  %68 = bitcast i32** %67 to i8*
  call void @free(i8* %68)
  store i32** null, i32*** %FD, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  %69 = load %struct.set_family**, %struct.set_family*** %E.addr, align 8
  %70 = load %struct.set_family*, %struct.set_family** %69, align 8
  %71 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %call47 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %70, %struct.set_family* %71)
  store i32** %call47, i32*** %ED, align 8
  %72 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data48 = getelementptr inbounds %struct.set_family, %struct.set_family* %72, i32 0, i32 5
  %73 = load i32*, i32** %data48, align 8
  store i32* %73, i32** %p, align 8
  %74 = load i32*, i32** %p, align 8
  %75 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count49 = getelementptr inbounds %struct.set_family, %struct.set_family* %75, i32 0, i32 3
  %76 = load i32, i32* %count49, align 4
  %77 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize50 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 0
  %78 = load i32, i32* %wsize50, align 4
  %mul51 = mul nsw i32 %76, %78
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds i32, i32* %74, i64 %idx.ext52
  store i32* %add.ptr53, i32** %last, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.78, %if.end.46
  %79 = load i32*, i32** %p, align 8
  %80 = load i32*, i32** %last, align 8
  %cmp55 = icmp ult i32* %79, %80
  br i1 %cmp55, label %for.body.56, label %for.end.82

for.body.56:                                      ; preds = %for.cond.54
  %81 = load i32**, i32*** %ED, align 8
  %82 = load i32*, i32** %p, align 8
  %call57 = call i32 @cube_is_covered(i32** %81, i32* %82)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %for.body.56
  %83 = load %struct.set_family**, %struct.set_family*** %Rt.addr, align 8
  %84 = load %struct.set_family*, %struct.set_family** %83, align 8
  %85 = load i32*, i32** %p, align 8
  %call60 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %84, i32* %85)
  %86 = load %struct.set_family**, %struct.set_family*** %Rt.addr, align 8
  store %struct.set_family* %call60, %struct.set_family** %86, align 8
  br label %if.end.63

if.else.61:                                       ; preds = %for.body.56
  %87 = load %struct.set_family**, %struct.set_family*** %Rp.addr, align 8
  %88 = load %struct.set_family*, %struct.set_family** %87, align 8
  %89 = load i32*, i32** %p, align 8
  %call62 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %88, i32* %89)
  %90 = load %struct.set_family**, %struct.set_family*** %Rp.addr, align 8
  store %struct.set_family* %call62, %struct.set_family** %90, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  %91 = load i32, i32* @debug, align 4
  %and64 = and i32 %91, 16384
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.77

if.then.66:                                       ; preds = %if.end.63
  %92 = load %struct.set_family**, %struct.set_family*** %Rp.addr, align 8
  %93 = load %struct.set_family*, %struct.set_family** %92, align 8
  %count67 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count67, align 4
  %95 = load %struct.set_family**, %struct.set_family*** %Rt.addr, align 8
  %96 = load %struct.set_family*, %struct.set_family** %95, align 8
  %count68 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 3
  %97 = load i32, i32* %count68, align 4
  %98 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count69 = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 3
  %99 = load i32, i32* %count69, align 4
  %100 = load %struct.set_family**, %struct.set_family*** %Rp.addr, align 8
  %101 = load %struct.set_family*, %struct.set_family** %100, align 8
  %count70 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i32 0, i32 3
  %102 = load i32, i32* %count70, align 4
  %103 = load %struct.set_family**, %struct.set_family*** %Rt.addr, align 8
  %104 = load %struct.set_family*, %struct.set_family** %103, align 8
  %count71 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 3
  %105 = load i32, i32* %count71, align 4
  %add72 = add nsw i32 %102, %105
  %sub73 = sub nsw i32 %99, %add72
  %call74 = call i64 (...) @util_cpu_time()
  %call75 = call i8* @util_print_time(i64 %call74)
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %94, i32 %97, i32 %sub73, i8* %call75)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.66, %if.end.63
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %106 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize79 = getelementptr inbounds %struct.set_family, %struct.set_family* %106, i32 0, i32 0
  %107 = load i32, i32* %wsize79, align 4
  %108 = load i32*, i32** %p, align 8
  %idx.ext80 = sext i32 %107 to i64
  %add.ptr81 = getelementptr inbounds i32, i32* %108, i64 %idx.ext80
  store i32* %add.ptr81, i32** %p, align 8
  br label %for.cond.54

for.end.82:                                       ; preds = %for.cond.54
  %109 = load i32**, i32*** %ED, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %109, i64 0
  %110 = load i32*, i32** %arrayidx83, align 8
  %tobool84 = icmp ne i32* %110, null
  br i1 %tobool84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %for.end.82
  %111 = load i32**, i32*** %ED, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %111, i64 0
  %112 = load i32*, i32** %arrayidx86, align 8
  %113 = bitcast i32* %112 to i8*
  call void @free(i8* %113)
  %114 = load i32**, i32*** %ED, align 8
  %arrayidx87 = getelementptr inbounds i32*, i32** %114, i64 0
  store i32* null, i32** %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %for.end.82
  %115 = load i32**, i32*** %ED, align 8
  %tobool89 = icmp ne i32** %115, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %116 = load i32**, i32*** %ED, align 8
  %117 = bitcast i32** %116 to i8*
  call void @free(i8* %117)
  store i32** null, i32*** %ED, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  %118 = load %struct.set_family*, %struct.set_family** %R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %118)
  ret void
}

declare %struct.set_family* @sf_new(...) #1

declare i32** @cube2list(...) #1

declare %struct.set_family* @sf_addset(...) #1

declare i8* @util_print_time(i64) #1

declare i64 @util_cpu_time(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sm_matrix_struct* @irred_derive_table(%struct.set_family* %D, %struct.set_family* %E, %struct.set_family* %Rp) #0 {
entry:
  %D.addr = alloca %struct.set_family*, align 8
  %E.addr = alloca %struct.set_family*, align 8
  %Rp.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %list = alloca i32**, align 8
  %table = alloca %struct.sm_matrix_struct*, align 8
  %size_last_dominance = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %E, %struct.set_family** %E.addr, align 8
  store %struct.set_family* %Rp, %struct.set_family** %Rp.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, -4097
  store i32 %and, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %wsize1 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize1, align 4
  %13 = load i32*, i32** %p, align 8
  %idx.ext2 = sext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %13, i64 %idx.ext2
  store i32* %add.ptr3, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %data4 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %15 = load i32*, i32** %data4, align 8
  store i32* %15, i32** %p, align 8
  %16 = load i32*, i32** %p, align 8
  %17 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %count5 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %18 = load i32, i32* %count5, align 4
  %19 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize6, align 4
  %mul7 = mul nsw i32 %18, %20
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %16, i64 %idx.ext8
  store i32* %add.ptr9, i32** %last, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.15, %for.end
  %21 = load i32*, i32** %p, align 8
  %22 = load i32*, i32** %last, align 8
  %cmp11 = icmp ult i32* %21, %22
  br i1 %cmp11, label %for.body.12, label %for.end.19

for.body.12:                                      ; preds = %for.cond.10
  %23 = load i32*, i32** %p, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %24, -4097
  store i32 %and14, i32* %arrayidx13, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %25 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %26 = load i32, i32* %wsize16, align 4
  %27 = load i32*, i32** %p, align 8
  %idx.ext17 = sext i32 %26 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %27, i64 %idx.ext17
  store i32* %add.ptr18, i32** %p, align 8
  br label %for.cond.10

for.end.19:                                       ; preds = %for.cond.10
  %28 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %data20 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data20, align 8
  store i32* %29, i32** %p, align 8
  %30 = load i32*, i32** %p, align 8
  %31 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %count21 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 3
  %32 = load i32, i32* %count21, align 4
  %33 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize22 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 0
  %34 = load i32, i32* %wsize22, align 4
  %mul23 = mul nsw i32 %32, %34
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i32, i32* %30, i64 %idx.ext24
  store i32* %add.ptr25, i32** %last, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.30, %for.end.19
  %35 = load i32*, i32** %p, align 8
  %36 = load i32*, i32** %last, align 8
  %cmp27 = icmp ult i32* %35, %36
  br i1 %cmp27, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.26
  %37 = load i32*, i32** %p, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx29, align 4
  %or = or i32 %38, 4096
  store i32 %or, i32* %arrayidx29, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.28
  %39 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize31 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 0
  %40 = load i32, i32* %wsize31, align 4
  %41 = load i32*, i32** %p, align 8
  %idx.ext32 = sext i32 %40 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %41, i64 %idx.ext32
  store i32* %add.ptr33, i32** %p, align 8
  br label %for.cond.26

for.end.34:                                       ; preds = %for.cond.26
  %42 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %43 = load %struct.set_family*, %struct.set_family** %E.addr, align 8
  %44 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %call = call i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube3list to i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %42, %struct.set_family* %43, %struct.set_family* %44)
  store i32** %call, i32*** %list, align 8
  %call35 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  store %struct.sm_matrix_struct* %call35, %struct.sm_matrix_struct** %table, align 8
  store i32 0, i32* %size_last_dominance, align 4
  store i32 0, i32* %i, align 4
  %45 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %data36 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 5
  %46 = load i32*, i32** %data36, align 8
  store i32* %46, i32** %p, align 8
  %47 = load i32*, i32** %p, align 8
  %48 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %count37 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 3
  %49 = load i32, i32* %count37, align 4
  %50 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize38 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 0
  %51 = load i32, i32* %wsize38, align 4
  %mul39 = mul nsw i32 %49, %51
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i32, i32* %47, i64 %idx.ext40
  store i32* %add.ptr41, i32** %last, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.68, %for.end.34
  %52 = load i32*, i32** %p, align 8
  %53 = load i32*, i32** %last, align 8
  %cmp43 = icmp ult i32* %52, %53
  br i1 %cmp43, label %for.body.44, label %for.end.72

for.body.44:                                      ; preds = %for.cond.42
  %54 = load i32*, i32** %p, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %54, i64 0
  %55 = load i32, i32* %arrayidx45, align 4
  %shr = lshr i32 %55, 16
  store i32 %shr, i32* @Rp_current, align 4
  %56 = load i32**, i32*** %list, align 8
  %57 = load i32*, i32** %p, align 8
  %58 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  call void @fcube_is_covered(i32** %56, i32* %57, %struct.sm_matrix_struct* %58)
  %59 = load i32*, i32** %p, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx46, align 4
  %and47 = and i32 %60, -4097
  store i32 %and47, i32* %arrayidx46, align 4
  %61 = load i32, i32* @debug, align 4
  %and48 = and i32 %61, 16384
  %tobool = icmp ne i32 %and48, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.44
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %count49 = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 3
  %64 = load i32, i32* %count49, align 4
  %65 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %count50 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 3
  %66 = load i32, i32* %count50, align 4
  %67 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %66, %67
  %68 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %68, i32 0, i32 6
  %69 = load i32, i32* %nrows, align 4
  %70 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %70, i32 0, i32 9
  %71 = load i32, i32* %ncols, align 4
  %call51 = call i64 (...) @util_cpu_time()
  %call52 = call i8* @util_print_time(i64 %call51)
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 %62, i32 %64, i32 %sub, i32 %69, i32 %71, i8* %call52)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.44
  %72 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %nrows54 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %72, i32 0, i32 6
  %73 = load i32, i32* %nrows54, align 4
  %74 = load i32, i32* %size_last_dominance, align 4
  %sub55 = sub nsw i32 %73, %74
  %cmp56 = icmp sgt i32 %sub55, 1000
  br i1 %cmp56, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %if.end
  %75 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %call58 = call i32 (%struct.sm_matrix_struct*, ...) bitcast (i32 (...)* @sm_row_dominance to i32 (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %75)
  %76 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %nrows59 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %76, i32 0, i32 6
  %77 = load i32, i32* %nrows59, align 4
  store i32 %77, i32* %size_last_dominance, align 4
  %78 = load i32, i32* @debug, align 4
  %and60 = and i32 %78, 16384
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.then.57
  %79 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %nrows63 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %79, i32 0, i32 6
  %80 = load i32, i32* %nrows63, align 4
  %81 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  %ncols64 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %81, i32 0, i32 9
  %82 = load i32, i32* %ncols64, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %80, i32 %82)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.then.57
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %84 = load %struct.set_family*, %struct.set_family** %Rp.addr, align 8
  %wsize69 = getelementptr inbounds %struct.set_family, %struct.set_family* %84, i32 0, i32 0
  %85 = load i32, i32* %wsize69, align 4
  %86 = load i32*, i32** %p, align 8
  %idx.ext70 = sext i32 %85 to i64
  %add.ptr71 = getelementptr inbounds i32, i32* %86, i64 %idx.ext70
  store i32* %add.ptr71, i32** %p, align 8
  br label %for.cond.42

for.end.72:                                       ; preds = %for.cond.42
  %87 = load i32**, i32*** %list, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %87, i64 0
  %88 = load i32*, i32** %arrayidx73, align 8
  %tobool74 = icmp ne i32* %88, null
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %for.end.72
  %89 = load i32**, i32*** %list, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %89, i64 0
  %90 = load i32*, i32** %arrayidx76, align 8
  %91 = bitcast i32* %90 to i8*
  call void @free(i8* %91)
  %92 = load i32**, i32*** %list, align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %92, i64 0
  store i32* null, i32** %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %for.end.72
  %93 = load i32**, i32*** %list, align 8
  %tobool79 = icmp ne i32** %93, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.78
  %94 = load i32**, i32*** %list, align 8
  %95 = bitcast i32** %94 to i8*
  call void @free(i8* %95)
  store i32** null, i32*** %list, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.78
  %96 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table, align 8
  ret %struct.sm_matrix_struct* %96
}

declare i32** @cube3list(...) #1

declare %struct.sm_matrix_struct* @sm_alloc(...) #1

declare i32 @sm_row_dominance(...) #1

; Function Attrs: nounwind uwtable
define i32 @cube_is_covered(i32** %T, i32* %c) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %c.addr = alloca i32*, align 8
  store i32** %T, i32*** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %1 = load i32*, i32** %c.addr, align 8
  %call = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %0, i32* %1)
  %call1 = call i32 @tautology(i32** %call)
  ret i32 %call1
}

declare i32** @cofactor(...) #1

; Function Attrs: nounwind uwtable
define i32 @tautology(i32** %T) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  %result = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @tautology.taut_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @tautology.taut_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %call = call i32 @taut_special_cases(i32** %3)
  store i32 %call, i32* %result, align 4
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.41

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp2 = icmp sle i32 %4, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %5, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call4 = call i8* @malloc(i64 %mul)
  %6 = bitcast i8* %call4 to i32*
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %6, i32 %7)
  store i32* %call5, i32** %cl, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp6 = icmp sle i32 %8, 32
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub10 = sub nsw i32 %9, 1
  %shr11 = ashr i32 %sub10, 5
  %add12 = add nsw i32 %shr11, 1
  %add13 = add nsw i32 %add12, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i32 [ 2, %cond.true.8 ], [ %add13, %cond.false.9 ]
  %conv16 = sext i32 %cond15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @malloc(i64 %mul17)
  %10 = bitcast i8* %call18 to i32*
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %10, i32 %11)
  store i32* %call19, i32** %cr, align 8
  %12 = load i32**, i32*** %T.addr, align 8
  %13 = load i32*, i32** %cl, align 8
  %14 = load i32*, i32** %cr, align 8
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %12, i32* %13, i32* %14, i32 512)
  store i32 %call20, i32* %best, align 4
  %15 = load i32**, i32*** %T.addr, align 8
  %16 = load i32*, i32** %cl, align 8
  %17 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %15, i32* %16, i32 %17)
  %call22 = call i32 @tautology(i32** %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.14
  %18 = load i32**, i32*** %T.addr, align 8
  %19 = load i32*, i32** %cr, align 8
  %20 = load i32, i32* %best, align 4
  %call24 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %18, i32* %19, i32 %20)
  %call25 = call i32 @tautology(i32** %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.14
  %21 = phi i1 [ false, %cond.end.14 ], [ %tobool26, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %result, align 4
  %22 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %22, i64 0
  %23 = load i32*, i32** %arrayidx, align 8
  %tobool27 = icmp ne i32* %23, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %land.end
  %24 = load i32**, i32*** %T.addr, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %24, i64 0
  %25 = load i32*, i32** %arrayidx29, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26)
  %27 = load i32**, i32*** %T.addr, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %27, i64 0
  store i32* null, i32** %arrayidx30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %land.end
  %28 = load i32**, i32*** %T.addr, align 8
  %tobool32 = icmp ne i32** %28, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %29 = load i32**, i32*** %T.addr, align 8
  %30 = bitcast i32** %29 to i8*
  call void @free(i8* %30)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %31 = load i32*, i32** %cl, align 8
  %tobool35 = icmp ne i32* %31, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %32 = load i32*, i32** %cl, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33)
  store i32* null, i32** %cl, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %34 = load i32*, i32** %cr, align 8
  %tobool38 = icmp ne i32* %34, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %35 = load i32*, i32** %cr, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36)
  store i32* null, i32** %cr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  %37 = load i32, i32* @debug, align 4
  %and42 = and i32 %37, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.41
  %38 = load i32, i32* @tautology.taut_level, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* @tautology.taut_level, align 4
  %39 = load i32, i32* %result, align 4
  %cmp45 = icmp eq i32 %39, 0
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %if.then.44
  br label %cond.end.52

cond.false.48:                                    ; preds = %if.then.44
  %40 = load i32, i32* %result, align 4
  %cmp49 = icmp eq i32 %40, 1
  %cond51 = select i1 %cmp49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.48, %cond.true.47
  %cond53 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %cond.true.47 ], [ %cond51, %cond.false.48 ]
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %dec, i8* %cond53)
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.52, %if.end.41
  %41 = load i32, i32* %result, align 4
  ret i32 %41
}

declare void @debug_print(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @binate_split_select(...) #1

declare i32** @scofactor(...) #1

; Function Attrs: nounwind uwtable
define i32 @taut_special_cases(i32** %T) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %T1 = alloca i32**, align 8
  %Tsave = alloca i32**, align 8
  %p = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %A = alloca i32**, align 8
  %B = alloca i32**, align 8
  %var = alloca i32, align 4
  %i_ = alloca i32, align 4
  %i_24 = alloca i32, align 4
  %i_89 = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %ceil, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %temp, align 8
  %4 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %4, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %entry
  %5 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %p, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %p, align 8
  %8 = load i32**, i32*** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %8, i64 0
  %9 = load i32*, i32** %arrayidx2, align 8
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %7, i32* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %10 = load i32**, i32*** %T.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx3, align 8
  %tobool4 = icmp ne i32* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load i32**, i32*** %T.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx6, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14)
  %15 = load i32**, i32*** %T.addr, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %15, i64 0
  store i32* null, i32** %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %16 = load i32**, i32*** %T.addr, align 8
  %tobool8 = icmp ne i32** %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %17 = load i32**, i32*** %T.addr, align 8
  %18 = bitcast i32** %17 to i8*
  call void @free(i8* %18)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %start

start:                                            ; preds = %if.end.132, %for.end
  %19 = load i32**, i32*** %T.addr, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %19, i64 0
  %20 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx13, align 4
  %and = and i32 %21, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %start
  %22 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32**, i32*** %T.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %23, i64 0
  %24 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom
  %25 = load i32, i32* %arrayidx15, align 4
  %26 = load i32, i32* %i_, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load i32*, i32** %ceil, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  store i32 %25, i32* %arrayidx17, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i_, align 4
  %cmp18 = icmp sge i32 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32**, i32*** %T.addr, align 8
  %add.ptr19 = getelementptr inbounds i32*, i32** %29, i64 2
  store i32** %add.ptr19, i32*** %T1, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %do.end.41, %do.end
  %30 = load i32**, i32*** %T1, align 8
  %incdec.ptr21 = getelementptr inbounds i32*, i32** %30, i32 1
  store i32** %incdec.ptr21, i32*** %T1, align 8
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %p, align 8
  %cmp22 = icmp ne i32* %31, null
  br i1 %cmp22, label %for.body.23, label %for.end.42

for.body.23:                                      ; preds = %for.cond.20
  %32 = load i32*, i32** %ceil, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %33, 1023
  store i32 %and26, i32* %i_24, align 4
  %34 = load i32*, i32** %ceil, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %35, -1024
  store i32 %and28, i32* %arrayidx27, align 4
  %36 = load i32, i32* %i_24, align 4
  %37 = load i32*, i32** %ceil, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx29, align 4
  %or = or i32 %38, %36
  store i32 %or, i32* %arrayidx29, align 4
  br label %do.body.30

do.body.30:                                       ; preds = %do.cond.38, %for.body.23
  %39 = load i32, i32* %i_24, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load i32*, i32** %ceil, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %40, i64 %idxprom31
  %41 = load i32, i32* %arrayidx32, align 4
  %42 = load i32, i32* %i_24, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load i32*, i32** %p, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %43, i64 %idxprom33
  %44 = load i32, i32* %arrayidx34, align 4
  %or35 = or i32 %41, %44
  %45 = load i32, i32* %i_24, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load i32*, i32** %ceil, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 %idxprom36
  store i32 %or35, i32* %arrayidx37, align 4
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.30
  %47 = load i32, i32* %i_24, align 4
  %dec39 = add nsw i32 %47, -1
  store i32 %dec39, i32* %i_24, align 4
  %cmp40 = icmp sgt i32 %dec39, 0
  br i1 %cmp40, label %do.body.30, label %do.end.41

do.end.41:                                        ; preds = %do.cond.38
  br label %for.cond.20

for.end.42:                                       ; preds = %for.cond.20
  %48 = load i32*, i32** %ceil, align 8
  %49 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call43 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %48, i32* %49)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.55, label %if.then.45

if.then.45:                                       ; preds = %for.end.42
  %50 = load i32**, i32*** %T.addr, align 8
  %arrayidx46 = getelementptr inbounds i32*, i32** %50, i64 0
  %51 = load i32*, i32** %arrayidx46, align 8
  %tobool47 = icmp ne i32* %51, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.then.45
  %52 = load i32**, i32*** %T.addr, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %52, i64 0
  %53 = load i32*, i32** %arrayidx49, align 8
  %54 = bitcast i32* %53 to i8*
  call void @free(i8* %54)
  %55 = load i32**, i32*** %T.addr, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %55, i64 0
  store i32* null, i32** %arrayidx50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.then.45
  %56 = load i32**, i32*** %T.addr, align 8
  %tobool52 = icmp ne i32** %56, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %57 = load i32**, i32*** %T.addr, align 8
  %58 = bitcast i32** %57 to i8*
  call void @free(i8* %58)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %for.end.42
  %59 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %59)
  %60 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp56 = icmp eq i32 %60, %61
  br i1 %cmp56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.55
  %62 = load i32**, i32*** %T.addr, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %62, i64 0
  %63 = load i32*, i32** %arrayidx58, align 8
  %tobool59 = icmp ne i32* %63, null
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.then.57
  %64 = load i32**, i32*** %T.addr, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %64, i64 0
  %65 = load i32*, i32** %arrayidx61, align 8
  %66 = bitcast i32* %65 to i8*
  call void @free(i8* %66)
  %67 = load i32**, i32*** %T.addr, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %67, i64 0
  store i32* null, i32** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.then.57
  %68 = load i32**, i32*** %T.addr, align 8
  %tobool64 = icmp ne i32** %68, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %69 = load i32**, i32*** %T.addr, align 8
  %70 = bitcast i32** %69 to i8*
  call void @free(i8* %70)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.55
  %71 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp67 = icmp eq i32 %71, 1
  br i1 %cmp67, label %if.then.68, label %if.else.78

if.then.68:                                       ; preds = %if.else
  %72 = load i32**, i32*** %T.addr, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %72, i64 0
  %73 = load i32*, i32** %arrayidx69, align 8
  %tobool70 = icmp ne i32* %73, null
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.then.68
  %74 = load i32**, i32*** %T.addr, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %74, i64 0
  %75 = load i32*, i32** %arrayidx72, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* %76)
  %77 = load i32**, i32*** %T.addr, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* null, i32** %arrayidx73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.then.68
  %78 = load i32**, i32*** %T.addr, align 8
  %tobool75 = icmp ne i32** %78, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %79 = load i32**, i32*** %T.addr, align 8
  %80 = bitcast i32** %79 to i8*
  call void @free(i8* %80)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  store i32 1, i32* %retval
  br label %return

if.else.78:                                       ; preds = %if.else
  %81 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %cmp79 = icmp ne i32 %81, 0
  br i1 %cmp79, label %if.then.80, label %if.else.133

if.then.80:                                       ; preds = %if.else.78
  %82 = load i32*, i32** %ceil, align 8
  %83 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call81 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %82, i32* %83)
  store i32 0, i32* %var, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc, %if.then.80
  %84 = load i32, i32* %var, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp83 = icmp slt i32 %84, %85
  br i1 %cmp83, label %for.body.84, label %for.end.111

for.body.84:                                      ; preds = %for.cond.82
  %86 = load i32, i32* %var, align 4
  %idxprom85 = sext i32 %86 to i64
  %87 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %87, i64 %idxprom85
  %88 = load i32, i32* %arrayidx86, align 4
  %tobool87 = icmp ne i32 %88, 0
  br i1 %tobool87, label %if.then.88, label %if.end.110

if.then.88:                                       ; preds = %for.body.84
  %89 = load i32*, i32** %ceil, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx90, align 4
  %and91 = and i32 %90, 1023
  store i32 %and91, i32* %i_89, align 4
  %91 = load i32*, i32** %ceil, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %91, i64 0
  %92 = load i32, i32* %arrayidx92, align 4
  %and93 = and i32 %92, -1024
  store i32 %and93, i32* %arrayidx92, align 4
  %93 = load i32, i32* %i_89, align 4
  %94 = load i32*, i32** %ceil, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx94, align 4
  %or95 = or i32 %95, %93
  store i32 %or95, i32* %arrayidx94, align 4
  br label %do.body.96

do.body.96:                                       ; preds = %do.cond.106, %if.then.88
  %96 = load i32, i32* %i_89, align 4
  %idxprom97 = sext i32 %96 to i64
  %97 = load i32*, i32** %ceil, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %97, i64 %idxprom97
  %98 = load i32, i32* %arrayidx98, align 4
  %99 = load i32, i32* %i_89, align 4
  %idxprom99 = sext i32 %99 to i64
  %100 = load i32, i32* %var, align 4
  %idxprom100 = sext i32 %100 to i64
  %101 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx101 = getelementptr inbounds i32*, i32** %101, i64 %idxprom100
  %102 = load i32*, i32** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %102, i64 %idxprom99
  %103 = load i32, i32* %arrayidx102, align 4
  %or103 = or i32 %98, %103
  %104 = load i32, i32* %i_89, align 4
  %idxprom104 = sext i32 %104 to i64
  %105 = load i32*, i32** %ceil, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %105, i64 %idxprom104
  store i32 %or103, i32* %arrayidx105, align 4
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.body.96
  %106 = load i32, i32* %i_89, align 4
  %dec107 = add nsw i32 %106, -1
  store i32 %dec107, i32* %i_89, align 4
  %cmp108 = icmp sgt i32 %dec107, 0
  br i1 %cmp108, label %do.body.96, label %do.end.109

do.end.109:                                       ; preds = %do.cond.106
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.109, %for.body.84
  br label %for.inc

for.inc:                                          ; preds = %if.end.110
  %107 = load i32, i32* %var, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond.82

for.end.111:                                      ; preds = %for.cond.82
  %108 = load i32**, i32*** %T.addr, align 8
  %add.ptr112 = getelementptr inbounds i32*, i32** %108, i64 2
  store i32** %add.ptr112, i32*** %T1, align 8
  store i32** %add.ptr112, i32*** %Tsave, align 8
  br label %for.cond.113

for.cond.113:                                     ; preds = %if.end.123, %for.end.111
  %109 = load i32**, i32*** %T1, align 8
  %incdec.ptr114 = getelementptr inbounds i32*, i32** %109, i32 1
  store i32** %incdec.ptr114, i32*** %T1, align 8
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %p, align 8
  %cmp115 = icmp ne i32* %110, null
  br i1 %cmp115, label %for.body.116, label %for.end.124

for.body.116:                                     ; preds = %for.cond.113
  %111 = load i32*, i32** %ceil, align 8
  %112 = load i32*, i32** %temp, align 8
  %113 = load i32*, i32** %p, align 8
  %114 = load i32**, i32*** %T.addr, align 8
  %arrayidx117 = getelementptr inbounds i32*, i32** %114, i64 0
  %115 = load i32*, i32** %arrayidx117, align 8
  %call118 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %112, i32* %113, i32* %115)
  %call119 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %111, i32* %call118)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %for.body.116
  %116 = load i32*, i32** %p, align 8
  %117 = load i32**, i32*** %Tsave, align 8
  %incdec.ptr122 = getelementptr inbounds i32*, i32** %117, i32 1
  store i32** %incdec.ptr122, i32*** %Tsave, align 8
  store i32* %116, i32** %117, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %for.body.116
  br label %for.cond.113

for.end.124:                                      ; preds = %for.cond.113
  %118 = load i32**, i32*** %Tsave, align 8
  %incdec.ptr125 = getelementptr inbounds i32*, i32** %118, i32 1
  store i32** %incdec.ptr125, i32*** %Tsave, align 8
  store i32* null, i32** %118, align 8
  %119 = load i32**, i32*** %Tsave, align 8
  %120 = bitcast i32** %119 to i32*
  %121 = load i32**, i32*** %T.addr, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %121, i64 1
  store i32* %120, i32** %arrayidx126, align 8
  %122 = load i32, i32* @debug, align 4
  %and127 = and i32 %122, 512
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.end.124
  %123 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %124 = load i32**, i32*** %T.addr, align 8
  %arrayidx130 = getelementptr inbounds i32*, i32** %124, i64 1
  %125 = load i32*, i32** %arrayidx130, align 8
  %126 = bitcast i32* %125 to i32**
  %127 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %126 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0), i32 %123, i64 %sub)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %for.end.124
  br label %start

if.else.133:                                      ; preds = %if.else.78
  %128 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 6), align 4
  %idxprom134 = sext i32 %128 to i64
  %129 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %129, i64 %idxprom134
  %130 = load i32, i32* %arrayidx135, align 4
  %conv = sext i32 %130 to i64
  %131 = load i32**, i32*** %T.addr, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %131, i64 1
  %132 = load i32*, i32** %arrayidx136, align 8
  %133 = bitcast i32* %132 to i32**
  %134 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast137 = ptrtoint i32** %133 to i64
  %sub.ptr.rhs.cast138 = ptrtoint i32** %134 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %sub.ptr.div140 = sdiv exact i64 %sub.ptr.sub139, 8
  %sub141 = sub nsw i64 %sub.ptr.div140, 3
  %div = sdiv i64 %sub141, 2
  %cmp142 = icmp slt i64 %conv, %div
  br i1 %cmp142, label %if.then.144, label %if.end.174

if.then.144:                                      ; preds = %if.else.133
  %135 = load i32**, i32*** %T.addr, align 8
  %136 = load i32, i32* @debug, align 4
  %and145 = and i32 %136, 512
  %call146 = call i32 (i32**, i32***, i32***, i32, ...) bitcast (i32 (...)* @cubelist_partition to i32 (i32**, i32***, i32***, i32, ...)*)(i32** %135, i32*** %A, i32*** %B, i32 %and145)
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.then.144
  store i32 2, i32* %retval
  br label %return

if.else.150:                                      ; preds = %if.then.144
  %137 = load i32**, i32*** %T.addr, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %137, i64 0
  %138 = load i32*, i32** %arrayidx151, align 8
  %tobool152 = icmp ne i32* %138, null
  br i1 %tobool152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.else.150
  %139 = load i32**, i32*** %T.addr, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %139, i64 0
  %140 = load i32*, i32** %arrayidx154, align 8
  %141 = bitcast i32* %140 to i8*
  call void @free(i8* %141)
  %142 = load i32**, i32*** %T.addr, align 8
  %arrayidx155 = getelementptr inbounds i32*, i32** %142, i64 0
  store i32* null, i32** %arrayidx155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.else.150
  %143 = load i32**, i32*** %T.addr, align 8
  %tobool157 = icmp ne i32** %143, null
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  %144 = load i32**, i32*** %T.addr, align 8
  %145 = bitcast i32** %144 to i8*
  call void @free(i8* %145)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  %146 = load i32**, i32*** %A, align 8
  %call160 = call i32 @tautology(i32** %146)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.else.172

if.then.162:                                      ; preds = %if.end.159
  %147 = load i32**, i32*** %B, align 8
  %arrayidx163 = getelementptr inbounds i32*, i32** %147, i64 0
  %148 = load i32*, i32** %arrayidx163, align 8
  %tobool164 = icmp ne i32* %148, null
  br i1 %tobool164, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.then.162
  %149 = load i32**, i32*** %B, align 8
  %arrayidx166 = getelementptr inbounds i32*, i32** %149, i64 0
  %150 = load i32*, i32** %arrayidx166, align 8
  %151 = bitcast i32* %150 to i8*
  call void @free(i8* %151)
  %152 = load i32**, i32*** %B, align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %152, i64 0
  store i32* null, i32** %arrayidx167, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.then.162
  %153 = load i32**, i32*** %B, align 8
  %tobool169 = icmp ne i32** %153, null
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.168
  %154 = load i32**, i32*** %B, align 8
  %155 = bitcast i32** %154 to i8*
  call void @free(i8* %155)
  store i32** null, i32*** %B, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.168
  store i32 1, i32* %retval
  br label %return

if.else.172:                                      ; preds = %if.end.159
  %156 = load i32**, i32*** %B, align 8
  %call173 = call i32 @tautology(i32** %156)
  store i32 %call173, i32* %retval
  br label %return

if.end.174:                                       ; preds = %if.else.133
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.177, %if.else.172, %if.end.171, %if.then.149, %if.end.77, %if.end.66, %if.end.54, %if.end.10
  %157 = load i32, i32* %retval
  ret i32 %157
}

declare i32 @full_row(...) #1

declare i32 @setp_equal(...) #1

declare void @massive_count(...) #1

declare i32* @set_copy(...) #1

declare i32 @setp_implies(...) #1

declare i32* @set_or(...) #1

declare i32 @cubelist_partition(...) #1

; Function Attrs: nounwind uwtable
define internal void @fcube_is_covered(i32** %T, i32* %c, %struct.sm_matrix_struct* %table) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %c.addr = alloca i32*, align 8
  %table.addr = alloca %struct.sm_matrix_struct*, align 8
  store i32** %T, i32*** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store %struct.sm_matrix_struct* %table, %struct.sm_matrix_struct** %table.addr, align 8
  %0 = load i32**, i32*** %T.addr, align 8
  %1 = load i32*, i32** %c.addr, align 8
  %call = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %0, i32* %1)
  %2 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  call void @ftautology(i32** %call, %struct.sm_matrix_struct* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ftautology(i32** %T, %struct.sm_matrix_struct* %table) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %table.addr = alloca %struct.sm_matrix_struct*, align 8
  %cl = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %best = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.sm_matrix_struct* %table, %struct.sm_matrix_struct** %table.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %T.addr, align 8
  %2 = load i32, i32* @ftautology.ftaut_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @ftautology.ftaut_level, align 4
  call void (i32**, i8*, i32, ...) bitcast (void (...)* @debug_print to void (i32**, i8*, i32, ...)*)(i32** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32**, i32*** %T.addr, align 8
  %4 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %call = call i32 @ftaut_special_cases(i32** %3, %struct.sm_matrix_struct* %4)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then.1, label %if.end.37

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp2 = icmp sle i32 %5, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %6, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call4 = call i8* @malloc(i64 %mul)
  %7 = bitcast i8* %call4 to i32*
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %7, i32 %8)
  store i32* %call5, i32** %cl, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp6 = icmp sle i32 %9, 32
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub10 = sub nsw i32 %10, 1
  %shr11 = ashr i32 %sub10, 5
  %add12 = add nsw i32 %shr11, 1
  %add13 = add nsw i32 %add12, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i32 [ 2, %cond.true.8 ], [ %add13, %cond.false.9 ]
  %conv16 = sext i32 %cond15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @malloc(i64 %mul17)
  %11 = bitcast i8* %call18 to i32*
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %11, i32 %12)
  store i32* %call19, i32** %cr, align 8
  %13 = load i32**, i32*** %T.addr, align 8
  %14 = load i32*, i32** %cl, align 8
  %15 = load i32*, i32** %cr, align 8
  %call20 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** %13, i32* %14, i32* %15, i32 512)
  store i32 %call20, i32* %best, align 4
  %16 = load i32**, i32*** %T.addr, align 8
  %17 = load i32*, i32** %cl, align 8
  %18 = load i32, i32* %best, align 4
  %call21 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %16, i32* %17, i32 %18)
  %19 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  call void @ftautology(i32** %call21, %struct.sm_matrix_struct* %19)
  %20 = load i32**, i32*** %T.addr, align 8
  %21 = load i32*, i32** %cr, align 8
  %22 = load i32, i32* %best, align 4
  %call22 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** %20, i32* %21, i32 %22)
  %23 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  call void @ftautology(i32** %call22, %struct.sm_matrix_struct* %23)
  %24 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %24, i64 0
  %25 = load i32*, i32** %arrayidx, align 8
  %tobool23 = icmp ne i32* %25, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %cond.end.14
  %26 = load i32**, i32*** %T.addr, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %26, i64 0
  %27 = load i32*, i32** %arrayidx25, align 8
  %28 = bitcast i32* %27 to i8*
  call void @free(i8* %28)
  %29 = load i32**, i32*** %T.addr, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %29, i64 0
  store i32* null, i32** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %cond.end.14
  %30 = load i32**, i32*** %T.addr, align 8
  %tobool28 = icmp ne i32** %30, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %31 = load i32**, i32*** %T.addr, align 8
  %32 = bitcast i32** %31 to i8*
  call void @free(i8* %32)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %33 = load i32*, i32** %cl, align 8
  %tobool31 = icmp ne i32* %33, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %34 = load i32*, i32** %cl, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35)
  store i32* null, i32** %cl, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %36 = load i32*, i32** %cr, align 8
  %tobool34 = icmp ne i32* %36, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %37 = load i32*, i32** %cr, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38)
  store i32* null, i32** %cr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %39 = load i32, i32* @debug, align 4
  %and38 = and i32 %39, 512
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %40 = load i32, i32* @ftautology.ftaut_level, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* @ftautology.ftaut_level, align 4
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %nrows = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %41, i32 0, i32 6
  %42 = load i32, i32* %nrows, align 4
  %43 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %ncols = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %43, i32 0, i32 9
  %44 = load i32, i32* %ncols, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i32 %dec, i32 %42, i32 %44)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ftaut_special_cases(i32** %T, %struct.sm_matrix_struct* %table) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca i32**, align 8
  %table.addr = alloca %struct.sm_matrix_struct*, align 8
  %T1 = alloca i32**, align 8
  %Tsave = alloca i32**, align 8
  %p = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %ceil = alloca i32*, align 8
  %var = alloca i32, align 4
  %rownum = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store %struct.sm_matrix_struct* %table, %struct.sm_matrix_struct** %table.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %ceil, align 8
  %4 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %4, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %entry
  %5 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %p, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %8, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i32*, i32** %p, align 8
  %10 = load i32**, i32*** %T.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx3, align 8
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %9, i32* %11)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.then
  %12 = load i32**, i32*** %T.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx6, align 8
  %tobool7 = icmp ne i32* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %14 = load i32**, i32*** %T.addr, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx9, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16)
  %17 = load i32**, i32*** %T.addr, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %17, i64 0
  store i32* null, i32** %arrayidx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.5
  %18 = load i32**, i32*** %T.addr, align 8
  %tobool11 = icmp ne i32** %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %19 = load i32**, i32*** %T.addr, align 8
  %20 = bitcast i32** %19 to i8*
  call void @free(i8* %20)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %start

start:                                            ; preds = %if.end.94, %for.end
  %21 = load i32**, i32*** %T.addr, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** %21)
  %22 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 4
  %cmp16 = icmp eq i32 %22, %23
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %start
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %last_row = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 5
  %25 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row, align 8
  %tobool18 = icmp ne %struct.sm_row_struct* %25, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %26 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %last_row19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %26, i32 0, i32 5
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %last_row19, align 8
  %row_num = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 0
  %28 = load i32, i32* %row_num, align 4
  %add = add nsw i32 %28, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %rownum, align 4
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %30 = load i32, i32* %rownum, align 4
  %31 = load i32, i32* @Rp_current, align 4
  %call20 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %29, i32 %30, i32 %31)
  %32 = load i32**, i32*** %T.addr, align 8
  %add.ptr21 = getelementptr inbounds i32*, i32** %32, i64 2
  store i32** %add.ptr21, i32*** %T1, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %if.end.37, %cond.end
  %33 = load i32**, i32*** %T1, align 8
  %incdec.ptr23 = getelementptr inbounds i32*, i32** %33, i32 1
  store i32** %incdec.ptr23, i32*** %T1, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %p, align 8
  %cmp24 = icmp ne i32* %34, null
  br i1 %cmp24, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %35 = load i32*, i32** %p, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %36, 4096
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %for.body.25
  %37 = load i32*, i32** %p, align 8
  %38 = load i32**, i32*** %T.addr, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %38, i64 0
  %39 = load i32*, i32** %arrayidx30, align 8
  %call31 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* %37, i32* %39)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.29
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %table.addr, align 8
  %41 = load i32, i32* %rownum, align 4
  %42 = load i32*, i32** %p, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx34, align 4
  %shr = lshr i32 %43, 16
  %call35 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %40, i32 %41, i32 %shr)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body.25
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  %44 = load i32**, i32*** %T.addr, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %44, i64 0
  %45 = load i32*, i32** %arrayidx39, align 8
  %tobool40 = icmp ne i32* %45, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %for.end.38
  %46 = load i32**, i32*** %T.addr, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx42, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48)
  %49 = load i32**, i32*** %T.addr, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %49, i64 0
  store i32* null, i32** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %for.end.38
  %50 = load i32**, i32*** %T.addr, align 8
  %tobool45 = icmp ne i32** %50, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %51 = load i32**, i32*** %T.addr, align 8
  %52 = bitcast i32** %51 to i8*
  call void @free(i8* %52)
  store i32** null, i32*** %T.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %start
  %53 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %cmp48 = icmp ne i32 %53, 0
  br i1 %cmp48, label %if.then.49, label %if.end.95

if.then.49:                                       ; preds = %if.else
  %54 = load i32*, i32** %ceil, align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %call50 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %54, i32* %55)
  store i32 0, i32* %var, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.49
  %56 = load i32, i32* %var, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp52 = icmp slt i32 %56, %57
  br i1 %cmp52, label %for.body.53, label %for.end.73

for.body.53:                                      ; preds = %for.cond.51
  %58 = load i32, i32* %var, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %59, i64 %idxprom
  %60 = load i32, i32* %arrayidx54, align 4
  %tobool55 = icmp ne i32 %60, 0
  br i1 %tobool55, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %for.body.53
  %61 = load i32*, i32** %ceil, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %62, 1023
  store i32 %and58, i32* %i_, align 4
  %63 = load i32*, i32** %ceil, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx59, align 4
  %and60 = and i32 %64, -1024
  store i32 %and60, i32* %arrayidx59, align 4
  %65 = load i32, i32* %i_, align 4
  %66 = load i32*, i32** %ceil, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %66, i64 0
  %67 = load i32, i32* %arrayidx61, align 4
  %or = or i32 %67, %65
  store i32 %or, i32* %arrayidx61, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.56
  %68 = load i32, i32* %i_, align 4
  %idxprom62 = sext i32 %68 to i64
  %69 = load i32*, i32** %ceil, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %69, i64 %idxprom62
  %70 = load i32, i32* %arrayidx63, align 4
  %71 = load i32, i32* %i_, align 4
  %idxprom64 = sext i32 %71 to i64
  %72 = load i32, i32* %var, align 4
  %idxprom65 = sext i32 %72 to i64
  %73 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %73, i64 %idxprom65
  %74 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %74, i64 %idxprom64
  %75 = load i32, i32* %arrayidx67, align 4
  %or68 = or i32 %70, %75
  %76 = load i32, i32* %i_, align 4
  %idxprom69 = sext i32 %76 to i64
  %77 = load i32*, i32** %ceil, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %77, i64 %idxprom69
  store i32 %or68, i32* %arrayidx70, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %78 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i_, align 4
  %cmp71 = icmp sgt i32 %dec, 0
  br i1 %cmp71, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.72

if.end.72:                                        ; preds = %do.end, %for.body.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %79 = load i32, i32* %var, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond.51

for.end.73:                                       ; preds = %for.cond.51
  %80 = load i32**, i32*** %T.addr, align 8
  %add.ptr74 = getelementptr inbounds i32*, i32** %80, i64 2
  store i32** %add.ptr74, i32*** %T1, align 8
  store i32** %add.ptr74, i32*** %Tsave, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %if.end.85, %for.end.73
  %81 = load i32**, i32*** %T1, align 8
  %incdec.ptr76 = getelementptr inbounds i32*, i32** %81, i32 1
  store i32** %incdec.ptr76, i32*** %T1, align 8
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %p, align 8
  %cmp77 = icmp ne i32* %82, null
  br i1 %cmp77, label %for.body.78, label %for.end.86

for.body.78:                                      ; preds = %for.cond.75
  %83 = load i32*, i32** %ceil, align 8
  %84 = load i32*, i32** %temp, align 8
  %85 = load i32*, i32** %p, align 8
  %86 = load i32**, i32*** %T.addr, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %86, i64 0
  %87 = load i32*, i32** %arrayidx79, align 8
  %call80 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %84, i32* %85, i32* %87)
  %call81 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %83, i32* %call80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %for.body.78
  %88 = load i32*, i32** %p, align 8
  %89 = load i32**, i32*** %Tsave, align 8
  %incdec.ptr84 = getelementptr inbounds i32*, i32** %89, i32 1
  store i32** %incdec.ptr84, i32*** %Tsave, align 8
  store i32* %88, i32** %89, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %for.body.78
  br label %for.cond.75

for.end.86:                                       ; preds = %for.cond.75
  %90 = load i32**, i32*** %Tsave, align 8
  %incdec.ptr87 = getelementptr inbounds i32*, i32** %90, i32 1
  store i32** %incdec.ptr87, i32*** %Tsave, align 8
  store i32* null, i32** %90, align 8
  %91 = load i32**, i32*** %Tsave, align 8
  %92 = bitcast i32** %91 to i32*
  %93 = load i32**, i32*** %T.addr, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* %92, i32** %arrayidx88, align 8
  %94 = load i32, i32* @debug, align 4
  %and89 = and i32 %94, 512
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %for.end.86
  %95 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %96 = load i32**, i32*** %T.addr, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %96, i64 1
  %97 = load i32*, i32** %arrayidx92, align 8
  %98 = bitcast i32* %97 to i32**
  %99 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %98 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %99 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0), i32 %95, i64 %sub)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %for.end.86
  br label %start

if.end.95:                                        ; preds = %if.else
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.96, %if.end.47, %if.end.13
  %100 = load i32, i32* %retval
  ret i32 %100
}

declare %struct.sm_element_struct* @sm_insert(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
