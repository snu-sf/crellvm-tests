; ModuleID = 'programs_new/Python-new/sixstep.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnt_params = type { i32, i64, i64, [0 x i64] }

@mpd_free = external hidden global void (i8*)*, align 8
@mpd_moduli = external hidden constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @six_step_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  %log2n = alloca i64, align 8
  %C = alloca i64, align 8
  %R = alloca i64, align 8
  %kernel = alloca i64, align 8
  %umod = alloca i64, align 8
  %x = alloca i64*, align 8
  %w0 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %wstep = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !21, metadata !145), !dbg !146
  store i64 %n, i64* %n.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !22, metadata !145), !dbg !149
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !150
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !23, metadata !145), !dbg !152
  %0 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !153
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !153
  call void @llvm.dbg.declare(metadata %struct.fnt_params** %tparams, metadata !24, metadata !145), !dbg !154
  %1 = bitcast i64* %log2n to i8*, !dbg !155
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %log2n, metadata !36, metadata !145), !dbg !156
  %2 = bitcast i64* %C to i8*, !dbg !155
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %C, metadata !37, metadata !145), !dbg !157
  %3 = bitcast i64* %R to i8*, !dbg !155
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %R, metadata !38, metadata !145), !dbg !158
  %4 = bitcast i64* %kernel to i8*, !dbg !159
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !159
  call void @llvm.dbg.declare(metadata i64* %kernel, metadata !39, metadata !145), !dbg !160
  %5 = bitcast i64* %umod to i8*, !dbg !161
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !161
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !40, metadata !145), !dbg !162
  %6 = bitcast i64** %x to i8*, !dbg !163
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !163
  call void @llvm.dbg.declare(metadata i64** %x, metadata !41, metadata !145), !dbg !164
  %7 = bitcast i64* %w0 to i8*, !dbg !163
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %w0, metadata !42, metadata !145), !dbg !165
  %8 = bitcast i64* %w1 to i8*, !dbg !163
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %w1, metadata !43, metadata !145), !dbg !166
  %9 = bitcast i64* %wstep to i8*, !dbg !163
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %wstep, metadata !44, metadata !145), !dbg !167
  %10 = bitcast i64* %i to i8*, !dbg !168
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !168
  call void @llvm.dbg.declare(metadata i64* %i, metadata !45, metadata !145), !dbg !169
  %11 = bitcast i64* %k to i8*, !dbg !168
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !168
  call void @llvm.dbg.declare(metadata i64* %k, metadata !46, metadata !145), !dbg !170
  %12 = load i64, i64* %n.addr, align 8, !dbg !171, !tbaa !147
  %call = call i32 @mpd_bsr(i64 %12), !dbg !172
  %conv = sext i32 %call to i64, !dbg !172
  store i64 %conv, i64* %log2n, align 8, !dbg !173, !tbaa !147
  %13 = load i64, i64* %log2n, align 8, !dbg !174, !tbaa !147
  %div = udiv i64 %13, 2, !dbg !175
  %shl = shl i64 1, %div, !dbg !176
  store i64 %shl, i64* %C, align 8, !dbg !177, !tbaa !147
  %14 = load i64, i64* %log2n, align 8, !dbg !178, !tbaa !147
  %15 = load i64, i64* %log2n, align 8, !dbg !179, !tbaa !147
  %div1 = udiv i64 %15, 2, !dbg !180
  %sub = sub i64 %14, %div1, !dbg !181
  %shl2 = shl i64 1, %sub, !dbg !182
  store i64 %shl2, i64* %R, align 8, !dbg !183, !tbaa !147
  %16 = load i64*, i64** %a.addr, align 8, !dbg !184, !tbaa !141
  %17 = load i64, i64* %R, align 8, !dbg !186, !tbaa !147
  %18 = load i64, i64* %C, align 8, !dbg !187, !tbaa !147
  %call3 = call i32 @transpose_pow2(i64* %16, i64 %17, i64 %18), !dbg !188
  %tobool = icmp ne i32 %call3, 0, !dbg !188
  br i1 %tobool, label %if.end, label %if.then, !dbg !189

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !190

if.end:                                           ; preds = %entry
  %19 = load i64, i64* %R, align 8, !dbg !192, !tbaa !147
  %20 = load i32, i32* %modnum.addr, align 4, !dbg !194, !tbaa !150
  %call4 = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %19, i32 -1, i32 %20), !dbg !195
  store %struct.fnt_params* %call4, %struct.fnt_params** %tparams, align 8, !dbg !196, !tbaa !141
  %cmp = icmp eq %struct.fnt_params* %call4, null, !dbg !197
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !198

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !199
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !199

if.end.7:                                         ; preds = %if.end
  %21 = load i64*, i64** %a.addr, align 8, !dbg !201, !tbaa !141
  store i64* %21, i64** %x, align 8, !dbg !203, !tbaa !141
  br label %for.cond, !dbg !204

for.cond:                                         ; preds = %for.inc, %if.end.7
  %22 = load i64*, i64** %x, align 8, !dbg !205, !tbaa !141
  %23 = load i64*, i64** %a.addr, align 8, !dbg !209, !tbaa !141
  %24 = load i64, i64* %n.addr, align 8, !dbg !210, !tbaa !147
  %add.ptr = getelementptr i64, i64* %23, i64 %24, !dbg !211
  %cmp8 = icmp ult i64* %22, %add.ptr, !dbg !212
  br i1 %cmp8, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %for.cond
  %25 = load i64*, i64** %x, align 8, !dbg !214, !tbaa !141
  %26 = load i64, i64* %R, align 8, !dbg !216, !tbaa !147
  %27 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !217, !tbaa !141
  call void @fnt_dif2(i64* %25, i64 %26, %struct.fnt_params* %27), !dbg !218
  br label %for.inc, !dbg !219

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %R, align 8, !dbg !220, !tbaa !147
  %29 = load i64*, i64** %x, align 8, !dbg !221, !tbaa !141
  %add.ptr10 = getelementptr i64, i64* %29, i64 %28, !dbg !221
  store i64* %add.ptr10, i64** %x, align 8, !dbg !221, !tbaa !141
  br label %for.cond, !dbg !222

for.end:                                          ; preds = %for.cond
  %30 = load i64*, i64** %a.addr, align 8, !dbg !223, !tbaa !141
  %31 = load i64, i64* %C, align 8, !dbg !225, !tbaa !147
  %32 = load i64, i64* %R, align 8, !dbg !226, !tbaa !147
  %call11 = call i32 @transpose_pow2(i64* %30, i64 %31, i64 %32), !dbg !227
  %tobool12 = icmp ne i32 %call11, 0, !dbg !227
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !228

if.then.13:                                       ; preds = %for.end
  %33 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !229, !tbaa !141
  %34 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !231, !tbaa !141
  %35 = bitcast %struct.fnt_params* %34 to i8*, !dbg !231
  call void %33(i8* %35), !dbg !229
  store i32 0, i32* %retval, !dbg !232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !232

if.end.14:                                        ; preds = %for.end
  %36 = load i32, i32* %modnum.addr, align 4, !dbg !233, !tbaa !150
  call void @std_setmodulus(i32 %36, i64* %umod), !dbg !234
  %37 = load i64, i64* %n.addr, align 8, !dbg !235, !tbaa !147
  %38 = load i32, i32* %modnum.addr, align 4, !dbg !236, !tbaa !150
  %call15 = call i64 @_mpd_getkernel(i64 %37, i32 -1, i32 %38), !dbg !237
  store i64 %call15, i64* %kernel, align 8, !dbg !238, !tbaa !147
  store i64 1, i64* %i, align 8, !dbg !239, !tbaa !147
  br label %for.cond.16, !dbg !240

for.cond.16:                                      ; preds = %for.inc.40, %if.end.14
  %39 = load i64, i64* %i, align 8, !dbg !241, !tbaa !147
  %40 = load i64, i64* %R, align 8, !dbg !244, !tbaa !147
  %cmp17 = icmp ult i64 %39, %40, !dbg !245
  br i1 %cmp17, label %for.body.19, label %for.end.41, !dbg !246

for.body.19:                                      ; preds = %for.cond.16
  store i64 1, i64* %w0, align 8, !dbg !247, !tbaa !147
  %41 = load i64, i64* %kernel, align 8, !dbg !248, !tbaa !147
  %42 = load i64, i64* %i, align 8, !dbg !249, !tbaa !147
  %43 = load i64, i64* %umod, align 8, !dbg !250, !tbaa !147
  %call20 = call i64 @x64_powmod(i64 %41, i64 %42, i64 %43), !dbg !251
  store i64 %call20, i64* %w1, align 8, !dbg !252, !tbaa !147
  %44 = load i64, i64* %w1, align 8, !dbg !253, !tbaa !147
  %45 = load i64, i64* %w1, align 8, !dbg !254, !tbaa !147
  %46 = load i64, i64* %umod, align 8, !dbg !255, !tbaa !147
  %call21 = call i64 @x64_mulmod(i64 %44, i64 %45, i64 %46), !dbg !256
  store i64 %call21, i64* %wstep, align 8, !dbg !257, !tbaa !147
  store i64 0, i64* %k, align 8, !dbg !258, !tbaa !147
  br label %for.cond.22, !dbg !259

for.cond.22:                                      ; preds = %for.inc.37, %for.body.19
  %47 = load i64, i64* %k, align 8, !dbg !260, !tbaa !147
  %48 = load i64, i64* %C, align 8, !dbg !263, !tbaa !147
  %cmp23 = icmp ult i64 %47, %48, !dbg !264
  br i1 %cmp23, label %for.body.25, label %for.end.39, !dbg !265

for.body.25:                                      ; preds = %for.cond.22
  %49 = bitcast i64* %x0 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !266
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !47, metadata !145), !dbg !267
  %50 = load i64, i64* %i, align 8, !dbg !268, !tbaa !147
  %51 = load i64, i64* %C, align 8, !dbg !269, !tbaa !147
  %mul = mul i64 %50, %51, !dbg !270
  %52 = load i64, i64* %k, align 8, !dbg !271, !tbaa !147
  %add = add i64 %mul, %52, !dbg !272
  %53 = load i64*, i64** %a.addr, align 8, !dbg !273, !tbaa !141
  %arrayidx = getelementptr i64, i64* %53, i64 %add, !dbg !273
  %54 = load i64, i64* %arrayidx, align 8, !dbg !273, !tbaa !147
  store i64 %54, i64* %x0, align 8, !dbg !267, !tbaa !147
  %55 = bitcast i64* %x1 to i8*, !dbg !274
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !274
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !54, metadata !145), !dbg !275
  %56 = load i64, i64* %i, align 8, !dbg !276, !tbaa !147
  %57 = load i64, i64* %C, align 8, !dbg !277, !tbaa !147
  %mul26 = mul i64 %56, %57, !dbg !278
  %58 = load i64, i64* %k, align 8, !dbg !279, !tbaa !147
  %add27 = add i64 %mul26, %58, !dbg !280
  %add28 = add i64 %add27, 1, !dbg !281
  %59 = load i64*, i64** %a.addr, align 8, !dbg !282, !tbaa !141
  %arrayidx29 = getelementptr i64, i64* %59, i64 %add28, !dbg !282
  %60 = load i64, i64* %arrayidx29, align 8, !dbg !282, !tbaa !147
  store i64 %60, i64* %x1, align 8, !dbg !275, !tbaa !147
  %61 = load i64, i64* %w0, align 8, !dbg !283, !tbaa !147
  %62 = load i64, i64* %w1, align 8, !dbg !284, !tbaa !147
  %63 = load i64, i64* %umod, align 8, !dbg !285, !tbaa !147
  call void @x64_mulmod2(i64* %x0, i64 %61, i64* %x1, i64 %62, i64 %63), !dbg !286
  %64 = load i64, i64* %wstep, align 8, !dbg !287, !tbaa !147
  %65 = load i64, i64* %umod, align 8, !dbg !288, !tbaa !147
  call void @x64_mulmod2c(i64* %w0, i64* %w1, i64 %64, i64 %65), !dbg !289
  %66 = load i64, i64* %x0, align 8, !dbg !290, !tbaa !147
  %67 = load i64, i64* %i, align 8, !dbg !291, !tbaa !147
  %68 = load i64, i64* %C, align 8, !dbg !292, !tbaa !147
  %mul30 = mul i64 %67, %68, !dbg !293
  %69 = load i64, i64* %k, align 8, !dbg !294, !tbaa !147
  %add31 = add i64 %mul30, %69, !dbg !295
  %70 = load i64*, i64** %a.addr, align 8, !dbg !296, !tbaa !141
  %arrayidx32 = getelementptr i64, i64* %70, i64 %add31, !dbg !296
  store i64 %66, i64* %arrayidx32, align 8, !dbg !297, !tbaa !147
  %71 = load i64, i64* %x1, align 8, !dbg !298, !tbaa !147
  %72 = load i64, i64* %i, align 8, !dbg !299, !tbaa !147
  %73 = load i64, i64* %C, align 8, !dbg !300, !tbaa !147
  %mul33 = mul i64 %72, %73, !dbg !301
  %74 = load i64, i64* %k, align 8, !dbg !302, !tbaa !147
  %add34 = add i64 %mul33, %74, !dbg !303
  %add35 = add i64 %add34, 1, !dbg !304
  %75 = load i64*, i64** %a.addr, align 8, !dbg !305, !tbaa !141
  %arrayidx36 = getelementptr i64, i64* %75, i64 %add35, !dbg !305
  store i64 %71, i64* %arrayidx36, align 8, !dbg !306, !tbaa !147
  %76 = bitcast i64* %x1 to i8*, !dbg !307
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !307
  %77 = bitcast i64* %x0 to i8*, !dbg !307
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !307
  br label %for.inc.37, !dbg !308

for.inc.37:                                       ; preds = %for.body.25
  %78 = load i64, i64* %k, align 8, !dbg !309, !tbaa !147
  %add38 = add i64 %78, 2, !dbg !309
  store i64 %add38, i64* %k, align 8, !dbg !309, !tbaa !147
  br label %for.cond.22, !dbg !310

for.end.39:                                       ; preds = %for.cond.22
  br label %for.inc.40, !dbg !311

for.inc.40:                                       ; preds = %for.end.39
  %79 = load i64, i64* %i, align 8, !dbg !312, !tbaa !147
  %inc = add i64 %79, 1, !dbg !312
  store i64 %inc, i64* %i, align 8, !dbg !312, !tbaa !147
  br label %for.cond.16, !dbg !313

for.end.41:                                       ; preds = %for.cond.16
  %80 = load i64, i64* %C, align 8, !dbg !314, !tbaa !147
  %81 = load i64, i64* %R, align 8, !dbg !316, !tbaa !147
  %cmp42 = icmp ne i64 %80, %81, !dbg !317
  br i1 %cmp42, label %if.then.44, label %if.end.50, !dbg !318

if.then.44:                                       ; preds = %for.end.41
  %82 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !319, !tbaa !141
  %83 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !321, !tbaa !141
  %84 = bitcast %struct.fnt_params* %83 to i8*, !dbg !321
  call void %82(i8* %84), !dbg !319
  %85 = load i64, i64* %C, align 8, !dbg !322, !tbaa !147
  %86 = load i32, i32* %modnum.addr, align 4, !dbg !324, !tbaa !150
  %call45 = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %85, i32 -1, i32 %86), !dbg !325
  store %struct.fnt_params* %call45, %struct.fnt_params** %tparams, align 8, !dbg !326, !tbaa !141
  %cmp46 = icmp eq %struct.fnt_params* %call45, null, !dbg !327
  br i1 %cmp46, label %if.then.48, label %if.end.49, !dbg !328

if.then.48:                                       ; preds = %if.then.44
  store i32 0, i32* %retval, !dbg !329
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !329

if.end.49:                                        ; preds = %if.then.44
  br label %if.end.50, !dbg !331

if.end.50:                                        ; preds = %if.end.49, %for.end.41
  %87 = load i64*, i64** %a.addr, align 8, !dbg !332, !tbaa !141
  store i64* %87, i64** %x, align 8, !dbg !334, !tbaa !141
  br label %for.cond.51, !dbg !335

for.cond.51:                                      ; preds = %for.inc.56, %if.end.50
  %88 = load i64*, i64** %x, align 8, !dbg !336, !tbaa !141
  %89 = load i64*, i64** %a.addr, align 8, !dbg !340, !tbaa !141
  %90 = load i64, i64* %n.addr, align 8, !dbg !341, !tbaa !147
  %add.ptr52 = getelementptr i64, i64* %89, i64 %90, !dbg !342
  %cmp53 = icmp ult i64* %88, %add.ptr52, !dbg !343
  br i1 %cmp53, label %for.body.55, label %for.end.58, !dbg !344

for.body.55:                                      ; preds = %for.cond.51
  %91 = load i64*, i64** %x, align 8, !dbg !345, !tbaa !141
  %92 = load i64, i64* %C, align 8, !dbg !347, !tbaa !147
  %93 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !348, !tbaa !141
  call void @fnt_dif2(i64* %91, i64 %92, %struct.fnt_params* %93), !dbg !349
  br label %for.inc.56, !dbg !350

for.inc.56:                                       ; preds = %for.body.55
  %94 = load i64, i64* %C, align 8, !dbg !351, !tbaa !147
  %95 = load i64*, i64** %x, align 8, !dbg !352, !tbaa !141
  %add.ptr57 = getelementptr i64, i64* %95, i64 %94, !dbg !352
  store i64* %add.ptr57, i64** %x, align 8, !dbg !352, !tbaa !141
  br label %for.cond.51, !dbg !353

for.end.58:                                       ; preds = %for.cond.51
  %96 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !354, !tbaa !141
  %97 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !355, !tbaa !141
  %98 = bitcast %struct.fnt_params* %97 to i8*, !dbg !355
  call void %96(i8* %98), !dbg !354
  store i32 1, i32* %retval, !dbg !356
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !356

cleanup:                                          ; preds = %for.end.58, %if.then.48, %if.then.13, %if.then.6, %if.then
  %99 = bitcast i64* %k to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !357
  %100 = bitcast i64* %i to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !357
  %101 = bitcast i64* %wstep to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !357
  %102 = bitcast i64* %w1 to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !357
  %103 = bitcast i64* %w0 to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !357
  %104 = bitcast i64** %x to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !357
  %105 = bitcast i64* %umod to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !357
  %106 = bitcast i64* %kernel to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !357
  %107 = bitcast i64* %R to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !357
  %108 = bitcast i64* %C to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !357
  %109 = bitcast i64* %log2n to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %109) #2, !dbg !357
  %110 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !357
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !357
  %111 = load i32, i32* %retval, !dbg !357
  ret i32 %111, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mpd_bsr(i64 %a) #3 {
entry:
  %a.addr = alloca i64, align 8
  %retval1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !85, metadata !145), !dbg !358
  %0 = bitcast i64* %retval1 to i8*, !dbg !359
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !359
  call void @llvm.dbg.declare(metadata i64* %retval1, metadata !86, metadata !145), !dbg !360
  %1 = load i64, i64* %a.addr, align 8, !dbg !361, !tbaa !147
  %2 = call i64 asm "bsrq $1, $0\0A\09", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %1) #1, !dbg !362, !srcloc !363
  store i64 %2, i64* %retval1, align 8, !dbg !362, !tbaa !147
  %3 = load i64, i64* %retval1, align 8, !dbg !364, !tbaa !147
  %conv = trunc i64 %3 to i32, !dbg !365
  %4 = bitcast i64* %retval1 to i8*, !dbg !366
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !366
  ret i32 %conv, !dbg !367
}

declare hidden i32 @transpose_pow2(i64*, i64, i64) #4

declare hidden %struct.fnt_params* @_mpd_init_fnt_params(i64, i32, i32) #4

declare hidden void @fnt_dif2(i64*, i64, %struct.fnt_params*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @std_setmodulus(i32 %modnum, i64* %umod) #3 {
entry:
  %modnum.addr = alloca i32, align 4
  %umod.addr = alloca i64*, align 8
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !150
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !91, metadata !145), !dbg !368
  store i64* %umod, i64** %umod.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %umod.addr, metadata !92, metadata !145), !dbg !369
  %0 = load i32, i32* %modnum.addr, align 4, !dbg !370, !tbaa !150
  %idxprom = sext i32 %0 to i64, !dbg !371
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_moduli, i32 0, i64 %idxprom, !dbg !371
  %1 = load i64, i64* %arrayidx, align 8, !dbg !371, !tbaa !147
  %2 = load i64*, i64** %umod.addr, align 8, !dbg !372, !tbaa !141
  store i64 %1, i64* %2, align 8, !dbg !373, !tbaa !147
  ret void, !dbg !374
}

declare hidden i64 @_mpd_getkernel(i64, i32, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_powmod(i64 %base, i64 %exp, i64 %umod) #3 {
entry:
  %base.addr = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  %umod.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %base.addr, metadata !98, metadata !145), !dbg !375
  store i64 %exp, i64* %exp.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %exp.addr, metadata !99, metadata !145), !dbg !376
  store i64 %umod, i64* %umod.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %umod.addr, metadata !100, metadata !145), !dbg !377
  %0 = bitcast i64* %r to i8*, !dbg !378
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !378
  call void @llvm.dbg.declare(metadata i64* %r, metadata !101, metadata !145), !dbg !379
  store i64 1, i64* %r, align 8, !dbg !379, !tbaa !147
  br label %while.cond, !dbg !380

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %exp.addr, align 8, !dbg !381, !tbaa !147
  %cmp = icmp ugt i64 %1, 0, !dbg !384
  br i1 %cmp, label %while.body, label %while.end, !dbg !380

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %exp.addr, align 8, !dbg !385, !tbaa !147
  %and = and i64 %2, 1, !dbg !388
  %tobool = icmp ne i64 %and, 0, !dbg !388
  br i1 %tobool, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* %r, align 8, !dbg !390, !tbaa !147
  %4 = load i64, i64* %base.addr, align 8, !dbg !391, !tbaa !147
  %5 = load i64, i64* %umod.addr, align 8, !dbg !392, !tbaa !147
  %call = call i64 @x64_mulmod(i64 %3, i64 %4, i64 %5), !dbg !393
  store i64 %call, i64* %r, align 8, !dbg !394, !tbaa !147
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i64, i64* %base.addr, align 8, !dbg !396, !tbaa !147
  %7 = load i64, i64* %base.addr, align 8, !dbg !397, !tbaa !147
  %8 = load i64, i64* %umod.addr, align 8, !dbg !398, !tbaa !147
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !399
  store i64 %call1, i64* %base.addr, align 8, !dbg !400, !tbaa !147
  %9 = load i64, i64* %exp.addr, align 8, !dbg !401, !tbaa !147
  %shr = lshr i64 %9, 1, !dbg !401
  store i64 %shr, i64* %exp.addr, align 8, !dbg !401, !tbaa !147
  br label %while.cond, !dbg !380

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %r, align 8, !dbg !402, !tbaa !147
  %11 = bitcast i64* %r to i8*, !dbg !403
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !403
  ret i64 %10, !dbg !404
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_mulmod(i64 %a, i64 %b, i64 %m) #3 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %a, i64* %a.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !104, metadata !145), !dbg !405
  store i64 %b, i64* %b.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !105, metadata !145), !dbg !406
  store i64 %m, i64* %m.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !106, metadata !145), !dbg !407
  %0 = bitcast i64* %hi to i8*, !dbg !408
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !408
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !107, metadata !145), !dbg !409
  %1 = bitcast i64* %lo to i8*, !dbg !408
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !408
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !108, metadata !145), !dbg !410
  %2 = bitcast i64* %x to i8*, !dbg !408
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !408
  call void @llvm.dbg.declare(metadata i64* %x, metadata !109, metadata !145), !dbg !411
  %3 = bitcast i64* %y to i8*, !dbg !408
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !408
  call void @llvm.dbg.declare(metadata i64* %y, metadata !110, metadata !145), !dbg !412
  %4 = load i64, i64* %a.addr, align 8, !dbg !413, !tbaa !147
  %5 = load i64, i64* %b.addr, align 8, !dbg !414, !tbaa !147
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5), !dbg !415
  %6 = load i64, i64* %m.addr, align 8, !dbg !416, !tbaa !147
  %and = and i64 %6, 4294967296, !dbg !418
  %tobool = icmp ne i64 %and, 0, !dbg !418
  br i1 %tobool, label %if.then, label %if.else, !dbg !419

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %hi, align 8, !dbg !420, !tbaa !147
  store i64 %7, i64* %y, align 8, !dbg !422, !tbaa !147
  store i64 %7, i64* %x, align 8, !dbg !423, !tbaa !147
  %8 = load i64, i64* %hi, align 8, !dbg !424, !tbaa !147
  %shr = lshr i64 %8, 32, !dbg !424
  store i64 %shr, i64* %hi, align 8, !dbg !424, !tbaa !147
  %9 = load i64, i64* %lo, align 8, !dbg !425, !tbaa !147
  %10 = load i64, i64* %x, align 8, !dbg !426, !tbaa !147
  %sub = sub i64 %9, %10, !dbg !427
  store i64 %sub, i64* %x, align 8, !dbg !428, !tbaa !147
  %11 = load i64, i64* %x, align 8, !dbg !429, !tbaa !147
  %12 = load i64, i64* %lo, align 8, !dbg !431, !tbaa !147
  %cmp = icmp ugt i64 %11, %12, !dbg !432
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !433

if.then.1:                                        ; preds = %if.then
  %13 = load i64, i64* %hi, align 8, !dbg !434, !tbaa !147
  %dec = add i64 %13, -1, !dbg !434
  store i64 %dec, i64* %hi, align 8, !dbg !434, !tbaa !147
  br label %if.end, !dbg !436

if.end:                                           ; preds = %if.then.1, %if.then
  %14 = load i64, i64* %y, align 8, !dbg !437, !tbaa !147
  %shl = shl i64 %14, 32, !dbg !437
  store i64 %shl, i64* %y, align 8, !dbg !437, !tbaa !147
  %15 = load i64, i64* %y, align 8, !dbg !438, !tbaa !147
  %16 = load i64, i64* %x, align 8, !dbg !439, !tbaa !147
  %add = add i64 %15, %16, !dbg !440
  store i64 %add, i64* %lo, align 8, !dbg !441, !tbaa !147
  %17 = load i64, i64* %lo, align 8, !dbg !442, !tbaa !147
  %18 = load i64, i64* %y, align 8, !dbg !444, !tbaa !147
  %cmp2 = icmp ult i64 %17, %18, !dbg !445
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !446

if.then.3:                                        ; preds = %if.end
  %19 = load i64, i64* %hi, align 8, !dbg !447, !tbaa !147
  %inc = add i64 %19, 1, !dbg !447
  store i64 %inc, i64* %hi, align 8, !dbg !447, !tbaa !147
  br label %if.end.4, !dbg !449

if.end.4:                                         ; preds = %if.then.3, %if.end
  %20 = load i64, i64* %hi, align 8, !dbg !450, !tbaa !147
  store i64 %20, i64* %y, align 8, !dbg !451, !tbaa !147
  store i64 %20, i64* %x, align 8, !dbg !452, !tbaa !147
  %21 = load i64, i64* %hi, align 8, !dbg !453, !tbaa !147
  %shr5 = lshr i64 %21, 32, !dbg !453
  store i64 %shr5, i64* %hi, align 8, !dbg !453, !tbaa !147
  %22 = load i64, i64* %lo, align 8, !dbg !454, !tbaa !147
  %23 = load i64, i64* %x, align 8, !dbg !455, !tbaa !147
  %sub6 = sub i64 %22, %23, !dbg !456
  store i64 %sub6, i64* %x, align 8, !dbg !457, !tbaa !147
  %24 = load i64, i64* %x, align 8, !dbg !458, !tbaa !147
  %25 = load i64, i64* %lo, align 8, !dbg !460, !tbaa !147
  %cmp7 = icmp ugt i64 %24, %25, !dbg !461
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !462

if.then.8:                                        ; preds = %if.end.4
  %26 = load i64, i64* %hi, align 8, !dbg !463, !tbaa !147
  %dec9 = add i64 %26, -1, !dbg !463
  store i64 %dec9, i64* %hi, align 8, !dbg !463, !tbaa !147
  br label %if.end.10, !dbg !465

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %27 = load i64, i64* %y, align 8, !dbg !466, !tbaa !147
  %shl11 = shl i64 %27, 32, !dbg !466
  store i64 %shl11, i64* %y, align 8, !dbg !466, !tbaa !147
  %28 = load i64, i64* %y, align 8, !dbg !467, !tbaa !147
  %29 = load i64, i64* %x, align 8, !dbg !468, !tbaa !147
  %add12 = add i64 %28, %29, !dbg !469
  store i64 %add12, i64* %lo, align 8, !dbg !470, !tbaa !147
  %30 = load i64, i64* %lo, align 8, !dbg !471, !tbaa !147
  %31 = load i64, i64* %y, align 8, !dbg !473, !tbaa !147
  %cmp13 = icmp ult i64 %30, %31, !dbg !474
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !475

if.then.14:                                       ; preds = %if.end.10
  %32 = load i64, i64* %hi, align 8, !dbg !476, !tbaa !147
  %inc15 = add i64 %32, 1, !dbg !476
  store i64 %inc15, i64* %hi, align 8, !dbg !476, !tbaa !147
  br label %if.end.16, !dbg !478

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %33 = load i64, i64* %hi, align 8, !dbg !479, !tbaa !147
  %tobool17 = icmp ne i64 %33, 0, !dbg !479
  br i1 %tobool17, label %cond.true, label %lor.lhs.false, !dbg !480

lor.lhs.false:                                    ; preds = %if.end.16
  %34 = load i64, i64* %lo, align 8, !dbg !481, !tbaa !147
  %35 = load i64, i64* %m.addr, align 8, !dbg !483, !tbaa !147
  %cmp18 = icmp uge i64 %34, %35, !dbg !484
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !479

cond.true:                                        ; preds = %lor.lhs.false, %if.end.16
  %36 = load i64, i64* %lo, align 8, !dbg !485, !tbaa !147
  %37 = load i64, i64* %m.addr, align 8, !dbg !488, !tbaa !147
  %sub19 = sub i64 %36, %37, !dbg !489
  br label %cond.end, !dbg !479

cond.false:                                       ; preds = %lor.lhs.false
  %38 = load i64, i64* %lo, align 8, !dbg !490, !tbaa !147
  br label %cond.end, !dbg !479

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub19, %cond.true ], [ %38, %cond.false ], !dbg !479
  store i64 %cond, i64* %retval, !dbg !492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !495

if.else:                                          ; preds = %entry
  %39 = load i64, i64* %m.addr, align 8, !dbg !496, !tbaa !147
  %and20 = and i64 %39, 17179869184, !dbg !498
  %tobool21 = icmp ne i64 %and20, 0, !dbg !498
  br i1 %tobool21, label %if.then.22, label %if.else.67, !dbg !499

if.then.22:                                       ; preds = %if.else
  %40 = load i64, i64* %hi, align 8, !dbg !500, !tbaa !147
  store i64 %40, i64* %y, align 8, !dbg !502, !tbaa !147
  store i64 %40, i64* %x, align 8, !dbg !503, !tbaa !147
  %41 = load i64, i64* %hi, align 8, !dbg !504, !tbaa !147
  %shr23 = lshr i64 %41, 30, !dbg !504
  store i64 %shr23, i64* %hi, align 8, !dbg !504, !tbaa !147
  %42 = load i64, i64* %lo, align 8, !dbg !505, !tbaa !147
  %43 = load i64, i64* %x, align 8, !dbg !506, !tbaa !147
  %sub24 = sub i64 %42, %43, !dbg !507
  store i64 %sub24, i64* %x, align 8, !dbg !508, !tbaa !147
  %44 = load i64, i64* %x, align 8, !dbg !509, !tbaa !147
  %45 = load i64, i64* %lo, align 8, !dbg !511, !tbaa !147
  %cmp25 = icmp ugt i64 %44, %45, !dbg !512
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !513

if.then.26:                                       ; preds = %if.then.22
  %46 = load i64, i64* %hi, align 8, !dbg !514, !tbaa !147
  %dec27 = add i64 %46, -1, !dbg !514
  store i64 %dec27, i64* %hi, align 8, !dbg !514, !tbaa !147
  br label %if.end.28, !dbg !516

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %47 = load i64, i64* %y, align 8, !dbg !517, !tbaa !147
  %shl29 = shl i64 %47, 34, !dbg !517
  store i64 %shl29, i64* %y, align 8, !dbg !517, !tbaa !147
  %48 = load i64, i64* %y, align 8, !dbg !518, !tbaa !147
  %49 = load i64, i64* %x, align 8, !dbg !519, !tbaa !147
  %add30 = add i64 %48, %49, !dbg !520
  store i64 %add30, i64* %lo, align 8, !dbg !521, !tbaa !147
  %50 = load i64, i64* %lo, align 8, !dbg !522, !tbaa !147
  %51 = load i64, i64* %y, align 8, !dbg !524, !tbaa !147
  %cmp31 = icmp ult i64 %50, %51, !dbg !525
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !526

if.then.32:                                       ; preds = %if.end.28
  %52 = load i64, i64* %hi, align 8, !dbg !527, !tbaa !147
  %inc33 = add i64 %52, 1, !dbg !527
  store i64 %inc33, i64* %hi, align 8, !dbg !527, !tbaa !147
  br label %if.end.34, !dbg !529

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %53 = load i64, i64* %hi, align 8, !dbg !530, !tbaa !147
  store i64 %53, i64* %y, align 8, !dbg !531, !tbaa !147
  store i64 %53, i64* %x, align 8, !dbg !532, !tbaa !147
  %54 = load i64, i64* %hi, align 8, !dbg !533, !tbaa !147
  %shr35 = lshr i64 %54, 30, !dbg !533
  store i64 %shr35, i64* %hi, align 8, !dbg !533, !tbaa !147
  %55 = load i64, i64* %lo, align 8, !dbg !534, !tbaa !147
  %56 = load i64, i64* %x, align 8, !dbg !535, !tbaa !147
  %sub36 = sub i64 %55, %56, !dbg !536
  store i64 %sub36, i64* %x, align 8, !dbg !537, !tbaa !147
  %57 = load i64, i64* %x, align 8, !dbg !538, !tbaa !147
  %58 = load i64, i64* %lo, align 8, !dbg !540, !tbaa !147
  %cmp37 = icmp ugt i64 %57, %58, !dbg !541
  br i1 %cmp37, label %if.then.38, label %if.end.40, !dbg !542

if.then.38:                                       ; preds = %if.end.34
  %59 = load i64, i64* %hi, align 8, !dbg !543, !tbaa !147
  %dec39 = add i64 %59, -1, !dbg !543
  store i64 %dec39, i64* %hi, align 8, !dbg !543, !tbaa !147
  br label %if.end.40, !dbg !545

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %60 = load i64, i64* %y, align 8, !dbg !546, !tbaa !147
  %shl41 = shl i64 %60, 34, !dbg !546
  store i64 %shl41, i64* %y, align 8, !dbg !546, !tbaa !147
  %61 = load i64, i64* %y, align 8, !dbg !547, !tbaa !147
  %62 = load i64, i64* %x, align 8, !dbg !548, !tbaa !147
  %add42 = add i64 %61, %62, !dbg !549
  store i64 %add42, i64* %lo, align 8, !dbg !550, !tbaa !147
  %63 = load i64, i64* %lo, align 8, !dbg !551, !tbaa !147
  %64 = load i64, i64* %y, align 8, !dbg !553, !tbaa !147
  %cmp43 = icmp ult i64 %63, %64, !dbg !554
  br i1 %cmp43, label %if.then.44, label %if.end.46, !dbg !555

if.then.44:                                       ; preds = %if.end.40
  %65 = load i64, i64* %hi, align 8, !dbg !556, !tbaa !147
  %inc45 = add i64 %65, 1, !dbg !556
  store i64 %inc45, i64* %hi, align 8, !dbg !556, !tbaa !147
  br label %if.end.46, !dbg !558

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %66 = load i64, i64* %hi, align 8, !dbg !559, !tbaa !147
  store i64 %66, i64* %y, align 8, !dbg !560, !tbaa !147
  store i64 %66, i64* %x, align 8, !dbg !561, !tbaa !147
  %67 = load i64, i64* %hi, align 8, !dbg !562, !tbaa !147
  %shr47 = lshr i64 %67, 30, !dbg !562
  store i64 %shr47, i64* %hi, align 8, !dbg !562, !tbaa !147
  %68 = load i64, i64* %lo, align 8, !dbg !563, !tbaa !147
  %69 = load i64, i64* %x, align 8, !dbg !564, !tbaa !147
  %sub48 = sub i64 %68, %69, !dbg !565
  store i64 %sub48, i64* %x, align 8, !dbg !566, !tbaa !147
  %70 = load i64, i64* %x, align 8, !dbg !567, !tbaa !147
  %71 = load i64, i64* %lo, align 8, !dbg !569, !tbaa !147
  %cmp49 = icmp ugt i64 %70, %71, !dbg !570
  br i1 %cmp49, label %if.then.50, label %if.end.52, !dbg !571

if.then.50:                                       ; preds = %if.end.46
  %72 = load i64, i64* %hi, align 8, !dbg !572, !tbaa !147
  %dec51 = add i64 %72, -1, !dbg !572
  store i64 %dec51, i64* %hi, align 8, !dbg !572, !tbaa !147
  br label %if.end.52, !dbg !574

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %73 = load i64, i64* %y, align 8, !dbg !575, !tbaa !147
  %shl53 = shl i64 %73, 34, !dbg !575
  store i64 %shl53, i64* %y, align 8, !dbg !575, !tbaa !147
  %74 = load i64, i64* %y, align 8, !dbg !576, !tbaa !147
  %75 = load i64, i64* %x, align 8, !dbg !577, !tbaa !147
  %add54 = add i64 %74, %75, !dbg !578
  store i64 %add54, i64* %lo, align 8, !dbg !579, !tbaa !147
  %76 = load i64, i64* %lo, align 8, !dbg !580, !tbaa !147
  %77 = load i64, i64* %y, align 8, !dbg !582, !tbaa !147
  %cmp55 = icmp ult i64 %76, %77, !dbg !583
  br i1 %cmp55, label %if.then.56, label %if.end.58, !dbg !584

if.then.56:                                       ; preds = %if.end.52
  %78 = load i64, i64* %hi, align 8, !dbg !585, !tbaa !147
  %inc57 = add i64 %78, 1, !dbg !585
  store i64 %inc57, i64* %hi, align 8, !dbg !585, !tbaa !147
  br label %if.end.58, !dbg !587

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %79 = load i64, i64* %hi, align 8, !dbg !588, !tbaa !147
  %tobool59 = icmp ne i64 %79, 0, !dbg !588
  br i1 %tobool59, label %cond.true.62, label %lor.lhs.false.60, !dbg !589

lor.lhs.false.60:                                 ; preds = %if.end.58
  %80 = load i64, i64* %lo, align 8, !dbg !590, !tbaa !147
  %81 = load i64, i64* %m.addr, align 8, !dbg !592, !tbaa !147
  %cmp61 = icmp uge i64 %80, %81, !dbg !593
  br i1 %cmp61, label %cond.true.62, label %cond.false.64, !dbg !588

cond.true.62:                                     ; preds = %lor.lhs.false.60, %if.end.58
  %82 = load i64, i64* %lo, align 8, !dbg !594, !tbaa !147
  %83 = load i64, i64* %m.addr, align 8, !dbg !597, !tbaa !147
  %sub63 = sub i64 %82, %83, !dbg !598
  br label %cond.end.65, !dbg !588

cond.false.64:                                    ; preds = %lor.lhs.false.60
  %84 = load i64, i64* %lo, align 8, !dbg !599, !tbaa !147
  br label %cond.end.65, !dbg !588

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i64 [ %sub63, %cond.true.62 ], [ %84, %cond.false.64 ], !dbg !588
  store i64 %cond66, i64* %retval, !dbg !601
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !604

if.else.67:                                       ; preds = %if.else
  %85 = load i64, i64* %hi, align 8, !dbg !605, !tbaa !147
  store i64 %85, i64* %y, align 8, !dbg !607, !tbaa !147
  store i64 %85, i64* %x, align 8, !dbg !608, !tbaa !147
  %86 = load i64, i64* %hi, align 8, !dbg !609, !tbaa !147
  %shr68 = lshr i64 %86, 24, !dbg !609
  store i64 %shr68, i64* %hi, align 8, !dbg !609, !tbaa !147
  %87 = load i64, i64* %lo, align 8, !dbg !610, !tbaa !147
  %88 = load i64, i64* %x, align 8, !dbg !611, !tbaa !147
  %sub69 = sub i64 %87, %88, !dbg !612
  store i64 %sub69, i64* %x, align 8, !dbg !613, !tbaa !147
  %89 = load i64, i64* %x, align 8, !dbg !614, !tbaa !147
  %90 = load i64, i64* %lo, align 8, !dbg !616, !tbaa !147
  %cmp70 = icmp ugt i64 %89, %90, !dbg !617
  br i1 %cmp70, label %if.then.71, label %if.end.73, !dbg !618

if.then.71:                                       ; preds = %if.else.67
  %91 = load i64, i64* %hi, align 8, !dbg !619, !tbaa !147
  %dec72 = add i64 %91, -1, !dbg !619
  store i64 %dec72, i64* %hi, align 8, !dbg !619, !tbaa !147
  br label %if.end.73, !dbg !621

if.end.73:                                        ; preds = %if.then.71, %if.else.67
  %92 = load i64, i64* %y, align 8, !dbg !622, !tbaa !147
  %shl74 = shl i64 %92, 40, !dbg !622
  store i64 %shl74, i64* %y, align 8, !dbg !622, !tbaa !147
  %93 = load i64, i64* %y, align 8, !dbg !623, !tbaa !147
  %94 = load i64, i64* %x, align 8, !dbg !624, !tbaa !147
  %add75 = add i64 %93, %94, !dbg !625
  store i64 %add75, i64* %lo, align 8, !dbg !626, !tbaa !147
  %95 = load i64, i64* %lo, align 8, !dbg !627, !tbaa !147
  %96 = load i64, i64* %y, align 8, !dbg !629, !tbaa !147
  %cmp76 = icmp ult i64 %95, %96, !dbg !630
  br i1 %cmp76, label %if.then.77, label %if.end.79, !dbg !631

if.then.77:                                       ; preds = %if.end.73
  %97 = load i64, i64* %hi, align 8, !dbg !632, !tbaa !147
  %inc78 = add i64 %97, 1, !dbg !632
  store i64 %inc78, i64* %hi, align 8, !dbg !632, !tbaa !147
  br label %if.end.79, !dbg !634

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %98 = load i64, i64* %hi, align 8, !dbg !635, !tbaa !147
  store i64 %98, i64* %y, align 8, !dbg !636, !tbaa !147
  store i64 %98, i64* %x, align 8, !dbg !637, !tbaa !147
  %99 = load i64, i64* %hi, align 8, !dbg !638, !tbaa !147
  %shr80 = lshr i64 %99, 24, !dbg !638
  store i64 %shr80, i64* %hi, align 8, !dbg !638, !tbaa !147
  %100 = load i64, i64* %lo, align 8, !dbg !639, !tbaa !147
  %101 = load i64, i64* %x, align 8, !dbg !640, !tbaa !147
  %sub81 = sub i64 %100, %101, !dbg !641
  store i64 %sub81, i64* %x, align 8, !dbg !642, !tbaa !147
  %102 = load i64, i64* %x, align 8, !dbg !643, !tbaa !147
  %103 = load i64, i64* %lo, align 8, !dbg !645, !tbaa !147
  %cmp82 = icmp ugt i64 %102, %103, !dbg !646
  br i1 %cmp82, label %if.then.83, label %if.end.85, !dbg !647

if.then.83:                                       ; preds = %if.end.79
  %104 = load i64, i64* %hi, align 8, !dbg !648, !tbaa !147
  %dec84 = add i64 %104, -1, !dbg !648
  store i64 %dec84, i64* %hi, align 8, !dbg !648, !tbaa !147
  br label %if.end.85, !dbg !650

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %105 = load i64, i64* %y, align 8, !dbg !651, !tbaa !147
  %shl86 = shl i64 %105, 40, !dbg !651
  store i64 %shl86, i64* %y, align 8, !dbg !651, !tbaa !147
  %106 = load i64, i64* %y, align 8, !dbg !652, !tbaa !147
  %107 = load i64, i64* %x, align 8, !dbg !653, !tbaa !147
  %add87 = add i64 %106, %107, !dbg !654
  store i64 %add87, i64* %lo, align 8, !dbg !655, !tbaa !147
  %108 = load i64, i64* %lo, align 8, !dbg !656, !tbaa !147
  %109 = load i64, i64* %y, align 8, !dbg !658, !tbaa !147
  %cmp88 = icmp ult i64 %108, %109, !dbg !659
  br i1 %cmp88, label %if.then.89, label %if.end.91, !dbg !660

if.then.89:                                       ; preds = %if.end.85
  %110 = load i64, i64* %hi, align 8, !dbg !661, !tbaa !147
  %inc90 = add i64 %110, 1, !dbg !661
  store i64 %inc90, i64* %hi, align 8, !dbg !661, !tbaa !147
  br label %if.end.91, !dbg !663

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %111 = load i64, i64* %hi, align 8, !dbg !664, !tbaa !147
  store i64 %111, i64* %y, align 8, !dbg !665, !tbaa !147
  store i64 %111, i64* %x, align 8, !dbg !666, !tbaa !147
  %112 = load i64, i64* %hi, align 8, !dbg !667, !tbaa !147
  %shr92 = lshr i64 %112, 24, !dbg !667
  store i64 %shr92, i64* %hi, align 8, !dbg !667, !tbaa !147
  %113 = load i64, i64* %lo, align 8, !dbg !668, !tbaa !147
  %114 = load i64, i64* %x, align 8, !dbg !669, !tbaa !147
  %sub93 = sub i64 %113, %114, !dbg !670
  store i64 %sub93, i64* %x, align 8, !dbg !671, !tbaa !147
  %115 = load i64, i64* %x, align 8, !dbg !672, !tbaa !147
  %116 = load i64, i64* %lo, align 8, !dbg !674, !tbaa !147
  %cmp94 = icmp ugt i64 %115, %116, !dbg !675
  br i1 %cmp94, label %if.then.95, label %if.end.97, !dbg !676

if.then.95:                                       ; preds = %if.end.91
  %117 = load i64, i64* %hi, align 8, !dbg !677, !tbaa !147
  %dec96 = add i64 %117, -1, !dbg !677
  store i64 %dec96, i64* %hi, align 8, !dbg !677, !tbaa !147
  br label %if.end.97, !dbg !679

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %118 = load i64, i64* %y, align 8, !dbg !680, !tbaa !147
  %shl98 = shl i64 %118, 40, !dbg !680
  store i64 %shl98, i64* %y, align 8, !dbg !680, !tbaa !147
  %119 = load i64, i64* %y, align 8, !dbg !681, !tbaa !147
  %120 = load i64, i64* %x, align 8, !dbg !682, !tbaa !147
  %add99 = add i64 %119, %120, !dbg !683
  store i64 %add99, i64* %lo, align 8, !dbg !684, !tbaa !147
  %121 = load i64, i64* %lo, align 8, !dbg !685, !tbaa !147
  %122 = load i64, i64* %y, align 8, !dbg !687, !tbaa !147
  %cmp100 = icmp ult i64 %121, %122, !dbg !688
  br i1 %cmp100, label %if.then.101, label %if.end.103, !dbg !689

if.then.101:                                      ; preds = %if.end.97
  %123 = load i64, i64* %hi, align 8, !dbg !690, !tbaa !147
  %inc102 = add i64 %123, 1, !dbg !690
  store i64 %inc102, i64* %hi, align 8, !dbg !690, !tbaa !147
  br label %if.end.103, !dbg !692

if.end.103:                                       ; preds = %if.then.101, %if.end.97
  %124 = load i64, i64* %hi, align 8, !dbg !693, !tbaa !147
  %tobool104 = icmp ne i64 %124, 0, !dbg !693
  br i1 %tobool104, label %cond.true.107, label %lor.lhs.false.105, !dbg !694

lor.lhs.false.105:                                ; preds = %if.end.103
  %125 = load i64, i64* %lo, align 8, !dbg !695, !tbaa !147
  %126 = load i64, i64* %m.addr, align 8, !dbg !697, !tbaa !147
  %cmp106 = icmp uge i64 %125, %126, !dbg !698
  br i1 %cmp106, label %cond.true.107, label %cond.false.109, !dbg !693

cond.true.107:                                    ; preds = %lor.lhs.false.105, %if.end.103
  %127 = load i64, i64* %lo, align 8, !dbg !699, !tbaa !147
  %128 = load i64, i64* %m.addr, align 8, !dbg !702, !tbaa !147
  %sub108 = sub i64 %127, %128, !dbg !703
  br label %cond.end.110, !dbg !693

cond.false.109:                                   ; preds = %lor.lhs.false.105
  %129 = load i64, i64* %lo, align 8, !dbg !704, !tbaa !147
  br label %cond.end.110, !dbg !693

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %sub108, %cond.true.107 ], [ %129, %cond.false.109 ], !dbg !693
  store i64 %cond111, i64* %retval, !dbg !706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !709

cleanup:                                          ; preds = %cond.end.110, %cond.end.65, %cond.end
  %130 = bitcast i64* %y to i8*, !dbg !710
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !710
  %131 = bitcast i64* %x to i8*, !dbg !710
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !710
  %132 = bitcast i64* %lo to i8*, !dbg !710
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !710
  %133 = bitcast i64* %hi to i8*, !dbg !710
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !710
  %134 = load i64, i64* %retval, !dbg !710
  ret i64 %134, !dbg !710
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2(i64* %a0, i64 %b0, i64* %a1, i64 %b1, i64 %m) #3 {
entry:
  %a0.addr = alloca i64*, align 8
  %b0.addr = alloca i64, align 8
  %a1.addr = alloca i64*, align 8
  %b1.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a0, i64** %a0.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %a0.addr, metadata !126, metadata !145), !dbg !711
  store i64 %b0, i64* %b0.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %b0.addr, metadata !127, metadata !145), !dbg !712
  store i64* %a1, i64** %a1.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %a1.addr, metadata !128, metadata !145), !dbg !713
  store i64 %b1, i64* %b1.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %b1.addr, metadata !129, metadata !145), !dbg !714
  store i64 %m, i64* %m.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !130, metadata !145), !dbg !715
  %0 = load i64*, i64** %a0.addr, align 8, !dbg !716, !tbaa !141
  %1 = load i64, i64* %0, align 8, !dbg !717, !tbaa !147
  %2 = load i64, i64* %b0.addr, align 8, !dbg !718, !tbaa !147
  %3 = load i64, i64* %m.addr, align 8, !dbg !719, !tbaa !147
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !720
  %4 = load i64*, i64** %a0.addr, align 8, !dbg !721, !tbaa !141
  store i64 %call, i64* %4, align 8, !dbg !722, !tbaa !147
  %5 = load i64*, i64** %a1.addr, align 8, !dbg !723, !tbaa !141
  %6 = load i64, i64* %5, align 8, !dbg !724, !tbaa !147
  %7 = load i64, i64* %b1.addr, align 8, !dbg !725, !tbaa !147
  %8 = load i64, i64* %m.addr, align 8, !dbg !726, !tbaa !147
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !727
  %9 = load i64*, i64** %a1.addr, align 8, !dbg !728, !tbaa !141
  store i64 %call1, i64* %9, align 8, !dbg !729, !tbaa !147
  ret void, !dbg !730
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2c(i64* %a, i64* %b, i64 %w, i64 %m) #3 {
entry:
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  %w.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !133, metadata !145), !dbg !731
  store i64* %b, i64** %b.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %b.addr, metadata !134, metadata !145), !dbg !732
  store i64 %w, i64* %w.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %w.addr, metadata !135, metadata !145), !dbg !733
  store i64 %m, i64* %m.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !136, metadata !145), !dbg !734
  %0 = load i64*, i64** %a.addr, align 8, !dbg !735, !tbaa !141
  %1 = load i64, i64* %0, align 8, !dbg !736, !tbaa !147
  %2 = load i64, i64* %w.addr, align 8, !dbg !737, !tbaa !147
  %3 = load i64, i64* %m.addr, align 8, !dbg !738, !tbaa !147
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !739
  %4 = load i64*, i64** %a.addr, align 8, !dbg !740, !tbaa !141
  store i64 %call, i64* %4, align 8, !dbg !741, !tbaa !147
  %5 = load i64*, i64** %b.addr, align 8, !dbg !742, !tbaa !141
  %6 = load i64, i64* %5, align 8, !dbg !743, !tbaa !147
  %7 = load i64, i64* %w.addr, align 8, !dbg !744, !tbaa !147
  %8 = load i64, i64* %m.addr, align 8, !dbg !745, !tbaa !147
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !746
  %9 = load i64*, i64** %b.addr, align 8, !dbg !747, !tbaa !141
  store i64 %call1, i64* %9, align 8, !dbg !748, !tbaa !147
  ret void, !dbg !749
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define hidden i32 @inv_six_step_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  %log2n = alloca i64, align 8
  %C = alloca i64, align 8
  %R = alloca i64, align 8
  %kernel = alloca i64, align 8
  %umod = alloca i64, align 8
  %x = alloca i64*, align 8
  %w0 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %wstep = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !57, metadata !145), !dbg !750
  store i64 %n, i64* %n.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !58, metadata !145), !dbg !751
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !150
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !59, metadata !145), !dbg !752
  %0 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !753
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !753
  call void @llvm.dbg.declare(metadata %struct.fnt_params** %tparams, metadata !60, metadata !145), !dbg !754
  %1 = bitcast i64* %log2n to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !755
  call void @llvm.dbg.declare(metadata i64* %log2n, metadata !61, metadata !145), !dbg !756
  %2 = bitcast i64* %C to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !755
  call void @llvm.dbg.declare(metadata i64* %C, metadata !62, metadata !145), !dbg !757
  %3 = bitcast i64* %R to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !755
  call void @llvm.dbg.declare(metadata i64* %R, metadata !63, metadata !145), !dbg !758
  %4 = bitcast i64* %kernel to i8*, !dbg !759
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !759
  call void @llvm.dbg.declare(metadata i64* %kernel, metadata !64, metadata !145), !dbg !760
  %5 = bitcast i64* %umod to i8*, !dbg !761
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !761
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !65, metadata !145), !dbg !762
  %6 = bitcast i64** %x to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !763
  call void @llvm.dbg.declare(metadata i64** %x, metadata !66, metadata !145), !dbg !764
  %7 = bitcast i64* %w0 to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !763
  call void @llvm.dbg.declare(metadata i64* %w0, metadata !67, metadata !145), !dbg !765
  %8 = bitcast i64* %w1 to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !763
  call void @llvm.dbg.declare(metadata i64* %w1, metadata !68, metadata !145), !dbg !766
  %9 = bitcast i64* %wstep to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !763
  call void @llvm.dbg.declare(metadata i64* %wstep, metadata !69, metadata !145), !dbg !767
  %10 = bitcast i64* %i to i8*, !dbg !768
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !768
  call void @llvm.dbg.declare(metadata i64* %i, metadata !70, metadata !145), !dbg !769
  %11 = bitcast i64* %k to i8*, !dbg !768
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !768
  call void @llvm.dbg.declare(metadata i64* %k, metadata !71, metadata !145), !dbg !770
  %12 = load i64, i64* %n.addr, align 8, !dbg !771, !tbaa !147
  %call = call i32 @mpd_bsr(i64 %12), !dbg !772
  %conv = sext i32 %call to i64, !dbg !772
  store i64 %conv, i64* %log2n, align 8, !dbg !773, !tbaa !147
  %13 = load i64, i64* %log2n, align 8, !dbg !774, !tbaa !147
  %div = udiv i64 %13, 2, !dbg !775
  %shl = shl i64 1, %div, !dbg !776
  store i64 %shl, i64* %C, align 8, !dbg !777, !tbaa !147
  %14 = load i64, i64* %log2n, align 8, !dbg !778, !tbaa !147
  %15 = load i64, i64* %log2n, align 8, !dbg !779, !tbaa !147
  %div1 = udiv i64 %15, 2, !dbg !780
  %sub = sub i64 %14, %div1, !dbg !781
  %shl2 = shl i64 1, %sub, !dbg !782
  store i64 %shl2, i64* %R, align 8, !dbg !783, !tbaa !147
  %16 = load i64, i64* %C, align 8, !dbg !784, !tbaa !147
  %17 = load i32, i32* %modnum.addr, align 4, !dbg !786, !tbaa !150
  %call3 = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %16, i32 1, i32 %17), !dbg !787
  store %struct.fnt_params* %call3, %struct.fnt_params** %tparams, align 8, !dbg !788, !tbaa !141
  %cmp = icmp eq %struct.fnt_params* %call3, null, !dbg !789
  br i1 %cmp, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !791
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !791

if.end:                                           ; preds = %entry
  %18 = load i64*, i64** %a.addr, align 8, !dbg !793, !tbaa !141
  store i64* %18, i64** %x, align 8, !dbg !795, !tbaa !141
  br label %for.cond, !dbg !796

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64*, i64** %x, align 8, !dbg !797, !tbaa !141
  %20 = load i64*, i64** %a.addr, align 8, !dbg !801, !tbaa !141
  %21 = load i64, i64* %n.addr, align 8, !dbg !802, !tbaa !147
  %add.ptr = getelementptr i64, i64* %20, i64 %21, !dbg !803
  %cmp5 = icmp ult i64* %19, %add.ptr, !dbg !804
  br i1 %cmp5, label %for.body, label %for.end, !dbg !805

for.body:                                         ; preds = %for.cond
  %22 = load i64*, i64** %x, align 8, !dbg !806, !tbaa !141
  %23 = load i64, i64* %C, align 8, !dbg !808, !tbaa !147
  %24 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !809, !tbaa !141
  call void @fnt_dif2(i64* %22, i64 %23, %struct.fnt_params* %24), !dbg !810
  br label %for.inc, !dbg !811

for.inc:                                          ; preds = %for.body
  %25 = load i64, i64* %C, align 8, !dbg !812, !tbaa !147
  %26 = load i64*, i64** %x, align 8, !dbg !813, !tbaa !141
  %add.ptr7 = getelementptr i64, i64* %26, i64 %25, !dbg !813
  store i64* %add.ptr7, i64** %x, align 8, !dbg !813, !tbaa !141
  br label %for.cond, !dbg !814

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %modnum.addr, align 4, !dbg !815, !tbaa !150
  call void @std_setmodulus(i32 %27, i64* %umod), !dbg !816
  %28 = load i64, i64* %n.addr, align 8, !dbg !817, !tbaa !147
  %29 = load i32, i32* %modnum.addr, align 4, !dbg !818, !tbaa !150
  %call8 = call i64 @_mpd_getkernel(i64 %28, i32 1, i32 %29), !dbg !819
  store i64 %call8, i64* %kernel, align 8, !dbg !820, !tbaa !147
  store i64 1, i64* %i, align 8, !dbg !821, !tbaa !147
  br label %for.cond.9, !dbg !822

for.cond.9:                                       ; preds = %for.inc.33, %for.end
  %30 = load i64, i64* %i, align 8, !dbg !823, !tbaa !147
  %31 = load i64, i64* %R, align 8, !dbg !826, !tbaa !147
  %cmp10 = icmp ult i64 %30, %31, !dbg !827
  br i1 %cmp10, label %for.body.12, label %for.end.34, !dbg !828

for.body.12:                                      ; preds = %for.cond.9
  store i64 1, i64* %w0, align 8, !dbg !829, !tbaa !147
  %32 = load i64, i64* %kernel, align 8, !dbg !830, !tbaa !147
  %33 = load i64, i64* %i, align 8, !dbg !831, !tbaa !147
  %34 = load i64, i64* %umod, align 8, !dbg !832, !tbaa !147
  %call13 = call i64 @x64_powmod(i64 %32, i64 %33, i64 %34), !dbg !833
  store i64 %call13, i64* %w1, align 8, !dbg !834, !tbaa !147
  %35 = load i64, i64* %w1, align 8, !dbg !835, !tbaa !147
  %36 = load i64, i64* %w1, align 8, !dbg !836, !tbaa !147
  %37 = load i64, i64* %umod, align 8, !dbg !837, !tbaa !147
  %call14 = call i64 @x64_mulmod(i64 %35, i64 %36, i64 %37), !dbg !838
  store i64 %call14, i64* %wstep, align 8, !dbg !839, !tbaa !147
  store i64 0, i64* %k, align 8, !dbg !840, !tbaa !147
  br label %for.cond.15, !dbg !841

for.cond.15:                                      ; preds = %for.inc.30, %for.body.12
  %38 = load i64, i64* %k, align 8, !dbg !842, !tbaa !147
  %39 = load i64, i64* %C, align 8, !dbg !845, !tbaa !147
  %cmp16 = icmp ult i64 %38, %39, !dbg !846
  br i1 %cmp16, label %for.body.18, label %for.end.32, !dbg !847

for.body.18:                                      ; preds = %for.cond.15
  %40 = bitcast i64* %x0 to i8*, !dbg !848
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !848
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !72, metadata !145), !dbg !849
  %41 = load i64, i64* %i, align 8, !dbg !850, !tbaa !147
  %42 = load i64, i64* %C, align 8, !dbg !851, !tbaa !147
  %mul = mul i64 %41, %42, !dbg !852
  %43 = load i64, i64* %k, align 8, !dbg !853, !tbaa !147
  %add = add i64 %mul, %43, !dbg !854
  %44 = load i64*, i64** %a.addr, align 8, !dbg !855, !tbaa !141
  %arrayidx = getelementptr i64, i64* %44, i64 %add, !dbg !855
  %45 = load i64, i64* %arrayidx, align 8, !dbg !855, !tbaa !147
  store i64 %45, i64* %x0, align 8, !dbg !849, !tbaa !147
  %46 = bitcast i64* %x1 to i8*, !dbg !856
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !856
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !79, metadata !145), !dbg !857
  %47 = load i64, i64* %i, align 8, !dbg !858, !tbaa !147
  %48 = load i64, i64* %C, align 8, !dbg !859, !tbaa !147
  %mul19 = mul i64 %47, %48, !dbg !860
  %49 = load i64, i64* %k, align 8, !dbg !861, !tbaa !147
  %add20 = add i64 %mul19, %49, !dbg !862
  %add21 = add i64 %add20, 1, !dbg !863
  %50 = load i64*, i64** %a.addr, align 8, !dbg !864, !tbaa !141
  %arrayidx22 = getelementptr i64, i64* %50, i64 %add21, !dbg !864
  %51 = load i64, i64* %arrayidx22, align 8, !dbg !864, !tbaa !147
  store i64 %51, i64* %x1, align 8, !dbg !857, !tbaa !147
  %52 = load i64, i64* %w0, align 8, !dbg !865, !tbaa !147
  %53 = load i64, i64* %w1, align 8, !dbg !866, !tbaa !147
  %54 = load i64, i64* %umod, align 8, !dbg !867, !tbaa !147
  call void @x64_mulmod2(i64* %x0, i64 %52, i64* %x1, i64 %53, i64 %54), !dbg !868
  %55 = load i64, i64* %wstep, align 8, !dbg !869, !tbaa !147
  %56 = load i64, i64* %umod, align 8, !dbg !870, !tbaa !147
  call void @x64_mulmod2c(i64* %w0, i64* %w1, i64 %55, i64 %56), !dbg !871
  %57 = load i64, i64* %x0, align 8, !dbg !872, !tbaa !147
  %58 = load i64, i64* %i, align 8, !dbg !873, !tbaa !147
  %59 = load i64, i64* %C, align 8, !dbg !874, !tbaa !147
  %mul23 = mul i64 %58, %59, !dbg !875
  %60 = load i64, i64* %k, align 8, !dbg !876, !tbaa !147
  %add24 = add i64 %mul23, %60, !dbg !877
  %61 = load i64*, i64** %a.addr, align 8, !dbg !878, !tbaa !141
  %arrayidx25 = getelementptr i64, i64* %61, i64 %add24, !dbg !878
  store i64 %57, i64* %arrayidx25, align 8, !dbg !879, !tbaa !147
  %62 = load i64, i64* %x1, align 8, !dbg !880, !tbaa !147
  %63 = load i64, i64* %i, align 8, !dbg !881, !tbaa !147
  %64 = load i64, i64* %C, align 8, !dbg !882, !tbaa !147
  %mul26 = mul i64 %63, %64, !dbg !883
  %65 = load i64, i64* %k, align 8, !dbg !884, !tbaa !147
  %add27 = add i64 %mul26, %65, !dbg !885
  %add28 = add i64 %add27, 1, !dbg !886
  %66 = load i64*, i64** %a.addr, align 8, !dbg !887, !tbaa !141
  %arrayidx29 = getelementptr i64, i64* %66, i64 %add28, !dbg !887
  store i64 %62, i64* %arrayidx29, align 8, !dbg !888, !tbaa !147
  %67 = bitcast i64* %x1 to i8*, !dbg !889
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !889
  %68 = bitcast i64* %x0 to i8*, !dbg !889
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !889
  br label %for.inc.30, !dbg !890

for.inc.30:                                       ; preds = %for.body.18
  %69 = load i64, i64* %k, align 8, !dbg !891, !tbaa !147
  %add31 = add i64 %69, 2, !dbg !891
  store i64 %add31, i64* %k, align 8, !dbg !891, !tbaa !147
  br label %for.cond.15, !dbg !892

for.end.32:                                       ; preds = %for.cond.15
  br label %for.inc.33, !dbg !893

for.inc.33:                                       ; preds = %for.end.32
  %70 = load i64, i64* %i, align 8, !dbg !894, !tbaa !147
  %inc = add i64 %70, 1, !dbg !894
  store i64 %inc, i64* %i, align 8, !dbg !894, !tbaa !147
  br label %for.cond.9, !dbg !895

for.end.34:                                       ; preds = %for.cond.9
  %71 = load i64*, i64** %a.addr, align 8, !dbg !896, !tbaa !141
  %72 = load i64, i64* %R, align 8, !dbg !898, !tbaa !147
  %73 = load i64, i64* %C, align 8, !dbg !899, !tbaa !147
  %call35 = call i32 @transpose_pow2(i64* %71, i64 %72, i64 %73), !dbg !900
  %tobool = icmp ne i32 %call35, 0, !dbg !900
  br i1 %tobool, label %if.end.37, label %if.then.36, !dbg !901

if.then.36:                                       ; preds = %for.end.34
  %74 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !902, !tbaa !141
  %75 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !904, !tbaa !141
  %76 = bitcast %struct.fnt_params* %75 to i8*, !dbg !904
  call void %74(i8* %76), !dbg !902
  store i32 0, i32* %retval, !dbg !905
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !905

if.end.37:                                        ; preds = %for.end.34
  %77 = load i64, i64* %R, align 8, !dbg !906, !tbaa !147
  %78 = load i64, i64* %C, align 8, !dbg !908, !tbaa !147
  %cmp38 = icmp ne i64 %77, %78, !dbg !909
  br i1 %cmp38, label %if.then.40, label %if.end.46, !dbg !910

if.then.40:                                       ; preds = %if.end.37
  %79 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !911, !tbaa !141
  %80 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !913, !tbaa !141
  %81 = bitcast %struct.fnt_params* %80 to i8*, !dbg !913
  call void %79(i8* %81), !dbg !911
  %82 = load i64, i64* %R, align 8, !dbg !914, !tbaa !147
  %83 = load i32, i32* %modnum.addr, align 4, !dbg !916, !tbaa !150
  %call41 = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %82, i32 1, i32 %83), !dbg !917
  store %struct.fnt_params* %call41, %struct.fnt_params** %tparams, align 8, !dbg !918, !tbaa !141
  %cmp42 = icmp eq %struct.fnt_params* %call41, null, !dbg !919
  br i1 %cmp42, label %if.then.44, label %if.end.45, !dbg !920

if.then.44:                                       ; preds = %if.then.40
  store i32 0, i32* %retval, !dbg !921
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !921

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46, !dbg !923

if.end.46:                                        ; preds = %if.end.45, %if.end.37
  %84 = load i64*, i64** %a.addr, align 8, !dbg !924, !tbaa !141
  store i64* %84, i64** %x, align 8, !dbg !926, !tbaa !141
  br label %for.cond.47, !dbg !927

for.cond.47:                                      ; preds = %for.inc.52, %if.end.46
  %85 = load i64*, i64** %x, align 8, !dbg !928, !tbaa !141
  %86 = load i64*, i64** %a.addr, align 8, !dbg !932, !tbaa !141
  %87 = load i64, i64* %n.addr, align 8, !dbg !933, !tbaa !147
  %add.ptr48 = getelementptr i64, i64* %86, i64 %87, !dbg !934
  %cmp49 = icmp ult i64* %85, %add.ptr48, !dbg !935
  br i1 %cmp49, label %for.body.51, label %for.end.54, !dbg !936

for.body.51:                                      ; preds = %for.cond.47
  %88 = load i64*, i64** %x, align 8, !dbg !937, !tbaa !141
  %89 = load i64, i64* %R, align 8, !dbg !939, !tbaa !147
  %90 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !940, !tbaa !141
  call void @fnt_dif2(i64* %88, i64 %89, %struct.fnt_params* %90), !dbg !941
  br label %for.inc.52, !dbg !942

for.inc.52:                                       ; preds = %for.body.51
  %91 = load i64, i64* %R, align 8, !dbg !943, !tbaa !147
  %92 = load i64*, i64** %x, align 8, !dbg !944, !tbaa !141
  %add.ptr53 = getelementptr i64, i64* %92, i64 %91, !dbg !944
  store i64* %add.ptr53, i64** %x, align 8, !dbg !944, !tbaa !141
  br label %for.cond.47, !dbg !945

for.end.54:                                       ; preds = %for.cond.47
  %93 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !946, !tbaa !141
  %94 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !947, !tbaa !141
  %95 = bitcast %struct.fnt_params* %94 to i8*, !dbg !947
  call void %93(i8* %95), !dbg !946
  %96 = load i64*, i64** %a.addr, align 8, !dbg !948, !tbaa !141
  %97 = load i64, i64* %C, align 8, !dbg !950, !tbaa !147
  %98 = load i64, i64* %R, align 8, !dbg !951, !tbaa !147
  %call55 = call i32 @transpose_pow2(i64* %96, i64 %97, i64 %98), !dbg !952
  %tobool56 = icmp ne i32 %call55, 0, !dbg !952
  br i1 %tobool56, label %if.end.58, label %if.then.57, !dbg !953

if.then.57:                                       ; preds = %for.end.54
  store i32 0, i32* %retval, !dbg !954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !954

if.end.58:                                        ; preds = %for.end.54
  store i32 1, i32* %retval, !dbg !956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !956

cleanup:                                          ; preds = %if.end.58, %if.then.57, %if.then.44, %if.then.36, %if.then
  %99 = bitcast i64* %k to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !957
  %100 = bitcast i64* %i to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !957
  %101 = bitcast i64* %wstep to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !957
  %102 = bitcast i64* %w1 to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !957
  %103 = bitcast i64* %w0 to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !957
  %104 = bitcast i64** %x to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !957
  %105 = bitcast i64* %umod to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !957
  %106 = bitcast i64* %kernel to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !957
  %107 = bitcast i64* %R to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !957
  %108 = bitcast i64* %C to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !957
  %109 = bitcast i64* %log2n to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %109) #2, !dbg !957
  %110 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !957
  %111 = load i32, i32* %retval, !dbg !957
  ret i32 %111, !dbg !957
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #3 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %hi.addr, metadata !116, metadata !145), !dbg !958
  store i64* %lo, i64** %lo.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64** %lo.addr, metadata !117, metadata !145), !dbg !959
  store i64 %a, i64* %a.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !118, metadata !145), !dbg !960
  store i64 %b, i64* %b.addr, align 8, !tbaa !147
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !119, metadata !145), !dbg !961
  %0 = bitcast i64* %h to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !962
  call void @llvm.dbg.declare(metadata i64* %h, metadata !120, metadata !145), !dbg !963
  %1 = bitcast i64* %l to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !962
  call void @llvm.dbg.declare(metadata i64* %l, metadata !121, metadata !145), !dbg !964
  %2 = load i64, i64* %a.addr, align 8, !dbg !965, !tbaa !147
  %3 = load i64, i64* %b.addr, align 8, !dbg !966, !tbaa !147
  %4 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %3) #5, !dbg !967, !srcloc !968
  %asmresult = extractvalue { i64, i64 } %4, 0, !dbg !967
  %asmresult1 = extractvalue { i64, i64 } %4, 1, !dbg !967
  store i64 %asmresult, i64* %h, align 8, !dbg !967, !tbaa !147
  store i64 %asmresult1, i64* %l, align 8, !dbg !967, !tbaa !147
  %5 = load i64, i64* %h, align 8, !dbg !969, !tbaa !147
  %6 = load i64*, i64** %hi.addr, align 8, !dbg !970, !tbaa !141
  store i64 %5, i64* %6, align 8, !dbg !971, !tbaa !147
  %7 = load i64, i64* %l, align 8, !dbg !972, !tbaa !147
  %8 = load i64*, i64** %lo.addr, align 8, !dbg !973, !tbaa !141
  store i64 %7, i64* %8, align 8, !dbg !974, !tbaa !147
  %9 = bitcast i64* %l to i8*, !dbg !975
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !975
  %10 = bitcast i64* %h to i8*, !dbg !975
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !975
  ret void, !dbg !975
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138, !139}
!llvm.ident = !{!140}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11)
!1 = !DIFile(filename: "sixstep.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_size_t", file: !5, line: 152, baseType: !6)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/mpdecimal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 62, baseType: !8)
!7 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12, !55, !80, !87, !93, !102, !111, !122, !131}
!12 = !DISubprogram(name: "six_step_fnt", scope: !13, file: !13, line: 47, type: !14, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @six_step_fnt, variables: !20)
!13 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/sixstep.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DISubroutineType(types: !15)
!15 = !{!10, !16, !4, !10}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_uint_t", file: !5, line: 149, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 55, baseType: !8)
!19 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !{!21, !22, !23, !24, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !54}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !12, file: !13, line: 47, type: !16)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !12, file: !13, line: 47, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !12, file: !13, line: 47, type: !10)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tparams", scope: !12, file: !13, line: 49, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "fnt_params", file: !27, line: 42, size: 192, align: 64, elements: !28)
!27 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/numbertheory.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "modnum", scope: !26, file: !27, line: 43, baseType: !10, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "modulus", scope: !26, file: !27, line: 44, baseType: !17, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !26, file: !27, line: 45, baseType: !17, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "wtable", scope: !26, file: !27, line: 46, baseType: !33, offset: 192)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, align: 64, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "log2n", scope: !12, file: !13, line: 50, type: !4)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !12, file: !13, line: 50, type: !4)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !12, file: !13, line: 50, type: !4)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kernel", scope: !12, file: !13, line: 51, type: !17)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !12, file: !13, line: 52, type: !17)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !12, file: !13, line: 57, type: !16)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w0", scope: !12, file: !13, line: 57, type: !17)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w1", scope: !12, file: !13, line: 57, type: !17)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wstep", scope: !12, file: !13, line: 57, type: !17)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !12, file: !13, line: 58, type: !4)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !12, file: !13, line: 58, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !48, file: !13, line: 97, type: !17)
!48 = distinct !DILexicalBlock(scope: !49, file: !13, line: 96, column: 36)
!49 = distinct !DILexicalBlock(scope: !50, file: !13, line: 96, column: 9)
!50 = distinct !DILexicalBlock(scope: !51, file: !13, line: 96, column: 9)
!51 = distinct !DILexicalBlock(scope: !52, file: !13, line: 92, column: 29)
!52 = distinct !DILexicalBlock(scope: !53, file: !13, line: 92, column: 5)
!53 = distinct !DILexicalBlock(scope: !12, file: !13, line: 92, column: 5)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !48, file: !13, line: 98, type: !17)
!55 = !DISubprogram(name: "inv_six_step_fnt", scope: !13, file: !13, line: 132, type: !14, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @inv_six_step_fnt, variables: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !79}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !55, file: !13, line: 132, type: !16)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !55, file: !13, line: 132, type: !4)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !55, file: !13, line: 132, type: !10)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tparams", scope: !55, file: !13, line: 134, type: !25)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "log2n", scope: !55, file: !13, line: 135, type: !4)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !55, file: !13, line: 135, type: !4)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !55, file: !13, line: 135, type: !4)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kernel", scope: !55, file: !13, line: 136, type: !17)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !55, file: !13, line: 137, type: !17)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !55, file: !13, line: 142, type: !16)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w0", scope: !55, file: !13, line: 142, type: !17)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w1", scope: !55, file: !13, line: 142, type: !17)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wstep", scope: !55, file: !13, line: 142, type: !17)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !55, file: !13, line: 143, type: !4)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !55, file: !13, line: 143, type: !4)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !73, file: !13, line: 179, type: !17)
!73 = distinct !DILexicalBlock(scope: !74, file: !13, line: 178, column: 36)
!74 = distinct !DILexicalBlock(scope: !75, file: !13, line: 178, column: 9)
!75 = distinct !DILexicalBlock(scope: !76, file: !13, line: 178, column: 9)
!76 = distinct !DILexicalBlock(scope: !77, file: !13, line: 174, column: 29)
!77 = distinct !DILexicalBlock(scope: !78, file: !13, line: 174, column: 5)
!78 = distinct !DILexicalBlock(scope: !55, file: !13, line: 174, column: 5)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !73, file: !13, line: 180, type: !17)
!80 = !DISubprogram(name: "mpd_bsr", scope: !81, file: !81, line: 107, type: !82, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64)* @mpd_bsr, variables: !84)
!81 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/bits.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !4}
!84 = !{!85, !86}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !80, file: !81, line: 107, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !80, file: !81, line: 109, type: !4)
!87 = !DISubprogram(name: "std_setmodulus", scope: !27, file: !27, line: 66, type: !88, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i64*)* @std_setmodulus, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !10, !16}
!90 = !{!91, !92}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 1, scope: !87, file: !27, line: 66, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 2, scope: !87, file: !27, line: 66, type: !16)
!93 = !DISubprogram(name: "x64_powmod", scope: !94, file: !94, line: 276, type: !95, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_powmod, variables: !97)
!94 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/umodarith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!95 = !DISubroutineType(types: !96)
!96 = !{!17, !17, !17, !17}
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 1, scope: !93, file: !94, line: 276, type: !17)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exp", arg: 2, scope: !93, file: !94, line: 276, type: !17)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 3, scope: !93, file: !94, line: 276, type: !17)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !93, file: !94, line: 278, type: !17)
!102 = !DISubprogram(name: "x64_mulmod", scope: !94, file: !94, line: 151, type: !95, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_mulmod, variables: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !102, file: !94, line: 151, type: !17)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !102, file: !94, line: 151, type: !17)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 3, scope: !102, file: !94, line: 151, type: !17)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !102, file: !94, line: 153, type: !17)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !102, file: !94, line: 153, type: !17)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !102, file: !94, line: 153, type: !17)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !102, file: !94, line: 153, type: !17)
!111 = !DISubprogram(name: "_mpd_mul_words", scope: !112, file: !112, line: 206, type: !113, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @_mpd_mul_words, variables: !115)
!112 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !16, !16, !17, !17}
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 1, scope: !111, file: !112, line: 206, type: !16)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 2, scope: !111, file: !112, line: 206, type: !16)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 3, scope: !111, file: !112, line: 206, type: !17)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !111, file: !112, line: 206, type: !17)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !111, file: !112, line: 208, type: !17)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !111, file: !112, line: 208, type: !17)
!122 = !DISubprogram(name: "x64_mulmod2", scope: !94, file: !94, line: 268, type: !123, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64, i64*, i64, i64)* @x64_mulmod2, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !16, !17, !16, !17, !17}
!125 = !{!126, !127, !128, !129, !130}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 1, scope: !122, file: !94, line: 268, type: !16)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b0", arg: 2, scope: !122, file: !94, line: 268, type: !17)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 3, scope: !122, file: !94, line: 268, type: !16)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b1", arg: 4, scope: !122, file: !94, line: 268, type: !17)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 5, scope: !122, file: !94, line: 269, type: !17)
!131 = !DISubprogram(name: "x64_mulmod2c", scope: !94, file: !94, line: 261, type: !113, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @x64_mulmod2c, variables: !132)
!132 = !{!133, !134, !135, !136}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !131, file: !94, line: 261, type: !16)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !131, file: !94, line: 261, type: !16)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !131, file: !94, line: 261, type: !17)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 4, scope: !131, file: !94, line: 261, type: !17)
!137 = !{i32 2, !"Dwarf Version", i32 4}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"PIC Level", i32 2}
!140 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!141 = !{!142, !142, i64 0}
!142 = !{!"any pointer", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DIExpression()
!146 = !DILocation(line: 47, column: 26, scope: !12)
!147 = !{!148, !148, i64 0}
!148 = !{!"long", !143, i64 0}
!149 = !DILocation(line: 47, column: 40, scope: !12)
!150 = !{!151, !151, i64 0}
!151 = !{!"int", !143, i64 0}
!152 = !DILocation(line: 47, column: 47, scope: !12)
!153 = !DILocation(line: 49, column: 5, scope: !12)
!154 = !DILocation(line: 49, column: 24, scope: !12)
!155 = !DILocation(line: 50, column: 5, scope: !12)
!156 = !DILocation(line: 50, column: 16, scope: !12)
!157 = !DILocation(line: 50, column: 23, scope: !12)
!158 = !DILocation(line: 50, column: 26, scope: !12)
!159 = !DILocation(line: 51, column: 5, scope: !12)
!160 = !DILocation(line: 51, column: 16, scope: !12)
!161 = !DILocation(line: 52, column: 5, scope: !12)
!162 = !DILocation(line: 52, column: 16, scope: !12)
!163 = !DILocation(line: 57, column: 5, scope: !12)
!164 = !DILocation(line: 57, column: 17, scope: !12)
!165 = !DILocation(line: 57, column: 20, scope: !12)
!166 = !DILocation(line: 57, column: 24, scope: !12)
!167 = !DILocation(line: 57, column: 28, scope: !12)
!168 = !DILocation(line: 58, column: 5, scope: !12)
!169 = !DILocation(line: 58, column: 16, scope: !12)
!170 = !DILocation(line: 58, column: 19, scope: !12)
!171 = !DILocation(line: 65, column: 21, scope: !12)
!172 = !DILocation(line: 65, column: 13, scope: !12)
!173 = !DILocation(line: 65, column: 11, scope: !12)
!174 = !DILocation(line: 66, column: 29, scope: !12)
!175 = !DILocation(line: 66, column: 35, scope: !12)
!176 = !DILocation(line: 66, column: 25, scope: !12)
!177 = !DILocation(line: 66, column: 7, scope: !12)
!178 = !DILocation(line: 67, column: 29, scope: !12)
!179 = !DILocation(line: 67, column: 38, scope: !12)
!180 = !DILocation(line: 67, column: 44, scope: !12)
!181 = !DILocation(line: 67, column: 35, scope: !12)
!182 = !DILocation(line: 67, column: 25, scope: !12)
!183 = !DILocation(line: 67, column: 7, scope: !12)
!184 = !DILocation(line: 71, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !12, file: !13, line: 71, column: 9)
!186 = !DILocation(line: 71, column: 28, scope: !185)
!187 = !DILocation(line: 71, column: 31, scope: !185)
!188 = !DILocation(line: 71, column: 10, scope: !185)
!189 = !DILocation(line: 71, column: 9, scope: !12)
!190 = !DILocation(line: 72, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !13, line: 71, column: 35)
!192 = !DILocation(line: 76, column: 41, scope: !193)
!193 = distinct !DILexicalBlock(scope: !12, file: !13, line: 76, column: 9)
!194 = !DILocation(line: 76, column: 48, scope: !193)
!195 = !DILocation(line: 76, column: 20, scope: !193)
!196 = !DILocation(line: 76, column: 18, scope: !193)
!197 = !DILocation(line: 76, column: 57, scope: !193)
!198 = !DILocation(line: 76, column: 9, scope: !12)
!199 = !DILocation(line: 77, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !13, line: 76, column: 72)
!201 = !DILocation(line: 79, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !12, file: !13, line: 79, column: 5)
!203 = !DILocation(line: 79, column: 12, scope: !202)
!204 = !DILocation(line: 79, column: 10, scope: !202)
!205 = !DILocation(line: 79, column: 17, scope: !206)
!206 = !DILexicalBlockFile(scope: !207, file: !13, discriminator: 2)
!207 = !DILexicalBlockFile(scope: !208, file: !13, discriminator: 1)
!208 = distinct !DILexicalBlock(scope: !202, file: !13, line: 79, column: 5)
!209 = !DILocation(line: 79, column: 21, scope: !208)
!210 = !DILocation(line: 79, column: 23, scope: !208)
!211 = !DILocation(line: 79, column: 22, scope: !208)
!212 = !DILocation(line: 79, column: 19, scope: !208)
!213 = !DILocation(line: 79, column: 5, scope: !202)
!214 = !DILocation(line: 80, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !13, line: 79, column: 34)
!216 = !DILocation(line: 80, column: 21, scope: !215)
!217 = !DILocation(line: 80, column: 24, scope: !215)
!218 = !DILocation(line: 80, column: 9, scope: !215)
!219 = !DILocation(line: 81, column: 5, scope: !215)
!220 = !DILocation(line: 79, column: 31, scope: !208)
!221 = !DILocation(line: 79, column: 28, scope: !208)
!222 = !DILocation(line: 79, column: 5, scope: !208)
!223 = !DILocation(line: 84, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !12, file: !13, line: 84, column: 9)
!225 = !DILocation(line: 84, column: 28, scope: !224)
!226 = !DILocation(line: 84, column: 31, scope: !224)
!227 = !DILocation(line: 84, column: 10, scope: !224)
!228 = !DILocation(line: 84, column: 9, scope: !12)
!229 = !DILocation(line: 85, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !13, line: 84, column: 35)
!231 = !DILocation(line: 85, column: 18, scope: !230)
!232 = !DILocation(line: 86, column: 9, scope: !230)
!233 = !DILocation(line: 90, column: 20, scope: !12)
!234 = !DILocation(line: 90, column: 5, scope: !12)
!235 = !DILocation(line: 91, column: 29, scope: !12)
!236 = !DILocation(line: 91, column: 36, scope: !12)
!237 = !DILocation(line: 91, column: 14, scope: !12)
!238 = !DILocation(line: 91, column: 12, scope: !12)
!239 = !DILocation(line: 92, column: 12, scope: !53)
!240 = !DILocation(line: 92, column: 10, scope: !53)
!241 = !DILocation(line: 92, column: 17, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !13, discriminator: 2)
!243 = !DILexicalBlockFile(scope: !52, file: !13, discriminator: 1)
!244 = !DILocation(line: 92, column: 21, scope: !52)
!245 = !DILocation(line: 92, column: 19, scope: !52)
!246 = !DILocation(line: 92, column: 5, scope: !53)
!247 = !DILocation(line: 93, column: 12, scope: !51)
!248 = !DILocation(line: 94, column: 25, scope: !51)
!249 = !DILocation(line: 94, column: 33, scope: !51)
!250 = !DILocation(line: 94, column: 36, scope: !51)
!251 = !DILocation(line: 94, column: 14, scope: !51)
!252 = !DILocation(line: 94, column: 12, scope: !51)
!253 = !DILocation(line: 95, column: 28, scope: !51)
!254 = !DILocation(line: 95, column: 32, scope: !51)
!255 = !DILocation(line: 95, column: 36, scope: !51)
!256 = !DILocation(line: 95, column: 17, scope: !51)
!257 = !DILocation(line: 95, column: 15, scope: !51)
!258 = !DILocation(line: 96, column: 16, scope: !50)
!259 = !DILocation(line: 96, column: 14, scope: !50)
!260 = !DILocation(line: 96, column: 21, scope: !261)
!261 = !DILexicalBlockFile(scope: !262, file: !13, discriminator: 2)
!262 = !DILexicalBlockFile(scope: !49, file: !13, discriminator: 1)
!263 = !DILocation(line: 96, column: 25, scope: !49)
!264 = !DILocation(line: 96, column: 23, scope: !49)
!265 = !DILocation(line: 96, column: 9, scope: !50)
!266 = !DILocation(line: 97, column: 13, scope: !48)
!267 = !DILocation(line: 97, column: 24, scope: !48)
!268 = !DILocation(line: 97, column: 31, scope: !48)
!269 = !DILocation(line: 97, column: 33, scope: !48)
!270 = !DILocation(line: 97, column: 32, scope: !48)
!271 = !DILocation(line: 97, column: 35, scope: !48)
!272 = !DILocation(line: 97, column: 34, scope: !48)
!273 = !DILocation(line: 97, column: 29, scope: !48)
!274 = !DILocation(line: 98, column: 13, scope: !48)
!275 = !DILocation(line: 98, column: 24, scope: !48)
!276 = !DILocation(line: 98, column: 31, scope: !48)
!277 = !DILocation(line: 98, column: 33, scope: !48)
!278 = !DILocation(line: 98, column: 32, scope: !48)
!279 = !DILocation(line: 98, column: 35, scope: !48)
!280 = !DILocation(line: 98, column: 34, scope: !48)
!281 = !DILocation(line: 98, column: 36, scope: !48)
!282 = !DILocation(line: 98, column: 29, scope: !48)
!283 = !DILocation(line: 99, column: 30, scope: !48)
!284 = !DILocation(line: 99, column: 39, scope: !48)
!285 = !DILocation(line: 99, column: 43, scope: !48)
!286 = !DILocation(line: 99, column: 13, scope: !48)
!287 = !DILocation(line: 100, column: 36, scope: !48)
!288 = !DILocation(line: 100, column: 43, scope: !48)
!289 = !DILocation(line: 100, column: 13, scope: !48)
!290 = !DILocation(line: 101, column: 24, scope: !48)
!291 = !DILocation(line: 101, column: 15, scope: !48)
!292 = !DILocation(line: 101, column: 17, scope: !48)
!293 = !DILocation(line: 101, column: 16, scope: !48)
!294 = !DILocation(line: 101, column: 19, scope: !48)
!295 = !DILocation(line: 101, column: 18, scope: !48)
!296 = !DILocation(line: 101, column: 13, scope: !48)
!297 = !DILocation(line: 101, column: 22, scope: !48)
!298 = !DILocation(line: 102, column: 26, scope: !48)
!299 = !DILocation(line: 102, column: 15, scope: !48)
!300 = !DILocation(line: 102, column: 17, scope: !48)
!301 = !DILocation(line: 102, column: 16, scope: !48)
!302 = !DILocation(line: 102, column: 19, scope: !48)
!303 = !DILocation(line: 102, column: 18, scope: !48)
!304 = !DILocation(line: 102, column: 20, scope: !48)
!305 = !DILocation(line: 102, column: 13, scope: !48)
!306 = !DILocation(line: 102, column: 24, scope: !48)
!307 = !DILocation(line: 103, column: 9, scope: !49)
!308 = !DILocation(line: 103, column: 9, scope: !48)
!309 = !DILocation(line: 96, column: 30, scope: !49)
!310 = !DILocation(line: 96, column: 9, scope: !49)
!311 = !DILocation(line: 104, column: 5, scope: !51)
!312 = !DILocation(line: 92, column: 25, scope: !52)
!313 = !DILocation(line: 92, column: 5, scope: !52)
!314 = !DILocation(line: 107, column: 9, scope: !315)
!315 = distinct !DILexicalBlock(scope: !12, file: !13, line: 107, column: 9)
!316 = !DILocation(line: 107, column: 14, scope: !315)
!317 = !DILocation(line: 107, column: 11, scope: !315)
!318 = !DILocation(line: 107, column: 9, scope: !12)
!319 = !DILocation(line: 108, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !13, line: 107, column: 17)
!321 = !DILocation(line: 108, column: 18, scope: !320)
!322 = !DILocation(line: 109, column: 45, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !13, line: 109, column: 13)
!324 = !DILocation(line: 109, column: 52, scope: !323)
!325 = !DILocation(line: 109, column: 24, scope: !323)
!326 = !DILocation(line: 109, column: 22, scope: !323)
!327 = !DILocation(line: 109, column: 61, scope: !323)
!328 = !DILocation(line: 109, column: 13, scope: !320)
!329 = !DILocation(line: 110, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !13, line: 109, column: 76)
!331 = !DILocation(line: 112, column: 5, scope: !320)
!332 = !DILocation(line: 113, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !12, file: !13, line: 113, column: 5)
!334 = !DILocation(line: 113, column: 12, scope: !333)
!335 = !DILocation(line: 113, column: 10, scope: !333)
!336 = !DILocation(line: 113, column: 17, scope: !337)
!337 = !DILexicalBlockFile(scope: !338, file: !13, discriminator: 2)
!338 = !DILexicalBlockFile(scope: !339, file: !13, discriminator: 1)
!339 = distinct !DILexicalBlock(scope: !333, file: !13, line: 113, column: 5)
!340 = !DILocation(line: 113, column: 21, scope: !339)
!341 = !DILocation(line: 113, column: 23, scope: !339)
!342 = !DILocation(line: 113, column: 22, scope: !339)
!343 = !DILocation(line: 113, column: 19, scope: !339)
!344 = !DILocation(line: 113, column: 5, scope: !333)
!345 = !DILocation(line: 114, column: 18, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !13, line: 113, column: 34)
!347 = !DILocation(line: 114, column: 21, scope: !346)
!348 = !DILocation(line: 114, column: 24, scope: !346)
!349 = !DILocation(line: 114, column: 9, scope: !346)
!350 = !DILocation(line: 115, column: 5, scope: !346)
!351 = !DILocation(line: 113, column: 31, scope: !339)
!352 = !DILocation(line: 113, column: 28, scope: !339)
!353 = !DILocation(line: 113, column: 5, scope: !339)
!354 = !DILocation(line: 116, column: 5, scope: !12)
!355 = !DILocation(line: 116, column: 14, scope: !12)
!356 = !DILocation(line: 126, column: 5, scope: !12)
!357 = !DILocation(line: 127, column: 1, scope: !12)
!358 = !DILocation(line: 107, column: 20, scope: !80)
!359 = !DILocation(line: 109, column: 5, scope: !80)
!360 = !DILocation(line: 109, column: 16, scope: !80)
!361 = !DILocation(line: 118, column: 15, scope: !80)
!362 = !DILocation(line: 111, column: 5, scope: !80)
!363 = !{i32 101075, i32 101089}
!364 = !DILocation(line: 122, column: 17, scope: !80)
!365 = !DILocation(line: 122, column: 12, scope: !80)
!366 = !DILocation(line: 123, column: 1, scope: !80)
!367 = !DILocation(line: 122, column: 5, scope: !80)
!368 = !DILocation(line: 66, column: 20, scope: !87)
!369 = !DILocation(line: 66, column: 40, scope: !87)
!370 = !DILocation(line: 68, column: 24, scope: !87)
!371 = !DILocation(line: 68, column: 13, scope: !87)
!372 = !DILocation(line: 68, column: 6, scope: !87)
!373 = !DILocation(line: 68, column: 11, scope: !87)
!374 = !DILocation(line: 69, column: 1, scope: !87)
!375 = !DILocation(line: 276, column: 23, scope: !93)
!376 = !DILocation(line: 276, column: 40, scope: !93)
!377 = !DILocation(line: 276, column: 56, scope: !93)
!378 = !DILocation(line: 278, column: 5, scope: !93)
!379 = !DILocation(line: 278, column: 16, scope: !93)
!380 = !DILocation(line: 280, column: 5, scope: !93)
!381 = !DILocation(line: 280, column: 12, scope: !382)
!382 = !DILexicalBlockFile(scope: !383, file: !94, discriminator: 2)
!383 = !DILexicalBlockFile(scope: !93, file: !94, discriminator: 1)
!384 = !DILocation(line: 280, column: 16, scope: !93)
!385 = !DILocation(line: 281, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !94, line: 281, column: 13)
!387 = distinct !DILexicalBlock(scope: !93, file: !94, line: 280, column: 21)
!388 = !DILocation(line: 281, column: 17, scope: !386)
!389 = !DILocation(line: 281, column: 13, scope: !387)
!390 = !DILocation(line: 282, column: 28, scope: !386)
!391 = !DILocation(line: 282, column: 31, scope: !386)
!392 = !DILocation(line: 282, column: 37, scope: !386)
!393 = !DILocation(line: 282, column: 17, scope: !386)
!394 = !DILocation(line: 282, column: 15, scope: !386)
!395 = !DILocation(line: 282, column: 13, scope: !386)
!396 = !DILocation(line: 283, column: 27, scope: !387)
!397 = !DILocation(line: 283, column: 33, scope: !387)
!398 = !DILocation(line: 283, column: 39, scope: !387)
!399 = !DILocation(line: 283, column: 16, scope: !387)
!400 = !DILocation(line: 283, column: 14, scope: !387)
!401 = !DILocation(line: 284, column: 13, scope: !387)
!402 = !DILocation(line: 287, column: 12, scope: !93)
!403 = !DILocation(line: 288, column: 1, scope: !93)
!404 = !DILocation(line: 287, column: 5, scope: !93)
!405 = !DILocation(line: 151, column: 23, scope: !102)
!406 = !DILocation(line: 151, column: 37, scope: !102)
!407 = !DILocation(line: 151, column: 51, scope: !102)
!408 = !DILocation(line: 153, column: 5, scope: !102)
!409 = !DILocation(line: 153, column: 16, scope: !102)
!410 = !DILocation(line: 153, column: 20, scope: !102)
!411 = !DILocation(line: 153, column: 24, scope: !102)
!412 = !DILocation(line: 153, column: 27, scope: !102)
!413 = !DILocation(line: 156, column: 30, scope: !102)
!414 = !DILocation(line: 156, column: 33, scope: !102)
!415 = !DILocation(line: 156, column: 5, scope: !102)
!416 = !DILocation(line: 158, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !102, file: !94, line: 158, column: 9)
!418 = !DILocation(line: 158, column: 11, scope: !417)
!419 = !DILocation(line: 158, column: 9, scope: !102)
!420 = !DILocation(line: 161, column: 17, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !94, line: 158, column: 25)
!422 = !DILocation(line: 161, column: 15, scope: !421)
!423 = !DILocation(line: 161, column: 11, scope: !421)
!424 = !DILocation(line: 162, column: 12, scope: !421)
!425 = !DILocation(line: 164, column: 13, scope: !421)
!426 = !DILocation(line: 164, column: 18, scope: !421)
!427 = !DILocation(line: 164, column: 16, scope: !421)
!428 = !DILocation(line: 164, column: 11, scope: !421)
!429 = !DILocation(line: 165, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !421, file: !94, line: 165, column: 13)
!431 = !DILocation(line: 165, column: 17, scope: !430)
!432 = !DILocation(line: 165, column: 15, scope: !430)
!433 = !DILocation(line: 165, column: 13, scope: !421)
!434 = !DILocation(line: 165, column: 23, scope: !435)
!435 = !DILexicalBlockFile(scope: !430, file: !94, discriminator: 1)
!436 = !DILocation(line: 165, column: 21, scope: !430)
!437 = !DILocation(line: 167, column: 11, scope: !421)
!438 = !DILocation(line: 168, column: 14, scope: !421)
!439 = !DILocation(line: 168, column: 18, scope: !421)
!440 = !DILocation(line: 168, column: 16, scope: !421)
!441 = !DILocation(line: 168, column: 12, scope: !421)
!442 = !DILocation(line: 169, column: 13, scope: !443)
!443 = distinct !DILexicalBlock(scope: !421, file: !94, line: 169, column: 13)
!444 = !DILocation(line: 169, column: 18, scope: !443)
!445 = !DILocation(line: 169, column: 16, scope: !443)
!446 = !DILocation(line: 169, column: 13, scope: !421)
!447 = !DILocation(line: 169, column: 23, scope: !448)
!448 = !DILexicalBlockFile(scope: !443, file: !94, discriminator: 1)
!449 = !DILocation(line: 169, column: 21, scope: !443)
!450 = !DILocation(line: 172, column: 17, scope: !421)
!451 = !DILocation(line: 172, column: 15, scope: !421)
!452 = !DILocation(line: 172, column: 11, scope: !421)
!453 = !DILocation(line: 173, column: 12, scope: !421)
!454 = !DILocation(line: 175, column: 13, scope: !421)
!455 = !DILocation(line: 175, column: 18, scope: !421)
!456 = !DILocation(line: 175, column: 16, scope: !421)
!457 = !DILocation(line: 175, column: 11, scope: !421)
!458 = !DILocation(line: 176, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !421, file: !94, line: 176, column: 13)
!460 = !DILocation(line: 176, column: 17, scope: !459)
!461 = !DILocation(line: 176, column: 15, scope: !459)
!462 = !DILocation(line: 176, column: 13, scope: !421)
!463 = !DILocation(line: 176, column: 23, scope: !464)
!464 = !DILexicalBlockFile(scope: !459, file: !94, discriminator: 1)
!465 = !DILocation(line: 176, column: 21, scope: !459)
!466 = !DILocation(line: 178, column: 11, scope: !421)
!467 = !DILocation(line: 179, column: 14, scope: !421)
!468 = !DILocation(line: 179, column: 18, scope: !421)
!469 = !DILocation(line: 179, column: 16, scope: !421)
!470 = !DILocation(line: 179, column: 12, scope: !421)
!471 = !DILocation(line: 180, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !421, file: !94, line: 180, column: 13)
!473 = !DILocation(line: 180, column: 18, scope: !472)
!474 = !DILocation(line: 180, column: 16, scope: !472)
!475 = !DILocation(line: 180, column: 13, scope: !421)
!476 = !DILocation(line: 180, column: 23, scope: !477)
!477 = !DILexicalBlockFile(scope: !472, file: !94, discriminator: 1)
!478 = !DILocation(line: 180, column: 21, scope: !472)
!479 = !DILocation(line: 182, column: 17, scope: !421)
!480 = !DILocation(line: 182, column: 20, scope: !421)
!481 = !DILocation(line: 182, column: 23, scope: !482)
!482 = !DILexicalBlockFile(scope: !421, file: !94, discriminator: 2)
!483 = !DILocation(line: 182, column: 29, scope: !421)
!484 = !DILocation(line: 182, column: 26, scope: !421)
!485 = !DILocation(line: 182, column: 33, scope: !486)
!486 = !DILexicalBlockFile(scope: !487, file: !94, discriminator: 3)
!487 = !DILexicalBlockFile(scope: !421, file: !94, discriminator: 1)
!488 = !DILocation(line: 182, column: 38, scope: !421)
!489 = !DILocation(line: 182, column: 36, scope: !421)
!490 = !DILocation(line: 182, column: 42, scope: !491)
!491 = !DILexicalBlockFile(scope: !421, file: !94, discriminator: 4)
!492 = !DILocation(line: 182, column: 9, scope: !493)
!493 = !DILexicalBlockFile(scope: !494, file: !94, discriminator: 6)
!494 = !DILexicalBlockFile(scope: !421, file: !94, discriminator: 5)
!495 = !DILocation(line: 182, column: 9, scope: !421)
!496 = !DILocation(line: 184, column: 14, scope: !497)
!497 = distinct !DILexicalBlock(scope: !417, file: !94, line: 184, column: 14)
!498 = !DILocation(line: 184, column: 16, scope: !497)
!499 = !DILocation(line: 184, column: 14, scope: !417)
!500 = !DILocation(line: 187, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !94, line: 184, column: 30)
!502 = !DILocation(line: 187, column: 15, scope: !501)
!503 = !DILocation(line: 187, column: 11, scope: !501)
!504 = !DILocation(line: 188, column: 12, scope: !501)
!505 = !DILocation(line: 190, column: 13, scope: !501)
!506 = !DILocation(line: 190, column: 18, scope: !501)
!507 = !DILocation(line: 190, column: 16, scope: !501)
!508 = !DILocation(line: 190, column: 11, scope: !501)
!509 = !DILocation(line: 191, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !501, file: !94, line: 191, column: 13)
!511 = !DILocation(line: 191, column: 17, scope: !510)
!512 = !DILocation(line: 191, column: 15, scope: !510)
!513 = !DILocation(line: 191, column: 13, scope: !501)
!514 = !DILocation(line: 191, column: 23, scope: !515)
!515 = !DILexicalBlockFile(scope: !510, file: !94, discriminator: 1)
!516 = !DILocation(line: 191, column: 21, scope: !510)
!517 = !DILocation(line: 193, column: 11, scope: !501)
!518 = !DILocation(line: 194, column: 14, scope: !501)
!519 = !DILocation(line: 194, column: 18, scope: !501)
!520 = !DILocation(line: 194, column: 16, scope: !501)
!521 = !DILocation(line: 194, column: 12, scope: !501)
!522 = !DILocation(line: 195, column: 13, scope: !523)
!523 = distinct !DILexicalBlock(scope: !501, file: !94, line: 195, column: 13)
!524 = !DILocation(line: 195, column: 18, scope: !523)
!525 = !DILocation(line: 195, column: 16, scope: !523)
!526 = !DILocation(line: 195, column: 13, scope: !501)
!527 = !DILocation(line: 195, column: 23, scope: !528)
!528 = !DILexicalBlockFile(scope: !523, file: !94, discriminator: 1)
!529 = !DILocation(line: 195, column: 21, scope: !523)
!530 = !DILocation(line: 198, column: 17, scope: !501)
!531 = !DILocation(line: 198, column: 15, scope: !501)
!532 = !DILocation(line: 198, column: 11, scope: !501)
!533 = !DILocation(line: 199, column: 12, scope: !501)
!534 = !DILocation(line: 201, column: 13, scope: !501)
!535 = !DILocation(line: 201, column: 18, scope: !501)
!536 = !DILocation(line: 201, column: 16, scope: !501)
!537 = !DILocation(line: 201, column: 11, scope: !501)
!538 = !DILocation(line: 202, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !501, file: !94, line: 202, column: 13)
!540 = !DILocation(line: 202, column: 17, scope: !539)
!541 = !DILocation(line: 202, column: 15, scope: !539)
!542 = !DILocation(line: 202, column: 13, scope: !501)
!543 = !DILocation(line: 202, column: 23, scope: !544)
!544 = !DILexicalBlockFile(scope: !539, file: !94, discriminator: 1)
!545 = !DILocation(line: 202, column: 21, scope: !539)
!546 = !DILocation(line: 204, column: 11, scope: !501)
!547 = !DILocation(line: 205, column: 14, scope: !501)
!548 = !DILocation(line: 205, column: 18, scope: !501)
!549 = !DILocation(line: 205, column: 16, scope: !501)
!550 = !DILocation(line: 205, column: 12, scope: !501)
!551 = !DILocation(line: 206, column: 13, scope: !552)
!552 = distinct !DILexicalBlock(scope: !501, file: !94, line: 206, column: 13)
!553 = !DILocation(line: 206, column: 18, scope: !552)
!554 = !DILocation(line: 206, column: 16, scope: !552)
!555 = !DILocation(line: 206, column: 13, scope: !501)
!556 = !DILocation(line: 206, column: 23, scope: !557)
!557 = !DILexicalBlockFile(scope: !552, file: !94, discriminator: 1)
!558 = !DILocation(line: 206, column: 21, scope: !552)
!559 = !DILocation(line: 209, column: 17, scope: !501)
!560 = !DILocation(line: 209, column: 15, scope: !501)
!561 = !DILocation(line: 209, column: 11, scope: !501)
!562 = !DILocation(line: 210, column: 12, scope: !501)
!563 = !DILocation(line: 212, column: 13, scope: !501)
!564 = !DILocation(line: 212, column: 18, scope: !501)
!565 = !DILocation(line: 212, column: 16, scope: !501)
!566 = !DILocation(line: 212, column: 11, scope: !501)
!567 = !DILocation(line: 213, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !501, file: !94, line: 213, column: 13)
!569 = !DILocation(line: 213, column: 17, scope: !568)
!570 = !DILocation(line: 213, column: 15, scope: !568)
!571 = !DILocation(line: 213, column: 13, scope: !501)
!572 = !DILocation(line: 213, column: 23, scope: !573)
!573 = !DILexicalBlockFile(scope: !568, file: !94, discriminator: 1)
!574 = !DILocation(line: 213, column: 21, scope: !568)
!575 = !DILocation(line: 215, column: 11, scope: !501)
!576 = !DILocation(line: 216, column: 14, scope: !501)
!577 = !DILocation(line: 216, column: 18, scope: !501)
!578 = !DILocation(line: 216, column: 16, scope: !501)
!579 = !DILocation(line: 216, column: 12, scope: !501)
!580 = !DILocation(line: 217, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !501, file: !94, line: 217, column: 13)
!582 = !DILocation(line: 217, column: 18, scope: !581)
!583 = !DILocation(line: 217, column: 16, scope: !581)
!584 = !DILocation(line: 217, column: 13, scope: !501)
!585 = !DILocation(line: 217, column: 23, scope: !586)
!586 = !DILexicalBlockFile(scope: !581, file: !94, discriminator: 1)
!587 = !DILocation(line: 217, column: 21, scope: !581)
!588 = !DILocation(line: 219, column: 17, scope: !501)
!589 = !DILocation(line: 219, column: 20, scope: !501)
!590 = !DILocation(line: 219, column: 23, scope: !591)
!591 = !DILexicalBlockFile(scope: !501, file: !94, discriminator: 2)
!592 = !DILocation(line: 219, column: 29, scope: !501)
!593 = !DILocation(line: 219, column: 26, scope: !501)
!594 = !DILocation(line: 219, column: 33, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !94, discriminator: 3)
!596 = !DILexicalBlockFile(scope: !501, file: !94, discriminator: 1)
!597 = !DILocation(line: 219, column: 38, scope: !501)
!598 = !DILocation(line: 219, column: 36, scope: !501)
!599 = !DILocation(line: 219, column: 42, scope: !600)
!600 = !DILexicalBlockFile(scope: !501, file: !94, discriminator: 4)
!601 = !DILocation(line: 219, column: 9, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !94, discriminator: 6)
!603 = !DILexicalBlockFile(scope: !501, file: !94, discriminator: 5)
!604 = !DILocation(line: 219, column: 9, scope: !501)
!605 = !DILocation(line: 224, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !497, file: !94, line: 221, column: 10)
!607 = !DILocation(line: 224, column: 15, scope: !606)
!608 = !DILocation(line: 224, column: 11, scope: !606)
!609 = !DILocation(line: 225, column: 12, scope: !606)
!610 = !DILocation(line: 227, column: 13, scope: !606)
!611 = !DILocation(line: 227, column: 18, scope: !606)
!612 = !DILocation(line: 227, column: 16, scope: !606)
!613 = !DILocation(line: 227, column: 11, scope: !606)
!614 = !DILocation(line: 228, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !606, file: !94, line: 228, column: 13)
!616 = !DILocation(line: 228, column: 17, scope: !615)
!617 = !DILocation(line: 228, column: 15, scope: !615)
!618 = !DILocation(line: 228, column: 13, scope: !606)
!619 = !DILocation(line: 228, column: 23, scope: !620)
!620 = !DILexicalBlockFile(scope: !615, file: !94, discriminator: 1)
!621 = !DILocation(line: 228, column: 21, scope: !615)
!622 = !DILocation(line: 230, column: 11, scope: !606)
!623 = !DILocation(line: 231, column: 14, scope: !606)
!624 = !DILocation(line: 231, column: 18, scope: !606)
!625 = !DILocation(line: 231, column: 16, scope: !606)
!626 = !DILocation(line: 231, column: 12, scope: !606)
!627 = !DILocation(line: 232, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !606, file: !94, line: 232, column: 13)
!629 = !DILocation(line: 232, column: 18, scope: !628)
!630 = !DILocation(line: 232, column: 16, scope: !628)
!631 = !DILocation(line: 232, column: 13, scope: !606)
!632 = !DILocation(line: 232, column: 23, scope: !633)
!633 = !DILexicalBlockFile(scope: !628, file: !94, discriminator: 1)
!634 = !DILocation(line: 232, column: 21, scope: !628)
!635 = !DILocation(line: 235, column: 17, scope: !606)
!636 = !DILocation(line: 235, column: 15, scope: !606)
!637 = !DILocation(line: 235, column: 11, scope: !606)
!638 = !DILocation(line: 236, column: 12, scope: !606)
!639 = !DILocation(line: 238, column: 13, scope: !606)
!640 = !DILocation(line: 238, column: 18, scope: !606)
!641 = !DILocation(line: 238, column: 16, scope: !606)
!642 = !DILocation(line: 238, column: 11, scope: !606)
!643 = !DILocation(line: 239, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !606, file: !94, line: 239, column: 13)
!645 = !DILocation(line: 239, column: 17, scope: !644)
!646 = !DILocation(line: 239, column: 15, scope: !644)
!647 = !DILocation(line: 239, column: 13, scope: !606)
!648 = !DILocation(line: 239, column: 23, scope: !649)
!649 = !DILexicalBlockFile(scope: !644, file: !94, discriminator: 1)
!650 = !DILocation(line: 239, column: 21, scope: !644)
!651 = !DILocation(line: 241, column: 11, scope: !606)
!652 = !DILocation(line: 242, column: 14, scope: !606)
!653 = !DILocation(line: 242, column: 18, scope: !606)
!654 = !DILocation(line: 242, column: 16, scope: !606)
!655 = !DILocation(line: 242, column: 12, scope: !606)
!656 = !DILocation(line: 243, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !606, file: !94, line: 243, column: 13)
!658 = !DILocation(line: 243, column: 18, scope: !657)
!659 = !DILocation(line: 243, column: 16, scope: !657)
!660 = !DILocation(line: 243, column: 13, scope: !606)
!661 = !DILocation(line: 243, column: 23, scope: !662)
!662 = !DILexicalBlockFile(scope: !657, file: !94, discriminator: 1)
!663 = !DILocation(line: 243, column: 21, scope: !657)
!664 = !DILocation(line: 246, column: 17, scope: !606)
!665 = !DILocation(line: 246, column: 15, scope: !606)
!666 = !DILocation(line: 246, column: 11, scope: !606)
!667 = !DILocation(line: 247, column: 12, scope: !606)
!668 = !DILocation(line: 249, column: 13, scope: !606)
!669 = !DILocation(line: 249, column: 18, scope: !606)
!670 = !DILocation(line: 249, column: 16, scope: !606)
!671 = !DILocation(line: 249, column: 11, scope: !606)
!672 = !DILocation(line: 250, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !606, file: !94, line: 250, column: 13)
!674 = !DILocation(line: 250, column: 17, scope: !673)
!675 = !DILocation(line: 250, column: 15, scope: !673)
!676 = !DILocation(line: 250, column: 13, scope: !606)
!677 = !DILocation(line: 250, column: 23, scope: !678)
!678 = !DILexicalBlockFile(scope: !673, file: !94, discriminator: 1)
!679 = !DILocation(line: 250, column: 21, scope: !673)
!680 = !DILocation(line: 252, column: 11, scope: !606)
!681 = !DILocation(line: 253, column: 14, scope: !606)
!682 = !DILocation(line: 253, column: 18, scope: !606)
!683 = !DILocation(line: 253, column: 16, scope: !606)
!684 = !DILocation(line: 253, column: 12, scope: !606)
!685 = !DILocation(line: 254, column: 13, scope: !686)
!686 = distinct !DILexicalBlock(scope: !606, file: !94, line: 254, column: 13)
!687 = !DILocation(line: 254, column: 18, scope: !686)
!688 = !DILocation(line: 254, column: 16, scope: !686)
!689 = !DILocation(line: 254, column: 13, scope: !606)
!690 = !DILocation(line: 254, column: 23, scope: !691)
!691 = !DILexicalBlockFile(scope: !686, file: !94, discriminator: 1)
!692 = !DILocation(line: 254, column: 21, scope: !686)
!693 = !DILocation(line: 256, column: 17, scope: !606)
!694 = !DILocation(line: 256, column: 20, scope: !606)
!695 = !DILocation(line: 256, column: 23, scope: !696)
!696 = !DILexicalBlockFile(scope: !606, file: !94, discriminator: 2)
!697 = !DILocation(line: 256, column: 29, scope: !606)
!698 = !DILocation(line: 256, column: 26, scope: !606)
!699 = !DILocation(line: 256, column: 33, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !94, discriminator: 3)
!701 = !DILexicalBlockFile(scope: !606, file: !94, discriminator: 1)
!702 = !DILocation(line: 256, column: 38, scope: !606)
!703 = !DILocation(line: 256, column: 36, scope: !606)
!704 = !DILocation(line: 256, column: 42, scope: !705)
!705 = !DILexicalBlockFile(scope: !606, file: !94, discriminator: 4)
!706 = !DILocation(line: 256, column: 9, scope: !707)
!707 = !DILexicalBlockFile(scope: !708, file: !94, discriminator: 6)
!708 = !DILexicalBlockFile(scope: !606, file: !94, discriminator: 5)
!709 = !DILocation(line: 256, column: 9, scope: !606)
!710 = !DILocation(line: 258, column: 1, scope: !102)
!711 = !DILocation(line: 268, column: 25, scope: !122)
!712 = !DILocation(line: 268, column: 40, scope: !122)
!713 = !DILocation(line: 268, column: 56, scope: !122)
!714 = !DILocation(line: 268, column: 71, scope: !122)
!715 = !DILocation(line: 269, column: 24, scope: !122)
!716 = !DILocation(line: 271, column: 23, scope: !122)
!717 = !DILocation(line: 271, column: 22, scope: !122)
!718 = !DILocation(line: 271, column: 27, scope: !122)
!719 = !DILocation(line: 271, column: 31, scope: !122)
!720 = !DILocation(line: 271, column: 11, scope: !122)
!721 = !DILocation(line: 271, column: 6, scope: !122)
!722 = !DILocation(line: 271, column: 9, scope: !122)
!723 = !DILocation(line: 272, column: 23, scope: !122)
!724 = !DILocation(line: 272, column: 22, scope: !122)
!725 = !DILocation(line: 272, column: 27, scope: !122)
!726 = !DILocation(line: 272, column: 31, scope: !122)
!727 = !DILocation(line: 272, column: 11, scope: !122)
!728 = !DILocation(line: 272, column: 6, scope: !122)
!729 = !DILocation(line: 272, column: 9, scope: !122)
!730 = !DILocation(line: 273, column: 1, scope: !122)
!731 = !DILocation(line: 261, column: 26, scope: !131)
!732 = !DILocation(line: 261, column: 41, scope: !131)
!733 = !DILocation(line: 261, column: 55, scope: !131)
!734 = !DILocation(line: 261, column: 69, scope: !131)
!735 = !DILocation(line: 263, column: 22, scope: !131)
!736 = !DILocation(line: 263, column: 21, scope: !131)
!737 = !DILocation(line: 263, column: 25, scope: !131)
!738 = !DILocation(line: 263, column: 28, scope: !131)
!739 = !DILocation(line: 263, column: 10, scope: !131)
!740 = !DILocation(line: 263, column: 6, scope: !131)
!741 = !DILocation(line: 263, column: 8, scope: !131)
!742 = !DILocation(line: 264, column: 22, scope: !131)
!743 = !DILocation(line: 264, column: 21, scope: !131)
!744 = !DILocation(line: 264, column: 25, scope: !131)
!745 = !DILocation(line: 264, column: 28, scope: !131)
!746 = !DILocation(line: 264, column: 10, scope: !131)
!747 = !DILocation(line: 264, column: 6, scope: !131)
!748 = !DILocation(line: 264, column: 8, scope: !131)
!749 = !DILocation(line: 265, column: 1, scope: !131)
!750 = !DILocation(line: 132, column: 30, scope: !55)
!751 = !DILocation(line: 132, column: 44, scope: !55)
!752 = !DILocation(line: 132, column: 51, scope: !55)
!753 = !DILocation(line: 134, column: 5, scope: !55)
!754 = !DILocation(line: 134, column: 24, scope: !55)
!755 = !DILocation(line: 135, column: 5, scope: !55)
!756 = !DILocation(line: 135, column: 16, scope: !55)
!757 = !DILocation(line: 135, column: 23, scope: !55)
!758 = !DILocation(line: 135, column: 26, scope: !55)
!759 = !DILocation(line: 136, column: 5, scope: !55)
!760 = !DILocation(line: 136, column: 16, scope: !55)
!761 = !DILocation(line: 137, column: 5, scope: !55)
!762 = !DILocation(line: 137, column: 16, scope: !55)
!763 = !DILocation(line: 142, column: 5, scope: !55)
!764 = !DILocation(line: 142, column: 17, scope: !55)
!765 = !DILocation(line: 142, column: 20, scope: !55)
!766 = !DILocation(line: 142, column: 24, scope: !55)
!767 = !DILocation(line: 142, column: 28, scope: !55)
!768 = !DILocation(line: 143, column: 5, scope: !55)
!769 = !DILocation(line: 143, column: 16, scope: !55)
!770 = !DILocation(line: 143, column: 19, scope: !55)
!771 = !DILocation(line: 150, column: 21, scope: !55)
!772 = !DILocation(line: 150, column: 13, scope: !55)
!773 = !DILocation(line: 150, column: 11, scope: !55)
!774 = !DILocation(line: 151, column: 29, scope: !55)
!775 = !DILocation(line: 151, column: 35, scope: !55)
!776 = !DILocation(line: 151, column: 25, scope: !55)
!777 = !DILocation(line: 151, column: 7, scope: !55)
!778 = !DILocation(line: 152, column: 29, scope: !55)
!779 = !DILocation(line: 152, column: 38, scope: !55)
!780 = !DILocation(line: 152, column: 44, scope: !55)
!781 = !DILocation(line: 152, column: 35, scope: !55)
!782 = !DILocation(line: 152, column: 25, scope: !55)
!783 = !DILocation(line: 152, column: 7, scope: !55)
!784 = !DILocation(line: 164, column: 41, scope: !785)
!785 = distinct !DILexicalBlock(scope: !55, file: !13, line: 164, column: 9)
!786 = !DILocation(line: 164, column: 47, scope: !785)
!787 = !DILocation(line: 164, column: 20, scope: !785)
!788 = !DILocation(line: 164, column: 18, scope: !785)
!789 = !DILocation(line: 164, column: 56, scope: !785)
!790 = !DILocation(line: 164, column: 9, scope: !55)
!791 = !DILocation(line: 165, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !13, line: 164, column: 71)
!793 = !DILocation(line: 167, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !55, file: !13, line: 167, column: 5)
!795 = !DILocation(line: 167, column: 12, scope: !794)
!796 = !DILocation(line: 167, column: 10, scope: !794)
!797 = !DILocation(line: 167, column: 17, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !13, discriminator: 2)
!799 = !DILexicalBlockFile(scope: !800, file: !13, discriminator: 1)
!800 = distinct !DILexicalBlock(scope: !794, file: !13, line: 167, column: 5)
!801 = !DILocation(line: 167, column: 21, scope: !800)
!802 = !DILocation(line: 167, column: 23, scope: !800)
!803 = !DILocation(line: 167, column: 22, scope: !800)
!804 = !DILocation(line: 167, column: 19, scope: !800)
!805 = !DILocation(line: 167, column: 5, scope: !794)
!806 = !DILocation(line: 168, column: 18, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !13, line: 167, column: 34)
!808 = !DILocation(line: 168, column: 21, scope: !807)
!809 = !DILocation(line: 168, column: 24, scope: !807)
!810 = !DILocation(line: 168, column: 9, scope: !807)
!811 = !DILocation(line: 169, column: 5, scope: !807)
!812 = !DILocation(line: 167, column: 31, scope: !800)
!813 = !DILocation(line: 167, column: 28, scope: !800)
!814 = !DILocation(line: 167, column: 5, scope: !800)
!815 = !DILocation(line: 172, column: 20, scope: !55)
!816 = !DILocation(line: 172, column: 5, scope: !55)
!817 = !DILocation(line: 173, column: 29, scope: !55)
!818 = !DILocation(line: 173, column: 35, scope: !55)
!819 = !DILocation(line: 173, column: 14, scope: !55)
!820 = !DILocation(line: 173, column: 12, scope: !55)
!821 = !DILocation(line: 174, column: 12, scope: !78)
!822 = !DILocation(line: 174, column: 10, scope: !78)
!823 = !DILocation(line: 174, column: 17, scope: !824)
!824 = !DILexicalBlockFile(scope: !825, file: !13, discriminator: 2)
!825 = !DILexicalBlockFile(scope: !77, file: !13, discriminator: 1)
!826 = !DILocation(line: 174, column: 21, scope: !77)
!827 = !DILocation(line: 174, column: 19, scope: !77)
!828 = !DILocation(line: 174, column: 5, scope: !78)
!829 = !DILocation(line: 175, column: 12, scope: !76)
!830 = !DILocation(line: 176, column: 25, scope: !76)
!831 = !DILocation(line: 176, column: 33, scope: !76)
!832 = !DILocation(line: 176, column: 36, scope: !76)
!833 = !DILocation(line: 176, column: 14, scope: !76)
!834 = !DILocation(line: 176, column: 12, scope: !76)
!835 = !DILocation(line: 177, column: 28, scope: !76)
!836 = !DILocation(line: 177, column: 32, scope: !76)
!837 = !DILocation(line: 177, column: 36, scope: !76)
!838 = !DILocation(line: 177, column: 17, scope: !76)
!839 = !DILocation(line: 177, column: 15, scope: !76)
!840 = !DILocation(line: 178, column: 16, scope: !75)
!841 = !DILocation(line: 178, column: 14, scope: !75)
!842 = !DILocation(line: 178, column: 21, scope: !843)
!843 = !DILexicalBlockFile(scope: !844, file: !13, discriminator: 2)
!844 = !DILexicalBlockFile(scope: !74, file: !13, discriminator: 1)
!845 = !DILocation(line: 178, column: 25, scope: !74)
!846 = !DILocation(line: 178, column: 23, scope: !74)
!847 = !DILocation(line: 178, column: 9, scope: !75)
!848 = !DILocation(line: 179, column: 13, scope: !73)
!849 = !DILocation(line: 179, column: 24, scope: !73)
!850 = !DILocation(line: 179, column: 31, scope: !73)
!851 = !DILocation(line: 179, column: 33, scope: !73)
!852 = !DILocation(line: 179, column: 32, scope: !73)
!853 = !DILocation(line: 179, column: 35, scope: !73)
!854 = !DILocation(line: 179, column: 34, scope: !73)
!855 = !DILocation(line: 179, column: 29, scope: !73)
!856 = !DILocation(line: 180, column: 13, scope: !73)
!857 = !DILocation(line: 180, column: 24, scope: !73)
!858 = !DILocation(line: 180, column: 31, scope: !73)
!859 = !DILocation(line: 180, column: 33, scope: !73)
!860 = !DILocation(line: 180, column: 32, scope: !73)
!861 = !DILocation(line: 180, column: 35, scope: !73)
!862 = !DILocation(line: 180, column: 34, scope: !73)
!863 = !DILocation(line: 180, column: 36, scope: !73)
!864 = !DILocation(line: 180, column: 29, scope: !73)
!865 = !DILocation(line: 181, column: 30, scope: !73)
!866 = !DILocation(line: 181, column: 39, scope: !73)
!867 = !DILocation(line: 181, column: 43, scope: !73)
!868 = !DILocation(line: 181, column: 13, scope: !73)
!869 = !DILocation(line: 182, column: 36, scope: !73)
!870 = !DILocation(line: 182, column: 43, scope: !73)
!871 = !DILocation(line: 182, column: 13, scope: !73)
!872 = !DILocation(line: 183, column: 24, scope: !73)
!873 = !DILocation(line: 183, column: 15, scope: !73)
!874 = !DILocation(line: 183, column: 17, scope: !73)
!875 = !DILocation(line: 183, column: 16, scope: !73)
!876 = !DILocation(line: 183, column: 19, scope: !73)
!877 = !DILocation(line: 183, column: 18, scope: !73)
!878 = !DILocation(line: 183, column: 13, scope: !73)
!879 = !DILocation(line: 183, column: 22, scope: !73)
!880 = !DILocation(line: 184, column: 26, scope: !73)
!881 = !DILocation(line: 184, column: 15, scope: !73)
!882 = !DILocation(line: 184, column: 17, scope: !73)
!883 = !DILocation(line: 184, column: 16, scope: !73)
!884 = !DILocation(line: 184, column: 19, scope: !73)
!885 = !DILocation(line: 184, column: 18, scope: !73)
!886 = !DILocation(line: 184, column: 20, scope: !73)
!887 = !DILocation(line: 184, column: 13, scope: !73)
!888 = !DILocation(line: 184, column: 24, scope: !73)
!889 = !DILocation(line: 185, column: 9, scope: !74)
!890 = !DILocation(line: 185, column: 9, scope: !73)
!891 = !DILocation(line: 178, column: 30, scope: !74)
!892 = !DILocation(line: 178, column: 9, scope: !74)
!893 = !DILocation(line: 186, column: 5, scope: !76)
!894 = !DILocation(line: 174, column: 25, scope: !77)
!895 = !DILocation(line: 174, column: 5, scope: !77)
!896 = !DILocation(line: 189, column: 25, scope: !897)
!897 = distinct !DILexicalBlock(scope: !55, file: !13, line: 189, column: 9)
!898 = !DILocation(line: 189, column: 28, scope: !897)
!899 = !DILocation(line: 189, column: 31, scope: !897)
!900 = !DILocation(line: 189, column: 10, scope: !897)
!901 = !DILocation(line: 189, column: 9, scope: !55)
!902 = !DILocation(line: 190, column: 9, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !13, line: 189, column: 35)
!904 = !DILocation(line: 190, column: 18, scope: !903)
!905 = !DILocation(line: 191, column: 9, scope: !903)
!906 = !DILocation(line: 195, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !55, file: !13, line: 195, column: 9)
!908 = !DILocation(line: 195, column: 14, scope: !907)
!909 = !DILocation(line: 195, column: 11, scope: !907)
!910 = !DILocation(line: 195, column: 9, scope: !55)
!911 = !DILocation(line: 196, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !13, line: 195, column: 17)
!913 = !DILocation(line: 196, column: 18, scope: !912)
!914 = !DILocation(line: 197, column: 45, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !13, line: 197, column: 13)
!916 = !DILocation(line: 197, column: 51, scope: !915)
!917 = !DILocation(line: 197, column: 24, scope: !915)
!918 = !DILocation(line: 197, column: 22, scope: !915)
!919 = !DILocation(line: 197, column: 60, scope: !915)
!920 = !DILocation(line: 197, column: 13, scope: !912)
!921 = !DILocation(line: 198, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !13, line: 197, column: 75)
!923 = !DILocation(line: 200, column: 5, scope: !912)
!924 = !DILocation(line: 201, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !55, file: !13, line: 201, column: 5)
!926 = !DILocation(line: 201, column: 12, scope: !925)
!927 = !DILocation(line: 201, column: 10, scope: !925)
!928 = !DILocation(line: 201, column: 17, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !13, discriminator: 2)
!930 = !DILexicalBlockFile(scope: !931, file: !13, discriminator: 1)
!931 = distinct !DILexicalBlock(scope: !925, file: !13, line: 201, column: 5)
!932 = !DILocation(line: 201, column: 21, scope: !931)
!933 = !DILocation(line: 201, column: 23, scope: !931)
!934 = !DILocation(line: 201, column: 22, scope: !931)
!935 = !DILocation(line: 201, column: 19, scope: !931)
!936 = !DILocation(line: 201, column: 5, scope: !925)
!937 = !DILocation(line: 202, column: 18, scope: !938)
!938 = distinct !DILexicalBlock(scope: !931, file: !13, line: 201, column: 34)
!939 = !DILocation(line: 202, column: 21, scope: !938)
!940 = !DILocation(line: 202, column: 24, scope: !938)
!941 = !DILocation(line: 202, column: 9, scope: !938)
!942 = !DILocation(line: 203, column: 5, scope: !938)
!943 = !DILocation(line: 201, column: 31, scope: !931)
!944 = !DILocation(line: 201, column: 28, scope: !931)
!945 = !DILocation(line: 201, column: 5, scope: !931)
!946 = !DILocation(line: 204, column: 5, scope: !55)
!947 = !DILocation(line: 204, column: 14, scope: !55)
!948 = !DILocation(line: 207, column: 25, scope: !949)
!949 = distinct !DILexicalBlock(scope: !55, file: !13, line: 207, column: 9)
!950 = !DILocation(line: 207, column: 28, scope: !949)
!951 = !DILocation(line: 207, column: 31, scope: !949)
!952 = !DILocation(line: 207, column: 10, scope: !949)
!953 = !DILocation(line: 207, column: 9, scope: !55)
!954 = !DILocation(line: 208, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !13, line: 207, column: 35)
!956 = !DILocation(line: 211, column: 5, scope: !55)
!957 = !DILocation(line: 212, column: 1, scope: !55)
!958 = !DILocation(line: 206, column: 28, scope: !111)
!959 = !DILocation(line: 206, column: 44, scope: !111)
!960 = !DILocation(line: 206, column: 59, scope: !111)
!961 = !DILocation(line: 206, column: 73, scope: !111)
!962 = !DILocation(line: 208, column: 5, scope: !111)
!963 = !DILocation(line: 208, column: 16, scope: !111)
!964 = !DILocation(line: 208, column: 19, scope: !111)
!965 = !DILocation(line: 212, column: 23, scope: !111)
!966 = !DILocation(line: 212, column: 33, scope: !111)
!967 = !DILocation(line: 210, column: 5, scope: !111)
!968 = !{i32 104992, i32 105002}
!969 = !DILocation(line: 216, column: 11, scope: !111)
!970 = !DILocation(line: 216, column: 6, scope: !111)
!971 = !DILocation(line: 216, column: 9, scope: !111)
!972 = !DILocation(line: 217, column: 11, scope: !111)
!973 = !DILocation(line: 217, column: 6, scope: !111)
!974 = !DILocation(line: 217, column: 9, scope: !111)
!975 = !DILocation(line: 218, column: 1, scope: !111)
