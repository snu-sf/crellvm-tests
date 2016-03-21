; ModuleID = 'irs-onlybc/convolute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpd_moduli = external hidden constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @fnt_convolute(i64* %c1, i64* %c2, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i64*, align 8
  %c2.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %fnt = alloca i32 (i64*, i64, i32)*, align 8
  %inv_fnt = alloca i32 (i64*, i64, i32)*, align 8
  %n_inv = alloca i64, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i64, align 8
  %y0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %x031 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store i64* %c1, i64** %c1.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %c1.addr, metadata !19, metadata !132), !dbg !133
  store i64* %c2, i64** %c2.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %c2.addr, metadata !20, metadata !132), !dbg !134
  store i64 %n, i64* %n.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !21, metadata !132), !dbg !137
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !138
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !22, metadata !132), !dbg !140
  %0 = bitcast i32 (i64*, i64, i32)** %fnt to i8*, !dbg !141
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !141
  call void @llvm.dbg.declare(metadata i32 (i64*, i64, i32)** %fnt, metadata !23, metadata !132), !dbg !142
  %1 = bitcast i32 (i64*, i64, i32)** %inv_fnt to i8*, !dbg !143
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !143
  call void @llvm.dbg.declare(metadata i32 (i64*, i64, i32)** %inv_fnt, metadata !27, metadata !132), !dbg !144
  %2 = bitcast i64* %n_inv to i8*, !dbg !145
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %n_inv, metadata !28, metadata !132), !dbg !146
  %3 = bitcast i64* %umod to i8*, !dbg !145
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !29, metadata !132), !dbg !147
  %4 = bitcast i64* %i to i8*, !dbg !148
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !148
  call void @llvm.dbg.declare(metadata i64* %i, metadata !30, metadata !132), !dbg !149
  %5 = load i32, i32* %modnum.addr, align 4, !dbg !150, !tbaa !138
  call void @std_setmodulus(i32 %5, i64* %umod), !dbg !151
  %6 = load i64, i64* %n.addr, align 8, !dbg !152, !tbaa !135
  %7 = load i64, i64* %umod, align 8, !dbg !153, !tbaa !135
  %sub = sub i64 %7, 2, !dbg !154
  %8 = load i64, i64* %umod, align 8, !dbg !155, !tbaa !135
  %call = call i64 @x64_powmod(i64 %6, i64 %sub, i64 %8), !dbg !156
  store i64 %call, i64* %n_inv, align 8, !dbg !157, !tbaa !135
  %9 = load i64, i64* %n.addr, align 8, !dbg !158, !tbaa !135
  %call1 = call i32 @ispower2(i64 %9), !dbg !160
  %tobool = icmp ne i32 %call1, 0, !dbg !160
  br i1 %tobool, label %if.then, label %if.else.3, !dbg !161

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !162, !tbaa !135
  %cmp = icmp ugt i64 %10, 4096, !dbg !165
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !166

if.then.2:                                        ; preds = %if.then
  store i32 (i64*, i64, i32)* @six_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !167, !tbaa !128
  store i32 (i64*, i64, i32)* @inv_six_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !169, !tbaa !128
  br label %if.end, !dbg !170

if.else:                                          ; preds = %if.then
  store i32 (i64*, i64, i32)* @std_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !171, !tbaa !128
  store i32 (i64*, i64, i32)* @std_inv_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !173, !tbaa !128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4, !dbg !174

if.else.3:                                        ; preds = %entry
  store i32 (i64*, i64, i32)* @four_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !175, !tbaa !128
  store i32 (i64*, i64, i32)* @inv_four_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !177, !tbaa !128
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.end
  %11 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !178, !tbaa !128
  %12 = load i64*, i64** %c1.addr, align 8, !dbg !180, !tbaa !128
  %13 = load i64, i64* %n.addr, align 8, !dbg !181, !tbaa !135
  %14 = load i32, i32* %modnum.addr, align 4, !dbg !182, !tbaa !138
  %call5 = call i32 %11(i64* %12, i64 %13, i32 %14), !dbg !178
  %tobool6 = icmp ne i32 %call5, 0, !dbg !178
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !183

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !184

if.end.8:                                         ; preds = %if.end.4
  %15 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !186, !tbaa !128
  %16 = load i64*, i64** %c2.addr, align 8, !dbg !188, !tbaa !128
  %17 = load i64, i64* %n.addr, align 8, !dbg !189, !tbaa !135
  %18 = load i32, i32* %modnum.addr, align 4, !dbg !190, !tbaa !138
  %call9 = call i32 %15(i64* %16, i64 %17, i32 %18), !dbg !186
  %tobool10 = icmp ne i32 %call9, 0, !dbg !186
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !191

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval, !dbg !192
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !192

if.end.12:                                        ; preds = %if.end.8
  store i64 0, i64* %i, align 8, !dbg !194, !tbaa !135
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.end.12
  %19 = load i64, i64* %i, align 8, !dbg !196, !tbaa !135
  %20 = load i64, i64* %n.addr, align 8, !dbg !199, !tbaa !135
  %sub13 = sub i64 %20, 1, !dbg !200
  %cmp14 = icmp ult i64 %19, %sub13, !dbg !201
  br i1 %cmp14, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %21 = bitcast i64* %x0 to i8*, !dbg !203
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !203
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !31, metadata !132), !dbg !204
  %22 = load i64, i64* %i, align 8, !dbg !205, !tbaa !135
  %23 = load i64*, i64** %c1.addr, align 8, !dbg !206, !tbaa !128
  %arrayidx = getelementptr i64, i64* %23, i64 %22, !dbg !206
  %24 = load i64, i64* %arrayidx, align 8, !dbg !206, !tbaa !135
  store i64 %24, i64* %x0, align 8, !dbg !204, !tbaa !135
  %25 = bitcast i64* %y0 to i8*, !dbg !207
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !207
  call void @llvm.dbg.declare(metadata i64* %y0, metadata !35, metadata !132), !dbg !208
  %26 = load i64, i64* %i, align 8, !dbg !209, !tbaa !135
  %27 = load i64*, i64** %c2.addr, align 8, !dbg !210, !tbaa !128
  %arrayidx15 = getelementptr i64, i64* %27, i64 %26, !dbg !210
  %28 = load i64, i64* %arrayidx15, align 8, !dbg !210, !tbaa !135
  store i64 %28, i64* %y0, align 8, !dbg !208, !tbaa !135
  %29 = bitcast i64* %x1 to i8*, !dbg !211
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !211
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !36, metadata !132), !dbg !212
  %30 = load i64, i64* %i, align 8, !dbg !213, !tbaa !135
  %add = add i64 %30, 1, !dbg !214
  %31 = load i64*, i64** %c1.addr, align 8, !dbg !215, !tbaa !128
  %arrayidx16 = getelementptr i64, i64* %31, i64 %add, !dbg !215
  %32 = load i64, i64* %arrayidx16, align 8, !dbg !215, !tbaa !135
  store i64 %32, i64* %x1, align 8, !dbg !212, !tbaa !135
  %33 = bitcast i64* %y1 to i8*, !dbg !216
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !216
  call void @llvm.dbg.declare(metadata i64* %y1, metadata !37, metadata !132), !dbg !217
  %34 = load i64, i64* %i, align 8, !dbg !218, !tbaa !135
  %add17 = add i64 %34, 1, !dbg !219
  %35 = load i64*, i64** %c2.addr, align 8, !dbg !220, !tbaa !128
  %arrayidx18 = getelementptr i64, i64* %35, i64 %add17, !dbg !220
  %36 = load i64, i64* %arrayidx18, align 8, !dbg !220, !tbaa !135
  store i64 %36, i64* %y1, align 8, !dbg !217, !tbaa !135
  %37 = load i64, i64* %y0, align 8, !dbg !221, !tbaa !135
  %38 = load i64, i64* %y1, align 8, !dbg !222, !tbaa !135
  %39 = load i64, i64* %umod, align 8, !dbg !223, !tbaa !135
  call void @x64_mulmod2(i64* %x0, i64 %37, i64* %x1, i64 %38, i64 %39), !dbg !224
  %40 = load i64, i64* %x0, align 8, !dbg !225, !tbaa !135
  %41 = load i64, i64* %i, align 8, !dbg !226, !tbaa !135
  %42 = load i64*, i64** %c1.addr, align 8, !dbg !227, !tbaa !128
  %arrayidx19 = getelementptr i64, i64* %42, i64 %41, !dbg !227
  store i64 %40, i64* %arrayidx19, align 8, !dbg !228, !tbaa !135
  %43 = load i64, i64* %x1, align 8, !dbg !229, !tbaa !135
  %44 = load i64, i64* %i, align 8, !dbg !230, !tbaa !135
  %add20 = add i64 %44, 1, !dbg !231
  %45 = load i64*, i64** %c1.addr, align 8, !dbg !232, !tbaa !128
  %arrayidx21 = getelementptr i64, i64* %45, i64 %add20, !dbg !232
  store i64 %43, i64* %arrayidx21, align 8, !dbg !233, !tbaa !135
  %46 = bitcast i64* %y1 to i8*, !dbg !234
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !234
  %47 = bitcast i64* %x1 to i8*, !dbg !234
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !234
  %48 = bitcast i64* %y0 to i8*, !dbg !234
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !234
  %49 = bitcast i64* %x0 to i8*, !dbg !234
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !234
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %50 = load i64, i64* %i, align 8, !dbg !236, !tbaa !135
  %add22 = add i64 %50, 2, !dbg !236
  store i64 %add22, i64* %i, align 8, !dbg !236, !tbaa !135
  br label %for.cond, !dbg !237

for.end:                                          ; preds = %for.cond
  %51 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !238, !tbaa !128
  %52 = load i64*, i64** %c1.addr, align 8, !dbg !240, !tbaa !128
  %53 = load i64, i64* %n.addr, align 8, !dbg !241, !tbaa !135
  %54 = load i32, i32* %modnum.addr, align 4, !dbg !242, !tbaa !138
  %call23 = call i32 %51(i64* %52, i64 %53, i32 %54), !dbg !238
  %tobool24 = icmp ne i32 %call23, 0, !dbg !238
  br i1 %tobool24, label %if.end.26, label %if.then.25, !dbg !243

if.then.25:                                       ; preds = %for.end
  store i32 0, i32* %retval, !dbg !244
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !244

if.end.26:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8, !dbg !246, !tbaa !135
  br label %for.cond.27, !dbg !247

for.cond.27:                                      ; preds = %for.inc.47, %if.end.26
  %55 = load i64, i64* %i, align 8, !dbg !248, !tbaa !135
  %56 = load i64, i64* %n.addr, align 8, !dbg !251, !tbaa !135
  %sub28 = sub i64 %56, 3, !dbg !252
  %cmp29 = icmp ult i64 %55, %sub28, !dbg !253
  br i1 %cmp29, label %for.body.30, label %for.end.49, !dbg !254

for.body.30:                                      ; preds = %for.cond.27
  %57 = bitcast i64* %x031 to i8*, !dbg !255
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !255
  call void @llvm.dbg.declare(metadata i64* %x031, metadata !38, metadata !132), !dbg !256
  %58 = load i64, i64* %i, align 8, !dbg !257, !tbaa !135
  %59 = load i64*, i64** %c1.addr, align 8, !dbg !258, !tbaa !128
  %arrayidx32 = getelementptr i64, i64* %59, i64 %58, !dbg !258
  %60 = load i64, i64* %arrayidx32, align 8, !dbg !258, !tbaa !135
  store i64 %60, i64* %x031, align 8, !dbg !256, !tbaa !135
  %61 = bitcast i64* %x133 to i8*, !dbg !259
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !259
  call void @llvm.dbg.declare(metadata i64* %x133, metadata !42, metadata !132), !dbg !260
  %62 = load i64, i64* %i, align 8, !dbg !261, !tbaa !135
  %add34 = add i64 %62, 1, !dbg !262
  %63 = load i64*, i64** %c1.addr, align 8, !dbg !263, !tbaa !128
  %arrayidx35 = getelementptr i64, i64* %63, i64 %add34, !dbg !263
  %64 = load i64, i64* %arrayidx35, align 8, !dbg !263, !tbaa !135
  store i64 %64, i64* %x133, align 8, !dbg !260, !tbaa !135
  %65 = bitcast i64* %x2 to i8*, !dbg !264
  call void @llvm.lifetime.start(i64 8, i8* %65) #2, !dbg !264
  call void @llvm.dbg.declare(metadata i64* %x2, metadata !43, metadata !132), !dbg !265
  %66 = load i64, i64* %i, align 8, !dbg !266, !tbaa !135
  %add36 = add i64 %66, 2, !dbg !267
  %67 = load i64*, i64** %c1.addr, align 8, !dbg !268, !tbaa !128
  %arrayidx37 = getelementptr i64, i64* %67, i64 %add36, !dbg !268
  %68 = load i64, i64* %arrayidx37, align 8, !dbg !268, !tbaa !135
  store i64 %68, i64* %x2, align 8, !dbg !265, !tbaa !135
  %69 = bitcast i64* %x3 to i8*, !dbg !269
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !269
  call void @llvm.dbg.declare(metadata i64* %x3, metadata !44, metadata !132), !dbg !270
  %70 = load i64, i64* %i, align 8, !dbg !271, !tbaa !135
  %add38 = add i64 %70, 3, !dbg !272
  %71 = load i64*, i64** %c1.addr, align 8, !dbg !273, !tbaa !128
  %arrayidx39 = getelementptr i64, i64* %71, i64 %add38, !dbg !273
  %72 = load i64, i64* %arrayidx39, align 8, !dbg !273, !tbaa !135
  store i64 %72, i64* %x3, align 8, !dbg !270, !tbaa !135
  %73 = load i64, i64* %n_inv, align 8, !dbg !274, !tbaa !135
  %74 = load i64, i64* %umod, align 8, !dbg !275, !tbaa !135
  call void @x64_mulmod2c(i64* %x031, i64* %x133, i64 %73, i64 %74), !dbg !276
  %75 = load i64, i64* %n_inv, align 8, !dbg !277, !tbaa !135
  %76 = load i64, i64* %umod, align 8, !dbg !278, !tbaa !135
  call void @x64_mulmod2c(i64* %x2, i64* %x3, i64 %75, i64 %76), !dbg !279
  %77 = load i64, i64* %x031, align 8, !dbg !280, !tbaa !135
  %78 = load i64, i64* %i, align 8, !dbg !281, !tbaa !135
  %79 = load i64*, i64** %c1.addr, align 8, !dbg !282, !tbaa !128
  %arrayidx40 = getelementptr i64, i64* %79, i64 %78, !dbg !282
  store i64 %77, i64* %arrayidx40, align 8, !dbg !283, !tbaa !135
  %80 = load i64, i64* %x133, align 8, !dbg !284, !tbaa !135
  %81 = load i64, i64* %i, align 8, !dbg !285, !tbaa !135
  %add41 = add i64 %81, 1, !dbg !286
  %82 = load i64*, i64** %c1.addr, align 8, !dbg !287, !tbaa !128
  %arrayidx42 = getelementptr i64, i64* %82, i64 %add41, !dbg !287
  store i64 %80, i64* %arrayidx42, align 8, !dbg !288, !tbaa !135
  %83 = load i64, i64* %x2, align 8, !dbg !289, !tbaa !135
  %84 = load i64, i64* %i, align 8, !dbg !290, !tbaa !135
  %add43 = add i64 %84, 2, !dbg !291
  %85 = load i64*, i64** %c1.addr, align 8, !dbg !292, !tbaa !128
  %arrayidx44 = getelementptr i64, i64* %85, i64 %add43, !dbg !292
  store i64 %83, i64* %arrayidx44, align 8, !dbg !293, !tbaa !135
  %86 = load i64, i64* %x3, align 8, !dbg !294, !tbaa !135
  %87 = load i64, i64* %i, align 8, !dbg !295, !tbaa !135
  %add45 = add i64 %87, 3, !dbg !296
  %88 = load i64*, i64** %c1.addr, align 8, !dbg !297, !tbaa !128
  %arrayidx46 = getelementptr i64, i64* %88, i64 %add45, !dbg !297
  store i64 %86, i64* %arrayidx46, align 8, !dbg !298, !tbaa !135
  %89 = bitcast i64* %x3 to i8*, !dbg !299
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !299
  %90 = bitcast i64* %x2 to i8*, !dbg !299
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !299
  %91 = bitcast i64* %x133 to i8*, !dbg !299
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !299
  %92 = bitcast i64* %x031 to i8*, !dbg !299
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !299
  br label %for.inc.47, !dbg !300

for.inc.47:                                       ; preds = %for.body.30
  %93 = load i64, i64* %i, align 8, !dbg !301, !tbaa !135
  %add48 = add i64 %93, 4, !dbg !301
  store i64 %add48, i64* %i, align 8, !dbg !301, !tbaa !135
  br label %for.cond.27, !dbg !302

for.end.49:                                       ; preds = %for.cond.27
  store i32 1, i32* %retval, !dbg !303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !303

cleanup:                                          ; preds = %for.end.49, %if.then.25, %if.then.11, %if.then.7
  %94 = bitcast i64* %i to i8*, !dbg !304
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !304
  %95 = bitcast i64* %umod to i8*, !dbg !304
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !304
  %96 = bitcast i64* %n_inv to i8*, !dbg !304
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !304
  %97 = bitcast i32 (i64*, i64, i32)** %inv_fnt to i8*, !dbg !304
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !304
  %98 = bitcast i32 (i64*, i64, i32)** %fnt to i8*, !dbg !304
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !304
  %99 = load i32, i32* %retval, !dbg !304
  ret i32 %99, !dbg !304
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
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !138
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !72, metadata !132), !dbg !305
  store i64* %umod, i64** %umod.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %umod.addr, metadata !73, metadata !132), !dbg !306
  %0 = load i32, i32* %modnum.addr, align 4, !dbg !307, !tbaa !138
  %idxprom = sext i32 %0 to i64, !dbg !308
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_moduli, i32 0, i64 %idxprom, !dbg !308
  %1 = load i64, i64* %arrayidx, align 8, !dbg !308, !tbaa !135
  %2 = load i64*, i64** %umod.addr, align 8, !dbg !309, !tbaa !128
  store i64 %1, i64* %2, align 8, !dbg !310, !tbaa !135
  ret void, !dbg !311
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_powmod(i64 %base, i64 %exp, i64 %umod) #3 {
entry:
  %base.addr = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  %umod.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %base.addr, metadata !79, metadata !132), !dbg !312
  store i64 %exp, i64* %exp.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %exp.addr, metadata !80, metadata !132), !dbg !313
  store i64 %umod, i64* %umod.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %umod.addr, metadata !81, metadata !132), !dbg !314
  %0 = bitcast i64* %r to i8*, !dbg !315
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !315
  call void @llvm.dbg.declare(metadata i64* %r, metadata !82, metadata !132), !dbg !316
  store i64 1, i64* %r, align 8, !dbg !316, !tbaa !135
  br label %while.cond, !dbg !317

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %exp.addr, align 8, !dbg !318, !tbaa !135
  %cmp = icmp ugt i64 %1, 0, !dbg !321
  br i1 %cmp, label %while.body, label %while.end, !dbg !317

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %exp.addr, align 8, !dbg !322, !tbaa !135
  %and = and i64 %2, 1, !dbg !325
  %tobool = icmp ne i64 %and, 0, !dbg !325
  br i1 %tobool, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* %r, align 8, !dbg !327, !tbaa !135
  %4 = load i64, i64* %base.addr, align 8, !dbg !328, !tbaa !135
  %5 = load i64, i64* %umod.addr, align 8, !dbg !329, !tbaa !135
  %call = call i64 @x64_mulmod(i64 %3, i64 %4, i64 %5), !dbg !330
  store i64 %call, i64* %r, align 8, !dbg !331, !tbaa !135
  br label %if.end, !dbg !332

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i64, i64* %base.addr, align 8, !dbg !333, !tbaa !135
  %7 = load i64, i64* %base.addr, align 8, !dbg !334, !tbaa !135
  %8 = load i64, i64* %umod.addr, align 8, !dbg !335, !tbaa !135
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !336
  store i64 %call1, i64* %base.addr, align 8, !dbg !337, !tbaa !135
  %9 = load i64, i64* %exp.addr, align 8, !dbg !338, !tbaa !135
  %shr = lshr i64 %9, 1, !dbg !338
  store i64 %shr, i64* %exp.addr, align 8, !dbg !338, !tbaa !135
  br label %while.cond, !dbg !317

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %r, align 8, !dbg !339, !tbaa !135
  %11 = bitcast i64* %r to i8*, !dbg !340
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !340
  ret i64 %10, !dbg !341
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ispower2(i64 %n) #3 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !108, metadata !132), !dbg !342
  %0 = load i64, i64* %n.addr, align 8, !dbg !343, !tbaa !135
  %cmp = icmp ne i64 %0, 0, !dbg !344
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !345

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !346, !tbaa !135
  %2 = load i64, i64* %n.addr, align 8, !dbg !348, !tbaa !135
  %sub = sub i64 %2, 1, !dbg !349
  %and = and i64 %1, %sub, !dbg !350
  %cmp1 = icmp eq i64 %and, 0, !dbg !351
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32, !dbg !352
  ret i32 %land.ext, !dbg !354
}

declare hidden i32 @six_step_fnt(i64*, i64, i32) #4

declare hidden i32 @inv_six_step_fnt(i64*, i64, i32) #4

declare hidden i32 @std_fnt(i64*, i64, i32) #4

declare hidden i32 @std_inv_fnt(i64*, i64, i32) #4

declare hidden i32 @four_step_fnt(i64*, i64, i32) #4

declare hidden i32 @inv_four_step_fnt(i64*, i64, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2(i64* %a0, i64 %b0, i64* %a1, i64 %b1, i64 %m) #3 {
entry:
  %a0.addr = alloca i64*, align 8
  %b0.addr = alloca i64, align 8
  %a1.addr = alloca i64*, align 8
  %b1.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a0, i64** %a0.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %a0.addr, metadata !113, metadata !132), !dbg !355
  store i64 %b0, i64* %b0.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %b0.addr, metadata !114, metadata !132), !dbg !356
  store i64* %a1, i64** %a1.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %a1.addr, metadata !115, metadata !132), !dbg !357
  store i64 %b1, i64* %b1.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %b1.addr, metadata !116, metadata !132), !dbg !358
  store i64 %m, i64* %m.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !117, metadata !132), !dbg !359
  %0 = load i64*, i64** %a0.addr, align 8, !dbg !360, !tbaa !128
  %1 = load i64, i64* %0, align 8, !dbg !361, !tbaa !135
  %2 = load i64, i64* %b0.addr, align 8, !dbg !362, !tbaa !135
  %3 = load i64, i64* %m.addr, align 8, !dbg !363, !tbaa !135
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !364
  %4 = load i64*, i64** %a0.addr, align 8, !dbg !365, !tbaa !128
  store i64 %call, i64* %4, align 8, !dbg !366, !tbaa !135
  %5 = load i64*, i64** %a1.addr, align 8, !dbg !367, !tbaa !128
  %6 = load i64, i64* %5, align 8, !dbg !368, !tbaa !135
  %7 = load i64, i64* %b1.addr, align 8, !dbg !369, !tbaa !135
  %8 = load i64, i64* %m.addr, align 8, !dbg !370, !tbaa !135
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !371
  %9 = load i64*, i64** %a1.addr, align 8, !dbg !372, !tbaa !128
  store i64 %call1, i64* %9, align 8, !dbg !373, !tbaa !135
  ret void, !dbg !374
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2c(i64* %a, i64* %b, i64 %w, i64 %m) #3 {
entry:
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  %w.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !120, metadata !132), !dbg !375
  store i64* %b, i64** %b.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %b.addr, metadata !121, metadata !132), !dbg !376
  store i64 %w, i64* %w.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %w.addr, metadata !122, metadata !132), !dbg !377
  store i64 %m, i64* %m.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !123, metadata !132), !dbg !378
  %0 = load i64*, i64** %a.addr, align 8, !dbg !379, !tbaa !128
  %1 = load i64, i64* %0, align 8, !dbg !380, !tbaa !135
  %2 = load i64, i64* %w.addr, align 8, !dbg !381, !tbaa !135
  %3 = load i64, i64* %m.addr, align 8, !dbg !382, !tbaa !135
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3), !dbg !383
  %4 = load i64*, i64** %a.addr, align 8, !dbg !384, !tbaa !128
  store i64 %call, i64* %4, align 8, !dbg !385, !tbaa !135
  %5 = load i64*, i64** %b.addr, align 8, !dbg !386, !tbaa !128
  %6 = load i64, i64* %5, align 8, !dbg !387, !tbaa !135
  %7 = load i64, i64* %w.addr, align 8, !dbg !388, !tbaa !135
  %8 = load i64, i64* %m.addr, align 8, !dbg !389, !tbaa !135
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8), !dbg !390
  %9 = load i64*, i64** %b.addr, align 8, !dbg !391, !tbaa !128
  store i64 %call1, i64* %9, align 8, !dbg !392, !tbaa !135
  ret void, !dbg !393
}

; Function Attrs: nounwind uwtable
define hidden i32 @fnt_autoconvolute(i64* %c1, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %fnt = alloca i32 (i64*, i64, i32)*, align 8
  %inv_fnt = alloca i32 (i64*, i64, i32)*, align 8
  %n_inv = alloca i64, align 8
  %umod = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x024 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store i64* %c1, i64** %c1.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %c1.addr, metadata !47, metadata !132), !dbg !394
  store i64 %n, i64* %n.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !48, metadata !132), !dbg !395
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !138
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !49, metadata !132), !dbg !396
  %0 = bitcast i32 (i64*, i64, i32)** %fnt to i8*, !dbg !397
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !397
  call void @llvm.dbg.declare(metadata i32 (i64*, i64, i32)** %fnt, metadata !50, metadata !132), !dbg !398
  %1 = bitcast i32 (i64*, i64, i32)** %inv_fnt to i8*, !dbg !399
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !399
  call void @llvm.dbg.declare(metadata i32 (i64*, i64, i32)** %inv_fnt, metadata !51, metadata !132), !dbg !400
  %2 = bitcast i64* %n_inv to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !401
  call void @llvm.dbg.declare(metadata i64* %n_inv, metadata !52, metadata !132), !dbg !402
  %3 = bitcast i64* %umod to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !401
  call void @llvm.dbg.declare(metadata i64* %umod, metadata !53, metadata !132), !dbg !403
  %4 = bitcast i64* %i to i8*, !dbg !404
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !404
  call void @llvm.dbg.declare(metadata i64* %i, metadata !54, metadata !132), !dbg !405
  %5 = load i32, i32* %modnum.addr, align 4, !dbg !406, !tbaa !138
  call void @std_setmodulus(i32 %5, i64* %umod), !dbg !407
  %6 = load i64, i64* %n.addr, align 8, !dbg !408, !tbaa !135
  %7 = load i64, i64* %umod, align 8, !dbg !409, !tbaa !135
  %sub = sub i64 %7, 2, !dbg !410
  %8 = load i64, i64* %umod, align 8, !dbg !411, !tbaa !135
  %call = call i64 @x64_powmod(i64 %6, i64 %sub, i64 %8), !dbg !412
  store i64 %call, i64* %n_inv, align 8, !dbg !413, !tbaa !135
  %9 = load i64, i64* %n.addr, align 8, !dbg !414, !tbaa !135
  %call1 = call i32 @ispower2(i64 %9), !dbg !416
  %tobool = icmp ne i32 %call1, 0, !dbg !416
  br i1 %tobool, label %if.then, label %if.else.3, !dbg !417

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !418, !tbaa !135
  %cmp = icmp ugt i64 %10, 4096, !dbg !421
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !422

if.then.2:                                        ; preds = %if.then
  store i32 (i64*, i64, i32)* @six_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !423, !tbaa !128
  store i32 (i64*, i64, i32)* @inv_six_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !425, !tbaa !128
  br label %if.end, !dbg !426

if.else:                                          ; preds = %if.then
  store i32 (i64*, i64, i32)* @std_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !427, !tbaa !128
  store i32 (i64*, i64, i32)* @std_inv_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !429, !tbaa !128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4, !dbg !430

if.else.3:                                        ; preds = %entry
  store i32 (i64*, i64, i32)* @four_step_fnt, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !431, !tbaa !128
  store i32 (i64*, i64, i32)* @inv_four_step_fnt, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !433, !tbaa !128
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.end
  %11 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %fnt, align 8, !dbg !434, !tbaa !128
  %12 = load i64*, i64** %c1.addr, align 8, !dbg !436, !tbaa !128
  %13 = load i64, i64* %n.addr, align 8, !dbg !437, !tbaa !135
  %14 = load i32, i32* %modnum.addr, align 4, !dbg !438, !tbaa !138
  %call5 = call i32 %11(i64* %12, i64 %13, i32 %14), !dbg !434
  %tobool6 = icmp ne i32 %call5, 0, !dbg !434
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !439

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !440
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !440

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8, !dbg !442, !tbaa !135
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.inc, %if.end.8
  %15 = load i64, i64* %i, align 8, !dbg !444, !tbaa !135
  %16 = load i64, i64* %n.addr, align 8, !dbg !447, !tbaa !135
  %sub9 = sub i64 %16, 1, !dbg !448
  %cmp10 = icmp ult i64 %15, %sub9, !dbg !449
  br i1 %cmp10, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %17 = bitcast i64* %x0 to i8*, !dbg !451
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !451
  call void @llvm.dbg.declare(metadata i64* %x0, metadata !55, metadata !132), !dbg !452
  %18 = load i64, i64* %i, align 8, !dbg !453, !tbaa !135
  %19 = load i64*, i64** %c1.addr, align 8, !dbg !454, !tbaa !128
  %arrayidx = getelementptr i64, i64* %19, i64 %18, !dbg !454
  %20 = load i64, i64* %arrayidx, align 8, !dbg !454, !tbaa !135
  store i64 %20, i64* %x0, align 8, !dbg !452, !tbaa !135
  %21 = bitcast i64* %x1 to i8*, !dbg !455
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !455
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !59, metadata !132), !dbg !456
  %22 = load i64, i64* %i, align 8, !dbg !457, !tbaa !135
  %add = add i64 %22, 1, !dbg !458
  %23 = load i64*, i64** %c1.addr, align 8, !dbg !459, !tbaa !128
  %arrayidx11 = getelementptr i64, i64* %23, i64 %add, !dbg !459
  %24 = load i64, i64* %arrayidx11, align 8, !dbg !459, !tbaa !135
  store i64 %24, i64* %x1, align 8, !dbg !456, !tbaa !135
  %25 = load i64, i64* %x0, align 8, !dbg !460, !tbaa !135
  %26 = load i64, i64* %x1, align 8, !dbg !461, !tbaa !135
  %27 = load i64, i64* %umod, align 8, !dbg !462, !tbaa !135
  call void @x64_mulmod2(i64* %x0, i64 %25, i64* %x1, i64 %26, i64 %27), !dbg !463
  %28 = load i64, i64* %x0, align 8, !dbg !464, !tbaa !135
  %29 = load i64, i64* %i, align 8, !dbg !465, !tbaa !135
  %30 = load i64*, i64** %c1.addr, align 8, !dbg !466, !tbaa !128
  %arrayidx12 = getelementptr i64, i64* %30, i64 %29, !dbg !466
  store i64 %28, i64* %arrayidx12, align 8, !dbg !467, !tbaa !135
  %31 = load i64, i64* %x1, align 8, !dbg !468, !tbaa !135
  %32 = load i64, i64* %i, align 8, !dbg !469, !tbaa !135
  %add13 = add i64 %32, 1, !dbg !470
  %33 = load i64*, i64** %c1.addr, align 8, !dbg !471, !tbaa !128
  %arrayidx14 = getelementptr i64, i64* %33, i64 %add13, !dbg !471
  store i64 %31, i64* %arrayidx14, align 8, !dbg !472, !tbaa !135
  %34 = bitcast i64* %x1 to i8*, !dbg !473
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !473
  %35 = bitcast i64* %x0 to i8*, !dbg !473
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !473
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i, align 8, !dbg !475, !tbaa !135
  %add15 = add i64 %36, 2, !dbg !475
  store i64 %add15, i64* %i, align 8, !dbg !475, !tbaa !135
  br label %for.cond, !dbg !476

for.end:                                          ; preds = %for.cond
  %37 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %inv_fnt, align 8, !dbg !477, !tbaa !128
  %38 = load i64*, i64** %c1.addr, align 8, !dbg !479, !tbaa !128
  %39 = load i64, i64* %n.addr, align 8, !dbg !480, !tbaa !135
  %40 = load i32, i32* %modnum.addr, align 4, !dbg !481, !tbaa !138
  %call16 = call i32 %37(i64* %38, i64 %39, i32 %40), !dbg !477
  %tobool17 = icmp ne i32 %call16, 0, !dbg !477
  br i1 %tobool17, label %if.end.19, label %if.then.18, !dbg !482

if.then.18:                                       ; preds = %for.end
  store i32 0, i32* %retval, !dbg !483
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !483

if.end.19:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8, !dbg !485, !tbaa !135
  br label %for.cond.20, !dbg !486

for.cond.20:                                      ; preds = %for.inc.40, %if.end.19
  %41 = load i64, i64* %i, align 8, !dbg !487, !tbaa !135
  %42 = load i64, i64* %n.addr, align 8, !dbg !490, !tbaa !135
  %sub21 = sub i64 %42, 3, !dbg !491
  %cmp22 = icmp ult i64 %41, %sub21, !dbg !492
  br i1 %cmp22, label %for.body.23, label %for.end.42, !dbg !493

for.body.23:                                      ; preds = %for.cond.20
  %43 = bitcast i64* %x024 to i8*, !dbg !494
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !494
  call void @llvm.dbg.declare(metadata i64* %x024, metadata !60, metadata !132), !dbg !495
  %44 = load i64, i64* %i, align 8, !dbg !496, !tbaa !135
  %45 = load i64*, i64** %c1.addr, align 8, !dbg !497, !tbaa !128
  %arrayidx25 = getelementptr i64, i64* %45, i64 %44, !dbg !497
  %46 = load i64, i64* %arrayidx25, align 8, !dbg !497, !tbaa !135
  store i64 %46, i64* %x024, align 8, !dbg !495, !tbaa !135
  %47 = bitcast i64* %x126 to i8*, !dbg !498
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !498
  call void @llvm.dbg.declare(metadata i64* %x126, metadata !64, metadata !132), !dbg !499
  %48 = load i64, i64* %i, align 8, !dbg !500, !tbaa !135
  %add27 = add i64 %48, 1, !dbg !501
  %49 = load i64*, i64** %c1.addr, align 8, !dbg !502, !tbaa !128
  %arrayidx28 = getelementptr i64, i64* %49, i64 %add27, !dbg !502
  %50 = load i64, i64* %arrayidx28, align 8, !dbg !502, !tbaa !135
  store i64 %50, i64* %x126, align 8, !dbg !499, !tbaa !135
  %51 = bitcast i64* %x2 to i8*, !dbg !503
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !503
  call void @llvm.dbg.declare(metadata i64* %x2, metadata !65, metadata !132), !dbg !504
  %52 = load i64, i64* %i, align 8, !dbg !505, !tbaa !135
  %add29 = add i64 %52, 2, !dbg !506
  %53 = load i64*, i64** %c1.addr, align 8, !dbg !507, !tbaa !128
  %arrayidx30 = getelementptr i64, i64* %53, i64 %add29, !dbg !507
  %54 = load i64, i64* %arrayidx30, align 8, !dbg !507, !tbaa !135
  store i64 %54, i64* %x2, align 8, !dbg !504, !tbaa !135
  %55 = bitcast i64* %x3 to i8*, !dbg !508
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !508
  call void @llvm.dbg.declare(metadata i64* %x3, metadata !66, metadata !132), !dbg !509
  %56 = load i64, i64* %i, align 8, !dbg !510, !tbaa !135
  %add31 = add i64 %56, 3, !dbg !511
  %57 = load i64*, i64** %c1.addr, align 8, !dbg !512, !tbaa !128
  %arrayidx32 = getelementptr i64, i64* %57, i64 %add31, !dbg !512
  %58 = load i64, i64* %arrayidx32, align 8, !dbg !512, !tbaa !135
  store i64 %58, i64* %x3, align 8, !dbg !509, !tbaa !135
  %59 = load i64, i64* %n_inv, align 8, !dbg !513, !tbaa !135
  %60 = load i64, i64* %umod, align 8, !dbg !514, !tbaa !135
  call void @x64_mulmod2c(i64* %x024, i64* %x126, i64 %59, i64 %60), !dbg !515
  %61 = load i64, i64* %n_inv, align 8, !dbg !516, !tbaa !135
  %62 = load i64, i64* %umod, align 8, !dbg !517, !tbaa !135
  call void @x64_mulmod2c(i64* %x2, i64* %x3, i64 %61, i64 %62), !dbg !518
  %63 = load i64, i64* %x024, align 8, !dbg !519, !tbaa !135
  %64 = load i64, i64* %i, align 8, !dbg !520, !tbaa !135
  %65 = load i64*, i64** %c1.addr, align 8, !dbg !521, !tbaa !128
  %arrayidx33 = getelementptr i64, i64* %65, i64 %64, !dbg !521
  store i64 %63, i64* %arrayidx33, align 8, !dbg !522, !tbaa !135
  %66 = load i64, i64* %x126, align 8, !dbg !523, !tbaa !135
  %67 = load i64, i64* %i, align 8, !dbg !524, !tbaa !135
  %add34 = add i64 %67, 1, !dbg !525
  %68 = load i64*, i64** %c1.addr, align 8, !dbg !526, !tbaa !128
  %arrayidx35 = getelementptr i64, i64* %68, i64 %add34, !dbg !526
  store i64 %66, i64* %arrayidx35, align 8, !dbg !527, !tbaa !135
  %69 = load i64, i64* %x2, align 8, !dbg !528, !tbaa !135
  %70 = load i64, i64* %i, align 8, !dbg !529, !tbaa !135
  %add36 = add i64 %70, 2, !dbg !530
  %71 = load i64*, i64** %c1.addr, align 8, !dbg !531, !tbaa !128
  %arrayidx37 = getelementptr i64, i64* %71, i64 %add36, !dbg !531
  store i64 %69, i64* %arrayidx37, align 8, !dbg !532, !tbaa !135
  %72 = load i64, i64* %x3, align 8, !dbg !533, !tbaa !135
  %73 = load i64, i64* %i, align 8, !dbg !534, !tbaa !135
  %add38 = add i64 %73, 3, !dbg !535
  %74 = load i64*, i64** %c1.addr, align 8, !dbg !536, !tbaa !128
  %arrayidx39 = getelementptr i64, i64* %74, i64 %add38, !dbg !536
  store i64 %72, i64* %arrayidx39, align 8, !dbg !537, !tbaa !135
  %75 = bitcast i64* %x3 to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !538
  %76 = bitcast i64* %x2 to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !538
  %77 = bitcast i64* %x126 to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !538
  %78 = bitcast i64* %x024 to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !538
  br label %for.inc.40, !dbg !539

for.inc.40:                                       ; preds = %for.body.23
  %79 = load i64, i64* %i, align 8, !dbg !540, !tbaa !135
  %add41 = add i64 %79, 4, !dbg !540
  store i64 %add41, i64* %i, align 8, !dbg !540, !tbaa !135
  br label %for.cond.20, !dbg !541

for.end.42:                                       ; preds = %for.cond.20
  store i32 1, i32* %retval, !dbg !542
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %for.end.42, %if.then.18, %if.then.7
  %80 = bitcast i64* %i to i8*, !dbg !543
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !543
  %81 = bitcast i64* %umod to i8*, !dbg !543
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !543
  %82 = bitcast i64* %n_inv to i8*, !dbg !543
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !543
  %83 = bitcast i32 (i64*, i64, i32)** %inv_fnt to i8*, !dbg !543
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !543
  %84 = bitcast i32 (i64*, i64, i32)** %fnt to i8*, !dbg !543
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !543
  %85 = load i32, i32* %retval, !dbg !543
  ret i32 %85, !dbg !543
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
  store i64 %a, i64* %a.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !85, metadata !132), !dbg !544
  store i64 %b, i64* %b.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !86, metadata !132), !dbg !545
  store i64 %m, i64* %m.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %m.addr, metadata !87, metadata !132), !dbg !546
  %0 = bitcast i64* %hi to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !88, metadata !132), !dbg !548
  %1 = bitcast i64* %lo to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !89, metadata !132), !dbg !549
  %2 = bitcast i64* %x to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %x, metadata !90, metadata !132), !dbg !550
  %3 = bitcast i64* %y to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %y, metadata !91, metadata !132), !dbg !551
  %4 = load i64, i64* %a.addr, align 8, !dbg !552, !tbaa !135
  %5 = load i64, i64* %b.addr, align 8, !dbg !553, !tbaa !135
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5), !dbg !554
  %6 = load i64, i64* %m.addr, align 8, !dbg !555, !tbaa !135
  %and = and i64 %6, 4294967296, !dbg !557
  %tobool = icmp ne i64 %and, 0, !dbg !557
  br i1 %tobool, label %if.then, label %if.else, !dbg !558

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %hi, align 8, !dbg !559, !tbaa !135
  store i64 %7, i64* %y, align 8, !dbg !561, !tbaa !135
  store i64 %7, i64* %x, align 8, !dbg !562, !tbaa !135
  %8 = load i64, i64* %hi, align 8, !dbg !563, !tbaa !135
  %shr = lshr i64 %8, 32, !dbg !563
  store i64 %shr, i64* %hi, align 8, !dbg !563, !tbaa !135
  %9 = load i64, i64* %lo, align 8, !dbg !564, !tbaa !135
  %10 = load i64, i64* %x, align 8, !dbg !565, !tbaa !135
  %sub = sub i64 %9, %10, !dbg !566
  store i64 %sub, i64* %x, align 8, !dbg !567, !tbaa !135
  %11 = load i64, i64* %x, align 8, !dbg !568, !tbaa !135
  %12 = load i64, i64* %lo, align 8, !dbg !570, !tbaa !135
  %cmp = icmp ugt i64 %11, %12, !dbg !571
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !572

if.then.1:                                        ; preds = %if.then
  %13 = load i64, i64* %hi, align 8, !dbg !573, !tbaa !135
  %dec = add i64 %13, -1, !dbg !573
  store i64 %dec, i64* %hi, align 8, !dbg !573, !tbaa !135
  br label %if.end, !dbg !575

if.end:                                           ; preds = %if.then.1, %if.then
  %14 = load i64, i64* %y, align 8, !dbg !576, !tbaa !135
  %shl = shl i64 %14, 32, !dbg !576
  store i64 %shl, i64* %y, align 8, !dbg !576, !tbaa !135
  %15 = load i64, i64* %y, align 8, !dbg !577, !tbaa !135
  %16 = load i64, i64* %x, align 8, !dbg !578, !tbaa !135
  %add = add i64 %15, %16, !dbg !579
  store i64 %add, i64* %lo, align 8, !dbg !580, !tbaa !135
  %17 = load i64, i64* %lo, align 8, !dbg !581, !tbaa !135
  %18 = load i64, i64* %y, align 8, !dbg !583, !tbaa !135
  %cmp2 = icmp ult i64 %17, %18, !dbg !584
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !585

if.then.3:                                        ; preds = %if.end
  %19 = load i64, i64* %hi, align 8, !dbg !586, !tbaa !135
  %inc = add i64 %19, 1, !dbg !586
  store i64 %inc, i64* %hi, align 8, !dbg !586, !tbaa !135
  br label %if.end.4, !dbg !588

if.end.4:                                         ; preds = %if.then.3, %if.end
  %20 = load i64, i64* %hi, align 8, !dbg !589, !tbaa !135
  store i64 %20, i64* %y, align 8, !dbg !590, !tbaa !135
  store i64 %20, i64* %x, align 8, !dbg !591, !tbaa !135
  %21 = load i64, i64* %hi, align 8, !dbg !592, !tbaa !135
  %shr5 = lshr i64 %21, 32, !dbg !592
  store i64 %shr5, i64* %hi, align 8, !dbg !592, !tbaa !135
  %22 = load i64, i64* %lo, align 8, !dbg !593, !tbaa !135
  %23 = load i64, i64* %x, align 8, !dbg !594, !tbaa !135
  %sub6 = sub i64 %22, %23, !dbg !595
  store i64 %sub6, i64* %x, align 8, !dbg !596, !tbaa !135
  %24 = load i64, i64* %x, align 8, !dbg !597, !tbaa !135
  %25 = load i64, i64* %lo, align 8, !dbg !599, !tbaa !135
  %cmp7 = icmp ugt i64 %24, %25, !dbg !600
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !601

if.then.8:                                        ; preds = %if.end.4
  %26 = load i64, i64* %hi, align 8, !dbg !602, !tbaa !135
  %dec9 = add i64 %26, -1, !dbg !602
  store i64 %dec9, i64* %hi, align 8, !dbg !602, !tbaa !135
  br label %if.end.10, !dbg !604

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %27 = load i64, i64* %y, align 8, !dbg !605, !tbaa !135
  %shl11 = shl i64 %27, 32, !dbg !605
  store i64 %shl11, i64* %y, align 8, !dbg !605, !tbaa !135
  %28 = load i64, i64* %y, align 8, !dbg !606, !tbaa !135
  %29 = load i64, i64* %x, align 8, !dbg !607, !tbaa !135
  %add12 = add i64 %28, %29, !dbg !608
  store i64 %add12, i64* %lo, align 8, !dbg !609, !tbaa !135
  %30 = load i64, i64* %lo, align 8, !dbg !610, !tbaa !135
  %31 = load i64, i64* %y, align 8, !dbg !612, !tbaa !135
  %cmp13 = icmp ult i64 %30, %31, !dbg !613
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !614

if.then.14:                                       ; preds = %if.end.10
  %32 = load i64, i64* %hi, align 8, !dbg !615, !tbaa !135
  %inc15 = add i64 %32, 1, !dbg !615
  store i64 %inc15, i64* %hi, align 8, !dbg !615, !tbaa !135
  br label %if.end.16, !dbg !617

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %33 = load i64, i64* %hi, align 8, !dbg !618, !tbaa !135
  %tobool17 = icmp ne i64 %33, 0, !dbg !618
  br i1 %tobool17, label %cond.true, label %lor.lhs.false, !dbg !619

lor.lhs.false:                                    ; preds = %if.end.16
  %34 = load i64, i64* %lo, align 8, !dbg !620, !tbaa !135
  %35 = load i64, i64* %m.addr, align 8, !dbg !622, !tbaa !135
  %cmp18 = icmp uge i64 %34, %35, !dbg !623
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !618

cond.true:                                        ; preds = %lor.lhs.false, %if.end.16
  %36 = load i64, i64* %lo, align 8, !dbg !624, !tbaa !135
  %37 = load i64, i64* %m.addr, align 8, !dbg !627, !tbaa !135
  %sub19 = sub i64 %36, %37, !dbg !628
  br label %cond.end, !dbg !618

cond.false:                                       ; preds = %lor.lhs.false
  %38 = load i64, i64* %lo, align 8, !dbg !629, !tbaa !135
  br label %cond.end, !dbg !618

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub19, %cond.true ], [ %38, %cond.false ], !dbg !618
  store i64 %cond, i64* %retval, !dbg !631
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !634

if.else:                                          ; preds = %entry
  %39 = load i64, i64* %m.addr, align 8, !dbg !635, !tbaa !135
  %and20 = and i64 %39, 17179869184, !dbg !637
  %tobool21 = icmp ne i64 %and20, 0, !dbg !637
  br i1 %tobool21, label %if.then.22, label %if.else.67, !dbg !638

if.then.22:                                       ; preds = %if.else
  %40 = load i64, i64* %hi, align 8, !dbg !639, !tbaa !135
  store i64 %40, i64* %y, align 8, !dbg !641, !tbaa !135
  store i64 %40, i64* %x, align 8, !dbg !642, !tbaa !135
  %41 = load i64, i64* %hi, align 8, !dbg !643, !tbaa !135
  %shr23 = lshr i64 %41, 30, !dbg !643
  store i64 %shr23, i64* %hi, align 8, !dbg !643, !tbaa !135
  %42 = load i64, i64* %lo, align 8, !dbg !644, !tbaa !135
  %43 = load i64, i64* %x, align 8, !dbg !645, !tbaa !135
  %sub24 = sub i64 %42, %43, !dbg !646
  store i64 %sub24, i64* %x, align 8, !dbg !647, !tbaa !135
  %44 = load i64, i64* %x, align 8, !dbg !648, !tbaa !135
  %45 = load i64, i64* %lo, align 8, !dbg !650, !tbaa !135
  %cmp25 = icmp ugt i64 %44, %45, !dbg !651
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !652

if.then.26:                                       ; preds = %if.then.22
  %46 = load i64, i64* %hi, align 8, !dbg !653, !tbaa !135
  %dec27 = add i64 %46, -1, !dbg !653
  store i64 %dec27, i64* %hi, align 8, !dbg !653, !tbaa !135
  br label %if.end.28, !dbg !655

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %47 = load i64, i64* %y, align 8, !dbg !656, !tbaa !135
  %shl29 = shl i64 %47, 34, !dbg !656
  store i64 %shl29, i64* %y, align 8, !dbg !656, !tbaa !135
  %48 = load i64, i64* %y, align 8, !dbg !657, !tbaa !135
  %49 = load i64, i64* %x, align 8, !dbg !658, !tbaa !135
  %add30 = add i64 %48, %49, !dbg !659
  store i64 %add30, i64* %lo, align 8, !dbg !660, !tbaa !135
  %50 = load i64, i64* %lo, align 8, !dbg !661, !tbaa !135
  %51 = load i64, i64* %y, align 8, !dbg !663, !tbaa !135
  %cmp31 = icmp ult i64 %50, %51, !dbg !664
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !665

if.then.32:                                       ; preds = %if.end.28
  %52 = load i64, i64* %hi, align 8, !dbg !666, !tbaa !135
  %inc33 = add i64 %52, 1, !dbg !666
  store i64 %inc33, i64* %hi, align 8, !dbg !666, !tbaa !135
  br label %if.end.34, !dbg !668

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %53 = load i64, i64* %hi, align 8, !dbg !669, !tbaa !135
  store i64 %53, i64* %y, align 8, !dbg !670, !tbaa !135
  store i64 %53, i64* %x, align 8, !dbg !671, !tbaa !135
  %54 = load i64, i64* %hi, align 8, !dbg !672, !tbaa !135
  %shr35 = lshr i64 %54, 30, !dbg !672
  store i64 %shr35, i64* %hi, align 8, !dbg !672, !tbaa !135
  %55 = load i64, i64* %lo, align 8, !dbg !673, !tbaa !135
  %56 = load i64, i64* %x, align 8, !dbg !674, !tbaa !135
  %sub36 = sub i64 %55, %56, !dbg !675
  store i64 %sub36, i64* %x, align 8, !dbg !676, !tbaa !135
  %57 = load i64, i64* %x, align 8, !dbg !677, !tbaa !135
  %58 = load i64, i64* %lo, align 8, !dbg !679, !tbaa !135
  %cmp37 = icmp ugt i64 %57, %58, !dbg !680
  br i1 %cmp37, label %if.then.38, label %if.end.40, !dbg !681

if.then.38:                                       ; preds = %if.end.34
  %59 = load i64, i64* %hi, align 8, !dbg !682, !tbaa !135
  %dec39 = add i64 %59, -1, !dbg !682
  store i64 %dec39, i64* %hi, align 8, !dbg !682, !tbaa !135
  br label %if.end.40, !dbg !684

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %60 = load i64, i64* %y, align 8, !dbg !685, !tbaa !135
  %shl41 = shl i64 %60, 34, !dbg !685
  store i64 %shl41, i64* %y, align 8, !dbg !685, !tbaa !135
  %61 = load i64, i64* %y, align 8, !dbg !686, !tbaa !135
  %62 = load i64, i64* %x, align 8, !dbg !687, !tbaa !135
  %add42 = add i64 %61, %62, !dbg !688
  store i64 %add42, i64* %lo, align 8, !dbg !689, !tbaa !135
  %63 = load i64, i64* %lo, align 8, !dbg !690, !tbaa !135
  %64 = load i64, i64* %y, align 8, !dbg !692, !tbaa !135
  %cmp43 = icmp ult i64 %63, %64, !dbg !693
  br i1 %cmp43, label %if.then.44, label %if.end.46, !dbg !694

if.then.44:                                       ; preds = %if.end.40
  %65 = load i64, i64* %hi, align 8, !dbg !695, !tbaa !135
  %inc45 = add i64 %65, 1, !dbg !695
  store i64 %inc45, i64* %hi, align 8, !dbg !695, !tbaa !135
  br label %if.end.46, !dbg !697

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %66 = load i64, i64* %hi, align 8, !dbg !698, !tbaa !135
  store i64 %66, i64* %y, align 8, !dbg !699, !tbaa !135
  store i64 %66, i64* %x, align 8, !dbg !700, !tbaa !135
  %67 = load i64, i64* %hi, align 8, !dbg !701, !tbaa !135
  %shr47 = lshr i64 %67, 30, !dbg !701
  store i64 %shr47, i64* %hi, align 8, !dbg !701, !tbaa !135
  %68 = load i64, i64* %lo, align 8, !dbg !702, !tbaa !135
  %69 = load i64, i64* %x, align 8, !dbg !703, !tbaa !135
  %sub48 = sub i64 %68, %69, !dbg !704
  store i64 %sub48, i64* %x, align 8, !dbg !705, !tbaa !135
  %70 = load i64, i64* %x, align 8, !dbg !706, !tbaa !135
  %71 = load i64, i64* %lo, align 8, !dbg !708, !tbaa !135
  %cmp49 = icmp ugt i64 %70, %71, !dbg !709
  br i1 %cmp49, label %if.then.50, label %if.end.52, !dbg !710

if.then.50:                                       ; preds = %if.end.46
  %72 = load i64, i64* %hi, align 8, !dbg !711, !tbaa !135
  %dec51 = add i64 %72, -1, !dbg !711
  store i64 %dec51, i64* %hi, align 8, !dbg !711, !tbaa !135
  br label %if.end.52, !dbg !713

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %73 = load i64, i64* %y, align 8, !dbg !714, !tbaa !135
  %shl53 = shl i64 %73, 34, !dbg !714
  store i64 %shl53, i64* %y, align 8, !dbg !714, !tbaa !135
  %74 = load i64, i64* %y, align 8, !dbg !715, !tbaa !135
  %75 = load i64, i64* %x, align 8, !dbg !716, !tbaa !135
  %add54 = add i64 %74, %75, !dbg !717
  store i64 %add54, i64* %lo, align 8, !dbg !718, !tbaa !135
  %76 = load i64, i64* %lo, align 8, !dbg !719, !tbaa !135
  %77 = load i64, i64* %y, align 8, !dbg !721, !tbaa !135
  %cmp55 = icmp ult i64 %76, %77, !dbg !722
  br i1 %cmp55, label %if.then.56, label %if.end.58, !dbg !723

if.then.56:                                       ; preds = %if.end.52
  %78 = load i64, i64* %hi, align 8, !dbg !724, !tbaa !135
  %inc57 = add i64 %78, 1, !dbg !724
  store i64 %inc57, i64* %hi, align 8, !dbg !724, !tbaa !135
  br label %if.end.58, !dbg !726

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %79 = load i64, i64* %hi, align 8, !dbg !727, !tbaa !135
  %tobool59 = icmp ne i64 %79, 0, !dbg !727
  br i1 %tobool59, label %cond.true.62, label %lor.lhs.false.60, !dbg !728

lor.lhs.false.60:                                 ; preds = %if.end.58
  %80 = load i64, i64* %lo, align 8, !dbg !729, !tbaa !135
  %81 = load i64, i64* %m.addr, align 8, !dbg !731, !tbaa !135
  %cmp61 = icmp uge i64 %80, %81, !dbg !732
  br i1 %cmp61, label %cond.true.62, label %cond.false.64, !dbg !727

cond.true.62:                                     ; preds = %lor.lhs.false.60, %if.end.58
  %82 = load i64, i64* %lo, align 8, !dbg !733, !tbaa !135
  %83 = load i64, i64* %m.addr, align 8, !dbg !736, !tbaa !135
  %sub63 = sub i64 %82, %83, !dbg !737
  br label %cond.end.65, !dbg !727

cond.false.64:                                    ; preds = %lor.lhs.false.60
  %84 = load i64, i64* %lo, align 8, !dbg !738, !tbaa !135
  br label %cond.end.65, !dbg !727

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i64 [ %sub63, %cond.true.62 ], [ %84, %cond.false.64 ], !dbg !727
  store i64 %cond66, i64* %retval, !dbg !740
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !743

if.else.67:                                       ; preds = %if.else
  %85 = load i64, i64* %hi, align 8, !dbg !744, !tbaa !135
  store i64 %85, i64* %y, align 8, !dbg !746, !tbaa !135
  store i64 %85, i64* %x, align 8, !dbg !747, !tbaa !135
  %86 = load i64, i64* %hi, align 8, !dbg !748, !tbaa !135
  %shr68 = lshr i64 %86, 24, !dbg !748
  store i64 %shr68, i64* %hi, align 8, !dbg !748, !tbaa !135
  %87 = load i64, i64* %lo, align 8, !dbg !749, !tbaa !135
  %88 = load i64, i64* %x, align 8, !dbg !750, !tbaa !135
  %sub69 = sub i64 %87, %88, !dbg !751
  store i64 %sub69, i64* %x, align 8, !dbg !752, !tbaa !135
  %89 = load i64, i64* %x, align 8, !dbg !753, !tbaa !135
  %90 = load i64, i64* %lo, align 8, !dbg !755, !tbaa !135
  %cmp70 = icmp ugt i64 %89, %90, !dbg !756
  br i1 %cmp70, label %if.then.71, label %if.end.73, !dbg !757

if.then.71:                                       ; preds = %if.else.67
  %91 = load i64, i64* %hi, align 8, !dbg !758, !tbaa !135
  %dec72 = add i64 %91, -1, !dbg !758
  store i64 %dec72, i64* %hi, align 8, !dbg !758, !tbaa !135
  br label %if.end.73, !dbg !760

if.end.73:                                        ; preds = %if.then.71, %if.else.67
  %92 = load i64, i64* %y, align 8, !dbg !761, !tbaa !135
  %shl74 = shl i64 %92, 40, !dbg !761
  store i64 %shl74, i64* %y, align 8, !dbg !761, !tbaa !135
  %93 = load i64, i64* %y, align 8, !dbg !762, !tbaa !135
  %94 = load i64, i64* %x, align 8, !dbg !763, !tbaa !135
  %add75 = add i64 %93, %94, !dbg !764
  store i64 %add75, i64* %lo, align 8, !dbg !765, !tbaa !135
  %95 = load i64, i64* %lo, align 8, !dbg !766, !tbaa !135
  %96 = load i64, i64* %y, align 8, !dbg !768, !tbaa !135
  %cmp76 = icmp ult i64 %95, %96, !dbg !769
  br i1 %cmp76, label %if.then.77, label %if.end.79, !dbg !770

if.then.77:                                       ; preds = %if.end.73
  %97 = load i64, i64* %hi, align 8, !dbg !771, !tbaa !135
  %inc78 = add i64 %97, 1, !dbg !771
  store i64 %inc78, i64* %hi, align 8, !dbg !771, !tbaa !135
  br label %if.end.79, !dbg !773

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %98 = load i64, i64* %hi, align 8, !dbg !774, !tbaa !135
  store i64 %98, i64* %y, align 8, !dbg !775, !tbaa !135
  store i64 %98, i64* %x, align 8, !dbg !776, !tbaa !135
  %99 = load i64, i64* %hi, align 8, !dbg !777, !tbaa !135
  %shr80 = lshr i64 %99, 24, !dbg !777
  store i64 %shr80, i64* %hi, align 8, !dbg !777, !tbaa !135
  %100 = load i64, i64* %lo, align 8, !dbg !778, !tbaa !135
  %101 = load i64, i64* %x, align 8, !dbg !779, !tbaa !135
  %sub81 = sub i64 %100, %101, !dbg !780
  store i64 %sub81, i64* %x, align 8, !dbg !781, !tbaa !135
  %102 = load i64, i64* %x, align 8, !dbg !782, !tbaa !135
  %103 = load i64, i64* %lo, align 8, !dbg !784, !tbaa !135
  %cmp82 = icmp ugt i64 %102, %103, !dbg !785
  br i1 %cmp82, label %if.then.83, label %if.end.85, !dbg !786

if.then.83:                                       ; preds = %if.end.79
  %104 = load i64, i64* %hi, align 8, !dbg !787, !tbaa !135
  %dec84 = add i64 %104, -1, !dbg !787
  store i64 %dec84, i64* %hi, align 8, !dbg !787, !tbaa !135
  br label %if.end.85, !dbg !789

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %105 = load i64, i64* %y, align 8, !dbg !790, !tbaa !135
  %shl86 = shl i64 %105, 40, !dbg !790
  store i64 %shl86, i64* %y, align 8, !dbg !790, !tbaa !135
  %106 = load i64, i64* %y, align 8, !dbg !791, !tbaa !135
  %107 = load i64, i64* %x, align 8, !dbg !792, !tbaa !135
  %add87 = add i64 %106, %107, !dbg !793
  store i64 %add87, i64* %lo, align 8, !dbg !794, !tbaa !135
  %108 = load i64, i64* %lo, align 8, !dbg !795, !tbaa !135
  %109 = load i64, i64* %y, align 8, !dbg !797, !tbaa !135
  %cmp88 = icmp ult i64 %108, %109, !dbg !798
  br i1 %cmp88, label %if.then.89, label %if.end.91, !dbg !799

if.then.89:                                       ; preds = %if.end.85
  %110 = load i64, i64* %hi, align 8, !dbg !800, !tbaa !135
  %inc90 = add i64 %110, 1, !dbg !800
  store i64 %inc90, i64* %hi, align 8, !dbg !800, !tbaa !135
  br label %if.end.91, !dbg !802

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %111 = load i64, i64* %hi, align 8, !dbg !803, !tbaa !135
  store i64 %111, i64* %y, align 8, !dbg !804, !tbaa !135
  store i64 %111, i64* %x, align 8, !dbg !805, !tbaa !135
  %112 = load i64, i64* %hi, align 8, !dbg !806, !tbaa !135
  %shr92 = lshr i64 %112, 24, !dbg !806
  store i64 %shr92, i64* %hi, align 8, !dbg !806, !tbaa !135
  %113 = load i64, i64* %lo, align 8, !dbg !807, !tbaa !135
  %114 = load i64, i64* %x, align 8, !dbg !808, !tbaa !135
  %sub93 = sub i64 %113, %114, !dbg !809
  store i64 %sub93, i64* %x, align 8, !dbg !810, !tbaa !135
  %115 = load i64, i64* %x, align 8, !dbg !811, !tbaa !135
  %116 = load i64, i64* %lo, align 8, !dbg !813, !tbaa !135
  %cmp94 = icmp ugt i64 %115, %116, !dbg !814
  br i1 %cmp94, label %if.then.95, label %if.end.97, !dbg !815

if.then.95:                                       ; preds = %if.end.91
  %117 = load i64, i64* %hi, align 8, !dbg !816, !tbaa !135
  %dec96 = add i64 %117, -1, !dbg !816
  store i64 %dec96, i64* %hi, align 8, !dbg !816, !tbaa !135
  br label %if.end.97, !dbg !818

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %118 = load i64, i64* %y, align 8, !dbg !819, !tbaa !135
  %shl98 = shl i64 %118, 40, !dbg !819
  store i64 %shl98, i64* %y, align 8, !dbg !819, !tbaa !135
  %119 = load i64, i64* %y, align 8, !dbg !820, !tbaa !135
  %120 = load i64, i64* %x, align 8, !dbg !821, !tbaa !135
  %add99 = add i64 %119, %120, !dbg !822
  store i64 %add99, i64* %lo, align 8, !dbg !823, !tbaa !135
  %121 = load i64, i64* %lo, align 8, !dbg !824, !tbaa !135
  %122 = load i64, i64* %y, align 8, !dbg !826, !tbaa !135
  %cmp100 = icmp ult i64 %121, %122, !dbg !827
  br i1 %cmp100, label %if.then.101, label %if.end.103, !dbg !828

if.then.101:                                      ; preds = %if.end.97
  %123 = load i64, i64* %hi, align 8, !dbg !829, !tbaa !135
  %inc102 = add i64 %123, 1, !dbg !829
  store i64 %inc102, i64* %hi, align 8, !dbg !829, !tbaa !135
  br label %if.end.103, !dbg !831

if.end.103:                                       ; preds = %if.then.101, %if.end.97
  %124 = load i64, i64* %hi, align 8, !dbg !832, !tbaa !135
  %tobool104 = icmp ne i64 %124, 0, !dbg !832
  br i1 %tobool104, label %cond.true.107, label %lor.lhs.false.105, !dbg !833

lor.lhs.false.105:                                ; preds = %if.end.103
  %125 = load i64, i64* %lo, align 8, !dbg !834, !tbaa !135
  %126 = load i64, i64* %m.addr, align 8, !dbg !836, !tbaa !135
  %cmp106 = icmp uge i64 %125, %126, !dbg !837
  br i1 %cmp106, label %cond.true.107, label %cond.false.109, !dbg !832

cond.true.107:                                    ; preds = %lor.lhs.false.105, %if.end.103
  %127 = load i64, i64* %lo, align 8, !dbg !838, !tbaa !135
  %128 = load i64, i64* %m.addr, align 8, !dbg !841, !tbaa !135
  %sub108 = sub i64 %127, %128, !dbg !842
  br label %cond.end.110, !dbg !832

cond.false.109:                                   ; preds = %lor.lhs.false.105
  %129 = load i64, i64* %lo, align 8, !dbg !843, !tbaa !135
  br label %cond.end.110, !dbg !832

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %sub108, %cond.true.107 ], [ %129, %cond.false.109 ], !dbg !832
  store i64 %cond111, i64* %retval, !dbg !845
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !848

cleanup:                                          ; preds = %cond.end.110, %cond.end.65, %cond.end
  %130 = bitcast i64* %y to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !849
  %131 = bitcast i64* %x to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !849
  %132 = bitcast i64* %lo to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !849
  %133 = bitcast i64* %hi to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !849
  %134 = load i64, i64* %retval, !dbg !849
  ret i64 %134, !dbg !849
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
  store i64* %hi, i64** %hi.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %hi.addr, metadata !97, metadata !132), !dbg !850
  store i64* %lo, i64** %lo.addr, align 8, !tbaa !128
  call void @llvm.dbg.declare(metadata i64** %lo.addr, metadata !98, metadata !132), !dbg !851
  store i64 %a, i64* %a.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !99, metadata !132), !dbg !852
  store i64 %b, i64* %b.addr, align 8, !tbaa !135
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !100, metadata !132), !dbg !853
  %0 = bitcast i64* %h to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !854
  call void @llvm.dbg.declare(metadata i64* %h, metadata !101, metadata !132), !dbg !855
  %1 = bitcast i64* %l to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !854
  call void @llvm.dbg.declare(metadata i64* %l, metadata !102, metadata !132), !dbg !856
  %2 = load i64, i64* %a.addr, align 8, !dbg !857, !tbaa !135
  %3 = load i64, i64* %b.addr, align 8, !dbg !858, !tbaa !135
  %4 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %3) #5, !dbg !859, !srcloc !860
  %asmresult = extractvalue { i64, i64 } %4, 0, !dbg !859
  %asmresult1 = extractvalue { i64, i64 } %4, 1, !dbg !859
  store i64 %asmresult, i64* %h, align 8, !dbg !859, !tbaa !135
  store i64 %asmresult1, i64* %l, align 8, !dbg !859, !tbaa !135
  %5 = load i64, i64* %h, align 8, !dbg !861, !tbaa !135
  %6 = load i64*, i64** %hi.addr, align 8, !dbg !862, !tbaa !128
  store i64 %5, i64* %6, align 8, !dbg !863, !tbaa !135
  %7 = load i64, i64* %l, align 8, !dbg !864, !tbaa !135
  %8 = load i64*, i64** %lo.addr, align 8, !dbg !865, !tbaa !128
  store i64 %7, i64* %8, align 8, !dbg !866, !tbaa !135
  %9 = bitcast i64* %l to i8*, !dbg !867
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !867
  %10 = bitcast i64* %h to i8*, !dbg !867
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !867
  ret void, !dbg !867
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!124, !125, !126}
!llvm.ident = !{!127}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "convolute.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !45, !67, !74, !83, !92, !103, !109, !118}
!4 = !DISubprogram(name: "fnt_convolute", scope: !5, file: !5, line: 47, type: !6, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64*, i64, i32)* @fnt_convolute, variables: !18)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/convolute.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !9, !15, !8}
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
!18 = !{!19, !20, !21, !22, !23, !27, !28, !29, !30, !31, !35, !36, !37, !38, !42, !43, !44}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !4, file: !5, line: 47, type: !9)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2", arg: 2, scope: !4, file: !5, line: 47, type: !9)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !4, file: !5, line: 47, type: !15)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 4, scope: !4, file: !5, line: 47, type: !8)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnt", scope: !4, file: !5, line: 49, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!8, !9, !15, !8}
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inv_fnt", scope: !4, file: !5, line: 50, type: !24)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_inv", scope: !4, file: !5, line: 55, type: !10)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !4, file: !5, line: 55, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !5, line: 56, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !32, file: !5, line: 84, type: !10)
!32 = distinct !DILexicalBlock(scope: !33, file: !5, line: 83, column: 34)
!33 = distinct !DILexicalBlock(scope: !34, file: !5, line: 83, column: 5)
!34 = distinct !DILexicalBlock(scope: !4, file: !5, line: 83, column: 5)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y0", scope: !32, file: !5, line: 85, type: !10)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !32, file: !5, line: 86, type: !10)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y1", scope: !32, file: !5, line: 87, type: !10)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !39, file: !5, line: 97, type: !10)
!39 = distinct !DILexicalBlock(scope: !40, file: !5, line: 96, column: 34)
!40 = distinct !DILexicalBlock(scope: !41, file: !5, line: 96, column: 5)
!41 = distinct !DILexicalBlock(scope: !4, file: !5, line: 96, column: 5)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !39, file: !5, line: 98, type: !10)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !39, file: !5, line: 99, type: !10)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x3", scope: !39, file: !5, line: 100, type: !10)
!45 = !DISubprogram(name: "fnt_autoconvolute", scope: !5, file: !5, line: 114, type: !25, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @fnt_autoconvolute, variables: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !59, !60, !64, !65, !66}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !45, file: !5, line: 114, type: !9)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !45, file: !5, line: 114, type: !15)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !45, file: !5, line: 114, type: !8)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnt", scope: !45, file: !5, line: 116, type: !24)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inv_fnt", scope: !45, file: !5, line: 117, type: !24)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_inv", scope: !45, file: !5, line: 122, type: !10)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "umod", scope: !45, file: !5, line: 122, type: !10)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !45, file: !5, line: 123, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !56, file: !5, line: 148, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !5, line: 147, column: 34)
!57 = distinct !DILexicalBlock(scope: !58, file: !5, line: 147, column: 5)
!58 = distinct !DILexicalBlock(scope: !45, file: !5, line: 147, column: 5)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !56, file: !5, line: 149, type: !10)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !61, file: !5, line: 159, type: !10)
!61 = distinct !DILexicalBlock(scope: !62, file: !5, line: 158, column: 34)
!62 = distinct !DILexicalBlock(scope: !63, file: !5, line: 158, column: 5)
!63 = distinct !DILexicalBlock(scope: !45, file: !5, line: 158, column: 5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !61, file: !5, line: 160, type: !10)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !61, file: !5, line: 161, type: !10)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x3", scope: !61, file: !5, line: 162, type: !10)
!67 = !DISubprogram(name: "std_setmodulus", scope: !68, file: !68, line: 66, type: !69, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i64*)* @std_setmodulus, variables: !71)
!68 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/numbertheory.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !8, !9}
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 1, scope: !67, file: !68, line: 66, type: !8)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 2, scope: !67, file: !68, line: 66, type: !9)
!74 = !DISubprogram(name: "x64_powmod", scope: !75, file: !75, line: 276, type: !76, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_powmod, variables: !78)
!75 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/umodarith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!76 = !DISubroutineType(types: !77)
!77 = !{!10, !10, !10, !10}
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 1, scope: !74, file: !75, line: 276, type: !10)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exp", arg: 2, scope: !74, file: !75, line: 276, type: !10)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "umod", arg: 3, scope: !74, file: !75, line: 276, type: !10)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !74, file: !75, line: 278, type: !10)
!83 = !DISubprogram(name: "x64_mulmod", scope: !75, file: !75, line: 151, type: !76, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64)* @x64_mulmod, variables: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !83, file: !75, line: 151, type: !10)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !83, file: !75, line: 151, type: !10)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 3, scope: !83, file: !75, line: 151, type: !10)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !83, file: !75, line: 153, type: !10)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !83, file: !75, line: 153, type: !10)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !83, file: !75, line: 153, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !83, file: !75, line: 153, type: !10)
!92 = !DISubprogram(name: "_mpd_mul_words", scope: !93, file: !93, line: 206, type: !94, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @_mpd_mul_words, variables: !96)
!93 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!94 = !DISubroutineType(types: !95)
!95 = !{null, !9, !9, !10, !10}
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 1, scope: !92, file: !93, line: 206, type: !9)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 2, scope: !92, file: !93, line: 206, type: !9)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 3, scope: !92, file: !93, line: 206, type: !10)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !92, file: !93, line: 206, type: !10)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !92, file: !93, line: 208, type: !10)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !92, file: !93, line: 208, type: !10)
!103 = !DISubprogram(name: "ispower2", scope: !104, file: !104, line: 39, type: !105, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64)* @ispower2, variables: !107)
!104 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/bits.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !15}
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !103, file: !104, line: 39, type: !15)
!109 = !DISubprogram(name: "x64_mulmod2", scope: !75, file: !75, line: 268, type: !110, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64, i64*, i64, i64)* @x64_mulmod2, variables: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !9, !10, !9, !10, !10}
!112 = !{!113, !114, !115, !116, !117}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 1, scope: !109, file: !75, line: 268, type: !9)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b0", arg: 2, scope: !109, file: !75, line: 268, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 3, scope: !109, file: !75, line: 268, type: !9)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b1", arg: 4, scope: !109, file: !75, line: 268, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 5, scope: !109, file: !75, line: 269, type: !10)
!118 = !DISubprogram(name: "x64_mulmod2c", scope: !75, file: !75, line: 261, type: !94, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @x64_mulmod2c, variables: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !118, file: !75, line: 261, type: !9)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !118, file: !75, line: 261, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !118, file: !75, line: 261, type: !10)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 4, scope: !118, file: !75, line: 261, type: !10)
!124 = !{i32 2, !"Dwarf Version", i32 4}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"PIC Level", i32 2}
!127 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!128 = !{!129, !129, i64 0}
!129 = !{!"any pointer", !130, i64 0}
!130 = !{!"omnipotent char", !131, i64 0}
!131 = !{!"Simple C/C++ TBAA"}
!132 = !DIExpression()
!133 = !DILocation(line: 47, column: 27, scope: !4)
!134 = !DILocation(line: 47, column: 43, scope: !4)
!135 = !{!136, !136, i64 0}
!136 = !{!"long", !130, i64 0}
!137 = !DILocation(line: 47, column: 58, scope: !4)
!138 = !{!139, !139, i64 0}
!139 = !{!"int", !130, i64 0}
!140 = !DILocation(line: 47, column: 65, scope: !4)
!141 = !DILocation(line: 49, column: 5, scope: !4)
!142 = !DILocation(line: 49, column: 11, scope: !4)
!143 = !DILocation(line: 50, column: 5, scope: !4)
!144 = !DILocation(line: 50, column: 11, scope: !4)
!145 = !DILocation(line: 55, column: 5, scope: !4)
!146 = !DILocation(line: 55, column: 16, scope: !4)
!147 = !DILocation(line: 55, column: 23, scope: !4)
!148 = !DILocation(line: 56, column: 5, scope: !4)
!149 = !DILocation(line: 56, column: 16, scope: !4)
!150 = !DILocation(line: 59, column: 20, scope: !4)
!151 = !DILocation(line: 59, column: 5, scope: !4)
!152 = !DILocation(line: 60, column: 24, scope: !4)
!153 = !DILocation(line: 60, column: 28, scope: !4)
!154 = !DILocation(line: 60, column: 32, scope: !4)
!155 = !DILocation(line: 60, column: 37, scope: !4)
!156 = !DILocation(line: 60, column: 13, scope: !4)
!157 = !DILocation(line: 60, column: 11, scope: !4)
!158 = !DILocation(line: 62, column: 18, scope: !159)
!159 = distinct !DILexicalBlock(scope: !4, file: !5, line: 62, column: 9)
!160 = !DILocation(line: 62, column: 9, scope: !159)
!161 = !DILocation(line: 62, column: 9, scope: !4)
!162 = !DILocation(line: 63, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !5, line: 63, column: 13)
!164 = distinct !DILexicalBlock(scope: !159, file: !5, line: 62, column: 22)
!165 = !DILocation(line: 63, column: 15, scope: !163)
!166 = !DILocation(line: 63, column: 13, scope: !164)
!167 = !DILocation(line: 64, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !5, line: 63, column: 23)
!169 = !DILocation(line: 65, column: 21, scope: !168)
!170 = !DILocation(line: 66, column: 9, scope: !168)
!171 = !DILocation(line: 68, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !5, line: 67, column: 14)
!173 = !DILocation(line: 69, column: 21, scope: !172)
!174 = !DILocation(line: 71, column: 5, scope: !164)
!175 = !DILocation(line: 73, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !159, file: !5, line: 72, column: 10)
!177 = !DILocation(line: 74, column: 17, scope: !176)
!178 = !DILocation(line: 77, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !4, file: !5, line: 77, column: 9)
!180 = !DILocation(line: 77, column: 14, scope: !179)
!181 = !DILocation(line: 77, column: 18, scope: !179)
!182 = !DILocation(line: 77, column: 21, scope: !179)
!183 = !DILocation(line: 77, column: 9, scope: !4)
!184 = !DILocation(line: 78, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !5, line: 77, column: 30)
!186 = !DILocation(line: 80, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !4, file: !5, line: 80, column: 9)
!188 = !DILocation(line: 80, column: 14, scope: !187)
!189 = !DILocation(line: 80, column: 18, scope: !187)
!190 = !DILocation(line: 80, column: 21, scope: !187)
!191 = !DILocation(line: 80, column: 9, scope: !4)
!192 = !DILocation(line: 81, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !5, line: 80, column: 30)
!194 = !DILocation(line: 83, column: 12, scope: !34)
!195 = !DILocation(line: 83, column: 10, scope: !34)
!196 = !DILocation(line: 83, column: 17, scope: !197)
!197 = !DILexicalBlockFile(scope: !198, file: !5, discriminator: 2)
!198 = !DILexicalBlockFile(scope: !33, file: !5, discriminator: 1)
!199 = !DILocation(line: 83, column: 21, scope: !33)
!200 = !DILocation(line: 83, column: 22, scope: !33)
!201 = !DILocation(line: 83, column: 19, scope: !33)
!202 = !DILocation(line: 83, column: 5, scope: !34)
!203 = !DILocation(line: 84, column: 9, scope: !32)
!204 = !DILocation(line: 84, column: 20, scope: !32)
!205 = !DILocation(line: 84, column: 28, scope: !32)
!206 = !DILocation(line: 84, column: 25, scope: !32)
!207 = !DILocation(line: 85, column: 9, scope: !32)
!208 = !DILocation(line: 85, column: 20, scope: !32)
!209 = !DILocation(line: 85, column: 28, scope: !32)
!210 = !DILocation(line: 85, column: 25, scope: !32)
!211 = !DILocation(line: 86, column: 9, scope: !32)
!212 = !DILocation(line: 86, column: 20, scope: !32)
!213 = !DILocation(line: 86, column: 28, scope: !32)
!214 = !DILocation(line: 86, column: 29, scope: !32)
!215 = !DILocation(line: 86, column: 25, scope: !32)
!216 = !DILocation(line: 87, column: 9, scope: !32)
!217 = !DILocation(line: 87, column: 20, scope: !32)
!218 = !DILocation(line: 87, column: 28, scope: !32)
!219 = !DILocation(line: 87, column: 29, scope: !32)
!220 = !DILocation(line: 87, column: 25, scope: !32)
!221 = !DILocation(line: 88, column: 26, scope: !32)
!222 = !DILocation(line: 88, column: 35, scope: !32)
!223 = !DILocation(line: 88, column: 39, scope: !32)
!224 = !DILocation(line: 88, column: 9, scope: !32)
!225 = !DILocation(line: 89, column: 17, scope: !32)
!226 = !DILocation(line: 89, column: 12, scope: !32)
!227 = !DILocation(line: 89, column: 9, scope: !32)
!228 = !DILocation(line: 89, column: 15, scope: !32)
!229 = !DILocation(line: 90, column: 19, scope: !32)
!230 = !DILocation(line: 90, column: 12, scope: !32)
!231 = !DILocation(line: 90, column: 13, scope: !32)
!232 = !DILocation(line: 90, column: 9, scope: !32)
!233 = !DILocation(line: 90, column: 17, scope: !32)
!234 = !DILocation(line: 91, column: 5, scope: !33)
!235 = !DILocation(line: 91, column: 5, scope: !32)
!236 = !DILocation(line: 83, column: 28, scope: !33)
!237 = !DILocation(line: 83, column: 5, scope: !33)
!238 = !DILocation(line: 93, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !4, file: !5, line: 93, column: 9)
!240 = !DILocation(line: 93, column: 18, scope: !239)
!241 = !DILocation(line: 93, column: 22, scope: !239)
!242 = !DILocation(line: 93, column: 25, scope: !239)
!243 = !DILocation(line: 93, column: 9, scope: !4)
!244 = !DILocation(line: 94, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !5, line: 93, column: 34)
!246 = !DILocation(line: 96, column: 12, scope: !41)
!247 = !DILocation(line: 96, column: 10, scope: !41)
!248 = !DILocation(line: 96, column: 17, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !5, discriminator: 2)
!250 = !DILexicalBlockFile(scope: !40, file: !5, discriminator: 1)
!251 = !DILocation(line: 96, column: 21, scope: !40)
!252 = !DILocation(line: 96, column: 22, scope: !40)
!253 = !DILocation(line: 96, column: 19, scope: !40)
!254 = !DILocation(line: 96, column: 5, scope: !41)
!255 = !DILocation(line: 97, column: 9, scope: !39)
!256 = !DILocation(line: 97, column: 20, scope: !39)
!257 = !DILocation(line: 97, column: 28, scope: !39)
!258 = !DILocation(line: 97, column: 25, scope: !39)
!259 = !DILocation(line: 98, column: 9, scope: !39)
!260 = !DILocation(line: 98, column: 20, scope: !39)
!261 = !DILocation(line: 98, column: 28, scope: !39)
!262 = !DILocation(line: 98, column: 29, scope: !39)
!263 = !DILocation(line: 98, column: 25, scope: !39)
!264 = !DILocation(line: 99, column: 9, scope: !39)
!265 = !DILocation(line: 99, column: 20, scope: !39)
!266 = !DILocation(line: 99, column: 28, scope: !39)
!267 = !DILocation(line: 99, column: 29, scope: !39)
!268 = !DILocation(line: 99, column: 25, scope: !39)
!269 = !DILocation(line: 100, column: 9, scope: !39)
!270 = !DILocation(line: 100, column: 20, scope: !39)
!271 = !DILocation(line: 100, column: 28, scope: !39)
!272 = !DILocation(line: 100, column: 29, scope: !39)
!273 = !DILocation(line: 100, column: 25, scope: !39)
!274 = !DILocation(line: 101, column: 32, scope: !39)
!275 = !DILocation(line: 101, column: 39, scope: !39)
!276 = !DILocation(line: 101, column: 9, scope: !39)
!277 = !DILocation(line: 102, column: 32, scope: !39)
!278 = !DILocation(line: 102, column: 39, scope: !39)
!279 = !DILocation(line: 102, column: 9, scope: !39)
!280 = !DILocation(line: 103, column: 17, scope: !39)
!281 = !DILocation(line: 103, column: 12, scope: !39)
!282 = !DILocation(line: 103, column: 9, scope: !39)
!283 = !DILocation(line: 103, column: 15, scope: !39)
!284 = !DILocation(line: 104, column: 19, scope: !39)
!285 = !DILocation(line: 104, column: 12, scope: !39)
!286 = !DILocation(line: 104, column: 13, scope: !39)
!287 = !DILocation(line: 104, column: 9, scope: !39)
!288 = !DILocation(line: 104, column: 17, scope: !39)
!289 = !DILocation(line: 105, column: 19, scope: !39)
!290 = !DILocation(line: 105, column: 12, scope: !39)
!291 = !DILocation(line: 105, column: 13, scope: !39)
!292 = !DILocation(line: 105, column: 9, scope: !39)
!293 = !DILocation(line: 105, column: 17, scope: !39)
!294 = !DILocation(line: 106, column: 19, scope: !39)
!295 = !DILocation(line: 106, column: 12, scope: !39)
!296 = !DILocation(line: 106, column: 13, scope: !39)
!297 = !DILocation(line: 106, column: 9, scope: !39)
!298 = !DILocation(line: 106, column: 17, scope: !39)
!299 = !DILocation(line: 107, column: 5, scope: !40)
!300 = !DILocation(line: 107, column: 5, scope: !39)
!301 = !DILocation(line: 96, column: 28, scope: !40)
!302 = !DILocation(line: 96, column: 5, scope: !40)
!303 = !DILocation(line: 109, column: 5, scope: !4)
!304 = !DILocation(line: 110, column: 1, scope: !4)
!305 = !DILocation(line: 66, column: 20, scope: !67)
!306 = !DILocation(line: 66, column: 40, scope: !67)
!307 = !DILocation(line: 68, column: 24, scope: !67)
!308 = !DILocation(line: 68, column: 13, scope: !67)
!309 = !DILocation(line: 68, column: 6, scope: !67)
!310 = !DILocation(line: 68, column: 11, scope: !67)
!311 = !DILocation(line: 69, column: 1, scope: !67)
!312 = !DILocation(line: 276, column: 23, scope: !74)
!313 = !DILocation(line: 276, column: 40, scope: !74)
!314 = !DILocation(line: 276, column: 56, scope: !74)
!315 = !DILocation(line: 278, column: 5, scope: !74)
!316 = !DILocation(line: 278, column: 16, scope: !74)
!317 = !DILocation(line: 280, column: 5, scope: !74)
!318 = !DILocation(line: 280, column: 12, scope: !319)
!319 = !DILexicalBlockFile(scope: !320, file: !75, discriminator: 2)
!320 = !DILexicalBlockFile(scope: !74, file: !75, discriminator: 1)
!321 = !DILocation(line: 280, column: 16, scope: !74)
!322 = !DILocation(line: 281, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !75, line: 281, column: 13)
!324 = distinct !DILexicalBlock(scope: !74, file: !75, line: 280, column: 21)
!325 = !DILocation(line: 281, column: 17, scope: !323)
!326 = !DILocation(line: 281, column: 13, scope: !324)
!327 = !DILocation(line: 282, column: 28, scope: !323)
!328 = !DILocation(line: 282, column: 31, scope: !323)
!329 = !DILocation(line: 282, column: 37, scope: !323)
!330 = !DILocation(line: 282, column: 17, scope: !323)
!331 = !DILocation(line: 282, column: 15, scope: !323)
!332 = !DILocation(line: 282, column: 13, scope: !323)
!333 = !DILocation(line: 283, column: 27, scope: !324)
!334 = !DILocation(line: 283, column: 33, scope: !324)
!335 = !DILocation(line: 283, column: 39, scope: !324)
!336 = !DILocation(line: 283, column: 16, scope: !324)
!337 = !DILocation(line: 283, column: 14, scope: !324)
!338 = !DILocation(line: 284, column: 13, scope: !324)
!339 = !DILocation(line: 287, column: 12, scope: !74)
!340 = !DILocation(line: 288, column: 1, scope: !74)
!341 = !DILocation(line: 287, column: 5, scope: !74)
!342 = !DILocation(line: 39, column: 21, scope: !103)
!343 = !DILocation(line: 41, column: 12, scope: !103)
!344 = !DILocation(line: 41, column: 14, scope: !103)
!345 = !DILocation(line: 41, column: 19, scope: !103)
!346 = !DILocation(line: 41, column: 23, scope: !347)
!347 = !DILexicalBlockFile(scope: !103, file: !104, discriminator: 1)
!348 = !DILocation(line: 41, column: 28, scope: !103)
!349 = !DILocation(line: 41, column: 29, scope: !103)
!350 = !DILocation(line: 41, column: 25, scope: !103)
!351 = !DILocation(line: 41, column: 34, scope: !103)
!352 = !DILocation(line: 41, column: 19, scope: !353)
!353 = !DILexicalBlockFile(scope: !103, file: !104, discriminator: 2)
!354 = !DILocation(line: 41, column: 5, scope: !103)
!355 = !DILocation(line: 268, column: 25, scope: !109)
!356 = !DILocation(line: 268, column: 40, scope: !109)
!357 = !DILocation(line: 268, column: 56, scope: !109)
!358 = !DILocation(line: 268, column: 71, scope: !109)
!359 = !DILocation(line: 269, column: 24, scope: !109)
!360 = !DILocation(line: 271, column: 23, scope: !109)
!361 = !DILocation(line: 271, column: 22, scope: !109)
!362 = !DILocation(line: 271, column: 27, scope: !109)
!363 = !DILocation(line: 271, column: 31, scope: !109)
!364 = !DILocation(line: 271, column: 11, scope: !109)
!365 = !DILocation(line: 271, column: 6, scope: !109)
!366 = !DILocation(line: 271, column: 9, scope: !109)
!367 = !DILocation(line: 272, column: 23, scope: !109)
!368 = !DILocation(line: 272, column: 22, scope: !109)
!369 = !DILocation(line: 272, column: 27, scope: !109)
!370 = !DILocation(line: 272, column: 31, scope: !109)
!371 = !DILocation(line: 272, column: 11, scope: !109)
!372 = !DILocation(line: 272, column: 6, scope: !109)
!373 = !DILocation(line: 272, column: 9, scope: !109)
!374 = !DILocation(line: 273, column: 1, scope: !109)
!375 = !DILocation(line: 261, column: 26, scope: !118)
!376 = !DILocation(line: 261, column: 41, scope: !118)
!377 = !DILocation(line: 261, column: 55, scope: !118)
!378 = !DILocation(line: 261, column: 69, scope: !118)
!379 = !DILocation(line: 263, column: 22, scope: !118)
!380 = !DILocation(line: 263, column: 21, scope: !118)
!381 = !DILocation(line: 263, column: 25, scope: !118)
!382 = !DILocation(line: 263, column: 28, scope: !118)
!383 = !DILocation(line: 263, column: 10, scope: !118)
!384 = !DILocation(line: 263, column: 6, scope: !118)
!385 = !DILocation(line: 263, column: 8, scope: !118)
!386 = !DILocation(line: 264, column: 22, scope: !118)
!387 = !DILocation(line: 264, column: 21, scope: !118)
!388 = !DILocation(line: 264, column: 25, scope: !118)
!389 = !DILocation(line: 264, column: 28, scope: !118)
!390 = !DILocation(line: 264, column: 10, scope: !118)
!391 = !DILocation(line: 264, column: 6, scope: !118)
!392 = !DILocation(line: 264, column: 8, scope: !118)
!393 = !DILocation(line: 265, column: 1, scope: !118)
!394 = !DILocation(line: 114, column: 31, scope: !45)
!395 = !DILocation(line: 114, column: 46, scope: !45)
!396 = !DILocation(line: 114, column: 53, scope: !45)
!397 = !DILocation(line: 116, column: 5, scope: !45)
!398 = !DILocation(line: 116, column: 11, scope: !45)
!399 = !DILocation(line: 117, column: 5, scope: !45)
!400 = !DILocation(line: 117, column: 11, scope: !45)
!401 = !DILocation(line: 122, column: 5, scope: !45)
!402 = !DILocation(line: 122, column: 16, scope: !45)
!403 = !DILocation(line: 122, column: 23, scope: !45)
!404 = !DILocation(line: 123, column: 5, scope: !45)
!405 = !DILocation(line: 123, column: 16, scope: !45)
!406 = !DILocation(line: 126, column: 20, scope: !45)
!407 = !DILocation(line: 126, column: 5, scope: !45)
!408 = !DILocation(line: 127, column: 24, scope: !45)
!409 = !DILocation(line: 127, column: 28, scope: !45)
!410 = !DILocation(line: 127, column: 32, scope: !45)
!411 = !DILocation(line: 127, column: 37, scope: !45)
!412 = !DILocation(line: 127, column: 13, scope: !45)
!413 = !DILocation(line: 127, column: 11, scope: !45)
!414 = !DILocation(line: 129, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !45, file: !5, line: 129, column: 9)
!416 = !DILocation(line: 129, column: 9, scope: !415)
!417 = !DILocation(line: 129, column: 9, scope: !45)
!418 = !DILocation(line: 130, column: 13, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !5, line: 130, column: 13)
!420 = distinct !DILexicalBlock(scope: !415, file: !5, line: 129, column: 22)
!421 = !DILocation(line: 130, column: 15, scope: !419)
!422 = !DILocation(line: 130, column: 13, scope: !420)
!423 = !DILocation(line: 131, column: 17, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !5, line: 130, column: 23)
!425 = !DILocation(line: 132, column: 21, scope: !424)
!426 = !DILocation(line: 133, column: 9, scope: !424)
!427 = !DILocation(line: 135, column: 17, scope: !428)
!428 = distinct !DILexicalBlock(scope: !419, file: !5, line: 134, column: 14)
!429 = !DILocation(line: 136, column: 21, scope: !428)
!430 = !DILocation(line: 138, column: 5, scope: !420)
!431 = !DILocation(line: 140, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !415, file: !5, line: 139, column: 10)
!433 = !DILocation(line: 141, column: 17, scope: !432)
!434 = !DILocation(line: 144, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !45, file: !5, line: 144, column: 9)
!436 = !DILocation(line: 144, column: 14, scope: !435)
!437 = !DILocation(line: 144, column: 18, scope: !435)
!438 = !DILocation(line: 144, column: 21, scope: !435)
!439 = !DILocation(line: 144, column: 9, scope: !45)
!440 = !DILocation(line: 145, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !5, line: 144, column: 30)
!442 = !DILocation(line: 147, column: 12, scope: !58)
!443 = !DILocation(line: 147, column: 10, scope: !58)
!444 = !DILocation(line: 147, column: 17, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !5, discriminator: 2)
!446 = !DILexicalBlockFile(scope: !57, file: !5, discriminator: 1)
!447 = !DILocation(line: 147, column: 21, scope: !57)
!448 = !DILocation(line: 147, column: 22, scope: !57)
!449 = !DILocation(line: 147, column: 19, scope: !57)
!450 = !DILocation(line: 147, column: 5, scope: !58)
!451 = !DILocation(line: 148, column: 9, scope: !56)
!452 = !DILocation(line: 148, column: 20, scope: !56)
!453 = !DILocation(line: 148, column: 28, scope: !56)
!454 = !DILocation(line: 148, column: 25, scope: !56)
!455 = !DILocation(line: 149, column: 9, scope: !56)
!456 = !DILocation(line: 149, column: 20, scope: !56)
!457 = !DILocation(line: 149, column: 28, scope: !56)
!458 = !DILocation(line: 149, column: 29, scope: !56)
!459 = !DILocation(line: 149, column: 25, scope: !56)
!460 = !DILocation(line: 150, column: 26, scope: !56)
!461 = !DILocation(line: 150, column: 35, scope: !56)
!462 = !DILocation(line: 150, column: 39, scope: !56)
!463 = !DILocation(line: 150, column: 9, scope: !56)
!464 = !DILocation(line: 151, column: 17, scope: !56)
!465 = !DILocation(line: 151, column: 12, scope: !56)
!466 = !DILocation(line: 151, column: 9, scope: !56)
!467 = !DILocation(line: 151, column: 15, scope: !56)
!468 = !DILocation(line: 152, column: 19, scope: !56)
!469 = !DILocation(line: 152, column: 12, scope: !56)
!470 = !DILocation(line: 152, column: 13, scope: !56)
!471 = !DILocation(line: 152, column: 9, scope: !56)
!472 = !DILocation(line: 152, column: 17, scope: !56)
!473 = !DILocation(line: 153, column: 5, scope: !57)
!474 = !DILocation(line: 153, column: 5, scope: !56)
!475 = !DILocation(line: 147, column: 28, scope: !57)
!476 = !DILocation(line: 147, column: 5, scope: !57)
!477 = !DILocation(line: 155, column: 10, scope: !478)
!478 = distinct !DILexicalBlock(scope: !45, file: !5, line: 155, column: 9)
!479 = !DILocation(line: 155, column: 18, scope: !478)
!480 = !DILocation(line: 155, column: 22, scope: !478)
!481 = !DILocation(line: 155, column: 25, scope: !478)
!482 = !DILocation(line: 155, column: 9, scope: !45)
!483 = !DILocation(line: 156, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !5, line: 155, column: 34)
!485 = !DILocation(line: 158, column: 12, scope: !63)
!486 = !DILocation(line: 158, column: 10, scope: !63)
!487 = !DILocation(line: 158, column: 17, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !5, discriminator: 2)
!489 = !DILexicalBlockFile(scope: !62, file: !5, discriminator: 1)
!490 = !DILocation(line: 158, column: 21, scope: !62)
!491 = !DILocation(line: 158, column: 22, scope: !62)
!492 = !DILocation(line: 158, column: 19, scope: !62)
!493 = !DILocation(line: 158, column: 5, scope: !63)
!494 = !DILocation(line: 159, column: 9, scope: !61)
!495 = !DILocation(line: 159, column: 20, scope: !61)
!496 = !DILocation(line: 159, column: 28, scope: !61)
!497 = !DILocation(line: 159, column: 25, scope: !61)
!498 = !DILocation(line: 160, column: 9, scope: !61)
!499 = !DILocation(line: 160, column: 20, scope: !61)
!500 = !DILocation(line: 160, column: 28, scope: !61)
!501 = !DILocation(line: 160, column: 29, scope: !61)
!502 = !DILocation(line: 160, column: 25, scope: !61)
!503 = !DILocation(line: 161, column: 9, scope: !61)
!504 = !DILocation(line: 161, column: 20, scope: !61)
!505 = !DILocation(line: 161, column: 28, scope: !61)
!506 = !DILocation(line: 161, column: 29, scope: !61)
!507 = !DILocation(line: 161, column: 25, scope: !61)
!508 = !DILocation(line: 162, column: 9, scope: !61)
!509 = !DILocation(line: 162, column: 20, scope: !61)
!510 = !DILocation(line: 162, column: 28, scope: !61)
!511 = !DILocation(line: 162, column: 29, scope: !61)
!512 = !DILocation(line: 162, column: 25, scope: !61)
!513 = !DILocation(line: 163, column: 32, scope: !61)
!514 = !DILocation(line: 163, column: 39, scope: !61)
!515 = !DILocation(line: 163, column: 9, scope: !61)
!516 = !DILocation(line: 164, column: 32, scope: !61)
!517 = !DILocation(line: 164, column: 39, scope: !61)
!518 = !DILocation(line: 164, column: 9, scope: !61)
!519 = !DILocation(line: 165, column: 17, scope: !61)
!520 = !DILocation(line: 165, column: 12, scope: !61)
!521 = !DILocation(line: 165, column: 9, scope: !61)
!522 = !DILocation(line: 165, column: 15, scope: !61)
!523 = !DILocation(line: 166, column: 19, scope: !61)
!524 = !DILocation(line: 166, column: 12, scope: !61)
!525 = !DILocation(line: 166, column: 13, scope: !61)
!526 = !DILocation(line: 166, column: 9, scope: !61)
!527 = !DILocation(line: 166, column: 17, scope: !61)
!528 = !DILocation(line: 167, column: 19, scope: !61)
!529 = !DILocation(line: 167, column: 12, scope: !61)
!530 = !DILocation(line: 167, column: 13, scope: !61)
!531 = !DILocation(line: 167, column: 9, scope: !61)
!532 = !DILocation(line: 167, column: 17, scope: !61)
!533 = !DILocation(line: 168, column: 19, scope: !61)
!534 = !DILocation(line: 168, column: 12, scope: !61)
!535 = !DILocation(line: 168, column: 13, scope: !61)
!536 = !DILocation(line: 168, column: 9, scope: !61)
!537 = !DILocation(line: 168, column: 17, scope: !61)
!538 = !DILocation(line: 169, column: 5, scope: !62)
!539 = !DILocation(line: 169, column: 5, scope: !61)
!540 = !DILocation(line: 158, column: 28, scope: !62)
!541 = !DILocation(line: 158, column: 5, scope: !62)
!542 = !DILocation(line: 171, column: 5, scope: !45)
!543 = !DILocation(line: 172, column: 1, scope: !45)
!544 = !DILocation(line: 151, column: 23, scope: !83)
!545 = !DILocation(line: 151, column: 37, scope: !83)
!546 = !DILocation(line: 151, column: 51, scope: !83)
!547 = !DILocation(line: 153, column: 5, scope: !83)
!548 = !DILocation(line: 153, column: 16, scope: !83)
!549 = !DILocation(line: 153, column: 20, scope: !83)
!550 = !DILocation(line: 153, column: 24, scope: !83)
!551 = !DILocation(line: 153, column: 27, scope: !83)
!552 = !DILocation(line: 156, column: 30, scope: !83)
!553 = !DILocation(line: 156, column: 33, scope: !83)
!554 = !DILocation(line: 156, column: 5, scope: !83)
!555 = !DILocation(line: 158, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !83, file: !75, line: 158, column: 9)
!557 = !DILocation(line: 158, column: 11, scope: !556)
!558 = !DILocation(line: 158, column: 9, scope: !83)
!559 = !DILocation(line: 161, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !75, line: 158, column: 25)
!561 = !DILocation(line: 161, column: 15, scope: !560)
!562 = !DILocation(line: 161, column: 11, scope: !560)
!563 = !DILocation(line: 162, column: 12, scope: !560)
!564 = !DILocation(line: 164, column: 13, scope: !560)
!565 = !DILocation(line: 164, column: 18, scope: !560)
!566 = !DILocation(line: 164, column: 16, scope: !560)
!567 = !DILocation(line: 164, column: 11, scope: !560)
!568 = !DILocation(line: 165, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !560, file: !75, line: 165, column: 13)
!570 = !DILocation(line: 165, column: 17, scope: !569)
!571 = !DILocation(line: 165, column: 15, scope: !569)
!572 = !DILocation(line: 165, column: 13, scope: !560)
!573 = !DILocation(line: 165, column: 23, scope: !574)
!574 = !DILexicalBlockFile(scope: !569, file: !75, discriminator: 1)
!575 = !DILocation(line: 165, column: 21, scope: !569)
!576 = !DILocation(line: 167, column: 11, scope: !560)
!577 = !DILocation(line: 168, column: 14, scope: !560)
!578 = !DILocation(line: 168, column: 18, scope: !560)
!579 = !DILocation(line: 168, column: 16, scope: !560)
!580 = !DILocation(line: 168, column: 12, scope: !560)
!581 = !DILocation(line: 169, column: 13, scope: !582)
!582 = distinct !DILexicalBlock(scope: !560, file: !75, line: 169, column: 13)
!583 = !DILocation(line: 169, column: 18, scope: !582)
!584 = !DILocation(line: 169, column: 16, scope: !582)
!585 = !DILocation(line: 169, column: 13, scope: !560)
!586 = !DILocation(line: 169, column: 23, scope: !587)
!587 = !DILexicalBlockFile(scope: !582, file: !75, discriminator: 1)
!588 = !DILocation(line: 169, column: 21, scope: !582)
!589 = !DILocation(line: 172, column: 17, scope: !560)
!590 = !DILocation(line: 172, column: 15, scope: !560)
!591 = !DILocation(line: 172, column: 11, scope: !560)
!592 = !DILocation(line: 173, column: 12, scope: !560)
!593 = !DILocation(line: 175, column: 13, scope: !560)
!594 = !DILocation(line: 175, column: 18, scope: !560)
!595 = !DILocation(line: 175, column: 16, scope: !560)
!596 = !DILocation(line: 175, column: 11, scope: !560)
!597 = !DILocation(line: 176, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !560, file: !75, line: 176, column: 13)
!599 = !DILocation(line: 176, column: 17, scope: !598)
!600 = !DILocation(line: 176, column: 15, scope: !598)
!601 = !DILocation(line: 176, column: 13, scope: !560)
!602 = !DILocation(line: 176, column: 23, scope: !603)
!603 = !DILexicalBlockFile(scope: !598, file: !75, discriminator: 1)
!604 = !DILocation(line: 176, column: 21, scope: !598)
!605 = !DILocation(line: 178, column: 11, scope: !560)
!606 = !DILocation(line: 179, column: 14, scope: !560)
!607 = !DILocation(line: 179, column: 18, scope: !560)
!608 = !DILocation(line: 179, column: 16, scope: !560)
!609 = !DILocation(line: 179, column: 12, scope: !560)
!610 = !DILocation(line: 180, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !560, file: !75, line: 180, column: 13)
!612 = !DILocation(line: 180, column: 18, scope: !611)
!613 = !DILocation(line: 180, column: 16, scope: !611)
!614 = !DILocation(line: 180, column: 13, scope: !560)
!615 = !DILocation(line: 180, column: 23, scope: !616)
!616 = !DILexicalBlockFile(scope: !611, file: !75, discriminator: 1)
!617 = !DILocation(line: 180, column: 21, scope: !611)
!618 = !DILocation(line: 182, column: 17, scope: !560)
!619 = !DILocation(line: 182, column: 20, scope: !560)
!620 = !DILocation(line: 182, column: 23, scope: !621)
!621 = !DILexicalBlockFile(scope: !560, file: !75, discriminator: 2)
!622 = !DILocation(line: 182, column: 29, scope: !560)
!623 = !DILocation(line: 182, column: 26, scope: !560)
!624 = !DILocation(line: 182, column: 33, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !75, discriminator: 3)
!626 = !DILexicalBlockFile(scope: !560, file: !75, discriminator: 1)
!627 = !DILocation(line: 182, column: 38, scope: !560)
!628 = !DILocation(line: 182, column: 36, scope: !560)
!629 = !DILocation(line: 182, column: 42, scope: !630)
!630 = !DILexicalBlockFile(scope: !560, file: !75, discriminator: 4)
!631 = !DILocation(line: 182, column: 9, scope: !632)
!632 = !DILexicalBlockFile(scope: !633, file: !75, discriminator: 6)
!633 = !DILexicalBlockFile(scope: !560, file: !75, discriminator: 5)
!634 = !DILocation(line: 182, column: 9, scope: !560)
!635 = !DILocation(line: 184, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !556, file: !75, line: 184, column: 14)
!637 = !DILocation(line: 184, column: 16, scope: !636)
!638 = !DILocation(line: 184, column: 14, scope: !556)
!639 = !DILocation(line: 187, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !75, line: 184, column: 30)
!641 = !DILocation(line: 187, column: 15, scope: !640)
!642 = !DILocation(line: 187, column: 11, scope: !640)
!643 = !DILocation(line: 188, column: 12, scope: !640)
!644 = !DILocation(line: 190, column: 13, scope: !640)
!645 = !DILocation(line: 190, column: 18, scope: !640)
!646 = !DILocation(line: 190, column: 16, scope: !640)
!647 = !DILocation(line: 190, column: 11, scope: !640)
!648 = !DILocation(line: 191, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !640, file: !75, line: 191, column: 13)
!650 = !DILocation(line: 191, column: 17, scope: !649)
!651 = !DILocation(line: 191, column: 15, scope: !649)
!652 = !DILocation(line: 191, column: 13, scope: !640)
!653 = !DILocation(line: 191, column: 23, scope: !654)
!654 = !DILexicalBlockFile(scope: !649, file: !75, discriminator: 1)
!655 = !DILocation(line: 191, column: 21, scope: !649)
!656 = !DILocation(line: 193, column: 11, scope: !640)
!657 = !DILocation(line: 194, column: 14, scope: !640)
!658 = !DILocation(line: 194, column: 18, scope: !640)
!659 = !DILocation(line: 194, column: 16, scope: !640)
!660 = !DILocation(line: 194, column: 12, scope: !640)
!661 = !DILocation(line: 195, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !640, file: !75, line: 195, column: 13)
!663 = !DILocation(line: 195, column: 18, scope: !662)
!664 = !DILocation(line: 195, column: 16, scope: !662)
!665 = !DILocation(line: 195, column: 13, scope: !640)
!666 = !DILocation(line: 195, column: 23, scope: !667)
!667 = !DILexicalBlockFile(scope: !662, file: !75, discriminator: 1)
!668 = !DILocation(line: 195, column: 21, scope: !662)
!669 = !DILocation(line: 198, column: 17, scope: !640)
!670 = !DILocation(line: 198, column: 15, scope: !640)
!671 = !DILocation(line: 198, column: 11, scope: !640)
!672 = !DILocation(line: 199, column: 12, scope: !640)
!673 = !DILocation(line: 201, column: 13, scope: !640)
!674 = !DILocation(line: 201, column: 18, scope: !640)
!675 = !DILocation(line: 201, column: 16, scope: !640)
!676 = !DILocation(line: 201, column: 11, scope: !640)
!677 = !DILocation(line: 202, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !640, file: !75, line: 202, column: 13)
!679 = !DILocation(line: 202, column: 17, scope: !678)
!680 = !DILocation(line: 202, column: 15, scope: !678)
!681 = !DILocation(line: 202, column: 13, scope: !640)
!682 = !DILocation(line: 202, column: 23, scope: !683)
!683 = !DILexicalBlockFile(scope: !678, file: !75, discriminator: 1)
!684 = !DILocation(line: 202, column: 21, scope: !678)
!685 = !DILocation(line: 204, column: 11, scope: !640)
!686 = !DILocation(line: 205, column: 14, scope: !640)
!687 = !DILocation(line: 205, column: 18, scope: !640)
!688 = !DILocation(line: 205, column: 16, scope: !640)
!689 = !DILocation(line: 205, column: 12, scope: !640)
!690 = !DILocation(line: 206, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !640, file: !75, line: 206, column: 13)
!692 = !DILocation(line: 206, column: 18, scope: !691)
!693 = !DILocation(line: 206, column: 16, scope: !691)
!694 = !DILocation(line: 206, column: 13, scope: !640)
!695 = !DILocation(line: 206, column: 23, scope: !696)
!696 = !DILexicalBlockFile(scope: !691, file: !75, discriminator: 1)
!697 = !DILocation(line: 206, column: 21, scope: !691)
!698 = !DILocation(line: 209, column: 17, scope: !640)
!699 = !DILocation(line: 209, column: 15, scope: !640)
!700 = !DILocation(line: 209, column: 11, scope: !640)
!701 = !DILocation(line: 210, column: 12, scope: !640)
!702 = !DILocation(line: 212, column: 13, scope: !640)
!703 = !DILocation(line: 212, column: 18, scope: !640)
!704 = !DILocation(line: 212, column: 16, scope: !640)
!705 = !DILocation(line: 212, column: 11, scope: !640)
!706 = !DILocation(line: 213, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !640, file: !75, line: 213, column: 13)
!708 = !DILocation(line: 213, column: 17, scope: !707)
!709 = !DILocation(line: 213, column: 15, scope: !707)
!710 = !DILocation(line: 213, column: 13, scope: !640)
!711 = !DILocation(line: 213, column: 23, scope: !712)
!712 = !DILexicalBlockFile(scope: !707, file: !75, discriminator: 1)
!713 = !DILocation(line: 213, column: 21, scope: !707)
!714 = !DILocation(line: 215, column: 11, scope: !640)
!715 = !DILocation(line: 216, column: 14, scope: !640)
!716 = !DILocation(line: 216, column: 18, scope: !640)
!717 = !DILocation(line: 216, column: 16, scope: !640)
!718 = !DILocation(line: 216, column: 12, scope: !640)
!719 = !DILocation(line: 217, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !640, file: !75, line: 217, column: 13)
!721 = !DILocation(line: 217, column: 18, scope: !720)
!722 = !DILocation(line: 217, column: 16, scope: !720)
!723 = !DILocation(line: 217, column: 13, scope: !640)
!724 = !DILocation(line: 217, column: 23, scope: !725)
!725 = !DILexicalBlockFile(scope: !720, file: !75, discriminator: 1)
!726 = !DILocation(line: 217, column: 21, scope: !720)
!727 = !DILocation(line: 219, column: 17, scope: !640)
!728 = !DILocation(line: 219, column: 20, scope: !640)
!729 = !DILocation(line: 219, column: 23, scope: !730)
!730 = !DILexicalBlockFile(scope: !640, file: !75, discriminator: 2)
!731 = !DILocation(line: 219, column: 29, scope: !640)
!732 = !DILocation(line: 219, column: 26, scope: !640)
!733 = !DILocation(line: 219, column: 33, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !75, discriminator: 3)
!735 = !DILexicalBlockFile(scope: !640, file: !75, discriminator: 1)
!736 = !DILocation(line: 219, column: 38, scope: !640)
!737 = !DILocation(line: 219, column: 36, scope: !640)
!738 = !DILocation(line: 219, column: 42, scope: !739)
!739 = !DILexicalBlockFile(scope: !640, file: !75, discriminator: 4)
!740 = !DILocation(line: 219, column: 9, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !75, discriminator: 6)
!742 = !DILexicalBlockFile(scope: !640, file: !75, discriminator: 5)
!743 = !DILocation(line: 219, column: 9, scope: !640)
!744 = !DILocation(line: 224, column: 17, scope: !745)
!745 = distinct !DILexicalBlock(scope: !636, file: !75, line: 221, column: 10)
!746 = !DILocation(line: 224, column: 15, scope: !745)
!747 = !DILocation(line: 224, column: 11, scope: !745)
!748 = !DILocation(line: 225, column: 12, scope: !745)
!749 = !DILocation(line: 227, column: 13, scope: !745)
!750 = !DILocation(line: 227, column: 18, scope: !745)
!751 = !DILocation(line: 227, column: 16, scope: !745)
!752 = !DILocation(line: 227, column: 11, scope: !745)
!753 = !DILocation(line: 228, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !745, file: !75, line: 228, column: 13)
!755 = !DILocation(line: 228, column: 17, scope: !754)
!756 = !DILocation(line: 228, column: 15, scope: !754)
!757 = !DILocation(line: 228, column: 13, scope: !745)
!758 = !DILocation(line: 228, column: 23, scope: !759)
!759 = !DILexicalBlockFile(scope: !754, file: !75, discriminator: 1)
!760 = !DILocation(line: 228, column: 21, scope: !754)
!761 = !DILocation(line: 230, column: 11, scope: !745)
!762 = !DILocation(line: 231, column: 14, scope: !745)
!763 = !DILocation(line: 231, column: 18, scope: !745)
!764 = !DILocation(line: 231, column: 16, scope: !745)
!765 = !DILocation(line: 231, column: 12, scope: !745)
!766 = !DILocation(line: 232, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !745, file: !75, line: 232, column: 13)
!768 = !DILocation(line: 232, column: 18, scope: !767)
!769 = !DILocation(line: 232, column: 16, scope: !767)
!770 = !DILocation(line: 232, column: 13, scope: !745)
!771 = !DILocation(line: 232, column: 23, scope: !772)
!772 = !DILexicalBlockFile(scope: !767, file: !75, discriminator: 1)
!773 = !DILocation(line: 232, column: 21, scope: !767)
!774 = !DILocation(line: 235, column: 17, scope: !745)
!775 = !DILocation(line: 235, column: 15, scope: !745)
!776 = !DILocation(line: 235, column: 11, scope: !745)
!777 = !DILocation(line: 236, column: 12, scope: !745)
!778 = !DILocation(line: 238, column: 13, scope: !745)
!779 = !DILocation(line: 238, column: 18, scope: !745)
!780 = !DILocation(line: 238, column: 16, scope: !745)
!781 = !DILocation(line: 238, column: 11, scope: !745)
!782 = !DILocation(line: 239, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !745, file: !75, line: 239, column: 13)
!784 = !DILocation(line: 239, column: 17, scope: !783)
!785 = !DILocation(line: 239, column: 15, scope: !783)
!786 = !DILocation(line: 239, column: 13, scope: !745)
!787 = !DILocation(line: 239, column: 23, scope: !788)
!788 = !DILexicalBlockFile(scope: !783, file: !75, discriminator: 1)
!789 = !DILocation(line: 239, column: 21, scope: !783)
!790 = !DILocation(line: 241, column: 11, scope: !745)
!791 = !DILocation(line: 242, column: 14, scope: !745)
!792 = !DILocation(line: 242, column: 18, scope: !745)
!793 = !DILocation(line: 242, column: 16, scope: !745)
!794 = !DILocation(line: 242, column: 12, scope: !745)
!795 = !DILocation(line: 243, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !745, file: !75, line: 243, column: 13)
!797 = !DILocation(line: 243, column: 18, scope: !796)
!798 = !DILocation(line: 243, column: 16, scope: !796)
!799 = !DILocation(line: 243, column: 13, scope: !745)
!800 = !DILocation(line: 243, column: 23, scope: !801)
!801 = !DILexicalBlockFile(scope: !796, file: !75, discriminator: 1)
!802 = !DILocation(line: 243, column: 21, scope: !796)
!803 = !DILocation(line: 246, column: 17, scope: !745)
!804 = !DILocation(line: 246, column: 15, scope: !745)
!805 = !DILocation(line: 246, column: 11, scope: !745)
!806 = !DILocation(line: 247, column: 12, scope: !745)
!807 = !DILocation(line: 249, column: 13, scope: !745)
!808 = !DILocation(line: 249, column: 18, scope: !745)
!809 = !DILocation(line: 249, column: 16, scope: !745)
!810 = !DILocation(line: 249, column: 11, scope: !745)
!811 = !DILocation(line: 250, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !745, file: !75, line: 250, column: 13)
!813 = !DILocation(line: 250, column: 17, scope: !812)
!814 = !DILocation(line: 250, column: 15, scope: !812)
!815 = !DILocation(line: 250, column: 13, scope: !745)
!816 = !DILocation(line: 250, column: 23, scope: !817)
!817 = !DILexicalBlockFile(scope: !812, file: !75, discriminator: 1)
!818 = !DILocation(line: 250, column: 21, scope: !812)
!819 = !DILocation(line: 252, column: 11, scope: !745)
!820 = !DILocation(line: 253, column: 14, scope: !745)
!821 = !DILocation(line: 253, column: 18, scope: !745)
!822 = !DILocation(line: 253, column: 16, scope: !745)
!823 = !DILocation(line: 253, column: 12, scope: !745)
!824 = !DILocation(line: 254, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !745, file: !75, line: 254, column: 13)
!826 = !DILocation(line: 254, column: 18, scope: !825)
!827 = !DILocation(line: 254, column: 16, scope: !825)
!828 = !DILocation(line: 254, column: 13, scope: !745)
!829 = !DILocation(line: 254, column: 23, scope: !830)
!830 = !DILexicalBlockFile(scope: !825, file: !75, discriminator: 1)
!831 = !DILocation(line: 254, column: 21, scope: !825)
!832 = !DILocation(line: 256, column: 17, scope: !745)
!833 = !DILocation(line: 256, column: 20, scope: !745)
!834 = !DILocation(line: 256, column: 23, scope: !835)
!835 = !DILexicalBlockFile(scope: !745, file: !75, discriminator: 2)
!836 = !DILocation(line: 256, column: 29, scope: !745)
!837 = !DILocation(line: 256, column: 26, scope: !745)
!838 = !DILocation(line: 256, column: 33, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !75, discriminator: 3)
!840 = !DILexicalBlockFile(scope: !745, file: !75, discriminator: 1)
!841 = !DILocation(line: 256, column: 38, scope: !745)
!842 = !DILocation(line: 256, column: 36, scope: !745)
!843 = !DILocation(line: 256, column: 42, scope: !844)
!844 = !DILexicalBlockFile(scope: !745, file: !75, discriminator: 4)
!845 = !DILocation(line: 256, column: 9, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !75, discriminator: 6)
!847 = !DILexicalBlockFile(scope: !745, file: !75, discriminator: 5)
!848 = !DILocation(line: 256, column: 9, scope: !745)
!849 = !DILocation(line: 258, column: 1, scope: !83)
!850 = !DILocation(line: 206, column: 28, scope: !92)
!851 = !DILocation(line: 206, column: 44, scope: !92)
!852 = !DILocation(line: 206, column: 59, scope: !92)
!853 = !DILocation(line: 206, column: 73, scope: !92)
!854 = !DILocation(line: 208, column: 5, scope: !92)
!855 = !DILocation(line: 208, column: 16, scope: !92)
!856 = !DILocation(line: 208, column: 19, scope: !92)
!857 = !DILocation(line: 212, column: 23, scope: !92)
!858 = !DILocation(line: 212, column: 33, scope: !92)
!859 = !DILocation(line: 210, column: 5, scope: !92)
!860 = !{i32 105087, i32 105097}
!861 = !DILocation(line: 216, column: 11, scope: !92)
!862 = !DILocation(line: 216, column: 6, scope: !92)
!863 = !DILocation(line: 216, column: 9, scope: !92)
!864 = !DILocation(line: 217, column: 11, scope: !92)
!865 = !DILocation(line: 217, column: 6, scope: !92)
!866 = !DILocation(line: 217, column: 9, scope: !92)
!867 = !DILocation(line: 218, column: 1, scope: !92)
