; ModuleID = './gp_unix_cache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gp_cache_entry_s = type { i32, i32, i8*, [16 x i8], i8*, i32, i8*, i32, i64 }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./base/gp_unix_cache.c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"pcache: unable to open '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"# Ghostscript persistent cache index table\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"GS_CACHE_DIR\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"~/.ghostscript/cache/\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"file_name_combine failed with code %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"gs_cache\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"pcache: file_name_combine for indexfilename failed with code %d\0A\00", align 1
@gp_cache_filename.hexmap = internal constant [16 x i8] c"0123456789abcdef", align 16
@.str.13 = private unnamed_addr constant [70 x i8] c"pcache: file_name_combine failed on cache item filename with code %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s %lu\0A\00", align 1
@readhexbyte.hexmap = internal constant [16 x i8] c"0123456789abcdef", align 16
@.str.15 = private unnamed_addr constant [37 x i8] c"pcache: couldn't allocate file key!\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"pcache: couldn't allocate buffer for file data!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gp_cache_insert(i32 %type, i8* %key, i32 %keylen, i8* %buffer, i32 %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buflen.addr = alloca i32, align 4
  %prefix = alloca i8*, align 8
  %path = alloca i8*, align 8
  %infn = alloca i8*, align 8
  %outfn = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %item = alloca %struct.gp_cache_entry_s, align 8
  %item2 = alloca %struct.gp_cache_entry_s, align 8
  %code = alloca i32, align 4
  %hit = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %type, i32* %type.addr, align 4, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !5
  store i32 %keylen, i32* %keylen.addr, align 4, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !5
  store i32 %buflen, i32* %buflen.addr, align 4, !tbaa !1
  %0 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %infn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %outfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gp_cache_entry_s* %item to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast %struct.gp_cache_entry_s* %item2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %hit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %hit, align 4, !tbaa !1
  %call = call i8* @gp_cache_prefix() #5
  store i8* %call, i8** %prefix, align 8, !tbaa !5
  %11 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call1 = call i8* @gp_cache_indexfilename(i8* %11) #5
  store i8* %call1, i8** %infn, align 8, !tbaa !5
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %infn, align 8, !tbaa !5
  %call2 = call i64 @strlen(i8* %13) #6
  %add = add i64 %call2, 2
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %14 = load i32, i32* %len, align 4, !tbaa !1
  %conv3 = sext i32 %14 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #7
  store i8* %call4, i8** %outfn, align 8, !tbaa !5
  %15 = load i8*, i8** %outfn, align 8, !tbaa !5
  %16 = load i8*, i8** %infn, align 8, !tbaa !5
  %17 = load i32, i32* %len, align 4, !tbaa !1
  %sub = sub nsw i32 %17, 2
  %conv5 = sext i32 %sub to i64
  %call6 = call i8* @memcpy(i8* %15, i8* %16, i64 %conv5) #7
  %18 = load i32, i32* %len, align 4, !tbaa !1
  %sub7 = sub nsw i32 %18, 2
  %idxprom = sext i32 %sub7 to i64
  %19 = load i8*, i8** %outfn, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 43, i8* %arrayidx, align 1, !tbaa !7
  %20 = load i32, i32* %len, align 4, !tbaa !1
  %sub8 = sub nsw i32 %20, 1
  %idxprom9 = sext i32 %sub8 to i64
  %21 = load i8*, i8** %outfn, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !7
  %22 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i8*, i8** %infn, align 8, !tbaa !5
  %call11 = call %struct._IO_FILE* @gp_fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %in, align 8, !tbaa !5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 350) #5
  %25 = load i8*, i8** %infn, align 8, !tbaa !5
  %call13 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %25) #5
  %26 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %26) #7
  %27 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %27) #7
  %28 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %28) #7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = load i8*, i8** %outfn, align 8, !tbaa !5
  %call14 = call %struct._IO_FILE* @gp_fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %out, align 8, !tbaa !5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %cmp15 = icmp eq %struct._IO_FILE* %30, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 358) #5
  %31 = load i8*, i8** %outfn, align 8, !tbaa !5
  %call18 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %31) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call19 = call i32 @fclose(%struct._IO_FILE* %32) #5
  %33 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %33) #7
  %34 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %34) #7
  %35 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %35) #7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gp_cache_clear_entry(%struct.gp_cache_entry_s* %item) #5
  %37 = load i32, i32* %type.addr, align 4, !tbaa !1
  %type22 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 0
  store i32 %37, i32* %type22, align 4, !tbaa !8
  %38 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %key23 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 2
  store i8* %38, i8** %key23, align 8, !tbaa !11
  %39 = load i32, i32* %keylen.addr, align 4, !tbaa !1
  %keylen24 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 1
  store i32 %39, i32* %keylen24, align 4, !tbaa !12
  %40 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %buffer25 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 6
  store i8* %40, i8** %buffer25, align 8, !tbaa !13
  %41 = load i32, i32* %buflen.addr, align 4, !tbaa !1
  %len26 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 5
  store i32 %41, i32* %len26, align 4, !tbaa !14
  %dirty = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 7
  store i32 1, i32* %dirty, align 4, !tbaa !15
  %call27 = call i64 @time(i64* null) #7
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 8
  store i64 %call27, i64* %last_used, align 8, !tbaa !16
  call void @gp_cache_hash(%struct.gp_cache_entry_s* %item) #5
  %42 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @gp_cache_filename(i8* %42, %struct.gp_cache_entry_s* %item) #5
  %43 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call28 = call i8* @gp_cache_itempath(i8* %43, %struct.gp_cache_entry_s* %item) #5
  store i8* %call28, i8** %path, align 8, !tbaa !5
  %44 = load i8*, i8** %path, align 8, !tbaa !5
  %call29 = call %struct._IO_FILE* @gp_fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %file, align 8, !tbaa !5
  %45 = load i8*, i8** %path, align 8, !tbaa !5
  call void @free(i8* %45) #7
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %cmp30 = icmp ne %struct._IO_FILE* %46, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.20
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %call33 = call i32 @gp_cache_saveitem(%struct._IO_FILE* %47, %struct.gp_cache_entry_s* %item) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %call34 = call i32 @fclose(%struct._IO_FILE* %48) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.20
  call void @gp_cache_clear_entry(%struct.gp_cache_entry_s* %item2) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.then.41, %if.end.35
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call36 = call i32 @gp_cache_read_entry(%struct._IO_FILE* %49, %struct.gp_cache_entry_s* %item2) #5
  store i32 %call36, i32* %code, align 4, !tbaa !1
  %cmp37 = icmp sge i32 %call36, 0
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, i32* %code, align 4, !tbaa !1
  %cmp39 = icmp eq i32 %50, 1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.body
  br label %while.cond

if.end.42:                                        ; preds = %while.body
  %hash = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %hash43 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item2, i32 0, i32 3
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %hash43, i32 0, i32 0
  %call45 = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay44, i64 16) #6
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %if.end.42
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call47 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %51, %struct.gp_cache_entry_s* %item) #5
  store i32 1, i32* %hit, align 4, !tbaa !1
  br label %if.end.49

if.else:                                          ; preds = %if.end.42
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call48 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %52, %struct.gp_cache_entry_s* %item2) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.46
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load i32, i32* %hit, align 4, !tbaa !1
  %tobool50 = icmp ne i32 %53, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %while.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call52 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %54, %struct.gp_cache_entry_s* %item) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %while.end
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 4
  %55 = load i8*, i8** %filename, align 8, !tbaa !17
  call void @free(i8* %55) #7
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call54 = call i32 @fclose(%struct._IO_FILE* %56) #5
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call55 = call i32 @fclose(%struct._IO_FILE* %57) #5
  %58 = load i8*, i8** %infn, align 8, !tbaa !5
  %call56 = call i32 @unlink(i8* %58) #5
  %59 = load i8*, i8** %outfn, align 8, !tbaa !5
  %60 = load i8*, i8** %infn, align 8, !tbaa !5
  %call57 = call i32 @rename(i8* %59, i8* %60) #7
  %61 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %61) #7
  %62 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %62) #7
  %63 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %63) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.17, %if.then
  %64 = bitcast i32* %hit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gp_cache_entry_s* %item2 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %66) #1
  %67 = bitcast %struct.gp_cache_entry_s* %item to i8*
  call void @llvm.lifetime.end(i64 72, i8* %67) #1
  %68 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %outfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %infn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i8* @gp_cache_prefix() #0 {
entry:
  %retval = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %plen = alloca i32, align 4
  %__len = alloca i64, align 8
  %__retval = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %home = alloca i8*, align 8
  %path = alloca i8*, align 8
  %hlen = alloca i32, align 4
  %pathlen = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %prefix, align 8, !tbaa !5
  %1 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %plen, align 4, !tbaa !1
  %call = call i32 @gp_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null, i32* %plen) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %plen, align 4, !tbaa !1
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @malloc(i64 %conv) #7
  store i8* %call1, i8** %prefix, align 8, !tbaa !5
  %3 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call2 = call i32 @gp_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %3, i32* %plen) #5
  %4 = load i32, i32* %plen, align 4, !tbaa !1
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %plen, align 4, !tbaa !1
  br label %if.end.20

if.else:                                          ; preds = %entry
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([22 x i8]* @.str.8 to i64)), i64 1), label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %if.else
  %5 = load i8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !7
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  %call7 = call noalias i8* @calloc(i64 1, i64 1) #7
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %6 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %call8 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #6
  %add = add i64 %call8, 1
  store i64 %add, i64* %__len, align 8, !tbaa !18
  %7 = bitcast i8** %__retval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i64, i64* %__len, align 8, !tbaa !18
  %call9 = call noalias i8* @malloc(i64 %8) #7
  store i8* %call9, i8** %__retval, align 8, !tbaa !5
  %9 = load i8*, i8** %__retval, align 8, !tbaa !5
  %cmp10 = icmp ne i8* %9, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %cond.false
  %10 = load i8*, i8** %__retval, align 8, !tbaa !5
  %11 = load i64, i64* %__len, align 8, !tbaa !18
  %call13 = call i8* @memcpy(i8* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 %11) #7
  store i8* %call13, i8** %__retval, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.12, %cond.false
  %12 = load i8*, i8** %__retval, align 8, !tbaa !5
  store i8* %12, i8** %tmp, !tbaa !5
  %13 = bitcast i8** %__retval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i8*, i8** %tmp, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true.6
  %cond = phi i8* [ %call7, %cond.true.6 ], [ %15, %if.end ]
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.else
  %call15 = call noalias i8* @__strdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #7
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.end
  %cond17 = phi i8* [ %cond, %cond.end ], [ %call15, %cond.false.14 ]
  store i8* %cond17, i8** %prefix, align 8, !tbaa !5
  %16 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call18 = call i64 @strlen(i8* %16) #6
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, i32* %plen, align 4, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end.16, %if.then
  %17 = load i32, i32* %plen, align 4, !tbaa !1
  %cmp21 = icmp sge i32 %17, 1
  br i1 %cmp21, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.20
  %18 = load i8*, i8** %prefix, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv23 = sext i8 %19 to i32
  %cmp24 = icmp eq i32 %conv23, 126
  br i1 %cmp24, label %if.then.26, label %if.end.68

if.then.26:                                       ; preds = %land.lhs.true
  %20 = bitcast i8** %home to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %hlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %hlen, align 4, !tbaa !1
  %23 = bitcast i32* %pathlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %pathlen, align 4, !tbaa !1
  %24 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %call32 = call i32 @gp_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null, i32* %hlen) #5
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.63

if.then.35:                                       ; preds = %if.then.26
  %25 = load i32, i32* %hlen, align 4, !tbaa !1
  %conv36 = sext i32 %25 to i64
  %call37 = call noalias i8* @malloc(i64 %conv36) #7
  store i8* %call37, i8** %home, align 8, !tbaa !5
  %26 = load i8*, i8** %home, align 8, !tbaa !5
  %cmp38 = icmp eq i8* %26, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.35
  %27 = load i8*, i8** %prefix, align 8, !tbaa !5
  store i8* %27, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.35
  %28 = load i8*, i8** %home, align 8, !tbaa !5
  %call42 = call i32 @gp_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %28, i32* %hlen) #5
  %29 = load i32, i32* %hlen, align 4, !tbaa !1
  %dec43 = add nsw i32 %29, -1
  store i32 %dec43, i32* %hlen, align 4, !tbaa !1
  %30 = load i32, i32* %plen, align 4, !tbaa !1
  %cmp44 = icmp eq i32 %30, 1
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  %31 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %31) #7
  %32 = load i8*, i8** %home, align 8, !tbaa !5
  store i8* %32, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.41
  %33 = load i32, i32* %hlen, align 4, !tbaa !1
  %34 = load i32, i32* %plen, align 4, !tbaa !1
  %add48 = add nsw i32 %33, %34
  %add49 = add nsw i32 %add48, 1
  store i32 %add49, i32* %pathlen, align 4, !tbaa !1
  %35 = load i32, i32* %pathlen, align 4, !tbaa !1
  %conv50 = zext i32 %35 to i64
  %call51 = call noalias i8* @malloc(i64 %conv50) #7
  store i8* %call51, i8** %path, align 8, !tbaa !5
  %36 = load i8*, i8** %path, align 8, !tbaa !5
  %cmp52 = icmp eq i8* %36, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.47
  %37 = load i8*, i8** %home, align 8, !tbaa !5
  call void @free(i8* %37) #7
  %38 = load i8*, i8** %prefix, align 8, !tbaa !5
  store i8* %38, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.47
  %39 = load i8*, i8** %home, align 8, !tbaa !5
  %40 = load i32, i32* %hlen, align 4, !tbaa !1
  %41 = load i8*, i8** %prefix, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i32, i32* %plen, align 4, !tbaa !1
  %sub = sub nsw i32 %42, 2
  %43 = load i8*, i8** %path, align 8, !tbaa !5
  %call56 = call i32 @gp_file_name_combine(i8* %39, i32 %40, i8* %add.ptr, i32 %sub, i32 0, i8* %43, i32* %pathlen) #5
  store i32 %call56, i32* %result, align 4, !tbaa !7
  %44 = load i32, i32* %result, align 4, !tbaa !7
  %cmp57 = icmp eq i32 %44, 1
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.end.55
  %45 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %45) #7
  %46 = load i8*, i8** %path, align 8, !tbaa !5
  store i8* %46, i8** %prefix, align 8, !tbaa !5
  br label %if.end.62

if.else.60:                                       ; preds = %if.end.55
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 106) #5
  %47 = load i32, i32* %result, align 4, !tbaa !7
  %call61 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i32 %47) #5
  %48 = load i8*, i8** %path, align 8, !tbaa !5
  call void @free(i8* %48) #7
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  %49 = load i8*, i8** %home, align 8, !tbaa !5
  call void @free(i8* %49) #7
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.54, %if.then.46, %if.then.40
  %50 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %pathlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %hlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %home to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.20
  %55 = load i8*, i8** %prefix, align 8, !tbaa !5
  store i8* %55, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.68, %cleanup
  %56 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i8*, i8** %retval
  ret i8* %58
}

; Function Attrs: nounwind uwtable
define internal i8* @gp_cache_indexfilename(i8* %prefix) #0 {
entry:
  %retval = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %fn = alloca i8*, align 8
  %path = alloca i8*, align 8
  %len = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !5
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** %fn, align 8, !tbaa !5
  %1 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %4) #6
  %5 = load i8*, i8** %fn, align 8, !tbaa !5
  %call1 = call i64 @strlen(i8* %5) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %conv = trunc i64 %add2 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %6 = load i32, i32* %len, align 4, !tbaa !1
  %conv3 = zext i32 %6 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #7
  store i8* %call4, i8** %path, align 8, !tbaa !5
  %7 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %8 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %call5 = call i64 @strlen(i8* %8) #6
  %conv6 = trunc i64 %call5 to i32
  %9 = load i8*, i8** %fn, align 8, !tbaa !5
  %10 = load i8*, i8** %fn, align 8, !tbaa !5
  %call7 = call i64 @strlen(i8* %10) #6
  %conv8 = trunc i64 %call7 to i32
  %11 = load i8*, i8** %path, align 8, !tbaa !5
  %call9 = call i32 @gp_file_name_combine(i8* %7, i32 %conv6, i8* %9, i32 %conv8, i32 1, i8* %11, i32* %len) #5
  store i32 %call9, i32* %result, align 4, !tbaa !7
  %12 = load i32, i32* %result, align 4, !tbaa !7
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %path, align 8, !tbaa !5
  call void @free(i8* %13) #7
  %14 = load i32, i32* %len, align 4, !tbaa !1
  %inc = add i32 %14, 1
  store i32 %inc, i32* %len, align 4, !tbaa !1
  %conv11 = zext i32 %inc to i64
  %call12 = call noalias i8* @malloc(i64 %conv11) #7
  store i8* %call12, i8** %path, align 8, !tbaa !5
  %15 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %16 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %call13 = call i64 @strlen(i8* %16) #6
  %conv14 = trunc i64 %call13 to i32
  %17 = load i8*, i8** %fn, align 8, !tbaa !5
  %18 = load i8*, i8** %fn, align 8, !tbaa !5
  %call15 = call i64 @strlen(i8* %18) #6
  %conv16 = trunc i64 %call15 to i32
  %19 = load i8*, i8** %path, align 8, !tbaa !5
  %call17 = call i32 @gp_file_name_combine(i8* %15, i32 %conv14, i8* %17, i32 %conv16, i32 1, i8* %19, i32* %len) #5
  store i32 %call17, i32* %result, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %result, align 4, !tbaa !7
  %cmp18 = icmp ne i32 %20, 1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 138) #5
  %21 = load i32, i32* %result, align 4, !tbaa !7
  %call21 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i32 %21) #5
  %22 = load i8*, i8** %path, align 8, !tbaa !5
  call void @free(i8* %22) #7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end
  %23 = load i8*, i8** %path, align 8, !tbaa !5
  store i8* %23, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.20
  %24 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #4

declare void @dprintf_file_and_line(i8*, i32) #4

declare i32 @errprintf_nomem(i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @gp_cache_clear_entry(%struct.gp_cache_entry_s* %item) #0 {
entry:
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %0 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %0, i32 0, i32 0
  store i32 -1, i32* %type, align 4, !tbaa !8
  %1 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %key = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %1, i32 0, i32 2
  store i8* null, i8** %key, align 8, !tbaa !11
  %2 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %keylen = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %2, i32 0, i32 1
  store i32 0, i32* %keylen, align 4, !tbaa !12
  %3 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %3, i32 0, i32 4
  store i8* null, i8** %filename, align 8, !tbaa !17
  %4 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %4, i32 0, i32 6
  store i8* null, i8** %buffer, align 8, !tbaa !13
  %5 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %5, i32 0, i32 5
  store i32 0, i32* %len, align 4, !tbaa !14
  %6 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %dirty = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %6, i32 0, i32 7
  store i32 0, i32* %dirty, align 4, !tbaa !15
  %7 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %7, i32 0, i32 8
  store i64 0, i64* %last_used, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal void @gp_cache_hash(%struct.gp_cache_entry_s* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.gp_cache_entry_s*, align 8
  %md5 = alloca %struct.gs_md5_state_s, align 4
  store %struct.gp_cache_entry_s* %entry1, %struct.gp_cache_entry_s** %entry.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #5
  %1 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %entry.addr, align 8, !tbaa !5
  %key = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %key, align 8, !tbaa !11
  %3 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %entry.addr, align 8, !tbaa !5
  %keylen = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %3, i32 0, i32 1
  %4 = load i32, i32* %keylen, align 4, !tbaa !12
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %2, i32 %4) #5
  %5 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %entry.addr, align 8, !tbaa !5
  %hash = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md5, i8* %arraydecay) #5
  %6 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gp_cache_filename(i8* %prefix, %struct.gp_cache_entry_s* %item) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  %fn = alloca i8*, align 8
  %fni = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 4096) #7
  store i8* %call, i8** %fn, align 8, !tbaa !5
  %1 = bitcast i8** %fni to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %fn, align 8, !tbaa !5
  store i8* %3, i8** %fni, align 8, !tbaa !5
  %4 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4, !tbaa !8
  %shr = ashr i32 %5, 4
  %and = and i32 %shr, 15
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @gp_cache_filename.hexmap, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %7 = load i8*, i8** %fni, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %fni, align 8, !tbaa !5
  store i8 %6, i8* %7, align 1, !tbaa !7
  %8 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %type1 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %8, i32 0, i32 0
  %9 = load i32, i32* %type1, align 4, !tbaa !8
  %and2 = and i32 %9, 15
  %idxprom3 = sext i32 %and2 to i64
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* @gp_cache_filename.hexmap, i32 0, i64 %idxprom3
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %11 = load i8*, i8** %fni, align 8, !tbaa !5
  %incdec.ptr5 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr5, i8** %fni, align 8, !tbaa !5
  store i8 %10, i8* %11, align 1, !tbaa !7
  %12 = load i8*, i8** %fni, align 8, !tbaa !5
  %incdec.ptr6 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr6, i8** %fni, align 8, !tbaa !5
  store i8 46, i8* %12, align 1, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %13, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %hash = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %15, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %shr9 = ashr i32 %conv, 4
  %and10 = and i32 %shr9, 15
  %idxprom11 = sext i32 %and10 to i64
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* @gp_cache_filename.hexmap, i32 0, i64 %idxprom11
  %17 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %18 = load i8*, i8** %fni, align 8, !tbaa !5
  %incdec.ptr13 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr13, i8** %fni, align 8, !tbaa !5
  store i8 %17, i8* %18, align 1, !tbaa !7
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %hash15 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %20, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %hash15, i32 0, i64 %idxprom14
  %21 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %21 to i32
  %and18 = and i32 %conv17, 15
  %idxprom19 = sext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [16 x i8], [16 x i8]* @gp_cache_filename.hexmap, i32 0, i64 %idxprom19
  %22 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %23 = load i8*, i8** %fni, align 8, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %fni, align 8, !tbaa !5
  store i8 %22, i8* %23, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %fni, align 8, !tbaa !5
  store i8 0, i8* %25, align 1, !tbaa !7
  %26 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %26, i32 0, i32 4
  %27 = load i8*, i8** %filename, align 8, !tbaa !17
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %28 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename22 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %28, i32 0, i32 4
  %29 = load i8*, i8** %filename22, align 8, !tbaa !17
  call void @free(i8* %29) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %30 = load i8*, i8** %fn, align 8, !tbaa !5
  %31 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename23 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %31, i32 0, i32 4
  store i8* %30, i8** %filename23, align 8, !tbaa !17
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %fni to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gp_cache_itempath(i8* %prefix, %struct.gp_cache_entry_s* %item) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  %fn = alloca i8*, align 8
  %result = alloca i32, align 4
  %path = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %1, i32 0, i32 4
  %2 = load i8*, i8** %filename, align 8, !tbaa !17
  store i8* %2, i8** %fn, align 8, !tbaa !5
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %6) #6
  %7 = load i8*, i8** %fn, align 8, !tbaa !5
  %call1 = call i64 @strlen(i8* %7) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %conv = trunc i64 %add2 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %8 = load i32, i32* %len, align 4, !tbaa !1
  %conv3 = zext i32 %8 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #7
  store i8* %call4, i8** %path, align 8, !tbaa !5
  %9 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %10 = load i8*, i8** %prefix.addr, align 8, !tbaa !5
  %call5 = call i64 @strlen(i8* %10) #6
  %conv6 = trunc i64 %call5 to i32
  %11 = load i8*, i8** %fn, align 8, !tbaa !5
  %12 = load i8*, i8** %fn, align 8, !tbaa !5
  %call7 = call i64 @strlen(i8* %12) #6
  %conv8 = trunc i64 %call7 to i32
  %13 = load i8*, i8** %path, align 8, !tbaa !5
  %call9 = call i32 @gp_file_name_combine(i8* %9, i32 %conv6, i8* %11, i32 %conv8, i32 0, i8* %13, i32* %len) #5
  store i32 %call9, i32* %result, align 4, !tbaa !7
  %14 = load i32, i32* %result, align 4, !tbaa !7
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 191) #5
  %15 = load i32, i32* %result, align 4, !tbaa !7
  %call11 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i32 0, i32 0), i32 %15) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i8*, i8** %path, align 8, !tbaa !5
  %17 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_cache_saveitem(%struct._IO_FILE* %file, %struct.gp_cache_entry_s* %item) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  %version = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %version) #1
  store i8 0, i8* %version, align 1, !tbaa !7
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call = call i64 @fwrite(i8* %version, i64 1, i64 1, %struct._IO_FILE* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %ret, align 4, !tbaa !1
  %2 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %keylen = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %2, i32 0, i32 1
  %3 = bitcast i32* %keylen to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call1 = call i64 @fwrite(i8* %3, i64 1, i64 4, %struct._IO_FILE* %4) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %ret, align 4, !tbaa !1
  %5 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %key = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %key, align 8, !tbaa !11
  %7 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %keylen3 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %7, i32 0, i32 1
  %8 = load i32, i32* %keylen3, align 4, !tbaa !12
  %conv4 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call5 = call i64 @fwrite(i8* %6, i64 1, i64 %conv4, %struct._IO_FILE* %9) #5
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %ret, align 4, !tbaa !1
  %10 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %10, i32 0, i32 5
  %11 = bitcast i32* %len to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call7 = call i64 @fwrite(i8* %11, i64 1, i64 4, %struct._IO_FILE* %12) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %ret, align 4, !tbaa !1
  %13 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %13, i32 0, i32 6
  %14 = load i8*, i8** %buffer, align 8, !tbaa !13
  %15 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len9 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %15, i32 0, i32 5
  %16 = load i32, i32* %len9, align 4, !tbaa !14
  %conv10 = sext i32 %16 to i64
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call11 = call i64 @fwrite(i8* %14, i64 1, i64 %conv10, %struct._IO_FILE* %17) #5
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %ret, align 4, !tbaa !1
  %18 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %dirty = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %18, i32 0, i32 7
  store i32 0, i32* %dirty, align 4, !tbaa !15
  %19 = load i32, i32* %ret, align 4, !tbaa !1
  %20 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  call void @llvm.lifetime.end(i64 1, i8* %version) #1
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_cache_read_entry(%struct._IO_FILE* %file, %struct.gp_cache_entry_s* %item) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  %line = alloca [256 x i8], align 16
  %fn = alloca [36 x i8], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %0 = bitcast [256 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = bitcast [36 x i8]* %fn to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %3) #5
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [36 x i8], [36 x i8]* %fn, i32 0, i32 0
  %5 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %5, i32 0, i32 8
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay5, i64* %last_used) #7
  %cmp7 = icmp ne i32 %call6, 2
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.3
  %arraydecay11 = getelementptr inbounds [36 x i8], [36 x i8]* %fn, i32 0, i32 0
  %call12 = call i32 @readhexbyte(i8* %arraydecay11) #5
  %6 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %6, i32 0, i32 0
  store i32 %call12, i32* %type, align 4, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %cmp13 = icmp slt i32 %7, 16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay15 = getelementptr inbounds [36 x i8], [36 x i8]* %fn, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %mul = mul nsw i32 2, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %call17 = call i32 @readhexbyte(i8* %add.ptr16) #5
  %conv18 = trunc i32 %call17 to i8
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %hash = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %10, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i64 %idxprom
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %12, i32 0, i32 4
  %13 = load i8*, i8** %filename, align 8, !tbaa !17
  %tobool20 = icmp ne i8* %13, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.end
  %14 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename22 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %14, i32 0, i32 4
  %15 = load i8*, i8** %filename22, align 8, !tbaa !17
  call void @free(i8* %15) #7
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.end
  %arraydecay24 = getelementptr inbounds [36 x i8], [36 x i8]* %fn, i32 0, i32 0
  %call25 = call i64 @strlen(i8* %arraydecay24) #6
  %add = add i64 %call25, 1
  %call26 = call noalias i8* @malloc(i64 %add) #7
  %16 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename27 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %16, i32 0, i32 4
  store i8* %call26, i8** %filename27, align 8, !tbaa !17
  %17 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename28 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %17, i32 0, i32 4
  %18 = load i8*, i8** %filename28, align 8, !tbaa !17
  %arraydecay29 = getelementptr inbounds [36 x i8], [36 x i8]* %fn, i32 0, i32 0
  %call30 = call i8* @strcpy(i8* %18, i8* %arraydecay29) #7
  %19 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %key = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %19, i32 0, i32 2
  store i8* null, i8** %key, align 8, !tbaa !11
  %20 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %keylen = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %20, i32 0, i32 1
  store i32 0, i32* %keylen, align 4, !tbaa !12
  %21 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %21, i32 0, i32 5
  store i32 0, i32* %len, align 4, !tbaa !14
  %22 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %22, i32 0, i32 6
  store i8* null, i8** %buffer, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.9, %if.then.2, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast [36 x i8]* %fn to i8*
  call void @llvm.lifetime.end(i64 36, i8* %24) #1
  %25 = bitcast [256 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 256, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gp_cache_write_entry(%struct._IO_FILE* %file, %struct.gp_cache_entry_s* %item) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %1 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %1, i32 0, i32 4
  %2 = load i8*, i8** %filename, align 8, !tbaa !17
  %3 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %3, i32 0, i32 8
  %4 = load i64, i64* %last_used, align 8, !tbaa !16
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %2, i64 %4) #5
  ret i32 0
}

declare i32 @unlink(i8*) #4

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gp_cache_query(i32 %type, i8* %key, i32 %keylen, i8** %buffer, i8* (i8*, i32)* %alloc, i8* %userdata) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i32, align 4
  %buffer.addr = alloca i8**, align 8
  %alloc.addr = alloca i8* (i8*, i32)*, align 8
  %userdata.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %path = alloca i8*, align 8
  %infn = alloca i8*, align 8
  %outfn = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %item = alloca %struct.gp_cache_entry_s, align 8
  %item2 = alloca %struct.gp_cache_entry_s, align 8
  %code = alloca i32, align 4
  %hit = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %type, i32* %type.addr, align 4, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !5
  store i32 %keylen, i32* %keylen.addr, align 4, !tbaa !1
  store i8** %buffer, i8*** %buffer.addr, align 8, !tbaa !5
  store i8* (i8*, i32)* %alloc, i8* (i8*, i32)** %alloc.addr, align 8, !tbaa !5
  store i8* %userdata, i8** %userdata.addr, align 8, !tbaa !5
  %0 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %infn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %outfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gp_cache_entry_s* %item to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast %struct.gp_cache_entry_s* %item2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %hit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %hit, align 4, !tbaa !1
  %call = call i8* @gp_cache_prefix() #5
  store i8* %call, i8** %prefix, align 8, !tbaa !5
  %11 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call1 = call i8* @gp_cache_indexfilename(i8* %11) #5
  store i8* %call1, i8** %infn, align 8, !tbaa !5
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %infn, align 8, !tbaa !5
  %call2 = call i64 @strlen(i8* %13) #6
  %add = add i64 %call2, 2
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %14 = load i32, i32* %len, align 4, !tbaa !1
  %conv3 = sext i32 %14 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #7
  store i8* %call4, i8** %outfn, align 8, !tbaa !5
  %15 = load i8*, i8** %outfn, align 8, !tbaa !5
  %16 = load i8*, i8** %infn, align 8, !tbaa !5
  %17 = load i32, i32* %len, align 4, !tbaa !1
  %sub = sub nsw i32 %17, 2
  %conv5 = sext i32 %sub to i64
  %call6 = call i8* @memcpy(i8* %15, i8* %16, i64 %conv5) #7
  %18 = load i32, i32* %len, align 4, !tbaa !1
  %sub7 = sub nsw i32 %18, 2
  %idxprom = sext i32 %sub7 to i64
  %19 = load i8*, i8** %outfn, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 43, i8* %arrayidx, align 1, !tbaa !7
  %20 = load i32, i32* %len, align 4, !tbaa !1
  %sub8 = sub nsw i32 %20, 1
  %idxprom9 = sext i32 %sub8 to i64
  %21 = load i8*, i8** %outfn, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !7
  %22 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i8*, i8** %infn, align 8, !tbaa !5
  %call11 = call %struct._IO_FILE* @gp_fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %in, align 8, !tbaa !5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 443) #5
  %25 = load i8*, i8** %infn, align 8, !tbaa !5
  %call13 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %25) #5
  %26 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %26) #7
  %27 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %27) #7
  %28 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %28) #7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = load i8*, i8** %outfn, align 8, !tbaa !5
  %call14 = call %struct._IO_FILE* @gp_fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %out, align 8, !tbaa !5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %cmp15 = icmp eq %struct._IO_FILE* %30, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 451) #5
  %31 = load i8*, i8** %outfn, align 8, !tbaa !5
  %call18 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %31) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call19 = call i32 @fclose(%struct._IO_FILE* %32) #5
  %33 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %33) #7
  %34 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %34) #7
  %35 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %35) #7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gp_cache_clear_entry(%struct.gp_cache_entry_s* %item) #5
  %37 = load i32, i32* %type.addr, align 4, !tbaa !1
  %type22 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 0
  store i32 %37, i32* %type22, align 4, !tbaa !8
  %38 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %key23 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 2
  store i8* %38, i8** %key23, align 8, !tbaa !11
  %39 = load i32, i32* %keylen.addr, align 4, !tbaa !1
  %keylen24 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 1
  store i32 %39, i32* %keylen24, align 4, !tbaa !12
  %call25 = call i64 @time(i64* null) #7
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 8
  store i64 %call25, i64* %last_used, align 8, !tbaa !16
  call void @gp_cache_hash(%struct.gp_cache_entry_s* %item) #5
  %40 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @gp_cache_filename(i8* %40, %struct.gp_cache_entry_s* %item) #5
  %41 = load i8*, i8** %prefix, align 8, !tbaa !5
  %call26 = call i8* @gp_cache_itempath(i8* %41, %struct.gp_cache_entry_s* %item) #5
  store i8* %call26, i8** %path, align 8, !tbaa !5
  %42 = load i8*, i8** %path, align 8, !tbaa !5
  %call27 = call %struct._IO_FILE* @gp_fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call27, %struct._IO_FILE** %file, align 8, !tbaa !5
  %43 = load i8*, i8** %path, align 8, !tbaa !5
  call void @free(i8* %43) #7
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %cmp28 = icmp ne %struct._IO_FILE* %44, null
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.20
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %46 = load i8* (i8*, i32)*, i8* (i8*, i32)** %alloc.addr, align 8, !tbaa !5
  %47 = load i8*, i8** %userdata.addr, align 8, !tbaa !5
  %call31 = call i32 @gp_cache_loaditem(%struct._IO_FILE* %45, %struct.gp_cache_entry_s* %item, i8* (i8*, i32)* %46, i8* %47) #5
  store i32 %call31, i32* %hit, align 4, !tbaa !1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !5
  %call32 = call i32 @fclose(%struct._IO_FILE* %48) #5
  br label %if.end.33

if.else:                                          ; preds = %if.end.20
  store i32 -1, i32* %hit, align 4, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  call void @gp_cache_clear_entry(%struct.gp_cache_entry_s* %item2) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.then.39, %if.end.33
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call34 = call i32 @gp_cache_read_entry(%struct._IO_FILE* %49, %struct.gp_cache_entry_s* %item2) #5
  store i32 %call34, i32* %code, align 4, !tbaa !1
  %cmp35 = icmp sge i32 %call34, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, i32* %code, align 4, !tbaa !1
  %cmp37 = icmp eq i32 %50, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.body
  br label %while.cond

if.end.40:                                        ; preds = %while.body
  %51 = load i32, i32* %hit, align 4, !tbaa !1
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.else.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.40
  %hash = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i32 0, i32 0
  %hash41 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item2, i32 0, i32 3
  %arraydecay42 = getelementptr inbounds [16 x i8], [16 x i8]* %hash41, i32 0, i32 0
  %call43 = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay42, i64 16) #6
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.47, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call46 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %52, %struct.gp_cache_entry_s* %item) #5
  %dirty = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 7
  store i32 0, i32* %dirty, align 4, !tbaa !15
  br label %if.end.49

if.else.47:                                       ; preds = %land.lhs.true, %if.end.40
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call48 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %53, %struct.gp_cache_entry_s* %item2) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.45
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %dirty50 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 7
  %54 = load i32, i32* %dirty50, align 4, !tbaa !15
  %tobool51 = icmp ne i32 %54, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %while.end
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call53 = call i32 @gp_cache_write_entry(%struct._IO_FILE* %55, %struct.gp_cache_entry_s* %item) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %while.end
  %filename = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 4
  %56 = load i8*, i8** %filename, align 8, !tbaa !17
  call void @free(i8* %56) #7
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call55 = call i32 @fclose(%struct._IO_FILE* %57) #5
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call56 = call i32 @fclose(%struct._IO_FILE* %58) #5
  %59 = load i8*, i8** %infn, align 8, !tbaa !5
  %call57 = call i32 @unlink(i8* %59) #5
  %60 = load i8*, i8** %outfn, align 8, !tbaa !5
  %61 = load i8*, i8** %infn, align 8, !tbaa !5
  %call58 = call i32 @rename(i8* %60, i8* %61) #7
  %62 = load i8*, i8** %prefix, align 8, !tbaa !5
  call void @free(i8* %62) #7
  %63 = load i8*, i8** %infn, align 8, !tbaa !5
  call void @free(i8* %63) #7
  %64 = load i8*, i8** %outfn, align 8, !tbaa !5
  call void @free(i8* %64) #7
  %65 = load i32, i32* %hit, align 4, !tbaa !1
  %tobool59 = icmp ne i32 %65, 0
  br i1 %tobool59, label %if.else.63, label %if.then.60

if.then.60:                                       ; preds = %if.end.54
  %buffer61 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 6
  %66 = load i8*, i8** %buffer61, align 8, !tbaa !13
  %67 = load i8**, i8*** %buffer.addr, align 8, !tbaa !5
  store i8* %66, i8** %67, align 8, !tbaa !5
  %len62 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %item, i32 0, i32 5
  %68 = load i32, i32* %len62, align 4, !tbaa !14
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.63:                                       ; preds = %if.end.54
  %69 = load i8**, i8*** %buffer.addr, align 8, !tbaa !5
  store i8* null, i8** %69, align 8, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.63, %if.then.60, %if.then.17, %if.then
  %70 = bitcast i32* %hit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.gp_cache_entry_s* %item2 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %72) #1
  %73 = bitcast %struct.gp_cache_entry_s* %item to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #1
  %74 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %outfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %infn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i8** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_cache_loaditem(%struct._IO_FILE* %file, %struct.gp_cache_entry_s* %item, i8* (i8*, i32)* %alloc, i8* %userdata) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %item.addr = alloca %struct.gp_cache_entry_s*, align 8
  %alloc.addr = alloca i8* (i8*, i32)*, align 8
  %userdata.addr = alloca i8*, align 8
  %version = alloca i8, align 1
  %filekey = alloca i8*, align 8
  %len = alloca i32, align 4
  %keylen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  store %struct.gp_cache_entry_s* %item, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  store i8* (i8*, i32)* %alloc, i8* (i8*, i32)** %alloc.addr, align 8, !tbaa !5
  store i8* %userdata, i8** %userdata.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %version) #1
  %0 = bitcast i8** %filekey to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call = call i64 @fread(i8* %version, i64 1, i64 1, %struct._IO_FILE* %3) #5
  %4 = load i8, i8* %version, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = bitcast i32* %keylen to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call2 = call i64 @fread(i8* %5, i64 1, i64 4, %struct._IO_FILE* %6) #5
  %7 = load i32, i32* %keylen, align 4, !tbaa !1
  %8 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %keylen3 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %8, i32 0, i32 1
  %9 = load i32, i32* %keylen3, align 4, !tbaa !12
  %cmp4 = icmp ne i32 %7, %9
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %10 = load i32, i32* %keylen, align 4, !tbaa !1
  %conv8 = sext i32 %10 to i64
  %call9 = call noalias i8* @malloc(i64 %conv8) #7
  store i8* %call9, i8** %filekey, align 8, !tbaa !5
  %11 = load i8*, i8** %filekey, align 8, !tbaa !5
  %cmp10 = icmp eq i8* %11, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.7
  %call13 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.7
  %12 = load i8*, i8** %filekey, align 8, !tbaa !5
  %13 = load i32, i32* %keylen, align 4, !tbaa !1
  %conv15 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call16 = call i64 @fread(i8* %12, i64 1, i64 %conv15, %struct._IO_FILE* %14) #5
  %15 = load i8*, i8** %filekey, align 8, !tbaa !5
  %16 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %key = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %key, align 8, !tbaa !11
  %18 = load i32, i32* %keylen, align 4, !tbaa !1
  %conv17 = sext i32 %18 to i64
  %call18 = call i32 @memcmp(i8* %15, i8* %17, i64 %conv17) #6
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.14
  %19 = load i8*, i8** %filekey, align 8, !tbaa !5
  call void @free(i8* %19) #7
  %20 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %20, i32 0, i32 6
  store i8* null, i8** %buffer, align 8, !tbaa !13
  %21 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len20 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %21, i32 0, i32 5
  store i32 0, i32* %len20, align 4, !tbaa !14
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.14
  %22 = load i8*, i8** %filekey, align 8, !tbaa !5
  call void @free(i8* %22) #7
  %23 = bitcast i32* %len to i8*
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call22 = call i64 @fread(i8* %23, i64 1, i64 4, %struct._IO_FILE* %24) #5
  %25 = load i8* (i8*, i32)*, i8* (i8*, i32)** %alloc.addr, align 8, !tbaa !5
  %26 = load i8*, i8** %userdata.addr, align 8, !tbaa !5
  %27 = load i32, i32* %len, align 4, !tbaa !1
  %call23 = call i8* %25(i8* %26, i32 %27) #5
  %28 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer24 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %28, i32 0, i32 6
  store i8* %call23, i8** %buffer24, align 8, !tbaa !13
  %29 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer25 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %29, i32 0, i32 6
  %30 = load i8*, i8** %buffer25, align 8, !tbaa !13
  %cmp26 = icmp eq i8* %30, null
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.21
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 258) #5
  %call29 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)) #5
  %31 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len30 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %31, i32 0, i32 5
  store i32 0, i32* %len30, align 4, !tbaa !14
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.21
  %32 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %buffer32 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %32, i32 0, i32 6
  %33 = load i8*, i8** %buffer32, align 8, !tbaa !13
  %34 = load i32, i32* %len, align 4, !tbaa !1
  %conv33 = sext i32 %34 to i64
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !5
  %call34 = call i64 @fread(i8* %33, i64 1, i64 %conv33, %struct._IO_FILE* %35) #5
  %conv35 = trunc i64 %call34 to i32
  %36 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %len36 = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %36, i32 0, i32 5
  store i32 %conv35, i32* %len36, align 4, !tbaa !14
  %37 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %dirty = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %37, i32 0, i32 7
  store i32 1, i32* %dirty, align 4, !tbaa !15
  %call37 = call i64 @time(i64* null) #7
  %38 = load %struct.gp_cache_entry_s*, %struct.gp_cache_entry_s** %item.addr, align 8, !tbaa !5
  %last_used = getelementptr inbounds %struct.gp_cache_entry_s, %struct.gp_cache_entry_s* %38, i32 0, i32 8
  store i64 %call37, i64* %last_used, align 8, !tbaa !16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.28, %if.then.19, %if.then.12, %if.then.6, %if.then
  %39 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %filekey to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  call void @llvm.lifetime.end(i64 1, i8* %version) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gp_getenv(i8*, i8*, i32*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8*) #3

declare i32 @gp_file_name_combine(i8*, i32, i8*, i32, i32, i8*, i32*) #4

declare void @gs_md5_init(%struct.gs_md5_state_s*) #4

declare void @gs_md5_append(%struct.gs_md5_state_s*, i8*, i32) #4

declare void @gs_md5_finish(%struct.gs_md5_state_s*, i8*) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @readhexbyte(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @readhexbyte.hexmap, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv1 = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %8, 16
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %r, align 4, !tbaa !1
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %if.end.7
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %cmp9 = icmp slt i32 %11, 16
  br i1 %cmp9, label %for.body.11, label %for.end.22

for.body.11:                                      ; preds = %for.cond.8
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [16 x i8], [16 x i8]* @readhexbyte.hexmap, i32 0, i64 %idxprom12
  %13 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = sext i8 %13 to i32
  %14 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.11
  br label %for.end.22

if.end.19:                                        ; preds = %for.body.11
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.end.22:                                       ; preds = %if.then.18, %for.cond.8
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %cmp23 = icmp eq i32 %17, 16
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end.22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.end.22
  %18 = load i32, i32* %r, align 4, !tbaa !1
  %shl = shl i32 %18, 4
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %or = or i32 %shl, %19
  store i32 %or, i32* %r, align 4, !tbaa !1
  %20 = load i32, i32* %r, align 4, !tbaa !1
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.6
  %21 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gp_cache_entry_s", !2, i64 0, !2, i64 4, !6, i64 8, !3, i64 16, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !10, i64 64}
!10 = !{!"long", !3, i64 0}
!11 = !{!9, !6, i64 8}
!12 = !{!9, !2, i64 4}
!13 = !{!9, !6, i64 48}
!14 = !{!9, !2, i64 40}
!15 = !{!9, !2, i64 56}
!16 = !{!9, !10, i64 64}
!17 = !{!9, !6, i64 32}
!18 = !{!10, !10, i64 0}
