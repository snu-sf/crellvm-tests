; ModuleID = './MultiSource.Benchmarks.MallocBench/8.espresso.sminterf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nounwind uwtable
define i32* @do_sm_minimum_cover(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %M = alloca %struct.sm_matrix_struct*, align 8
  %sparse_cover = alloca %struct.sm_row_struct*, align 8
  %pe = alloca %struct.sm_element_struct*, align 8
  %cover = alloca i32*, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %rownum = alloca i32, align 4
  %val = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %call = call %struct.sm_matrix_struct* (...) @sm_alloc()
  store %struct.sm_matrix_struct* %call, %struct.sm_matrix_struct** %M, align 8
  store i32 0, i32* %rownum, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.end, %for.body
  %11 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %11, 0
  br i1 %cmp2, label %for.body.3, label %for.end.10

for.body.3:                                       ; preds = %for.cond.1
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx4, align 4
  store i32 %14, i32* %val, align 4
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  %shl = shl i32 %dec, 5
  store i32 %shl, i32* %base, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.3
  %16 = load i32, i32* %val, align 4
  %cmp6 = icmp ne i32 %16, 0
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %17 = load i32, i32* %val, align 4
  %and8 = and i32 %17, 1
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %M, align 8
  %19 = load i32, i32* %rownum, align 4
  %20 = load i32, i32* %base, align 4
  %call9 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* %18, i32 %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %base, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %base, align 4
  %22 = load i32, i32* %val, align 4
  %shr = lshr i32 %22, 1
  store i32 %shr, i32* %val, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  %23 = load i32, i32* %rownum, align 4
  %inc11 = add nsw i32 %23, 1
  store i32 %inc11, i32* %rownum, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end.10
  %24 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize13 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %25 = load i32, i32* %wsize13, align 4
  %26 = load i32*, i32** %p, align 8
  %idx.ext14 = sext i32 %25 to i64
  %add.ptr15 = getelementptr inbounds i32, i32* %26, i64 %idx.ext14
  store i32* %add.ptr15, i32** %p, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %27 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %M, align 8
  %call17 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* %27, i32* null, i32 1, i32 0)
  store %struct.sm_row_struct* %call17, %struct.sm_row_struct** %sparse_cover, align 8
  %28 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %M, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* %28)
  %29 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 1
  %30 = load i32, i32* %sf_size, align 4
  %cmp18 = icmp sle i32 %30, 32
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.16
  br label %cond.end

cond.false:                                       ; preds = %for.end.16
  %31 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size19 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 1
  %32 = load i32, i32* %sf_size19, align 4
  %sub = sub nsw i32 %32, 1
  %shr20 = ashr i32 %sub, 5
  %add = add nsw i32 %shr20, 1
  %add21 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add21, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul22 = mul i64 4, %conv
  %call23 = call i8* @malloc(i64 %mul22)
  %33 = bitcast i8* %call23 to i32*
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size24 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 1
  %35 = load i32, i32* %sf_size24, align 4
  %call25 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %33, i32 %35)
  store i32* %call25, i32** %cover, align 8
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %sparse_cover, align 8
  %first_col = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 3
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %first_col, align 8
  store %struct.sm_element_struct* %37, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.37, %cond.end
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %cmp27 = icmp ne %struct.sm_element_struct* %38, null
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %col_num = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %col_num, align 4
  %and30 = and i32 %40, 31
  %shl31 = shl i32 1, %and30
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %col_num32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 1
  %42 = load i32, i32* %col_num32, align 4
  %shr33 = ashr i32 %42, 5
  %add34 = add nsw i32 %shr33, 1
  %idxprom35 = sext i32 %add34 to i64
  %43 = load i32*, i32** %cover, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %43, i64 %idxprom35
  %44 = load i32, i32* %arrayidx36, align 4
  %or = or i32 %44, %shl31
  store i32 %or, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.29
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %pe, align 8
  %next_col = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 4
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %next_col, align 8
  store %struct.sm_element_struct* %46, %struct.sm_element_struct** %pe, align 8
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  %47 = load %struct.sm_row_struct*, %struct.sm_row_struct** %sparse_cover, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* %47)
  %48 = load i32*, i32** %cover, align 8
  ret i32* %48
}

declare %struct.sm_matrix_struct* @sm_alloc(...) #1

declare %struct.sm_element_struct* @sm_insert(...) #1

declare %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare void @sm_free(...) #1

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare void @sm_row_free(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
