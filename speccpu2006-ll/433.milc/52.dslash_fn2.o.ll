; ModuleID = 'dslash_fn2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@temp_not_allocated = internal global i32 1, align 4
@temp = internal global [9 x %struct.su3_vector*] zeroinitializer, align 16
@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4
@gen_pt = external global [16 x i8**], align 16
@even_sites_on_node = external global i32, align 4
@sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@t_fatlink = external global %struct.su3_matrix*, align 8
@t_longlink = external global %struct.su3_matrix*, align 8

; Function Attrs: nounwind uwtable
define void @cleanup_gathers(%struct.msg_tag** %tags1, %struct.msg_tag** %tags2) #0 {
entry:
  %tags1.addr = alloca %struct.msg_tag**, align 8
  %tags2.addr = alloca %struct.msg_tag**, align 8
  %i = alloca i32, align 4
  store %struct.msg_tag** %tags1, %struct.msg_tag*** %tags1.addr, align 8
  store %struct.msg_tag** %tags2, %struct.msg_tag*** %tags2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.msg_tag**, %struct.msg_tag*** %tags1.addr, align 8
  %arrayidx = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %2, i64 %idxprom
  %3 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx, align 8
  call void @cleanup_gather(%struct.msg_tag* %3)
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 7, %4
  %idxprom1 = sext i32 %sub to i64
  %5 = load %struct.msg_tag**, %struct.msg_tag*** %tags1.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %5, i64 %idxprom1
  %6 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx2, align 8
  call void @cleanup_gather(%struct.msg_tag* %6)
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.msg_tag**, %struct.msg_tag*** %tags2.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %8, i64 %idxprom3
  %9 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx4, align 8
  call void @cleanup_gather(%struct.msg_tag* %9)
  %10 = load i32, i32* %i, align 4
  %sub5 = sub nsw i32 7, %10
  %idxprom6 = sext i32 %sub5 to i64
  %11 = load %struct.msg_tag**, %struct.msg_tag*** %tags2.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %11, i64 %idxprom6
  %12 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx7, align 8
  call void @cleanup_gather(%struct.msg_tag* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 8, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.21, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %14, 11
  br i1 %cmp9, label %for.body.10, label %for.end.23

for.body.10:                                      ; preds = %for.cond.8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.msg_tag**, %struct.msg_tag*** %tags1.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %16, i64 %idxprom11
  %17 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx12, align 8
  call void @cleanup_gather(%struct.msg_tag* %17)
  %18 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 23, %18
  %idxprom14 = sext i32 %sub13 to i64
  %19 = load %struct.msg_tag**, %struct.msg_tag*** %tags1.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %19, i64 %idxprom14
  %20 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx15, align 8
  call void @cleanup_gather(%struct.msg_tag* %20)
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.msg_tag**, %struct.msg_tag*** %tags2.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %22, i64 %idxprom16
  %23 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx17, align 8
  call void @cleanup_gather(%struct.msg_tag* %23)
  %24 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 23, %24
  %idxprom19 = sext i32 %sub18 to i64
  %25 = load %struct.msg_tag**, %struct.msg_tag*** %tags2.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %25, i64 %idxprom19
  %26 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx20, align 8
  call void @cleanup_gather(%struct.msg_tag* %26)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.10
  %27 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  ret void
}

declare void @cleanup_gather(%struct.msg_tag*) #1

; Function Attrs: nounwind uwtable
define void @cleanup_dslash_temps() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @temp_not_allocated, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom
  %3 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx, align 8
  %4 = bitcast %struct.su3_vector* %3 to i8*
  call void @free(i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 1, i32* @temp_not_allocated, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @dslash_fn(i32 %src, i32 %dest, i32 %parity) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %otherparity = alloca i32, align 4
  %fat4 = alloca %struct.su3_matrix*, align 8
  %long4 = alloca %struct.su3_matrix*, align 8
  %tag = alloca [16 x %struct.msg_tag*], align 16
  %loopend = alloca i32, align 4
  %loopend112 = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* @valid_longlinks, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (...) @load_longlinks()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @valid_fatlinks, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (...) @load_fatlinks()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %parity.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.3
  store i32 1, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.3
  store i32 2, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.3
  store i32 3, i32* %otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.3, %sw.bb.5, %sw.bb.4, %sw.bb
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %3 = load i32, i32* %dir, align 4
  %cmp = icmp sle i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %src.addr, align 4
  %5 = load i32, i32* %dir, align 4
  %6 = load i32, i32* %parity.addr, align 4
  %7 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom
  %8 = load i8**, i8*** %arrayidx, align 8
  %call = call %struct.msg_tag* @start_gather(i32 %4, i32 48, i32 %5, i32 %6, i8** %8)
  %9 = load i32, i32* %dir, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom6
  store %struct.msg_tag* %call, %struct.msg_tag** %arrayidx7, align 8
  %10 = load i32, i32* %src.addr, align 4
  %11 = load i32, i32* %dir, align 4
  %add = add nsw i32 %11, 8
  %12 = load i32, i32* %parity.addr, align 4
  %13 = load i32, i32* %dir, align 4
  %add8 = add nsw i32 %13, 8
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom9
  %14 = load i8**, i8*** %arrayidx10, align 8
  %call11 = call %struct.msg_tag* @start_gather(i32 %10, i32 48, i32 %add, i32 %12, i8** %14)
  %15 = load i32, i32* %dir, align 4
  %add12 = add nsw i32 %15, 8
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom13
  store %struct.msg_tag* %call11, %struct.msg_tag** %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %otherparity, align 4
  %cmp15 = icmp eq i32 %17, 2
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %18 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %19 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %20 = load i32, i32* %otherparity, align 4
  %cmp16 = icmp eq i32 %20, 1
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %21 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ %21, %cond.true.17 ], [ 0, %cond.false.18 ]
  store i32 %cond20, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx22 = getelementptr inbounds %struct.site, %struct.site* %23, i64 %idxprom21
  store %struct.site* %arrayidx22, %struct.site** %s, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.34, %cond.end.19
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %loopend, align 4
  %cmp24 = icmp slt i32 %24, %25
  br i1 %cmp24, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.23
  %26 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %26
  %idxprom26 = sext i32 %mul to i64
  %27 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx27 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %27, i64 %idxprom26
  store %struct.su3_matrix* %arrayidx27, %struct.su3_matrix** %fat4, align 8
  %28 = load i32, i32* %i, align 4
  %mul28 = mul nsw i32 4, %28
  %idxprom29 = sext i32 %mul28 to i64
  %29 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx30 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %29, i64 %idxprom29
  store %struct.su3_matrix* %arrayidx30, %struct.su3_matrix** %long4, align 8
  %30 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %31 = load %struct.site*, %struct.site** %s, align 8
  %32 = bitcast %struct.site* %31 to i8*
  %33 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  %34 = bitcast i8* %add.ptr to %struct.su3_vector*
  %35 = load %struct.site*, %struct.site** %s, align 8
  %tempvec = getelementptr inbounds %struct.site, %struct.site* %35, i32 0, i32 17
  %arraydecay = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %tempvec, i32 0, i32 0
  call void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %30, %struct.su3_vector* %34, %struct.su3_vector* %arraydecay)
  %36 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %37 = load %struct.site*, %struct.site** %s, align 8
  %38 = bitcast %struct.site* %37 to i8*
  %39 = load i32, i32* %src.addr, align 4
  %idx.ext31 = sext i32 %39 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %38, i64 %idx.ext31
  %40 = bitcast i8* %add.ptr32 to %struct.su3_vector*
  %41 = load %struct.site*, %struct.site** %s, align 8
  %templongvec = getelementptr inbounds %struct.site, %struct.site* %41, i32 0, i32 18
  %arraydecay33 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %templongvec, i32 0, i32 0
  call void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %36, %struct.su3_vector* %40, %struct.su3_vector* %arraydecay33)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.25
  %42 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %42, 1
  store i32 %inc35, i32* %i, align 4
  %43 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %43, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.23

for.end.36:                                       ; preds = %for.cond.23
  store i32 0, i32* %dir, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.52, %for.end.36
  %44 = load i32, i32* %dir, align 4
  %cmp38 = icmp sle i32 %44, 3
  br i1 %cmp38, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %for.cond.37
  %45 = load i32, i32* %dir, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx41 = getelementptr inbounds %struct.site, %struct.site* %46, i64 0
  %tempvec42 = getelementptr inbounds %struct.site, %struct.site* %arrayidx41, i32 0, i32 17
  %arrayidx43 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %tempvec42, i32 0, i64 %idxprom40
  %47 = bitcast %struct.su3_vector* %arrayidx43 to i8*
  %48 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx44 = getelementptr inbounds %struct.site, %struct.site* %48, i64 0
  %49 = bitcast %struct.site* %arrayidx44 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %50 = load i32, i32* %dir, align 4
  %sub = sub nsw i32 7, %50
  %51 = load i32, i32* %parity.addr, align 4
  %52 = load i32, i32* %dir, align 4
  %sub45 = sub nsw i32 7, %52
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom46
  %53 = load i8**, i8*** %arrayidx47, align 8
  %call48 = call %struct.msg_tag* @start_gather(i32 %conv, i32 48, i32 %sub, i32 %51, i8** %53)
  %54 = load i32, i32* %dir, align 4
  %sub49 = sub nsw i32 7, %54
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom50
  store %struct.msg_tag* %call48, %struct.msg_tag** %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.39
  %55 = load i32, i32* %dir, align 4
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, i32* %dir, align 4
  br label %for.cond.37

for.end.54:                                       ; preds = %for.cond.37
  store i32 8, i32* %dir, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.77, %for.end.54
  %56 = load i32, i32* %dir, align 4
  %cmp56 = icmp sle i32 %56, 11
  br i1 %cmp56, label %for.body.58, label %for.end.79

for.body.58:                                      ; preds = %for.cond.55
  %57 = load i32, i32* %dir, align 4
  %sub59 = sub nsw i32 %57, 8
  %idxprom60 = sext i32 %sub59 to i64
  %58 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx61 = getelementptr inbounds %struct.site, %struct.site* %58, i64 0
  %templongvec62 = getelementptr inbounds %struct.site, %struct.site* %arrayidx61, i32 0, i32 18
  %arrayidx63 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %templongvec62, i32 0, i64 %idxprom60
  %59 = bitcast %struct.su3_vector* %arrayidx63 to i8*
  %60 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx64 = getelementptr inbounds %struct.site, %struct.site* %60, i64 0
  %61 = bitcast %struct.site* %arrayidx64 to i8*
  %sub.ptr.lhs.cast65 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %61 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  %62 = load i32, i32* %dir, align 4
  %sub69 = sub nsw i32 23, %62
  %63 = load i32, i32* %parity.addr, align 4
  %64 = load i32, i32* %dir, align 4
  %sub70 = sub nsw i32 23, %64
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom71
  %65 = load i8**, i8*** %arrayidx72, align 8
  %call73 = call %struct.msg_tag* @start_gather(i32 %conv68, i32 48, i32 %sub69, i32 %63, i8** %65)
  %66 = load i32, i32* %dir, align 4
  %sub74 = sub nsw i32 23, %66
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom75
  store %struct.msg_tag* %call73, %struct.msg_tag** %arrayidx76, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.58
  %67 = load i32, i32* %dir, align 4
  %inc78 = add nsw i32 %67, 1
  store i32 %inc78, i32* %dir, align 4
  br label %for.cond.55

for.end.79:                                       ; preds = %for.cond.55
  store i32 0, i32* %dir, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.89, %for.end.79
  %68 = load i32, i32* %dir, align 4
  %cmp81 = icmp sle i32 %68, 3
  br i1 %cmp81, label %for.body.83, label %for.end.91

for.body.83:                                      ; preds = %for.cond.80
  %69 = load i32, i32* %dir, align 4
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom84
  %70 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx85, align 8
  call void @wait_gather(%struct.msg_tag* %70)
  %71 = load i32, i32* %dir, align 4
  %add86 = add nsw i32 %71, 8
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom87
  %72 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx88, align 8
  call void @wait_gather(%struct.msg_tag* %72)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.83
  %73 = load i32, i32* %dir, align 4
  %inc90 = add nsw i32 %73, 1
  store i32 %inc90, i32* %dir, align 4
  br label %for.cond.80

for.end.91:                                       ; preds = %for.cond.80
  store i32 0, i32* %dir, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.99, %for.end.91
  %74 = load i32, i32* %dir, align 4
  %cmp93 = icmp sle i32 %74, 3
  br i1 %cmp93, label %for.body.95, label %for.end.101

for.body.95:                                      ; preds = %for.cond.92
  %75 = load i32, i32* %dir, align 4
  %sub96 = sub nsw i32 7, %75
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom97
  %76 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx98, align 8
  call void @wait_gather(%struct.msg_tag* %76)
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.95
  %77 = load i32, i32* %dir, align 4
  %inc100 = add nsw i32 %77, 1
  store i32 %inc100, i32* %dir, align 4
  br label %for.cond.92

for.end.101:                                      ; preds = %for.cond.92
  store i32 8, i32* %dir, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.109, %for.end.101
  %78 = load i32, i32* %dir, align 4
  %cmp103 = icmp sle i32 %78, 11
  br i1 %cmp103, label %for.body.105, label %for.end.111

for.body.105:                                     ; preds = %for.cond.102
  %79 = load i32, i32* %dir, align 4
  %sub106 = sub nsw i32 23, %79
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom107
  %80 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx108, align 8
  call void @wait_gather(%struct.msg_tag* %80)
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.105
  %81 = load i32, i32* %dir, align 4
  %inc110 = add nsw i32 %81, 1
  store i32 %inc110, i32* %dir, align 4
  br label %for.cond.102

for.end.111:                                      ; preds = %for.cond.102
  %82 = load i32, i32* %parity.addr, align 4
  %cmp113 = icmp eq i32 %82, 2
  br i1 %cmp113, label %cond.true.115, label %cond.false.116

cond.true.115:                                    ; preds = %for.end.111
  %83 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.117

cond.false.116:                                   ; preds = %for.end.111
  %84 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.115
  %cond118 = phi i32 [ %83, %cond.true.115 ], [ %84, %cond.false.116 ]
  store i32 %cond118, i32* %loopend112, align 4
  %85 = load i32, i32* %parity.addr, align 4
  %cmp119 = icmp eq i32 %85, 1
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.117
  %86 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.end.117
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi i32 [ %86, %cond.true.121 ], [ 0, %cond.false.122 ]
  store i32 %cond124, i32* %i, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %87 to i64
  %88 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx126 = getelementptr inbounds %struct.site, %struct.site* %88, i64 %idxprom125
  store %struct.site* %arrayidx126, %struct.site** %s, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.179, %cond.end.123
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %loopend112, align 4
  %cmp128 = icmp slt i32 %89, %90
  br i1 %cmp128, label %for.body.130, label %for.end.182

for.body.130:                                     ; preds = %for.cond.127
  %91 = load i32, i32* %i, align 4
  %mul131 = mul nsw i32 4, %91
  %idxprom132 = sext i32 %mul131 to i64
  %92 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx133 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %92, i64 %idxprom132
  store %struct.su3_matrix* %arrayidx133, %struct.su3_matrix** %fat4, align 8
  %93 = load i32, i32* %i, align 4
  %mul134 = mul nsw i32 4, %93
  %idxprom135 = sext i32 %mul134 to i64
  %94 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx136 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %94, i64 %idxprom135
  store %struct.su3_matrix* %arrayidx136, %struct.su3_matrix** %long4, align 8
  %95 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %96 to i64
  %97 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %97, i64 %idxprom137
  %98 = load i8*, i8** %arrayidx138, align 8
  %99 = bitcast i8* %98 to %struct.su3_vector*
  %100 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %100 to i64
  %101 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx140 = getelementptr inbounds i8*, i8** %101, i64 %idxprom139
  %102 = load i8*, i8** %arrayidx140, align 8
  %103 = bitcast i8* %102 to %struct.su3_vector*
  %104 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %104 to i64
  %105 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 2), align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %105, i64 %idxprom141
  %106 = load i8*, i8** %arrayidx142, align 8
  %107 = bitcast i8* %106 to %struct.su3_vector*
  %108 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %108 to i64
  %109 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 3), align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %109, i64 %idxprom143
  %110 = load i8*, i8** %arrayidx144, align 8
  %111 = bitcast i8* %110 to %struct.su3_vector*
  %112 = load %struct.site*, %struct.site** %s, align 8
  %113 = bitcast %struct.site* %112 to i8*
  %114 = load i32, i32* %dest.addr, align 4
  %idx.ext145 = sext i32 %114 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %113, i64 %idx.ext145
  %115 = bitcast i8* %add.ptr146 to %struct.su3_vector*
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %95, %struct.su3_vector* %99, %struct.su3_vector* %103, %struct.su3_vector* %107, %struct.su3_vector* %111, %struct.su3_vector* %115)
  %116 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %117 to i64
  %118 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 8), align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %118, i64 %idxprom147
  %119 = load i8*, i8** %arrayidx148, align 8
  %120 = bitcast i8* %119 to %struct.su3_vector*
  %121 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %121 to i64
  %122 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 9), align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %122, i64 %idxprom149
  %123 = load i8*, i8** %arrayidx150, align 8
  %124 = bitcast i8* %123 to %struct.su3_vector*
  %125 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %125 to i64
  %126 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 10), align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %126, i64 %idxprom151
  %127 = load i8*, i8** %arrayidx152, align 8
  %128 = bitcast i8* %127 to %struct.su3_vector*
  %129 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %129 to i64
  %130 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 11), align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %130, i64 %idxprom153
  %131 = load i8*, i8** %arrayidx154, align 8
  %132 = bitcast i8* %131 to %struct.su3_vector*
  %133 = load %struct.site*, %struct.site** %s, align 8
  %templongv1 = getelementptr inbounds %struct.site, %struct.site* %133, i32 0, i32 19
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %116, %struct.su3_vector* %120, %struct.su3_vector* %124, %struct.su3_vector* %128, %struct.su3_vector* %132, %struct.su3_vector* %templongv1)
  %134 = load %struct.site*, %struct.site** %s, align 8
  %135 = bitcast %struct.site* %134 to i8*
  %136 = load i32, i32* %dest.addr, align 4
  %idx.ext155 = sext i32 %136 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %135, i64 %idx.ext155
  %137 = bitcast i8* %add.ptr156 to %struct.su3_vector*
  %138 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %138 to i64
  %139 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 7), align 8
  %arrayidx158 = getelementptr inbounds i8*, i8** %139, i64 %idxprom157
  %140 = load i8*, i8** %arrayidx158, align 8
  %141 = bitcast i8* %140 to %struct.su3_vector*
  %142 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %142 to i64
  %143 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 6), align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %143, i64 %idxprom159
  %144 = load i8*, i8** %arrayidx160, align 8
  %145 = bitcast i8* %144 to %struct.su3_vector*
  %146 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %146 to i64
  %147 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 5), align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %147, i64 %idxprom161
  %148 = load i8*, i8** %arrayidx162, align 8
  %149 = bitcast i8* %148 to %struct.su3_vector*
  %150 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %150 to i64
  %151 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 4), align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %151, i64 %idxprom163
  %152 = load i8*, i8** %arrayidx164, align 8
  %153 = bitcast i8* %152 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %137, %struct.su3_vector* %141, %struct.su3_vector* %145, %struct.su3_vector* %149, %struct.su3_vector* %153)
  %154 = load %struct.site*, %struct.site** %s, align 8
  %templongv1165 = getelementptr inbounds %struct.site, %struct.site* %154, i32 0, i32 19
  %155 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %155 to i64
  %156 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 15), align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %156, i64 %idxprom166
  %157 = load i8*, i8** %arrayidx167, align 8
  %158 = bitcast i8* %157 to %struct.su3_vector*
  %159 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %159 to i64
  %160 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 14), align 8
  %arrayidx169 = getelementptr inbounds i8*, i8** %160, i64 %idxprom168
  %161 = load i8*, i8** %arrayidx169, align 8
  %162 = bitcast i8* %161 to %struct.su3_vector*
  %163 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %163 to i64
  %164 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 13), align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %164, i64 %idxprom170
  %165 = load i8*, i8** %arrayidx171, align 8
  %166 = bitcast i8* %165 to %struct.su3_vector*
  %167 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %167 to i64
  %168 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 12), align 8
  %arrayidx173 = getelementptr inbounds i8*, i8** %168, i64 %idxprom172
  %169 = load i8*, i8** %arrayidx173, align 8
  %170 = bitcast i8* %169 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %templongv1165, %struct.su3_vector* %158, %struct.su3_vector* %162, %struct.su3_vector* %166, %struct.su3_vector* %170)
  %171 = load %struct.site*, %struct.site** %s, align 8
  %172 = bitcast %struct.site* %171 to i8*
  %173 = load i32, i32* %dest.addr, align 4
  %idx.ext174 = sext i32 %173 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %172, i64 %idx.ext174
  %174 = bitcast i8* %add.ptr175 to %struct.su3_vector*
  %175 = load %struct.site*, %struct.site** %s, align 8
  %templongv1176 = getelementptr inbounds %struct.site, %struct.site* %175, i32 0, i32 19
  %176 = load %struct.site*, %struct.site** %s, align 8
  %177 = bitcast %struct.site* %176 to i8*
  %178 = load i32, i32* %dest.addr, align 4
  %idx.ext177 = sext i32 %178 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %177, i64 %idx.ext177
  %179 = bitcast i8* %add.ptr178 to %struct.su3_vector*
  call void @add_su3_vector(%struct.su3_vector* %174, %struct.su3_vector* %templongv1176, %struct.su3_vector* %179)
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.130
  %180 = load i32, i32* %i, align 4
  %inc180 = add nsw i32 %180, 1
  store i32 %inc180, i32* %i, align 4
  %181 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr181 = getelementptr inbounds %struct.site, %struct.site* %181, i32 1
  store %struct.site* %incdec.ptr181, %struct.site** %s, align 8
  br label %for.cond.127

for.end.182:                                      ; preds = %for.cond.127
  store i32 0, i32* %dir, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.192, %for.end.182
  %182 = load i32, i32* %dir, align 4
  %cmp184 = icmp sle i32 %182, 3
  br i1 %cmp184, label %for.body.186, label %for.end.194

for.body.186:                                     ; preds = %for.cond.183
  %183 = load i32, i32* %dir, align 4
  %idxprom187 = sext i32 %183 to i64
  %arrayidx188 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom187
  %184 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx188, align 8
  call void @cleanup_gather(%struct.msg_tag* %184)
  %185 = load i32, i32* %dir, align 4
  %sub189 = sub nsw i32 7, %185
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom190
  %186 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx191, align 8
  call void @cleanup_gather(%struct.msg_tag* %186)
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.186
  %187 = load i32, i32* %dir, align 4
  %inc193 = add nsw i32 %187, 1
  store i32 %inc193, i32* %dir, align 4
  br label %for.cond.183

for.end.194:                                      ; preds = %for.cond.183
  store i32 8, i32* %dir, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.204, %for.end.194
  %188 = load i32, i32* %dir, align 4
  %cmp196 = icmp sle i32 %188, 11
  br i1 %cmp196, label %for.body.198, label %for.end.206

for.body.198:                                     ; preds = %for.cond.195
  %189 = load i32, i32* %dir, align 4
  %idxprom199 = sext i32 %189 to i64
  %arrayidx200 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom199
  %190 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx200, align 8
  call void @cleanup_gather(%struct.msg_tag* %190)
  %191 = load i32, i32* %dir, align 4
  %sub201 = sub nsw i32 23, %191
  %idxprom202 = sext i32 %sub201 to i64
  %arrayidx203 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom202
  %192 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx203, align 8
  call void @cleanup_gather(%struct.msg_tag* %192)
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.body.198
  %193 = load i32, i32* %dir, align 4
  %inc205 = add nsw i32 %193, 1
  store i32 %inc205, i32* %dir, align 4
  br label %for.cond.195

for.end.206:                                      ; preds = %for.cond.195
  ret void
}

declare void @load_longlinks(...) #1

declare void @load_fatlinks(...) #1

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #1

declare void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

declare void @wait_gather(%struct.msg_tag*) #1

declare void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

declare void @sub_four_su3_vecs(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

declare void @add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind uwtable
define void @dslash_fn_special(i32 %src, i32 %dest, i32 %parity, %struct.msg_tag** %tag, i32 %start) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %tag.addr = alloca %struct.msg_tag**, align 8
  %start.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %otherparity = alloca i32, align 4
  %fat4 = alloca %struct.su3_matrix*, align 8
  %long4 = alloca %struct.su3_matrix*, align 8
  %loopend = alloca i32, align 4
  %loopend179 = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store %struct.msg_tag** %tag, %struct.msg_tag*** %tag.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i32, i32* @valid_longlinks, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (...) @load_longlinks()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @valid_fatlinks, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (...) @load_fatlinks()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %parity.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.3
  store i32 1, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.3
  store i32 2, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.3
  store i32 3, i32* %otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.3, %sw.bb.5, %sw.bb.4, %sw.bb
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %3 = load i32, i32* %dir, align 4
  %cmp = icmp sle i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %start.addr, align 4
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %5 = load i32, i32* %src.addr, align 4
  %6 = load i32, i32* %dir, align 4
  %7 = load i32, i32* %parity.addr, align 4
  %8 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom
  %9 = load i8**, i8*** %arrayidx, align 8
  %call = call %struct.msg_tag* @start_gather(i32 %5, i32 48, i32 %6, i32 %7, i8** %9)
  %10 = load i32, i32* %dir, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %11, i64 %idxprom8
  store %struct.msg_tag* %call, %struct.msg_tag** %arrayidx9, align 8
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %src.addr, align 4
  %13 = load i32, i32* %dir, align 4
  %14 = load i32, i32* %parity.addr, align 4
  %15 = load i32, i32* %dir, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom10
  %16 = load i8**, i8*** %arrayidx11, align 8
  %17 = load i32, i32* %dir, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %18, i64 %idxprom12
  %19 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx13, align 8
  call void @restart_gather(i32 %12, i32 48, i32 %13, i32 %14, i8** %16, %struct.msg_tag* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 8, i32* %dir, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.31, %for.end
  %21 = load i32, i32* %dir, align 4
  %cmp16 = icmp sle i32 %21, 11
  br i1 %cmp16, label %for.body.17, label %for.end.33

for.body.17:                                      ; preds = %for.cond.15
  %22 = load i32, i32* %start.addr, align 4
  %cmp18 = icmp eq i32 %22, 1
  br i1 %cmp18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %for.body.17
  %23 = load i32, i32* %src.addr, align 4
  %24 = load i32, i32* %dir, align 4
  %25 = load i32, i32* %parity.addr, align 4
  %26 = load i32, i32* %dir, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom20
  %27 = load i8**, i8*** %arrayidx21, align 8
  %call22 = call %struct.msg_tag* @start_gather(i32 %23, i32 48, i32 %24, i32 %25, i8** %27)
  %28 = load i32, i32* %dir, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %29, i64 %idxprom23
  store %struct.msg_tag* %call22, %struct.msg_tag** %arrayidx24, align 8
  br label %if.end.30

if.else.25:                                       ; preds = %for.body.17
  %30 = load i32, i32* %src.addr, align 4
  %31 = load i32, i32* %dir, align 4
  %32 = load i32, i32* %parity.addr, align 4
  %33 = load i32, i32* %dir, align 4
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom26
  %34 = load i8**, i8*** %arrayidx27, align 8
  %35 = load i32, i32* %dir, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %36, i64 %idxprom28
  %37 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx29, align 8
  call void @restart_gather(i32 %30, i32 48, i32 %31, i32 %32, i8** %34, %struct.msg_tag* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.19
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %38 = load i32, i32* %dir, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %dir, align 4
  br label %for.cond.15

for.end.33:                                       ; preds = %for.cond.15
  %39 = load i32, i32* %otherparity, align 4
  %cmp34 = icmp eq i32 %39, 2
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.33
  %40 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.33
  %41 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %42 = load i32, i32* %otherparity, align 4
  %cmp35 = icmp eq i32 %42, 1
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end
  %43 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi i32 [ %43, %cond.true.36 ], [ 0, %cond.false.37 ]
  store i32 %cond39, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx41 = getelementptr inbounds %struct.site, %struct.site* %45, i64 %idxprom40
  store %struct.site* %arrayidx41, %struct.site** %s, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.53, %cond.end.38
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %loopend, align 4
  %cmp43 = icmp slt i32 %46, %47
  br i1 %cmp43, label %for.body.44, label %for.end.55

for.body.44:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %48
  %idxprom45 = sext i32 %mul to i64
  %49 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %49, i64 %idxprom45
  store %struct.su3_matrix* %arrayidx46, %struct.su3_matrix** %fat4, align 8
  %50 = load i32, i32* %i, align 4
  %mul47 = mul nsw i32 4, %50
  %idxprom48 = sext i32 %mul47 to i64
  %51 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx49 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %51, i64 %idxprom48
  store %struct.su3_matrix* %arrayidx49, %struct.su3_matrix** %long4, align 8
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %53 = load %struct.site*, %struct.site** %s, align 8
  %54 = bitcast %struct.site* %53 to i8*
  %55 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %56 = bitcast i8* %add.ptr to %struct.su3_vector*
  %57 = load %struct.site*, %struct.site** %s, align 8
  %tempvec = getelementptr inbounds %struct.site, %struct.site* %57, i32 0, i32 17
  %arraydecay = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %tempvec, i32 0, i32 0
  call void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %52, %struct.su3_vector* %56, %struct.su3_vector* %arraydecay)
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %59 = load %struct.site*, %struct.site** %s, align 8
  %60 = bitcast %struct.site* %59 to i8*
  %61 = load i32, i32* %src.addr, align 4
  %idx.ext50 = sext i32 %61 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %60, i64 %idx.ext50
  %62 = bitcast i8* %add.ptr51 to %struct.su3_vector*
  %63 = load %struct.site*, %struct.site** %s, align 8
  %templongvec = getelementptr inbounds %struct.site, %struct.site* %63, i32 0, i32 18
  %arraydecay52 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %templongvec, i32 0, i32 0
  call void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %58, %struct.su3_vector* %62, %struct.su3_vector* %arraydecay52)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.44
  %64 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %64, 1
  store i32 %inc54, i32* %i, align 4
  %65 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %65, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.42

for.end.55:                                       ; preds = %for.cond.42
  store i32 0, i32* %dir, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.91, %for.end.55
  %66 = load i32, i32* %dir, align 4
  %cmp57 = icmp sle i32 %66, 3
  br i1 %cmp57, label %for.body.58, label %for.end.93

for.body.58:                                      ; preds = %for.cond.56
  %67 = load i32, i32* %start.addr, align 4
  %cmp59 = icmp eq i32 %67, 1
  br i1 %cmp59, label %if.then.60, label %if.else.73

if.then.60:                                       ; preds = %for.body.58
  %68 = load i32, i32* %dir, align 4
  %idxprom61 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx62 = getelementptr inbounds %struct.site, %struct.site* %69, i64 0
  %tempvec63 = getelementptr inbounds %struct.site, %struct.site* %arrayidx62, i32 0, i32 17
  %arrayidx64 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %tempvec63, i32 0, i64 %idxprom61
  %70 = bitcast %struct.su3_vector* %arrayidx64 to i8*
  %71 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx65 = getelementptr inbounds %struct.site, %struct.site* %71, i64 0
  %72 = bitcast %struct.site* %arrayidx65 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %73 = load i32, i32* %dir, align 4
  %sub = sub nsw i32 7, %73
  %74 = load i32, i32* %parity.addr, align 4
  %75 = load i32, i32* %dir, align 4
  %sub66 = sub nsw i32 7, %75
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom67
  %76 = load i8**, i8*** %arrayidx68, align 8
  %call69 = call %struct.msg_tag* @start_gather(i32 %conv, i32 48, i32 %sub, i32 %74, i8** %76)
  %77 = load i32, i32* %dir, align 4
  %sub70 = sub nsw i32 7, %77
  %idxprom71 = sext i32 %sub70 to i64
  %78 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %78, i64 %idxprom71
  store %struct.msg_tag* %call69, %struct.msg_tag** %arrayidx72, align 8
  br label %if.end.90

if.else.73:                                       ; preds = %for.body.58
  %79 = load i32, i32* %dir, align 4
  %idxprom74 = sext i32 %79 to i64
  %80 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx75 = getelementptr inbounds %struct.site, %struct.site* %80, i64 0
  %tempvec76 = getelementptr inbounds %struct.site, %struct.site* %arrayidx75, i32 0, i32 17
  %arrayidx77 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %tempvec76, i32 0, i64 %idxprom74
  %81 = bitcast %struct.su3_vector* %arrayidx77 to i8*
  %82 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx78 = getelementptr inbounds %struct.site, %struct.site* %82, i64 0
  %83 = bitcast %struct.site* %arrayidx78 to i8*
  %sub.ptr.lhs.cast79 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %83 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %conv82 = trunc i64 %sub.ptr.sub81 to i32
  %84 = load i32, i32* %dir, align 4
  %sub83 = sub nsw i32 7, %84
  %85 = load i32, i32* %parity.addr, align 4
  %86 = load i32, i32* %dir, align 4
  %sub84 = sub nsw i32 7, %86
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom85
  %87 = load i8**, i8*** %arrayidx86, align 8
  %88 = load i32, i32* %dir, align 4
  %sub87 = sub nsw i32 7, %88
  %idxprom88 = sext i32 %sub87 to i64
  %89 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %89, i64 %idxprom88
  %90 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx89, align 8
  call void @restart_gather(i32 %conv82, i32 48, i32 %sub83, i32 %85, i8** %87, %struct.msg_tag* %90)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.73, %if.then.60
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %91 = load i32, i32* %dir, align 4
  %inc92 = add nsw i32 %91, 1
  store i32 %inc92, i32* %dir, align 4
  br label %for.cond.56

for.end.93:                                       ; preds = %for.cond.56
  store i32 8, i32* %dir, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.138, %for.end.93
  %92 = load i32, i32* %dir, align 4
  %cmp95 = icmp sle i32 %92, 11
  br i1 %cmp95, label %for.body.97, label %for.end.140

for.body.97:                                      ; preds = %for.cond.94
  %93 = load i32, i32* %start.addr, align 4
  %cmp98 = icmp eq i32 %93, 1
  br i1 %cmp98, label %if.then.100, label %if.else.119

if.then.100:                                      ; preds = %for.body.97
  %94 = load i32, i32* %dir, align 4
  %sub101 = sub nsw i32 %94, 8
  %idxprom102 = sext i32 %sub101 to i64
  %95 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx103 = getelementptr inbounds %struct.site, %struct.site* %95, i64 0
  %templongvec104 = getelementptr inbounds %struct.site, %struct.site* %arrayidx103, i32 0, i32 18
  %arrayidx105 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %templongvec104, i32 0, i64 %idxprom102
  %96 = bitcast %struct.su3_vector* %arrayidx105 to i8*
  %97 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx106 = getelementptr inbounds %struct.site, %struct.site* %97, i64 0
  %98 = bitcast %struct.site* %arrayidx106 to i8*
  %sub.ptr.lhs.cast107 = ptrtoint i8* %96 to i64
  %sub.ptr.rhs.cast108 = ptrtoint i8* %98 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %conv110 = trunc i64 %sub.ptr.sub109 to i32
  %99 = load i32, i32* %dir, align 4
  %sub111 = sub nsw i32 23, %99
  %100 = load i32, i32* %parity.addr, align 4
  %101 = load i32, i32* %dir, align 4
  %sub112 = sub nsw i32 23, %101
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom113
  %102 = load i8**, i8*** %arrayidx114, align 8
  %call115 = call %struct.msg_tag* @start_gather(i32 %conv110, i32 48, i32 %sub111, i32 %100, i8** %102)
  %103 = load i32, i32* %dir, align 4
  %sub116 = sub nsw i32 23, %103
  %idxprom117 = sext i32 %sub116 to i64
  %104 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %104, i64 %idxprom117
  store %struct.msg_tag* %call115, %struct.msg_tag** %arrayidx118, align 8
  br label %if.end.137

if.else.119:                                      ; preds = %for.body.97
  %105 = load i32, i32* %dir, align 4
  %sub120 = sub nsw i32 %105, 8
  %idxprom121 = sext i32 %sub120 to i64
  %106 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx122 = getelementptr inbounds %struct.site, %struct.site* %106, i64 0
  %templongvec123 = getelementptr inbounds %struct.site, %struct.site* %arrayidx122, i32 0, i32 18
  %arrayidx124 = getelementptr inbounds [4 x %struct.su3_vector], [4 x %struct.su3_vector]* %templongvec123, i32 0, i64 %idxprom121
  %107 = bitcast %struct.su3_vector* %arrayidx124 to i8*
  %108 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx125 = getelementptr inbounds %struct.site, %struct.site* %108, i64 0
  %109 = bitcast %struct.site* %arrayidx125 to i8*
  %sub.ptr.lhs.cast126 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %109 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %conv129 = trunc i64 %sub.ptr.sub128 to i32
  %110 = load i32, i32* %dir, align 4
  %sub130 = sub nsw i32 23, %110
  %111 = load i32, i32* %parity.addr, align 4
  %112 = load i32, i32* %dir, align 4
  %sub131 = sub nsw i32 23, %112
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom132
  %113 = load i8**, i8*** %arrayidx133, align 8
  %114 = load i32, i32* %dir, align 4
  %sub134 = sub nsw i32 23, %114
  %idxprom135 = sext i32 %sub134 to i64
  %115 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %115, i64 %idxprom135
  %116 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx136, align 8
  call void @restart_gather(i32 %conv129, i32 48, i32 %sub130, i32 %111, i8** %113, %struct.msg_tag* %116)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.119, %if.then.100
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %117 = load i32, i32* %dir, align 4
  %inc139 = add nsw i32 %117, 1
  store i32 %inc139, i32* %dir, align 4
  br label %for.cond.94

for.end.140:                                      ; preds = %for.cond.94
  store i32 0, i32* %dir, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.147, %for.end.140
  %118 = load i32, i32* %dir, align 4
  %cmp142 = icmp sle i32 %118, 3
  br i1 %cmp142, label %for.body.144, label %for.end.149

for.body.144:                                     ; preds = %for.cond.141
  %119 = load i32, i32* %dir, align 4
  %idxprom145 = sext i32 %119 to i64
  %120 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %120, i64 %idxprom145
  %121 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx146, align 8
  call void @wait_gather(%struct.msg_tag* %121)
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.144
  %122 = load i32, i32* %dir, align 4
  %inc148 = add nsw i32 %122, 1
  store i32 %inc148, i32* %dir, align 4
  br label %for.cond.141

for.end.149:                                      ; preds = %for.cond.141
  store i32 8, i32* %dir, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.156, %for.end.149
  %123 = load i32, i32* %dir, align 4
  %cmp151 = icmp sle i32 %123, 11
  br i1 %cmp151, label %for.body.153, label %for.end.158

for.body.153:                                     ; preds = %for.cond.150
  %124 = load i32, i32* %dir, align 4
  %idxprom154 = sext i32 %124 to i64
  %125 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %125, i64 %idxprom154
  %126 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx155, align 8
  call void @wait_gather(%struct.msg_tag* %126)
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.153
  %127 = load i32, i32* %dir, align 4
  %inc157 = add nsw i32 %127, 1
  store i32 %inc157, i32* %dir, align 4
  br label %for.cond.150

for.end.158:                                      ; preds = %for.cond.150
  store i32 0, i32* %dir, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.166, %for.end.158
  %128 = load i32, i32* %dir, align 4
  %cmp160 = icmp sle i32 %128, 3
  br i1 %cmp160, label %for.body.162, label %for.end.168

for.body.162:                                     ; preds = %for.cond.159
  %129 = load i32, i32* %dir, align 4
  %sub163 = sub nsw i32 7, %129
  %idxprom164 = sext i32 %sub163 to i64
  %130 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %130, i64 %idxprom164
  %131 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx165, align 8
  call void @wait_gather(%struct.msg_tag* %131)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.162
  %132 = load i32, i32* %dir, align 4
  %inc167 = add nsw i32 %132, 1
  store i32 %inc167, i32* %dir, align 4
  br label %for.cond.159

for.end.168:                                      ; preds = %for.cond.159
  store i32 8, i32* %dir, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.176, %for.end.168
  %133 = load i32, i32* %dir, align 4
  %cmp170 = icmp sle i32 %133, 11
  br i1 %cmp170, label %for.body.172, label %for.end.178

for.body.172:                                     ; preds = %for.cond.169
  %134 = load i32, i32* %dir, align 4
  %sub173 = sub nsw i32 23, %134
  %idxprom174 = sext i32 %sub173 to i64
  %135 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx175 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %135, i64 %idxprom174
  %136 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx175, align 8
  call void @wait_gather(%struct.msg_tag* %136)
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.172
  %137 = load i32, i32* %dir, align 4
  %inc177 = add nsw i32 %137, 1
  store i32 %inc177, i32* %dir, align 4
  br label %for.cond.169

for.end.178:                                      ; preds = %for.cond.169
  %138 = load i32, i32* %parity.addr, align 4
  %cmp180 = icmp eq i32 %138, 2
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %for.end.178
  %139 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.184

cond.false.183:                                   ; preds = %for.end.178
  %140 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.182
  %cond185 = phi i32 [ %139, %cond.true.182 ], [ %140, %cond.false.183 ]
  store i32 %cond185, i32* %loopend179, align 4
  %141 = load i32, i32* %parity.addr, align 4
  %cmp186 = icmp eq i32 %141, 1
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %cond.end.184
  %142 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.190

cond.false.189:                                   ; preds = %cond.end.184
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.188
  %cond191 = phi i32 [ %142, %cond.true.188 ], [ 0, %cond.false.189 ]
  store i32 %cond191, i32* %i, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %143 to i64
  %144 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx193 = getelementptr inbounds %struct.site, %struct.site* %144, i64 %idxprom192
  store %struct.site* %arrayidx193, %struct.site** %s, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.246, %cond.end.190
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %loopend179, align 4
  %cmp195 = icmp slt i32 %145, %146
  br i1 %cmp195, label %for.body.197, label %for.end.249

for.body.197:                                     ; preds = %for.cond.194
  %147 = load i32, i32* %i, align 4
  %mul198 = mul nsw i32 4, %147
  %idxprom199 = sext i32 %mul198 to i64
  %148 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx200 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %148, i64 %idxprom199
  store %struct.su3_matrix* %arrayidx200, %struct.su3_matrix** %fat4, align 8
  %149 = load i32, i32* %i, align 4
  %mul201 = mul nsw i32 4, %149
  %idxprom202 = sext i32 %mul201 to i64
  %150 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx203 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %150, i64 %idxprom202
  store %struct.su3_matrix* %arrayidx203, %struct.su3_matrix** %long4, align 8
  %151 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %152 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %152 to i64
  %153 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %153, i64 %idxprom204
  %154 = load i8*, i8** %arrayidx205, align 8
  %155 = bitcast i8* %154 to %struct.su3_vector*
  %156 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %156 to i64
  %157 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %157, i64 %idxprom206
  %158 = load i8*, i8** %arrayidx207, align 8
  %159 = bitcast i8* %158 to %struct.su3_vector*
  %160 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %160 to i64
  %161 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 2), align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %161, i64 %idxprom208
  %162 = load i8*, i8** %arrayidx209, align 8
  %163 = bitcast i8* %162 to %struct.su3_vector*
  %164 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %164 to i64
  %165 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 3), align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %165, i64 %idxprom210
  %166 = load i8*, i8** %arrayidx211, align 8
  %167 = bitcast i8* %166 to %struct.su3_vector*
  %168 = load %struct.site*, %struct.site** %s, align 8
  %169 = bitcast %struct.site* %168 to i8*
  %170 = load i32, i32* %dest.addr, align 4
  %idx.ext212 = sext i32 %170 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %169, i64 %idx.ext212
  %171 = bitcast i8* %add.ptr213 to %struct.su3_vector*
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %151, %struct.su3_vector* %155, %struct.su3_vector* %159, %struct.su3_vector* %163, %struct.su3_vector* %167, %struct.su3_vector* %171)
  %172 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %173 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %173 to i64
  %174 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 8), align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %174, i64 %idxprom214
  %175 = load i8*, i8** %arrayidx215, align 8
  %176 = bitcast i8* %175 to %struct.su3_vector*
  %177 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %177 to i64
  %178 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 9), align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %178, i64 %idxprom216
  %179 = load i8*, i8** %arrayidx217, align 8
  %180 = bitcast i8* %179 to %struct.su3_vector*
  %181 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %181 to i64
  %182 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 10), align 8
  %arrayidx219 = getelementptr inbounds i8*, i8** %182, i64 %idxprom218
  %183 = load i8*, i8** %arrayidx219, align 8
  %184 = bitcast i8* %183 to %struct.su3_vector*
  %185 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %185 to i64
  %186 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 11), align 8
  %arrayidx221 = getelementptr inbounds i8*, i8** %186, i64 %idxprom220
  %187 = load i8*, i8** %arrayidx221, align 8
  %188 = bitcast i8* %187 to %struct.su3_vector*
  %189 = load %struct.site*, %struct.site** %s, align 8
  %templongv1 = getelementptr inbounds %struct.site, %struct.site* %189, i32 0, i32 19
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %172, %struct.su3_vector* %176, %struct.su3_vector* %180, %struct.su3_vector* %184, %struct.su3_vector* %188, %struct.su3_vector* %templongv1)
  %190 = load %struct.site*, %struct.site** %s, align 8
  %191 = bitcast %struct.site* %190 to i8*
  %192 = load i32, i32* %dest.addr, align 4
  %idx.ext222 = sext i32 %192 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %191, i64 %idx.ext222
  %193 = bitcast i8* %add.ptr223 to %struct.su3_vector*
  %194 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %194 to i64
  %195 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 7), align 8
  %arrayidx225 = getelementptr inbounds i8*, i8** %195, i64 %idxprom224
  %196 = load i8*, i8** %arrayidx225, align 8
  %197 = bitcast i8* %196 to %struct.su3_vector*
  %198 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %198 to i64
  %199 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 6), align 8
  %arrayidx227 = getelementptr inbounds i8*, i8** %199, i64 %idxprom226
  %200 = load i8*, i8** %arrayidx227, align 8
  %201 = bitcast i8* %200 to %struct.su3_vector*
  %202 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %202 to i64
  %203 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 5), align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %203, i64 %idxprom228
  %204 = load i8*, i8** %arrayidx229, align 8
  %205 = bitcast i8* %204 to %struct.su3_vector*
  %206 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %206 to i64
  %207 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 4), align 8
  %arrayidx231 = getelementptr inbounds i8*, i8** %207, i64 %idxprom230
  %208 = load i8*, i8** %arrayidx231, align 8
  %209 = bitcast i8* %208 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %193, %struct.su3_vector* %197, %struct.su3_vector* %201, %struct.su3_vector* %205, %struct.su3_vector* %209)
  %210 = load %struct.site*, %struct.site** %s, align 8
  %templongv1232 = getelementptr inbounds %struct.site, %struct.site* %210, i32 0, i32 19
  %211 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %211 to i64
  %212 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 15), align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %212, i64 %idxprom233
  %213 = load i8*, i8** %arrayidx234, align 8
  %214 = bitcast i8* %213 to %struct.su3_vector*
  %215 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %215 to i64
  %216 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 14), align 8
  %arrayidx236 = getelementptr inbounds i8*, i8** %216, i64 %idxprom235
  %217 = load i8*, i8** %arrayidx236, align 8
  %218 = bitcast i8* %217 to %struct.su3_vector*
  %219 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %219 to i64
  %220 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 13), align 8
  %arrayidx238 = getelementptr inbounds i8*, i8** %220, i64 %idxprom237
  %221 = load i8*, i8** %arrayidx238, align 8
  %222 = bitcast i8* %221 to %struct.su3_vector*
  %223 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %223 to i64
  %224 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 12), align 8
  %arrayidx240 = getelementptr inbounds i8*, i8** %224, i64 %idxprom239
  %225 = load i8*, i8** %arrayidx240, align 8
  %226 = bitcast i8* %225 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %templongv1232, %struct.su3_vector* %214, %struct.su3_vector* %218, %struct.su3_vector* %222, %struct.su3_vector* %226)
  %227 = load %struct.site*, %struct.site** %s, align 8
  %228 = bitcast %struct.site* %227 to i8*
  %229 = load i32, i32* %dest.addr, align 4
  %idx.ext241 = sext i32 %229 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %228, i64 %idx.ext241
  %230 = bitcast i8* %add.ptr242 to %struct.su3_vector*
  %231 = load %struct.site*, %struct.site** %s, align 8
  %templongv1243 = getelementptr inbounds %struct.site, %struct.site* %231, i32 0, i32 19
  %232 = load %struct.site*, %struct.site** %s, align 8
  %233 = bitcast %struct.site* %232 to i8*
  %234 = load i32, i32* %dest.addr, align 4
  %idx.ext244 = sext i32 %234 to i64
  %add.ptr245 = getelementptr inbounds i8, i8* %233, i64 %idx.ext244
  %235 = bitcast i8* %add.ptr245 to %struct.su3_vector*
  call void @add_su3_vector(%struct.su3_vector* %230, %struct.su3_vector* %templongv1243, %struct.su3_vector* %235)
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.197
  %236 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %236, 1
  store i32 %inc247, i32* %i, align 4
  %237 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr248 = getelementptr inbounds %struct.site, %struct.site* %237, i32 1
  store %struct.site* %incdec.ptr248, %struct.site** %s, align 8
  br label %for.cond.194

for.end.249:                                      ; preds = %for.cond.194
  ret void
}

declare void @restart_gather(i32, i32, i32, i32, i8**, %struct.msg_tag*) #1

; Function Attrs: nounwind uwtable
define void @dslash_fn_on_temp(%struct.su3_vector* %src, %struct.su3_vector* %dest, i32 %parity) #0 {
entry:
  %src.addr = alloca %struct.su3_vector*, align 8
  %dest.addr = alloca %struct.su3_vector*, align 8
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %otherparity = alloca i32, align 4
  %tag = alloca [16 x %struct.msg_tag*], align 16
  %tempvec = alloca [4 x %struct.su3_vector*], align 16
  %templongvec = alloca [4 x %struct.su3_vector*], align 16
  %templongv1 = alloca %struct.su3_vector*, align 8
  %fat4 = alloca %struct.su3_matrix*, align 8
  %long4 = alloca %struct.su3_matrix*, align 8
  %loopend = alloca i32, align 4
  %loopend127 = alloca i32, align 4
  %loopend196 = alloca i32, align 4
  store %struct.su3_vector* %src, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %dest, %struct.su3_vector** %dest.addr, align 8
  store i32 %parity, i32* %parity.addr, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %dir, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 48) #3
  %2 = bitcast i8* %call to %struct.su3_vector*
  %3 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 %idxprom
  store %struct.su3_vector* %2, %struct.su3_vector** %arrayidx, align 8
  %4 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %4 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 48) #3
  %5 = bitcast i8* %call2 to %struct.su3_vector*
  %6 = load i32, i32* %dir, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 %idxprom3
  store %struct.su3_vector* %5, %struct.su3_vector** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @sites_on_node, align 4
  %conv5 = sext i32 %8 to i64
  %call6 = call noalias i8* @calloc(i64 %conv5, i64 48) #3
  %9 = bitcast i8* %call6 to %struct.su3_vector*
  store %struct.su3_vector* %9, %struct.su3_vector** %templongv1, align 8
  %10 = load i32, i32* @valid_longlinks, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void (...) @load_longlinks()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %11 = load i32, i32* @valid_fatlinks, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  call void (...) @load_fatlinks()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load i32, i32* %parity.addr, align 4
  switch i32 %12, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.9
  store i32 1, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.9
  store i32 2, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.9
  store i32 3, i32* %otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.9, %sw.bb.11, %sw.bb.10, %sw.bb
  store i32 0, i32* %dir, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.28, %sw.epilog
  %13 = load i32, i32* %dir, align 4
  %cmp13 = icmp sle i32 %13, 3
  br i1 %cmp13, label %for.body.15, label %for.end.30

for.body.15:                                      ; preds = %for.cond.12
  %14 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %15 = bitcast %struct.su3_vector* %14 to i8*
  %16 = load i32, i32* %dir, align 4
  %17 = load i32, i32* %parity.addr, align 4
  %18 = load i32, i32* %dir, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom16
  %19 = load i8**, i8*** %arrayidx17, align 8
  %call18 = call %struct.msg_tag* @start_gather_from_temp(i8* %15, i32 48, i32 %16, i32 %17, i8** %19)
  %20 = load i32, i32* %dir, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom19
  store %struct.msg_tag* %call18, %struct.msg_tag** %arrayidx20, align 8
  %21 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %22 = bitcast %struct.su3_vector* %21 to i8*
  %23 = load i32, i32* %dir, align 4
  %add = add nsw i32 %23, 8
  %24 = load i32, i32* %parity.addr, align 4
  %25 = load i32, i32* %dir, align 4
  %add21 = add nsw i32 %25, 8
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom22
  %26 = load i8**, i8*** %arrayidx23, align 8
  %call24 = call %struct.msg_tag* @start_gather_from_temp(i8* %22, i32 48, i32 %add, i32 %24, i8** %26)
  %27 = load i32, i32* %dir, align 4
  %add25 = add nsw i32 %27, 8
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom26
  store %struct.msg_tag* %call24, %struct.msg_tag** %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.15
  %28 = load i32, i32* %dir, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %dir, align 4
  br label %for.cond.12

for.end.30:                                       ; preds = %for.cond.12
  %29 = load i32, i32* %otherparity, align 4
  %cmp31 = icmp eq i32 %29, 2
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.30
  %30 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.30
  %31 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %32 = load i32, i32* %otherparity, align 4
  %cmp33 = icmp eq i32 %32, 1
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  %33 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ %33, %cond.true.35 ], [ 0, %cond.false.36 ]
  store i32 %cond38, i32* %i, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx40 = getelementptr inbounds %struct.site, %struct.site* %35, i64 %idxprom39
  store %struct.site* %arrayidx40, %struct.site** %s, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.78, %cond.end.37
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %loopend, align 4
  %cmp42 = icmp slt i32 %36, %37
  br i1 %cmp42, label %for.body.44, label %for.end.80

for.body.44:                                      ; preds = %for.cond.41
  %38 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %38
  %idxprom45 = sext i32 %mul to i64
  %39 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %39, i64 %idxprom45
  store %struct.su3_matrix* %arrayidx46, %struct.su3_matrix** %fat4, align 8
  %40 = load i32, i32* %i, align 4
  %mul47 = mul nsw i32 4, %40
  %idxprom48 = sext i32 %mul47 to i64
  %41 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx49 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %41, i64 %idxprom48
  store %struct.su3_matrix* %arrayidx49, %struct.su3_matrix** %long4, align 8
  %42 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %43 to i64
  %44 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %44, i64 %idxprom50
  %45 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %45 to i64
  %arrayidx53 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %46 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %46, i64 %idxprom52
  %47 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %48 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %48, i64 %idxprom55
  %49 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 2
  %50 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %50, i64 %idxprom58
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %arrayidx62 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %52 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %52, i64 %idxprom61
  call void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %42, %struct.su3_vector* %arrayidx51, %struct.su3_vector* %arrayidx54, %struct.su3_vector* %arrayidx57, %struct.su3_vector* %arrayidx60, %struct.su3_vector* %arrayidx63)
  %53 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %55, i64 %idxprom64
  %56 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %56 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 0
  %57 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %57, i64 %idxprom66
  %58 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 1
  %59 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %59, i64 %idxprom69
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 2
  %61 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %61, i64 %idxprom72
  %62 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %62 to i64
  %arrayidx76 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 3
  %63 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %63, i64 %idxprom75
  call void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %53, %struct.su3_vector* %arrayidx65, %struct.su3_vector* %arrayidx68, %struct.su3_vector* %arrayidx71, %struct.su3_vector* %arrayidx74, %struct.su3_vector* %arrayidx77)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.44
  %64 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %64, 1
  store i32 %inc79, i32* %i, align 4
  %65 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %65, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.41

for.end.80:                                       ; preds = %for.cond.41
  store i32 0, i32* %dir, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.94, %for.end.80
  %66 = load i32, i32* %dir, align 4
  %cmp82 = icmp sle i32 %66, 3
  br i1 %cmp82, label %for.body.84, label %for.end.96

for.body.84:                                      ; preds = %for.cond.81
  %67 = load i32, i32* %dir, align 4
  %idxprom85 = sext i32 %67 to i64
  %arrayidx86 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 %idxprom85
  %68 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx86, align 8
  %69 = bitcast %struct.su3_vector* %68 to i8*
  %70 = load i32, i32* %dir, align 4
  %sub = sub nsw i32 7, %70
  %71 = load i32, i32* %parity.addr, align 4
  %72 = load i32, i32* %dir, align 4
  %sub87 = sub nsw i32 7, %72
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom88
  %73 = load i8**, i8*** %arrayidx89, align 8
  %call90 = call %struct.msg_tag* @start_gather_from_temp(i8* %69, i32 48, i32 %sub, i32 %71, i8** %73)
  %74 = load i32, i32* %dir, align 4
  %sub91 = sub nsw i32 7, %74
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom92
  store %struct.msg_tag* %call90, %struct.msg_tag** %arrayidx93, align 8
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.84
  %75 = load i32, i32* %dir, align 4
  %inc95 = add nsw i32 %75, 1
  store i32 %inc95, i32* %dir, align 4
  br label %for.cond.81

for.end.96:                                       ; preds = %for.cond.81
  store i32 8, i32* %dir, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.112, %for.end.96
  %76 = load i32, i32* %dir, align 4
  %cmp98 = icmp sle i32 %76, 11
  br i1 %cmp98, label %for.body.100, label %for.end.114

for.body.100:                                     ; preds = %for.cond.97
  %77 = load i32, i32* %dir, align 4
  %sub101 = sub nsw i32 %77, 8
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 %idxprom102
  %78 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx103, align 8
  %79 = bitcast %struct.su3_vector* %78 to i8*
  %80 = load i32, i32* %dir, align 4
  %sub104 = sub nsw i32 23, %80
  %81 = load i32, i32* %parity.addr, align 4
  %82 = load i32, i32* %dir, align 4
  %sub105 = sub nsw i32 23, %82
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom106
  %83 = load i8**, i8*** %arrayidx107, align 8
  %call108 = call %struct.msg_tag* @start_gather_from_temp(i8* %79, i32 48, i32 %sub104, i32 %81, i8** %83)
  %84 = load i32, i32* %dir, align 4
  %sub109 = sub nsw i32 23, %84
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom110
  store %struct.msg_tag* %call108, %struct.msg_tag** %arrayidx111, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.100
  %85 = load i32, i32* %dir, align 4
  %inc113 = add nsw i32 %85, 1
  store i32 %inc113, i32* %dir, align 4
  br label %for.cond.97

for.end.114:                                      ; preds = %for.cond.97
  store i32 0, i32* %dir, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.124, %for.end.114
  %86 = load i32, i32* %dir, align 4
  %cmp116 = icmp sle i32 %86, 3
  br i1 %cmp116, label %for.body.118, label %for.end.126

for.body.118:                                     ; preds = %for.cond.115
  %87 = load i32, i32* %dir, align 4
  %idxprom119 = sext i32 %87 to i64
  %arrayidx120 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom119
  %88 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx120, align 8
  call void @wait_gather(%struct.msg_tag* %88)
  %89 = load i32, i32* %dir, align 4
  %add121 = add nsw i32 %89, 8
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom122
  %90 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx123, align 8
  call void @wait_gather(%struct.msg_tag* %90)
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.118
  %91 = load i32, i32* %dir, align 4
  %inc125 = add nsw i32 %91, 1
  store i32 %inc125, i32* %dir, align 4
  br label %for.cond.115

for.end.126:                                      ; preds = %for.cond.115
  %92 = load i32, i32* %parity.addr, align 4
  %cmp128 = icmp eq i32 %92, 2
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %for.end.126
  %93 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.132

cond.false.131:                                   ; preds = %for.end.126
  %94 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.130
  %cond133 = phi i32 [ %93, %cond.true.130 ], [ %94, %cond.false.131 ]
  store i32 %cond133, i32* %loopend127, align 4
  %95 = load i32, i32* %parity.addr, align 4
  %cmp134 = icmp eq i32 %95, 1
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.end.132
  %96 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end.132
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ %96, %cond.true.136 ], [ 0, %cond.false.137 ]
  store i32 %cond139, i32* %i, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %97 to i64
  %98 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx141 = getelementptr inbounds %struct.site, %struct.site* %98, i64 %idxprom140
  store %struct.site* %arrayidx141, %struct.site** %s, align 8
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.172, %cond.end.138
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %loopend127, align 4
  %cmp143 = icmp slt i32 %99, %100
  br i1 %cmp143, label %for.body.145, label %for.end.175

for.body.145:                                     ; preds = %for.cond.142
  %101 = load i32, i32* %i, align 4
  %mul146 = mul nsw i32 4, %101
  %idxprom147 = sext i32 %mul146 to i64
  %102 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx148 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %102, i64 %idxprom147
  store %struct.su3_matrix* %arrayidx148, %struct.su3_matrix** %fat4, align 8
  %103 = load i32, i32* %i, align 4
  %mul149 = mul nsw i32 4, %103
  %idxprom150 = sext i32 %mul149 to i64
  %104 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx151 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %104, i64 %idxprom150
  store %struct.su3_matrix* %arrayidx151, %struct.su3_matrix** %long4, align 8
  %105 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %106 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %106 to i64
  %107 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx153 = getelementptr inbounds i8*, i8** %107, i64 %idxprom152
  %108 = load i8*, i8** %arrayidx153, align 8
  %109 = bitcast i8* %108 to %struct.su3_vector*
  %110 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %110 to i64
  %111 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx155 = getelementptr inbounds i8*, i8** %111, i64 %idxprom154
  %112 = load i8*, i8** %arrayidx155, align 8
  %113 = bitcast i8* %112 to %struct.su3_vector*
  %114 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %114 to i64
  %115 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 2), align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %115, i64 %idxprom156
  %116 = load i8*, i8** %arrayidx157, align 8
  %117 = bitcast i8* %116 to %struct.su3_vector*
  %118 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %118 to i64
  %119 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 3), align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %119, i64 %idxprom158
  %120 = load i8*, i8** %arrayidx159, align 8
  %121 = bitcast i8* %120 to %struct.su3_vector*
  %122 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %122 to i64
  %123 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx161 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %123, i64 %idxprom160
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %105, %struct.su3_vector* %109, %struct.su3_vector* %113, %struct.su3_vector* %117, %struct.su3_vector* %121, %struct.su3_vector* %arrayidx161)
  %124 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %125 to i64
  %126 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 8), align 8
  %arrayidx163 = getelementptr inbounds i8*, i8** %126, i64 %idxprom162
  %127 = load i8*, i8** %arrayidx163, align 8
  %128 = bitcast i8* %127 to %struct.su3_vector*
  %129 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %129 to i64
  %130 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 9), align 8
  %arrayidx165 = getelementptr inbounds i8*, i8** %130, i64 %idxprom164
  %131 = load i8*, i8** %arrayidx165, align 8
  %132 = bitcast i8* %131 to %struct.su3_vector*
  %133 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %133 to i64
  %134 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 10), align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %134, i64 %idxprom166
  %135 = load i8*, i8** %arrayidx167, align 8
  %136 = bitcast i8* %135 to %struct.su3_vector*
  %137 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %137 to i64
  %138 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 11), align 8
  %arrayidx169 = getelementptr inbounds i8*, i8** %138, i64 %idxprom168
  %139 = load i8*, i8** %arrayidx169, align 8
  %140 = bitcast i8* %139 to %struct.su3_vector*
  %141 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %141 to i64
  %142 = load %struct.su3_vector*, %struct.su3_vector** %templongv1, align 8
  %arrayidx171 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %142, i64 %idxprom170
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %124, %struct.su3_vector* %128, %struct.su3_vector* %132, %struct.su3_vector* %136, %struct.su3_vector* %140, %struct.su3_vector* %arrayidx171)
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.145
  %143 = load i32, i32* %i, align 4
  %inc173 = add nsw i32 %143, 1
  store i32 %inc173, i32* %i, align 4
  %144 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr174 = getelementptr inbounds %struct.site, %struct.site* %144, i32 1
  store %struct.site* %incdec.ptr174, %struct.site** %s, align 8
  br label %for.cond.142

for.end.175:                                      ; preds = %for.cond.142
  store i32 0, i32* %dir, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.183, %for.end.175
  %145 = load i32, i32* %dir, align 4
  %cmp177 = icmp sle i32 %145, 3
  br i1 %cmp177, label %for.body.179, label %for.end.185

for.body.179:                                     ; preds = %for.cond.176
  %146 = load i32, i32* %dir, align 4
  %sub180 = sub nsw i32 7, %146
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom181
  %147 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx182, align 8
  call void @wait_gather(%struct.msg_tag* %147)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.179
  %148 = load i32, i32* %dir, align 4
  %inc184 = add nsw i32 %148, 1
  store i32 %inc184, i32* %dir, align 4
  br label %for.cond.176

for.end.185:                                      ; preds = %for.cond.176
  store i32 8, i32* %dir, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.193, %for.end.185
  %149 = load i32, i32* %dir, align 4
  %cmp187 = icmp sle i32 %149, 11
  br i1 %cmp187, label %for.body.189, label %for.end.195

for.body.189:                                     ; preds = %for.cond.186
  %150 = load i32, i32* %dir, align 4
  %sub190 = sub nsw i32 23, %150
  %idxprom191 = sext i32 %sub190 to i64
  %arrayidx192 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom191
  %151 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx192, align 8
  call void @wait_gather(%struct.msg_tag* %151)
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.189
  %152 = load i32, i32* %dir, align 4
  %inc194 = add nsw i32 %152, 1
  store i32 %inc194, i32* %dir, align 4
  br label %for.cond.186

for.end.195:                                      ; preds = %for.cond.186
  %153 = load i32, i32* %parity.addr, align 4
  %cmp197 = icmp eq i32 %153, 2
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %for.end.195
  %154 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.201

cond.false.200:                                   ; preds = %for.end.195
  %155 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.200, %cond.true.199
  %cond202 = phi i32 [ %154, %cond.true.199 ], [ %155, %cond.false.200 ]
  store i32 %cond202, i32* %loopend196, align 4
  %156 = load i32, i32* %parity.addr, align 4
  %cmp203 = icmp eq i32 %156, 1
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %cond.end.201
  %157 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.end.201
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.205
  %cond208 = phi i32 [ %157, %cond.true.205 ], [ 0, %cond.false.206 ]
  store i32 %cond208, i32* %i, align 4
  %158 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %158 to i64
  %159 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx210 = getelementptr inbounds %struct.site, %struct.site* %159, i64 %idxprom209
  store %struct.site* %arrayidx210, %struct.site** %s, align 8
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.241, %cond.end.207
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %loopend196, align 4
  %cmp212 = icmp slt i32 %160, %161
  br i1 %cmp212, label %for.body.214, label %for.end.244

for.body.214:                                     ; preds = %for.cond.211
  %162 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %162 to i64
  %163 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx216 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %163, i64 %idxprom215
  %164 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %164 to i64
  %165 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 7), align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %165, i64 %idxprom217
  %166 = load i8*, i8** %arrayidx218, align 8
  %167 = bitcast i8* %166 to %struct.su3_vector*
  %168 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %168 to i64
  %169 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 6), align 8
  %arrayidx220 = getelementptr inbounds i8*, i8** %169, i64 %idxprom219
  %170 = load i8*, i8** %arrayidx220, align 8
  %171 = bitcast i8* %170 to %struct.su3_vector*
  %172 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %172 to i64
  %173 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 5), align 8
  %arrayidx222 = getelementptr inbounds i8*, i8** %173, i64 %idxprom221
  %174 = load i8*, i8** %arrayidx222, align 8
  %175 = bitcast i8* %174 to %struct.su3_vector*
  %176 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %176 to i64
  %177 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 4), align 8
  %arrayidx224 = getelementptr inbounds i8*, i8** %177, i64 %idxprom223
  %178 = load i8*, i8** %arrayidx224, align 8
  %179 = bitcast i8* %178 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %arrayidx216, %struct.su3_vector* %167, %struct.su3_vector* %171, %struct.su3_vector* %175, %struct.su3_vector* %179)
  %180 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %180 to i64
  %181 = load %struct.su3_vector*, %struct.su3_vector** %templongv1, align 8
  %arrayidx226 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %181, i64 %idxprom225
  %182 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %182 to i64
  %183 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 15), align 8
  %arrayidx228 = getelementptr inbounds i8*, i8** %183, i64 %idxprom227
  %184 = load i8*, i8** %arrayidx228, align 8
  %185 = bitcast i8* %184 to %struct.su3_vector*
  %186 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %186 to i64
  %187 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 14), align 8
  %arrayidx230 = getelementptr inbounds i8*, i8** %187, i64 %idxprom229
  %188 = load i8*, i8** %arrayidx230, align 8
  %189 = bitcast i8* %188 to %struct.su3_vector*
  %190 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %190 to i64
  %191 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 13), align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %191, i64 %idxprom231
  %192 = load i8*, i8** %arrayidx232, align 8
  %193 = bitcast i8* %192 to %struct.su3_vector*
  %194 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %194 to i64
  %195 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 12), align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %195, i64 %idxprom233
  %196 = load i8*, i8** %arrayidx234, align 8
  %197 = bitcast i8* %196 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %arrayidx226, %struct.su3_vector* %185, %struct.su3_vector* %189, %struct.su3_vector* %193, %struct.su3_vector* %197)
  %198 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %198 to i64
  %199 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx236 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %199, i64 %idxprom235
  %200 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %200 to i64
  %201 = load %struct.su3_vector*, %struct.su3_vector** %templongv1, align 8
  %arrayidx238 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %201, i64 %idxprom237
  %202 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %202 to i64
  %203 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx240 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %203, i64 %idxprom239
  call void @add_su3_vector(%struct.su3_vector* %arrayidx236, %struct.su3_vector* %arrayidx238, %struct.su3_vector* %arrayidx240)
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.body.214
  %204 = load i32, i32* %i, align 4
  %inc242 = add nsw i32 %204, 1
  store i32 %inc242, i32* %i, align 4
  %205 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr243 = getelementptr inbounds %struct.site, %struct.site* %205, i32 1
  store %struct.site* %incdec.ptr243, %struct.site** %s, align 8
  br label %for.cond.211

for.end.244:                                      ; preds = %for.cond.211
  store i32 0, i32* %dir, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.254, %for.end.244
  %206 = load i32, i32* %dir, align 4
  %cmp246 = icmp sle i32 %206, 3
  br i1 %cmp246, label %for.body.248, label %for.end.256

for.body.248:                                     ; preds = %for.cond.245
  %207 = load i32, i32* %dir, align 4
  %idxprom249 = sext i32 %207 to i64
  %arrayidx250 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom249
  %208 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx250, align 8
  call void @cleanup_gather(%struct.msg_tag* %208)
  %209 = load i32, i32* %dir, align 4
  %sub251 = sub nsw i32 7, %209
  %idxprom252 = sext i32 %sub251 to i64
  %arrayidx253 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom252
  %210 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx253, align 8
  call void @cleanup_gather(%struct.msg_tag* %210)
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.body.248
  %211 = load i32, i32* %dir, align 4
  %inc255 = add nsw i32 %211, 1
  store i32 %inc255, i32* %dir, align 4
  br label %for.cond.245

for.end.256:                                      ; preds = %for.cond.245
  store i32 8, i32* %dir, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.266, %for.end.256
  %212 = load i32, i32* %dir, align 4
  %cmp258 = icmp sle i32 %212, 11
  br i1 %cmp258, label %for.body.260, label %for.end.268

for.body.260:                                     ; preds = %for.cond.257
  %213 = load i32, i32* %dir, align 4
  %idxprom261 = sext i32 %213 to i64
  %arrayidx262 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom261
  %214 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx262, align 8
  call void @cleanup_gather(%struct.msg_tag* %214)
  %215 = load i32, i32* %dir, align 4
  %sub263 = sub nsw i32 23, %215
  %idxprom264 = sext i32 %sub263 to i64
  %arrayidx265 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tag, i32 0, i64 %idxprom264
  %216 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx265, align 8
  call void @cleanup_gather(%struct.msg_tag* %216)
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.body.260
  %217 = load i32, i32* %dir, align 4
  %inc267 = add nsw i32 %217, 1
  store i32 %inc267, i32* %dir, align 4
  br label %for.cond.257

for.end.268:                                      ; preds = %for.cond.257
  store i32 0, i32* %dir, align 4
  br label %for.cond.269

for.cond.269:                                     ; preds = %for.inc.277, %for.end.268
  %218 = load i32, i32* %dir, align 4
  %cmp270 = icmp sle i32 %218, 3
  br i1 %cmp270, label %for.body.272, label %for.end.279

for.body.272:                                     ; preds = %for.cond.269
  %219 = load i32, i32* %dir, align 4
  %idxprom273 = sext i32 %219 to i64
  %arrayidx274 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %tempvec, i32 0, i64 %idxprom273
  %220 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx274, align 8
  %221 = bitcast %struct.su3_vector* %220 to i8*
  call void @free(i8* %221) #3
  %222 = load i32, i32* %dir, align 4
  %idxprom275 = sext i32 %222 to i64
  %arrayidx276 = getelementptr inbounds [4 x %struct.su3_vector*], [4 x %struct.su3_vector*]* %templongvec, i32 0, i64 %idxprom275
  %223 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx276, align 8
  %224 = bitcast %struct.su3_vector* %223 to i8*
  call void @free(i8* %224) #3
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.272
  %225 = load i32, i32* %dir, align 4
  %inc278 = add nsw i32 %225, 1
  store i32 %inc278, i32* %dir, align 4
  br label %for.cond.269

for.end.279:                                      ; preds = %for.cond.269
  %226 = load %struct.su3_vector*, %struct.su3_vector** %templongv1, align 8
  %227 = bitcast %struct.su3_vector* %226 to i8*
  call void @free(i8* %227) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #1

declare void @mult_adj_su3_mat_4vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind uwtable
define void @dslash_fn_on_temp_special(%struct.su3_vector* %src, %struct.su3_vector* %dest, i32 %parity, %struct.msg_tag** %tag, i32 %start) #0 {
entry:
  %src.addr = alloca %struct.su3_vector*, align 8
  %dest.addr = alloca %struct.su3_vector*, align 8
  %parity.addr = alloca i32, align 4
  %tag.addr = alloca %struct.msg_tag**, align 8
  %start.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %otherparity = alloca i32, align 4
  %fat4 = alloca %struct.su3_matrix*, align 8
  %long4 = alloca %struct.su3_matrix*, align 8
  %loopend = alloca i32, align 4
  %loopend169 = alloca i32, align 4
  %loopend238 = alloca i32, align 4
  store %struct.su3_vector* %src, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %dest, %struct.su3_vector** %dest.addr, align 8
  store i32 %parity, i32* %parity.addr, align 4
  store %struct.msg_tag** %tag, %struct.msg_tag*** %tag.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i32, i32* @temp_not_allocated, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %dir, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 48) #3
  %3 = bitcast i8* %call to %struct.su3_vector*
  %4 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom
  store %struct.su3_vector* %3, %struct.su3_vector** %arrayidx, align 8
  %5 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %5 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 48) #3
  %6 = bitcast i8* %call2 to %struct.su3_vector*
  %7 = load i32, i32* %dir, align 4
  %add = add nsw i32 %7, 4
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom3
  store %struct.su3_vector* %6, %struct.su3_vector** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* @sites_on_node, align 4
  %conv5 = sext i32 %9 to i64
  %call6 = call noalias i8* @calloc(i64 %conv5, i64 48) #3
  %10 = bitcast i8* %call6 to %struct.su3_vector*
  store %struct.su3_vector* %10, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 8), align 8
  store i32 0, i32* @temp_not_allocated, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, i32* @valid_longlinks, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  call void (...) @load_longlinks()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load i32, i32* @valid_fatlinks, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  call void (...) @load_fatlinks()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %13 = load i32, i32* %parity.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.13
    i32 3, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end.12
  store i32 1, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.12
  store i32 2, i32* %otherparity, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.12
  store i32 3, i32* %otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.12, %sw.bb.14, %sw.bb.13, %sw.bb
  store i32 0, i32* %dir, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.47, %sw.epilog
  %14 = load i32, i32* %dir, align 4
  %cmp16 = icmp sle i32 %14, 3
  br i1 %cmp16, label %for.body.18, label %for.end.49

for.body.18:                                      ; preds = %for.cond.15
  %15 = load i32, i32* %start.addr, align 4
  %cmp19 = icmp eq i32 %15, 1
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body.18
  %16 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %17 = bitcast %struct.su3_vector* %16 to i8*
  %18 = load i32, i32* %dir, align 4
  %19 = load i32, i32* %parity.addr, align 4
  %20 = load i32, i32* %dir, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom22
  %21 = load i8**, i8*** %arrayidx23, align 8
  %call24 = call %struct.msg_tag* @start_gather_from_temp(i8* %17, i32 48, i32 %18, i32 %19, i8** %21)
  %22 = load i32, i32* %dir, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %23, i64 %idxprom25
  store %struct.msg_tag* %call24, %struct.msg_tag** %arrayidx26, align 8
  %24 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %25 = bitcast %struct.su3_vector* %24 to i8*
  %26 = load i32, i32* %dir, align 4
  %add27 = add nsw i32 %26, 8
  %27 = load i32, i32* %parity.addr, align 4
  %28 = load i32, i32* %dir, align 4
  %add28 = add nsw i32 %28, 8
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom29
  %29 = load i8**, i8*** %arrayidx30, align 8
  %call31 = call %struct.msg_tag* @start_gather_from_temp(i8* %25, i32 48, i32 %add27, i32 %27, i8** %29)
  %30 = load i32, i32* %dir, align 4
  %add32 = add nsw i32 %30, 8
  %idxprom33 = sext i32 %add32 to i64
  %31 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %31, i64 %idxprom33
  store %struct.msg_tag* %call31, %struct.msg_tag** %arrayidx34, align 8
  br label %if.end.46

if.else:                                          ; preds = %for.body.18
  %32 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %33 = bitcast %struct.su3_vector* %32 to i8*
  %34 = load i32, i32* %dir, align 4
  %35 = load i32, i32* %parity.addr, align 4
  %36 = load i32, i32* %dir, align 4
  %idxprom35 = sext i32 %36 to i64
  %arrayidx36 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom35
  %37 = load i8**, i8*** %arrayidx36, align 8
  %38 = load i32, i32* %dir, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %39, i64 %idxprom37
  %40 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx38, align 8
  call void @restart_gather_from_temp(i8* %33, i32 48, i32 %34, i32 %35, i8** %37, %struct.msg_tag* %40)
  %41 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %42 = bitcast %struct.su3_vector* %41 to i8*
  %43 = load i32, i32* %dir, align 4
  %add39 = add nsw i32 %43, 8
  %44 = load i32, i32* %parity.addr, align 4
  %45 = load i32, i32* %dir, align 4
  %add40 = add nsw i32 %45, 8
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom41
  %46 = load i8**, i8*** %arrayidx42, align 8
  %47 = load i32, i32* %dir, align 4
  %add43 = add nsw i32 %47, 8
  %idxprom44 = sext i32 %add43 to i64
  %48 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %48, i64 %idxprom44
  %49 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx45, align 8
  call void @restart_gather_from_temp(i8* %42, i32 48, i32 %add39, i32 %44, i8** %46, %struct.msg_tag* %49)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.21
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %50 = load i32, i32* %dir, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %dir, align 4
  br label %for.cond.15

for.end.49:                                       ; preds = %for.cond.15
  %51 = load i32, i32* %otherparity, align 4
  %cmp50 = icmp eq i32 %51, 2
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.49
  %52 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.49
  %53 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %53, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %54 = load i32, i32* %otherparity, align 4
  %cmp52 = icmp eq i32 %54, 1
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end
  %55 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i32 [ %55, %cond.true.54 ], [ 0, %cond.false.55 ]
  store i32 %cond57, i32* %i, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx59 = getelementptr inbounds %struct.site, %struct.site* %57, i64 %idxprom58
  store %struct.site* %arrayidx59, %struct.site** %s, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.89, %cond.end.56
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %loopend, align 4
  %cmp61 = icmp slt i32 %58, %59
  br i1 %cmp61, label %for.body.63, label %for.end.91

for.body.63:                                      ; preds = %for.cond.60
  %60 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %60
  %idxprom64 = sext i32 %mul to i64
  %61 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx65 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %61, i64 %idxprom64
  store %struct.su3_matrix* %arrayidx65, %struct.su3_matrix** %fat4, align 8
  %62 = load i32, i32* %i, align 4
  %mul66 = mul nsw i32 4, %62
  %idxprom67 = sext i32 %mul66 to i64
  %63 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx68 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %63, i64 %idxprom67
  store %struct.su3_matrix* %arrayidx68, %struct.su3_matrix** %long4, align 8
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %66, i64 %idxprom69
  %67 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %67 to i64
  %68 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 0), align 8
  %arrayidx72 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %68, i64 %idxprom71
  %69 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %69 to i64
  %70 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 1), align 8
  %arrayidx74 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %70, i64 %idxprom73
  %71 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %71 to i64
  %72 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 2), align 8
  %arrayidx76 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %72, i64 %idxprom75
  %73 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %73 to i64
  %74 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 3), align 8
  %arrayidx78 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %74, i64 %idxprom77
  call void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %64, %struct.su3_vector* %arrayidx70, %struct.su3_vector* %arrayidx72, %struct.su3_vector* %arrayidx74, %struct.su3_vector* %arrayidx76, %struct.su3_vector* %arrayidx78)
  %75 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %76 to i64
  %77 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %77, i64 %idxprom79
  %78 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %78 to i64
  %79 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 4), align 8
  %arrayidx82 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %79, i64 %idxprom81
  %80 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %80 to i64
  %81 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 5), align 8
  %arrayidx84 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %81, i64 %idxprom83
  %82 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %82 to i64
  %83 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 6), align 8
  %arrayidx86 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %83, i64 %idxprom85
  %84 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %84 to i64
  %85 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 7), align 8
  %arrayidx88 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %85, i64 %idxprom87
  call void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %75, %struct.su3_vector* %arrayidx80, %struct.su3_vector* %arrayidx82, %struct.su3_vector* %arrayidx84, %struct.su3_vector* %arrayidx86, %struct.su3_vector* %arrayidx88)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.63
  %86 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %86, 1
  store i32 %inc90, i32* %i, align 4
  %87 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %87, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.60

for.end.91:                                       ; preds = %for.cond.60
  store i32 0, i32* %dir, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.119, %for.end.91
  %88 = load i32, i32* %dir, align 4
  %cmp93 = icmp sle i32 %88, 3
  br i1 %cmp93, label %for.body.95, label %for.end.121

for.body.95:                                      ; preds = %for.cond.92
  %89 = load i32, i32* %start.addr, align 4
  %cmp96 = icmp eq i32 %89, 1
  br i1 %cmp96, label %if.then.98, label %if.else.108

if.then.98:                                       ; preds = %for.body.95
  %90 = load i32, i32* %dir, align 4
  %idxprom99 = sext i32 %90 to i64
  %arrayidx100 = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom99
  %91 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx100, align 8
  %92 = bitcast %struct.su3_vector* %91 to i8*
  %93 = load i32, i32* %dir, align 4
  %sub = sub nsw i32 7, %93
  %94 = load i32, i32* %parity.addr, align 4
  %95 = load i32, i32* %dir, align 4
  %sub101 = sub nsw i32 7, %95
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom102
  %96 = load i8**, i8*** %arrayidx103, align 8
  %call104 = call %struct.msg_tag* @start_gather_from_temp(i8* %92, i32 48, i32 %sub, i32 %94, i8** %96)
  %97 = load i32, i32* %dir, align 4
  %sub105 = sub nsw i32 7, %97
  %idxprom106 = sext i32 %sub105 to i64
  %98 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %98, i64 %idxprom106
  store %struct.msg_tag* %call104, %struct.msg_tag** %arrayidx107, align 8
  br label %if.end.118

if.else.108:                                      ; preds = %for.body.95
  %99 = load i32, i32* %dir, align 4
  %idxprom109 = sext i32 %99 to i64
  %arrayidx110 = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom109
  %100 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx110, align 8
  %101 = bitcast %struct.su3_vector* %100 to i8*
  %102 = load i32, i32* %dir, align 4
  %sub111 = sub nsw i32 7, %102
  %103 = load i32, i32* %parity.addr, align 4
  %104 = load i32, i32* %dir, align 4
  %sub112 = sub nsw i32 7, %104
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom113
  %105 = load i8**, i8*** %arrayidx114, align 8
  %106 = load i32, i32* %dir, align 4
  %sub115 = sub nsw i32 7, %106
  %idxprom116 = sext i32 %sub115 to i64
  %107 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %107, i64 %idxprom116
  %108 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx117, align 8
  call void @restart_gather_from_temp(i8* %101, i32 48, i32 %sub111, i32 %103, i8** %105, %struct.msg_tag* %108)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.108, %if.then.98
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %109 = load i32, i32* %dir, align 4
  %inc120 = add nsw i32 %109, 1
  store i32 %inc120, i32* %dir, align 4
  br label %for.cond.92

for.end.121:                                      ; preds = %for.cond.92
  store i32 8, i32* %dir, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.154, %for.end.121
  %110 = load i32, i32* %dir, align 4
  %cmp123 = icmp sle i32 %110, 11
  br i1 %cmp123, label %for.body.125, label %for.end.156

for.body.125:                                     ; preds = %for.cond.122
  %111 = load i32, i32* %start.addr, align 4
  %cmp126 = icmp eq i32 %111, 1
  br i1 %cmp126, label %if.then.128, label %if.else.141

if.then.128:                                      ; preds = %for.body.125
  %112 = load i32, i32* %dir, align 4
  %sub129 = sub nsw i32 %112, 8
  %add130 = add nsw i32 %sub129, 4
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom131
  %113 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx132, align 8
  %114 = bitcast %struct.su3_vector* %113 to i8*
  %115 = load i32, i32* %dir, align 4
  %sub133 = sub nsw i32 23, %115
  %116 = load i32, i32* %parity.addr, align 4
  %117 = load i32, i32* %dir, align 4
  %sub134 = sub nsw i32 23, %117
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom135
  %118 = load i8**, i8*** %arrayidx136, align 8
  %call137 = call %struct.msg_tag* @start_gather_from_temp(i8* %114, i32 48, i32 %sub133, i32 %116, i8** %118)
  %119 = load i32, i32* %dir, align 4
  %sub138 = sub nsw i32 23, %119
  %idxprom139 = sext i32 %sub138 to i64
  %120 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx140 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %120, i64 %idxprom139
  store %struct.msg_tag* %call137, %struct.msg_tag** %arrayidx140, align 8
  br label %if.end.153

if.else.141:                                      ; preds = %for.body.125
  %121 = load i32, i32* %dir, align 4
  %sub142 = sub nsw i32 %121, 8
  %add143 = add nsw i32 %sub142, 4
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds [9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 %idxprom144
  %122 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx145, align 8
  %123 = bitcast %struct.su3_vector* %122 to i8*
  %124 = load i32, i32* %dir, align 4
  %sub146 = sub nsw i32 23, %124
  %125 = load i32, i32* %parity.addr, align 4
  %126 = load i32, i32* %dir, align 4
  %sub147 = sub nsw i32 23, %126
  %idxprom148 = sext i32 %sub147 to i64
  %arrayidx149 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom148
  %127 = load i8**, i8*** %arrayidx149, align 8
  %128 = load i32, i32* %dir, align 4
  %sub150 = sub nsw i32 23, %128
  %idxprom151 = sext i32 %sub150 to i64
  %129 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %129, i64 %idxprom151
  %130 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx152, align 8
  call void @restart_gather_from_temp(i8* %123, i32 48, i32 %sub146, i32 %125, i8** %127, %struct.msg_tag* %130)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.141, %if.then.128
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %131 = load i32, i32* %dir, align 4
  %inc155 = add nsw i32 %131, 1
  store i32 %inc155, i32* %dir, align 4
  br label %for.cond.122

for.end.156:                                      ; preds = %for.cond.122
  store i32 0, i32* %dir, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.166, %for.end.156
  %132 = load i32, i32* %dir, align 4
  %cmp158 = icmp sle i32 %132, 3
  br i1 %cmp158, label %for.body.160, label %for.end.168

for.body.160:                                     ; preds = %for.cond.157
  %133 = load i32, i32* %dir, align 4
  %idxprom161 = sext i32 %133 to i64
  %134 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx162 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %134, i64 %idxprom161
  %135 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx162, align 8
  call void @wait_gather(%struct.msg_tag* %135)
  %136 = load i32, i32* %dir, align 4
  %add163 = add nsw i32 %136, 8
  %idxprom164 = sext i32 %add163 to i64
  %137 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %137, i64 %idxprom164
  %138 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx165, align 8
  call void @wait_gather(%struct.msg_tag* %138)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.160
  %139 = load i32, i32* %dir, align 4
  %inc167 = add nsw i32 %139, 1
  store i32 %inc167, i32* %dir, align 4
  br label %for.cond.157

for.end.168:                                      ; preds = %for.cond.157
  %140 = load i32, i32* %parity.addr, align 4
  %cmp170 = icmp eq i32 %140, 2
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %for.end.168
  %141 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.174

cond.false.173:                                   ; preds = %for.end.168
  %142 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.172
  %cond175 = phi i32 [ %141, %cond.true.172 ], [ %142, %cond.false.173 ]
  store i32 %cond175, i32* %loopend169, align 4
  %143 = load i32, i32* %parity.addr, align 4
  %cmp176 = icmp eq i32 %143, 1
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.end.174
  %144 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.180

cond.false.179:                                   ; preds = %cond.end.174
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ %144, %cond.true.178 ], [ 0, %cond.false.179 ]
  store i32 %cond181, i32* %i, align 4
  %145 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %145 to i64
  %146 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx183 = getelementptr inbounds %struct.site, %struct.site* %146, i64 %idxprom182
  store %struct.site* %arrayidx183, %struct.site** %s, align 8
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.214, %cond.end.180
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %loopend169, align 4
  %cmp185 = icmp slt i32 %147, %148
  br i1 %cmp185, label %for.body.187, label %for.end.217

for.body.187:                                     ; preds = %for.cond.184
  %149 = load i32, i32* %i, align 4
  %mul188 = mul nsw i32 4, %149
  %idxprom189 = sext i32 %mul188 to i64
  %150 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx190 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %150, i64 %idxprom189
  store %struct.su3_matrix* %arrayidx190, %struct.su3_matrix** %fat4, align 8
  %151 = load i32, i32* %i, align 4
  %mul191 = mul nsw i32 4, %151
  %idxprom192 = sext i32 %mul191 to i64
  %152 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx193 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %152, i64 %idxprom192
  store %struct.su3_matrix* %arrayidx193, %struct.su3_matrix** %long4, align 8
  %153 = load %struct.su3_matrix*, %struct.su3_matrix** %fat4, align 8
  %154 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %154 to i64
  %155 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx195 = getelementptr inbounds i8*, i8** %155, i64 %idxprom194
  %156 = load i8*, i8** %arrayidx195, align 8
  %157 = bitcast i8* %156 to %struct.su3_vector*
  %158 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %158 to i64
  %159 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %159, i64 %idxprom196
  %160 = load i8*, i8** %arrayidx197, align 8
  %161 = bitcast i8* %160 to %struct.su3_vector*
  %162 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %162 to i64
  %163 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 2), align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %163, i64 %idxprom198
  %164 = load i8*, i8** %arrayidx199, align 8
  %165 = bitcast i8* %164 to %struct.su3_vector*
  %166 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %166 to i64
  %167 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 3), align 8
  %arrayidx201 = getelementptr inbounds i8*, i8** %167, i64 %idxprom200
  %168 = load i8*, i8** %arrayidx201, align 8
  %169 = bitcast i8* %168 to %struct.su3_vector*
  %170 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %170 to i64
  %171 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %171, i64 %idxprom202
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %153, %struct.su3_vector* %157, %struct.su3_vector* %161, %struct.su3_vector* %165, %struct.su3_vector* %169, %struct.su3_vector* %arrayidx203)
  %172 = load %struct.su3_matrix*, %struct.su3_matrix** %long4, align 8
  %173 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %173 to i64
  %174 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 8), align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %174, i64 %idxprom204
  %175 = load i8*, i8** %arrayidx205, align 8
  %176 = bitcast i8* %175 to %struct.su3_vector*
  %177 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %177 to i64
  %178 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 9), align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %178, i64 %idxprom206
  %179 = load i8*, i8** %arrayidx207, align 8
  %180 = bitcast i8* %179 to %struct.su3_vector*
  %181 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %181 to i64
  %182 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 10), align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %182, i64 %idxprom208
  %183 = load i8*, i8** %arrayidx209, align 8
  %184 = bitcast i8* %183 to %struct.su3_vector*
  %185 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %185 to i64
  %186 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 11), align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %186, i64 %idxprom210
  %187 = load i8*, i8** %arrayidx211, align 8
  %188 = bitcast i8* %187 to %struct.su3_vector*
  %189 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %189 to i64
  %190 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 8), align 8
  %arrayidx213 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %190, i64 %idxprom212
  call void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %172, %struct.su3_vector* %176, %struct.su3_vector* %180, %struct.su3_vector* %184, %struct.su3_vector* %188, %struct.su3_vector* %arrayidx213)
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.187
  %191 = load i32, i32* %i, align 4
  %inc215 = add nsw i32 %191, 1
  store i32 %inc215, i32* %i, align 4
  %192 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr216 = getelementptr inbounds %struct.site, %struct.site* %192, i32 1
  store %struct.site* %incdec.ptr216, %struct.site** %s, align 8
  br label %for.cond.184

for.end.217:                                      ; preds = %for.cond.184
  store i32 0, i32* %dir, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.225, %for.end.217
  %193 = load i32, i32* %dir, align 4
  %cmp219 = icmp sle i32 %193, 3
  br i1 %cmp219, label %for.body.221, label %for.end.227

for.body.221:                                     ; preds = %for.cond.218
  %194 = load i32, i32* %dir, align 4
  %sub222 = sub nsw i32 7, %194
  %idxprom223 = sext i32 %sub222 to i64
  %195 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx224 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %195, i64 %idxprom223
  %196 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx224, align 8
  call void @wait_gather(%struct.msg_tag* %196)
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.221
  %197 = load i32, i32* %dir, align 4
  %inc226 = add nsw i32 %197, 1
  store i32 %inc226, i32* %dir, align 4
  br label %for.cond.218

for.end.227:                                      ; preds = %for.cond.218
  store i32 8, i32* %dir, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.235, %for.end.227
  %198 = load i32, i32* %dir, align 4
  %cmp229 = icmp sle i32 %198, 11
  br i1 %cmp229, label %for.body.231, label %for.end.237

for.body.231:                                     ; preds = %for.cond.228
  %199 = load i32, i32* %dir, align 4
  %sub232 = sub nsw i32 23, %199
  %idxprom233 = sext i32 %sub232 to i64
  %200 = load %struct.msg_tag**, %struct.msg_tag*** %tag.addr, align 8
  %arrayidx234 = getelementptr inbounds %struct.msg_tag*, %struct.msg_tag** %200, i64 %idxprom233
  %201 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx234, align 8
  call void @wait_gather(%struct.msg_tag* %201)
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.231
  %202 = load i32, i32* %dir, align 4
  %inc236 = add nsw i32 %202, 1
  store i32 %inc236, i32* %dir, align 4
  br label %for.cond.228

for.end.237:                                      ; preds = %for.cond.228
  %203 = load i32, i32* %parity.addr, align 4
  %cmp239 = icmp eq i32 %203, 2
  br i1 %cmp239, label %cond.true.241, label %cond.false.242

cond.true.241:                                    ; preds = %for.end.237
  %204 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.243

cond.false.242:                                   ; preds = %for.end.237
  %205 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.242, %cond.true.241
  %cond244 = phi i32 [ %204, %cond.true.241 ], [ %205, %cond.false.242 ]
  store i32 %cond244, i32* %loopend238, align 4
  %206 = load i32, i32* %parity.addr, align 4
  %cmp245 = icmp eq i32 %206, 1
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %cond.end.243
  %207 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.249

cond.false.248:                                   ; preds = %cond.end.243
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.248, %cond.true.247
  %cond250 = phi i32 [ %207, %cond.true.247 ], [ 0, %cond.false.248 ]
  store i32 %cond250, i32* %i, align 4
  %208 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %208 to i64
  %209 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx252 = getelementptr inbounds %struct.site, %struct.site* %209, i64 %idxprom251
  store %struct.site* %arrayidx252, %struct.site** %s, align 8
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.283, %cond.end.249
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %loopend238, align 4
  %cmp254 = icmp slt i32 %210, %211
  br i1 %cmp254, label %for.body.256, label %for.end.286

for.body.256:                                     ; preds = %for.cond.253
  %212 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %212 to i64
  %213 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx258 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %213, i64 %idxprom257
  %214 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %214 to i64
  %215 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 7), align 8
  %arrayidx260 = getelementptr inbounds i8*, i8** %215, i64 %idxprom259
  %216 = load i8*, i8** %arrayidx260, align 8
  %217 = bitcast i8* %216 to %struct.su3_vector*
  %218 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %218 to i64
  %219 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 6), align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %219, i64 %idxprom261
  %220 = load i8*, i8** %arrayidx262, align 8
  %221 = bitcast i8* %220 to %struct.su3_vector*
  %222 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %222 to i64
  %223 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 5), align 8
  %arrayidx264 = getelementptr inbounds i8*, i8** %223, i64 %idxprom263
  %224 = load i8*, i8** %arrayidx264, align 8
  %225 = bitcast i8* %224 to %struct.su3_vector*
  %226 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %226 to i64
  %227 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 4), align 8
  %arrayidx266 = getelementptr inbounds i8*, i8** %227, i64 %idxprom265
  %228 = load i8*, i8** %arrayidx266, align 8
  %229 = bitcast i8* %228 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %arrayidx258, %struct.su3_vector* %217, %struct.su3_vector* %221, %struct.su3_vector* %225, %struct.su3_vector* %229)
  %230 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %230 to i64
  %231 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 8), align 8
  %arrayidx268 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %231, i64 %idxprom267
  %232 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %232 to i64
  %233 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 15), align 8
  %arrayidx270 = getelementptr inbounds i8*, i8** %233, i64 %idxprom269
  %234 = load i8*, i8** %arrayidx270, align 8
  %235 = bitcast i8* %234 to %struct.su3_vector*
  %236 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %236 to i64
  %237 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 14), align 8
  %arrayidx272 = getelementptr inbounds i8*, i8** %237, i64 %idxprom271
  %238 = load i8*, i8** %arrayidx272, align 8
  %239 = bitcast i8* %238 to %struct.su3_vector*
  %240 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %240 to i64
  %241 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 13), align 8
  %arrayidx274 = getelementptr inbounds i8*, i8** %241, i64 %idxprom273
  %242 = load i8*, i8** %arrayidx274, align 8
  %243 = bitcast i8* %242 to %struct.su3_vector*
  %244 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %244 to i64
  %245 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 12), align 8
  %arrayidx276 = getelementptr inbounds i8*, i8** %245, i64 %idxprom275
  %246 = load i8*, i8** %arrayidx276, align 8
  %247 = bitcast i8* %246 to %struct.su3_vector*
  call void @sub_four_su3_vecs(%struct.su3_vector* %arrayidx268, %struct.su3_vector* %235, %struct.su3_vector* %239, %struct.su3_vector* %243, %struct.su3_vector* %247)
  %248 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %248 to i64
  %249 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx278 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %249, i64 %idxprom277
  %250 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %250 to i64
  %251 = load %struct.su3_vector*, %struct.su3_vector** getelementptr inbounds ([9 x %struct.su3_vector*], [9 x %struct.su3_vector*]* @temp, i32 0, i64 8), align 8
  %arrayidx280 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %251, i64 %idxprom279
  %252 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %252 to i64
  %253 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx282 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %253, i64 %idxprom281
  call void @add_su3_vector(%struct.su3_vector* %arrayidx278, %struct.su3_vector* %arrayidx280, %struct.su3_vector* %arrayidx282)
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.body.256
  %254 = load i32, i32* %i, align 4
  %inc284 = add nsw i32 %254, 1
  store i32 %inc284, i32* %i, align 4
  %255 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr285 = getelementptr inbounds %struct.site, %struct.site* %255, i32 1
  store %struct.site* %incdec.ptr285, %struct.site** %s, align 8
  br label %for.cond.253

for.end.286:                                      ; preds = %for.cond.253
  ret void
}

declare void @restart_gather_from_temp(i8*, i32, i32, i32, i8**, %struct.msg_tag*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
