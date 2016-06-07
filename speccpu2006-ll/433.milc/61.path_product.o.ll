; ModuleID = 'path_product.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@gen_pt = external global [16 x i8**], align 16

; Function Attrs: nounwind uwtable
define void @path_product(i32* %dir, i32 %length) #0 {
entry:
  %dir.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mtag0 = alloca %struct.msg_tag*, align 8
  %tempmat2t = alloca %struct.su3_matrix*, align 8
  %tempmat3t = alloca %struct.su3_matrix*, align 8
  %j = alloca i32, align 4
  %loopend = alloca i32, align 4
  %loopend36 = alloca i32, align 4
  %loopend55 = alloca i32, align 4
  %loopend84 = alloca i32, align 4
  %loopend114 = alloca i32, align 4
  %loopend146 = alloca i32, align 4
  %loopend164 = alloca i32, align 4
  %loopend200 = alloca i32, align 4
  %loopend223 = alloca i32, align 4
  %loopend256 = alloca i32, align 4
  %loopend269 = alloca i32, align 4
  %loopend289 = alloca i32, align 4
  %loopend302 = alloca i32, align 4
  store i32* %dir, i32** %dir.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 144) #3
  %1 = bitcast i8* %call to %struct.su3_matrix*
  store %struct.su3_matrix* %1, %struct.su3_matrix** %tempmat3t, align 8
  %2 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 144) #3
  %3 = bitcast i8* %call2 to %struct.su3_matrix*
  store %struct.su3_matrix* %3, %struct.su3_matrix** %tempmat2t, align 8
  %4 = load i32*, i32** %dir.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %dir.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx4, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx5 = getelementptr inbounds %struct.site, %struct.site* %8, i64 0
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx5, i32 0, i32 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %9 = bitcast %struct.su3_matrix* %arrayidx6 to i8*
  %10 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx7 = getelementptr inbounds %struct.site, %struct.site* %10, i64 0
  %11 = bitcast %struct.site* %arrayidx7 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  %12 = load i32*, i32** %dir.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 7, %13
  %14 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call10 = call %struct.msg_tag* @start_gather(i32 %conv8, i32 144, i32 %sub, i32 3, i8** %14)
  store %struct.msg_tag* %call10, %struct.msg_tag** %mtag0, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* @sites_on_node, align 4
  store i32 %15, i32* %loopend, align 4
  store i32 0, i32* %i, align 4
  %16 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %16, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %loopend, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32*, i32** %dir.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx13, align 4
  %sub14 = sub nsw i32 7, %20
  %idxprom15 = sext i32 %sub14 to i64
  %21 = load %struct.site*, %struct.site** %s, align 8
  %link16 = getelementptr inbounds %struct.site, %struct.site* %21, i32 0, i32 8
  %arrayidx17 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link16, i32 0, i64 %idxprom15
  %22 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 20
  call void @su3_adjoint(%struct.su3_matrix* %arrayidx17, %struct.su3_matrix* %tempmat1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %24, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  store i32 1, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.243, %if.end
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %length.addr, align 4
  %cmp19 = icmp slt i32 %25, %26
  br i1 %cmp19, label %for.body.21, label %for.end.245

for.body.21:                                      ; preds = %for.cond.18
  %27 = load i32, i32* %j, align 4
  %rem = srem i32 %27, 2
  %cmp22 = icmp eq i32 %rem, 1
  br i1 %cmp22, label %if.then.24, label %if.else.134

if.then.24:                                       ; preds = %for.body.21
  %28 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32*, i32** %dir.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %29, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp sle i32 %30, 3
  br i1 %cmp27, label %if.then.29, label %if.else.77

if.then.29:                                       ; preds = %if.then.24
  %31 = load i32, i32* %j, align 4
  %sub30 = sub nsw i32 %31, 1
  %idxprom31 = sext i32 %sub30 to i64
  %32 = load i32*, i32** %dir.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %32, i64 %idxprom31
  %33 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp sle i32 %33, 3
  br i1 %cmp33, label %if.then.35, label %if.else.54

if.then.35:                                       ; preds = %if.then.29
  %34 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %34)
  %35 = load i32, i32* @sites_on_node, align 4
  store i32 %35, i32* %loopend36, align 4
  store i32 0, i32* %i, align 4
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %36, %struct.site** %s, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.50, %if.then.35
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %loopend36, align 4
  %cmp38 = icmp slt i32 %37, %38
  br i1 %cmp38, label %for.body.40, label %for.end.53

for.body.40:                                      ; preds = %for.cond.37
  %39 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %40, i64 %idxprom41
  %41 = load i8*, i8** %arrayidx42, align 8
  %42 = bitcast i8* %41 to %struct.su3_matrix*
  %43 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = load i32*, i32** %dir.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %44, i64 %idxprom43
  %45 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load %struct.site*, %struct.site** %s, align 8
  %link46 = getelementptr inbounds %struct.site, %struct.site* %46, i32 0, i32 8
  %arrayidx47 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link46, i32 0, i64 %idxprom45
  %47 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %arrayidx49 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %48, i64 %idxprom48
  call void @mult_su3_nn(%struct.su3_matrix* %42, %struct.su3_matrix* %arrayidx47, %struct.su3_matrix* %arrayidx49)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.40
  %49 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %49, 1
  store i32 %inc51, i32* %i, align 4
  %50 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr52 = getelementptr inbounds %struct.site, %struct.site* %50, i32 1
  store %struct.site* %incdec.ptr52, %struct.site** %s, align 8
  br label %for.cond.37

for.end.53:                                       ; preds = %for.cond.37
  %51 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %51)
  br label %if.end.72

if.else.54:                                       ; preds = %if.then.29
  %52 = load i32, i32* @sites_on_node, align 4
  store i32 %52, i32* %loopend55, align 4
  store i32 0, i32* %i, align 4
  %53 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %53, %struct.site** %s, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.68, %if.else.54
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %loopend55, align 4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body.59, label %for.end.71

for.body.59:                                      ; preds = %for.cond.56
  %56 = load %struct.site*, %struct.site** %s, align 8
  %tempmat160 = getelementptr inbounds %struct.site, %struct.site* %56, i32 0, i32 20
  %57 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load i32*, i32** %dir.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %58, i64 %idxprom61
  %59 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %59 to i64
  %60 = load %struct.site*, %struct.site** %s, align 8
  %link64 = getelementptr inbounds %struct.site, %struct.site* %60, i32 0, i32 8
  %arrayidx65 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link64, i32 0, i64 %idxprom63
  %61 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %arrayidx67 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %62, i64 %idxprom66
  call void @mult_su3_nn(%struct.su3_matrix* %tempmat160, %struct.su3_matrix* %arrayidx65, %struct.su3_matrix* %arrayidx67)
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.59
  %63 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %63, 1
  store i32 %inc69, i32* %i, align 4
  %64 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr70 = getelementptr inbounds %struct.site, %struct.site* %64, i32 1
  store %struct.site* %incdec.ptr70, %struct.site** %s, align 8
  br label %for.cond.56

for.end.71:                                       ; preds = %for.cond.56
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.end.53
  %65 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %66 = bitcast %struct.su3_matrix* %65 to i8*
  %67 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %67 to i64
  %68 = load i32*, i32** %dir.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %68, i64 %idxprom73
  %69 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 7, %69
  %70 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call76 = call %struct.msg_tag* @start_gather_from_temp(i8* %66, i32 144, i32 %sub75, i32 3, i8** %70)
  store %struct.msg_tag* %call76, %struct.msg_tag** %mtag0, align 8
  br label %if.end.133

if.else.77:                                       ; preds = %if.then.24
  %71 = load i32, i32* %j, align 4
  %sub78 = sub nsw i32 %71, 1
  %idxprom79 = sext i32 %sub78 to i64
  %72 = load i32*, i32** %dir.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %72, i64 %idxprom79
  %73 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp sle i32 %73, 3
  br i1 %cmp81, label %if.then.83, label %if.else.101

if.then.83:                                       ; preds = %if.else.77
  %74 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %74)
  %75 = load i32, i32* @sites_on_node, align 4
  store i32 %75, i32* %loopend84, align 4
  store i32 0, i32* %i, align 4
  %76 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %76, %struct.site** %s, align 8
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.93, %if.then.83
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %loopend84, align 4
  %cmp86 = icmp slt i32 %77, %78
  br i1 %cmp86, label %for.body.88, label %for.end.96

for.body.88:                                      ; preds = %for.cond.85
  %79 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %80, i64 %idxprom89
  %81 = load i8*, i8** %arrayidx90, align 8
  %82 = bitcast i8* %81 to %struct.su3_matrix*
  %83 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %83 to i64
  %84 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %arrayidx92 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %84, i64 %idxprom91
  call void @su3mat_copy(%struct.su3_matrix* %82, %struct.su3_matrix* %arrayidx92)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.88
  %85 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %85, 1
  store i32 %inc94, i32* %i, align 4
  %86 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr95 = getelementptr inbounds %struct.site, %struct.site* %86, i32 1
  store %struct.site* %incdec.ptr95, %struct.site** %s, align 8
  br label %for.cond.85

for.end.96:                                       ; preds = %for.cond.85
  %87 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %87)
  %88 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %89 = bitcast %struct.su3_matrix* %88 to i8*
  %90 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %90 to i64
  %91 = load i32*, i32** %dir.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %91, i64 %idxprom97
  %92 = load i32, i32* %arrayidx98, align 4
  %sub99 = sub nsw i32 7, %92
  %93 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call100 = call %struct.msg_tag* @start_gather_from_temp(i8* %89, i32 144, i32 %sub99, i32 3, i8** %93)
  store %struct.msg_tag* %call100, %struct.msg_tag** %mtag0, align 8
  br label %if.end.113

if.else.101:                                      ; preds = %if.else.77
  %94 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx102 = getelementptr inbounds %struct.site, %struct.site* %94, i64 0
  %tempmat1103 = getelementptr inbounds %struct.site, %struct.site* %arrayidx102, i32 0, i32 20
  %95 = bitcast %struct.su3_matrix* %tempmat1103 to i8*
  %96 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx104 = getelementptr inbounds %struct.site, %struct.site* %96, i64 0
  %97 = bitcast %struct.site* %arrayidx104 to i8*
  %sub.ptr.lhs.cast105 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %97 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %conv108 = trunc i64 %sub.ptr.sub107 to i32
  %98 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load i32*, i32** %dir.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %99, i64 %idxprom109
  %100 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 7, %100
  %101 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call112 = call %struct.msg_tag* @start_gather(i32 %conv108, i32 144, i32 %sub111, i32 3, i8** %101)
  store %struct.msg_tag* %call112, %struct.msg_tag** %mtag0, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.101, %for.end.96
  %102 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %102)
  %103 = load i32, i32* @sites_on_node, align 4
  store i32 %103, i32* %loopend114, align 4
  store i32 0, i32* %i, align 4
  %104 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %104, %struct.site** %s, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.129, %if.end.113
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %loopend114, align 4
  %cmp116 = icmp slt i32 %105, %106
  br i1 %cmp116, label %for.body.118, label %for.end.132

for.body.118:                                     ; preds = %for.cond.115
  %107 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %107 to i64
  %108 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %108, i64 %idxprom119
  %109 = load i8*, i8** %arrayidx120, align 8
  %110 = bitcast i8* %109 to %struct.su3_matrix*
  %111 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %111 to i64
  %112 = load i32*, i32** %dir.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %112, i64 %idxprom121
  %113 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 7, %113
  %idxprom124 = sext i32 %sub123 to i64
  %114 = load %struct.site*, %struct.site** %s, align 8
  %link125 = getelementptr inbounds %struct.site, %struct.site* %114, i32 0, i32 8
  %arrayidx126 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link125, i32 0, i64 %idxprom124
  %115 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %115 to i64
  %116 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %arrayidx128 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %116, i64 %idxprom127
  call void @mult_su3_na(%struct.su3_matrix* %110, %struct.su3_matrix* %arrayidx126, %struct.su3_matrix* %arrayidx128)
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.118
  %117 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %117, 1
  store i32 %inc130, i32* %i, align 4
  %118 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr131 = getelementptr inbounds %struct.site, %struct.site* %118, i32 1
  store %struct.site* %incdec.ptr131, %struct.site** %s, align 8
  br label %for.cond.115

for.end.132:                                      ; preds = %for.cond.115
  %119 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %119)
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %if.end.72
  br label %if.end.242

if.else.134:                                      ; preds = %for.body.21
  %120 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %120 to i64
  %121 = load i32*, i32** %dir.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %121, i64 %idxprom135
  %122 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp sle i32 %122, 3
  br i1 %cmp137, label %if.then.139, label %if.else.193

if.then.139:                                      ; preds = %if.else.134
  %123 = load i32, i32* %j, align 4
  %sub140 = sub nsw i32 %123, 1
  %idxprom141 = sext i32 %sub140 to i64
  %124 = load i32*, i32** %dir.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %124, i64 %idxprom141
  %125 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp sle i32 %125, 3
  br i1 %cmp143, label %if.then.145, label %if.else.163

if.then.145:                                      ; preds = %if.then.139
  %126 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %126)
  %127 = load i32, i32* @sites_on_node, align 4
  store i32 %127, i32* %loopend146, align 4
  store i32 0, i32* %i, align 4
  %128 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %128, %struct.site** %s, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.159, %if.then.145
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %loopend146, align 4
  %cmp148 = icmp slt i32 %129, %130
  br i1 %cmp148, label %for.body.150, label %for.end.162

for.body.150:                                     ; preds = %for.cond.147
  %131 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %131 to i64
  %132 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %132, i64 %idxprom151
  %133 = load i8*, i8** %arrayidx152, align 8
  %134 = bitcast i8* %133 to %struct.su3_matrix*
  %135 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %135 to i64
  %136 = load i32*, i32** %dir.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %136, i64 %idxprom153
  %137 = load i32, i32* %arrayidx154, align 4
  %idxprom155 = sext i32 %137 to i64
  %138 = load %struct.site*, %struct.site** %s, align 8
  %link156 = getelementptr inbounds %struct.site, %struct.site* %138, i32 0, i32 8
  %arrayidx157 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link156, i32 0, i64 %idxprom155
  %139 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1158 = getelementptr inbounds %struct.site, %struct.site* %139, i32 0, i32 20
  call void @mult_su3_nn(%struct.su3_matrix* %134, %struct.su3_matrix* %arrayidx157, %struct.su3_matrix* %tempmat1158)
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.150
  %140 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %140, 1
  store i32 %inc160, i32* %i, align 4
  %141 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr161 = getelementptr inbounds %struct.site, %struct.site* %141, i32 1
  store %struct.site* %incdec.ptr161, %struct.site** %s, align 8
  br label %for.cond.147

for.end.162:                                      ; preds = %for.cond.147
  %142 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %142)
  br label %if.end.181

if.else.163:                                      ; preds = %if.then.139
  %143 = load i32, i32* @sites_on_node, align 4
  store i32 %143, i32* %loopend164, align 4
  store i32 0, i32* %i, align 4
  %144 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %144, %struct.site** %s, align 8
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.177, %if.else.163
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %loopend164, align 4
  %cmp166 = icmp slt i32 %145, %146
  br i1 %cmp166, label %for.body.168, label %for.end.180

for.body.168:                                     ; preds = %for.cond.165
  %147 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %147 to i64
  %148 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %arrayidx170 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %148, i64 %idxprom169
  %149 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %149 to i64
  %150 = load i32*, i32** %dir.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %150, i64 %idxprom171
  %151 = load i32, i32* %arrayidx172, align 4
  %idxprom173 = sext i32 %151 to i64
  %152 = load %struct.site*, %struct.site** %s, align 8
  %link174 = getelementptr inbounds %struct.site, %struct.site* %152, i32 0, i32 8
  %arrayidx175 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link174, i32 0, i64 %idxprom173
  %153 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1176 = getelementptr inbounds %struct.site, %struct.site* %153, i32 0, i32 20
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx170, %struct.su3_matrix* %arrayidx175, %struct.su3_matrix* %tempmat1176)
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.168
  %154 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %154, 1
  store i32 %inc178, i32* %i, align 4
  %155 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr179 = getelementptr inbounds %struct.site, %struct.site* %155, i32 1
  store %struct.site* %incdec.ptr179, %struct.site** %s, align 8
  br label %for.cond.165

for.end.180:                                      ; preds = %for.cond.165
  br label %if.end.181

if.end.181:                                       ; preds = %for.end.180, %for.end.162
  %156 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx182 = getelementptr inbounds %struct.site, %struct.site* %156, i64 0
  %tempmat1183 = getelementptr inbounds %struct.site, %struct.site* %arrayidx182, i32 0, i32 20
  %157 = bitcast %struct.su3_matrix* %tempmat1183 to i8*
  %158 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx184 = getelementptr inbounds %struct.site, %struct.site* %158, i64 0
  %159 = bitcast %struct.site* %arrayidx184 to i8*
  %sub.ptr.lhs.cast185 = ptrtoint i8* %157 to i64
  %sub.ptr.rhs.cast186 = ptrtoint i8* %159 to i64
  %sub.ptr.sub187 = sub i64 %sub.ptr.lhs.cast185, %sub.ptr.rhs.cast186
  %conv188 = trunc i64 %sub.ptr.sub187 to i32
  %160 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %160 to i64
  %161 = load i32*, i32** %dir.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %161, i64 %idxprom189
  %162 = load i32, i32* %arrayidx190, align 4
  %sub191 = sub nsw i32 7, %162
  %163 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call192 = call %struct.msg_tag* @start_gather(i32 %conv188, i32 144, i32 %sub191, i32 3, i8** %163)
  store %struct.msg_tag* %call192, %struct.msg_tag** %mtag0, align 8
  br label %if.end.241

if.else.193:                                      ; preds = %if.else.134
  %164 = load i32, i32* %j, align 4
  %sub194 = sub nsw i32 %164, 1
  %idxprom195 = sext i32 %sub194 to i64
  %165 = load i32*, i32** %dir.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %165, i64 %idxprom195
  %166 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp sle i32 %166, 3
  br i1 %cmp197, label %if.then.199, label %if.else.217

if.then.199:                                      ; preds = %if.else.193
  %167 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %167)
  %168 = load i32, i32* @sites_on_node, align 4
  store i32 %168, i32* %loopend200, align 4
  store i32 0, i32* %i, align 4
  %169 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %169, %struct.site** %s, align 8
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.209, %if.then.199
  %170 = load i32, i32* %i, align 4
  %171 = load i32, i32* %loopend200, align 4
  %cmp202 = icmp slt i32 %170, %171
  br i1 %cmp202, label %for.body.204, label %for.end.212

for.body.204:                                     ; preds = %for.cond.201
  %172 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %172 to i64
  %173 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %173, i64 %idxprom205
  %174 = load i8*, i8** %arrayidx206, align 8
  %175 = bitcast i8* %174 to %struct.su3_matrix*
  %176 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %176 to i64
  %177 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %arrayidx208 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %177, i64 %idxprom207
  call void @su3mat_copy(%struct.su3_matrix* %175, %struct.su3_matrix* %arrayidx208)
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.body.204
  %178 = load i32, i32* %i, align 4
  %inc210 = add nsw i32 %178, 1
  store i32 %inc210, i32* %i, align 4
  %179 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr211 = getelementptr inbounds %struct.site, %struct.site* %179, i32 1
  store %struct.site* %incdec.ptr211, %struct.site** %s, align 8
  br label %for.cond.201

for.end.212:                                      ; preds = %for.cond.201
  %180 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %180)
  %181 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %182 = bitcast %struct.su3_matrix* %181 to i8*
  %183 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %183 to i64
  %184 = load i32*, i32** %dir.addr, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %184, i64 %idxprom213
  %185 = load i32, i32* %arrayidx214, align 4
  %sub215 = sub nsw i32 7, %185
  %186 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call216 = call %struct.msg_tag* @start_gather_from_temp(i8* %182, i32 144, i32 %sub215, i32 3, i8** %186)
  store %struct.msg_tag* %call216, %struct.msg_tag** %mtag0, align 8
  br label %if.end.222

if.else.217:                                      ; preds = %if.else.193
  %187 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %188 = bitcast %struct.su3_matrix* %187 to i8*
  %189 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %189 to i64
  %190 = load i32*, i32** %dir.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %190, i64 %idxprom218
  %191 = load i32, i32* %arrayidx219, align 4
  %sub220 = sub nsw i32 7, %191
  %192 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call221 = call %struct.msg_tag* @start_gather_from_temp(i8* %188, i32 144, i32 %sub220, i32 3, i8** %192)
  store %struct.msg_tag* %call221, %struct.msg_tag** %mtag0, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.217, %for.end.212
  %193 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %193)
  %194 = load i32, i32* @sites_on_node, align 4
  store i32 %194, i32* %loopend223, align 4
  store i32 0, i32* %i, align 4
  %195 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %195, %struct.site** %s, align 8
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.237, %if.end.222
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %loopend223, align 4
  %cmp225 = icmp slt i32 %196, %197
  br i1 %cmp225, label %for.body.227, label %for.end.240

for.body.227:                                     ; preds = %for.cond.224
  %198 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %198 to i64
  %199 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %199, i64 %idxprom228
  %200 = load i8*, i8** %arrayidx229, align 8
  %201 = bitcast i8* %200 to %struct.su3_matrix*
  %202 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %202 to i64
  %203 = load i32*, i32** %dir.addr, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %203, i64 %idxprom230
  %204 = load i32, i32* %arrayidx231, align 4
  %sub232 = sub nsw i32 7, %204
  %idxprom233 = sext i32 %sub232 to i64
  %205 = load %struct.site*, %struct.site** %s, align 8
  %link234 = getelementptr inbounds %struct.site, %struct.site* %205, i32 0, i32 8
  %arrayidx235 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link234, i32 0, i64 %idxprom233
  %206 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1236 = getelementptr inbounds %struct.site, %struct.site* %206, i32 0, i32 20
  call void @mult_su3_na(%struct.su3_matrix* %201, %struct.su3_matrix* %arrayidx235, %struct.su3_matrix* %tempmat1236)
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.227
  %207 = load i32, i32* %i, align 4
  %inc238 = add nsw i32 %207, 1
  store i32 %inc238, i32* %i, align 4
  %208 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr239 = getelementptr inbounds %struct.site, %struct.site* %208, i32 1
  store %struct.site* %incdec.ptr239, %struct.site** %s, align 8
  br label %for.cond.224

for.end.240:                                      ; preds = %for.cond.224
  %209 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %209)
  br label %if.end.241

if.end.241:                                       ; preds = %for.end.240, %if.end.181
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.133
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %210 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %210, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.18

for.end.245:                                      ; preds = %for.cond.18
  %211 = load i32, i32* %length.addr, align 4
  %rem246 = srem i32 %211, 2
  %cmp247 = icmp eq i32 %rem246, 0
  br i1 %cmp247, label %if.then.249, label %if.else.282

if.then.249:                                      ; preds = %for.end.245
  %212 = load i32, i32* %length.addr, align 4
  %sub250 = sub nsw i32 %212, 1
  %idxprom251 = sext i32 %sub250 to i64
  %213 = load i32*, i32** %dir.addr, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %213, i64 %idxprom251
  %214 = load i32, i32* %arrayidx252, align 4
  %cmp253 = icmp sle i32 %214, 3
  br i1 %cmp253, label %if.then.255, label %if.else.268

if.then.255:                                      ; preds = %if.then.249
  %215 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %215)
  %216 = load i32, i32* @sites_on_node, align 4
  store i32 %216, i32* %loopend256, align 4
  store i32 0, i32* %i, align 4
  %217 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %217, %struct.site** %s, align 8
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.264, %if.then.255
  %218 = load i32, i32* %i, align 4
  %219 = load i32, i32* %loopend256, align 4
  %cmp258 = icmp slt i32 %218, %219
  br i1 %cmp258, label %for.body.260, label %for.end.267

for.body.260:                                     ; preds = %for.cond.257
  %220 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %220 to i64
  %221 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %221, i64 %idxprom261
  %222 = load i8*, i8** %arrayidx262, align 8
  %223 = bitcast i8* %222 to %struct.su3_matrix*
  %224 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1263 = getelementptr inbounds %struct.site, %struct.site* %224, i32 0, i32 20
  call void @su3mat_copy(%struct.su3_matrix* %223, %struct.su3_matrix* %tempmat1263)
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.body.260
  %225 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %225, 1
  store i32 %inc265, i32* %i, align 4
  %226 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr266 = getelementptr inbounds %struct.site, %struct.site* %226, i32 1
  store %struct.site* %incdec.ptr266, %struct.site** %s, align 8
  br label %for.cond.257

for.end.267:                                      ; preds = %for.cond.257
  %227 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %227)
  br label %if.end.281

if.else.268:                                      ; preds = %if.then.249
  %228 = load i32, i32* @sites_on_node, align 4
  store i32 %228, i32* %loopend269, align 4
  store i32 0, i32* %i, align 4
  %229 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %229, %struct.site** %s, align 8
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.277, %if.else.268
  %230 = load i32, i32* %i, align 4
  %231 = load i32, i32* %loopend269, align 4
  %cmp271 = icmp slt i32 %230, %231
  br i1 %cmp271, label %for.body.273, label %for.end.280

for.body.273:                                     ; preds = %for.cond.270
  %232 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %232 to i64
  %233 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %arrayidx275 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %233, i64 %idxprom274
  %234 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1276 = getelementptr inbounds %struct.site, %struct.site* %234, i32 0, i32 20
  call void @su3mat_copy(%struct.su3_matrix* %arrayidx275, %struct.su3_matrix* %tempmat1276)
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.273
  %235 = load i32, i32* %i, align 4
  %inc278 = add nsw i32 %235, 1
  store i32 %inc278, i32* %i, align 4
  %236 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr279 = getelementptr inbounds %struct.site, %struct.site* %236, i32 1
  store %struct.site* %incdec.ptr279, %struct.site** %s, align 8
  br label %for.cond.270

for.end.280:                                      ; preds = %for.cond.270
  br label %if.end.281

if.end.281:                                       ; preds = %for.end.280, %for.end.267
  br label %if.end.316

if.else.282:                                      ; preds = %for.end.245
  %237 = load i32, i32* %length.addr, align 4
  %sub283 = sub nsw i32 %237, 1
  %idxprom284 = sext i32 %sub283 to i64
  %238 = load i32*, i32** %dir.addr, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %238, i64 %idxprom284
  %239 = load i32, i32* %arrayidx285, align 4
  %cmp286 = icmp sle i32 %239, 3
  br i1 %cmp286, label %if.then.288, label %if.else.314

if.then.288:                                      ; preds = %if.else.282
  %240 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %240)
  %241 = load i32, i32* @sites_on_node, align 4
  store i32 %241, i32* %loopend289, align 4
  store i32 0, i32* %i, align 4
  %242 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %242, %struct.site** %s, align 8
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.298, %if.then.288
  %243 = load i32, i32* %i, align 4
  %244 = load i32, i32* %loopend289, align 4
  %cmp291 = icmp slt i32 %243, %244
  br i1 %cmp291, label %for.body.293, label %for.end.301

for.body.293:                                     ; preds = %for.cond.290
  %245 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %245 to i64
  %246 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx295 = getelementptr inbounds i8*, i8** %246, i64 %idxprom294
  %247 = load i8*, i8** %arrayidx295, align 8
  %248 = bitcast i8* %247 to %struct.su3_matrix*
  %249 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %249 to i64
  %250 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %arrayidx297 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %250, i64 %idxprom296
  call void @su3mat_copy(%struct.su3_matrix* %248, %struct.su3_matrix* %arrayidx297)
  br label %for.inc.298

for.inc.298:                                      ; preds = %for.body.293
  %251 = load i32, i32* %i, align 4
  %inc299 = add nsw i32 %251, 1
  store i32 %inc299, i32* %i, align 4
  %252 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr300 = getelementptr inbounds %struct.site, %struct.site* %252, i32 1
  store %struct.site* %incdec.ptr300, %struct.site** %s, align 8
  br label %for.cond.290

for.end.301:                                      ; preds = %for.cond.290
  %253 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %253)
  %254 = load i32, i32* @sites_on_node, align 4
  store i32 %254, i32* %loopend302, align 4
  store i32 0, i32* %i, align 4
  %255 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %255, %struct.site** %s, align 8
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.310, %for.end.301
  %256 = load i32, i32* %i, align 4
  %257 = load i32, i32* %loopend302, align 4
  %cmp304 = icmp slt i32 %256, %257
  br i1 %cmp304, label %for.body.306, label %for.end.313

for.body.306:                                     ; preds = %for.cond.303
  %258 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %258 to i64
  %259 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %arrayidx308 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %259, i64 %idxprom307
  %260 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1309 = getelementptr inbounds %struct.site, %struct.site* %260, i32 0, i32 20
  call void @su3mat_copy(%struct.su3_matrix* %arrayidx308, %struct.su3_matrix* %tempmat1309)
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.306
  %261 = load i32, i32* %i, align 4
  %inc311 = add nsw i32 %261, 1
  store i32 %inc311, i32* %i, align 4
  %262 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr312 = getelementptr inbounds %struct.site, %struct.site* %262, i32 1
  store %struct.site* %incdec.ptr312, %struct.site** %s, align 8
  br label %for.cond.303

for.end.313:                                      ; preds = %for.cond.303
  br label %if.end.315

if.else.314:                                      ; preds = %if.else.282
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.314, %for.end.313
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.281
  %263 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat3t, align 8
  %264 = bitcast %struct.su3_matrix* %263 to i8*
  call void @free(i8* %264) #3
  %265 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat2t, align 8
  %266 = bitcast %struct.su3_matrix* %265 to i8*
  call void @free(i8* %266) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #2

declare void @su3_adjoint(%struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @wait_gather(%struct.msg_tag*) #2

declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @cleanup_gather(%struct.msg_tag*) #2

declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #2

declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @mult_su3_na(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
