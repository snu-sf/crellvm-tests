; ModuleID = 'programs_new/Python-new/memory.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpd_t = type { i8, i64, i64, i64, i64, i64* }
%struct.mpd_context_t = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@MPD_MINALLOC = hidden global i64 2, align 8
@mpd_mallocfunc = hidden global i8* (i64)* @malloc, align 8
@mpd_reallocfunc = hidden global i8* (i8*, i64)* @realloc, align 8
@mpd_callocfunc = hidden global i8* (i64, i64)* @calloc, align 8
@mpd_free = hidden global void (i8*)* @free, align 8

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #0

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #0

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #0

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_callocfunc_em(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %nmemb, i64* %nmemb.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nmemb.addr, metadata !20, metadata !177), !dbg !178
  store i64 %size, i64* %size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !21, metadata !177), !dbg !179
  %0 = bitcast i8** %ptr to i8*, !dbg !180
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !180
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !22, metadata !177), !dbg !181
  %1 = bitcast i64* %req to i8*, !dbg !182
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !182
  call void @llvm.dbg.declare(metadata i64* %req, metadata !23, metadata !177), !dbg !183
  %2 = bitcast i64* %overflow to i8*, !dbg !184
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !184
  call void @llvm.dbg.declare(metadata i64* %overflow, metadata !24, metadata !177), !dbg !185
  %3 = load i64, i64* %nmemb.addr, align 8, !dbg !186, !tbaa !173
  %4 = load i64, i64* %size.addr, align 8, !dbg !187, !tbaa !173
  %call = call i64 @mul_size_t_overflow(i64 %3, i64 %4, i64* %overflow), !dbg !188
  store i64 %call, i64* %req, align 8, !dbg !189, !tbaa !173
  %5 = load i64, i64* %overflow, align 8, !dbg !190, !tbaa !173
  %tobool = icmp ne i64 %5, 0, !dbg !190
  br i1 %tobool, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !193

if.end:                                           ; preds = %entry
  %6 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8, !dbg !195, !tbaa !196
  %7 = load i64, i64* %req, align 8, !dbg !198, !tbaa !173
  %call1 = call i8* %6(i64 %7), !dbg !195
  store i8* %call1, i8** %ptr, align 8, !dbg !199, !tbaa !196
  %8 = load i8*, i8** %ptr, align 8, !dbg !200, !tbaa !196
  %cmp = icmp eq i8* %8, null, !dbg !202
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !203

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval, !dbg !204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !204

if.end.3:                                         ; preds = %if.end
  %9 = load i8*, i8** %ptr, align 8, !dbg !206, !tbaa !196
  %10 = load i64, i64* %req, align 8, !dbg !207, !tbaa !173
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %10, i32 1, i1 false), !dbg !208
  %11 = load i8*, i8** %ptr, align 8, !dbg !209, !tbaa !196
  store i8* %11, i8** %retval, !dbg !210
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !210

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %12 = bitcast i64* %overflow to i8*, !dbg !211
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !211
  %13 = bitcast i64* %req to i8*, !dbg !211
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !211
  %14 = bitcast i8** %ptr to i8*, !dbg !211
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !211
  %15 = load i8*, i8** %retval, !dbg !211
  ret i8* %15, !dbg !211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mul_size_t_overflow(i64 %a, i64 %b, i64* %overflow) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %overflow.addr = alloca i64*, align 8
  %lo = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !133, metadata !177), !dbg !212
  store i64 %b, i64* %b.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !134, metadata !177), !dbg !213
  store i64* %overflow, i64** %overflow.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i64** %overflow.addr, metadata !135, metadata !177), !dbg !214
  %0 = bitcast i64* %lo to i8*, !dbg !215
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !215
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !136, metadata !177), !dbg !216
  %1 = load i64*, i64** %overflow.addr, align 8, !dbg !217, !tbaa !196
  %2 = load i64, i64* %a.addr, align 8, !dbg !218, !tbaa !173
  %3 = load i64, i64* %b.addr, align 8, !dbg !219, !tbaa !173
  call void @_mpd_mul_words(i64* %1, i64* %lo, i64 %2, i64 %3), !dbg !220
  %4 = load i64, i64* %lo, align 8, !dbg !221, !tbaa !173
  %5 = bitcast i64* %lo to i8*, !dbg !222
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !222
  ret i64 %4, !dbg !223
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_alloc(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %nmemb, i64* %nmemb.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nmemb.addr, metadata !29, metadata !177), !dbg !224
  store i64 %size, i64* %size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !30, metadata !177), !dbg !225
  %0 = bitcast i64* %req to i8*, !dbg !226
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !226
  call void @llvm.dbg.declare(metadata i64* %req, metadata !31, metadata !177), !dbg !227
  %1 = bitcast i64* %overflow to i8*, !dbg !226
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !226
  call void @llvm.dbg.declare(metadata i64* %overflow, metadata !32, metadata !177), !dbg !228
  %2 = load i64, i64* %nmemb.addr, align 8, !dbg !229, !tbaa !173
  %3 = load i64, i64* %size.addr, align 8, !dbg !230, !tbaa !173
  %call = call i64 @mul_size_t_overflow(i64 %2, i64 %3, i64* %overflow), !dbg !231
  store i64 %call, i64* %req, align 8, !dbg !232, !tbaa !173
  %4 = load i64, i64* %overflow, align 8, !dbg !233, !tbaa !173
  %tobool = icmp ne i64 %4, 0, !dbg !233
  br i1 %tobool, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !236
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !236

if.end:                                           ; preds = %entry
  %5 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8, !dbg !238, !tbaa !196
  %6 = load i64, i64* %req, align 8, !dbg !239, !tbaa !173
  %call1 = call i8* %5(i64 %6), !dbg !238
  store i8* %call1, i8** %retval, !dbg !240
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i64* %overflow to i8*, !dbg !241
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !241
  %8 = bitcast i64* %req to i8*, !dbg !241
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !241
  %9 = load i8*, i8** %retval, !dbg !241
  ret i8* %9, !dbg !241
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_calloc(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %overflow = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %nmemb, i64* %nmemb.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nmemb.addr, metadata !35, metadata !177), !dbg !242
  store i64 %size, i64* %size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !36, metadata !177), !dbg !243
  %0 = bitcast i64* %overflow to i8*, !dbg !244
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !244
  call void @llvm.dbg.declare(metadata i64* %overflow, metadata !37, metadata !177), !dbg !245
  %1 = load i64, i64* %nmemb.addr, align 8, !dbg !246, !tbaa !173
  %2 = load i64, i64* %size.addr, align 8, !dbg !247, !tbaa !173
  %call = call i64 @mul_size_t_overflow(i64 %1, i64 %2, i64* %overflow), !dbg !248
  %3 = load i64, i64* %overflow, align 8, !dbg !249, !tbaa !173
  %tobool = icmp ne i64 %3, 0, !dbg !249
  br i1 %tobool, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !252
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !252

if.end:                                           ; preds = %entry
  %4 = load i8* (i64, i64)*, i8* (i64, i64)** @mpd_callocfunc, align 8, !dbg !254, !tbaa !196
  %5 = load i64, i64* %nmemb.addr, align 8, !dbg !255, !tbaa !173
  %6 = load i64, i64* %size.addr, align 8, !dbg !256, !tbaa !173
  %call1 = call i8* %4(i64 %5, i64 %6), !dbg !254
  store i8* %call1, i8** %retval, !dbg !257
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !257

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i64* %overflow to i8*, !dbg !258
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !258
  %8 = load i8*, i8** %retval, !dbg !258
  ret i8* %8, !dbg !258
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_realloc(i8* %ptr, i64 %nmemb, i64 %size, i8* %err) #1 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %err.addr = alloca i8*, align 8
  %new = alloca i8*, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !45, metadata !177), !dbg !259
  store i64 %nmemb, i64* %nmemb.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nmemb.addr, metadata !46, metadata !177), !dbg !260
  store i64 %size, i64* %size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !47, metadata !177), !dbg !261
  store i8* %err, i8** %err.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i8** %err.addr, metadata !48, metadata !177), !dbg !262
  %0 = bitcast i8** %new to i8*, !dbg !263
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !263
  call void @llvm.dbg.declare(metadata i8** %new, metadata !49, metadata !177), !dbg !264
  %1 = bitcast i64* %req to i8*, !dbg !265
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !265
  call void @llvm.dbg.declare(metadata i64* %req, metadata !50, metadata !177), !dbg !266
  %2 = bitcast i64* %overflow to i8*, !dbg !265
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !265
  call void @llvm.dbg.declare(metadata i64* %overflow, metadata !51, metadata !177), !dbg !267
  %3 = load i64, i64* %nmemb.addr, align 8, !dbg !268, !tbaa !173
  %4 = load i64, i64* %size.addr, align 8, !dbg !269, !tbaa !173
  %call = call i64 @mul_size_t_overflow(i64 %3, i64 %4, i64* %overflow), !dbg !270
  store i64 %call, i64* %req, align 8, !dbg !271, !tbaa !173
  %5 = load i64, i64* %overflow, align 8, !dbg !272, !tbaa !173
  %tobool = icmp ne i64 %5, 0, !dbg !272
  br i1 %tobool, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %err.addr, align 8, !dbg !275, !tbaa !196
  store i8 1, i8* %6, align 1, !dbg !277, !tbaa !278
  %7 = load i8*, i8** %ptr.addr, align 8, !dbg !279, !tbaa !196
  store i8* %7, i8** %retval, !dbg !280
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !280

if.end:                                           ; preds = %entry
  %8 = load i8* (i8*, i64)*, i8* (i8*, i64)** @mpd_reallocfunc, align 8, !dbg !281, !tbaa !196
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !282, !tbaa !196
  %10 = load i64, i64* %req, align 8, !dbg !283, !tbaa !173
  %call1 = call i8* %8(i8* %9, i64 %10), !dbg !281
  store i8* %call1, i8** %new, align 8, !dbg !284, !tbaa !196
  %11 = load i8*, i8** %new, align 8, !dbg !285, !tbaa !196
  %cmp = icmp eq i8* %11, null, !dbg !287
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !288

if.then.2:                                        ; preds = %if.end
  %12 = load i8*, i8** %err.addr, align 8, !dbg !289, !tbaa !196
  store i8 1, i8* %12, align 1, !dbg !291, !tbaa !278
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !292, !tbaa !196
  store i8* %13, i8** %retval, !dbg !293
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !293

if.end.3:                                         ; preds = %if.end
  %14 = load i8*, i8** %new, align 8, !dbg !294, !tbaa !196
  store i8* %14, i8** %retval, !dbg !295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !295

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %15 = bitcast i64* %overflow to i8*, !dbg !296
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !296
  %16 = bitcast i64* %req to i8*, !dbg !296
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !296
  %17 = bitcast i8** %new to i8*, !dbg !296
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !296
  %18 = load i8*, i8** %retval, !dbg !296
  ret i8* %18, !dbg !296
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_sh_alloc(i64 %struct_size, i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %struct_size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %struct_size, i64* %struct_size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %struct_size.addr, metadata !56, metadata !177), !dbg !297
  store i64 %nmemb, i64* %nmemb.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nmemb.addr, metadata !57, metadata !177), !dbg !298
  store i64 %size, i64* %size.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !58, metadata !177), !dbg !299
  %0 = bitcast i64* %req to i8*, !dbg !300
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !300
  call void @llvm.dbg.declare(metadata i64* %req, metadata !59, metadata !177), !dbg !301
  %1 = bitcast i64* %overflow to i8*, !dbg !300
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !300
  call void @llvm.dbg.declare(metadata i64* %overflow, metadata !60, metadata !177), !dbg !302
  %2 = load i64, i64* %nmemb.addr, align 8, !dbg !303, !tbaa !173
  %3 = load i64, i64* %size.addr, align 8, !dbg !304, !tbaa !173
  %call = call i64 @mul_size_t_overflow(i64 %2, i64 %3, i64* %overflow), !dbg !305
  store i64 %call, i64* %req, align 8, !dbg !306, !tbaa !173
  %4 = load i64, i64* %overflow, align 8, !dbg !307, !tbaa !173
  %tobool = icmp ne i64 %4, 0, !dbg !307
  br i1 %tobool, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !310
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %req, align 8, !dbg !312, !tbaa !173
  %6 = load i64, i64* %struct_size.addr, align 8, !dbg !313, !tbaa !173
  %call1 = call i64 @add_size_t_overflow(i64 %5, i64 %6, i64* %overflow), !dbg !314
  store i64 %call1, i64* %req, align 8, !dbg !315, !tbaa !173
  %7 = load i64, i64* %overflow, align 8, !dbg !316, !tbaa !173
  %tobool2 = icmp ne i64 %7, 0, !dbg !316
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !318

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval, !dbg !319
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !319

if.end.4:                                         ; preds = %if.end
  %8 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8, !dbg !321, !tbaa !196
  %9 = load i64, i64* %req, align 8, !dbg !322, !tbaa !173
  %call5 = call i8* %8(i64 %9), !dbg !321
  store i8* %call5, i8** %retval, !dbg !323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !323

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast i64* %overflow to i8*, !dbg !324
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !324
  %11 = bitcast i64* %req to i8*, !dbg !324
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !324
  %12 = load i8*, i8** %retval, !dbg !324
  ret i8* %12, !dbg !324
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @add_size_t_overflow(i64 %a, i64 %b, i64* %overflow) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %overflow.addr = alloca i64*, align 8
  %ret = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !149, metadata !177), !dbg !325
  store i64 %b, i64* %b.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !150, metadata !177), !dbg !326
  store i64* %overflow, i64** %overflow.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i64** %overflow.addr, metadata !151, metadata !177), !dbg !327
  %0 = bitcast i64* %ret to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !328
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !152, metadata !177), !dbg !329
  %1 = load i64*, i64** %overflow.addr, align 8, !dbg !330, !tbaa !196
  store i64 0, i64* %1, align 8, !dbg !331, !tbaa !173
  %2 = load i64, i64* %a.addr, align 8, !dbg !332, !tbaa !173
  %3 = load i64, i64* %b.addr, align 8, !dbg !333, !tbaa !173
  %add = add i64 %2, %3, !dbg !334
  store i64 %add, i64* %ret, align 8, !dbg !335, !tbaa !173
  %4 = load i64, i64* %ret, align 8, !dbg !336, !tbaa !173
  %5 = load i64, i64* %a.addr, align 8, !dbg !338, !tbaa !173
  %cmp = icmp ult i64 %4, %5, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %entry
  %6 = load i64*, i64** %overflow.addr, align 8, !dbg !341, !tbaa !196
  store i64 1, i64* %6, align 8, !dbg !343, !tbaa !173
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %ret, align 8, !dbg !345, !tbaa !173
  %8 = bitcast i64* %ret to i8*, !dbg !346
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !346
  ret i64 %7, !dbg !347
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_qnew_size(i64 %nwords) #1 {
entry:
  %retval = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %result = alloca %struct.mpd_t*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %nwords, i64* %nwords.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nwords.addr, metadata !79, metadata !177), !dbg !348
  %0 = bitcast %struct.mpd_t** %result to i8*, !dbg !349
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !349
  call void @llvm.dbg.declare(metadata %struct.mpd_t** %result, metadata !80, metadata !177), !dbg !350
  %1 = load i64, i64* %nwords.addr, align 8, !dbg !351, !tbaa !173
  %2 = load i64, i64* @MPD_MINALLOC, align 8, !dbg !352, !tbaa !173
  %cmp = icmp slt i64 %1, %2, !dbg !353
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !354

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* @MPD_MINALLOC, align 8, !dbg !355, !tbaa !173
  br label %cond.end, !dbg !354

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %nwords.addr, align 8, !dbg !357, !tbaa !173
  br label %cond.end, !dbg !354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !354
  store i64 %cond, i64* %nwords.addr, align 8, !dbg !359, !tbaa !173
  %call = call i8* @mpd_alloc(i64 1, i64 48), !dbg !362
  %5 = bitcast i8* %call to %struct.mpd_t*, !dbg !362
  store %struct.mpd_t* %5, %struct.mpd_t** %result, align 8, !dbg !363, !tbaa !196
  %6 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !364, !tbaa !196
  %cmp1 = icmp eq %struct.mpd_t* %6, null, !dbg !366
  br i1 %cmp1, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %cond.end
  store %struct.mpd_t* null, %struct.mpd_t** %retval, !dbg !368
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !368

if.end:                                           ; preds = %cond.end
  %7 = load i64, i64* %nwords.addr, align 8, !dbg !370, !tbaa !173
  %call2 = call i8* @mpd_alloc(i64 %7, i64 8), !dbg !371
  %8 = bitcast i8* %call2 to i64*, !dbg !371
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !372, !tbaa !196
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %9, i32 0, i32 5, !dbg !373
  store i64* %8, i64** %data, align 8, !dbg !374, !tbaa !375
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !377, !tbaa !196
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %10, i32 0, i32 5, !dbg !379
  %11 = load i64*, i64** %data3, align 8, !dbg !379, !tbaa !375
  %cmp4 = icmp eq i64* %11, null, !dbg !380
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !381

if.then.5:                                        ; preds = %if.end
  %12 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !382, !tbaa !196
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !384, !tbaa !196
  %14 = bitcast %struct.mpd_t* %13 to i8*, !dbg !384
  call void %12(i8* %14), !dbg !382
  store %struct.mpd_t* null, %struct.mpd_t** %retval, !dbg !385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !385

if.end.6:                                         ; preds = %if.end
  %15 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !386, !tbaa !196
  %flags = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %15, i32 0, i32 0, !dbg !387
  store i8 0, i8* %flags, align 1, !dbg !388, !tbaa !389
  %16 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !390, !tbaa !196
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %16, i32 0, i32 1, !dbg !391
  store i64 0, i64* %exp, align 8, !dbg !392, !tbaa !393
  %17 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !394, !tbaa !196
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %17, i32 0, i32 2, !dbg !395
  store i64 0, i64* %digits, align 8, !dbg !396, !tbaa !397
  %18 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !398, !tbaa !196
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %18, i32 0, i32 3, !dbg !399
  store i64 0, i64* %len, align 8, !dbg !400, !tbaa !401
  %19 = load i64, i64* %nwords.addr, align 8, !dbg !402, !tbaa !173
  %20 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !403, !tbaa !196
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %20, i32 0, i32 4, !dbg !404
  store i64 %19, i64* %alloc, align 8, !dbg !405, !tbaa !406
  %21 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !407, !tbaa !196
  store %struct.mpd_t* %21, %struct.mpd_t** %retval, !dbg !408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !408

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %22 = bitcast %struct.mpd_t** %result to i8*, !dbg !409
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !409
  %23 = load %struct.mpd_t*, %struct.mpd_t** %retval, !dbg !409
  ret %struct.mpd_t* %23, !dbg !409
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_qnew() #1 {
entry:
  %0 = load i64, i64* @MPD_MINALLOC, align 8, !dbg !410, !tbaa !173
  %call = call %struct.mpd_t* @mpd_qnew_size(i64 %0), !dbg !411
  ret %struct.mpd_t* %call, !dbg !412
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_new(%struct.mpd_context_t* %ctx) #1 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %result = alloca %struct.mpd_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !104, metadata !177), !dbg !413
  %0 = bitcast %struct.mpd_t** %result to i8*, !dbg !414
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !414
  call void @llvm.dbg.declare(metadata %struct.mpd_t** %result, metadata !105, metadata !177), !dbg !415
  %call = call %struct.mpd_t* @mpd_qnew(), !dbg !416
  store %struct.mpd_t* %call, %struct.mpd_t** %result, align 8, !dbg !417, !tbaa !196
  %1 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !418, !tbaa !196
  %cmp = icmp eq %struct.mpd_t* %1, null, !dbg !420
  br i1 %cmp, label %if.then, label %if.end, !dbg !421

if.then:                                          ; preds = %entry
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !422, !tbaa !196
  call void @mpd_addstatus_raise(%struct.mpd_context_t* %2, i32 512), !dbg !424
  br label %if.end, !dbg !425

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8, !dbg !426, !tbaa !196
  %4 = bitcast %struct.mpd_t** %result to i8*, !dbg !427
  call void @llvm.lifetime.end(i64 8, i8* %4) #3, !dbg !427
  ret %struct.mpd_t* %3, !dbg !428
}

declare hidden void @mpd_addstatus_raise(%struct.mpd_context_t*, i32) #5

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_switch_to_dyn(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %p = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata %struct.mpd_t** %result.addr, metadata !111, metadata !177), !dbg !429
  store i64 %nwords, i64* %nwords.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nwords.addr, metadata !112, metadata !177), !dbg !430
  store i32* %status, i32** %status.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !113, metadata !177), !dbg !431
  %0 = bitcast i64** %p to i8*, !dbg !432
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !432
  call void @llvm.dbg.declare(metadata i64** %p, metadata !114, metadata !177), !dbg !433
  %1 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !434, !tbaa !196
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %1, i32 0, i32 5, !dbg !435
  %2 = load i64*, i64** %data, align 8, !dbg !435, !tbaa !375
  store i64* %2, i64** %p, align 8, !dbg !433, !tbaa !196
  %3 = load i64, i64* %nwords.addr, align 8, !dbg !436, !tbaa !173
  %call = call i8* @mpd_alloc(i64 %3, i64 8), !dbg !437
  %4 = bitcast i8* %call to i64*, !dbg !437
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !438, !tbaa !196
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5, !dbg !439
  store i64* %4, i64** %data1, align 8, !dbg !440, !tbaa !375
  %6 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !441, !tbaa !196
  %data2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %6, i32 0, i32 5, !dbg !443
  %7 = load i64*, i64** %data2, align 8, !dbg !443, !tbaa !375
  %cmp = icmp eq i64* %7, null, !dbg !444
  br i1 %cmp, label %if.then, label %if.end, !dbg !445

if.then:                                          ; preds = %entry
  %8 = load i64*, i64** %p, align 8, !dbg !446, !tbaa !196
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !448, !tbaa !196
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %9, i32 0, i32 5, !dbg !449
  store i64* %8, i64** %data3, align 8, !dbg !450, !tbaa !375
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !451, !tbaa !196
  call void @mpd_set_qnan(%struct.mpd_t* %10), !dbg !452
  %11 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !453, !tbaa !196
  call void @mpd_set_positive(%struct.mpd_t* %11), !dbg !454
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !455, !tbaa !196
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %12, i32 0, i32 3, !dbg !456
  store i64 0, i64* %len, align 8, !dbg !457, !tbaa !401
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !458, !tbaa !196
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %13, i32 0, i32 2, !dbg !459
  store i64 0, i64* %digits, align 8, !dbg !460, !tbaa !397
  %14 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !461, !tbaa !196
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %14, i32 0, i32 1, !dbg !462
  store i64 0, i64* %exp, align 8, !dbg !463, !tbaa !393
  %15 = load i32*, i32** %status.addr, align 8, !dbg !464, !tbaa !196
  %16 = load i32, i32* %15, align 4, !dbg !465, !tbaa !466
  %or = or i32 %16, 512, !dbg !465
  store i32 %or, i32* %15, align 4, !dbg !465, !tbaa !466
  store i32 0, i32* %retval, !dbg !468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !468

if.end:                                           ; preds = %entry
  %17 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !469, !tbaa !196
  %data4 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %17, i32 0, i32 5, !dbg !470
  %18 = load i64*, i64** %data4, align 8, !dbg !470, !tbaa !375
  %19 = bitcast i64* %18 to i8*, !dbg !471
  %20 = load i64*, i64** %p, align 8, !dbg !472, !tbaa !196
  %21 = bitcast i64* %20 to i8*, !dbg !471
  %22 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !473, !tbaa !196
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %22, i32 0, i32 4, !dbg !474
  %23 = load i64, i64* %alloc, align 8, !dbg !474, !tbaa !406
  %mul = mul i64 %23, 8, !dbg !475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 %mul, i32 8, i1 false), !dbg !471
  %24 = load i64, i64* %nwords.addr, align 8, !dbg !476, !tbaa !173
  %25 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !477, !tbaa !196
  %alloc5 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %25, i32 0, i32 4, !dbg !478
  store i64 %24, i64* %alloc5, align 8, !dbg !479, !tbaa !406
  %26 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !480, !tbaa !196
  call void @mpd_set_dynamic_data(%struct.mpd_t* %26), !dbg !481
  store i32 1, i32* %retval, !dbg !482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast i64** %p to i8*, !dbg !483
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !483
  %28 = load i32, i32* %retval, !dbg !483
  ret i32 %28, !dbg !483
}

declare hidden void @mpd_set_qnan(%struct.mpd_t*) #5

declare hidden void @mpd_set_positive(%struct.mpd_t*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare hidden void @mpd_set_dynamic_data(%struct.mpd_t*) #5

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_switch_to_dyn_zero(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %p = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata %struct.mpd_t** %result.addr, metadata !117, metadata !177), !dbg !484
  store i64 %nwords, i64* %nwords.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nwords.addr, metadata !118, metadata !177), !dbg !485
  store i32* %status, i32** %status.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !119, metadata !177), !dbg !486
  %0 = bitcast i64** %p to i8*, !dbg !487
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !487
  call void @llvm.dbg.declare(metadata i64** %p, metadata !120, metadata !177), !dbg !488
  %1 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !489, !tbaa !196
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %1, i32 0, i32 5, !dbg !490
  %2 = load i64*, i64** %data, align 8, !dbg !490, !tbaa !375
  store i64* %2, i64** %p, align 8, !dbg !488, !tbaa !196
  %3 = load i64, i64* %nwords.addr, align 8, !dbg !491, !tbaa !173
  %call = call i8* @mpd_calloc(i64 %3, i64 8), !dbg !492
  %4 = bitcast i8* %call to i64*, !dbg !492
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !493, !tbaa !196
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5, !dbg !494
  store i64* %4, i64** %data1, align 8, !dbg !495, !tbaa !375
  %6 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !496, !tbaa !196
  %data2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %6, i32 0, i32 5, !dbg !498
  %7 = load i64*, i64** %data2, align 8, !dbg !498, !tbaa !375
  %cmp = icmp eq i64* %7, null, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %8 = load i64*, i64** %p, align 8, !dbg !501, !tbaa !196
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !503, !tbaa !196
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %9, i32 0, i32 5, !dbg !504
  store i64* %8, i64** %data3, align 8, !dbg !505, !tbaa !375
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !506, !tbaa !196
  call void @mpd_set_qnan(%struct.mpd_t* %10), !dbg !507
  %11 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !508, !tbaa !196
  call void @mpd_set_positive(%struct.mpd_t* %11), !dbg !509
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !510, !tbaa !196
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %12, i32 0, i32 3, !dbg !511
  store i64 0, i64* %len, align 8, !dbg !512, !tbaa !401
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !513, !tbaa !196
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %13, i32 0, i32 2, !dbg !514
  store i64 0, i64* %digits, align 8, !dbg !515, !tbaa !397
  %14 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !516, !tbaa !196
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %14, i32 0, i32 1, !dbg !517
  store i64 0, i64* %exp, align 8, !dbg !518, !tbaa !393
  %15 = load i32*, i32** %status.addr, align 8, !dbg !519, !tbaa !196
  %16 = load i32, i32* %15, align 4, !dbg !520, !tbaa !466
  %or = or i32 %16, 512, !dbg !520
  store i32 %or, i32* %15, align 4, !dbg !520, !tbaa !466
  store i32 0, i32* %retval, !dbg !521
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !521

if.end:                                           ; preds = %entry
  %17 = load i64, i64* %nwords.addr, align 8, !dbg !522, !tbaa !173
  %18 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !523, !tbaa !196
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %18, i32 0, i32 4, !dbg !524
  store i64 %17, i64* %alloc, align 8, !dbg !525, !tbaa !406
  %19 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !526, !tbaa !196
  call void @mpd_set_dynamic_data(%struct.mpd_t* %19), !dbg !527
  store i32 1, i32* %retval, !dbg !528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !528

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i64** %p to i8*, !dbg !529
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !529
  %21 = load i32, i32* %retval, !dbg !529
  ret i32 %21, !dbg !529
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_realloc_dyn(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %err = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata %struct.mpd_t** %result.addr, metadata !123, metadata !177), !dbg !530
  store i64 %nwords, i64* %nwords.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %nwords.addr, metadata !124, metadata !177), !dbg !531
  store i32* %status, i32** %status.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !125, metadata !177), !dbg !532
  call void @llvm.lifetime.start(i64 1, i8* %err) #3, !dbg !533
  call void @llvm.dbg.declare(metadata i8* %err, metadata !126, metadata !177), !dbg !534
  store i8 0, i8* %err, align 1, !dbg !534, !tbaa !278
  %0 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !535, !tbaa !196
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %0, i32 0, i32 5, !dbg !536
  %1 = load i64*, i64** %data, align 8, !dbg !536, !tbaa !375
  %2 = bitcast i64* %1 to i8*, !dbg !535
  %3 = load i64, i64* %nwords.addr, align 8, !dbg !537, !tbaa !173
  %call = call i8* @mpd_realloc(i8* %2, i64 %3, i64 8, i8* %err), !dbg !538
  %4 = bitcast i8* %call to i64*, !dbg !538
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !539, !tbaa !196
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5, !dbg !540
  store i64* %4, i64** %data1, align 8, !dbg !541, !tbaa !375
  %6 = load i8, i8* %err, align 1, !dbg !542, !tbaa !278
  %tobool = icmp ne i8 %6, 0, !dbg !542
  br i1 %tobool, label %if.else, label %if.then, !dbg !544

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %nwords.addr, align 8, !dbg !545, !tbaa !173
  %8 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !547, !tbaa !196
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 4, !dbg !548
  store i64 %7, i64* %alloc, align 8, !dbg !549, !tbaa !406
  br label %if.end.4, !dbg !550

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %nwords.addr, align 8, !dbg !551, !tbaa !173
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !553, !tbaa !196
  %alloc2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %10, i32 0, i32 4, !dbg !554
  %11 = load i64, i64* %alloc2, align 8, !dbg !554, !tbaa !406
  %cmp = icmp sgt i64 %9, %11, !dbg !555
  br i1 %cmp, label %if.then.3, label %if.end, !dbg !556

if.then.3:                                        ; preds = %if.else
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !557, !tbaa !196
  call void @mpd_set_qnan(%struct.mpd_t* %12), !dbg !559
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !560, !tbaa !196
  call void @mpd_set_positive(%struct.mpd_t* %13), !dbg !561
  %14 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !562, !tbaa !196
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %14, i32 0, i32 3, !dbg !563
  store i64 0, i64* %len, align 8, !dbg !564, !tbaa !401
  %15 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !565, !tbaa !196
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %15, i32 0, i32 2, !dbg !566
  store i64 0, i64* %digits, align 8, !dbg !567, !tbaa !397
  %16 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8, !dbg !568, !tbaa !196
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %16, i32 0, i32 1, !dbg !569
  store i64 0, i64* %exp, align 8, !dbg !570, !tbaa !393
  %17 = load i32*, i32** %status.addr, align 8, !dbg !571, !tbaa !196
  %18 = load i32, i32* %17, align 4, !dbg !572, !tbaa !466
  %or = or i32 %18, 512, !dbg !572
  store i32 %or, i32* %17, align 4, !dbg !572, !tbaa !466
  store i32 0, i32* %retval, !dbg !573
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !573

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  store i32 1, i32* %retval, !dbg !574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !574

cleanup:                                          ; preds = %if.end.4, %if.then.3
  call void @llvm.lifetime.end(i64 1, i8* %err) #3, !dbg !575
  %19 = load i32, i32* %retval, !dbg !575
  ret i32 %19, !dbg !575
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #4 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i64** %hi.addr, metadata !141, metadata !177), !dbg !576
  store i64* %lo, i64** %lo.addr, align 8, !tbaa !196
  call void @llvm.dbg.declare(metadata i64** %lo.addr, metadata !142, metadata !177), !dbg !577
  store i64 %a, i64* %a.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !143, metadata !177), !dbg !578
  store i64 %b, i64* %b.addr, align 8, !tbaa !173
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !144, metadata !177), !dbg !579
  %0 = bitcast i64* %h to i8*, !dbg !580
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !580
  call void @llvm.dbg.declare(metadata i64* %h, metadata !145, metadata !177), !dbg !581
  %1 = bitcast i64* %l to i8*, !dbg !580
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !580
  call void @llvm.dbg.declare(metadata i64* %l, metadata !146, metadata !177), !dbg !582
  %2 = load i64, i64* %a.addr, align 8, !dbg !583, !tbaa !173
  %3 = load i64, i64* %b.addr, align 8, !dbg !584, !tbaa !173
  %4 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %3) #6, !dbg !585, !srcloc !586
  %asmresult = extractvalue { i64, i64 } %4, 0, !dbg !585
  %asmresult1 = extractvalue { i64, i64 } %4, 1, !dbg !585
  store i64 %asmresult, i64* %h, align 8, !dbg !585, !tbaa !173
  store i64 %asmresult1, i64* %l, align 8, !dbg !585, !tbaa !173
  %5 = load i64, i64* %h, align 8, !dbg !587, !tbaa !173
  %6 = load i64*, i64** %hi.addr, align 8, !dbg !588, !tbaa !196
  store i64 %5, i64* %6, align 8, !dbg !589, !tbaa !173
  %7 = load i64, i64* %l, align 8, !dbg !590, !tbaa !173
  %8 = load i64*, i64** %lo.addr, align 8, !dbg !591, !tbaa !196
  store i64 %7, i64* %8, align 8, !dbg !592, !tbaa !173
  %9 = bitcast i64* %l to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !593
  %10 = bitcast i64* %h to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !593
  ret void, !dbg !593
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!169, !170, !171}
!llvm.ident = !{!172}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !14, globals: !153)
!1 = !DIFile(filename: "memory.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !9, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_size_t", file: !5, line: 152, baseType: !6)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/mpdecimal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 62, baseType: !8)
!7 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_uint_t", file: !5, line: 149, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 55, baseType: !8)
!13 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !{!15, !25, !33, !38, !52, !61, !81, !84, !106, !115, !121, !127, !137, !147}
!15 = !DISubprogram(name: "mpd_callocfunc_em", scope: !16, file: !16, line: 49, type: !17, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i64)* @mpd_callocfunc_em, variables: !19)
!16 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/memory.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DISubroutineType(types: !18)
!18 = !{!9, !6, !6}
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmemb", arg: 1, scope: !15, file: !16, line: 49, type: !6)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !15, file: !16, line: 49, type: !6)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !15, file: !16, line: 51, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "req", scope: !15, file: !16, line: 52, type: !6)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !15, file: !16, line: 53, type: !4)
!25 = !DISubprogram(name: "mpd_alloc", scope: !16, file: !16, line: 81, type: !26, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i64)* @mpd_alloc, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!9, !4, !4}
!28 = !{!29, !30, !31, !32}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmemb", arg: 1, scope: !25, file: !16, line: 81, type: !4)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !25, file: !16, line: 81, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "req", scope: !25, file: !16, line: 83, type: !4)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !25, file: !16, line: 83, type: !4)
!33 = !DISubprogram(name: "mpd_calloc", scope: !16, file: !16, line: 95, type: !26, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i64)* @mpd_calloc, variables: !34)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmemb", arg: 1, scope: !33, file: !16, line: 95, type: !4)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !33, file: !16, line: 95, type: !4)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !33, file: !16, line: 97, type: !4)
!38 = !DISubprogram(name: "mpd_realloc", scope: !16, file: !16, line: 109, type: !39, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64, i64, i8*)* @mpd_realloc, variables: !44)
!39 = !DISubroutineType(types: !40)
!40 = !{!9, !9, !4, !4, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 48, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !38, file: !16, line: 109, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmemb", arg: 2, scope: !38, file: !16, line: 109, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !38, file: !16, line: 109, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 4, scope: !38, file: !16, line: 109, type: !41)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !38, file: !16, line: 111, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "req", scope: !38, file: !16, line: 112, type: !4)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !38, file: !16, line: 112, type: !4)
!52 = !DISubprogram(name: "mpd_sh_alloc", scope: !16, file: !16, line: 131, type: !53, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i64, i64)* @mpd_sh_alloc, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!9, !4, !4, !4}
!55 = !{!56, !57, !58, !59, !60}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "struct_size", arg: 1, scope: !52, file: !16, line: 131, type: !4)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmemb", arg: 2, scope: !52, file: !16, line: 131, type: !4)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !52, file: !16, line: 131, type: !4)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "req", scope: !52, file: !16, line: 133, type: !4)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !52, file: !16, line: 133, type: !4)
!61 = !DISubprogram(name: "mpd_qnew_size", scope: !16, file: !16, line: 152, type: !62, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct.mpd_t* (i64)* @mpd_qnew_size, variables: !78)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !70}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_t", file: !5, line: 379, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "mpd_t", file: !5, line: 372, size: 384, align: 64, elements: !67)
!67 = !{!68, !69, !74, !75, !76, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !5, line: 373, baseType: !42, size: 8, align: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !66, file: !5, line: 374, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_ssize_t", file: !5, line: 157, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !72, line: 197, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!73 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !66, file: !5, line: 375, baseType: !70, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, file: !5, line: 376, baseType: !70, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !66, file: !5, line: 377, baseType: !70, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !66, file: !5, line: 378, baseType: !10, size: 64, align: 64, offset: 320)
!78 = !{!79, !80}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nwords", arg: 1, scope: !61, file: !16, line: 152, type: !70)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !61, file: !16, line: 154, type: !64)
!81 = !DISubprogram(name: "mpd_qnew", scope: !16, file: !16, line: 181, type: !82, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: %struct.mpd_t* ()* @mpd_qnew, variables: !2)
!82 = !DISubroutineType(types: !83)
!83 = !{!64}
!84 = !DISubprogram(name: "mpd_new", scope: !16, file: !16, line: 189, type: !85, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: %struct.mpd_t* (%struct.mpd_context_t*)* @mpd_new, variables: !103)
!85 = !DISubroutineType(types: !86)
!86 = !{!64, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_context_t", file: !5, line: 270, baseType: !89)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "mpd_context_t", file: !5, line: 260, size: 384, align: 64, elements: !90)
!90 = !{!91, !92, !93, !94, !97, !98, !99, !101, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prec", scope: !89, file: !5, line: 261, baseType: !70, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !89, file: !5, line: 262, baseType: !70, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !89, file: !5, line: 263, baseType: !70, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !89, file: !5, line: 264, baseType: !95, size: 32, align: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 51, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !89, file: !5, line: 265, baseType: !95, size: 32, align: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "newtrap", scope: !89, file: !5, line: 266, baseType: !95, size: 32, align: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !89, file: !5, line: 267, baseType: !100, size: 32, align: 32, offset: 288)
!100 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !89, file: !5, line: 268, baseType: !100, size: 32, align: 32, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "allcr", scope: !89, file: !5, line: 269, baseType: !100, size: 32, align: 32, offset: 352)
!103 = !{!104, !105}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !84, file: !16, line: 189, type: !87)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !84, file: !16, line: 191, type: !64)
!106 = !DISubprogram(name: "mpd_switch_to_dyn", scope: !16, file: !16, line: 209, type: !107, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_t*, i64, i32*)* @mpd_switch_to_dyn, variables: !110)
!107 = !DISubroutineType(types: !108)
!108 = !{!100, !64, !70, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !106, file: !16, line: 209, type: !64)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nwords", arg: 2, scope: !106, file: !16, line: 209, type: !70)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 3, scope: !106, file: !16, line: 209, type: !109)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !106, file: !16, line: 211, type: !10)
!115 = !DISubprogram(name: "mpd_switch_to_dyn_zero", scope: !16, file: !16, line: 238, type: !107, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_t*, i64, i32*)* @mpd_switch_to_dyn_zero, variables: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !115, file: !16, line: 238, type: !64)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nwords", arg: 2, scope: !115, file: !16, line: 238, type: !70)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 3, scope: !115, file: !16, line: 238, type: !109)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !115, file: !16, line: 240, type: !10)
!121 = !DISubprogram(name: "mpd_realloc_dyn", scope: !16, file: !16, line: 273, type: !107, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_t*, i64, i32*)* @mpd_realloc_dyn, variables: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !121, file: !16, line: 273, type: !64)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nwords", arg: 2, scope: !121, file: !16, line: 273, type: !70)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 3, scope: !121, file: !16, line: 273, type: !109)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !121, file: !16, line: 275, type: !42)
!127 = !DISubprogram(name: "mul_size_t_overflow", scope: !128, file: !128, line: 637, type: !129, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64*)* @mul_size_t_overflow, variables: !132)
!128 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!129 = !DISubroutineType(types: !130)
!130 = !{!4, !4, !4, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!132 = !{!133, !134, !135, !136}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !127, file: !128, line: 637, type: !4)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !127, file: !128, line: 637, type: !4)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "overflow", arg: 3, scope: !127, file: !128, line: 637, type: !131)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !127, file: !128, line: 639, type: !11)
!137 = !DISubprogram(name: "_mpd_mul_words", scope: !128, file: !128, line: 206, type: !138, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: void (i64*, i64*, i64, i64)* @_mpd_mul_words, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !10, !10, !11, !11}
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 1, scope: !137, file: !128, line: 206, type: !10)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 2, scope: !137, file: !128, line: 206, type: !10)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 3, scope: !137, file: !128, line: 206, type: !11)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !137, file: !128, line: 206, type: !11)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !137, file: !128, line: 208, type: !11)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !137, file: !128, line: 208, type: !11)
!147 = !DISubprogram(name: "add_size_t_overflow", scope: !128, file: !128, line: 626, type: !129, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64, i64*)* @add_size_t_overflow, variables: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !147, file: !128, line: 626, type: !4)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !147, file: !128, line: 626, type: !4)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "overflow", arg: 3, scope: !147, file: !128, line: 626, type: !131)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !147, file: !128, line: 628, type: !4)
!153 = !{!154, !155, !159, !163, !165}
!154 = !DIGlobalVariable(name: "MPD_MINALLOC", scope: !0, file: !16, line: 38, type: !70, isLocal: false, isDefinition: true, variable: i64* @MPD_MINALLOC)
!155 = !DIGlobalVariable(name: "mpd_mallocfunc", scope: !0, file: !16, line: 41, type: !156, isLocal: false, isDefinition: true, variable: i8* (i64)** @mpd_mallocfunc)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!9, !6}
!159 = !DIGlobalVariable(name: "mpd_reallocfunc", scope: !0, file: !16, line: 42, type: !160, isLocal: false, isDefinition: true, variable: i8* (i8*, i64)** @mpd_reallocfunc)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!9, !9, !6}
!163 = !DIGlobalVariable(name: "mpd_callocfunc", scope: !0, file: !16, line: 43, type: !164, isLocal: false, isDefinition: true, variable: i8* (i64, i64)** @mpd_callocfunc)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!165 = !DIGlobalVariable(name: "mpd_free", scope: !0, file: !16, line: 44, type: !166, isLocal: false, isDefinition: true, variable: void (i8*)** @mpd_free)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !9}
!169 = !{i32 2, !"Dwarf Version", i32 4}
!170 = !{i32 2, !"Debug Info Version", i32 3}
!171 = !{i32 1, !"PIC Level", i32 2}
!172 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!173 = !{!174, !174, i64 0}
!174 = !{!"long", !175, i64 0}
!175 = !{!"omnipotent char", !176, i64 0}
!176 = !{!"Simple C/C++ TBAA"}
!177 = !DIExpression()
!178 = !DILocation(line: 49, column: 26, scope: !15)
!179 = !DILocation(line: 49, column: 40, scope: !15)
!180 = !DILocation(line: 51, column: 5, scope: !15)
!181 = !DILocation(line: 51, column: 11, scope: !15)
!182 = !DILocation(line: 52, column: 5, scope: !15)
!183 = !DILocation(line: 52, column: 12, scope: !15)
!184 = !DILocation(line: 53, column: 5, scope: !15)
!185 = !DILocation(line: 53, column: 16, scope: !15)
!186 = !DILocation(line: 62, column: 43, scope: !15)
!187 = !DILocation(line: 62, column: 62, scope: !15)
!188 = !DILocation(line: 62, column: 11, scope: !15)
!189 = !DILocation(line: 62, column: 9, scope: !15)
!190 = !DILocation(line: 64, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !15, file: !16, line: 64, column: 9)
!192 = !DILocation(line: 64, column: 9, scope: !15)
!193 = !DILocation(line: 65, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !16, line: 64, column: 19)
!195 = !DILocation(line: 68, column: 11, scope: !15)
!196 = !{!197, !197, i64 0}
!197 = !{!"any pointer", !175, i64 0}
!198 = !DILocation(line: 68, column: 26, scope: !15)
!199 = !DILocation(line: 68, column: 9, scope: !15)
!200 = !DILocation(line: 69, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !15, file: !16, line: 69, column: 9)
!202 = !DILocation(line: 69, column: 13, scope: !201)
!203 = !DILocation(line: 69, column: 9, scope: !15)
!204 = !DILocation(line: 70, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !16, line: 69, column: 28)
!206 = !DILocation(line: 73, column: 12, scope: !15)
!207 = !DILocation(line: 73, column: 20, scope: !15)
!208 = !DILocation(line: 73, column: 5, scope: !15)
!209 = !DILocation(line: 75, column: 12, scope: !15)
!210 = !DILocation(line: 75, column: 5, scope: !15)
!211 = !DILocation(line: 76, column: 1, scope: !15)
!212 = !DILocation(line: 637, column: 32, scope: !127)
!213 = !DILocation(line: 637, column: 46, scope: !127)
!214 = !DILocation(line: 637, column: 61, scope: !127)
!215 = !DILocation(line: 639, column: 5, scope: !127)
!216 = !DILocation(line: 639, column: 16, scope: !127)
!217 = !DILocation(line: 641, column: 34, scope: !127)
!218 = !DILocation(line: 641, column: 61, scope: !127)
!219 = !DILocation(line: 642, column: 32, scope: !127)
!220 = !DILocation(line: 641, column: 5, scope: !127)
!221 = !DILocation(line: 643, column: 12, scope: !127)
!222 = !DILocation(line: 644, column: 1, scope: !127)
!223 = !DILocation(line: 643, column: 5, scope: !127)
!224 = !DILocation(line: 81, column: 22, scope: !25)
!225 = !DILocation(line: 81, column: 40, scope: !25)
!226 = !DILocation(line: 83, column: 5, scope: !25)
!227 = !DILocation(line: 83, column: 16, scope: !25)
!228 = !DILocation(line: 83, column: 21, scope: !25)
!229 = !DILocation(line: 85, column: 31, scope: !25)
!230 = !DILocation(line: 85, column: 38, scope: !25)
!231 = !DILocation(line: 85, column: 11, scope: !25)
!232 = !DILocation(line: 85, column: 9, scope: !25)
!233 = !DILocation(line: 86, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !25, file: !16, line: 86, column: 9)
!235 = !DILocation(line: 86, column: 9, scope: !25)
!236 = !DILocation(line: 87, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !16, line: 86, column: 19)
!238 = !DILocation(line: 90, column: 12, scope: !25)
!239 = !DILocation(line: 90, column: 27, scope: !25)
!240 = !DILocation(line: 90, column: 5, scope: !25)
!241 = !DILocation(line: 91, column: 1, scope: !25)
!242 = !DILocation(line: 95, column: 23, scope: !33)
!243 = !DILocation(line: 95, column: 41, scope: !33)
!244 = !DILocation(line: 97, column: 5, scope: !33)
!245 = !DILocation(line: 97, column: 16, scope: !33)
!246 = !DILocation(line: 99, column: 31, scope: !33)
!247 = !DILocation(line: 99, column: 38, scope: !33)
!248 = !DILocation(line: 99, column: 11, scope: !33)
!249 = !DILocation(line: 100, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !33, file: !16, line: 100, column: 9)
!251 = !DILocation(line: 100, column: 9, scope: !33)
!252 = !DILocation(line: 101, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !16, line: 100, column: 19)
!254 = !DILocation(line: 104, column: 12, scope: !33)
!255 = !DILocation(line: 104, column: 27, scope: !33)
!256 = !DILocation(line: 104, column: 34, scope: !33)
!257 = !DILocation(line: 104, column: 5, scope: !33)
!258 = !DILocation(line: 105, column: 1, scope: !33)
!259 = !DILocation(line: 109, column: 19, scope: !38)
!260 = !DILocation(line: 109, column: 35, scope: !38)
!261 = !DILocation(line: 109, column: 53, scope: !38)
!262 = !DILocation(line: 109, column: 68, scope: !38)
!263 = !DILocation(line: 111, column: 5, scope: !38)
!264 = !DILocation(line: 111, column: 11, scope: !38)
!265 = !DILocation(line: 112, column: 5, scope: !38)
!266 = !DILocation(line: 112, column: 16, scope: !38)
!267 = !DILocation(line: 112, column: 21, scope: !38)
!268 = !DILocation(line: 114, column: 31, scope: !38)
!269 = !DILocation(line: 114, column: 38, scope: !38)
!270 = !DILocation(line: 114, column: 11, scope: !38)
!271 = !DILocation(line: 114, column: 9, scope: !38)
!272 = !DILocation(line: 115, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !38, file: !16, line: 115, column: 9)
!274 = !DILocation(line: 115, column: 9, scope: !38)
!275 = !DILocation(line: 116, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !16, line: 115, column: 19)
!277 = !DILocation(line: 116, column: 14, scope: !276)
!278 = !{!175, !175, i64 0}
!279 = !DILocation(line: 117, column: 16, scope: !276)
!280 = !DILocation(line: 117, column: 9, scope: !276)
!281 = !DILocation(line: 120, column: 11, scope: !38)
!282 = !DILocation(line: 120, column: 27, scope: !38)
!283 = !DILocation(line: 120, column: 32, scope: !38)
!284 = !DILocation(line: 120, column: 9, scope: !38)
!285 = !DILocation(line: 121, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !38, file: !16, line: 121, column: 9)
!287 = !DILocation(line: 121, column: 13, scope: !286)
!288 = !DILocation(line: 121, column: 9, scope: !38)
!289 = !DILocation(line: 122, column: 10, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !16, line: 121, column: 28)
!291 = !DILocation(line: 122, column: 14, scope: !290)
!292 = !DILocation(line: 123, column: 16, scope: !290)
!293 = !DILocation(line: 123, column: 9, scope: !290)
!294 = !DILocation(line: 126, column: 12, scope: !38)
!295 = !DILocation(line: 126, column: 5, scope: !38)
!296 = !DILocation(line: 127, column: 1, scope: !38)
!297 = !DILocation(line: 131, column: 25, scope: !52)
!298 = !DILocation(line: 131, column: 49, scope: !52)
!299 = !DILocation(line: 131, column: 67, scope: !52)
!300 = !DILocation(line: 133, column: 5, scope: !52)
!301 = !DILocation(line: 133, column: 16, scope: !52)
!302 = !DILocation(line: 133, column: 21, scope: !52)
!303 = !DILocation(line: 135, column: 31, scope: !52)
!304 = !DILocation(line: 135, column: 38, scope: !52)
!305 = !DILocation(line: 135, column: 11, scope: !52)
!306 = !DILocation(line: 135, column: 9, scope: !52)
!307 = !DILocation(line: 136, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !52, file: !16, line: 136, column: 9)
!309 = !DILocation(line: 136, column: 9, scope: !52)
!310 = !DILocation(line: 137, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !16, line: 136, column: 19)
!312 = !DILocation(line: 140, column: 31, scope: !52)
!313 = !DILocation(line: 140, column: 36, scope: !52)
!314 = !DILocation(line: 140, column: 11, scope: !52)
!315 = !DILocation(line: 140, column: 9, scope: !52)
!316 = !DILocation(line: 141, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !52, file: !16, line: 141, column: 9)
!318 = !DILocation(line: 141, column: 9, scope: !52)
!319 = !DILocation(line: 142, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !16, line: 141, column: 19)
!321 = !DILocation(line: 145, column: 12, scope: !52)
!322 = !DILocation(line: 145, column: 27, scope: !52)
!323 = !DILocation(line: 145, column: 5, scope: !52)
!324 = !DILocation(line: 146, column: 1, scope: !52)
!325 = !DILocation(line: 626, column: 32, scope: !147)
!326 = !DILocation(line: 626, column: 46, scope: !147)
!327 = !DILocation(line: 626, column: 61, scope: !147)
!328 = !DILocation(line: 628, column: 5, scope: !147)
!329 = !DILocation(line: 628, column: 16, scope: !147)
!330 = !DILocation(line: 630, column: 6, scope: !147)
!331 = !DILocation(line: 630, column: 15, scope: !147)
!332 = !DILocation(line: 631, column: 11, scope: !147)
!333 = !DILocation(line: 631, column: 15, scope: !147)
!334 = !DILocation(line: 631, column: 13, scope: !147)
!335 = !DILocation(line: 631, column: 9, scope: !147)
!336 = !DILocation(line: 632, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !147, file: !128, line: 632, column: 9)
!338 = !DILocation(line: 632, column: 15, scope: !337)
!339 = !DILocation(line: 632, column: 13, scope: !337)
!340 = !DILocation(line: 632, column: 9, scope: !147)
!341 = !DILocation(line: 632, column: 19, scope: !342)
!342 = !DILexicalBlockFile(scope: !337, file: !128, discriminator: 1)
!343 = !DILocation(line: 632, column: 28, scope: !337)
!344 = !DILocation(line: 632, column: 18, scope: !337)
!345 = !DILocation(line: 633, column: 12, scope: !147)
!346 = !DILocation(line: 634, column: 1, scope: !147)
!347 = !DILocation(line: 633, column: 5, scope: !147)
!348 = !DILocation(line: 152, column: 27, scope: !61)
!349 = !DILocation(line: 154, column: 5, scope: !61)
!350 = !DILocation(line: 154, column: 12, scope: !61)
!351 = !DILocation(line: 156, column: 15, scope: !61)
!352 = !DILocation(line: 156, column: 24, scope: !61)
!353 = !DILocation(line: 156, column: 22, scope: !61)
!354 = !DILocation(line: 156, column: 14, scope: !61)
!355 = !DILocation(line: 156, column: 40, scope: !356)
!356 = !DILexicalBlockFile(scope: !61, file: !16, discriminator: 1)
!357 = !DILocation(line: 156, column: 55, scope: !358)
!358 = !DILexicalBlockFile(scope: !61, file: !16, discriminator: 2)
!359 = !DILocation(line: 156, column: 12, scope: !360)
!360 = !DILexicalBlockFile(scope: !361, file: !16, discriminator: 4)
!361 = !DILexicalBlockFile(scope: !61, file: !16, discriminator: 3)
!362 = !DILocation(line: 158, column: 14, scope: !61)
!363 = !DILocation(line: 158, column: 12, scope: !61)
!364 = !DILocation(line: 159, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !61, file: !16, line: 159, column: 9)
!366 = !DILocation(line: 159, column: 16, scope: !365)
!367 = !DILocation(line: 159, column: 9, scope: !61)
!368 = !DILocation(line: 160, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !16, line: 159, column: 31)
!370 = !DILocation(line: 163, column: 30, scope: !61)
!371 = !DILocation(line: 163, column: 20, scope: !61)
!372 = !DILocation(line: 163, column: 5, scope: !61)
!373 = !DILocation(line: 163, column: 13, scope: !61)
!374 = !DILocation(line: 163, column: 18, scope: !61)
!375 = !{!376, !197, i64 40}
!376 = !{!"mpd_t", !175, i64 0, !174, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !197, i64 40}
!377 = !DILocation(line: 164, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !61, file: !16, line: 164, column: 9)
!379 = !DILocation(line: 164, column: 17, scope: !378)
!380 = !DILocation(line: 164, column: 22, scope: !378)
!381 = !DILocation(line: 164, column: 9, scope: !61)
!382 = !DILocation(line: 165, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !16, line: 164, column: 37)
!384 = !DILocation(line: 165, column: 18, scope: !383)
!385 = !DILocation(line: 166, column: 9, scope: !383)
!386 = !DILocation(line: 169, column: 5, scope: !61)
!387 = !DILocation(line: 169, column: 13, scope: !61)
!388 = !DILocation(line: 169, column: 19, scope: !61)
!389 = !{!376, !175, i64 0}
!390 = !DILocation(line: 170, column: 5, scope: !61)
!391 = !DILocation(line: 170, column: 13, scope: !61)
!392 = !DILocation(line: 170, column: 17, scope: !61)
!393 = !{!376, !174, i64 8}
!394 = !DILocation(line: 171, column: 5, scope: !61)
!395 = !DILocation(line: 171, column: 13, scope: !61)
!396 = !DILocation(line: 171, column: 20, scope: !61)
!397 = !{!376, !174, i64 16}
!398 = !DILocation(line: 172, column: 5, scope: !61)
!399 = !DILocation(line: 172, column: 13, scope: !61)
!400 = !DILocation(line: 172, column: 17, scope: !61)
!401 = !{!376, !174, i64 24}
!402 = !DILocation(line: 173, column: 21, scope: !61)
!403 = !DILocation(line: 173, column: 5, scope: !61)
!404 = !DILocation(line: 173, column: 13, scope: !61)
!405 = !DILocation(line: 173, column: 19, scope: !61)
!406 = !{!376, !174, i64 32}
!407 = !DILocation(line: 175, column: 12, scope: !61)
!408 = !DILocation(line: 175, column: 5, scope: !61)
!409 = !DILocation(line: 176, column: 1, scope: !61)
!410 = !DILocation(line: 183, column: 26, scope: !81)
!411 = !DILocation(line: 183, column: 12, scope: !81)
!412 = !DILocation(line: 183, column: 5, scope: !81)
!413 = !DILocation(line: 189, column: 24, scope: !84)
!414 = !DILocation(line: 191, column: 5, scope: !84)
!415 = !DILocation(line: 191, column: 12, scope: !84)
!416 = !DILocation(line: 193, column: 14, scope: !84)
!417 = !DILocation(line: 193, column: 12, scope: !84)
!418 = !DILocation(line: 194, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !84, file: !16, line: 194, column: 9)
!420 = !DILocation(line: 194, column: 16, scope: !419)
!421 = !DILocation(line: 194, column: 9, scope: !84)
!422 = !DILocation(line: 195, column: 29, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !16, line: 194, column: 31)
!424 = !DILocation(line: 195, column: 9, scope: !423)
!425 = !DILocation(line: 196, column: 5, scope: !423)
!426 = !DILocation(line: 197, column: 12, scope: !84)
!427 = !DILocation(line: 198, column: 1, scope: !84)
!428 = !DILocation(line: 197, column: 5, scope: !84)
!429 = !DILocation(line: 209, column: 26, scope: !106)
!430 = !DILocation(line: 209, column: 46, scope: !106)
!431 = !DILocation(line: 209, column: 64, scope: !106)
!432 = !DILocation(line: 211, column: 5, scope: !106)
!433 = !DILocation(line: 211, column: 17, scope: !106)
!434 = !DILocation(line: 211, column: 21, scope: !106)
!435 = !DILocation(line: 211, column: 29, scope: !106)
!436 = !DILocation(line: 215, column: 30, scope: !106)
!437 = !DILocation(line: 215, column: 20, scope: !106)
!438 = !DILocation(line: 215, column: 5, scope: !106)
!439 = !DILocation(line: 215, column: 13, scope: !106)
!440 = !DILocation(line: 215, column: 18, scope: !106)
!441 = !DILocation(line: 216, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !106, file: !16, line: 216, column: 9)
!443 = !DILocation(line: 216, column: 17, scope: !442)
!444 = !DILocation(line: 216, column: 22, scope: !442)
!445 = !DILocation(line: 216, column: 9, scope: !106)
!446 = !DILocation(line: 217, column: 24, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !16, line: 216, column: 37)
!448 = !DILocation(line: 217, column: 9, scope: !447)
!449 = !DILocation(line: 217, column: 17, scope: !447)
!450 = !DILocation(line: 217, column: 22, scope: !447)
!451 = !DILocation(line: 218, column: 22, scope: !447)
!452 = !DILocation(line: 218, column: 9, scope: !447)
!453 = !DILocation(line: 219, column: 26, scope: !447)
!454 = !DILocation(line: 219, column: 9, scope: !447)
!455 = !DILocation(line: 220, column: 40, scope: !447)
!456 = !DILocation(line: 220, column: 48, scope: !447)
!457 = !DILocation(line: 220, column: 52, scope: !447)
!458 = !DILocation(line: 220, column: 23, scope: !447)
!459 = !DILocation(line: 220, column: 31, scope: !447)
!460 = !DILocation(line: 220, column: 38, scope: !447)
!461 = !DILocation(line: 220, column: 9, scope: !447)
!462 = !DILocation(line: 220, column: 17, scope: !447)
!463 = !DILocation(line: 220, column: 21, scope: !447)
!464 = !DILocation(line: 221, column: 10, scope: !447)
!465 = !DILocation(line: 221, column: 17, scope: !447)
!466 = !{!467, !467, i64 0}
!467 = !{!"int", !175, i64 0}
!468 = !DILocation(line: 222, column: 9, scope: !447)
!469 = !DILocation(line: 225, column: 12, scope: !106)
!470 = !DILocation(line: 225, column: 20, scope: !106)
!471 = !DILocation(line: 225, column: 5, scope: !106)
!472 = !DILocation(line: 225, column: 26, scope: !106)
!473 = !DILocation(line: 225, column: 29, scope: !106)
!474 = !DILocation(line: 225, column: 37, scope: !106)
!475 = !DILocation(line: 225, column: 43, scope: !106)
!476 = !DILocation(line: 226, column: 21, scope: !106)
!477 = !DILocation(line: 226, column: 5, scope: !106)
!478 = !DILocation(line: 226, column: 13, scope: !106)
!479 = !DILocation(line: 226, column: 19, scope: !106)
!480 = !DILocation(line: 227, column: 26, scope: !106)
!481 = !DILocation(line: 227, column: 5, scope: !106)
!482 = !DILocation(line: 228, column: 5, scope: !106)
!483 = !DILocation(line: 229, column: 1, scope: !106)
!484 = !DILocation(line: 238, column: 31, scope: !115)
!485 = !DILocation(line: 238, column: 51, scope: !115)
!486 = !DILocation(line: 238, column: 69, scope: !115)
!487 = !DILocation(line: 240, column: 5, scope: !115)
!488 = !DILocation(line: 240, column: 17, scope: !115)
!489 = !DILocation(line: 240, column: 21, scope: !115)
!490 = !DILocation(line: 240, column: 29, scope: !115)
!491 = !DILocation(line: 242, column: 31, scope: !115)
!492 = !DILocation(line: 242, column: 20, scope: !115)
!493 = !DILocation(line: 242, column: 5, scope: !115)
!494 = !DILocation(line: 242, column: 13, scope: !115)
!495 = !DILocation(line: 242, column: 18, scope: !115)
!496 = !DILocation(line: 243, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !115, file: !16, line: 243, column: 9)
!498 = !DILocation(line: 243, column: 17, scope: !497)
!499 = !DILocation(line: 243, column: 22, scope: !497)
!500 = !DILocation(line: 243, column: 9, scope: !115)
!501 = !DILocation(line: 244, column: 24, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !16, line: 243, column: 37)
!503 = !DILocation(line: 244, column: 9, scope: !502)
!504 = !DILocation(line: 244, column: 17, scope: !502)
!505 = !DILocation(line: 244, column: 22, scope: !502)
!506 = !DILocation(line: 245, column: 22, scope: !502)
!507 = !DILocation(line: 245, column: 9, scope: !502)
!508 = !DILocation(line: 246, column: 26, scope: !502)
!509 = !DILocation(line: 246, column: 9, scope: !502)
!510 = !DILocation(line: 247, column: 40, scope: !502)
!511 = !DILocation(line: 247, column: 48, scope: !502)
!512 = !DILocation(line: 247, column: 52, scope: !502)
!513 = !DILocation(line: 247, column: 23, scope: !502)
!514 = !DILocation(line: 247, column: 31, scope: !502)
!515 = !DILocation(line: 247, column: 38, scope: !502)
!516 = !DILocation(line: 247, column: 9, scope: !502)
!517 = !DILocation(line: 247, column: 17, scope: !502)
!518 = !DILocation(line: 247, column: 21, scope: !502)
!519 = !DILocation(line: 248, column: 10, scope: !502)
!520 = !DILocation(line: 248, column: 17, scope: !502)
!521 = !DILocation(line: 249, column: 9, scope: !502)
!522 = !DILocation(line: 252, column: 21, scope: !115)
!523 = !DILocation(line: 252, column: 5, scope: !115)
!524 = !DILocation(line: 252, column: 13, scope: !115)
!525 = !DILocation(line: 252, column: 19, scope: !115)
!526 = !DILocation(line: 253, column: 26, scope: !115)
!527 = !DILocation(line: 253, column: 5, scope: !115)
!528 = !DILocation(line: 255, column: 5, scope: !115)
!529 = !DILocation(line: 256, column: 1, scope: !115)
!530 = !DILocation(line: 273, column: 24, scope: !121)
!531 = !DILocation(line: 273, column: 44, scope: !121)
!532 = !DILocation(line: 273, column: 62, scope: !121)
!533 = !DILocation(line: 275, column: 5, scope: !121)
!534 = !DILocation(line: 275, column: 13, scope: !121)
!535 = !DILocation(line: 277, column: 32, scope: !121)
!536 = !DILocation(line: 277, column: 40, scope: !121)
!537 = !DILocation(line: 277, column: 46, scope: !121)
!538 = !DILocation(line: 277, column: 20, scope: !121)
!539 = !DILocation(line: 277, column: 5, scope: !121)
!540 = !DILocation(line: 277, column: 13, scope: !121)
!541 = !DILocation(line: 277, column: 18, scope: !121)
!542 = !DILocation(line: 278, column: 10, scope: !543)
!543 = distinct !DILexicalBlock(scope: !121, file: !16, line: 278, column: 9)
!544 = !DILocation(line: 278, column: 9, scope: !121)
!545 = !DILocation(line: 279, column: 25, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !16, line: 278, column: 15)
!547 = !DILocation(line: 279, column: 9, scope: !546)
!548 = !DILocation(line: 279, column: 17, scope: !546)
!549 = !DILocation(line: 279, column: 23, scope: !546)
!550 = !DILocation(line: 280, column: 5, scope: !546)
!551 = !DILocation(line: 281, column: 14, scope: !552)
!552 = distinct !DILexicalBlock(scope: !543, file: !16, line: 281, column: 14)
!553 = !DILocation(line: 281, column: 23, scope: !552)
!554 = !DILocation(line: 281, column: 31, scope: !552)
!555 = !DILocation(line: 281, column: 21, scope: !552)
!556 = !DILocation(line: 281, column: 14, scope: !543)
!557 = !DILocation(line: 282, column: 22, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !16, line: 281, column: 38)
!559 = !DILocation(line: 282, column: 9, scope: !558)
!560 = !DILocation(line: 283, column: 26, scope: !558)
!561 = !DILocation(line: 283, column: 9, scope: !558)
!562 = !DILocation(line: 284, column: 40, scope: !558)
!563 = !DILocation(line: 284, column: 48, scope: !558)
!564 = !DILocation(line: 284, column: 52, scope: !558)
!565 = !DILocation(line: 284, column: 23, scope: !558)
!566 = !DILocation(line: 284, column: 31, scope: !558)
!567 = !DILocation(line: 284, column: 38, scope: !558)
!568 = !DILocation(line: 284, column: 9, scope: !558)
!569 = !DILocation(line: 284, column: 17, scope: !558)
!570 = !DILocation(line: 284, column: 21, scope: !558)
!571 = !DILocation(line: 285, column: 10, scope: !558)
!572 = !DILocation(line: 285, column: 17, scope: !558)
!573 = !DILocation(line: 286, column: 9, scope: !558)
!574 = !DILocation(line: 289, column: 5, scope: !121)
!575 = !DILocation(line: 290, column: 1, scope: !121)
!576 = !DILocation(line: 206, column: 28, scope: !137)
!577 = !DILocation(line: 206, column: 44, scope: !137)
!578 = !DILocation(line: 206, column: 59, scope: !137)
!579 = !DILocation(line: 206, column: 73, scope: !137)
!580 = !DILocation(line: 208, column: 5, scope: !137)
!581 = !DILocation(line: 208, column: 16, scope: !137)
!582 = !DILocation(line: 208, column: 19, scope: !137)
!583 = !DILocation(line: 212, column: 23, scope: !137)
!584 = !DILocation(line: 212, column: 33, scope: !137)
!585 = !DILocation(line: 210, column: 5, scope: !137)
!586 = !{i32 100813, i32 100823}
!587 = !DILocation(line: 216, column: 11, scope: !137)
!588 = !DILocation(line: 216, column: 6, scope: !137)
!589 = !DILocation(line: 216, column: 9, scope: !137)
!590 = !DILocation(line: 217, column: 11, scope: !137)
!591 = !DILocation(line: 217, column: 6, scope: !137)
!592 = !DILocation(line: 217, column: 9, scope: !137)
!593 = !DILocation(line: 218, column: 1, scope: !137)
