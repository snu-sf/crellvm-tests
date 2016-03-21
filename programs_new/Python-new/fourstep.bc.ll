; ModuleID = 'irs-onlybc/fourstep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpd_moduli = external hidden constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @four_step_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %R = alloca i64, align 8
  %C = alloca i64, align 8
  %w3table = alloca [3 x i64], align 16
  %kernel = alloca i64, align 8
  %w0 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %wstep = alloca i64, align 8
  %s = alloca i64*, align 8
  %p0 = alloca i64*, align 8
  %p1 = alloca i64*, align 8
  %p2 = alloca i64*, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64* %a, i64** %a.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !19, metadata !153), !dbg !154
  store i64 %n, i64* %n.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !20, metadata !153), !dbg !157
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !158
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !21, metadata !153), !dbg !160
  %0 = bitcast i64* %R to i8*, !dbg !161
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !161
  call void @llvm.dbg.declare(metadata i64* %R, metadata !22, metadata !153), !dbg !162
  store i64 3, i64* %R, align 8, !dbg !162, !tbaa !155
  %1 = bitcast i64* %C to i8*, !dbg !163
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %C, metadata !23, metadata !153), !dbg !164
  %2 = load i64, i64* %n.addr, align 8, !dbg !165, !tbaa !155
  %div = udiv i64 %2, 3, !dbg !166
  store i64 %div, i64* %C, align 8, !dbg !164, !tbaa !155
  %3 = bitcast [3 x i64]* %w3table to i8*, !dbg !167
  call void @llvm.lifetime.start(i64 24, i8* %3) #2, !dbg !167
  call void @llvm.dbg.declare(metadata [3 x i64]* %w3table, metadata !24, metadata !153), !dbg !168
  %4 = bitcast i64* %kernel to i8*, !dbg !169
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !169
  call void @llvm.dbg.declare(metadata i64* %kernel, metadata !28, metadata !153), !dbg !170
  %5 = bitcast i64* %w0 to i8*, !dbg !169
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !169
  call void @llvm.dbg.declare(metadata i64* %w0, metadata !29, metadata !153), !dbg !171
  %6 = bitcast i64* %w1 to i8*, !dbg !169
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !169
  call void @llvm.dbg.declare(metadata i64* %w1, metadata !30, metadata !153), !dbg !172
  %7 = bitcast i64* %wstep to i8*, !dbg !169
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !169
  call void @llvm.dbg.declare(metadata i64* %wstep, metadata !31, metadata !153), !dbg !173
  %8 = bitcast i64** %s to i8*, !dbg !174
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !174
  call void @llvm.dbg.declare(metadata i64** %s, metadata !32, metadata !153), !dbg !175
  %9 = bitcast i64** %p0 to i8*, !dbg !174
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !174
  call void @llvm.dbg.declare(metadata i64** %p0, metadata !33, metadata !153), !dbg !176
  %10 = bitcast i64** %p1 to i8*, !dbg !174
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !174
  call void @llvm.dbg.declare(metadata i64** %p1, metadata !34, metadata !153), !dbg !177
  %11 = bitcast i64** %p2 to i8*, !dbg !174
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !174
  call void @llvm.dbg.declare(metadata i64** %p2, metadata !35, metadata !153), !dbg !178
  %12 = bitcast i64* %umod to i8*, !dbg !179
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !179
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !36, metadata !153), !dbg !180
  %13 = bitcast i64* %i to i8*, !dbg !181
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !181
  call void @llvm.dbg.declare(metadata i64* %i, metadata !37, metadata !153), !dbg !182
  %14 = bitcast i64* %k to i8*, !dbg !181
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !181
  call void @llvm.dbg.declare(metadata i64* %k, metadata !38, metadata !153), !dbg !183
  %15 = load i32, i32* %modnum.addr, align 4, !dbg !184, !tbaa !158
  call void @std_setmodulus(i32 %15, i64* %umod), !dbg !185
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %w3table, i32 0, i32 0, !dbg !186
  %16 = load i32, i32* %modnum.addr, align 4, !dbg !187, !tbaa !158
  call void @_mpd_init_w3table(i64* %arraydecay, i32 -1, i32 %16), !dbg !188
  %17 = load i64*, i64** %a.addr, align 8, !dbg !189, !tbaa !149
  store i64* %17, i64** %p0, align 8, !dbg !191, !tbaa !149
  %18 = load i64*, i64** %p0, align 8, !dbg !192, !tbaa !149
  %19 = load i64, i64* %C, align 8, !dbg !193, !tbaa !155
  %add.ptr = getelementptr i64, i64* %18, i64 %19, !dbg !194
  store i64* %add.ptr, i64** %p1, align 8, !dbg !195, !tbaa !149
  %20 = load i64*, i64** %p0, align 8, !dbg !196, !tbaa !149
  %21 = load i64, i64* %C, align 8, !dbg !197, !tbaa !155
  %mul = mul i64 2, %21, !dbg !198
  %add.ptr1 = getelementptr i64, i64* %20, i64 %mul, !dbg !199
  store i64* %add.ptr1, i64** %p2, align 8, !dbg !200, !tbaa !149
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i64*, i64** %p0, align 8, !dbg !202, !tbaa !149
  %23 = load i64*, i64** %a.addr, align 8, !dbg !206, !tbaa !149
  %24 = load i64, i64* %C, align 8, !dbg !207, !tbaa !155
  %add.ptr2 = getelementptr i64, i64* %23, i64 %24, !dbg !208
  %cmp = icmp ult i64* %22, %add.ptr2, !dbg !209
  br i1 %cmp, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %for.cond
  %25 = load i64*, i64** %p0, align 8, !dbg !211, !tbaa !149
  %26 = load i64*, i64** %p1, align 8, !dbg !213, !tbaa !149
  %27 = load i64*, i64** %p2, align 8, !dbg !214, !tbaa !149
  %arraydecay3 = getelementptr inbounds [3 x i64], [3 x i64]* %w3table, i32 0, i32 0, !dbg !215
  %28 = load i64, i64* %umod, align 8, !dbg !216, !tbaa !155
  call void @std_size3_ntt(i64* %25, i64* %26, i64* %27, i64* %arraydecay3, i64 %28), !dbg !217
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %for.body
  %29 = load i64*, i64** %p0, align 8, !dbg !219, !tbaa !149
  %incdec.ptr = getelementptr i64, i64* %29, i32 1, !dbg !219
  store i64* %incdec.ptr, i64** %p0, align 8, !dbg !219, !tbaa !149
  %30 = load i64*, i64** %p1, align 8, !dbg !220, !tbaa !149
  %incdec.ptr4 = getelementptr i64, i64* %30, i32 1, !dbg !220
  store i64* %incdec.ptr4, i64** %p1, align 8, !dbg !220, !tbaa !149
  %31 = load i64*, i64** %p2, align 8, !dbg !221, !tbaa !149
  %incdec.ptr5 = getelementptr i64, i64* %31, i32 1, !dbg !221
  store i64* %incdec.ptr5, i64** %p2, align 8, !dbg !221, !tbaa !149
  br label %for.cond, !dbg !222

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %n.addr, align 8, !dbg !223, !tbaa !155
  %33 = load i32, i32* %modnum.addr, align 4, !dbg !224, !tbaa !158
  %call = call i64 @_mpd_getkernel(i64 %32, i32 -1, i32 %33), !dbg !225
  store i64 %call, i64* %kernel, align 8, !dbg !226, !tbaa !155
  store i64 1, i64* %i, align 8, !dbg !227, !tbaa !155
  br label %for.cond.6, !dbg !228

for.cond.6:                                       ; preds = %for.inc.29, %for.end
  %34 = load i64, i64* %i, align 8, !dbg !229, !tbaa !155
  %35 = load i64, i64* %R, align 8, !dbg !232, !tbaa !155
  %cmp7 = icmp ult i64 %34, %35, !dbg !233
  br i1 %cmp7, label %for.body.8, label %for.end.30, !dbg !234

for.body.8:                                       ; preds = %for.cond.6
  store i64 1, i64* %w0, align 8, !dbg !235, !tbaa !155
  %36 = load i64, i64* %kernel, align 8, !dbg !236, !tbaa !155
  %37 = load i64, i64* %i, align 8, !dbg !237, !tbaa !155
  %38 = load i64, i64* %umod, align 8, !dbg !238, !tbaa !155
  %call9 = call i64 @x64_powmod(i64 %36, i64 %37, i64 %38), !dbg !239
  store i64 %call9, i64* %w1, align 8, !dbg !240, !tbaa !155
  %39 = load i64, i64* %w1, align 8, !dbg !241, !tbaa !155
  %40 = load i64, i64* %w1, align 8, !dbg !242, !tbaa !155
  %41 = load i64, i64* %umod, align 8, !dbg !243, !tbaa !155
  %call10 = call i64 @x64_mulmod(i64 %39, i64 %40, i64 %41), !dbg !244
  store i64 %call10, i64* %wstep, align 8, !dbg !245, !tbaa !155
  store i64 0, i64* %k, align 8, !dbg !246, !tbaa !155
  br label %for.cond.11, !dbg !247

for.cond.11:                                      ; preds = %for.inc.26, %for.body.8
  %42 = load i64, i64* %k, align 8, !dbg !248, !tbaa !155
  %43 = load i64, i64* %C, align 8, !dbg !251, !tbaa !155
  %sub = sub i64 %43, 1, !dbg !252
  %cmp12 = icmp ult i64 %42, %sub, !dbg !253
  br i1 %cmp12, label %for.body.13, label %for.end.28, !dbg !254

for.body.13:                                      ; preds = %for.cond.11
  %44 = bitcast i64* %x0 to i8*, !dbg !255
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !255
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !39, metadata !153), !dbg !256
  %45 = load i64, i64* %i, align 8, !dbg !257, !tbaa !155
  %46 = load i64, i64* %C, align 8, !dbg !258, !tbaa !155
  %mul14 = mul i64 %45, %46, !dbg !259
  %47 = load i64, i64* %k, align 8, !dbg !260, !tbaa !155
  %add = add i64 %mul14, %47, !dbg !261
  %48 = load i64*, i64** %a.addr, align 8, !dbg !262, !tbaa !149
  %arrayidx = getelementptr i64, i64* %48, i64 %add, !dbg !262
  %49 = load i64, i64* %arrayidx, align 8, !dbg !262, !tbaa !155
  store i64 %49, i64* %x0, align 8, !dbg !256, !tbaa !155
  %50 = bitcast i64* %x1 to i8*, !dbg !263
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !263
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !46, metadata !153), !dbg !264
  %51 = load i64, i64* %i, align 8, !dbg !265, !tbaa !155
  %52 = load i64, i64* %C, align 8, !dbg !266, !tbaa !155
  %mul15 = mul i64 %51, %52, !dbg !267
  %53 = load i64, i64* %k, align 8, !dbg !268, !tbaa !155
  %add16 = add i64 %mul15, %53, !dbg !269
  %add17 = add i64 %add16, 1, !dbg !270
  %54 = load i64*, i64** %a.addr, align 8, !dbg !271, !tbaa !149
  %arrayidx18 = getelementptr i64, i64* %54, i64 %add17, !dbg !271
  %55 = load i64, i64* %arrayidx18, align 8, !dbg !271, !tbaa !155
  store i64 %55, i64* %x1, align 8, !dbg !264, !tbaa !155
  %56 = load i64, i64* %w0, align 8, !dbg !272, !tbaa !155
  %57 = load i64, i64* %w1, align 8, !dbg !273, !tbaa !155
  %58 = load i64, i64* %umod, align 8, !dbg !274, !tbaa !155
  call void @x64_mulmod2(i64* %x0, i64 %56, i64* %x1, i64 %57, i64 %58), !dbg !275
  %59 = load i64, i64* %wstep, align 8, !dbg !276, !tbaa !155
  %60 = load i64, i64* %umod, align 8, !dbg !277, !tbaa !155
  call void @x64_mulmod2c(i64* %w0, i64* %w1, i64 %59, i64 %60), !dbg !278
  %61 = load i64, i64* %x0, align 8, !dbg !279, !tbaa !155
  %62 = load i64, i64* %i, align 8, !dbg !280, !tbaa !155
  %63 = load i64, i64* %C, align 8, !dbg !281, !tbaa !155
  %mul19 = mul i64 %62, %63, !dbg !282
  %64 = load i64, i64* %k, align 8, !dbg !283, !tbaa !155
  %add20 = add i64 %mul19, %64, !dbg !284
  %65 = load i64*, i64** %a.addr, align 8, !dbg !285, !tbaa !149
  %arrayidx21 = getelementptr i64, i64* %65, i64 %add20, !dbg !285
  store i64 %61, i64* %arrayidx21, align 8, !dbg !286, !tbaa !155
  %66 = load i64, i64* %x1, align 8, !dbg !287, !tbaa !155
  %67 = load i64, i64* %i, align 8, !dbg !288, !tbaa !155
  %68 = load i64, i64* %C, align 8, !dbg !289, !tbaa !155
  %mul22 = mul i64 %67, %68, !dbg !290
  %69 = load i64, i64* %k, align 8, !dbg !291, !tbaa !155
  %add23 = add i64 %mul22, %69, !dbg !292
  %add24 = add i64 %add23, 1, !dbg !293
  %70 = load i64*, i64** %a.addr, align 8, !dbg !294, !tbaa !149
  %arrayidx25 = getelementptr i64, i64* %70, i64 %add24, !dbg !294
  store i64 %66, i64* %arrayidx25, align 8, !dbg !295, !tbaa !155
  %71 = bitcast i64* %x1 to i8*, !dbg !296
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !296
  %72 = bitcast i64* %x0 to i8*, !dbg !296
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !296
  br label %for.inc.26, !dbg !297

for.inc.26:                                       ; preds = %for.body.13
  %73 = load i64, i64* %k, align 8, !dbg !298, !tbaa !155
  %add27 = add i64 %73, 2, !dbg !298
  store i64 %add27, i64* %k, align 8, !dbg !298, !tbaa !155
  br label %for.cond.11, !dbg !299

for.end.28:                                       ; preds = %for.cond.11
  br label %for.inc.29, !dbg !300

for.inc.29:                                       ; preds = %for.end.28
  %74 = load i64, i64* %i, align 8, !dbg !301, !tbaa !155
  %inc = add i64 %74, 1, !dbg !301
  store i64 %inc, i64* %i, align 8, !dbg !301, !tbaa !155
  br label %for.cond.6, !dbg !302

for.end.30:                                       ; preds = %for.cond.6
  %75 = load i64*, i64** %a.addr, align 8, !dbg !303, !tbaa !149
  store i64* %75, i64** %s, align 8, !dbg !305, !tbaa !149
  br label %for.cond.31, !dbg !306

for.cond.31:                                      ; preds = %for.inc.36, %for.end.30
  %76 = load i64*, i64** %s, align 8, !dbg !307, !tbaa !149
  %77 = load i64*, i64** %a.addr, align 8, !dbg !311, !tbaa !149
  %78 = load i64, i64* %n.addr, align 8, !dbg !312, !tbaa !155
  %add.ptr32 = getelementptr i64, i64* %77, i64 %78, !dbg !313
  %cmp33 = icmp ult i64* %76, %add.ptr32, !dbg !314
  br i1 %cmp33, label %for.body.34, label %for.end.38, !dbg !315

for.body.34:                                      ; preds = %for.cond.31
  %79 = load i64*, i64** %s, align 8, !dbg !316, !tbaa !149
  %80 = load i64, i64* %C, align 8, !dbg !319, !tbaa !155
  %81 = load i32, i32* %modnum.addr, align 4, !dbg !320, !tbaa !158
  %call35 = call i32 @six_step_fnt(i64* %79, i64 %80, i32 %81), !dbg !321
  %tobool = icmp ne i32 %call35, 0, !dbg !321
  br i1 %tobool, label %if.end, label %if.then, !dbg !322

if.then:                                          ; preds = %for.body.34
  store i32 0, i32* %retval, !dbg !323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !323

if.end:                                           ; preds = %for.body.34
  br label %for.inc.36, !dbg !325

for.inc.36:                                       ; preds = %if.end
  %82 = load i64, i64* %C, align 8, !dbg !326, !tbaa !155
  %83 = load i64*, i64** %s, align 8, !dbg !327, !tbaa !149
  %add.ptr37 = getelementptr i64, i64* %83, i64 %82, !dbg !327
  store i64* %add.ptr37, i64** %s, align 8, !dbg !327, !tbaa !149
  br label %for.cond.31, !dbg !328

for.end.38:                                       ; preds = %for.cond.31
  store i32 1, i32* %retval, !dbg !329
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !329

cleanup:                                          ; preds = %for.end.38, %if.then
  %84 = bitcast i64* %k to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !330
  %85 = bitcast i64* %i to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !330
  %86 = bitcast i64* %umod to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !330
  %87 = bitcast i64** %p2 to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !330
  %88 = bitcast i64** %p1 to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !330
  %89 = bitcast i64** %p0 to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !330
  %90 = bitcast i64** %s to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !330
  %91 = bitcast i64* %wstep to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !330
  %92 = bitcast i64* %w1 to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !330
  %93 = bitcast i64* %w0 to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !330
  %94 = bitcast i64* %kernel to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !330
  %95 = bitcast [3 x i64]* %w3table to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 24, i8* %95) #2, !dbg !330
  %96 = bitcast i64* %C to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !330
  %97 = bitcast i64* %R to i8*, !dbg !330
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !330
  %98 = load i32, i32* %retval, !dbg !330
  ret i32 %98, !dbg !330
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @std_setmodulus(i32 %modnum, i64* %umod) #3 {
entry:
  %modnum.addr = alloca i32, align 4
  %umod.addr = alloca i64*, align 8
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !158
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !79, metadata !153), !dbg !331
  store i64* %umod, i64** %umod.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %umod.addr, metadata !80, metadata !153), !dbg !332
  %0 = load i32, i32* %modnum.addr, align 4, !dbg !333, !tbaa !158
  %idxprom = sext i32 %0 to i64, !dbg !334
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_moduli, i32 0, i64 %idxprom, !dbg !334
  %1 = load i64, i64* %arrayidx, align 8, !dbg !334, !tbaa !155
  %2 = load i64*, i64** %umod.addr, align 8, !dbg !335, !tbaa !149
  store i64 %1, i64* %2, align 8, !dbg !336, !tbaa !155
  ret void, !dbg !337
}

declare hidden void @_mpd_init_w3table(i64*, i32, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @std_size3_ntt(i64* %x1, i64* %x2, i64* %x3, i64* %w3table, i64 %umod) #3 {
entry:
  %x1.addr = alloca i64*, align 8
  %x2.addr = alloca i64*, align 8
  %x3.addr = alloca i64*, align 8
  %w3table.addr = alloca i64*, align 8
  %umod.addr = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %w = alloca i64, align 8
  %s = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64* %x1, i64** %x1.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %x1.addr, metadata !85, metadata !153), !dbg !338
  store i64* %x2, i64** %x2.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %x2.addr, metadata !86, metadata !153), !dbg !339
  store i64* %x3, i64** %x3.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %x3.addr, metadata !87, metadata !153), !dbg !340
  store i64* %w3table, i64** %w3table.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %w3table.addr, metadata !88, metadata !153), !dbg !341
  store i64 %umod, i64* %umod.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %umod.addr, metadata !89, metadata !153), !dbg !342
  %0 = bitcast i64* %r1 to i8*, !dbg !343
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !343
  call void @llvm.dbg.declare(metadata i64* %r1, metadata !90, metadata !153), !dbg !344
  %1 = bitcast i64* %r2 to i8*, !dbg !343
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !343
  call void @llvm.dbg.declare(metadata i64* %r2, metadata !91, metadata !153), !dbg !345
  %2 = bitcast i64* %w to i8*, !dbg !346
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !346
  call void @llvm.dbg.declare(metadata i64* %w, metadata !92, metadata !153), !dbg !347
  %3 = bitcast i64* %s to i8*, !dbg !348
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !348
  call void @llvm.dbg.declare(metadata i64* %s, metadata !93, metadata !153), !dbg !349
  %4 = bitcast i64* %tmp to i8*, !dbg !348
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !348
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !94, metadata !153), !dbg !350
  %5 = load i64*, i64** %x1.addr, align 8, !dbg !351, !tbaa !149
  %6 = load i64, i64* %5, align 8, !dbg !352, !tbaa !155
  store i64 %6, i64* %s, align 8, !dbg !353, !tbaa !155
  %7 = load i64, i64* %s, align 8, !dbg !354, !tbaa !155
  %8 = load i64*, i64** %x2.addr, align 8, !dbg !355, !tbaa !149
  %9 = load i64, i64* %8, align 8, !dbg !356, !tbaa !155
  %10 = load i64, i64* %umod.addr, align 8, !dbg !357, !tbaa !155
  %call = call i64 @addmod(i64 %7, i64 %9, i64 %10), !dbg !358
  store i64 %call, i64* %s, align 8, !dbg !359, !tbaa !155
  %11 = load i64, i64* %s, align 8, !dbg !360, !tbaa !155
  %12 = load i64*, i64** %x3.addr, align 8, !dbg !361, !tbaa !149
  %13 = load i64, i64* %12, align 8, !dbg !362, !tbaa !155
  %14 = load i64, i64* %umod.addr, align 8, !dbg !363, !tbaa !155
  %call1 = call i64 @addmod(i64 %11, i64 %13, i64 %14), !dbg !364
  store i64 %call1, i64* %s, align 8, !dbg !365, !tbaa !155
  %15 = load i64, i64* %s, align 8, !dbg !366, !tbaa !155
  store i64 %15, i64* %r1, align 8, !dbg !367, !tbaa !155
  %16 = load i64*, i64** %x1.addr, align 8, !dbg !368, !tbaa !149
  %17 = load i64, i64* %16, align 8, !dbg !369, !tbaa !155
  store i64 %17, i64* %s, align 8, !dbg !370, !tbaa !155
  %18 = load i64*, i64** %w3table.addr, align 8, !dbg !371, !tbaa !149
  %arrayidx = getelementptr i64, i64* %18, i64 1, !dbg !371
  %19 = load i64, i64* %arrayidx, align 8, !dbg !371, !tbaa !155
  store i64 %19, i64* %w, align 8, !dbg !372, !tbaa !155
  %20 = load i64*, i64** %x2.addr, align 8, !dbg !373, !tbaa !149
  %21 = load i64, i64* %20, align 8, !dbg !374, !tbaa !155
  %22 = load i64, i64* %w, align 8, !dbg !375, !tbaa !155
  %23 = load i64, i64* %umod.addr, align 8, !dbg !376, !tbaa !155
  %call2 = call i64 @x64_mulmod(i64 %21, i64 %22, i64 %23), !dbg !377
  store i64 %call2, i64* %tmp, align 8, !dbg !378, !tbaa !155
  %24 = load i64, i64* %s, align 8, !dbg !379, !tbaa !155
  %25 = load i64, i64* %tmp, align 8, !dbg !380, !tbaa !155
  %26 = load i64, i64* %umod.addr, align 8, !dbg !381, !tbaa !155
  %call3 = call i64 @addmod(i64 %24, i64 %25, i64 %26), !dbg !382
  store i64 %call3, i64* %s, align 8, !dbg !383, !tbaa !155
  %27 = load i64*, i64** %w3table.addr, align 8, !dbg !384, !tbaa !149
  %arrayidx4 = getelementptr i64, i64* %27, i64 2, !dbg !384
  %28 = load i64, i64* %arrayidx4, align 8, !dbg !384, !tbaa !155
  store i64 %28, i64* %w, align 8, !dbg !385, !tbaa !155
  %29 = load i64*, i64** %x3.addr, align 8, !dbg !386, !tbaa !149
  %30 = load i64, i64* %29, align 8, !dbg !387, !tbaa !155
  %31 = load i64, i64* %w, align 8, !dbg !388, !tbaa !155
  %32 = load i64, i64* %umod.addr, align 8, !dbg !389, !tbaa !155
  %call5 = call i64 @x64_mulmod(i64 %30, i64 %31, i64 %32), !dbg !390
  store i64 %call5, i64* %tmp, align 8, !dbg !391, !tbaa !155
  %33 = load i64, i64* %s, align 8, !dbg !392, !tbaa !155
  %34 = load i64, i64* %tmp, align 8, !dbg !393, !tbaa !155
  %35 = load i64, i64* %umod.addr, align 8, !dbg !394, !tbaa !155
  %call6 = call i64 @addmod(i64 %33, i64 %34, i64 %35), !dbg !395
  store i64 %call6, i64* %s, align 8, !dbg !396, !tbaa !155
  %36 = load i64, i64* %s, align 8, !dbg !397, !tbaa !155
  store i64 %36, i64* %r2, align 8, !dbg !398, !tbaa !155
  %37 = load i64*, i64** %x1.addr, align 8, !dbg !399, !tbaa !149
  %38 = load i64, i64* %37, align 8, !dbg !400, !tbaa !155
  store i64 %38, i64* %s, align 8, !dbg !401, !tbaa !155
  %39 = load i64*, i64** %w3table.addr, align 8, !dbg !402, !tbaa !149
  %arrayidx7 = getelementptr i64, i64* %39, i64 2, !dbg !402
  %40 = load i64, i64* %arrayidx7, align 8, !dbg !402, !tbaa !155
  store i64 %40, i64* %w, align 8, !dbg !403, !tbaa !155
  %41 = load i64*, i64** %x2.addr, align 8, !dbg !404, !tbaa !149
  %42 = load i64, i64* %41, align 8, !dbg !405, !tbaa !155
  %43 = load i64, i64* %w, align 8, !dbg !406, !tbaa !155
  %44 = load i64, i64* %umod.addr, align 8, !dbg !407, !tbaa !155
  %call8 = call i64 @x64_mulmod(i64 %42, i64 %43, i64 %44), !dbg !408
  store i64 %call8, i64* %tmp, align 8, !dbg !409, !tbaa !155
  %45 = load i64, i64* %s, align 8, !dbg !410, !tbaa !155
  %46 = load i64, i64* %tmp, align 8, !dbg !411, !tbaa !155
  %47 = load i64, i64* %umod.addr, align 8, !dbg !412, !tbaa !155
  %call9 = call i64 @addmod(i64 %45, i64 %46, i64 %47), !dbg !413
  store i64 %call9, i64* %s, align 8, !dbg !414, !tbaa !155
  %48 = load i64*, i64** %w3table.addr, align 8, !dbg !415, !tbaa !149
  %arrayidx10 = getelementptr i64, i64* %48, i64 1, !dbg !415
  %49 = load i64, i64* %arrayidx10, align 8, !dbg !415, !tbaa !155
  store i64 %49, i64* %w, align 8, !dbg !416, !tbaa !155
  %50 = load i64*, i64** %x3.addr, align 8, !dbg !417, !tbaa !149
  %51 = load i64, i64* %50, align 8, !dbg !418, !tbaa !155
  %52 = load i64, i64* %w, align 8, !dbg !419, !tbaa !155
  %53 = load i64, i64* %umod.addr, align 8, !dbg !420, !tbaa !155
  %call11 = call i64 @x64_mulmod(i64 %51, i64 %52, i64 %53), !dbg !421
  store i64 %call11, i64* %tmp, align 8, !dbg !422, !tbaa !155
  %54 = load i64, i64* %s, align 8, !dbg !423, !tbaa !155
  %55 = load i64, i64* %tmp, align 8, !dbg !424, !tbaa !155
  %56 = load i64, i64* %umod.addr, align 8, !dbg !425, !tbaa !155
  %call12 = call i64 @addmod(i64 %54, i64 %55, i64 %56), !dbg !426
  store i64 %call12, i64* %s, align 8, !dbg !427, !tbaa !155
  %57 = load i64, i64* %s, align 8, !dbg !428, !tbaa !155
  %58 = load i64*, i64** %x3.addr, align 8, !dbg !429, !tbaa !149
  store i64 %57, i64* %58, align 8, !dbg !430, !tbaa !155
  %59 = load i64, i64* %r2, align 8, !dbg !431, !tbaa !155
  %60 = load i64*, i64** %x2.addr, align 8, !dbg !432, !tbaa !149
  store i64 %59, i64* %60, align 8, !dbg !433, !tbaa !155
  %61 = load i64, i64* %r1, align 8, !dbg !434, !tbaa !155
  %62 = load i64*, i64** %x1.addr, align 8, !dbg !435, !tbaa !149
  store i64 %61, i64* %62, align 8, !dbg !436, !tbaa !155
  %63 = bitcast i64* %tmp to i8*, !dbg !437
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !437
  %64 = bitcast i64* %s to i8*, !dbg !437
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !437
  %65 = bitcast i64* %w to i8*, !dbg !437
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !437
  %66 = bitcast i64* %r2 to i8*, !dbg !437
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !437
  %67 = bitcast i64* %r1 to i8*, !dbg !437
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !437
  ret void, !dbg !437
}

declare hidden i64 @_mpd_getkernel(i64, i32, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_powmod(i64 %base, i64 %exp, i64 %umod) #3 {
entry:
  %base.addr = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  %umod.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %base.addr, metadata !106, metadata !153), !dbg !438
  store i64 %exp, i64* %exp.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %exp.addr, metadata !107, metadata !153), !dbg !439
  store i64 %umod, i64* %umod.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %umod.addr, metadata !108, metadata !153), !dbg !440
  %0 = bitcast i64* %r to i8*, !dbg !441
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !441
  call void @llvm.dbg.declare(metadata i64* %r, metadata !109, metadata !153), !dbg !442
  store i64 1, i64* %r, align 8, !dbg !442, !tbaa !155
  br label %while.cond, !dbg !443

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %exp.addr, align 8, !dbg !444, !tbaa !155
  %cmp = icmp ugt i64 %1, 0, !dbg !447
  br i1 %cmp, label %while.body, label %while.end, !dbg !443

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %exp.addr, align 8, !dbg !448, !tbaa !155
  %and = and i64 %2, 1, !dbg !451
  %tobool = icmp ne i64 %and, 0, !dbg !451
  br i1 %tobool, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* %r, align 8, !dbg !453, !tbaa !155
  %4 = load i64, i64* %base.addr, align 8, !dbg !454, !tbaa !155
  %5 = load i64, i64* %umod.addr, align 8, !dbg !455, !tbaa !155
  %call = call i64 @x64_mulmod(i64 %3, i64 %4, i64 %5), !dbg !456
  store i64 %call, i64* %r, align 8, !dbg !457, !tbaa !155
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i64, i64* %base.addr, align 8, !dbg !459, !tbaa !155
  %7 = load i64, i64* %base.addr, align 8, !dbg !460, !tbaa !155
  %8 = load i64, i64* %umod.addr, align 8, !dbg !461, !tbaa !155
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !462
  store i64 %call1, i64* %base.addr, align 8, !dbg !463, !tbaa !155
  %9 = load i64, i64* %exp.addr, align 8, !dbg !464, !tbaa !155
  %shr = lshr i64 %9, 1, !dbg !464
  store i64 %shr, i64* %exp.addr, align 8, !dbg !464, !tbaa !155
  br label %while.cond, !dbg !443

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %r, align 8, !dbg !465, !tbaa !155
  %11 = bitcast i64* %r to i8*, !dbg !466
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !466
  ret i64 %10, !dbg !467
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
  store i64 %a, i64* %a.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !112, metadata !153), !dbg !468
  store i64 %b, i64* %b.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !113, metadata !153), !dbg !469
  store i64 %m, i64* %m.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !114, metadata !153), !dbg !470
  %0 = bitcast i64* %hi to i8*, !dbg !471
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !471
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !115, metadata !153), !dbg !472
  %1 = bitcast i64* %lo to i8*, !dbg !471
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !471
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !116, metadata !153), !dbg !473
  %2 = bitcast i64* %x to i8*, !dbg !471
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !471
  call void @llvm.dbg.declare(metadata i64* %x, metadata !117, metadata !153), !dbg !474
  %3 = bitcast i64* %y to i8*, !dbg !471
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !471
  call void @llvm.dbg.declare(metadata i64* %y, metadata !118, metadata !153), !dbg !475
  %4 = load i64, i64* %a.addr, align 8, !dbg !476, !tbaa !155
  %5 = load i64, i64* %b.addr, align 8, !dbg !477, !tbaa !155
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5), !dbg !478
  %6 = load i64, i64* %m.addr, align 8, !dbg !479, !tbaa !155
  %and = and i64 %6, 4294967296, !dbg !481
  %tobool = icmp ne i64 %and, 0, !dbg !481
  br i1 %tobool, label %if.then, label %if.else, !dbg !482

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %hi, align 8, !dbg !483, !tbaa !155
  store i64 %7, i64* %y, align 8, !dbg !485, !tbaa !155
  store i64 %7, i64* %x, align 8, !dbg !486, !tbaa !155
  %8 = load i64, i64* %hi, align 8, !dbg !487, !tbaa !155
  %shr = lshr i64 %8, 32, !dbg !487
  store i64 %shr, i64* %hi, align 8, !dbg !487, !tbaa !155
  %9 = load i64, i64* %lo, align 8, !dbg !488, !tbaa !155
  %10 = load i64, i64* %x, align 8, !dbg !489, !tbaa !155
  %sub = sub i64 %9, %10, !dbg !490
  store i64 %sub, i64* %x, align 8, !dbg !491, !tbaa !155
  %11 = load i64, i64* %x, align 8, !dbg !492, !tbaa !155
  %12 = load i64, i64* %lo, align 8, !dbg !494, !tbaa !155
  %cmp = icmp ugt i64 %11, %12, !dbg !495
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !496

if.then.1:                                        ; preds = %if.then
  %13 = load i64, i64* %hi, align 8, !dbg !497, !tbaa !155
  %dec = add i64 %13, -1, !dbg !497
  store i64 %dec, i64* %hi, align 8, !dbg !497, !tbaa !155
  br label %if.end, !dbg !499

if.end:                                           ; preds = %if.then.1, %if.then
  %14 = load i64, i64* %y, align 8, !dbg !500, !tbaa !155
  %shl = shl i64 %14, 32, !dbg !500
  store i64 %shl, i64* %y, align 8, !dbg !500, !tbaa !155
  %15 = load i64, i64* %y, align 8, !dbg !501, !tbaa !155
  %16 = load i64, i64* %x, align 8, !dbg !502, !tbaa !155
  %add = add i64 %15, %16, !dbg !503
  store i64 %add, i64* %lo, align 8, !dbg !504, !tbaa !155
  %17 = load i64, i64* %lo, align 8, !dbg !505, !tbaa !155
  %18 = load i64, i64* %y, align 8, !dbg !507, !tbaa !155
  %cmp2 = icmp ult i64 %17, %18, !dbg !508
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !509

if.then.3:                                        ; preds = %if.end
  %19 = load i64, i64* %hi, align 8, !dbg !510, !tbaa !155
  %inc = add i64 %19, 1, !dbg !510
  store i64 %inc, i64* %hi, align 8, !dbg !510, !tbaa !155
  br label %if.end.4, !dbg !512

if.end.4:                                         ; preds = %if.then.3, %if.end
  %20 = load i64, i64* %hi, align 8, !dbg !513, !tbaa !155
  store i64 %20, i64* %y, align 8, !dbg !514, !tbaa !155
  store i64 %20, i64* %x, align 8, !dbg !515, !tbaa !155
  %21 = load i64, i64* %hi, align 8, !dbg !516, !tbaa !155
  %shr5 = lshr i64 %21, 32, !dbg !516
  store i64 %shr5, i64* %hi, align 8, !dbg !516, !tbaa !155
  %22 = load i64, i64* %lo, align 8, !dbg !517, !tbaa !155
  %23 = load i64, i64* %x, align 8, !dbg !518, !tbaa !155
  %sub6 = sub i64 %22, %23, !dbg !519
  store i64 %sub6, i64* %x, align 8, !dbg !520, !tbaa !155
  %24 = load i64, i64* %x, align 8, !dbg !521, !tbaa !155
  %25 = load i64, i64* %lo, align 8, !dbg !523, !tbaa !155
  %cmp7 = icmp ugt i64 %24, %25, !dbg !524
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !525

if.then.8:                                        ; preds = %if.end.4
  %26 = load i64, i64* %hi, align 8, !dbg !526, !tbaa !155
  %dec9 = add i64 %26, -1, !dbg !526
  store i64 %dec9, i64* %hi, align 8, !dbg !526, !tbaa !155
  br label %if.end.10, !dbg !528

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %27 = load i64, i64* %y, align 8, !dbg !529, !tbaa !155
  %shl11 = shl i64 %27, 32, !dbg !529
  store i64 %shl11, i64* %y, align 8, !dbg !529, !tbaa !155
  %28 = load i64, i64* %y, align 8, !dbg !530, !tbaa !155
  %29 = load i64, i64* %x, align 8, !dbg !531, !tbaa !155
  %add12 = add i64 %28, %29, !dbg !532
  store i64 %add12, i64* %lo, align 8, !dbg !533, !tbaa !155
  %30 = load i64, i64* %lo, align 8, !dbg !534, !tbaa !155
  %31 = load i64, i64* %y, align 8, !dbg !536, !tbaa !155
  %cmp13 = icmp ult i64 %30, %31, !dbg !537
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !538

if.then.14:                                       ; preds = %if.end.10
  %32 = load i64, i64* %hi, align 8, !dbg !539, !tbaa !155
  %inc15 = add i64 %32, 1, !dbg !539
  store i64 %inc15, i64* %hi, align 8, !dbg !539, !tbaa !155
  br label %if.end.16, !dbg !541

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %33 = load i64, i64* %hi, align 8, !dbg !542, !tbaa !155
  %tobool17 = icmp ne i64 %33, 0, !dbg !542
  br i1 %tobool17, label %cond.true, label %lor.lhs.false, !dbg !543

lor.lhs.false:                                    ; preds = %if.end.16
  %34 = load i64, i64* %lo, align 8, !dbg !544, !tbaa !155
  %35 = load i64, i64* %m.addr, align 8, !dbg !546, !tbaa !155
  %cmp18 = icmp uge i64 %34, %35, !dbg !547
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !542

cond.true:                                        ; preds = %lor.lhs.false, %if.end.16
  %36 = load i64, i64* %lo, align 8, !dbg !548, !tbaa !155
  %37 = load i64, i64* %m.addr, align 8, !dbg !551, !tbaa !155
  %sub19 = sub i64 %36, %37, !dbg !552
  br label %cond.end, !dbg !542

cond.false:                                       ; preds = %lor.lhs.false
  %38 = load i64, i64* %lo, align 8, !dbg !553, !tbaa !155
  br label %cond.end, !dbg !542

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub19, %cond.true ], [ %38, %cond.false ], !dbg !542
  store i64 %cond, i64* %retval, !dbg !555
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !558

if.else:                                          ; preds = %entry
  %39 = load i64, i64* %m.addr, align 8, !dbg !559, !tbaa !155
  %and20 = and i64 %39, 17179869184, !dbg !561
  %tobool21 = icmp ne i64 %and20, 0, !dbg !561
  br i1 %tobool21, label %if.then.22, label %if.else.67, !dbg !562

if.then.22:                                       ; preds = %if.else
  %40 = load i64, i64* %hi, align 8, !dbg !563, !tbaa !155
  store i64 %40, i64* %y, align 8, !dbg !565, !tbaa !155
  store i64 %40, i64* %x, align 8, !dbg !566, !tbaa !155
  %41 = load i64, i64* %hi, align 8, !dbg !567, !tbaa !155
  %shr23 = lshr i64 %41, 30, !dbg !567
  store i64 %shr23, i64* %hi, align 8, !dbg !567, !tbaa !155
  %42 = load i64, i64* %lo, align 8, !dbg !568, !tbaa !155
  %43 = load i64, i64* %x, align 8, !dbg !569, !tbaa !155
  %sub24 = sub i64 %42, %43, !dbg !570
  store i64 %sub24, i64* %x, align 8, !dbg !571, !tbaa !155
  %44 = load i64, i64* %x, align 8, !dbg !572, !tbaa !155
  %45 = load i64, i64* %lo, align 8, !dbg !574, !tbaa !155
  %cmp25 = icmp ugt i64 %44, %45, !dbg !575
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !576

if.then.26:                                       ; preds = %if.then.22
  %46 = load i64, i64* %hi, align 8, !dbg !577, !tbaa !155
  %dec27 = add i64 %46, -1, !dbg !577
  store i64 %dec27, i64* %hi, align 8, !dbg !577, !tbaa !155
  br label %if.end.28, !dbg !579

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %47 = load i64, i64* %y, align 8, !dbg !580, !tbaa !155
  %shl29 = shl i64 %47, 34, !dbg !580
  store i64 %shl29, i64* %y, align 8, !dbg !580, !tbaa !155
  %48 = load i64, i64* %y, align 8, !dbg !581, !tbaa !155
  %49 = load i64, i64* %x, align 8, !dbg !582, !tbaa !155
  %add30 = add i64 %48, %49, !dbg !583
  store i64 %add30, i64* %lo, align 8, !dbg !584, !tbaa !155
  %50 = load i64, i64* %lo, align 8, !dbg !585, !tbaa !155
  %51 = load i64, i64* %y, align 8, !dbg !587, !tbaa !155
  %cmp31 = icmp ult i64 %50, %51, !dbg !588
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !589

if.then.32:                                       ; preds = %if.end.28
  %52 = load i64, i64* %hi, align 8, !dbg !590, !tbaa !155
  %inc33 = add i64 %52, 1, !dbg !590
  store i64 %inc33, i64* %hi, align 8, !dbg !590, !tbaa !155
  br label %if.end.34, !dbg !592

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %53 = load i64, i64* %hi, align 8, !dbg !593, !tbaa !155
  store i64 %53, i64* %y, align 8, !dbg !594, !tbaa !155
  store i64 %53, i64* %x, align 8, !dbg !595, !tbaa !155
  %54 = load i64, i64* %hi, align 8, !dbg !596, !tbaa !155
  %shr35 = lshr i64 %54, 30, !dbg !596
  store i64 %shr35, i64* %hi, align 8, !dbg !596, !tbaa !155
  %55 = load i64, i64* %lo, align 8, !dbg !597, !tbaa !155
  %56 = load i64, i64* %x, align 8, !dbg !598, !tbaa !155
  %sub36 = sub i64 %55, %56, !dbg !599
  store i64 %sub36, i64* %x, align 8, !dbg !600, !tbaa !155
  %57 = load i64, i64* %x, align 8, !dbg !601, !tbaa !155
  %58 = load i64, i64* %lo, align 8, !dbg !603, !tbaa !155
  %cmp37 = icmp ugt i64 %57, %58, !dbg !604
  br i1 %cmp37, label %if.then.38, label %if.end.40, !dbg !605

if.then.38:                                       ; preds = %if.end.34
  %59 = load i64, i64* %hi, align 8, !dbg !606, !tbaa !155
  %dec39 = add i64 %59, -1, !dbg !606
  store i64 %dec39, i64* %hi, align 8, !dbg !606, !tbaa !155
  br label %if.end.40, !dbg !608

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %60 = load i64, i64* %y, align 8, !dbg !609, !tbaa !155
  %shl41 = shl i64 %60, 34, !dbg !609
  store i64 %shl41, i64* %y, align 8, !dbg !609, !tbaa !155
  %61 = load i64, i64* %y, align 8, !dbg !610, !tbaa !155
  %62 = load i64, i64* %x, align 8, !dbg !611, !tbaa !155
  %add42 = add i64 %61, %62, !dbg !612
  store i64 %add42, i64* %lo, align 8, !dbg !613, !tbaa !155
  %63 = load i64, i64* %lo, align 8, !dbg !614, !tbaa !155
  %64 = load i64, i64* %y, align 8, !dbg !616, !tbaa !155
  %cmp43 = icmp ult i64 %63, %64, !dbg !617
  br i1 %cmp43, label %if.then.44, label %if.end.46, !dbg !618

if.then.44:                                       ; preds = %if.end.40
  %65 = load i64, i64* %hi, align 8, !dbg !619, !tbaa !155
  %inc45 = add i64 %65, 1, !dbg !619
  store i64 %inc45, i64* %hi, align 8, !dbg !619, !tbaa !155
  br label %if.end.46, !dbg !621

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %66 = load i64, i64* %hi, align 8, !dbg !622, !tbaa !155
  store i64 %66, i64* %y, align 8, !dbg !623, !tbaa !155
  store i64 %66, i64* %x, align 8, !dbg !624, !tbaa !155
  %67 = load i64, i64* %hi, align 8, !dbg !625, !tbaa !155
  %shr47 = lshr i64 %67, 30, !dbg !625
  store i64 %shr47, i64* %hi, align 8, !dbg !625, !tbaa !155
  %68 = load i64, i64* %lo, align 8, !dbg !626, !tbaa !155
  %69 = load i64, i64* %x, align 8, !dbg !627, !tbaa !155
  %sub48 = sub i64 %68, %69, !dbg !628
  store i64 %sub48, i64* %x, align 8, !dbg !629, !tbaa !155
  %70 = load i64, i64* %x, align 8, !dbg !630, !tbaa !155
  %71 = load i64, i64* %lo, align 8, !dbg !632, !tbaa !155
  %cmp49 = icmp ugt i64 %70, %71, !dbg !633
  br i1 %cmp49, label %if.then.50, label %if.end.52, !dbg !634

if.then.50:                                       ; preds = %if.end.46
  %72 = load i64, i64* %hi, align 8, !dbg !635, !tbaa !155
  %dec51 = add i64 %72, -1, !dbg !635
  store i64 %dec51, i64* %hi, align 8, !dbg !635, !tbaa !155
  br label %if.end.52, !dbg !637

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %73 = load i64, i64* %y, align 8, !dbg !638, !tbaa !155
  %shl53 = shl i64 %73, 34, !dbg !638
  store i64 %shl53, i64* %y, align 8, !dbg !638, !tbaa !155
  %74 = load i64, i64* %y, align 8, !dbg !639, !tbaa !155
  %75 = load i64, i64* %x, align 8, !dbg !640, !tbaa !155
  %add54 = add i64 %74, %75, !dbg !641
  store i64 %add54, i64* %lo, align 8, !dbg !642, !tbaa !155
  %76 = load i64, i64* %lo, align 8, !dbg !643, !tbaa !155
  %77 = load i64, i64* %y, align 8, !dbg !645, !tbaa !155
  %cmp55 = icmp ult i64 %76, %77, !dbg !646
  br i1 %cmp55, label %if.then.56, label %if.end.58, !dbg !647

if.then.56:                                       ; preds = %if.end.52
  %78 = load i64, i64* %hi, align 8, !dbg !648, !tbaa !155
  %inc57 = add i64 %78, 1, !dbg !648
  store i64 %inc57, i64* %hi, align 8, !dbg !648, !tbaa !155
  br label %if.end.58, !dbg !650

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %79 = load i64, i64* %hi, align 8, !dbg !651, !tbaa !155
  %tobool59 = icmp ne i64 %79, 0, !dbg !651
  br i1 %tobool59, label %cond.true.62, label %lor.lhs.false.60, !dbg !652

lor.lhs.false.60:                                 ; preds = %if.end.58
  %80 = load i64, i64* %lo, align 8, !dbg !653, !tbaa !155
  %81 = load i64, i64* %m.addr, align 8, !dbg !655, !tbaa !155
  %cmp61 = icmp uge i64 %80, %81, !dbg !656
  br i1 %cmp61, label %cond.true.62, label %cond.false.64, !dbg !651

cond.true.62:                                     ; preds = %lor.lhs.false.60, %if.end.58
  %82 = load i64, i64* %lo, align 8, !dbg !657, !tbaa !155
  %83 = load i64, i64* %m.addr, align 8, !dbg !660, !tbaa !155
  %sub63 = sub i64 %82, %83, !dbg !661
  br label %cond.end.65, !dbg !651

cond.false.64:                                    ; preds = %lor.lhs.false.60
  %84 = load i64, i64* %lo, align 8, !dbg !662, !tbaa !155
  br label %cond.end.65, !dbg !651

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i64 [ %sub63, %cond.true.62 ], [ %84, %cond.false.64 ], !dbg !651
  store i64 %cond66, i64* %retval, !dbg !664
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !667

if.else.67:                                       ; preds = %if.else
  %85 = load i64, i64* %hi, align 8, !dbg !668, !tbaa !155
  store i64 %85, i64* %y, align 8, !dbg !670, !tbaa !155
  store i64 %85, i64* %x, align 8, !dbg !671, !tbaa !155
  %86 = load i64, i64* %hi, align 8, !dbg !672, !tbaa !155
  %shr68 = lshr i64 %86, 24, !dbg !672
  store i64 %shr68, i64* %hi, align 8, !dbg !672, !tbaa !155
  %87 = load i64, i64* %lo, align 8, !dbg !673, !tbaa !155
  %88 = load i64, i64* %x, align 8, !dbg !674, !tbaa !155
  %sub69 = sub i64 %87, %88, !dbg !675
  store i64 %sub69, i64* %x, align 8, !dbg !676, !tbaa !155
  %89 = load i64, i64* %x, align 8, !dbg !677, !tbaa !155
  %90 = load i64, i64* %lo, align 8, !dbg !679, !tbaa !155
  %cmp70 = icmp ugt i64 %89, %90, !dbg !680
  br i1 %cmp70, label %if.then.71, label %if.end.73, !dbg !681

if.then.71:                                       ; preds = %if.else.67
  %91 = load i64, i64* %hi, align 8, !dbg !682, !tbaa !155
  %dec72 = add i64 %91, -1, !dbg !682
  store i64 %dec72, i64* %hi, align 8, !dbg !682, !tbaa !155
  br label %if.end.73, !dbg !684

if.end.73:                                        ; preds = %if.then.71, %if.else.67
  %92 = load i64, i64* %y, align 8, !dbg !685, !tbaa !155
  %shl74 = shl i64 %92, 40, !dbg !685
  store i64 %shl74, i64* %y, align 8, !dbg !685, !tbaa !155
  %93 = load i64, i64* %y, align 8, !dbg !686, !tbaa !155
  %94 = load i64, i64* %x, align 8, !dbg !687, !tbaa !155
  %add75 = add i64 %93, %94, !dbg !688
  store i64 %add75, i64* %lo, align 8, !dbg !689, !tbaa !155
  %95 = load i64, i64* %lo, align 8, !dbg !690, !tbaa !155
  %96 = load i64, i64* %y, align 8, !dbg !692, !tbaa !155
  %cmp76 = icmp ult i64 %95, %96, !dbg !693
  br i1 %cmp76, label %if.then.77, label %if.end.79, !dbg !694

if.then.77:                                       ; preds = %if.end.73
  %97 = load i64, i64* %hi, align 8, !dbg !695, !tbaa !155
  %inc78 = add i64 %97, 1, !dbg !695
  store i64 %inc78, i64* %hi, align 8, !dbg !695, !tbaa !155
  br label %if.end.79, !dbg !697

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %98 = load i64, i64* %hi, align 8, !dbg !698, !tbaa !155
  store i64 %98, i64* %y, align 8, !dbg !699, !tbaa !155
  store i64 %98, i64* %x, align 8, !dbg !700, !tbaa !155
  %99 = load i64, i64* %hi, align 8, !dbg !701, !tbaa !155
  %shr80 = lshr i64 %99, 24, !dbg !701
  store i64 %shr80, i64* %hi, align 8, !dbg !701, !tbaa !155
  %100 = load i64, i64* %lo, align 8, !dbg !702, !tbaa !155
  %101 = load i64, i64* %x, align 8, !dbg !703, !tbaa !155
  %sub81 = sub i64 %100, %101, !dbg !704
  store i64 %sub81, i64* %x, align 8, !dbg !705, !tbaa !155
  %102 = load i64, i64* %x, align 8, !dbg !706, !tbaa !155
  %103 = load i64, i64* %lo, align 8, !dbg !708, !tbaa !155
  %cmp82 = icmp ugt i64 %102, %103, !dbg !709
  br i1 %cmp82, label %if.then.83, label %if.end.85, !dbg !710

if.then.83:                                       ; preds = %if.end.79
  %104 = load i64, i64* %hi, align 8, !dbg !711, !tbaa !155
  %dec84 = add i64 %104, -1, !dbg !711
  store i64 %dec84, i64* %hi, align 8, !dbg !711, !tbaa !155
  br label %if.end.85, !dbg !713

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %105 = load i64, i64* %y, align 8, !dbg !714, !tbaa !155
  %shl86 = shl i64 %105, 40, !dbg !714
  store i64 %shl86, i64* %y, align 8, !dbg !714, !tbaa !155
  %106 = load i64, i64* %y, align 8, !dbg !715, !tbaa !155
  %107 = load i64, i64* %x, align 8, !dbg !716, !tbaa !155
  %add87 = add i64 %106, %107, !dbg !717
  store i64 %add87, i64* %lo, align 8, !dbg !718, !tbaa !155
  %108 = load i64, i64* %lo, align 8, !dbg !719, !tbaa !155
  %109 = load i64, i64* %y, align 8, !dbg !721, !tbaa !155
  %cmp88 = icmp ult i64 %108, %109, !dbg !722
  br i1 %cmp88, label %if.then.89, label %if.end.91, !dbg !723

if.then.89:                                       ; preds = %if.end.85
  %110 = load i64, i64* %hi, align 8, !dbg !724, !tbaa !155
  %inc90 = add i64 %110, 1, !dbg !724
  store i64 %inc90, i64* %hi, align 8, !dbg !724, !tbaa !155
  br label %if.end.91, !dbg !726

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %111 = load i64, i64* %hi, align 8, !dbg !727, !tbaa !155
  store i64 %111, i64* %y, align 8, !dbg !728, !tbaa !155
  store i64 %111, i64* %x, align 8, !dbg !729, !tbaa !155
  %112 = load i64, i64* %hi, align 8, !dbg !730, !tbaa !155
  %shr92 = lshr i64 %112, 24, !dbg !730
  store i64 %shr92, i64* %hi, align 8, !dbg !730, !tbaa !155
  %113 = load i64, i64* %lo, align 8, !dbg !731, !tbaa !155
  %114 = load i64, i64* %x, align 8, !dbg !732, !tbaa !155
  %sub93 = sub i64 %113, %114, !dbg !733
  store i64 %sub93, i64* %x, align 8, !dbg !734, !tbaa !155
  %115 = load i64, i64* %x, align 8, !dbg !735, !tbaa !155
  %116 = load i64, i64* %lo, align 8, !dbg !737, !tbaa !155
  %cmp94 = icmp ugt i64 %115, %116, !dbg !738
  br i1 %cmp94, label %if.then.95, label %if.end.97, !dbg !739

if.then.95:                                       ; preds = %if.end.91
  %117 = load i64, i64* %hi, align 8, !dbg !740, !tbaa !155
  %dec96 = add i64 %117, -1, !dbg !740
  store i64 %dec96, i64* %hi, align 8, !dbg !740, !tbaa !155
  br label %if.end.97, !dbg !742

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %118 = load i64, i64* %y, align 8, !dbg !743, !tbaa !155
  %shl98 = shl i64 %118, 40, !dbg !743
  store i64 %shl98, i64* %y, align 8, !dbg !743, !tbaa !155
  %119 = load i64, i64* %y, align 8, !dbg !744, !tbaa !155
  %120 = load i64, i64* %x, align 8, !dbg !745, !tbaa !155
  %add99 = add i64 %119, %120, !dbg !746
  store i64 %add99, i64* %lo, align 8, !dbg !747, !tbaa !155
  %121 = load i64, i64* %lo, align 8, !dbg !748, !tbaa !155
  %122 = load i64, i64* %y, align 8, !dbg !750, !tbaa !155
  %cmp100 = icmp ult i64 %121, %122, !dbg !751
  br i1 %cmp100, label %if.then.101, label %if.end.103, !dbg !752

if.then.101:                                      ; preds = %if.end.97
  %123 = load i64, i64* %hi, align 8, !dbg !753, !tbaa !155
  %inc102 = add i64 %123, 1, !dbg !753
  store i64 %inc102, i64* %hi, align 8, !dbg !753, !tbaa !155
  br label %if.end.103, !dbg !755

if.end.103:                                       ; preds = %if.then.101, %if.end.97
  %124 = load i64, i64* %hi, align 8, !dbg !756, !tbaa !155
  %tobool104 = icmp ne i64 %124, 0, !dbg !756
  br i1 %tobool104, label %cond.true.107, label %lor.lhs.false.105, !dbg !757

lor.lhs.false.105:                                ; preds = %if.end.103
  %125 = load i64, i64* %lo, align 8, !dbg !758, !tbaa !155
  %126 = load i64, i64* %m.addr, align 8, !dbg !760, !tbaa !155
  %cmp106 = icmp uge i64 %125, %126, !dbg !761
  br i1 %cmp106, label %cond.true.107, label %cond.false.109, !dbg !756

cond.true.107:                                    ; preds = %lor.lhs.false.105, %if.end.103
  %127 = load i64, i64* %lo, align 8, !dbg !762, !tbaa !155
  %128 = load i64, i64* %m.addr, align 8, !dbg !765, !tbaa !155
  %sub108 = sub i64 %127, %128, !dbg !766
  br label %cond.end.110, !dbg !756

cond.false.109:                                   ; preds = %lor.lhs.false.105
  %129 = load i64, i64* %lo, align 8, !dbg !767, !tbaa !155
  br label %cond.end.110, !dbg !756

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %sub108, %cond.true.107 ], [ %129, %cond.false.109 ], !dbg !756
  store i64 %cond111, i64* %retval, !dbg !769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !772

cleanup:                                          ; preds = %cond.end.110, %cond.end.65, %cond.end
  %130 = bitcast i64* %y to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !773
  %131 = bitcast i64* %x to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !773
  %132 = bitcast i64* %lo to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !773
  %133 = bitcast i64* %hi to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !773
  %134 = load i64, i64* %retval, !dbg !773
  ret i64 %134, !dbg !773
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2(i64* %a0, i64 %b0, i64* %a1, i64 %b1, i64 %m) #3 {
entry:
  %a0.addr = alloca i64*, align 8
  %b0.addr = alloca i64, align 8
  %a1.addr = alloca i64*, align 8
  %b1.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a0, i64** %a0.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %a0.addr, metadata !134, metadata !153), !dbg !774
  store i64 %b0, i64* %b0.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %b0.addr, metadata !135, metadata !153), !dbg !775
  store i64* %a1, i64** %a1.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %a1.addr, metadata !136, metadata !153), !dbg !776
  store i64 %b1, i64* %b1.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %b1.addr, metadata !137, metadata !153), !dbg !777
  store i64 %m, i64* %m.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !138, metadata !153), !dbg !778
  %0 = load i64*, i64** %a0.addr, align 8, !dbg !779, !tbaa !149
  %1 = load i64, i64* %0, align 8, !dbg !780, !tbaa !155
  %2 = load i64, i64* %b0.addr, align 8, !dbg !781, !tbaa !155
  %3 = load i64, i64* %m.addr, align 8, !dbg !782, !tbaa !155
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !783
  %4 = load i64*, i64** %a0.addr, align 8, !dbg !784, !tbaa !149
  store i64 %call, i64* %4, align 8, !dbg !785, !tbaa !155
  %5 = load i64*, i64** %a1.addr, align 8, !dbg !786, !tbaa !149
  %6 = load i64, i64* %5, align 8, !dbg !787, !tbaa !155
  %7 = load i64, i64* %b1.addr, align 8, !dbg !788, !tbaa !155
  %8 = load i64, i64* %m.addr, align 8, !dbg !789, !tbaa !155
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !790
  %9 = load i64*, i64** %a1.addr, align 8, !dbg !791, !tbaa !149
  store i64 %call1, i64* %9, align 8, !dbg !792, !tbaa !155
  ret void, !dbg !793
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2c(i64* %a, i64* %b, i64 %w, i64 %m) #3 {
entry:
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  %w.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !141, metadata !153), !dbg !794
  store i64* %b, i64** %b.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %b.addr, metadata !142, metadata !153), !dbg !795
  store i64 %w, i64* %w.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %w.addr, metadata !143, metadata !153), !dbg !796
  store i64 %m, i64* %m.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !144, metadata !153), !dbg !797
  %0 = load i64*, i64** %a.addr, align 8, !dbg !798, !tbaa !149
  %1 = load i64, i64* %0, align 8, !dbg !799, !tbaa !155
  %2 = load i64, i64* %w.addr, align 8, !dbg !800, !tbaa !155
  %3 = load i64, i64* %m.addr, align 8, !dbg !801, !tbaa !155
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !802
  %4 = load i64*, i64** %a.addr, align 8, !dbg !803, !tbaa !149
  store i64 %call, i64* %4, align 8, !dbg !804, !tbaa !155
  %5 = load i64*, i64** %b.addr, align 8, !dbg !805, !tbaa !149
  %6 = load i64, i64* %5, align 8, !dbg !806, !tbaa !155
  %7 = load i64, i64* %w.addr, align 8, !dbg !807, !tbaa !155
  %8 = load i64, i64* %m.addr, align 8, !dbg !808, !tbaa !155
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !809
  %9 = load i64*, i64** %b.addr, align 8, !dbg !810, !tbaa !149
  store i64 %call1, i64* %9, align 8, !dbg !811, !tbaa !155
  ret void, !dbg !812
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare hidden i32 @six_step_fnt(i64*, i64, i32) #4

; Function Attrs: nounwind uwtable
define hidden i32 @inv_four_step_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %R = alloca i64, align 8
  %C = alloca i64, align 8
  %w3table = alloca [3 x i64], align 16
  %kernel = alloca i64, align 8
  %w0 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %wstep = alloca i64, align 8
  %s = alloca i64*, align 8
  %p0 = alloca i64*, align 8
  %p1 = alloca i64*, align 8
  %p2 = alloca i64*, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !49, metadata !153), !dbg !813
  store i64 %n, i64* %n.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !50, metadata !153), !dbg !814
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !158
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !51, metadata !153), !dbg !815
  %0 = bitcast i64* %R to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !816
  call void @llvm.dbg.declare(metadata i64* %R, metadata !52, metadata !153), !dbg !817
  store i64 3, i64* %R, align 8, !dbg !817, !tbaa !155
  %1 = bitcast i64* %C to i8*, !dbg !818
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !818
  call void @llvm.dbg.declare(metadata i64* %C, metadata !53, metadata !153), !dbg !819
  %2 = load i64, i64* %n.addr, align 8, !dbg !820, !tbaa !155
  %div = udiv i64 %2, 3, !dbg !821
  store i64 %div, i64* %C, align 8, !dbg !819, !tbaa !155
  %3 = bitcast [3 x i64]* %w3table to i8*, !dbg !822
  call void @llvm.lifetime.start(i64 24, i8* %3) #2, !dbg !822
  call void @llvm.dbg.declare(metadata [3 x i64]* %w3table, metadata !54, metadata !153), !dbg !823
  %4 = bitcast i64* %kernel to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !824
  call void @llvm.dbg.declare(metadata i64* %kernel, metadata !55, metadata !153), !dbg !825
  %5 = bitcast i64* %w0 to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !824
  call void @llvm.dbg.declare(metadata i64* %w0, metadata !56, metadata !153), !dbg !826
  %6 = bitcast i64* %w1 to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !824
  call void @llvm.dbg.declare(metadata i64* %w1, metadata !57, metadata !153), !dbg !827
  %7 = bitcast i64* %wstep to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !824
  call void @llvm.dbg.declare(metadata i64* %wstep, metadata !58, metadata !153), !dbg !828
  %8 = bitcast i64** %s to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !829
  call void @llvm.dbg.declare(metadata i64** %s, metadata !59, metadata !153), !dbg !830
  %9 = bitcast i64** %p0 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !829
  call void @llvm.dbg.declare(metadata i64** %p0, metadata !60, metadata !153), !dbg !831
  %10 = bitcast i64** %p1 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !829
  call void @llvm.dbg.declare(metadata i64** %p1, metadata !61, metadata !153), !dbg !832
  %11 = bitcast i64** %p2 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !829
  call void @llvm.dbg.declare(metadata i64** %p2, metadata !62, metadata !153), !dbg !833
  %12 = bitcast i64* %umod to i8*, !dbg !834
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !834
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !63, metadata !153), !dbg !835
  %13 = bitcast i64* %i to i8*, !dbg !836
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !836
  call void @llvm.dbg.declare(metadata i64* %i, metadata !64, metadata !153), !dbg !837
  %14 = bitcast i64* %k to i8*, !dbg !836
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !836
  call void @llvm.dbg.declare(metadata i64* %k, metadata !65, metadata !153), !dbg !838
  %15 = load i64*, i64** %a.addr, align 8, !dbg !839, !tbaa !149
  store i64* %15, i64** %s, align 8, !dbg !841, !tbaa !149
  br label %for.cond, !dbg !842

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i64*, i64** %s, align 8, !dbg !843, !tbaa !149
  %17 = load i64*, i64** %a.addr, align 8, !dbg !847, !tbaa !149
  %18 = load i64, i64* %n.addr, align 8, !dbg !848, !tbaa !155
  %add.ptr = getelementptr i64, i64* %17, i64 %18, !dbg !849
  %cmp = icmp ult i64* %16, %add.ptr, !dbg !850
  br i1 %cmp, label %for.body, label %for.end, !dbg !851

for.body:                                         ; preds = %for.cond
  %19 = load i64*, i64** %s, align 8, !dbg !852, !tbaa !149
  %20 = load i64, i64* %C, align 8, !dbg !855, !tbaa !155
  %21 = load i32, i32* %modnum.addr, align 4, !dbg !856, !tbaa !158
  %call = call i32 @inv_six_step_fnt(i64* %19, i64 %20, i32 %21), !dbg !857
  %tobool = icmp ne i32 %call, 0, !dbg !857
  br i1 %tobool, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, !dbg !859
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !859

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !861

for.inc:                                          ; preds = %if.end
  %22 = load i64, i64* %C, align 8, !dbg !862, !tbaa !155
  %23 = load i64*, i64** %s, align 8, !dbg !863, !tbaa !149
  %add.ptr1 = getelementptr i64, i64* %23, i64 %22, !dbg !863
  store i64* %add.ptr1, i64** %s, align 8, !dbg !863, !tbaa !149
  br label %for.cond, !dbg !864

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %modnum.addr, align 4, !dbg !865, !tbaa !158
  call void @std_setmodulus(i32 %24, i64* %umod), !dbg !866
  %25 = load i64, i64* %n.addr, align 8, !dbg !867, !tbaa !155
  %26 = load i32, i32* %modnum.addr, align 4, !dbg !868, !tbaa !158
  %call2 = call i64 @_mpd_getkernel(i64 %25, i32 1, i32 %26), !dbg !869
  store i64 %call2, i64* %kernel, align 8, !dbg !870, !tbaa !155
  store i64 1, i64* %i, align 8, !dbg !871, !tbaa !155
  br label %for.cond.3, !dbg !872

for.cond.3:                                       ; preds = %for.inc.25, %for.end
  %27 = load i64, i64* %i, align 8, !dbg !873, !tbaa !155
  %28 = load i64, i64* %R, align 8, !dbg !876, !tbaa !155
  %cmp4 = icmp ult i64 %27, %28, !dbg !877
  br i1 %cmp4, label %for.body.5, label %for.end.26, !dbg !878

for.body.5:                                       ; preds = %for.cond.3
  store i64 1, i64* %w0, align 8, !dbg !879, !tbaa !155
  %29 = load i64, i64* %kernel, align 8, !dbg !880, !tbaa !155
  %30 = load i64, i64* %i, align 8, !dbg !881, !tbaa !155
  %31 = load i64, i64* %umod, align 8, !dbg !882, !tbaa !155
  %call6 = call i64 @x64_powmod(i64 %29, i64 %30, i64 %31), !dbg !883
  store i64 %call6, i64* %w1, align 8, !dbg !884, !tbaa !155
  %32 = load i64, i64* %w1, align 8, !dbg !885, !tbaa !155
  %33 = load i64, i64* %w1, align 8, !dbg !886, !tbaa !155
  %34 = load i64, i64* %umod, align 8, !dbg !887, !tbaa !155
  %call7 = call i64 @x64_mulmod(i64 %32, i64 %33, i64 %34), !dbg !888
  store i64 %call7, i64* %wstep, align 8, !dbg !889, !tbaa !155
  store i64 0, i64* %k, align 8, !dbg !890, !tbaa !155
  br label %for.cond.8, !dbg !891

for.cond.8:                                       ; preds = %for.inc.22, %for.body.5
  %35 = load i64, i64* %k, align 8, !dbg !892, !tbaa !155
  %36 = load i64, i64* %C, align 8, !dbg !895, !tbaa !155
  %cmp9 = icmp ult i64 %35, %36, !dbg !896
  br i1 %cmp9, label %for.body.10, label %for.end.24, !dbg !897

for.body.10:                                      ; preds = %for.cond.8
  %37 = bitcast i64* %x0 to i8*, !dbg !898
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !898
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !66, metadata !153), !dbg !899
  %38 = load i64, i64* %i, align 8, !dbg !900, !tbaa !155
  %39 = load i64, i64* %C, align 8, !dbg !901, !tbaa !155
  %mul = mul i64 %38, %39, !dbg !902
  %40 = load i64, i64* %k, align 8, !dbg !903, !tbaa !155
  %add = add i64 %mul, %40, !dbg !904
  %41 = load i64*, i64** %a.addr, align 8, !dbg !905, !tbaa !149
  %arrayidx = getelementptr i64, i64* %41, i64 %add, !dbg !905
  %42 = load i64, i64* %arrayidx, align 8, !dbg !905, !tbaa !155
  store i64 %42, i64* %x0, align 8, !dbg !899, !tbaa !155
  %43 = bitcast i64* %x1 to i8*, !dbg !906
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !906
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !73, metadata !153), !dbg !907
  %44 = load i64, i64* %i, align 8, !dbg !908, !tbaa !155
  %45 = load i64, i64* %C, align 8, !dbg !909, !tbaa !155
  %mul11 = mul i64 %44, %45, !dbg !910
  %46 = load i64, i64* %k, align 8, !dbg !911, !tbaa !155
  %add12 = add i64 %mul11, %46, !dbg !912
  %add13 = add i64 %add12, 1, !dbg !913
  %47 = load i64*, i64** %a.addr, align 8, !dbg !914, !tbaa !149
  %arrayidx14 = getelementptr i64, i64* %47, i64 %add13, !dbg !914
  %48 = load i64, i64* %arrayidx14, align 8, !dbg !914, !tbaa !155
  store i64 %48, i64* %x1, align 8, !dbg !907, !tbaa !155
  %49 = load i64, i64* %w0, align 8, !dbg !915, !tbaa !155
  %50 = load i64, i64* %w1, align 8, !dbg !916, !tbaa !155
  %51 = load i64, i64* %umod, align 8, !dbg !917, !tbaa !155
  call void @x64_mulmod2(i64* %x0, i64 %49, i64* %x1, i64 %50, i64 %51), !dbg !918
  %52 = load i64, i64* %wstep, align 8, !dbg !919, !tbaa !155
  %53 = load i64, i64* %umod, align 8, !dbg !920, !tbaa !155
  call void @x64_mulmod2c(i64* %w0, i64* %w1, i64 %52, i64 %53), !dbg !921
  %54 = load i64, i64* %x0, align 8, !dbg !922, !tbaa !155
  %55 = load i64, i64* %i, align 8, !dbg !923, !tbaa !155
  %56 = load i64, i64* %C, align 8, !dbg !924, !tbaa !155
  %mul15 = mul i64 %55, %56, !dbg !925
  %57 = load i64, i64* %k, align 8, !dbg !926, !tbaa !155
  %add16 = add i64 %mul15, %57, !dbg !927
  %58 = load i64*, i64** %a.addr, align 8, !dbg !928, !tbaa !149
  %arrayidx17 = getelementptr i64, i64* %58, i64 %add16, !dbg !928
  store i64 %54, i64* %arrayidx17, align 8, !dbg !929, !tbaa !155
  %59 = load i64, i64* %x1, align 8, !dbg !930, !tbaa !155
  %60 = load i64, i64* %i, align 8, !dbg !931, !tbaa !155
  %61 = load i64, i64* %C, align 8, !dbg !932, !tbaa !155
  %mul18 = mul i64 %60, %61, !dbg !933
  %62 = load i64, i64* %k, align 8, !dbg !934, !tbaa !155
  %add19 = add i64 %mul18, %62, !dbg !935
  %add20 = add i64 %add19, 1, !dbg !936
  %63 = load i64*, i64** %a.addr, align 8, !dbg !937, !tbaa !149
  %arrayidx21 = getelementptr i64, i64* %63, i64 %add20, !dbg !937
  store i64 %59, i64* %arrayidx21, align 8, !dbg !938, !tbaa !155
  %64 = bitcast i64* %x1 to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !939
  %65 = bitcast i64* %x0 to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !939
  br label %for.inc.22, !dbg !940

for.inc.22:                                       ; preds = %for.body.10
  %66 = load i64, i64* %k, align 8, !dbg !941, !tbaa !155
  %add23 = add i64 %66, 2, !dbg !941
  store i64 %add23, i64* %k, align 8, !dbg !941, !tbaa !155
  br label %for.cond.8, !dbg !942

for.end.24:                                       ; preds = %for.cond.8
  br label %for.inc.25, !dbg !943

for.inc.25:                                       ; preds = %for.end.24
  %67 = load i64, i64* %i, align 8, !dbg !944, !tbaa !155
  %inc = add i64 %67, 1, !dbg !944
  store i64 %inc, i64* %i, align 8, !dbg !944, !tbaa !155
  br label %for.cond.3, !dbg !945

for.end.26:                                       ; preds = %for.cond.3
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %w3table, i32 0, i32 0, !dbg !946
  %68 = load i32, i32* %modnum.addr, align 4, !dbg !947, !tbaa !158
  call void @_mpd_init_w3table(i64* %arraydecay, i32 1, i32 %68), !dbg !948
  %69 = load i64*, i64** %a.addr, align 8, !dbg !949, !tbaa !149
  store i64* %69, i64** %p0, align 8, !dbg !951, !tbaa !149
  %70 = load i64*, i64** %p0, align 8, !dbg !952, !tbaa !149
  %71 = load i64, i64* %C, align 8, !dbg !953, !tbaa !155
  %add.ptr27 = getelementptr i64, i64* %70, i64 %71, !dbg !954
  store i64* %add.ptr27, i64** %p1, align 8, !dbg !955, !tbaa !149
  %72 = load i64*, i64** %p0, align 8, !dbg !956, !tbaa !149
  %73 = load i64, i64* %C, align 8, !dbg !957, !tbaa !155
  %mul28 = mul i64 2, %73, !dbg !958
  %add.ptr29 = getelementptr i64, i64* %72, i64 %mul28, !dbg !959
  store i64* %add.ptr29, i64** %p2, align 8, !dbg !960, !tbaa !149
  br label %for.cond.30, !dbg !961

for.cond.30:                                      ; preds = %for.inc.35, %for.end.26
  %74 = load i64*, i64** %p0, align 8, !dbg !962, !tbaa !149
  %75 = load i64*, i64** %a.addr, align 8, !dbg !966, !tbaa !149
  %76 = load i64, i64* %C, align 8, !dbg !967, !tbaa !155
  %add.ptr31 = getelementptr i64, i64* %75, i64 %76, !dbg !968
  %cmp32 = icmp ult i64* %74, %add.ptr31, !dbg !969
  br i1 %cmp32, label %for.body.33, label %for.end.38, !dbg !970

for.body.33:                                      ; preds = %for.cond.30
  %77 = load i64*, i64** %p0, align 8, !dbg !971, !tbaa !149
  %78 = load i64*, i64** %p1, align 8, !dbg !973, !tbaa !149
  %79 = load i64*, i64** %p2, align 8, !dbg !974, !tbaa !149
  %arraydecay34 = getelementptr inbounds [3 x i64], [3 x i64]* %w3table, i32 0, i32 0, !dbg !975
  %80 = load i64, i64* %umod, align 8, !dbg !976, !tbaa !155
  call void @std_size3_ntt(i64* %77, i64* %78, i64* %79, i64* %arraydecay34, i64 %80), !dbg !977
  br label %for.inc.35, !dbg !978

for.inc.35:                                       ; preds = %for.body.33
  %81 = load i64*, i64** %p0, align 8, !dbg !979, !tbaa !149
  %incdec.ptr = getelementptr i64, i64* %81, i32 1, !dbg !979
  store i64* %incdec.ptr, i64** %p0, align 8, !dbg !979, !tbaa !149
  %82 = load i64*, i64** %p1, align 8, !dbg !980, !tbaa !149
  %incdec.ptr36 = getelementptr i64, i64* %82, i32 1, !dbg !980
  store i64* %incdec.ptr36, i64** %p1, align 8, !dbg !980, !tbaa !149
  %83 = load i64*, i64** %p2, align 8, !dbg !981, !tbaa !149
  %incdec.ptr37 = getelementptr i64, i64* %83, i32 1, !dbg !981
  store i64* %incdec.ptr37, i64** %p2, align 8, !dbg !981, !tbaa !149
  br label %for.cond.30, !dbg !982

for.end.38:                                       ; preds = %for.cond.30
  store i32 1, i32* %retval, !dbg !983
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !983

cleanup:                                          ; preds = %for.end.38, %if.then
  %84 = bitcast i64* %k to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !984
  %85 = bitcast i64* %i to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !984
  %86 = bitcast i64* %umod to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !984
  %87 = bitcast i64** %p2 to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !984
  %88 = bitcast i64** %p1 to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !984
  %89 = bitcast i64** %p0 to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !984
  %90 = bitcast i64** %s to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !984
  %91 = bitcast i64* %wstep to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !984
  %92 = bitcast i64* %w1 to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !984
  %93 = bitcast i64* %w0 to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !984
  %94 = bitcast i64* %kernel to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !984
  %95 = bitcast [3 x i64]* %w3table to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 24, i8* %95) #2, !dbg !984
  %96 = bitcast i64* %C to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !984
  %97 = bitcast i64* %R to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !984
  %98 = load i32, i32* %retval, !dbg !984
  ret i32 %98, !dbg !984
}

declare hidden i32 @inv_six_step_fnt(i64*, i64, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @addmod(i64 %a, i64 %b, i64 %m) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !100, metadata !153), !dbg !985
  store i64 %b, i64* %b.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !101, metadata !153), !dbg !986
  store i64 %m, i64* %m.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !102, metadata !153), !dbg !987
  %0 = bitcast i64* %s to i8*, !dbg !988
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !988
  call void @llvm.dbg.declare(metadata i64* %s, metadata !103, metadata !153), !dbg !989
  %1 = load i64, i64* %a.addr, align 8, !dbg !990, !tbaa !155
  %2 = load i64, i64* %b.addr, align 8, !dbg !991, !tbaa !155
  %add = add i64 %1, %2, !dbg !992
  store i64 %add, i64* %s, align 8, !dbg !993, !tbaa !155
  %3 = load i64, i64* %s, align 8, !dbg !994, !tbaa !155
  %4 = load i64, i64* %a.addr, align 8, !dbg !995, !tbaa !155
  %cmp = icmp ult i64 %3, %4, !dbg !996
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !997

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %s, align 8, !dbg !998, !tbaa !155
  %6 = load i64, i64* %m.addr, align 8, !dbg !1000, !tbaa !155
  %sub = sub i64 %5, %6, !dbg !1001
  br label %cond.end, !dbg !997

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %s, align 8, !dbg !1002, !tbaa !155
  br label %cond.end, !dbg !997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %7, %cond.false ], !dbg !997
  store i64 %cond, i64* %s, align 8, !dbg !1004, !tbaa !155
  %8 = load i64, i64* %s, align 8, !dbg !1007, !tbaa !155
  %9 = load i64, i64* %m.addr, align 8, !dbg !1008, !tbaa !155
  %cmp1 = icmp uge i64 %8, %9, !dbg !1009
  br i1 %cmp1, label %cond.true.2, label %cond.false.4, !dbg !1010

cond.true.2:                                      ; preds = %cond.end
  %10 = load i64, i64* %s, align 8, !dbg !1011, !tbaa !155
  %11 = load i64, i64* %m.addr, align 8, !dbg !1012, !tbaa !155
  %sub3 = sub i64 %10, %11, !dbg !1013
  br label %cond.end.5, !dbg !1010

cond.false.4:                                     ; preds = %cond.end
  %12 = load i64, i64* %s, align 8, !dbg !1014, !tbaa !155
  br label %cond.end.5, !dbg !1010

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i64 [ %sub3, %cond.true.2 ], [ %12, %cond.false.4 ], !dbg !1010
  store i64 %cond6, i64* %s, align 8, !dbg !1015, !tbaa !155
  %13 = load i64, i64* %s, align 8, !dbg !1016, !tbaa !155
  %14 = bitcast i64* %s to i8*, !dbg !1017
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1017
  ret i64 %13, !dbg !1018
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
  store i64* %hi, i64** %hi.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %hi.addr, metadata !124, metadata !153), !dbg !1019
  store i64* %lo, i64** %lo.addr, align 8, !tbaa !149
  call void @llvm.dbg.declare(metadata i64** %lo.addr, metadata !125, metadata !153), !dbg !1020
  store i64 %a, i64* %a.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !126, metadata !153), !dbg !1021
  store i64 %b, i64* %b.addr, align 8, !tbaa !155
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !127, metadata !153), !dbg !1022
  %0 = bitcast i64* %h to i8*, !dbg !1023
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1023
  call void @llvm.dbg.declare(metadata i64* %h, metadata !128, metadata !153), !dbg !1024
  %1 = bitcast i64* %l to i8*, !dbg !1023
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1023
  call void @llvm.dbg.declare(metadata i64* %l, metadata !129, metadata !153), !dbg !1025
  %2 = load i64, i64* %a.addr, align 8, !dbg !1026, !tbaa !155
  %3 = load i64, i64* %b.addr, align 8, !dbg !1027, !tbaa !155
  %4 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %3) #5, !dbg !1028, !srcloc !1029
  %asmresult = extractvalue { i64, i64 } %4, 0, !dbg !1028
  %asmresult1 = extractvalue { i64, i64 } %4, 1, !dbg !1028
  store i64 %asmresult, i64* %h, align 8, !dbg !1028, !tbaa !155
  store i64 %asmresult1, i64* %l, align 8, !dbg !1028, !tbaa !155
  %5 = load i64, i64* %h, align 8, !dbg !1030, !tbaa !155
  %6 = load i64*, i64** %hi.addr, align 8, !dbg !1031, !tbaa !149
  store i64 %5, i64* %6, align 8, !dbg !1032, !tbaa !155
  %7 = load i64, i64* %l, align 8, !dbg !1033, !tbaa !155
  %8 = load i64*, i64** %lo.addr, align 8, !dbg !1034, !tbaa !149
  store i64 %7, i64* %8, align 8, !dbg !1035, !tbaa !155
  %9 = bitcast i64* %l to i8*, !dbg !1036
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1036
  %10 = bitcast i64* %h to i8*, !dbg !1036
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1036
  ret void, !dbg !1036
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "fourstep.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !47, !74, !81, !95, !104, !110, !119, !130, !139}
!4 = !DISubprogram(name: "four_step_fnt", scope: !5, file: !5, line: 137, type: !6, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @four_step_fnt, variables: !18)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/fourstep.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !15, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_uint_t", file: !11, line: 149, baseType: !12)
!11 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/mpdecimal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 55, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_size_t", file: !11, line: 152, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 62, baseType: !14)
!17 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !{!19, !20, !21, !22, !23, !24, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !46}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !5, line: 137, type: !9)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !4, file: !5, line: 137, type: !15)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !4, file: !5, line: 137, type: !8)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !4, file: !5, line: 139, type: !15)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !4, file: !5, line: 140, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w3table", scope: !4, file: !5, line: 141, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, align: 64, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 3)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kernel", scope: !4, file: !5, line: 142, type: !10)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w0", scope: !4, file: !5, line: 142, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w1", scope: !4, file: !5, line: 142, type: !10)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wstep", scope: !4, file: !5, line: 142, type: !10)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !4, file: !5, line: 143, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p0", scope: !4, file: !5, line: 143, type: !9)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !4, file: !5, line: 143, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p2", scope: !4, file: !5, line: 143, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !4, file: !5, line: 144, type: !10)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !5, line: 149, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !4, file: !5, line: 149, type: !15)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !40, file: !5, line: 171, type: !10)
!40 = distinct !DILexicalBlock(scope: !41, file: !5, line: 170, column: 38)
!41 = distinct !DILexicalBlock(scope: !42, file: !5, line: 170, column: 9)
!42 = distinct !DILexicalBlock(scope: !43, file: !5, line: 170, column: 9)
!43 = distinct !DILexicalBlock(scope: !44, file: !5, line: 166, column: 29)
!44 = distinct !DILexicalBlock(scope: !45, file: !5, line: 166, column: 5)
!45 = distinct !DILexicalBlock(scope: !4, file: !5, line: 166, column: 5)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !40, file: !5, line: 172, type: !10)
!47 = !DISubprogram(name: "inv_four_step_fnt", scope: !5, file: !5, line: 198, type: !6, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @inv_four_step_fnt, variables: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !73}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !47, file: !5, line: 198, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !47, file: !5, line: 198, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !47, file: !5, line: 198, type: !8)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !47, file: !5, line: 200, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !47, file: !5, line: 201, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w3table", scope: !47, file: !5, line: 202, type: !25)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kernel", scope: !47, file: !5, line: 203, type: !10)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w0", scope: !47, file: !5, line: 203, type: !10)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w1", scope: !47, file: !5, line: 203, type: !10)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wstep", scope: !47, file: !5, line: 203, type: !10)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !47, file: !5, line: 204, type: !9)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p0", scope: !47, file: !5, line: 204, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !47, file: !5, line: 204, type: !9)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p2", scope: !47, file: !5, line: 204, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !47, file: !5, line: 205, type: !10)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !47, file: !5, line: 210, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !47, file: !5, line: 210, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !67, file: !5, line: 238, type: !10)
!67 = distinct !DILexicalBlock(scope: !68, file: !5, line: 237, column: 36)
!68 = distinct !DILexicalBlock(scope: !69, file: !5, line: 237, column: 9)
!69 = distinct !DILexicalBlock(scope: !70, file: !5, line: 237, column: 9)
!70 = distinct !DILexicalBlock(scope: !71, file: !5, line: 233, column: 29)
!71 = distinct !DILexicalBlock(scope: !72, file: !5, line: 233, column: 5)
!72 = distinct !DILexicalBlock(scope: !47, file: !5, line: 233, column: 5)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !67, file: !5, line: 239, type: !10)
!74 = !DISubprogram(name: "std_setmodulus", scope: !75, file: !75, line: 66, type: !76, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i64*)* @std_setmodulus, variables: !78)
!75 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/numbertheory.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!76 = !DISubroutineType(types: !77)
!77 = !{null, !8, !9}
!78 = !{!79, !80}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 1, scope: !74, file: !75, line: 66, type: !8)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 2, scope: !74, file: !75, line: 66, type: !9)
!81 = !DISubprogram(name: "std_size3_ntt", scope: !5, file: !5, line: 44, type: !82, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64*, i64*, i64)* @std_size3_ntt, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !9, !9, !9, !9, !10}
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 1, scope: !81, file: !5, line: 44, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 2, scope: !81, file: !5, line: 44, type: !9)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x3", arg: 3, scope: !81, file: !5, line: 44, type: !9)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w3table", arg: 4, scope: !81, file: !5, line: 45, type: !9)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 5, scope: !81, file: !5, line: 45, type: !10)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !81, file: !5, line: 47, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !81, file: !5, line: 47, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !81, file: !5, line: 48, type: !10)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !81, file: !5, line: 49, type: !10)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !81, file: !5, line: 49, type: !10)
!95 = !DISubprogram(name: "addmod", scope: !96, file: !96, line: 52, type: !97, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @addmod, variables: !99)
!96 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/umodarith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!97 = !DISubroutineType(types: !98)
!98 = !{!10, !10, !10, !10}
!99 = !{!100, !101, !102, !103}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !95, file: !96, line: 52, type: !10)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !95, file: !96, line: 52, type: !10)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 3, scope: !95, file: !96, line: 52, type: !10)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !95, file: !96, line: 54, type: !10)
!104 = !DISubprogram(name: "x64_powmod", scope: !96, file: !96, line: 276, type: !97, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_powmod, variables: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 1, scope: !104, file: !96, line: 276, type: !10)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exp", arg: 2, scope: !104, file: !96, line: 276, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 3, scope: !104, file: !96, line: 276, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !104, file: !96, line: 278, type: !10)
!110 = !DISubprogram(name: "x64_mulmod", scope: !96, file: !96, line: 151, type: !97, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_mulmod, variables: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !110, file: !96, line: 151, type: !10)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !110, file: !96, line: 151, type: !10)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 3, scope: !110, file: !96, line: 151, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !110, file: !96, line: 153, type: !10)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !110, file: !96, line: 153, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !110, file: !96, line: 153, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !110, file: !96, line: 153, type: !10)
!119 = !DISubprogram(name: "_mpd_mul_words", scope: !120, file: !120, line: 206, type: !121, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @_mpd_mul_words, variables: !123)
!120 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !9, !9, !10, !10}
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 1, scope: !119, file: !120, line: 206, type: !9)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 2, scope: !119, file: !120, line: 206, type: !9)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 3, scope: !119, file: !120, line: 206, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !119, file: !120, line: 206, type: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !119, file: !120, line: 208, type: !10)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !119, file: !120, line: 208, type: !10)
!130 = !DISubprogram(name: "x64_mulmod2", scope: !96, file: !96, line: 268, type: !131, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64, i64*, i64, i64)* @x64_mulmod2, variables: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !9, !10, !9, !10, !10}
!133 = !{!134, !135, !136, !137, !138}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 1, scope: !130, file: !96, line: 268, type: !9)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b0", arg: 2, scope: !130, file: !96, line: 268, type: !10)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 3, scope: !130, file: !96, line: 268, type: !9)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b1", arg: 4, scope: !130, file: !96, line: 268, type: !10)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 5, scope: !130, file: !96, line: 269, type: !10)
!139 = !DISubprogram(name: "x64_mulmod2c", scope: !96, file: !96, line: 261, type: !121, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @x64_mulmod2c, variables: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !139, file: !96, line: 261, type: !9)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !139, file: !96, line: 261, type: !9)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !139, file: !96, line: 261, type: !10)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 4, scope: !139, file: !96, line: 261, type: !10)
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"PIC Level", i32 2}
!148 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!149 = !{!150, !150, i64 0}
!150 = !{!"any pointer", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !DIExpression()
!154 = !DILocation(line: 137, column: 27, scope: !4)
!155 = !{!156, !156, i64 0}
!156 = !{!"long", !151, i64 0}
!157 = !DILocation(line: 137, column: 41, scope: !4)
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !151, i64 0}
!160 = !DILocation(line: 137, column: 48, scope: !4)
!161 = !DILocation(line: 139, column: 5, scope: !4)
!162 = !DILocation(line: 139, column: 16, scope: !4)
!163 = !DILocation(line: 140, column: 5, scope: !4)
!164 = !DILocation(line: 140, column: 16, scope: !4)
!165 = !DILocation(line: 140, column: 20, scope: !4)
!166 = !DILocation(line: 140, column: 22, scope: !4)
!167 = !DILocation(line: 141, column: 5, scope: !4)
!168 = !DILocation(line: 141, column: 16, scope: !4)
!169 = !DILocation(line: 142, column: 5, scope: !4)
!170 = !DILocation(line: 142, column: 16, scope: !4)
!171 = !DILocation(line: 142, column: 24, scope: !4)
!172 = !DILocation(line: 142, column: 28, scope: !4)
!173 = !DILocation(line: 142, column: 32, scope: !4)
!174 = !DILocation(line: 143, column: 5, scope: !4)
!175 = !DILocation(line: 143, column: 17, scope: !4)
!176 = !DILocation(line: 143, column: 21, scope: !4)
!177 = !DILocation(line: 143, column: 26, scope: !4)
!178 = !DILocation(line: 143, column: 31, scope: !4)
!179 = !DILocation(line: 144, column: 5, scope: !4)
!180 = !DILocation(line: 144, column: 16, scope: !4)
!181 = !DILocation(line: 149, column: 5, scope: !4)
!182 = !DILocation(line: 149, column: 16, scope: !4)
!183 = !DILocation(line: 149, column: 19, scope: !4)
!184 = !DILocation(line: 157, column: 20, scope: !4)
!185 = !DILocation(line: 157, column: 5, scope: !4)
!186 = !DILocation(line: 158, column: 23, scope: !4)
!187 = !DILocation(line: 158, column: 36, scope: !4)
!188 = !DILocation(line: 158, column: 5, scope: !4)
!189 = !DILocation(line: 159, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !4, file: !5, line: 159, column: 5)
!191 = !DILocation(line: 159, column: 12, scope: !190)
!192 = !DILocation(line: 159, column: 19, scope: !190)
!193 = !DILocation(line: 159, column: 22, scope: !190)
!194 = !DILocation(line: 159, column: 21, scope: !190)
!195 = !DILocation(line: 159, column: 18, scope: !190)
!196 = !DILocation(line: 159, column: 28, scope: !190)
!197 = !DILocation(line: 159, column: 33, scope: !190)
!198 = !DILocation(line: 159, column: 32, scope: !190)
!199 = !DILocation(line: 159, column: 30, scope: !190)
!200 = !DILocation(line: 159, column: 27, scope: !190)
!201 = !DILocation(line: 159, column: 10, scope: !190)
!202 = !DILocation(line: 159, column: 36, scope: !203)
!203 = !DILexicalBlockFile(scope: !204, file: !5, discriminator: 2)
!204 = !DILexicalBlockFile(scope: !205, file: !5, discriminator: 1)
!205 = distinct !DILexicalBlock(scope: !190, file: !5, line: 159, column: 5)
!206 = !DILocation(line: 159, column: 39, scope: !205)
!207 = !DILocation(line: 159, column: 41, scope: !205)
!208 = !DILocation(line: 159, column: 40, scope: !205)
!209 = !DILocation(line: 159, column: 38, scope: !205)
!210 = !DILocation(line: 159, column: 5, scope: !190)
!211 = !DILocation(line: 161, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !5, line: 159, column: 60)
!213 = !DILocation(line: 161, column: 27, scope: !212)
!214 = !DILocation(line: 161, column: 31, scope: !212)
!215 = !DILocation(line: 161, column: 35, scope: !212)
!216 = !DILocation(line: 161, column: 44, scope: !212)
!217 = !DILocation(line: 161, column: 9, scope: !212)
!218 = !DILocation(line: 162, column: 5, scope: !212)
!219 = !DILocation(line: 159, column: 46, scope: !205)
!220 = !DILocation(line: 159, column: 51, scope: !205)
!221 = !DILocation(line: 159, column: 56, scope: !205)
!222 = !DILocation(line: 159, column: 5, scope: !205)
!223 = !DILocation(line: 165, column: 29, scope: !4)
!224 = !DILocation(line: 165, column: 36, scope: !4)
!225 = !DILocation(line: 165, column: 14, scope: !4)
!226 = !DILocation(line: 165, column: 12, scope: !4)
!227 = !DILocation(line: 166, column: 12, scope: !45)
!228 = !DILocation(line: 166, column: 10, scope: !45)
!229 = !DILocation(line: 166, column: 17, scope: !230)
!230 = !DILexicalBlockFile(scope: !231, file: !5, discriminator: 2)
!231 = !DILexicalBlockFile(scope: !44, file: !5, discriminator: 1)
!232 = !DILocation(line: 166, column: 21, scope: !44)
!233 = !DILocation(line: 166, column: 19, scope: !44)
!234 = !DILocation(line: 166, column: 5, scope: !45)
!235 = !DILocation(line: 167, column: 12, scope: !43)
!236 = !DILocation(line: 168, column: 25, scope: !43)
!237 = !DILocation(line: 168, column: 33, scope: !43)
!238 = !DILocation(line: 168, column: 36, scope: !43)
!239 = !DILocation(line: 168, column: 14, scope: !43)
!240 = !DILocation(line: 168, column: 12, scope: !43)
!241 = !DILocation(line: 169, column: 28, scope: !43)
!242 = !DILocation(line: 169, column: 32, scope: !43)
!243 = !DILocation(line: 169, column: 36, scope: !43)
!244 = !DILocation(line: 169, column: 17, scope: !43)
!245 = !DILocation(line: 169, column: 15, scope: !43)
!246 = !DILocation(line: 170, column: 16, scope: !42)
!247 = !DILocation(line: 170, column: 14, scope: !42)
!248 = !DILocation(line: 170, column: 21, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !5, discriminator: 2)
!250 = !DILexicalBlockFile(scope: !41, file: !5, discriminator: 1)
!251 = !DILocation(line: 170, column: 25, scope: !41)
!252 = !DILocation(line: 170, column: 26, scope: !41)
!253 = !DILocation(line: 170, column: 23, scope: !41)
!254 = !DILocation(line: 170, column: 9, scope: !42)
!255 = !DILocation(line: 171, column: 13, scope: !40)
!256 = !DILocation(line: 171, column: 24, scope: !40)
!257 = !DILocation(line: 171, column: 31, scope: !40)
!258 = !DILocation(line: 171, column: 33, scope: !40)
!259 = !DILocation(line: 171, column: 32, scope: !40)
!260 = !DILocation(line: 171, column: 35, scope: !40)
!261 = !DILocation(line: 171, column: 34, scope: !40)
!262 = !DILocation(line: 171, column: 29, scope: !40)
!263 = !DILocation(line: 172, column: 13, scope: !40)
!264 = !DILocation(line: 172, column: 24, scope: !40)
!265 = !DILocation(line: 172, column: 31, scope: !40)
!266 = !DILocation(line: 172, column: 33, scope: !40)
!267 = !DILocation(line: 172, column: 32, scope: !40)
!268 = !DILocation(line: 172, column: 35, scope: !40)
!269 = !DILocation(line: 172, column: 34, scope: !40)
!270 = !DILocation(line: 172, column: 36, scope: !40)
!271 = !DILocation(line: 172, column: 29, scope: !40)
!272 = !DILocation(line: 173, column: 30, scope: !40)
!273 = !DILocation(line: 173, column: 39, scope: !40)
!274 = !DILocation(line: 173, column: 43, scope: !40)
!275 = !DILocation(line: 173, column: 13, scope: !40)
!276 = !DILocation(line: 174, column: 36, scope: !40)
!277 = !DILocation(line: 174, column: 43, scope: !40)
!278 = !DILocation(line: 174, column: 13, scope: !40)
!279 = !DILocation(line: 175, column: 24, scope: !40)
!280 = !DILocation(line: 175, column: 15, scope: !40)
!281 = !DILocation(line: 175, column: 17, scope: !40)
!282 = !DILocation(line: 175, column: 16, scope: !40)
!283 = !DILocation(line: 175, column: 19, scope: !40)
!284 = !DILocation(line: 175, column: 18, scope: !40)
!285 = !DILocation(line: 175, column: 13, scope: !40)
!286 = !DILocation(line: 175, column: 22, scope: !40)
!287 = !DILocation(line: 176, column: 26, scope: !40)
!288 = !DILocation(line: 176, column: 15, scope: !40)
!289 = !DILocation(line: 176, column: 17, scope: !40)
!290 = !DILocation(line: 176, column: 16, scope: !40)
!291 = !DILocation(line: 176, column: 19, scope: !40)
!292 = !DILocation(line: 176, column: 18, scope: !40)
!293 = !DILocation(line: 176, column: 20, scope: !40)
!294 = !DILocation(line: 176, column: 13, scope: !40)
!295 = !DILocation(line: 176, column: 24, scope: !40)
!296 = !DILocation(line: 177, column: 9, scope: !41)
!297 = !DILocation(line: 177, column: 9, scope: !40)
!298 = !DILocation(line: 170, column: 32, scope: !41)
!299 = !DILocation(line: 170, column: 9, scope: !41)
!300 = !DILocation(line: 178, column: 5, scope: !43)
!301 = !DILocation(line: 166, column: 25, scope: !44)
!302 = !DILocation(line: 166, column: 5, scope: !44)
!303 = !DILocation(line: 181, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !4, file: !5, line: 181, column: 5)
!305 = !DILocation(line: 181, column: 12, scope: !304)
!306 = !DILocation(line: 181, column: 10, scope: !304)
!307 = !DILocation(line: 181, column: 17, scope: !308)
!308 = !DILexicalBlockFile(scope: !309, file: !5, discriminator: 2)
!309 = !DILexicalBlockFile(scope: !310, file: !5, discriminator: 1)
!310 = distinct !DILexicalBlock(scope: !304, file: !5, line: 181, column: 5)
!311 = !DILocation(line: 181, column: 21, scope: !310)
!312 = !DILocation(line: 181, column: 23, scope: !310)
!313 = !DILocation(line: 181, column: 22, scope: !310)
!314 = !DILocation(line: 181, column: 19, scope: !310)
!315 = !DILocation(line: 181, column: 5, scope: !304)
!316 = !DILocation(line: 182, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !5, line: 182, column: 13)
!318 = distinct !DILexicalBlock(scope: !310, file: !5, line: 181, column: 34)
!319 = !DILocation(line: 182, column: 30, scope: !317)
!320 = !DILocation(line: 182, column: 33, scope: !317)
!321 = !DILocation(line: 182, column: 14, scope: !317)
!322 = !DILocation(line: 182, column: 13, scope: !318)
!323 = !DILocation(line: 183, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !317, file: !5, line: 182, column: 42)
!325 = !DILocation(line: 185, column: 5, scope: !318)
!326 = !DILocation(line: 181, column: 31, scope: !310)
!327 = !DILocation(line: 181, column: 28, scope: !310)
!328 = !DILocation(line: 181, column: 5, scope: !310)
!329 = !DILocation(line: 193, column: 5, scope: !4)
!330 = !DILocation(line: 194, column: 1, scope: !4)
!331 = !DILocation(line: 66, column: 20, scope: !74)
!332 = !DILocation(line: 66, column: 40, scope: !74)
!333 = !DILocation(line: 68, column: 24, scope: !74)
!334 = !DILocation(line: 68, column: 13, scope: !74)
!335 = !DILocation(line: 68, column: 6, scope: !74)
!336 = !DILocation(line: 68, column: 11, scope: !74)
!337 = !DILocation(line: 69, column: 1, scope: !74)
!338 = !DILocation(line: 44, column: 27, scope: !81)
!339 = !DILocation(line: 44, column: 43, scope: !81)
!340 = !DILocation(line: 44, column: 59, scope: !81)
!341 = !DILocation(line: 45, column: 26, scope: !81)
!342 = !DILocation(line: 45, column: 49, scope: !81)
!343 = !DILocation(line: 47, column: 5, scope: !81)
!344 = !DILocation(line: 47, column: 16, scope: !81)
!345 = !DILocation(line: 47, column: 20, scope: !81)
!346 = !DILocation(line: 48, column: 5, scope: !81)
!347 = !DILocation(line: 48, column: 16, scope: !81)
!348 = !DILocation(line: 49, column: 5, scope: !81)
!349 = !DILocation(line: 49, column: 16, scope: !81)
!350 = !DILocation(line: 49, column: 19, scope: !81)
!351 = !DILocation(line: 53, column: 10, scope: !81)
!352 = !DILocation(line: 53, column: 9, scope: !81)
!353 = !DILocation(line: 53, column: 7, scope: !81)
!354 = !DILocation(line: 54, column: 16, scope: !81)
!355 = !DILocation(line: 54, column: 20, scope: !81)
!356 = !DILocation(line: 54, column: 19, scope: !81)
!357 = !DILocation(line: 54, column: 24, scope: !81)
!358 = !DILocation(line: 54, column: 9, scope: !81)
!359 = !DILocation(line: 54, column: 7, scope: !81)
!360 = !DILocation(line: 55, column: 16, scope: !81)
!361 = !DILocation(line: 55, column: 20, scope: !81)
!362 = !DILocation(line: 55, column: 19, scope: !81)
!363 = !DILocation(line: 55, column: 24, scope: !81)
!364 = !DILocation(line: 55, column: 9, scope: !81)
!365 = !DILocation(line: 55, column: 7, scope: !81)
!366 = !DILocation(line: 57, column: 10, scope: !81)
!367 = !DILocation(line: 57, column: 8, scope: !81)
!368 = !DILocation(line: 60, column: 10, scope: !81)
!369 = !DILocation(line: 60, column: 9, scope: !81)
!370 = !DILocation(line: 60, column: 7, scope: !81)
!371 = !DILocation(line: 62, column: 9, scope: !81)
!372 = !DILocation(line: 62, column: 7, scope: !81)
!373 = !DILocation(line: 63, column: 23, scope: !81)
!374 = !DILocation(line: 63, column: 22, scope: !81)
!375 = !DILocation(line: 63, column: 27, scope: !81)
!376 = !DILocation(line: 63, column: 30, scope: !81)
!377 = !DILocation(line: 63, column: 11, scope: !81)
!378 = !DILocation(line: 63, column: 9, scope: !81)
!379 = !DILocation(line: 64, column: 16, scope: !81)
!380 = !DILocation(line: 64, column: 19, scope: !81)
!381 = !DILocation(line: 64, column: 24, scope: !81)
!382 = !DILocation(line: 64, column: 9, scope: !81)
!383 = !DILocation(line: 64, column: 7, scope: !81)
!384 = !DILocation(line: 66, column: 9, scope: !81)
!385 = !DILocation(line: 66, column: 7, scope: !81)
!386 = !DILocation(line: 67, column: 23, scope: !81)
!387 = !DILocation(line: 67, column: 22, scope: !81)
!388 = !DILocation(line: 67, column: 27, scope: !81)
!389 = !DILocation(line: 67, column: 30, scope: !81)
!390 = !DILocation(line: 67, column: 11, scope: !81)
!391 = !DILocation(line: 67, column: 9, scope: !81)
!392 = !DILocation(line: 68, column: 16, scope: !81)
!393 = !DILocation(line: 68, column: 19, scope: !81)
!394 = !DILocation(line: 68, column: 24, scope: !81)
!395 = !DILocation(line: 68, column: 9, scope: !81)
!396 = !DILocation(line: 68, column: 7, scope: !81)
!397 = !DILocation(line: 70, column: 10, scope: !81)
!398 = !DILocation(line: 70, column: 8, scope: !81)
!399 = !DILocation(line: 73, column: 10, scope: !81)
!400 = !DILocation(line: 73, column: 9, scope: !81)
!401 = !DILocation(line: 73, column: 7, scope: !81)
!402 = !DILocation(line: 75, column: 9, scope: !81)
!403 = !DILocation(line: 75, column: 7, scope: !81)
!404 = !DILocation(line: 76, column: 23, scope: !81)
!405 = !DILocation(line: 76, column: 22, scope: !81)
!406 = !DILocation(line: 76, column: 27, scope: !81)
!407 = !DILocation(line: 76, column: 30, scope: !81)
!408 = !DILocation(line: 76, column: 11, scope: !81)
!409 = !DILocation(line: 76, column: 9, scope: !81)
!410 = !DILocation(line: 77, column: 16, scope: !81)
!411 = !DILocation(line: 77, column: 19, scope: !81)
!412 = !DILocation(line: 77, column: 24, scope: !81)
!413 = !DILocation(line: 77, column: 9, scope: !81)
!414 = !DILocation(line: 77, column: 7, scope: !81)
!415 = !DILocation(line: 79, column: 9, scope: !81)
!416 = !DILocation(line: 79, column: 7, scope: !81)
!417 = !DILocation(line: 80, column: 23, scope: !81)
!418 = !DILocation(line: 80, column: 22, scope: !81)
!419 = !DILocation(line: 80, column: 27, scope: !81)
!420 = !DILocation(line: 80, column: 30, scope: !81)
!421 = !DILocation(line: 80, column: 11, scope: !81)
!422 = !DILocation(line: 80, column: 9, scope: !81)
!423 = !DILocation(line: 81, column: 16, scope: !81)
!424 = !DILocation(line: 81, column: 19, scope: !81)
!425 = !DILocation(line: 81, column: 24, scope: !81)
!426 = !DILocation(line: 81, column: 9, scope: !81)
!427 = !DILocation(line: 81, column: 7, scope: !81)
!428 = !DILocation(line: 83, column: 11, scope: !81)
!429 = !DILocation(line: 83, column: 6, scope: !81)
!430 = !DILocation(line: 83, column: 9, scope: !81)
!431 = !DILocation(line: 84, column: 11, scope: !81)
!432 = !DILocation(line: 84, column: 6, scope: !81)
!433 = !DILocation(line: 84, column: 9, scope: !81)
!434 = !DILocation(line: 85, column: 11, scope: !81)
!435 = !DILocation(line: 85, column: 6, scope: !81)
!436 = !DILocation(line: 85, column: 9, scope: !81)
!437 = !DILocation(line: 86, column: 1, scope: !81)
!438 = !DILocation(line: 276, column: 23, scope: !104)
!439 = !DILocation(line: 276, column: 40, scope: !104)
!440 = !DILocation(line: 276, column: 56, scope: !104)
!441 = !DILocation(line: 278, column: 5, scope: !104)
!442 = !DILocation(line: 278, column: 16, scope: !104)
!443 = !DILocation(line: 280, column: 5, scope: !104)
!444 = !DILocation(line: 280, column: 12, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !96, discriminator: 2)
!446 = !DILexicalBlockFile(scope: !104, file: !96, discriminator: 1)
!447 = !DILocation(line: 280, column: 16, scope: !104)
!448 = !DILocation(line: 281, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !96, line: 281, column: 13)
!450 = distinct !DILexicalBlock(scope: !104, file: !96, line: 280, column: 21)
!451 = !DILocation(line: 281, column: 17, scope: !449)
!452 = !DILocation(line: 281, column: 13, scope: !450)
!453 = !DILocation(line: 282, column: 28, scope: !449)
!454 = !DILocation(line: 282, column: 31, scope: !449)
!455 = !DILocation(line: 282, column: 37, scope: !449)
!456 = !DILocation(line: 282, column: 17, scope: !449)
!457 = !DILocation(line: 282, column: 15, scope: !449)
!458 = !DILocation(line: 282, column: 13, scope: !449)
!459 = !DILocation(line: 283, column: 27, scope: !450)
!460 = !DILocation(line: 283, column: 33, scope: !450)
!461 = !DILocation(line: 283, column: 39, scope: !450)
!462 = !DILocation(line: 283, column: 16, scope: !450)
!463 = !DILocation(line: 283, column: 14, scope: !450)
!464 = !DILocation(line: 284, column: 13, scope: !450)
!465 = !DILocation(line: 287, column: 12, scope: !104)
!466 = !DILocation(line: 288, column: 1, scope: !104)
!467 = !DILocation(line: 287, column: 5, scope: !104)
!468 = !DILocation(line: 151, column: 23, scope: !110)
!469 = !DILocation(line: 151, column: 37, scope: !110)
!470 = !DILocation(line: 151, column: 51, scope: !110)
!471 = !DILocation(line: 153, column: 5, scope: !110)
!472 = !DILocation(line: 153, column: 16, scope: !110)
!473 = !DILocation(line: 153, column: 20, scope: !110)
!474 = !DILocation(line: 153, column: 24, scope: !110)
!475 = !DILocation(line: 153, column: 27, scope: !110)
!476 = !DILocation(line: 156, column: 30, scope: !110)
!477 = !DILocation(line: 156, column: 33, scope: !110)
!478 = !DILocation(line: 156, column: 5, scope: !110)
!479 = !DILocation(line: 158, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !110, file: !96, line: 158, column: 9)
!481 = !DILocation(line: 158, column: 11, scope: !480)
!482 = !DILocation(line: 158, column: 9, scope: !110)
!483 = !DILocation(line: 161, column: 17, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !96, line: 158, column: 25)
!485 = !DILocation(line: 161, column: 15, scope: !484)
!486 = !DILocation(line: 161, column: 11, scope: !484)
!487 = !DILocation(line: 162, column: 12, scope: !484)
!488 = !DILocation(line: 164, column: 13, scope: !484)
!489 = !DILocation(line: 164, column: 18, scope: !484)
!490 = !DILocation(line: 164, column: 16, scope: !484)
!491 = !DILocation(line: 164, column: 11, scope: !484)
!492 = !DILocation(line: 165, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !96, line: 165, column: 13)
!494 = !DILocation(line: 165, column: 17, scope: !493)
!495 = !DILocation(line: 165, column: 15, scope: !493)
!496 = !DILocation(line: 165, column: 13, scope: !484)
!497 = !DILocation(line: 165, column: 23, scope: !498)
!498 = !DILexicalBlockFile(scope: !493, file: !96, discriminator: 1)
!499 = !DILocation(line: 165, column: 21, scope: !493)
!500 = !DILocation(line: 167, column: 11, scope: !484)
!501 = !DILocation(line: 168, column: 14, scope: !484)
!502 = !DILocation(line: 168, column: 18, scope: !484)
!503 = !DILocation(line: 168, column: 16, scope: !484)
!504 = !DILocation(line: 168, column: 12, scope: !484)
!505 = !DILocation(line: 169, column: 13, scope: !506)
!506 = distinct !DILexicalBlock(scope: !484, file: !96, line: 169, column: 13)
!507 = !DILocation(line: 169, column: 18, scope: !506)
!508 = !DILocation(line: 169, column: 16, scope: !506)
!509 = !DILocation(line: 169, column: 13, scope: !484)
!510 = !DILocation(line: 169, column: 23, scope: !511)
!511 = !DILexicalBlockFile(scope: !506, file: !96, discriminator: 1)
!512 = !DILocation(line: 169, column: 21, scope: !506)
!513 = !DILocation(line: 172, column: 17, scope: !484)
!514 = !DILocation(line: 172, column: 15, scope: !484)
!515 = !DILocation(line: 172, column: 11, scope: !484)
!516 = !DILocation(line: 173, column: 12, scope: !484)
!517 = !DILocation(line: 175, column: 13, scope: !484)
!518 = !DILocation(line: 175, column: 18, scope: !484)
!519 = !DILocation(line: 175, column: 16, scope: !484)
!520 = !DILocation(line: 175, column: 11, scope: !484)
!521 = !DILocation(line: 176, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !484, file: !96, line: 176, column: 13)
!523 = !DILocation(line: 176, column: 17, scope: !522)
!524 = !DILocation(line: 176, column: 15, scope: !522)
!525 = !DILocation(line: 176, column: 13, scope: !484)
!526 = !DILocation(line: 176, column: 23, scope: !527)
!527 = !DILexicalBlockFile(scope: !522, file: !96, discriminator: 1)
!528 = !DILocation(line: 176, column: 21, scope: !522)
!529 = !DILocation(line: 178, column: 11, scope: !484)
!530 = !DILocation(line: 179, column: 14, scope: !484)
!531 = !DILocation(line: 179, column: 18, scope: !484)
!532 = !DILocation(line: 179, column: 16, scope: !484)
!533 = !DILocation(line: 179, column: 12, scope: !484)
!534 = !DILocation(line: 180, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !484, file: !96, line: 180, column: 13)
!536 = !DILocation(line: 180, column: 18, scope: !535)
!537 = !DILocation(line: 180, column: 16, scope: !535)
!538 = !DILocation(line: 180, column: 13, scope: !484)
!539 = !DILocation(line: 180, column: 23, scope: !540)
!540 = !DILexicalBlockFile(scope: !535, file: !96, discriminator: 1)
!541 = !DILocation(line: 180, column: 21, scope: !535)
!542 = !DILocation(line: 182, column: 17, scope: !484)
!543 = !DILocation(line: 182, column: 20, scope: !484)
!544 = !DILocation(line: 182, column: 23, scope: !545)
!545 = !DILexicalBlockFile(scope: !484, file: !96, discriminator: 2)
!546 = !DILocation(line: 182, column: 29, scope: !484)
!547 = !DILocation(line: 182, column: 26, scope: !484)
!548 = !DILocation(line: 182, column: 33, scope: !549)
!549 = !DILexicalBlockFile(scope: !550, file: !96, discriminator: 3)
!550 = !DILexicalBlockFile(scope: !484, file: !96, discriminator: 1)
!551 = !DILocation(line: 182, column: 38, scope: !484)
!552 = !DILocation(line: 182, column: 36, scope: !484)
!553 = !DILocation(line: 182, column: 42, scope: !554)
!554 = !DILexicalBlockFile(scope: !484, file: !96, discriminator: 4)
!555 = !DILocation(line: 182, column: 9, scope: !556)
!556 = !DILexicalBlockFile(scope: !557, file: !96, discriminator: 6)
!557 = !DILexicalBlockFile(scope: !484, file: !96, discriminator: 5)
!558 = !DILocation(line: 182, column: 9, scope: !484)
!559 = !DILocation(line: 184, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !480, file: !96, line: 184, column: 14)
!561 = !DILocation(line: 184, column: 16, scope: !560)
!562 = !DILocation(line: 184, column: 14, scope: !480)
!563 = !DILocation(line: 187, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !96, line: 184, column: 30)
!565 = !DILocation(line: 187, column: 15, scope: !564)
!566 = !DILocation(line: 187, column: 11, scope: !564)
!567 = !DILocation(line: 188, column: 12, scope: !564)
!568 = !DILocation(line: 190, column: 13, scope: !564)
!569 = !DILocation(line: 190, column: 18, scope: !564)
!570 = !DILocation(line: 190, column: 16, scope: !564)
!571 = !DILocation(line: 190, column: 11, scope: !564)
!572 = !DILocation(line: 191, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !96, line: 191, column: 13)
!574 = !DILocation(line: 191, column: 17, scope: !573)
!575 = !DILocation(line: 191, column: 15, scope: !573)
!576 = !DILocation(line: 191, column: 13, scope: !564)
!577 = !DILocation(line: 191, column: 23, scope: !578)
!578 = !DILexicalBlockFile(scope: !573, file: !96, discriminator: 1)
!579 = !DILocation(line: 191, column: 21, scope: !573)
!580 = !DILocation(line: 193, column: 11, scope: !564)
!581 = !DILocation(line: 194, column: 14, scope: !564)
!582 = !DILocation(line: 194, column: 18, scope: !564)
!583 = !DILocation(line: 194, column: 16, scope: !564)
!584 = !DILocation(line: 194, column: 12, scope: !564)
!585 = !DILocation(line: 195, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !564, file: !96, line: 195, column: 13)
!587 = !DILocation(line: 195, column: 18, scope: !586)
!588 = !DILocation(line: 195, column: 16, scope: !586)
!589 = !DILocation(line: 195, column: 13, scope: !564)
!590 = !DILocation(line: 195, column: 23, scope: !591)
!591 = !DILexicalBlockFile(scope: !586, file: !96, discriminator: 1)
!592 = !DILocation(line: 195, column: 21, scope: !586)
!593 = !DILocation(line: 198, column: 17, scope: !564)
!594 = !DILocation(line: 198, column: 15, scope: !564)
!595 = !DILocation(line: 198, column: 11, scope: !564)
!596 = !DILocation(line: 199, column: 12, scope: !564)
!597 = !DILocation(line: 201, column: 13, scope: !564)
!598 = !DILocation(line: 201, column: 18, scope: !564)
!599 = !DILocation(line: 201, column: 16, scope: !564)
!600 = !DILocation(line: 201, column: 11, scope: !564)
!601 = !DILocation(line: 202, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !564, file: !96, line: 202, column: 13)
!603 = !DILocation(line: 202, column: 17, scope: !602)
!604 = !DILocation(line: 202, column: 15, scope: !602)
!605 = !DILocation(line: 202, column: 13, scope: !564)
!606 = !DILocation(line: 202, column: 23, scope: !607)
!607 = !DILexicalBlockFile(scope: !602, file: !96, discriminator: 1)
!608 = !DILocation(line: 202, column: 21, scope: !602)
!609 = !DILocation(line: 204, column: 11, scope: !564)
!610 = !DILocation(line: 205, column: 14, scope: !564)
!611 = !DILocation(line: 205, column: 18, scope: !564)
!612 = !DILocation(line: 205, column: 16, scope: !564)
!613 = !DILocation(line: 205, column: 12, scope: !564)
!614 = !DILocation(line: 206, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !564, file: !96, line: 206, column: 13)
!616 = !DILocation(line: 206, column: 18, scope: !615)
!617 = !DILocation(line: 206, column: 16, scope: !615)
!618 = !DILocation(line: 206, column: 13, scope: !564)
!619 = !DILocation(line: 206, column: 23, scope: !620)
!620 = !DILexicalBlockFile(scope: !615, file: !96, discriminator: 1)
!621 = !DILocation(line: 206, column: 21, scope: !615)
!622 = !DILocation(line: 209, column: 17, scope: !564)
!623 = !DILocation(line: 209, column: 15, scope: !564)
!624 = !DILocation(line: 209, column: 11, scope: !564)
!625 = !DILocation(line: 210, column: 12, scope: !564)
!626 = !DILocation(line: 212, column: 13, scope: !564)
!627 = !DILocation(line: 212, column: 18, scope: !564)
!628 = !DILocation(line: 212, column: 16, scope: !564)
!629 = !DILocation(line: 212, column: 11, scope: !564)
!630 = !DILocation(line: 213, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !564, file: !96, line: 213, column: 13)
!632 = !DILocation(line: 213, column: 17, scope: !631)
!633 = !DILocation(line: 213, column: 15, scope: !631)
!634 = !DILocation(line: 213, column: 13, scope: !564)
!635 = !DILocation(line: 213, column: 23, scope: !636)
!636 = !DILexicalBlockFile(scope: !631, file: !96, discriminator: 1)
!637 = !DILocation(line: 213, column: 21, scope: !631)
!638 = !DILocation(line: 215, column: 11, scope: !564)
!639 = !DILocation(line: 216, column: 14, scope: !564)
!640 = !DILocation(line: 216, column: 18, scope: !564)
!641 = !DILocation(line: 216, column: 16, scope: !564)
!642 = !DILocation(line: 216, column: 12, scope: !564)
!643 = !DILocation(line: 217, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !564, file: !96, line: 217, column: 13)
!645 = !DILocation(line: 217, column: 18, scope: !644)
!646 = !DILocation(line: 217, column: 16, scope: !644)
!647 = !DILocation(line: 217, column: 13, scope: !564)
!648 = !DILocation(line: 217, column: 23, scope: !649)
!649 = !DILexicalBlockFile(scope: !644, file: !96, discriminator: 1)
!650 = !DILocation(line: 217, column: 21, scope: !644)
!651 = !DILocation(line: 219, column: 17, scope: !564)
!652 = !DILocation(line: 219, column: 20, scope: !564)
!653 = !DILocation(line: 219, column: 23, scope: !654)
!654 = !DILexicalBlockFile(scope: !564, file: !96, discriminator: 2)
!655 = !DILocation(line: 219, column: 29, scope: !564)
!656 = !DILocation(line: 219, column: 26, scope: !564)
!657 = !DILocation(line: 219, column: 33, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !96, discriminator: 3)
!659 = !DILexicalBlockFile(scope: !564, file: !96, discriminator: 1)
!660 = !DILocation(line: 219, column: 38, scope: !564)
!661 = !DILocation(line: 219, column: 36, scope: !564)
!662 = !DILocation(line: 219, column: 42, scope: !663)
!663 = !DILexicalBlockFile(scope: !564, file: !96, discriminator: 4)
!664 = !DILocation(line: 219, column: 9, scope: !665)
!665 = !DILexicalBlockFile(scope: !666, file: !96, discriminator: 6)
!666 = !DILexicalBlockFile(scope: !564, file: !96, discriminator: 5)
!667 = !DILocation(line: 219, column: 9, scope: !564)
!668 = !DILocation(line: 224, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !560, file: !96, line: 221, column: 10)
!670 = !DILocation(line: 224, column: 15, scope: !669)
!671 = !DILocation(line: 224, column: 11, scope: !669)
!672 = !DILocation(line: 225, column: 12, scope: !669)
!673 = !DILocation(line: 227, column: 13, scope: !669)
!674 = !DILocation(line: 227, column: 18, scope: !669)
!675 = !DILocation(line: 227, column: 16, scope: !669)
!676 = !DILocation(line: 227, column: 11, scope: !669)
!677 = !DILocation(line: 228, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !669, file: !96, line: 228, column: 13)
!679 = !DILocation(line: 228, column: 17, scope: !678)
!680 = !DILocation(line: 228, column: 15, scope: !678)
!681 = !DILocation(line: 228, column: 13, scope: !669)
!682 = !DILocation(line: 228, column: 23, scope: !683)
!683 = !DILexicalBlockFile(scope: !678, file: !96, discriminator: 1)
!684 = !DILocation(line: 228, column: 21, scope: !678)
!685 = !DILocation(line: 230, column: 11, scope: !669)
!686 = !DILocation(line: 231, column: 14, scope: !669)
!687 = !DILocation(line: 231, column: 18, scope: !669)
!688 = !DILocation(line: 231, column: 16, scope: !669)
!689 = !DILocation(line: 231, column: 12, scope: !669)
!690 = !DILocation(line: 232, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !669, file: !96, line: 232, column: 13)
!692 = !DILocation(line: 232, column: 18, scope: !691)
!693 = !DILocation(line: 232, column: 16, scope: !691)
!694 = !DILocation(line: 232, column: 13, scope: !669)
!695 = !DILocation(line: 232, column: 23, scope: !696)
!696 = !DILexicalBlockFile(scope: !691, file: !96, discriminator: 1)
!697 = !DILocation(line: 232, column: 21, scope: !691)
!698 = !DILocation(line: 235, column: 17, scope: !669)
!699 = !DILocation(line: 235, column: 15, scope: !669)
!700 = !DILocation(line: 235, column: 11, scope: !669)
!701 = !DILocation(line: 236, column: 12, scope: !669)
!702 = !DILocation(line: 238, column: 13, scope: !669)
!703 = !DILocation(line: 238, column: 18, scope: !669)
!704 = !DILocation(line: 238, column: 16, scope: !669)
!705 = !DILocation(line: 238, column: 11, scope: !669)
!706 = !DILocation(line: 239, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !669, file: !96, line: 239, column: 13)
!708 = !DILocation(line: 239, column: 17, scope: !707)
!709 = !DILocation(line: 239, column: 15, scope: !707)
!710 = !DILocation(line: 239, column: 13, scope: !669)
!711 = !DILocation(line: 239, column: 23, scope: !712)
!712 = !DILexicalBlockFile(scope: !707, file: !96, discriminator: 1)
!713 = !DILocation(line: 239, column: 21, scope: !707)
!714 = !DILocation(line: 241, column: 11, scope: !669)
!715 = !DILocation(line: 242, column: 14, scope: !669)
!716 = !DILocation(line: 242, column: 18, scope: !669)
!717 = !DILocation(line: 242, column: 16, scope: !669)
!718 = !DILocation(line: 242, column: 12, scope: !669)
!719 = !DILocation(line: 243, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !669, file: !96, line: 243, column: 13)
!721 = !DILocation(line: 243, column: 18, scope: !720)
!722 = !DILocation(line: 243, column: 16, scope: !720)
!723 = !DILocation(line: 243, column: 13, scope: !669)
!724 = !DILocation(line: 243, column: 23, scope: !725)
!725 = !DILexicalBlockFile(scope: !720, file: !96, discriminator: 1)
!726 = !DILocation(line: 243, column: 21, scope: !720)
!727 = !DILocation(line: 246, column: 17, scope: !669)
!728 = !DILocation(line: 246, column: 15, scope: !669)
!729 = !DILocation(line: 246, column: 11, scope: !669)
!730 = !DILocation(line: 247, column: 12, scope: !669)
!731 = !DILocation(line: 249, column: 13, scope: !669)
!732 = !DILocation(line: 249, column: 18, scope: !669)
!733 = !DILocation(line: 249, column: 16, scope: !669)
!734 = !DILocation(line: 249, column: 11, scope: !669)
!735 = !DILocation(line: 250, column: 13, scope: !736)
!736 = distinct !DILexicalBlock(scope: !669, file: !96, line: 250, column: 13)
!737 = !DILocation(line: 250, column: 17, scope: !736)
!738 = !DILocation(line: 250, column: 15, scope: !736)
!739 = !DILocation(line: 250, column: 13, scope: !669)
!740 = !DILocation(line: 250, column: 23, scope: !741)
!741 = !DILexicalBlockFile(scope: !736, file: !96, discriminator: 1)
!742 = !DILocation(line: 250, column: 21, scope: !736)
!743 = !DILocation(line: 252, column: 11, scope: !669)
!744 = !DILocation(line: 253, column: 14, scope: !669)
!745 = !DILocation(line: 253, column: 18, scope: !669)
!746 = !DILocation(line: 253, column: 16, scope: !669)
!747 = !DILocation(line: 253, column: 12, scope: !669)
!748 = !DILocation(line: 254, column: 13, scope: !749)
!749 = distinct !DILexicalBlock(scope: !669, file: !96, line: 254, column: 13)
!750 = !DILocation(line: 254, column: 18, scope: !749)
!751 = !DILocation(line: 254, column: 16, scope: !749)
!752 = !DILocation(line: 254, column: 13, scope: !669)
!753 = !DILocation(line: 254, column: 23, scope: !754)
!754 = !DILexicalBlockFile(scope: !749, file: !96, discriminator: 1)
!755 = !DILocation(line: 254, column: 21, scope: !749)
!756 = !DILocation(line: 256, column: 17, scope: !669)
!757 = !DILocation(line: 256, column: 20, scope: !669)
!758 = !DILocation(line: 256, column: 23, scope: !759)
!759 = !DILexicalBlockFile(scope: !669, file: !96, discriminator: 2)
!760 = !DILocation(line: 256, column: 29, scope: !669)
!761 = !DILocation(line: 256, column: 26, scope: !669)
!762 = !DILocation(line: 256, column: 33, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !96, discriminator: 3)
!764 = !DILexicalBlockFile(scope: !669, file: !96, discriminator: 1)
!765 = !DILocation(line: 256, column: 38, scope: !669)
!766 = !DILocation(line: 256, column: 36, scope: !669)
!767 = !DILocation(line: 256, column: 42, scope: !768)
!768 = !DILexicalBlockFile(scope: !669, file: !96, discriminator: 4)
!769 = !DILocation(line: 256, column: 9, scope: !770)
!770 = !DILexicalBlockFile(scope: !771, file: !96, discriminator: 6)
!771 = !DILexicalBlockFile(scope: !669, file: !96, discriminator: 5)
!772 = !DILocation(line: 256, column: 9, scope: !669)
!773 = !DILocation(line: 258, column: 1, scope: !110)
!774 = !DILocation(line: 268, column: 25, scope: !130)
!775 = !DILocation(line: 268, column: 40, scope: !130)
!776 = !DILocation(line: 268, column: 56, scope: !130)
!777 = !DILocation(line: 268, column: 71, scope: !130)
!778 = !DILocation(line: 269, column: 24, scope: !130)
!779 = !DILocation(line: 271, column: 23, scope: !130)
!780 = !DILocation(line: 271, column: 22, scope: !130)
!781 = !DILocation(line: 271, column: 27, scope: !130)
!782 = !DILocation(line: 271, column: 31, scope: !130)
!783 = !DILocation(line: 271, column: 11, scope: !130)
!784 = !DILocation(line: 271, column: 6, scope: !130)
!785 = !DILocation(line: 271, column: 9, scope: !130)
!786 = !DILocation(line: 272, column: 23, scope: !130)
!787 = !DILocation(line: 272, column: 22, scope: !130)
!788 = !DILocation(line: 272, column: 27, scope: !130)
!789 = !DILocation(line: 272, column: 31, scope: !130)
!790 = !DILocation(line: 272, column: 11, scope: !130)
!791 = !DILocation(line: 272, column: 6, scope: !130)
!792 = !DILocation(line: 272, column: 9, scope: !130)
!793 = !DILocation(line: 273, column: 1, scope: !130)
!794 = !DILocation(line: 261, column: 26, scope: !139)
!795 = !DILocation(line: 261, column: 41, scope: !139)
!796 = !DILocation(line: 261, column: 55, scope: !139)
!797 = !DILocation(line: 261, column: 69, scope: !139)
!798 = !DILocation(line: 263, column: 22, scope: !139)
!799 = !DILocation(line: 263, column: 21, scope: !139)
!800 = !DILocation(line: 263, column: 25, scope: !139)
!801 = !DILocation(line: 263, column: 28, scope: !139)
!802 = !DILocation(line: 263, column: 10, scope: !139)
!803 = !DILocation(line: 263, column: 6, scope: !139)
!804 = !DILocation(line: 263, column: 8, scope: !139)
!805 = !DILocation(line: 264, column: 22, scope: !139)
!806 = !DILocation(line: 264, column: 21, scope: !139)
!807 = !DILocation(line: 264, column: 25, scope: !139)
!808 = !DILocation(line: 264, column: 28, scope: !139)
!809 = !DILocation(line: 264, column: 10, scope: !139)
!810 = !DILocation(line: 264, column: 6, scope: !139)
!811 = !DILocation(line: 264, column: 8, scope: !139)
!812 = !DILocation(line: 265, column: 1, scope: !139)
!813 = !DILocation(line: 198, column: 31, scope: !47)
!814 = !DILocation(line: 198, column: 45, scope: !47)
!815 = !DILocation(line: 198, column: 52, scope: !47)
!816 = !DILocation(line: 200, column: 5, scope: !47)
!817 = !DILocation(line: 200, column: 16, scope: !47)
!818 = !DILocation(line: 201, column: 5, scope: !47)
!819 = !DILocation(line: 201, column: 16, scope: !47)
!820 = !DILocation(line: 201, column: 20, scope: !47)
!821 = !DILocation(line: 201, column: 22, scope: !47)
!822 = !DILocation(line: 202, column: 5, scope: !47)
!823 = !DILocation(line: 202, column: 16, scope: !47)
!824 = !DILocation(line: 203, column: 5, scope: !47)
!825 = !DILocation(line: 203, column: 16, scope: !47)
!826 = !DILocation(line: 203, column: 24, scope: !47)
!827 = !DILocation(line: 203, column: 28, scope: !47)
!828 = !DILocation(line: 203, column: 32, scope: !47)
!829 = !DILocation(line: 204, column: 5, scope: !47)
!830 = !DILocation(line: 204, column: 17, scope: !47)
!831 = !DILocation(line: 204, column: 21, scope: !47)
!832 = !DILocation(line: 204, column: 26, scope: !47)
!833 = !DILocation(line: 204, column: 31, scope: !47)
!834 = !DILocation(line: 205, column: 5, scope: !47)
!835 = !DILocation(line: 205, column: 16, scope: !47)
!836 = !DILocation(line: 210, column: 5, scope: !47)
!837 = !DILocation(line: 210, column: 16, scope: !47)
!838 = !DILocation(line: 210, column: 19, scope: !47)
!839 = !DILocation(line: 224, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !47, file: !5, line: 224, column: 5)
!841 = !DILocation(line: 224, column: 12, scope: !840)
!842 = !DILocation(line: 224, column: 10, scope: !840)
!843 = !DILocation(line: 224, column: 17, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !5, discriminator: 2)
!845 = !DILexicalBlockFile(scope: !846, file: !5, discriminator: 1)
!846 = distinct !DILexicalBlock(scope: !840, file: !5, line: 224, column: 5)
!847 = !DILocation(line: 224, column: 21, scope: !846)
!848 = !DILocation(line: 224, column: 23, scope: !846)
!849 = !DILocation(line: 224, column: 22, scope: !846)
!850 = !DILocation(line: 224, column: 19, scope: !846)
!851 = !DILocation(line: 224, column: 5, scope: !840)
!852 = !DILocation(line: 225, column: 31, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !5, line: 225, column: 13)
!854 = distinct !DILexicalBlock(scope: !846, file: !5, line: 224, column: 34)
!855 = !DILocation(line: 225, column: 34, scope: !853)
!856 = !DILocation(line: 225, column: 37, scope: !853)
!857 = !DILocation(line: 225, column: 14, scope: !853)
!858 = !DILocation(line: 225, column: 13, scope: !854)
!859 = !DILocation(line: 226, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !5, line: 225, column: 46)
!861 = !DILocation(line: 228, column: 5, scope: !854)
!862 = !DILocation(line: 224, column: 31, scope: !846)
!863 = !DILocation(line: 224, column: 28, scope: !846)
!864 = !DILocation(line: 224, column: 5, scope: !846)
!865 = !DILocation(line: 231, column: 20, scope: !47)
!866 = !DILocation(line: 231, column: 5, scope: !47)
!867 = !DILocation(line: 232, column: 29, scope: !47)
!868 = !DILocation(line: 232, column: 35, scope: !47)
!869 = !DILocation(line: 232, column: 14, scope: !47)
!870 = !DILocation(line: 232, column: 12, scope: !47)
!871 = !DILocation(line: 233, column: 12, scope: !72)
!872 = !DILocation(line: 233, column: 10, scope: !72)
!873 = !DILocation(line: 233, column: 17, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !5, discriminator: 2)
!875 = !DILexicalBlockFile(scope: !71, file: !5, discriminator: 1)
!876 = !DILocation(line: 233, column: 21, scope: !71)
!877 = !DILocation(line: 233, column: 19, scope: !71)
!878 = !DILocation(line: 233, column: 5, scope: !72)
!879 = !DILocation(line: 234, column: 12, scope: !70)
!880 = !DILocation(line: 235, column: 25, scope: !70)
!881 = !DILocation(line: 235, column: 33, scope: !70)
!882 = !DILocation(line: 235, column: 36, scope: !70)
!883 = !DILocation(line: 235, column: 14, scope: !70)
!884 = !DILocation(line: 235, column: 12, scope: !70)
!885 = !DILocation(line: 236, column: 28, scope: !70)
!886 = !DILocation(line: 236, column: 32, scope: !70)
!887 = !DILocation(line: 236, column: 36, scope: !70)
!888 = !DILocation(line: 236, column: 17, scope: !70)
!889 = !DILocation(line: 236, column: 15, scope: !70)
!890 = !DILocation(line: 237, column: 16, scope: !69)
!891 = !DILocation(line: 237, column: 14, scope: !69)
!892 = !DILocation(line: 237, column: 21, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !5, discriminator: 2)
!894 = !DILexicalBlockFile(scope: !68, file: !5, discriminator: 1)
!895 = !DILocation(line: 237, column: 25, scope: !68)
!896 = !DILocation(line: 237, column: 23, scope: !68)
!897 = !DILocation(line: 237, column: 9, scope: !69)
!898 = !DILocation(line: 238, column: 13, scope: !67)
!899 = !DILocation(line: 238, column: 24, scope: !67)
!900 = !DILocation(line: 238, column: 31, scope: !67)
!901 = !DILocation(line: 238, column: 33, scope: !67)
!902 = !DILocation(line: 238, column: 32, scope: !67)
!903 = !DILocation(line: 238, column: 35, scope: !67)
!904 = !DILocation(line: 238, column: 34, scope: !67)
!905 = !DILocation(line: 238, column: 29, scope: !67)
!906 = !DILocation(line: 239, column: 13, scope: !67)
!907 = !DILocation(line: 239, column: 24, scope: !67)
!908 = !DILocation(line: 239, column: 31, scope: !67)
!909 = !DILocation(line: 239, column: 33, scope: !67)
!910 = !DILocation(line: 239, column: 32, scope: !67)
!911 = !DILocation(line: 239, column: 35, scope: !67)
!912 = !DILocation(line: 239, column: 34, scope: !67)
!913 = !DILocation(line: 239, column: 36, scope: !67)
!914 = !DILocation(line: 239, column: 29, scope: !67)
!915 = !DILocation(line: 240, column: 30, scope: !67)
!916 = !DILocation(line: 240, column: 39, scope: !67)
!917 = !DILocation(line: 240, column: 43, scope: !67)
!918 = !DILocation(line: 240, column: 13, scope: !67)
!919 = !DILocation(line: 241, column: 36, scope: !67)
!920 = !DILocation(line: 241, column: 43, scope: !67)
!921 = !DILocation(line: 241, column: 13, scope: !67)
!922 = !DILocation(line: 242, column: 24, scope: !67)
!923 = !DILocation(line: 242, column: 15, scope: !67)
!924 = !DILocation(line: 242, column: 17, scope: !67)
!925 = !DILocation(line: 242, column: 16, scope: !67)
!926 = !DILocation(line: 242, column: 19, scope: !67)
!927 = !DILocation(line: 242, column: 18, scope: !67)
!928 = !DILocation(line: 242, column: 13, scope: !67)
!929 = !DILocation(line: 242, column: 22, scope: !67)
!930 = !DILocation(line: 243, column: 26, scope: !67)
!931 = !DILocation(line: 243, column: 15, scope: !67)
!932 = !DILocation(line: 243, column: 17, scope: !67)
!933 = !DILocation(line: 243, column: 16, scope: !67)
!934 = !DILocation(line: 243, column: 19, scope: !67)
!935 = !DILocation(line: 243, column: 18, scope: !67)
!936 = !DILocation(line: 243, column: 20, scope: !67)
!937 = !DILocation(line: 243, column: 13, scope: !67)
!938 = !DILocation(line: 243, column: 24, scope: !67)
!939 = !DILocation(line: 244, column: 9, scope: !68)
!940 = !DILocation(line: 244, column: 9, scope: !67)
!941 = !DILocation(line: 237, column: 30, scope: !68)
!942 = !DILocation(line: 237, column: 9, scope: !68)
!943 = !DILocation(line: 245, column: 5, scope: !70)
!944 = !DILocation(line: 233, column: 25, scope: !71)
!945 = !DILocation(line: 233, column: 5, scope: !71)
!946 = !DILocation(line: 248, column: 23, scope: !47)
!947 = !DILocation(line: 248, column: 35, scope: !47)
!948 = !DILocation(line: 248, column: 5, scope: !47)
!949 = !DILocation(line: 249, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !47, file: !5, line: 249, column: 5)
!951 = !DILocation(line: 249, column: 12, scope: !950)
!952 = !DILocation(line: 249, column: 19, scope: !950)
!953 = !DILocation(line: 249, column: 22, scope: !950)
!954 = !DILocation(line: 249, column: 21, scope: !950)
!955 = !DILocation(line: 249, column: 18, scope: !950)
!956 = !DILocation(line: 249, column: 28, scope: !950)
!957 = !DILocation(line: 249, column: 33, scope: !950)
!958 = !DILocation(line: 249, column: 32, scope: !950)
!959 = !DILocation(line: 249, column: 30, scope: !950)
!960 = !DILocation(line: 249, column: 27, scope: !950)
!961 = !DILocation(line: 249, column: 10, scope: !950)
!962 = !DILocation(line: 249, column: 36, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !5, discriminator: 2)
!964 = !DILexicalBlockFile(scope: !965, file: !5, discriminator: 1)
!965 = distinct !DILexicalBlock(scope: !950, file: !5, line: 249, column: 5)
!966 = !DILocation(line: 249, column: 39, scope: !965)
!967 = !DILocation(line: 249, column: 41, scope: !965)
!968 = !DILocation(line: 249, column: 40, scope: !965)
!969 = !DILocation(line: 249, column: 38, scope: !965)
!970 = !DILocation(line: 249, column: 5, scope: !950)
!971 = !DILocation(line: 251, column: 23, scope: !972)
!972 = distinct !DILexicalBlock(scope: !965, file: !5, line: 249, column: 60)
!973 = !DILocation(line: 251, column: 27, scope: !972)
!974 = !DILocation(line: 251, column: 31, scope: !972)
!975 = !DILocation(line: 251, column: 35, scope: !972)
!976 = !DILocation(line: 251, column: 44, scope: !972)
!977 = !DILocation(line: 251, column: 9, scope: !972)
!978 = !DILocation(line: 252, column: 5, scope: !972)
!979 = !DILocation(line: 249, column: 46, scope: !965)
!980 = !DILocation(line: 249, column: 51, scope: !965)
!981 = !DILocation(line: 249, column: 56, scope: !965)
!982 = !DILocation(line: 249, column: 5, scope: !965)
!983 = !DILocation(line: 254, column: 5, scope: !47)
!984 = !DILocation(line: 255, column: 1, scope: !47)
!985 = !DILocation(line: 52, column: 19, scope: !95)
!986 = !DILocation(line: 52, column: 33, scope: !95)
!987 = !DILocation(line: 52, column: 47, scope: !95)
!988 = !DILocation(line: 54, column: 5, scope: !95)
!989 = !DILocation(line: 54, column: 16, scope: !95)
!990 = !DILocation(line: 56, column: 9, scope: !95)
!991 = !DILocation(line: 56, column: 13, scope: !95)
!992 = !DILocation(line: 56, column: 11, scope: !95)
!993 = !DILocation(line: 56, column: 7, scope: !95)
!994 = !DILocation(line: 57, column: 10, scope: !95)
!995 = !DILocation(line: 57, column: 14, scope: !95)
!996 = !DILocation(line: 57, column: 12, scope: !95)
!997 = !DILocation(line: 57, column: 9, scope: !95)
!998 = !DILocation(line: 57, column: 19, scope: !999)
!999 = !DILexicalBlockFile(scope: !95, file: !96, discriminator: 1)
!1000 = !DILocation(line: 57, column: 23, scope: !95)
!1001 = !DILocation(line: 57, column: 21, scope: !95)
!1002 = !DILocation(line: 57, column: 27, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !95, file: !96, discriminator: 2)
!1004 = !DILocation(line: 57, column: 7, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !96, discriminator: 4)
!1006 = !DILexicalBlockFile(scope: !95, file: !96, discriminator: 3)
!1007 = !DILocation(line: 58, column: 10, scope: !95)
!1008 = !DILocation(line: 58, column: 15, scope: !95)
!1009 = !DILocation(line: 58, column: 12, scope: !95)
!1010 = !DILocation(line: 58, column: 9, scope: !95)
!1011 = !DILocation(line: 58, column: 20, scope: !999)
!1012 = !DILocation(line: 58, column: 24, scope: !95)
!1013 = !DILocation(line: 58, column: 22, scope: !95)
!1014 = !DILocation(line: 58, column: 28, scope: !1003)
!1015 = !DILocation(line: 58, column: 7, scope: !1005)
!1016 = !DILocation(line: 60, column: 12, scope: !95)
!1017 = !DILocation(line: 61, column: 1, scope: !95)
!1018 = !DILocation(line: 60, column: 5, scope: !95)
!1019 = !DILocation(line: 206, column: 28, scope: !119)
!1020 = !DILocation(line: 206, column: 44, scope: !119)
!1021 = !DILocation(line: 206, column: 59, scope: !119)
!1022 = !DILocation(line: 206, column: 73, scope: !119)
!1023 = !DILocation(line: 208, column: 5, scope: !119)
!1024 = !DILocation(line: 208, column: 16, scope: !119)
!1025 = !DILocation(line: 208, column: 19, scope: !119)
!1026 = !DILocation(line: 212, column: 23, scope: !119)
!1027 = !DILocation(line: 212, column: 33, scope: !119)
!1028 = !DILocation(line: 210, column: 5, scope: !119)
!1029 = !{i32 104170, i32 104180}
!1030 = !DILocation(line: 216, column: 11, scope: !119)
!1031 = !DILocation(line: 216, column: 6, scope: !119)
!1032 = !DILocation(line: 216, column: 9, scope: !119)
!1033 = !DILocation(line: 217, column: 11, scope: !119)
!1034 = !DILocation(line: 217, column: 6, scope: !119)
!1035 = !DILocation(line: 217, column: 9, scope: !119)
!1036 = !DILocation(line: 218, column: 1, scope: !119)
