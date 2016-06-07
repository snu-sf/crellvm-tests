; ModuleID = 'oaddn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

; Function Attrs: nounwind uwtable
define void @test_sum(i32 %compare, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %compare.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %compare, i32* %compare.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %compare.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %conv, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %2
  %sub1 = sub nsw i32 %mul, 1
  %3 = load i32, i32* %width.addr, align 4
  %sub2 = sub nsw i32 %3, 1
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub1, i32 %sub2, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %5
  %sub4 = sub nsw i32 %mul3, 1
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub4, %struct.quantum_reg_struct* %6)
  %7 = load i32, i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %7
  %sub6 = sub nsw i32 %mul5, 1
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub6, i32 0, %struct.quantum_reg_struct* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %width.addr, align 4
  %mul7 = mul nsw i32 2, %9
  %sub8 = sub nsw i32 %mul7, 1
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub8, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %11
  %sub10 = sub nsw i32 %mul9, 1
  %12 = load i32, i32* %width.addr, align 4
  %sub11 = sub nsw i32 %12, 1
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub10, i32 %sub11, %struct.quantum_reg_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %width.addr, align 4
  %sub12 = sub nsw i32 %14, 2
  store i32 %sub12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %compare.addr, align 4
  %17 = load i32, i32* %i, align 4
  %shl14 = shl i32 1, %17
  %and15 = and i32 %16, %shl14
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %19, %20
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %add18, i32 %21, %struct.quantum_reg_struct* %22)
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %23, %24
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add19, %struct.quantum_reg_struct* %25)
  %26 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %26, 1
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %27, %28
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add20, i32 %add21, i32 0, %struct.quantum_reg_struct* %29)
  br label %if.end.26

if.else.22:                                       ; preds = %for.body
  %30 = load i32, i32* %width.addr, align 4
  %31 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %30, %31
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add23, %struct.quantum_reg_struct* %32)
  %33 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %33, 1
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %34, %35
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add24, i32 %add25, i32 %36, %struct.quantum_reg_struct* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %compare.addr, align 4
  %and27 = and i32 %39, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  %40 = load i32, i32* %width.addr, align 4
  %41 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %40, %struct.quantum_reg_struct* %41)
  %42 = load i32, i32* %width.addr, align 4
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %42, i32 1, i32 0, %struct.quantum_reg_struct* %43)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.end
  %44 = load i32, i32* %width.addr, align 4
  %mul31 = mul nsw i32 2, %44
  %add32 = add nsw i32 %mul31, 1
  %45 = load i32, i32* %width.addr, align 4
  %mul33 = mul nsw i32 2, %45
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add32, i32 0, i32 %mul33, %struct.quantum_reg_struct* %46)
  %47 = load i32, i32* %compare.addr, align 4
  %and34 = and i32 %47, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  %48 = load i32, i32* %width.addr, align 4
  %49 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %48, i32 1, i32 0, %struct.quantum_reg_struct* %49)
  %50 = load i32, i32* %width.addr, align 4
  %51 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %50, %struct.quantum_reg_struct* %51)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.30
  store i32 1, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.57, %if.end.37
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %width.addr, align 4
  %sub39 = sub nsw i32 %53, 2
  %cmp40 = icmp sle i32 %52, %sub39
  br i1 %cmp40, label %for.body.42, label %for.end.58

for.body.42:                                      ; preds = %for.cond.38
  %54 = load i32, i32* %compare.addr, align 4
  %55 = load i32, i32* %i, align 4
  %shl43 = shl i32 1, %55
  %and44 = and i32 %54, %shl43
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %for.body.42
  %56 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %56, 1
  %57 = load i32, i32* %width.addr, align 4
  %58 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %57, %58
  %59 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add47, i32 %add48, i32 0, %struct.quantum_reg_struct* %59)
  %60 = load i32, i32* %width.addr, align 4
  %61 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %60, %61
  %62 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add49, %struct.quantum_reg_struct* %62)
  %63 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %63, 1
  %64 = load i32, i32* %width.addr, align 4
  %65 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %64, %65
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add50, i32 %add51, i32 %66, %struct.quantum_reg_struct* %67)
  br label %if.end.56

if.else.52:                                       ; preds = %for.body.42
  %68 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %68, 1
  %69 = load i32, i32* %width.addr, align 4
  %70 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %69, %70
  %71 = load i32, i32* %i, align 4
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add53, i32 %add54, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32, i32* %width.addr, align 4
  %74 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %73, %74
  %75 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add55, %struct.quantum_reg_struct* %75)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.52, %if.then.46
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.38

for.end.58:                                       ; preds = %for.cond.38
  %77 = load i32, i32* %compare.addr, align 4
  %78 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %78, 1
  %shl60 = shl i32 1, %sub59
  %and61 = and i32 %77, %shl60
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %for.end.58
  %79 = load i32, i32* %width.addr, align 4
  %mul64 = mul nsw i32 2, %79
  %sub65 = sub nsw i32 %mul64, 1
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub65, i32 0, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %width.addr, align 4
  %mul66 = mul nsw i32 2, %81
  %sub67 = sub nsw i32 %mul66, 1
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub67, %struct.quantum_reg_struct* %82)
  %83 = load i32, i32* %width.addr, align 4
  %mul68 = mul nsw i32 2, %83
  %sub69 = sub nsw i32 %mul68, 1
  %84 = load i32, i32* %width.addr, align 4
  %sub70 = sub nsw i32 %84, 1
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub69, i32 %sub70, %struct.quantum_reg_struct* %85)
  br label %if.end.77

if.else.71:                                       ; preds = %for.end.58
  %86 = load i32, i32* %width.addr, align 4
  %mul72 = mul nsw i32 2, %86
  %sub73 = sub nsw i32 %mul72, 1
  %87 = load i32, i32* %width.addr, align 4
  %sub74 = sub nsw i32 %87, 1
  %88 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub73, i32 %sub74, %struct.quantum_reg_struct* %88)
  %89 = load i32, i32* %width.addr, align 4
  %mul75 = mul nsw i32 2, %89
  %sub76 = sub nsw i32 %mul75, 1
  %90 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub76, %struct.quantum_reg_struct* %90)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.71, %if.then.63
  ret void
}

declare void @quantum_cnot(i32, i32, %struct.quantum_reg_struct*) #1

declare void @quantum_sigma_x(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_toffoli(i32, i32, i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @muxfa(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load i32, i32* %c_out.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %b_in.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %L.addr, align 4
  %10 = load i32, i32* %c_in.addr, align 4
  %11 = load i32, i32* %c_out.addr, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %L.addr, align 4
  %14 = load i32, i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %b_in.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load i32, i32* %c_out.addr, align 4
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %17, i32 %18, %struct.quantum_reg_struct* %19)
  %20 = load i32, i32* %b_in.addr, align 4
  %21 = load i32, i32* %c_in.addr, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %23 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %24 = load i32, i32* %L.addr, align 4
  %25 = load i32, i32* %xlt_l.addr, align 4
  %26 = load i32, i32* %b_in.addr, align 4
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %24, i32 %25, i32 %26, %struct.quantum_reg_struct* %27)
  %28 = load i32, i32* %b_in.addr, align 4
  %29 = load i32, i32* %c_in.addr, align 4
  %30 = load i32, i32* %c_out.addr, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %L.addr, align 4
  %33 = load i32, i32* %xlt_l.addr, align 4
  %34 = load i32, i32* %b_in.addr, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %33, i32 %34, %struct.quantum_reg_struct* %35)
  %36 = load i32, i32* %b_in.addr, align 4
  %37 = load i32, i32* %c_in.addr, align 4
  %38 = load i32, i32* %c_out.addr, align 4
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %36, i32 %37, i32 %38, %struct.quantum_reg_struct* %39)
  %40 = load i32, i32* %L.addr, align 4
  %41 = load i32, i32* %xlt_l.addr, align 4
  %42 = load i32, i32* %c_in.addr, align 4
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %40, i32 %41, i32 %42, %struct.quantum_reg_struct* %43)
  %44 = load i32, i32* %b_in.addr, align 4
  %45 = load i32, i32* %c_in.addr, align 4
  %46 = load i32, i32* %c_out.addr, align 4
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %44, i32 %45, i32 %46, %struct.quantum_reg_struct* %47)
  %48 = load i32, i32* %b_in.addr, align 4
  %49 = load i32, i32* %c_in.addr, align 4
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %51 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %52 = load i32, i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32, i32* %L.addr, align 4
  %55 = load i32, i32* %xlt_l.addr, align 4
  %56 = load i32, i32* %b_in.addr, align 4
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %54, i32 %55, i32 %56, %struct.quantum_reg_struct* %57)
  %58 = load i32, i32* %b_in.addr, align 4
  %59 = load i32, i32* %c_in.addr, align 4
  %60 = load i32, i32* %c_out.addr, align 4
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %58, i32 %59, i32 %60, %struct.quantum_reg_struct* %61)
  %62 = load i32, i32* %L.addr, align 4
  %63 = load i32, i32* %xlt_l.addr, align 4
  %64 = load i32, i32* %b_in.addr, align 4
  %65 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %62, i32 %63, i32 %64, %struct.quantum_reg_struct* %65)
  %66 = load i32, i32* %b_in.addr, align 4
  %67 = load i32, i32* %c_in.addr, align 4
  %68 = load i32, i32* %c_out.addr, align 4
  %69 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %66, i32 %67, i32 %68, %struct.quantum_reg_struct* %69)
  %70 = load i32, i32* %L.addr, align 4
  %71 = load i32, i32* %xlt_l.addr, align 4
  %72 = load i32, i32* %c_in.addr, align 4
  %73 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %70, i32 %71, i32 %72, %struct.quantum_reg_struct* %73)
  %74 = load i32, i32* %b_in.addr, align 4
  %75 = load i32, i32* %c_in.addr, align 4
  %76 = load i32, i32* %c_out.addr, align 4
  %77 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %74, i32 %75, i32 %76, %struct.quantum_reg_struct* %77)
  %78 = load i32, i32* %b_in.addr, align 4
  %79 = load i32, i32* %c_in.addr, align 4
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxfa_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %b_in.addr, align 4
  %5 = load i32, i32* %c_in.addr, align 4
  %6 = load i32, i32* %c_out.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %b_in.addr, align 4
  %10 = load i32, i32* %c_in.addr, align 4
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %9, i32 %10, %struct.quantum_reg_struct* %11)
  %12 = load i32, i32* %b_in.addr, align 4
  %13 = load i32, i32* %c_in.addr, align 4
  %14 = load i32, i32* %c_out.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %L.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  %19 = load i32, i32* %L.addr, align 4
  %20 = load i32, i32* %c_in.addr, align 4
  %21 = load i32, i32* %c_out.addr, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %19, i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %23 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %24 = load i32, i32* %b_in.addr, align 4
  %25 = load i32, i32* %c_in.addr, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %24, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %b_in.addr, align 4
  %28 = load i32, i32* %c_in.addr, align 4
  %29 = load i32, i32* %c_out.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  %31 = load i32, i32* %L.addr, align 4
  %32 = load i32, i32* %xlt_l.addr, align 4
  %33 = load i32, i32* %c_in.addr, align 4
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %31, i32 %32, i32 %33, %struct.quantum_reg_struct* %34)
  %35 = load i32, i32* %b_in.addr, align 4
  %36 = load i32, i32* %c_in.addr, align 4
  %37 = load i32, i32* %c_out.addr, align 4
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %35, i32 %36, i32 %37, %struct.quantum_reg_struct* %38)
  %39 = load i32, i32* %L.addr, align 4
  %40 = load i32, i32* %xlt_l.addr, align 4
  %41 = load i32, i32* %b_in.addr, align 4
  %42 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %39, i32 %40, i32 %41, %struct.quantum_reg_struct* %42)
  %43 = load i32, i32* %b_in.addr, align 4
  %44 = load i32, i32* %c_in.addr, align 4
  %45 = load i32, i32* %c_out.addr, align 4
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %43, i32 %44, i32 %45, %struct.quantum_reg_struct* %46)
  %47 = load i32, i32* %L.addr, align 4
  %48 = load i32, i32* %xlt_l.addr, align 4
  %49 = load i32, i32* %b_in.addr, align 4
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %47, i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %51 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %52 = load i32, i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32, i32* %b_in.addr, align 4
  %55 = load i32, i32* %c_in.addr, align 4
  %56 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %54, i32 %55, %struct.quantum_reg_struct* %56)
  %57 = load i32, i32* %b_in.addr, align 4
  %58 = load i32, i32* %c_in.addr, align 4
  %59 = load i32, i32* %c_out.addr, align 4
  %60 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %57, i32 %58, i32 %59, %struct.quantum_reg_struct* %60)
  %61 = load i32, i32* %L.addr, align 4
  %62 = load i32, i32* %xlt_l.addr, align 4
  %63 = load i32, i32* %c_in.addr, align 4
  %64 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %61, i32 %62, i32 %63, %struct.quantum_reg_struct* %64)
  %65 = load i32, i32* %b_in.addr, align 4
  %66 = load i32, i32* %c_in.addr, align 4
  %67 = load i32, i32* %c_out.addr, align 4
  %68 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %65, i32 %66, i32 %67, %struct.quantum_reg_struct* %68)
  %69 = load i32, i32* %L.addr, align 4
  %70 = load i32, i32* %xlt_l.addr, align 4
  %71 = load i32, i32* %b_in.addr, align 4
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %69, i32 %70, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32, i32* %b_in.addr, align 4
  %74 = load i32, i32* %c_in.addr, align 4
  %75 = load i32, i32* %c_out.addr, align 4
  %76 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %73, i32 %74, i32 %75, %struct.quantum_reg_struct* %76)
  %77 = load i32, i32* %L.addr, align 4
  %78 = load i32, i32* %xlt_l.addr, align 4
  %79 = load i32, i32* %b_in.addr, align 4
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %77, i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxha(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %L.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %b_in.addr, align 4
  %9 = load i32, i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %12 = load i32, i32* %L.addr, align 4
  %13 = load i32, i32* %xlt_l.addr, align 4
  %14 = load i32, i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %b_in.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %19 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %20 = load i32, i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32, i32* %L.addr, align 4
  %23 = load i32, i32* %xlt_l.addr, align 4
  %24 = load i32, i32* %c_in.addr, align 4
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %22, i32 %23, i32 %24, %struct.quantum_reg_struct* %25)
  %26 = load i32, i32* %b_in.addr, align 4
  %27 = load i32, i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32, i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxha_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %b_in.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %L.addr, align 4
  %9 = load i32, i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %12 = load i32, i32* %b_in.addr, align 4
  %13 = load i32, i32* %c_in.addr, align 4
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %12, i32 %13, %struct.quantum_reg_struct* %14)
  %15 = load i32, i32* %L.addr, align 4
  %16 = load i32, i32* %xlt_l.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %15, i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %19 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %20 = load i32, i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32, i32* %b_in.addr, align 4
  %23 = load i32, i32* %c_in.addr, align 4
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %22, i32 %23, %struct.quantum_reg_struct* %24)
  %25 = load i32, i32* %L.addr, align 4
  %26 = load i32, i32* %xlt_l.addr, align 4
  %27 = load i32, i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %25, i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32, i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @madd(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %shl = shl i32 1, %3
  %4 = load i32, i32* %a.addr, align 4
  %and = and i32 %shl, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %i, align 4
  %shl1 = shl i32 1, %5
  %6 = load i32, i32* %a_inv.addr, align 4
  %and2 = and i32 %shl1, %6
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %7, 1
  store i32 %add5, i32* %j, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %9, %10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %12, 1
  %13 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %13
  %14 = load i32, i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %14
  %add11 = add nsw i32 %mul10, 1
  %15 = load i32, i32* %total, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa(i32 %8, i32 %add7, i32 %11, i32 %add8, i32 %mul9, i32 %add11, i32 %15, %struct.quantum_reg_struct* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  %18 = load i32, i32* %width.addr, align 4
  %sub12 = sub nsw i32 %18, 1
  %shl13 = shl i32 1, %sub12
  %19 = load i32, i32* %a.addr, align 4
  %and14 = and i32 %shl13, %19
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  store i32 2, i32* %j, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.end
  %20 = load i32, i32* %width.addr, align 4
  %sub18 = sub nsw i32 %20, 1
  %shl19 = shl i32 1, %sub18
  %21 = load i32, i32* %a_inv.addr, align 4
  %and20 = and i32 %shl19, %21
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.17
  %22 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %22, 1
  store i32 %add23, i32* %j, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.17
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %width.addr, align 4
  %mul25 = mul nsw i32 2, %24
  %sub26 = sub nsw i32 %mul25, 1
  %25 = load i32, i32* %width.addr, align 4
  %sub27 = sub nsw i32 %25, 1
  %26 = load i32, i32* %width.addr, align 4
  %mul28 = mul nsw i32 2, %26
  %27 = load i32, i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %27
  %add30 = add nsw i32 %mul29, 1
  %28 = load i32, i32* %total, align 4
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha(i32 %23, i32 %sub26, i32 %sub27, i32 %mul28, i32 %add30, i32 %28, %struct.quantum_reg_struct* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define void @madd_inv(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %j, align 4
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shl = shl i32 1, %sub
  %2 = load i32, i32* %a.addr, align 4
  %and = and i32 %shl, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %shl2 = shl i32 1, %sub1
  %4 = load i32, i32* %a_inv.addr, align 4
  %and3 = and i32 %shl2, %4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %5, 1
  store i32 %add6, i32* %j, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %width.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  %8 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %8
  %sub10 = sub nsw i32 %mul9, 1
  %9 = load i32, i32* %width.addr, align 4
  %mul11 = mul nsw i32 2, %9
  %10 = load i32, i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %10
  %add13 = add nsw i32 %mul12, 1
  %11 = load i32, i32* %total, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha_inv(i32 %6, i32 %sub8, i32 %sub10, i32 %mul11, i32 %add13, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %width.addr, align 4
  %sub14 = sub nsw i32 %13, 2
  store i32 %sub14, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %shl15 = shl i32 1, %15
  %16 = load i32, i32* %a.addr, align 4
  %and16 = and i32 %shl15, %16
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end.19

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %17 = load i32, i32* %i, align 4
  %shl20 = shl i32 1, %17
  %18 = load i32, i32* %a_inv.addr, align 4
  %and21 = and i32 %shl20, %18
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %19 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %19, 1
  store i32 %add24, i32* %j, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %22, %23
  %24 = load i32, i32* %width.addr, align 4
  %add27 = add nsw i32 %24, 1
  %25 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %add27, %25
  %26 = load i32, i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %26
  %27 = load i32, i32* %width.addr, align 4
  %mul30 = mul nsw i32 2, %27
  %add31 = add nsw i32 %mul30, 1
  %28 = load i32, i32* %total, align 4
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa_inv(i32 %20, i32 %21, i32 %add26, i32 %add28, i32 %mul29, i32 %add31, i32 %28, %struct.quantum_reg_struct* %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %sub, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %4
  %5 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %shl, %5
  %6 = load i32, i32* %N.addr, align 4
  %sub1 = sub nsw i32 %add, %6
  %7 = load i32, i32* %a.addr, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd(i32 %sub1, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %1
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %mul1, %struct.quantum_reg_struct* %2)
  %3 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %3
  %4 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %shl, %4
  %5 = load i32, i32* %N.addr, align 4
  %6 = load i32, i32* %a.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load i32, i32* %width.addr, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd_inv(i32 %sub, i32 %sub2, i32 %7, %struct.quantum_reg_struct* %8)
  %9 = load i32, i32* %width.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %a.addr, align 4
  %12 = load i32, i32* %width.addr, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  ret void
}

declare void @quantum_swaptheleads(i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @add_mod_n(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn(i32 %0, i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %N.addr, align 4
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn_inv(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
