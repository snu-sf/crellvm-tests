; ModuleID = './genconf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i32, i8*, i8*, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %union.ru_, %struct.string_pattern_s, %struct.string_pattern_s, %struct.string_pattern_s }
%struct.string_list_s = type { i8*, i32, i32, i32, %struct.string_item_s* }
%struct.string_item_s = type { i8*, i32, i32 }
%union.ru_ = type { %struct.nu_ }
%struct.nu_ = type { %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s, %struct.string_list_s }
%struct.string_pattern_s = type { i32, i32, [61 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@init_config = internal constant %struct.config_s { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.string_list_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 200, i32 0, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i32 200, i32 0, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 50, i32 0, i32 0, %struct.string_item_s* null }, %union.ru_ zeroinitializer, %struct.string_pattern_s zeroinitializer, %struct.string_pattern_s zeroinitializer, %struct.string_pattern_s zeroinitializer }, align 8
@init_config_lists = internal constant [9 x %struct.string_list_s] [%struct.string_list_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 100, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 20, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 10, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 100, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 50, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 20, i32 4, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 10, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 10, i32 2, i32 0, %struct.string_item_s* null }, %struct.string_list_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 500, i32 2, i32 0, %struct.string_item_s* null }], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Missing argument after %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%c not followed by p|s|%c|-: &%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unknown switch %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't open %s for output.\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"/* This file was generated automatically by genconf.c. */\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"/* For documentation, see gsconfig.c. */\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"font_(\220.font_%%s\22,%sf_%%s,zf_%%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"list->items != ((void*)0)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"./base/genconf.c\00", align 1
@__PRETTY_FUNCTION__.alloc_list = private unnamed_addr constant [32 x i8] c"int alloc_list(string_list_t *)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c".dev\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Replacing file %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Replacing %s %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Reading %s;\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Skipping duplicate file.\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Token too long: %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Finished %s.\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Adding %s %s;\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"compositor_(%scomposite_%%s_type)\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"device_(%s%%s_device)\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"dev2\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"device2_(%s%%s_device)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"emulator\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"emulator_(\22%s\22,%u)\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"functiontype\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"function_type_(%%s,%sbuild_function_%%s)\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"fapi\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"fapi_(%s%%s_init)\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"halftone\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"halftone_(%sdht_%%s)\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"imageclass\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"image_class_(%simage_class_%%s)\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"imagetype\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"image_type_(%%s,%simage_type_%%s)\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"init_(%s%%s_init)\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"iodev\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"io_device_(%siodev_%%s)\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"libpath\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"oper_(%s_op_defs)\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"psfile_(\22%s.ps\22,%u)\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"plugin\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"plugin_(%s%%s_instantiate)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"Definition not recognized: %s %s.\0A\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"strlen(str) < 120\00", align 1
@__PRETTY_FUNCTION__.add_entry = private unnamed_addr constant [53 x i8] c"int add_entry(config_t *, char *, const char *, int)\00", align 1
@__PRETTY_FUNCTION__.add_item = private unnamed_addr constant [60 x i8] c"string_item_t *add_item(string_list_t *, const char *, int)\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"#ifdef %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"gs_\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"file name\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"file contents\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"-replace\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"sorted_resource\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"-comp\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"-dev\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"-font\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"-lib\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"-libpath\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"-link\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"-obj\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"Can't allocate space for file name %s%s.\0A\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"Can't read %s.\0A\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Can't allocate %d bytes to read %s.\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"File %s = %d bytes.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %conf = alloca %struct.config_s, align 8
  %escape = alloca i8, align 1
  %i = alloca i32, align 4
  %arg = alloca i8*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %lib = alloca i32, align 4
  %obj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pat = alloca %struct.string_pattern_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %templat = alloca [80 x i8], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast %struct.config_s* %conf to i8*
  call void @llvm.lifetime.start(i64 624, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %escape) #1
  store i8 38, i8* %escape, align 1, !tbaa !7
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.config_s* %conf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.config_s* @init_config to i8*), i64 624, i32 8, i1 false), !tbaa.struct !8
  %lists = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %indexed = bitcast %union.ru_* %lists to [9 x %struct.string_list_s]*
  %arraydecay = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed, i32 0, i32 0
  %3 = bitcast %struct.string_list_s* %arraydecay to i8*
  %call = call i8* @memcpy(i8* %3, i8* bitcast ([9 x %struct.string_list_s]* @init_config_lists to i8*), i64 288) #7
  %file_names = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 3
  %call1 = call i32 @alloc_list(%struct.string_list_s* %file_names) #8
  %file_contents = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 4
  %call2 = call i32 @alloc_list(%struct.string_list_s* %file_contents) #8
  %replaces = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 5
  %call3 = call i32 @alloc_list(%struct.string_list_s* %replaces) #8
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %5 to i64
  %lists4 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %indexed5 = bitcast %union.ru_* %lists4 to [9 x %struct.string_list_s]*
  %arrayidx = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed5, i32 0, i64 %idxprom
  %call6 = call i32 @alloc_list(%struct.string_list_s* %arrayidx) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %lib_p = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %upper_case = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %lib_p, i32 0, i32 0
  store i32 0, i32* %upper_case, align 4, !tbaa !9
  %lib_p7 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %drop_extn = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %lib_p7, i32 0, i32 1
  store i32 0, i32* %drop_extn, align 4, !tbaa !13
  %lib_p8 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %pattern = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %lib_p8, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [61 x i8], [61 x i8]* %pattern, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #7
  %libpath_p = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 8
  %lib_p11 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %7 = bitcast %struct.string_pattern_s* %libpath_p to i8*
  %8 = bitcast %struct.string_pattern_s* %lib_p11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 72, i32 4, i1 false), !tbaa.struct !14
  %obj_p = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 9
  %lib_p12 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %9 = bitcast %struct.string_pattern_s* %obj_p to i8*
  %10 = bitcast %struct.string_pattern_s* %lib_p12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 72, i32 4, i1 false), !tbaa.struct !14
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.232, %for.end
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body.15, label %for.end.234

for.body.15:                                      ; preds = %for.cond.13
  %13 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom16 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds i8*, i8** %15, i64 %idxprom16
  %16 = load i8*, i8** %arrayidx17, align 8, !tbaa !5
  store i8* %16, i8** %arg, align 8, !tbaa !5
  %17 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %lib to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %lib, align 4, !tbaa !1
  %19 = bitcast i32* %obj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %obj, align 4, !tbaa !1
  %20 = load i8*, i8** %arg, align 8, !tbaa !5
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %conv = sext i8 %21 to i32
  %cmp18 = icmp ne i32 %conv, 45
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.15
  %22 = load i8*, i8** %arg, align 8, !tbaa !5
  %call20 = call i32 @read_dev(%struct.config_s* %conf, i8* %22) #8
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.15
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %24, 1
  %cmp21 = icmp eq i32 %23, %sub
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %26 = load i8*, i8** %arg, align 8, !tbaa !5
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* %26) #8
  call void @exit(i32 1) #9
  unreachable

if.end.25:                                        ; preds = %if.end
  %27 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = sext i8 %28 to i32
  switch i32 %conv27, label %sw.epilog.145 [
    i32 67, label %sw.bb
    i32 101, label %sw.bb.38
    i32 110, label %sw.bb.44
    i32 112, label %sw.bb.60
    i32 90, label %sw.bb.144
  ]

sw.bb:                                            ; preds = %if.end.25
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %add = add nsw i32 %29, 1
  %idxprom28 = sext i32 %add to i64
  %30 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds i8*, i8** %30, i64 %idxprom28
  %31 = load i8*, i8** %arrayidx29, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = sext i8 %32 to i32
  %cmp32 = icmp eq i32 %conv31, 45
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %add34 = add nsw i32 %33, 1
  %idxprom35 = sext i32 %add34 to i64
  %34 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds i8*, i8** %34, i64 %idxprom35
  %35 = load i8*, i8** %arrayidx36, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.true ], [ %35, %cond.false ]
  %file_prefix = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 2
  store i8* %cond, i8** %file_prefix, align 8, !tbaa !15
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %if.end.25
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %add39 = add nsw i32 %37, 1
  %idxprom40 = sext i32 %add39 to i64
  %38 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx41 = getelementptr inbounds i8*, i8** %38, i64 %idxprom40
  %39 = load i8*, i8** %arrayidx41, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  store i8 %40, i8* %escape, align 1, !tbaa !7
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %inc43 = add nsw i32 %41, 1
  store i32 %inc43, i32* %i, align 4, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.44:                                         ; preds = %if.end.25
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %add45 = add nsw i32 %42, 1
  %idxprom46 = sext i32 %add45 to i64
  %43 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8*, i8** %43, i64 %idxprom46
  %44 = load i8*, i8** %arrayidx47, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %conv49 = sext i8 %45 to i32
  %cmp50 = icmp eq i32 %conv49, 45
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %sw.bb.44
  br label %cond.end.57

cond.false.53:                                    ; preds = %sw.bb.44
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %add54 = add nsw i32 %46, 1
  %idxprom55 = sext i32 %add54 to i64
  %47 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i8*, i8** %47, i64 %idxprom55
  %48 = load i8*, i8** %arrayidx56, align 8, !tbaa !5
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.52
  %cond58 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.true.52 ], [ %48, %cond.false.53 ]
  %name_prefix = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 1
  store i8* %cond58, i8** %name_prefix, align 8, !tbaa !16
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %inc59 = add nsw i32 %49, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.60:                                         ; preds = %if.end.25
  %50 = bitcast %struct.string_pattern_s** %pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i8*, i8** %arg, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %add.ptr, i8** %arg, align 8, !tbaa !5
  %52 = load i8, i8* %add.ptr, align 1, !tbaa !7
  %conv61 = sext i8 %52 to i32
  switch i32 %conv61, label %sw.default [
    i32 108, label %sw.bb.62
    i32 76, label %sw.bb.64
  ]

sw.bb.62:                                         ; preds = %sw.bb.60
  %lib_p63 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  store %struct.string_pattern_s* %lib_p63, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.64:                                         ; preds = %sw.bb.60
  %libpath_p65 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 8
  store %struct.string_pattern_s* %libpath_p65, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.60
  %obj_p66 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 9
  store %struct.string_pattern_s* %obj_p66, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %53 = load i8*, i8** %arg, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr, i8** %arg, align 8, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.64, %sw.bb.62
  %54 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %upper_case67 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %54, i32 0, i32 0
  store i32 0, i32* %upper_case67, align 4, !tbaa !17
  %55 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %drop_extn68 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %55, i32 0, i32 1
  store i32 0, i32* %drop_extn68, align 4, !tbaa !18
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %add69 = add nsw i32 %56, 1
  %idxprom70 = sext i32 %add69 to i64
  %57 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds i8*, i8** %57, i64 %idxprom70
  %58 = load i8*, i8** %arrayidx71, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = sext i8 %59 to i32
  %cmp74 = icmp eq i32 %conv73, 45
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %sw.epilog
  %60 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %pattern77 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %60, i32 0, i32 2
  %arraydecay78 = getelementptr inbounds [61 x i8], [61 x i8]* %pattern77, i32 0, i32 0
  %call79 = call i8* @strcpy(i8* %arraydecay78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #7
  br label %if.end.125

if.else:                                          ; preds = %sw.epilog
  %61 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %pattern80 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %63, i32 0, i32 2
  %arraydecay81 = getelementptr inbounds [61 x i8], [61 x i8]* %pattern80, i32 0, i32 0
  store i8* %arraydecay81, i8** %p, align 8, !tbaa !5
  %64 = load i32, i32* %i, align 4, !tbaa !1
  %inc82 = add nsw i32 %64, 1
  store i32 %inc82, i32* %i, align 4, !tbaa !1
  %idxprom83 = sext i32 %inc82 to i64
  %65 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx84 = getelementptr inbounds i8*, i8** %65, i64 %idxprom83
  %66 = load i8*, i8** %arrayidx84, align 8, !tbaa !5
  store i8* %66, i8** %q, align 8, !tbaa !5
  br label %for.cond.85

for.cond.85:                                      ; preds = %if.end.122, %if.else
  %67 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr86 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr86, i8** %q, align 8, !tbaa !5
  %68 = load i8, i8* %67, align 1, !tbaa !7
  %69 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr87 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8, !tbaa !5
  store i8 %68, i8* %69, align 1, !tbaa !7
  %conv88 = sext i8 %68 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %for.body.91, label %for.end.123

for.body.91:                                      ; preds = %for.cond.85
  %70 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx92 = getelementptr inbounds i8, i8* %70, i64 -1
  %71 = load i8, i8* %arrayidx92, align 1, !tbaa !7
  %conv93 = sext i8 %71 to i32
  %72 = load i8, i8* %escape, align 1, !tbaa !7
  %conv94 = sext i8 %72 to i32
  %cmp95 = icmp eq i32 %conv93, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.122

if.then.97:                                       ; preds = %for.body.91
  %73 = load i8*, i8** %q, align 8, !tbaa !5
  %74 = load i8, i8* %73, align 1, !tbaa !7
  %conv98 = sext i8 %74 to i32
  switch i32 %conv98, label %sw.default.108 [
    i32 112, label %sw.bb.99
    i32 115, label %sw.bb.102
    i32 45, label %sw.bb.105
  ]

sw.bb.99:                                         ; preds = %if.then.97
  %75 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx100 = getelementptr inbounds i8, i8* %75, i64 -1
  store i8 37, i8* %arrayidx100, align 1, !tbaa !7
  %76 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr101 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr101, i8** %q, align 8, !tbaa !5
  br label %sw.epilog.121

sw.bb.102:                                        ; preds = %if.then.97
  %77 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx103 = getelementptr inbounds i8, i8* %77, i64 -1
  store i8 32, i8* %arrayidx103, align 1, !tbaa !7
  %78 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr104 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr104, i8** %q, align 8, !tbaa !5
  br label %sw.epilog.121

sw.bb.105:                                        ; preds = %if.then.97
  %79 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds i8, i8* %79, i64 -1
  store i8 45, i8* %arrayidx106, align 1, !tbaa !7
  %80 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr107 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr107, i8** %q, align 8, !tbaa !5
  br label %sw.epilog.121

sw.default.108:                                   ; preds = %if.then.97
  %81 = load i8*, i8** %q, align 8, !tbaa !5
  %82 = load i8, i8* %81, align 1, !tbaa !7
  %conv109 = sext i8 %82 to i32
  %83 = load i8, i8* %escape, align 1, !tbaa !7
  %conv110 = sext i8 %83 to i32
  %cmp111 = icmp eq i32 %conv109, %conv110
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %sw.default.108
  %84 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx114 = getelementptr inbounds i8, i8* %84, i64 -1
  store i8 92, i8* %arrayidx114, align 1, !tbaa !7
  %85 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr115 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr115, i8** %q, align 8, !tbaa !5
  br label %sw.epilog.121

if.end.116:                                       ; preds = %sw.default.108
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %87 = load i8, i8* %escape, align 1, !tbaa !7
  %conv117 = sext i8 %87 to i32
  %88 = load i8, i8* %escape, align 1, !tbaa !7
  %conv118 = sext i8 %88 to i32
  %89 = load i8*, i8** %q, align 8, !tbaa !5
  %90 = load i8, i8* %89, align 1, !tbaa !7
  %conv119 = sext i8 %90 to i32
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %conv117, i32 %conv118, i32 %conv119) #8
  call void @exit(i32 1) #9
  unreachable

sw.epilog.121:                                    ; preds = %if.then.113, %sw.bb.105, %sw.bb.102, %sw.bb.99
  br label %if.end.122

if.end.122:                                       ; preds = %sw.epilog.121, %for.body.91
  br label %for.cond.85

for.end.123:                                      ; preds = %for.cond.85
  %91 = load i8*, i8** %p, align 8, !tbaa !5
  %arrayidx124 = getelementptr inbounds i8, i8* %91, i64 -1
  store i8 10, i8* %arrayidx124, align 1, !tbaa !7
  %92 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %92, align 1, !tbaa !7
  %93 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %if.end.125

if.end.125:                                       ; preds = %for.end.123, %if.then.76
  br label %for.cond.126

for.cond.126:                                     ; preds = %sw.epilog.136, %if.end.125
  %95 = load i8*, i8** %arg, align 8, !tbaa !5
  %incdec.ptr127 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr127, i8** %arg, align 8, !tbaa !5
  %96 = load i8, i8* %incdec.ptr127, align 1, !tbaa !7
  %conv128 = sext i8 %96 to i32
  switch i32 %conv128, label %sw.default.134 [
    i32 117, label %sw.bb.129
    i32 101, label %sw.bb.131
    i32 0, label %sw.bb.133
  ]

sw.bb.129:                                        ; preds = %for.cond.126
  %97 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %upper_case130 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %97, i32 0, i32 0
  store i32 1, i32* %upper_case130, align 4, !tbaa !17
  br label %sw.epilog.136

sw.bb.131:                                        ; preds = %for.cond.126
  %98 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %drop_extn132 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %98, i32 0, i32 1
  store i32 1, i32* %drop_extn132, align 4, !tbaa !18
  br label %sw.epilog.136

sw.bb.133:                                        ; preds = %for.cond.126
  br label %pbreak

sw.default.134:                                   ; preds = %for.cond.126
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %100 = load i8*, i8** %arg, align 8, !tbaa !5
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %100) #8
  call void @exit(i32 1) #9
  unreachable

sw.epilog.136:                                    ; preds = %sw.bb.131, %sw.bb.129
  br label %for.cond.126

pbreak:                                           ; preds = %sw.bb.133
  %101 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %obj_p137 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 9
  %cmp138 = icmp eq %struct.string_pattern_s* %101, %obj_p137
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %pbreak
  %lib_p141 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  %102 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %103 = bitcast %struct.string_pattern_s* %lib_p141 to i8*
  %104 = bitcast %struct.string_pattern_s* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 72, i32 4, i1 false), !tbaa.struct !14
  %libpath_p142 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 8
  %105 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat, align 8, !tbaa !5
  %106 = bitcast %struct.string_pattern_s* %libpath_p142 to i8*
  %107 = bitcast %struct.string_pattern_s* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 72, i32 4, i1 false), !tbaa.struct !14
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %pbreak
  store i32 7, i32* %cleanup.dest.slot
  %108 = bitcast %struct.string_pattern_s** %pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %cleanup

sw.bb.144:                                        ; preds = %if.end.25
  %debug = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 0
  store i32 1, i32* %debug, align 4, !tbaa !19
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.145:                                    ; preds = %if.end.25
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %inc146 = add nsw i32 %109, 1
  store i32 %inc146, i32* %i, align 4, !tbaa !1
  %idxprom147 = sext i32 %inc146 to i64
  %110 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds i8*, i8** %110, i64 %idxprom147
  %111 = load i8*, i8** %arrayidx148, align 8, !tbaa !5
  %call149 = call %struct._IO_FILE* @fopen64(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  store %struct._IO_FILE* %call149, %struct._IO_FILE** %out, align 8, !tbaa !5
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %cmp150 = icmp eq %struct._IO_FILE* %112, null
  br i1 %cmp150, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %sw.epilog.145
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom153 = sext i32 %114 to i64
  %115 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx154 = getelementptr inbounds i8*, i8** %115, i64 %idxprom153
  %116 = load i8*, i8** %arrayidx154, align 8, !tbaa !5
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %116) #8
  call void @exit(i32 1) #9
  unreachable

if.end.156:                                       ; preds = %sw.epilog.145
  %117 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx157 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx157, align 1, !tbaa !7
  %conv158 = sext i8 %118 to i32
  switch i32 %conv158, label %sw.default.222 [
    i32 102, label %sw.bb.159
    i32 104, label %sw.bb.168
    i32 108, label %sw.bb.185
    i32 111, label %sw.bb.190
  ]

sw.bb.159:                                        ; preds = %if.end.156
  %call160 = call i32 @process_replaces(%struct.config_s* %conf) #8
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call161 = call i32 @fputs(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %119) #8
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call162 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %120) #8
  %121 = bitcast [80 x i8]* %templat to i8*
  call void @llvm.lifetime.start(i64 80, i8* %121) #1
  %arraydecay163 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  %name_prefix164 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 1
  %122 = load i8*, i8** %name_prefix164, align 8, !tbaa !16
  %call165 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %122) #7
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists166 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named = bitcast %union.ru_* %lists166 to %struct.nu_*
  %fonts = getelementptr inbounds %struct.nu_, %struct.nu_* %named, i32 0, i32 4
  %arraydecay167 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  call void @write_list(%struct._IO_FILE* %123, %struct.string_list_s* %fonts, i8* %arraydecay167) #8
  %124 = bitcast [80 x i8]* %templat to i8*
  call void @llvm.lifetime.end(i64 80, i8* %124) #1
  br label %sw.epilog.227

sw.bb.168:                                        ; preds = %if.end.156
  %call169 = call i32 @process_replaces(%struct.config_s* %conf) #8
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call170 = call i32 @fputs(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %125) #8
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists171 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named172 = bitcast %union.ru_* %lists171 to %struct.nu_*
  %compositors = getelementptr inbounds %struct.nu_, %struct.nu_* %named172, i32 0, i32 3
  call void @write_list(%struct._IO_FILE* %126, %struct.string_list_s* %compositors, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #8
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists173 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named174 = bitcast %union.ru_* %lists173 to %struct.nu_*
  %devs = getelementptr inbounds %struct.nu_, %struct.nu_* %named174, i32 0, i32 2
  call void @write_list(%struct._IO_FILE* %127, %struct.string_list_s* %devs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #8
  %lists175 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named176 = bitcast %union.ru_* %lists175 to %struct.nu_*
  %resources = getelementptr inbounds %struct.nu_, %struct.nu_* %named176, i32 0, i32 1
  call void @sort_uniq(%struct.string_list_s* %resources, i32 1) #8
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists177 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named178 = bitcast %union.ru_* %lists177 to %struct.nu_*
  %resources179 = getelementptr inbounds %struct.nu_, %struct.nu_* %named178, i32 0, i32 1
  call void @write_list(%struct._IO_FILE* %128, %struct.string_list_s* %resources179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #8
  %lists180 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named181 = bitcast %union.ru_* %lists180 to %struct.nu_*
  %sorted_resources = getelementptr inbounds %struct.nu_, %struct.nu_* %named181, i32 0, i32 0
  call void @sort_uniq(%struct.string_list_s* %sorted_resources, i32 0) #8
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists182 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named183 = bitcast %union.ru_* %lists182 to %struct.nu_*
  %sorted_resources184 = getelementptr inbounds %struct.nu_, %struct.nu_* %named183, i32 0, i32 0
  call void @write_list(%struct._IO_FILE* %129, %struct.string_list_s* %sorted_resources184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #8
  br label %sw.epilog.227

sw.bb.185:                                        ; preds = %if.end.156
  store i32 1, i32* %lib, align 4, !tbaa !1
  %130 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx186 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx186, align 1, !tbaa !7
  %conv187 = sext i8 %131 to i32
  %cmp188 = icmp eq i32 %conv187, 111
  %conv189 = zext i1 %cmp188 to i32
  store i32 %conv189, i32* %obj, align 4, !tbaa !1
  br label %lo

sw.bb.190:                                        ; preds = %if.end.156
  store i32 1, i32* %obj, align 4, !tbaa !1
  %132 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx191 = getelementptr inbounds i8, i8* %132, i64 2
  %133 = load i8, i8* %arrayidx191, align 1, !tbaa !7
  %conv192 = sext i8 %133 to i32
  %cmp193 = icmp eq i32 %conv192, 108
  %conv194 = zext i1 %cmp193 to i32
  store i32 %conv194, i32* %lib, align 4, !tbaa !1
  br label %lo

lo:                                               ; preds = %sw.bb.190, %sw.bb.185
  %call195 = call i32 @process_replaces(%struct.config_s* %conf) #8
  %134 = load i32, i32* %obj, align 4, !tbaa !1
  %tobool = icmp ne i32 %134, 0
  br i1 %tobool, label %if.then.196, label %if.end.203

if.then.196:                                      ; preds = %lo
  %lists197 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named198 = bitcast %union.ru_* %lists197 to %struct.nu_*
  %objs = getelementptr inbounds %struct.nu_, %struct.nu_* %named198, i32 0, i32 8
  call void @sort_uniq(%struct.string_list_s* %objs, i32 1) #8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists199 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named200 = bitcast %union.ru_* %lists199 to %struct.nu_*
  %objs201 = getelementptr inbounds %struct.nu_, %struct.nu_* %named200, i32 0, i32 8
  %obj_p202 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 9
  call void @write_list_pattern(%struct._IO_FILE* %135, %struct.string_list_s* %objs201, %struct.string_pattern_s* %obj_p202) #8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.196, %lo
  %136 = load i32, i32* %lib, align 4, !tbaa !1
  %tobool204 = icmp ne i32 %136, 0
  br i1 %tobool204, label %if.then.205, label %if.end.221

if.then.205:                                      ; preds = %if.end.203
  %lists206 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named207 = bitcast %union.ru_* %lists206 to %struct.nu_*
  %libs = getelementptr inbounds %struct.nu_, %struct.nu_* %named207, i32 0, i32 5
  call void @sort_uniq(%struct.string_list_s* %libs, i32 1) #8
  %lists208 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named209 = bitcast %union.ru_* %lists208 to %struct.nu_*
  %links = getelementptr inbounds %struct.nu_, %struct.nu_* %named209, i32 0, i32 7
  call void @sort_uniq(%struct.string_list_s* %links, i32 1) #8
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists210 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named211 = bitcast %union.ru_* %lists210 to %struct.nu_*
  %libpaths = getelementptr inbounds %struct.nu_, %struct.nu_* %named211, i32 0, i32 6
  %libpath_p212 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 8
  call void @write_list_pattern(%struct._IO_FILE* %137, %struct.string_list_s* %libpaths, %struct.string_pattern_s* %libpath_p212) #8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists213 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named214 = bitcast %union.ru_* %lists213 to %struct.nu_*
  %links215 = getelementptr inbounds %struct.nu_, %struct.nu_* %named214, i32 0, i32 7
  %obj_p216 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 9
  call void @write_list_pattern(%struct._IO_FILE* %138, %struct.string_list_s* %links215, %struct.string_pattern_s* %obj_p216) #8
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %lists217 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 6
  %named218 = bitcast %union.ru_* %lists217 to %struct.nu_*
  %libs219 = getelementptr inbounds %struct.nu_, %struct.nu_* %named218, i32 0, i32 5
  %lib_p220 = getelementptr inbounds %struct.config_s, %struct.config_s* %conf, i32 0, i32 7
  call void @write_list_pattern(%struct._IO_FILE* %139, %struct.string_list_s* %libs219, %struct.string_pattern_s* %lib_p220) #8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.205, %if.end.203
  br label %sw.epilog.227

sw.default.222:                                   ; preds = %if.end.156
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call223 = call i32 @fclose(%struct._IO_FILE* %140) #8
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom224 = sext i32 %142 to i64
  %143 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx225 = getelementptr inbounds i8*, i8** %143, i64 %idxprom224
  %144 = load i8*, i8** %arrayidx225, align 8, !tbaa !5
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %144) #8
  call void @exit(i32 1) #9
  unreachable

sw.epilog.227:                                    ; preds = %if.end.221, %sw.bb.168, %sw.bb.159
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call228 = call i32 @fclose(%struct._IO_FILE* %145) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.227, %sw.bb.144, %if.end.143, %cond.end.57, %sw.bb.38, %cond.end, %if.then
  %146 = bitcast i32* %obj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %lib to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.232
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.232

for.inc.232:                                      ; preds = %cleanup.cont, %cleanup
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %inc233 = add nsw i32 %150, 1
  store i32 %inc233, i32* %i, align 4, !tbaa !1
  br label %for.cond.13

for.end.234:                                      ; preds = %for.cond.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  call void @llvm.lifetime.end(i64 1, i8* %escape) #1
  %152 = bitcast %struct.config_s* %conf to i8*
  call void @llvm.lifetime.end(i64 624, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @alloc_list(%struct.string_list_s* %list) #0 {
entry:
  %list.addr = alloca %struct.string_list_s*, align 8
  store %struct.string_list_s* %list, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %0 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %0, i32 0, i32 3
  store i32 0, i32* %count, align 4, !tbaa !20
  %1 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %1, i32 0, i32 1
  %2 = load i32, i32* %max_count, align 4, !tbaa !21
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #7
  %3 = bitcast i8* %call to %struct.string_item_s*
  %4 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %4, i32 0, i32 4
  store %struct.string_item_s* %3, %struct.string_item_s** %items, align 8, !tbaa !22
  %5 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items1 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %5, i32 0, i32 4
  %6 = load %struct.string_item_s*, %struct.string_item_s** %items1, align 8, !tbaa !22
  %cmp = icmp ne %struct.string_item_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 552, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.alloc_list, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @read_dev(%struct.config_s* %pconf, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %pconf.addr = alloca %struct.config_s*, align 8
  %arg.addr = alloca i8*, align 8
  %item = alloca %struct.string_item_s*, align 8
  %in = alloca i8*, align 8
  %token = alloca i8*, align 8
  %category = alloca i8*, align 8
  %file_index = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.config_s* %pconf, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !5
  %0 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %category to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %file_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug = getelementptr inbounds %struct.config_s, %struct.config_s* %6, i32 0, i32 0
  %7 = load i32, i32* %debug, align 4, !tbaa !19
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %arg.addr, align 8, !tbaa !5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %10 = load i8*, i8** %arg.addr, align 8, !tbaa !5
  %call1 = call %struct.string_item_s* @read_file(%struct.config_s* %9, i8* %10) #8
  store %struct.string_item_s* %call1, %struct.string_item_s** %item, align 8, !tbaa !5
  %11 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %11, i32 0, i32 2
  %12 = load i32, i32* %index, align 4, !tbaa !23
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %13 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug3 = getelementptr inbounds %struct.config_s, %struct.config_s* %13, i32 0, i32 0
  %14 = load i32, i32* %debug3, align 4, !tbaa !19
  %tobool4 = icmp ne i32 %14, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.2
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.2
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %15 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %str, align 8, !tbaa !25
  store i8* %16, i8** %in, align 8, !tbaa !5
  %call9 = call noalias i8* @malloc(i64 4097) #7
  store i8* %call9, i8** %token, align 8, !tbaa !5
  %call10 = call noalias i8* @malloc(i64 4097) #7
  store i8* %call10, i8** %category, align 8, !tbaa !5
  %17 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %18 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_contents = getelementptr inbounds %struct.config_s, %struct.config_s* %18, i32 0, i32 4
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_contents, i32 0, i32 4
  %19 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !26
  %sub.ptr.lhs.cast = ptrtoint %struct.string_item_s* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.string_item_s* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %file_index, align 4, !tbaa !1
  %20 = load i8*, i8** %category, align 8, !tbaa !5
  %call11 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %21 = load i8*, i8** %token, align 8, !tbaa !5
  %call12 = call i32 @read_token(i8* %21, i32 4096, i8** %in) #8
  store i32 %call12, i32* %len, align 4, !tbaa !1
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %23 = load i8*, i8** %category, align 8, !tbaa !5
  %24 = load i8*, i8** %token, align 8, !tbaa !5
  %25 = load i32, i32* %file_index, align 4, !tbaa !1
  %call15 = call i32 @add_entry(%struct.config_s* %22, i8* %23, i8* %24, i32 %25) #8
  %26 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %index16 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %26, i32 0, i32 2
  %27 = load i32, i32* %index16, align 4, !tbaa !23
  %or = or i32 %27, %call15
  store i32 %or, i32* %index16, align 4, !tbaa !23
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i8*, i8** %category, align 8, !tbaa !5
  call void @free(i8* %28) #7
  %29 = load i32, i32* %len, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %29, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %31 = load i8*, i8** %token, align 8, !tbaa !5
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* %31) #8
  call void @exit(i32 1) #9
  unreachable

if.end.21:                                        ; preds = %while.end
  %32 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug22 = getelementptr inbounds %struct.config_s, %struct.config_s* %32, i32 0, i32 0
  %33 = load i32, i32* %debug22, align 4, !tbaa !19
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %34 = load i8*, i8** %arg.addr, align 8, !tbaa !5
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* %34) #8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %35 = load i8*, i8** %token, align 8, !tbaa !5
  call void @free(i8* %35) #7
  %36 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %index27 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %36, i32 0, i32 2
  %37 = load i32, i32* %index27, align 4, !tbaa !23
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.end.7
  %38 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %file_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %category to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct._IO_FILE* @fopen64(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @process_replaces(%struct.config_s* %pconf) #0 {
entry:
  %pconf.addr = alloca %struct.config_s*, align 8
  %bufname = alloca [120 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fname = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %rn = alloca i32, align 4
  %items22 = alloca %struct.string_item_s*, align 8
  %count27 = alloca i32, align 4
  %tn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.config_s* %pconf, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %0 = bitcast [120 x i8]* %bufname to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %3 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %replaces = getelementptr inbounds %struct.config_s, %struct.config_s* %3, i32 0, i32 5
  %count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %replaces, i32 0, i32 3
  %4 = load i32, i32* %count, align 4, !tbaa !27
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %bufname, i32 0, i32 0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %replaces1 = getelementptr inbounds %struct.config_s, %struct.config_s* %7, i32 0, i32 5
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %replaces1, i32 0, i32 4
  %8 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %8, i64 %idxprom
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %str, align 8, !tbaa !25
  %call = call i8* @strcpy(i8* %arraydecay, i8* %9) #7
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %bufname, i32 0, i32 0
  call void @dev_file_name(i8* %arraydecay2) #8
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.73, %for.body
  %10 = load i32, i32* %j, align 4, !tbaa !1
  %11 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names = getelementptr inbounds %struct.config_s, %struct.config_s* %11, i32 0, i32 3
  %count4 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_names, i32 0, i32 3
  %12 = load i32, i32* %count4, align 4, !tbaa !29
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %for.body.6, label %for.end.75

for.body.6:                                       ; preds = %for.cond.3
  %13 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names8 = getelementptr inbounds %struct.config_s, %struct.config_s* %15, i32 0, i32 3
  %items9 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_names8, i32 0, i32 4
  %16 = load %struct.string_item_s*, %struct.string_item_s** %items9, align 8, !tbaa !30
  %arrayidx10 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %16, i64 %idxprom7
  %str11 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx10, i32 0, i32 0
  %17 = load i8*, i8** %str11, align 8, !tbaa !25
  store i8* %17, i8** %fname, align 8, !tbaa !5
  %18 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %fname, align 8, !tbaa !5
  %arraydecay12 = getelementptr inbounds [120 x i8], [120 x i8]* %bufname, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* %20, i8* %arraydecay12) #7
  store i32 %call13, i32* %tmp, !tbaa !1
  %21 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.72, label %if.then

if.then:                                          ; preds = %for.body.6
  %24 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug = getelementptr inbounds %struct.config_s, %struct.config_s* %24, i32 0, i32 0
  %25 = load i32, i32* %debug, align 4, !tbaa !19
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %26 = load i8*, i8** %fname, align 8, !tbaa !5
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* %26) #8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %27 = bitcast i32* %rn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %rn, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.64, %if.end
  %28 = load i32, i32* %rn, align 4, !tbaa !1
  %cmp19 = icmp slt i32 %28, 9
  br i1 %cmp19, label %for.body.20, label %for.end.66

for.body.20:                                      ; preds = %for.cond.18
  %29 = bitcast %struct.string_item_s** %items22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i32, i32* %rn, align 4, !tbaa !1
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists = getelementptr inbounds %struct.config_s, %struct.config_s* %31, i32 0, i32 6
  %indexed = bitcast %union.ru_* %lists to [9 x %struct.string_list_s]*
  %arrayidx24 = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed, i32 0, i64 %idxprom23
  %items25 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %arrayidx24, i32 0, i32 4
  %32 = load %struct.string_item_s*, %struct.string_item_s** %items25, align 8, !tbaa !22
  store %struct.string_item_s* %32, %struct.string_item_s** %items22, align 8, !tbaa !5
  %33 = bitcast i32* %count27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %rn, align 4, !tbaa !1
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists29 = getelementptr inbounds %struct.config_s, %struct.config_s* %35, i32 0, i32 6
  %indexed30 = bitcast %union.ru_* %lists29 to [9 x %struct.string_list_s]*
  %arrayidx31 = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed30, i32 0, i64 %idxprom28
  %count32 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %arrayidx31, i32 0, i32 3
  %36 = load i32, i32* %count32, align 4, !tbaa !20
  store i32 %36, i32* %count27, align 4, !tbaa !1
  %37 = bitcast i32* %tn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 0, i32* %tn, align 4, !tbaa !1
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body.20
  %38 = load i32, i32* %tn, align 4, !tbaa !1
  %39 = load i32, i32* %count27, align 4, !tbaa !1
  %cmp35 = icmp slt i32 %38, %39
  br i1 %cmp35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.34
  %40 = load i32, i32* %tn, align 4, !tbaa !1
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.string_item_s*, %struct.string_item_s** %items22, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %41, i64 %idxprom37
  %file_index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx38, i32 0, i32 1
  %42 = load i32, i32* %file_index, align 4, !tbaa !31
  %43 = load i32, i32* %j, align 4, !tbaa !1
  %cmp39 = icmp eq i32 %42, %43
  br i1 %cmp39, label %if.then.40, label %if.end.58

if.then.40:                                       ; preds = %for.body.36
  %44 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug41 = getelementptr inbounds %struct.config_s, %struct.config_s* %44, i32 0, i32 0
  %45 = load i32, i32* %debug41, align 4, !tbaa !19
  %tobool42 = icmp ne i32 %45, 0
  br i1 %tobool42, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %if.then.40
  %46 = load i32, i32* %rn, align 4, !tbaa !1
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists45 = getelementptr inbounds %struct.config_s, %struct.config_s* %47, i32 0, i32 6
  %indexed46 = bitcast %union.ru_* %lists45 to [9 x %struct.string_list_s]*
  %arrayidx47 = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed46, i32 0, i64 %idxprom44
  %list_name = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %arrayidx47, i32 0, i32 0
  %48 = load i8*, i8** %list_name, align 8, !tbaa !32
  %49 = load i32, i32* %tn, align 4, !tbaa !1
  %idxprom48 = sext i32 %49 to i64
  %50 = load %struct.string_item_s*, %struct.string_item_s** %items22, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %50, i64 %idxprom48
  %str50 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx49, i32 0, i32 0
  %51 = load i8*, i8** %str50, align 8, !tbaa !25
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* %48, i8* %51) #8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.43, %if.then.40
  %52 = load i32, i32* %tn, align 4, !tbaa !1
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %tn, align 4, !tbaa !1
  %idxprom53 = sext i32 %52 to i64
  %53 = load %struct.string_item_s*, %struct.string_item_s** %items22, align 8, !tbaa !5
  %arrayidx54 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %53, i64 %idxprom53
  %54 = load i32, i32* %count27, align 4, !tbaa !1
  %dec55 = add nsw i32 %54, -1
  store i32 %dec55, i32* %count27, align 4, !tbaa !1
  %idxprom56 = sext i32 %dec55 to i64
  %55 = load %struct.string_item_s*, %struct.string_item_s** %items22, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %55, i64 %idxprom56
  %56 = bitcast %struct.string_item_s* %arrayidx54 to i8*
  %57 = bitcast %struct.string_item_s* %arrayidx57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.52, %for.body.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %58 = load i32, i32* %tn, align 4, !tbaa !1
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %tn, align 4, !tbaa !1
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  %59 = load i32, i32* %count27, align 4, !tbaa !1
  %60 = load i32, i32* %rn, align 4, !tbaa !1
  %idxprom59 = sext i32 %60 to i64
  %61 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists60 = getelementptr inbounds %struct.config_s, %struct.config_s* %61, i32 0, i32 6
  %indexed61 = bitcast %union.ru_* %lists60 to [9 x %struct.string_list_s]*
  %arrayidx62 = getelementptr inbounds [9 x %struct.string_list_s], [9 x %struct.string_list_s]* %indexed61, i32 0, i64 %idxprom59
  %count63 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %arrayidx62, i32 0, i32 3
  store i32 %59, i32* %count63, align 4, !tbaa !20
  %62 = bitcast i32* %tn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %count27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.string_item_s** %items22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end
  %65 = load i32, i32* %rn, align 4, !tbaa !1
  %inc65 = add nsw i32 %65, 1
  store i32 %inc65, i32* %rn, align 4, !tbaa !1
  br label %for.cond.18

for.end.66:                                       ; preds = %for.cond.18
  %66 = bitcast i32* %rn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom67 = sext i32 %67 to i64
  %68 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names68 = getelementptr inbounds %struct.config_s, %struct.config_s* %68, i32 0, i32 3
  %items69 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_names68, i32 0, i32 4
  %69 = load %struct.string_item_s*, %struct.string_item_s** %items69, align 8, !tbaa !30
  %arrayidx70 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %69, i64 %idxprom67
  %str71 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx70, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %str71, align 8, !tbaa !25
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %for.body.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %for.end.66
  %70 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end.75
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.73

for.inc.73:                                       ; preds = %cleanup.cont
  %71 = load i32, i32* %j, align 4, !tbaa !1
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, i32* %j, align 4, !tbaa !1
  br label %for.cond.3

for.end.75:                                       ; preds = %cleanup, %for.cond.3
  %72 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %73 = load i32, i32* %i, align 4, !tbaa !1
  %inc77 = add nsw i32 %73, 1
  store i32 %inc77, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %74 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %replaces79 = getelementptr inbounds %struct.config_s, %struct.config_s* %74, i32 0, i32 5
  %count80 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %replaces79, i32 0, i32 3
  store i32 0, i32* %count80, align 4, !tbaa !27
  store i32 1, i32* %cleanup.dest.slot
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast [120 x i8]* %bufname to i8*
  call void @llvm.lifetime.end(i64 120, i8* %76) #1
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @write_list(%struct._IO_FILE* %out, %struct.string_list_s* %list, i8* %pstr) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %list.addr = alloca %struct.string_list_s*, align 8
  %pstr.addr = alloca i8*, align 8
  %pat = alloca %struct.string_pattern_s, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  store %struct.string_list_s* %list, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  store i8* %pstr, i8** %pstr.addr, align 8, !tbaa !5
  %0 = bitcast %struct.string_pattern_s* %pat to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %upper_case = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %pat, i32 0, i32 0
  store i32 0, i32* %upper_case, align 4, !tbaa !17
  %drop_extn = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %pat, i32 0, i32 1
  store i32 0, i32* %drop_extn, align 4, !tbaa !18
  %pattern = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %pat, i32 0, i32 2
  %arraydecay = getelementptr inbounds [61 x i8], [61 x i8]* %pattern, i32 0, i32 0
  %1 = load i8*, i8** %pstr.addr, align 8, !tbaa !5
  %call = call i8* @strcpy(i8* %arraydecay, i8* %1) #7
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %3 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  call void @write_list_pattern(%struct._IO_FILE* %2, %struct.string_list_s* %3, %struct.string_pattern_s* %pat) #8
  %4 = bitcast %struct.string_pattern_s* %pat to i8*
  call void @llvm.lifetime.end(i64 72, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_uniq(%struct.string_list_s* %list, i32 %by_index) #0 {
entry:
  %list.addr = alloca %struct.string_list_s*, align 8
  %by_index.addr = alloca i32, align 4
  %strlist = alloca %struct.string_item_s*, align 8
  %count = alloca i32, align 4
  %from = alloca %struct.string_item_s*, align 8
  %to = alloca %struct.string_item_s*, align 8
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.string_list_s* %list, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  store i32 %by_index, i32* %by_index.addr, align 4, !tbaa !1
  %0 = bitcast %struct.string_item_s** %strlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %1, i32 0, i32 4
  %2 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !22
  store %struct.string_item_s* %2, %struct.string_item_s** %strlist, align 8, !tbaa !5
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count1 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %4, i32 0, i32 3
  %5 = load i32, i32* %count1, align 4, !tbaa !20
  store i32 %5, i32* %count, align 4, !tbaa !1
  %6 = bitcast %struct.string_item_s** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.string_item_s** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %10, i32 0, i32 2
  %11 = load i32, i32* %mode, align 4, !tbaa !34
  %cmp = icmp eq i32 %11, 4
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %last, align 4, !tbaa !1
  %12 = load i32, i32* %count, align 4, !tbaa !1
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.string_item_s*, %struct.string_item_s** %strlist, align 8, !tbaa !5
  %14 = bitcast %struct.string_item_s* %13 to i8*
  %15 = load i32, i32* %count, align 4, !tbaa !1
  %conv4 = sext i32 %15 to i64
  call void @qsort(i8* %14, i64 %conv4, i64 16, i32 (i8*, i8*)* @cmp_str) #8
  %16 = load %struct.string_item_s*, %struct.string_item_s** %strlist, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %16, i64 1
  store %struct.string_item_s* %add.ptr, %struct.string_item_s** %to, align 8, !tbaa !5
  store %struct.string_item_s* %add.ptr, %struct.string_item_s** %from, align 8, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = load i32, i32* %count, align 4, !tbaa !1
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %str, align 8, !tbaa !25
  %23 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %23, i64 -1
  %str7 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx, i32 0, i32 0
  %24 = load i8*, i8** %str7, align 8, !tbaa !25
  %call = call i32 @strcmp(i8* %22, i8* %24) #7
  store i32 %call, i32* %tmp, !tbaa !1
  %25 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %28 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %28, i32 1
  store %struct.string_item_s* %incdec.ptr, %struct.string_item_s** %to, align 8, !tbaa !5
  %29 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %30 = bitcast %struct.string_item_s* %28 to i8*
  %31 = bitcast %struct.string_item_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end.22

if.else:                                          ; preds = %for.body
  %32 = load i32, i32* %last, align 4, !tbaa !1
  %tobool9 = icmp ne i32 %32, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %33, i32 0, i32 2
  %34 = load i32, i32* %index, align 4, !tbaa !23
  %35 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %35, i64 -1
  %index11 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx10, i32 0, i32 2
  %36 = load i32, i32* %index11, align 4, !tbaa !23
  %cmp12 = icmp sgt i32 %34, %36
  br i1 %cmp12, label %if.then.19, label %if.end.21

cond.false:                                       ; preds = %if.else
  %37 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %index14 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %37, i32 0, i32 2
  %38 = load i32, i32* %index14, align 4, !tbaa !23
  %39 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %39, i64 -1
  %index16 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx15, i32 0, i32 2
  %40 = load i32, i32* %index16, align 4, !tbaa !23
  %cmp17 = icmp slt i32 %38, %40
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %cond.false, %cond.true
  %41 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %41, i64 -1
  %42 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %43 = bitcast %struct.string_item_s* %arrayidx20 to i8*
  %44 = bitcast %struct.string_item_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %cond.false, %cond.true
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %45 = load %struct.string_item_s*, %struct.string_item_s** %from, align 8, !tbaa !5
  %incdec.ptr23 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %45, i32 1
  store %struct.string_item_s* %incdec.ptr23, %struct.string_item_s** %from, align 8, !tbaa !5
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.string_item_s*, %struct.string_item_s** %to, align 8, !tbaa !5
  %48 = load %struct.string_item_s*, %struct.string_item_s** %strlist, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.string_item_s* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.string_item_s* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv24 = trunc i64 %sub.ptr.div to i32
  store i32 %conv24, i32* %count, align 4, !tbaa !1
  %49 = load i32, i32* %count, align 4, !tbaa !1
  %50 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count25 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %50, i32 0, i32 3
  store i32 %49, i32* %count25, align 4, !tbaa !20
  %51 = load i32, i32* %by_index.addr, align 4, !tbaa !1
  %tobool26 = icmp ne i32 %51, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end
  %52 = load %struct.string_item_s*, %struct.string_item_s** %strlist, align 8, !tbaa !5
  %53 = bitcast %struct.string_item_s* %52 to i8*
  %54 = load i32, i32* %count, align 4, !tbaa !1
  %conv28 = sext i32 %54 to i64
  call void @qsort(i8* %53, i64 %conv28, i64 16, i32 (i8*, i8*)* @cmp_index) #8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then
  %55 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.string_item_s** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.string_item_s** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.string_item_s** %strlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_list_pattern(%struct._IO_FILE* %out, %struct.string_list_s* %list, %struct.string_pattern_s* %pat) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %list.addr = alloca %struct.string_list_s*, align 8
  %pat.addr = alloca %struct.string_pattern_s*, align 8
  %i = alloca i32, align 4
  %macname = alloca [40 x i8], align 16
  %plen = alloca i32, align 4
  %lstr = alloca i8*, align 8
  %len = alloca i32, align 4
  %str5 = alloca i8*, align 8
  %xlen = alloca i32, align 4
  %xstr = alloca i8*, align 8
  %alist = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp59 = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  store %struct.string_list_s* %list, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  store %struct.string_pattern_s* %pat, %struct.string_pattern_s** %pat.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [40 x i8]* %macname to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  %2 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat.addr, align 8, !tbaa !5
  %pattern = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [61 x i8], [61 x i8]* %pattern, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %plen, align 4, !tbaa !1
  %arraydecay1 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  store i8 0, i8* %arraydecay1, align 1, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %5, i32 0, i32 3
  %6 = load i32, i32* %count, align 4, !tbaa !20
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %7 = bitcast i8** %lstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %9, i32 0, i32 4
  %10 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %10, i64 %idxprom
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx, i32 0, i32 0
  %11 = load i8*, i8** %str, align 8, !tbaa !25
  store i8* %11, i8** %lstr, align 8, !tbaa !5
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %lstr, align 8, !tbaa !5
  %call3 = call i64 @strlen(i8* %13) #10
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %len, align 4, !tbaa !1
  %14 = bitcast i8** %str5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %len, align 4, !tbaa !1
  %add = add nsw i32 %15, 1
  %conv6 = sext i32 %add to i64
  %call7 = call noalias i8* @malloc(i64 %conv6) #7
  store i8* %call7, i8** %str5, align 8, !tbaa !5
  %16 = bitcast i32* %xlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %plen, align 4, !tbaa !1
  %18 = load i32, i32* %len, align 4, !tbaa !1
  %mul = mul nsw i32 %18, 3
  %add8 = add nsw i32 %17, %mul
  store i32 %add8, i32* %xlen, align 4, !tbaa !1
  %19 = bitcast i8** %xstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %xlen, align 4, !tbaa !1
  %add9 = add nsw i32 %20, 1
  %conv10 = sext i32 %add9 to i64
  %call11 = call noalias i8* @malloc(i64 %conv10) #7
  store i8* %call11, i8** %xstr, align 8, !tbaa !5
  %21 = bitcast i8** %alist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8*, i8** %str5, align 8, !tbaa !5
  %23 = load i8*, i8** %lstr, align 8, !tbaa !5
  %call12 = call i8* @strcpy(i8* %22, i8* %23) #7
  %24 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat.addr, align 8, !tbaa !5
  %drop_extn = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %24, i32 0, i32 1
  %25 = load i32, i32* %drop_extn, align 4, !tbaa !18
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %for.body
  %26 = bitcast i8** %dot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %str5, align 8, !tbaa !5
  %28 = load i32, i32* %len, align 4, !tbaa !1
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %dot, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %29 = load i8*, i8** %dot, align 8, !tbaa !5
  %30 = load i8*, i8** %str5, align 8, !tbaa !5
  %cmp13 = icmp ugt i8* %29, %30
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %31 = load i8*, i8** %dot, align 8, !tbaa !5
  %32 = load i8, i8* %31, align 1, !tbaa !7
  %conv15 = sext i8 %32 to i32
  %cmp16 = icmp ne i32 %conv15, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i8*, i8** %dot, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr, i8** %dot, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i8*, i8** %dot, align 8, !tbaa !5
  %36 = load i8*, i8** %str5, align 8, !tbaa !5
  %cmp18 = icmp ugt i8* %35, %36
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %while.end
  %37 = load i8*, i8** %dot, align 8, !tbaa !5
  store i8 0, i8* %37, align 1, !tbaa !7
  %38 = load i8*, i8** %dot, align 8, !tbaa !5
  %39 = load i8*, i8** %str5, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv21, i32* %len, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.20, %while.end
  %40 = bitcast i8** %dot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %for.body
  %41 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat.addr, align 8, !tbaa !5
  %upper_case = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %41, i32 0, i32 0
  %42 = load i32, i32* %upper_case, align 4, !tbaa !17
  %tobool23 = icmp ne i32 %42, 0
  br i1 %tobool23, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.end.22
  %43 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i8*, i8** %str5, align 8, !tbaa !5
  store i8* %44, i8** %ptr, align 8, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.24
  %45 = load i8*, i8** %ptr, align 8, !tbaa !5
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %tobool26 = icmp ne i8 %46, 0
  br i1 %tobool26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %47 = load i8*, i8** %ptr, align 8, !tbaa !5
  %48 = load i8, i8* %47, align 1, !tbaa !7
  %conv28 = sext i8 %48 to i32
  %idxprom29 = sext i32 %conv28 to i64
  %call30 = call i16** @__ctype_b_loc() #11
  %49 = load i16*, i16** %call30, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds i16, i16* %49, i64 %idxprom29
  %50 = load i16, i16* %arrayidx31, align 2, !tbaa !35
  %conv32 = zext i16 %50 to i32
  %and = and i32 %conv32, 512
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %for.body.27
  %51 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i8*, i8** %ptr, align 8, !tbaa !5
  %53 = load i8, i8* %52, align 1, !tbaa !7
  %conv35 = sext i8 %53 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i32** @__ctype_toupper_loc() #11
  %54 = load i32*, i32** %call37, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i32, i32* %54, i64 %idxprom36
  %55 = load i32, i32* %arrayidx38, align 4, !tbaa !1
  store i32 %55, i32* %__res, align 4, !tbaa !1
  %56 = load i32, i32* %__res, align 4, !tbaa !1
  store i32 %56, i32* %tmp, !tbaa !1
  %57 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i32, i32* %tmp, !tbaa !1
  %conv39 = trunc i32 %58 to i8
  %59 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8 %conv39, i8* %59, align 1, !tbaa !7
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %60 = load i8*, i8** %ptr, align 8, !tbaa !5
  %incdec.ptr41 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr41, i8** %ptr, align 8, !tbaa !5
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %61 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.end.22
  %62 = load i8*, i8** %xstr, align 8, !tbaa !5
  %63 = load %struct.string_pattern_s*, %struct.string_pattern_s** %pat.addr, align 8, !tbaa !5
  %pattern43 = getelementptr inbounds %struct.string_pattern_s, %struct.string_pattern_s* %63, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [61 x i8], [61 x i8]* %pattern43, i32 0, i32 0
  %64 = load i8*, i8** %str5, align 8, !tbaa !5
  %65 = load i8*, i8** %str5, align 8, !tbaa !5
  %66 = load i8*, i8** %str5, align 8, !tbaa !5
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* %arraydecay44, i8* %64, i8* %65, i8* %66) #7
  %67 = load i8*, i8** %xstr, align 8, !tbaa !5
  %call46 = call i8* @strchr(i8* %67, i32 40) #7
  store i8* %call46, i8** %alist, align 8, !tbaa !5
  %68 = load i8*, i8** %alist, align 8, !tbaa !5
  %cmp47 = icmp ne i8* %68, null
  br i1 %cmp47, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.42
  %69 = load i8*, i8** %alist, align 8, !tbaa !5
  %70 = load i8*, i8** %xstr, align 8, !tbaa !5
  %cmp49 = icmp ne i8* %69, %70
  br i1 %cmp49, label %land.lhs.true.51, label %if.else

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %71 = load i8*, i8** %alist, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %71, i64 -1
  %72 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = sext i8 %72 to i32
  %cmp54 = icmp eq i32 %conv53, 95
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %land.lhs.true.51
  %73 = load i8*, i8** %alist, align 8, !tbaa !5
  store i8 0, i8* %73, align 1, !tbaa !7
  %74 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load i8*, i8** %xstr, align 8, !tbaa !5
  %arraydecay60 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  %call61 = call i32 @strcmp(i8* %76, i8* %arraydecay60) #7
  store i32 %call61, i32* %tmp59, !tbaa !1
  %77 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %tmp59, !tbaa !1
  %tobool62 = icmp ne i32 %79, 0
  br i1 %tobool62, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.then.56
  %arraydecay64 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  %80 = load i8, i8* %arraydecay64, align 1, !tbaa !7
  %tobool65 = icmp ne i8 %80, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.63
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call67 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %81) #8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.63
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %83 = load i8*, i8** %xstr, align 8, !tbaa !5
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* %83) #8
  %arraydecay70 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  %84 = load i8*, i8** %xstr, align 8, !tbaa !5
  %call71 = call i8* @strcpy(i8* %arraydecay70, i8* %84) #7
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.68, %if.then.56
  %85 = load i8*, i8** %alist, align 8, !tbaa !5
  store i8 40, i8* %85, align 1, !tbaa !7
  br label %if.end.79

if.else:                                          ; preds = %land.lhs.true.51, %land.lhs.true, %if.end.42
  %arraydecay73 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  %86 = load i8, i8* %arraydecay73, align 1, !tbaa !7
  %tobool74 = icmp ne i8 %86, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.else
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call76 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %87) #8
  %arraydecay77 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  store i8 0, i8* %arraydecay77, align 1, !tbaa !7
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.else
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.72
  %88 = load i8*, i8** %xstr, align 8, !tbaa !5
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call80 = call i32 @fputs(i8* %88, %struct._IO_FILE* %89) #8
  %90 = load i8*, i8** %xstr, align 8, !tbaa !5
  call void @free(i8* %90) #7
  %91 = load i8*, i8** %str5, align 8, !tbaa !5
  call void @free(i8* %91) #7
  %92 = bitcast i8** %alist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i8** %xstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %xlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i8** %str5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i8** %lstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.79
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %arraydecay83 = getelementptr inbounds [40 x i8], [40 x i8]* %macname, i32 0, i32 0
  %99 = load i8, i8* %arraydecay83, align 1, !tbaa !7
  %tobool84 = icmp ne i8 %99, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %for.end.82
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call86 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %100) #8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %for.end.82
  %101 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast [40 x i8]* %macname to i8*
  call void @llvm.lifetime.end(i64 40, i8* %102) #1
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define void @dev_file_name(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s2 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %1) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %2 = load i32, i32* %len, align 4, !tbaa !1
  %cmp = icmp sle i32 %2, 4
  br i1 %cmp, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #10
  store i64 %call2, i64* %__s1_len, align 8, !tbaa !37
  %5 = load i64, i64* %__s1_len, align 8, !tbaa !37
  %cmp3 = icmp ult i64 %5, 4
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %8 = load i32, i32* %len, align 4, !tbaa !1
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -4
  store i8* %add.ptr6, i8** %__s2, align 8, !tbaa !5
  %9 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !7
  %conv8 = zext i8 %10 to i32
  %11 = load i8*, i8** %__s2, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv9 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv8, %conv9
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %13 = load i64, i64* %__s1_len, align 8, !tbaa !37
  %cmp10 = icmp ugt i64 %13, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.40

land.lhs.true.12:                                 ; preds = %cond.true
  %14 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.12
  %15 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !7
  %conv15 = zext i8 %15 to i32
  %16 = load i8*, i8** %__s2, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %17 to i32
  %sub18 = sub nsw i32 %conv15, %conv17
  store i32 %sub18, i32* %__result, align 4, !tbaa !1
  %18 = load i64, i64* %__s1_len, align 8, !tbaa !37
  %cmp19 = icmp ugt i64 %18, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.39

land.lhs.true.21:                                 ; preds = %if.then
  %19 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp22 = icmp eq i32 %19, 0
  br i1 %cmp22, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %land.lhs.true.21
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 2), align 1, !tbaa !7
  %conv25 = zext i8 %20 to i32
  %21 = load i8*, i8** %__s2, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %22 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  store i32 %sub28, i32* %__result, align 4, !tbaa !1
  %23 = load i64, i64* %__s1_len, align 8, !tbaa !37
  %cmp29 = icmp ugt i64 %23, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %if.then.24
  %24 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp32 = icmp eq i32 %24, 0
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.31
  %25 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 3), align 1, !tbaa !7
  %conv35 = zext i8 %25 to i32
  %26 = load i8*, i8** %__s2, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 3
  %27 = load i8, i8* %arrayidx36, align 1, !tbaa !7
  %conv37 = zext i8 %27 to i32
  %sub38 = sub nsw i32 %conv35, %conv37
  store i32 %sub38, i32* %__result, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.31, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %land.lhs.true.21, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.12, %cond.true
  %28 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %28, i32* %tmp41, !tbaa !1
  %29 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %tmp41, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %32 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %33 = load i32, i32* %len, align 4, !tbaa !1
  %idx.ext42 = sext i32 %33 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %32, i64 %idx.ext42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 -4
  %call45 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %add.ptr44) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.40
  %cond = phi i32 [ %31, %if.end.40 ], [ %call45, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %34 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %cond.end, %entry
  %37 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call47 = call i8* @strcat(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %cond.end
  %38 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct.string_item_s* @read_file(%struct.config_s* %pconf, i8* %fname) #0 {
entry:
  %retval = alloca %struct.string_item_s*, align 8
  %pconf.addr = alloca %struct.config_s*, align 8
  %fname.addr = alloca i8*, align 8
  %cname = alloca i8*, align 8
  %i = alloca i32, align 4
  %in = alloca %struct._IO_FILE*, align 8
  %end = alloca i32, align 4
  %nread = alloca i32, align 4
  %cont = alloca i8*, align 8
  %item = alloca %struct.string_item_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.config_s* %pconf, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !5
  %0 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %1) #10
  %2 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_prefix = getelementptr inbounds %struct.config_s, %struct.config_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %file_prefix, align 8, !tbaa !15
  %call1 = call i64 @strlen(i8* %3) #10
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %call3 = call noalias i8* @malloc(i64 %add2) #7
  store i8* %call3, i8** %cname, align 8, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %cname, align 8, !tbaa !5
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %12 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_prefix4 = getelementptr inbounds %struct.config_s, %struct.config_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %file_prefix4, align 8, !tbaa !15
  %14 = load i8*, i8** %fname.addr, align 8, !tbaa !5
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.73, i32 0, i32 0), i8* %13, i8* %14) #8
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %cname, align 8, !tbaa !5
  %16 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_prefix6 = getelementptr inbounds %struct.config_s, %struct.config_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %file_prefix6, align 8, !tbaa !15
  %call7 = call i8* @strcpy(i8* %15, i8* %17) #7
  %18 = load i8*, i8** %cname, align 8, !tbaa !5
  %19 = load i8*, i8** %fname.addr, align 8, !tbaa !5
  %call8 = call i8* @strcat(i8* %18, i8* %19) #7
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names = getelementptr inbounds %struct.config_s, %struct.config_s* %21, i32 0, i32 3
  %count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_names, i32 0, i32 3
  %22 = load i32, i32* %count, align 4, !tbaa !29
  %cmp9 = icmp slt i32 %20, %22
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names10 = getelementptr inbounds %struct.config_s, %struct.config_s* %26, i32 0, i32 3
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_names10, i32 0, i32 4
  %27 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %27, i64 %idxprom
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %arrayidx, i32 0, i32 0
  %28 = load i8*, i8** %str, align 8, !tbaa !25
  %29 = load i8*, i8** %cname, align 8, !tbaa !5
  %call11 = call i32 @strcmp(i8* %28, i8* %29) #7
  store i32 %call11, i32* %tmp, !tbaa !1
  %30 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %33 = load i8*, i8** %cname, align 8, !tbaa !5
  call void @free(i8* %33) #7
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom13 = sext i32 %34 to i64
  %35 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_contents = getelementptr inbounds %struct.config_s, %struct.config_s* %35, i32 0, i32 4
  %items14 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %file_contents, i32 0, i32 4
  %36 = load %struct.string_item_s*, %struct.string_item_s** %items14, align 8, !tbaa !26
  %arrayidx15 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %36, i64 %idxprom13
  store %struct.string_item_s* %arrayidx15, %struct.string_item_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8*, i8** %cname, align 8, !tbaa !5
  %call17 = call %struct._IO_FILE* @fopen64(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0)) #8
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %in, align 8, !tbaa !5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp18 = icmp eq %struct._IO_FILE* %39, null
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %for.end
  %40 = load i8*, i8** %cname, align 8, !tbaa !5
  %call20 = call %struct._IO_FILE* @fopen64(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0)) #8
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %in, align 8, !tbaa !5
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp21 = icmp eq %struct._IO_FILE* %41, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.19
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %43 = load i8*, i8** %cname, align 8, !tbaa !5
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i8* %43) #8
  call void @exit(i32 1) #9
  unreachable

if.end.24:                                        ; preds = %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call26 = call i32 @fseek(%struct._IO_FILE* %44, i64 0, i32 2) #8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call27 = call i64 @ftell(%struct._IO_FILE* %45) #8
  %conv = trunc i64 %call27 to i32
  store i32 %conv, i32* %end, align 4, !tbaa !1
  %46 = load i32, i32* %end, align 4, !tbaa !1
  %add28 = add nsw i32 %46, 1
  %conv29 = sext i32 %add28 to i64
  %call30 = call noalias i8* @malloc(i64 %conv29) #7
  store i8* %call30, i8** %cont, align 8, !tbaa !5
  %47 = load i8*, i8** %cont, align 8, !tbaa !5
  %cmp31 = icmp eq i8* %47, null
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.25
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %49 = load i32, i32* %end, align 4, !tbaa !1
  %add34 = add nsw i32 %49, 1
  %50 = load i8*, i8** %cname, align 8, !tbaa !5
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0), i32 %add34, i8* %50) #8
  call void @exit(i32 1) #9
  unreachable

if.end.36:                                        ; preds = %if.end.25
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  call void @rewind(%struct._IO_FILE* %51) #8
  %52 = load i8*, i8** %cont, align 8, !tbaa !5
  %53 = load i32, i32* %end, align 4, !tbaa !1
  %conv37 = sext i32 %53 to i64
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call38 = call i64 @fread(i8* %52, i64 1, i64 %conv37, %struct._IO_FILE* %54) #8
  %conv39 = trunc i64 %call38 to i32
  store i32 %conv39, i32* %nread, align 4, !tbaa !1
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call40 = call i32 @fclose(%struct._IO_FILE* %55) #8
  %56 = load i32, i32* %nread, align 4, !tbaa !1
  %idxprom41 = sext i32 %56 to i64
  %57 = load i8*, i8** %cont, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %57, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1, !tbaa !7
  %58 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug = getelementptr inbounds %struct.config_s, %struct.config_s* %58, i32 0, i32 0
  %59 = load i32, i32* %debug, align 4, !tbaa !19
  %tobool43 = icmp ne i32 %59, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.36
  %60 = load i8*, i8** %cname, align 8, !tbaa !5
  %61 = load i32, i32* %nread, align 4, !tbaa !1
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i8* %60, i32 %61) #8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.36
  %62 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_names47 = getelementptr inbounds %struct.config_s, %struct.config_s* %62, i32 0, i32 3
  %63 = load i8*, i8** %cname, align 8, !tbaa !5
  %call48 = call %struct.string_item_s* @add_item(%struct.string_list_s* %file_names47, i8* %63, i32 -1) #8
  %64 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_contents49 = getelementptr inbounds %struct.config_s, %struct.config_s* %64, i32 0, i32 4
  %65 = load i8*, i8** %cont, align 8, !tbaa !5
  %call50 = call %struct.string_item_s* @add_item(%struct.string_list_s* %file_contents49, i8* %65, i32 -1) #8
  store %struct.string_item_s* %call50, %struct.string_item_s** %item, align 8, !tbaa !5
  %66 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %66, i32 0, i32 2
  store i32 0, i32* %index, align 4, !tbaa !23
  %67 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  store %struct.string_item_s* %67, %struct.string_item_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.12
  %68 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i8** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load %struct.string_item_s*, %struct.string_item_s** %retval
  ret %struct.string_item_s* %75
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i32 @read_token(i8* %token, i32 %max_len, i8** %pin) #0 {
entry:
  %token.addr = alloca i8*, align 8
  %max_len.addr = alloca i32, align 4
  %pin.addr = alloca i8**, align 8
  %in = alloca i8*, align 8
  %len = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %token, i8** %token.addr, align 8, !tbaa !5
  store i32 %max_len, i32* %max_len.addr, align 4, !tbaa !1
  store i8** %pin, i8*** %pin.addr, align 8, !tbaa !5
  %0 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %pin.addr, align 8, !tbaa !5
  %2 = load i8*, i8** %1, align 8, !tbaa !5
  store i8* %2, i8** %in, align 8, !tbaa !5
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %len, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %4 = load i32, i32* %len, align 4, !tbaa !1
  %5 = load i32, i32* %max_len.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %6 = load i8*, i8** %in, align 8, !tbaa !5
  %7 = load i8, i8* %6, align 1, !tbaa !7
  store i8 %7, i8* %ch, align 1, !tbaa !7
  %8 = load i8, i8* %ch, align 1, !tbaa !7
  %conv = sext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %in, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %in, align 8, !tbaa !5
  %10 = load i8, i8* %ch, align 1, !tbaa !7
  %conv3 = sext i8 %10 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #11
  %11 = load i16*, i16** %call, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv4 = zext i16 %12 to i32
  %and = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %len, align 4, !tbaa !1
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %14 = load i8, i8* %ch, align 1, !tbaa !7
  %15 = load i32, i32* %len, align 4, !tbaa !1
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %len, align 4, !tbaa !1
  %idxprom11 = sext i32 %15 to i64
  %16 = load i8*, i8** %token.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  store i8 %14, i8* %arrayidx12, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.end.9, %if.then.8, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %17 = load i32, i32* %len, align 4, !tbaa !1
  %idxprom13 = sext i32 %17 to i64
  %18 = load i8*, i8** %token.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !7
  %19 = load i8*, i8** %in, align 8, !tbaa !5
  %20 = load i8**, i8*** %pin.addr, align 8, !tbaa !5
  store i8* %19, i8** %20, align 8, !tbaa !5
  %21 = load i32, i32* %len, align 4, !tbaa !1
  %22 = load i32, i32* %max_len.addr, align 4, !tbaa !1
  %cmp15 = icmp sge i32 %21, %22
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %23 = load i32, i32* %len, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %23, %cond.false ]
  store i32 1, i32* %cleanup.dest.slot
  %24 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 %cond

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @add_entry(%struct.config_s* %pconf, i8* %category, i8* %item, i32 %file_index) #0 {
entry:
  %retval = alloca i32, align 4
  %pconf.addr = alloca %struct.config_s*, align 8
  %category.addr = alloca i8*, align 8
  %item.addr = alloca i8*, align 8
  %file_index.addr = alloca i32, align 4
  %str = alloca [120 x i8], align 16
  %templat = alloca [80 x i8], align 16
  %pat = alloca i8*, align 8
  %list = alloca %struct.string_list_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %__s1_len63 = alloca i64, align 8
  %__s2_len65 = alloca i64, align 8
  %tmp66 = alloca i32, align 4
  %__s173 = alloca i8*, align 8
  %__result75 = alloca i32, align 4
  %tmp113 = alloca i32, align 4
  %__s1_len122 = alloca i64, align 8
  %__s2_len124 = alloca i64, align 8
  %tmp125 = alloca i32, align 4
  %__s1132 = alloca i8*, align 8
  %__result134 = alloca i32, align 4
  %tmp172 = alloca i32, align 4
  %__s1_len188 = alloca i64, align 8
  %__s2_len190 = alloca i64, align 8
  %tmp191 = alloca i32, align 4
  %__s1198 = alloca i8*, align 8
  %__result200 = alloca i32, align 4
  %tmp238 = alloca i32, align 4
  %__s1_len253 = alloca i64, align 8
  %__s2_len255 = alloca i64, align 8
  %tmp256 = alloca i32, align 4
  %__s1263 = alloca i8*, align 8
  %__result265 = alloca i32, align 4
  %tmp303 = alloca i32, align 4
  %__s1_len314 = alloca i64, align 8
  %__s2_len316 = alloca i64, align 8
  %tmp317 = alloca i32, align 4
  %__s1324 = alloca i8*, align 8
  %__result326 = alloca i32, align 4
  %tmp364 = alloca i32, align 4
  %__s1_len373 = alloca i64, align 8
  %__s2_len375 = alloca i64, align 8
  %tmp376 = alloca i32, align 4
  %__s1383 = alloca i8*, align 8
  %__result385 = alloca i32, align 4
  %tmp423 = alloca i32, align 4
  %__s1_len436 = alloca i64, align 8
  %__s2_len438 = alloca i64, align 8
  %tmp439 = alloca i32, align 4
  %__s1446 = alloca i8*, align 8
  %__result448 = alloca i32, align 4
  %tmp486 = alloca i32, align 4
  %__s1_len497 = alloca i64, align 8
  %__s2_len499 = alloca i64, align 8
  %tmp500 = alloca i32, align 4
  %__s1507 = alloca i8*, align 8
  %__result509 = alloca i32, align 4
  %tmp547 = alloca i32, align 4
  %__s1_len558 = alloca i64, align 8
  %__s2_len560 = alloca i64, align 8
  %tmp561 = alloca i32, align 4
  %__s1568 = alloca i8*, align 8
  %__result570 = alloca i32, align 4
  %tmp608 = alloca i32, align 4
  %__s1_len617 = alloca i64, align 8
  %__s2_len619 = alloca i64, align 8
  %tmp620 = alloca i32, align 4
  %__s1627 = alloca i8*, align 8
  %__result629 = alloca i32, align 4
  %tmp667 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len681 = alloca i64, align 8
  %__s2_len683 = alloca i64, align 8
  %tmp684 = alloca i32, align 4
  %__s1691 = alloca i8*, align 8
  %__result693 = alloca i32, align 4
  %tmp731 = alloca i32, align 4
  %__s1_len740 = alloca i64, align 8
  %__s2_len742 = alloca i64, align 8
  %tmp743 = alloca i32, align 4
  %__s1750 = alloca i8*, align 8
  %__result752 = alloca i32, align 4
  %tmp790 = alloca i32, align 4
  %__s1_len805 = alloca i64, align 8
  %__s2_len807 = alloca i64, align 8
  %tmp808 = alloca i32, align 4
  %__s1815 = alloca i8*, align 8
  %__result817 = alloca i32, align 4
  %tmp855 = alloca i32, align 4
  %__s1_len866 = alloca i64, align 8
  %__s2_len868 = alloca i64, align 8
  %tmp869 = alloca i32, align 4
  %__s1876 = alloca i8*, align 8
  %__result878 = alloca i32, align 4
  %tmp916 = alloca i32, align 4
  %__s1_len927 = alloca i64, align 8
  %__s2_len929 = alloca i64, align 8
  %tmp930 = alloca i32, align 4
  %__s1937 = alloca i8*, align 8
  %__result939 = alloca i32, align 4
  %tmp977 = alloca i32, align 4
  %__s1_len991 = alloca i64, align 8
  %__s2_len993 = alloca i64, align 8
  %tmp994 = alloca i32, align 4
  %__s11001 = alloca i8*, align 8
  %__result1003 = alloca i32, align 4
  %tmp1041 = alloca i32, align 4
  %__s1_len1057 = alloca i64, align 8
  %__s2_len1059 = alloca i64, align 8
  %tmp1060 = alloca i32, align 4
  %__s11067 = alloca i8*, align 8
  %__result1069 = alloca i32, align 4
  %tmp1107 = alloca i32, align 4
  %__s1_len1117 = alloca i64, align 8
  %__s2_len1119 = alloca i64, align 8
  %tmp1120 = alloca i32, align 4
  %__s11127 = alloca i8*, align 8
  %__result1129 = alloca i32, align 4
  %tmp1167 = alloca i32, align 4
  %__s1_len1181 = alloca i64, align 8
  %__s2_len1183 = alloca i64, align 8
  %tmp1184 = alloca i32, align 4
  %__s11191 = alloca i8*, align 8
  %__result1193 = alloca i32, align 4
  %tmp1231 = alloca i32, align 4
  %__s1_len1242 = alloca i64, align 8
  %__s2_len1244 = alloca i64, align 8
  %tmp1245 = alloca i32, align 4
  %__s11252 = alloca i8*, align 8
  %__result1254 = alloca i32, align 4
  %tmp1292 = alloca i32, align 4
  store %struct.config_s* %pconf, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  store i8* %category, i8** %category.addr, align 8, !tbaa !5
  store i8* %item, i8** %item.addr, align 8, !tbaa !5
  store i32 %file_index, i32* %file_index.addr, align 4, !tbaa !1
  %0 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = sext i8 %3 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #11
  %4 = load i16*, i16** %call, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx4, align 2, !tbaa !35
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %7 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %call6 = call i8* @strcpy(i8* %6, i8* %add.ptr) #7
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = bitcast [120 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 120, i8* %8) #1
  %9 = bitcast [80 x i8]* %templat to i8*
  call void @llvm.lifetime.start(i64 80, i8* %9) #1
  %10 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %pat, align 8, !tbaa !5
  %11 = bitcast %struct.string_list_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists = getelementptr inbounds %struct.config_s, %struct.config_s* %12, i32 0, i32 6
  %named = bitcast %union.ru_* %lists to %struct.nu_*
  %resources = getelementptr inbounds %struct.nu_, %struct.nu_* %named, i32 0, i32 1
  store %struct.string_list_s* %resources, %struct.string_list_s** %list, align 8, !tbaa !5
  %13 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %debug = getelementptr inbounds %struct.config_s, %struct.config_s* %13, i32 0, i32 0
  %14 = load i32, i32* %debug, align 4, !tbaa !19
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %15 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %16 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* %15, i8* %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  %17 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %conv11 = sext i8 %18 to i32
  switch i32 %conv11, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb.61
    i32 101, label %sw.bb.186
    i32 102, label %sw.bb.251
    i32 104, label %sw.bb.434
    i32 105, label %sw.bb.495
    i32 108, label %sw.bb.803
    i32 111, label %sw.bb.989
    i32 112, label %sw.bb.1115
    i32 114, label %sw.bb.1240
  ]

sw.bb:                                            ; preds = %if.end
  %19 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.21 to i64)), i64 1), label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %sw.bb
  %call13 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #10
  store i64 %call13, i64* %__s2_len, align 8, !tbaa !37
  %21 = load i64, i64* %__s2_len, align 8, !tbaa !37
  %cmp14 = icmp ult i64 %21, 4
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12
  %22 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %23, i8** %__s1, align 8, !tbaa !5
  %24 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), align 1, !tbaa !7
  %conv20 = zext i8 %27 to i32
  %sub = sub nsw i32 %conv19, %conv20
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !37
  %cmp21 = icmp ugt i64 %28, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.53

land.lhs.true.23:                                 ; preds = %cond.true
  %29 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp24 = icmp eq i32 %29, 0
  br i1 %cmp24, label %if.then.26, label %if.end.53

if.then.26:                                       ; preds = %land.lhs.true.23
  %30 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %conv28 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i64 1), align 1, !tbaa !7
  %conv29 = zext i8 %32 to i32
  %sub30 = sub nsw i32 %conv28, %conv29
  store i32 %sub30, i32* %__result, align 4, !tbaa !1
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !37
  %cmp31 = icmp ugt i64 %33, 1
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.52

land.lhs.true.33:                                 ; preds = %if.then.26
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp34 = icmp eq i32 %34, 0
  br i1 %cmp34, label %if.then.36, label %if.end.52

if.then.36:                                       ; preds = %land.lhs.true.33
  %35 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i64 2), align 1, !tbaa !7
  %conv39 = zext i8 %37 to i32
  %sub40 = sub nsw i32 %conv38, %conv39
  store i32 %sub40, i32* %__result, align 4, !tbaa !1
  %38 = load i64, i64* %__s2_len, align 8, !tbaa !37
  %cmp41 = icmp ugt i64 %38, 2
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.51

land.lhs.true.43:                                 ; preds = %if.then.36
  %39 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp44 = icmp eq i32 %39, 0
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.43
  %40 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %41 to i32
  %42 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i64 3), align 1, !tbaa !7
  %conv49 = zext i8 %42 to i32
  %sub50 = sub nsw i32 %conv48, %conv49
  store i32 %sub50, i32* %__result, align 4, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %land.lhs.true.43, %if.then.36
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.33, %if.then.26
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true.23, %cond.true
  %43 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %43, i32* %tmp54, !tbaa !1
  %44 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %tmp54, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.12, %sw.bb
  %47 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call55 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.53
  %cond = phi i32 [ %46, %if.end.53 ], [ %call55, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %48 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %tmp, !tbaa !1
  %tobool56 = icmp ne i32 %50, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %cond.end
  br label %err

if.end.58:                                        ; preds = %cond.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  %51 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists59 = getelementptr inbounds %struct.config_s, %struct.config_s* %51, i32 0, i32 6
  %named60 = bitcast %union.ru_* %lists59 to %struct.nu_*
  %compositors = getelementptr inbounds %struct.nu_, %struct.nu_* %named60, i32 0, i32 3
  store %struct.string_list_s* %compositors, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %pre

sw.bb.61:                                         ; preds = %if.end
  %52 = bitcast i64* %__s1_len63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast i64* %__s2_len65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.23 to i64)), i64 1), label %land.lhs.true.67, label %cond.false.114

land.lhs.true.67:                                 ; preds = %sw.bb.61
  %call68 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #10
  store i64 %call68, i64* %__s2_len65, align 8, !tbaa !37
  %54 = load i64, i64* %__s2_len65, align 8, !tbaa !37
  %cmp69 = icmp ult i64 %54, 4
  br i1 %cmp69, label %cond.true.71, label %cond.false.114

cond.true.71:                                     ; preds = %land.lhs.true.67
  %55 = bitcast i8** %__s173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %56, i8** %__s173, align 8, !tbaa !5
  %57 = bitcast i32* %__result75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i8*, i8** %__s173, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx76, align 1, !tbaa !7
  %conv77 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), align 1, !tbaa !7
  %conv78 = zext i8 %60 to i32
  %sub79 = sub nsw i32 %conv77, %conv78
  store i32 %sub79, i32* %__result75, align 4, !tbaa !1
  %61 = load i64, i64* %__s2_len65, align 8, !tbaa !37
  %cmp80 = icmp ugt i64 %61, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.112

land.lhs.true.82:                                 ; preds = %cond.true.71
  %62 = load i32, i32* %__result75, align 4, !tbaa !1
  %cmp83 = icmp eq i32 %62, 0
  br i1 %cmp83, label %if.then.85, label %if.end.112

if.then.85:                                       ; preds = %land.lhs.true.82
  %63 = load i8*, i8** %__s173, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx86, align 1, !tbaa !7
  %conv87 = zext i8 %64 to i32
  %65 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i64 1), align 1, !tbaa !7
  %conv88 = zext i8 %65 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  store i32 %sub89, i32* %__result75, align 4, !tbaa !1
  %66 = load i64, i64* %__s2_len65, align 8, !tbaa !37
  %cmp90 = icmp ugt i64 %66, 1
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.111

land.lhs.true.92:                                 ; preds = %if.then.85
  %67 = load i32, i32* %__result75, align 4, !tbaa !1
  %cmp93 = icmp eq i32 %67, 0
  br i1 %cmp93, label %if.then.95, label %if.end.111

if.then.95:                                       ; preds = %land.lhs.true.92
  %68 = load i8*, i8** %__s173, align 8, !tbaa !5
  %arrayidx96 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx96, align 1, !tbaa !7
  %conv97 = zext i8 %69 to i32
  %70 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i64 2), align 1, !tbaa !7
  %conv98 = zext i8 %70 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  store i32 %sub99, i32* %__result75, align 4, !tbaa !1
  %71 = load i64, i64* %__s2_len65, align 8, !tbaa !37
  %cmp100 = icmp ugt i64 %71, 2
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.110

land.lhs.true.102:                                ; preds = %if.then.95
  %72 = load i32, i32* %__result75, align 4, !tbaa !1
  %cmp103 = icmp eq i32 %72, 0
  br i1 %cmp103, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %land.lhs.true.102
  %73 = load i8*, i8** %__s173, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx106, align 1, !tbaa !7
  %conv107 = zext i8 %74 to i32
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i64 3), align 1, !tbaa !7
  %conv108 = zext i8 %75 to i32
  %sub109 = sub nsw i32 %conv107, %conv108
  store i32 %sub109, i32* %__result75, align 4, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.105, %land.lhs.true.102, %if.then.95
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.92, %if.then.85
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.82, %cond.true.71
  %76 = load i32, i32* %__result75, align 4, !tbaa !1
  store i32 %76, i32* %tmp113, !tbaa !1
  %77 = bitcast i32* %__result75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i8** %__s173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %tmp113, !tbaa !1
  br label %cond.end.116

cond.false.114:                                   ; preds = %land.lhs.true.67, %sw.bb.61
  %80 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call115 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #7
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.114, %if.end.112
  %cond117 = phi i32 [ %79, %if.end.112 ], [ %call115, %cond.false.114 ]
  store i32 %cond117, i32* %tmp66, !tbaa !1
  %81 = bitcast i64* %__s2_len65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64* %__s1_len63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %tmp66, !tbaa !1
  %tobool118 = icmp ne i32 %83, 0
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %cond.end.116
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.181

if.else.120:                                      ; preds = %cond.end.116
  %84 = bitcast i64* %__s1_len122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s2_len124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.25 to i64)), i64 1), label %land.lhs.true.126, label %cond.false.173

land.lhs.true.126:                                ; preds = %if.else.120
  %call127 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #10
  store i64 %call127, i64* %__s2_len124, align 8, !tbaa !37
  %86 = load i64, i64* %__s2_len124, align 8, !tbaa !37
  %cmp128 = icmp ult i64 %86, 4
  br i1 %cmp128, label %cond.true.130, label %cond.false.173

cond.true.130:                                    ; preds = %land.lhs.true.126
  %87 = bitcast i8** %__s1132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %88, i8** %__s1132, align 8, !tbaa !5
  %89 = bitcast i32* %__result134 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load i8*, i8** %__s1132, align 8, !tbaa !5
  %arrayidx135 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx135, align 1, !tbaa !7
  %conv136 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), align 1, !tbaa !7
  %conv137 = zext i8 %92 to i32
  %sub138 = sub nsw i32 %conv136, %conv137
  store i32 %sub138, i32* %__result134, align 4, !tbaa !1
  %93 = load i64, i64* %__s2_len124, align 8, !tbaa !37
  %cmp139 = icmp ugt i64 %93, 0
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.171

land.lhs.true.141:                                ; preds = %cond.true.130
  %94 = load i32, i32* %__result134, align 4, !tbaa !1
  %cmp142 = icmp eq i32 %94, 0
  br i1 %cmp142, label %if.then.144, label %if.end.171

if.then.144:                                      ; preds = %land.lhs.true.141
  %95 = load i8*, i8** %__s1132, align 8, !tbaa !5
  %arrayidx145 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx145, align 1, !tbaa !7
  %conv146 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 1), align 1, !tbaa !7
  %conv147 = zext i8 %97 to i32
  %sub148 = sub nsw i32 %conv146, %conv147
  store i32 %sub148, i32* %__result134, align 4, !tbaa !1
  %98 = load i64, i64* %__s2_len124, align 8, !tbaa !37
  %cmp149 = icmp ugt i64 %98, 1
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.170

land.lhs.true.151:                                ; preds = %if.then.144
  %99 = load i32, i32* %__result134, align 4, !tbaa !1
  %cmp152 = icmp eq i32 %99, 0
  br i1 %cmp152, label %if.then.154, label %if.end.170

if.then.154:                                      ; preds = %land.lhs.true.151
  %100 = load i8*, i8** %__s1132, align 8, !tbaa !5
  %arrayidx155 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx155, align 1, !tbaa !7
  %conv156 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 2), align 1, !tbaa !7
  %conv157 = zext i8 %102 to i32
  %sub158 = sub nsw i32 %conv156, %conv157
  store i32 %sub158, i32* %__result134, align 4, !tbaa !1
  %103 = load i64, i64* %__s2_len124, align 8, !tbaa !37
  %cmp159 = icmp ugt i64 %103, 2
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.169

land.lhs.true.161:                                ; preds = %if.then.154
  %104 = load i32, i32* %__result134, align 4, !tbaa !1
  %cmp162 = icmp eq i32 %104, 0
  br i1 %cmp162, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %land.lhs.true.161
  %105 = load i8*, i8** %__s1132, align 8, !tbaa !5
  %arrayidx165 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx165, align 1, !tbaa !7
  %conv166 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 3), align 1, !tbaa !7
  %conv167 = zext i8 %107 to i32
  %sub168 = sub nsw i32 %conv166, %conv167
  store i32 %sub168, i32* %__result134, align 4, !tbaa !1
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.164, %land.lhs.true.161, %if.then.154
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %land.lhs.true.151, %if.then.144
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %land.lhs.true.141, %cond.true.130
  %108 = load i32, i32* %__result134, align 4, !tbaa !1
  store i32 %108, i32* %tmp172, !tbaa !1
  %109 = bitcast i32* %__result134 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i8** %__s1132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = load i32, i32* %tmp172, !tbaa !1
  br label %cond.end.175

cond.false.173:                                   ; preds = %land.lhs.true.126, %if.else.120
  %112 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call174 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #7
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.173, %if.end.171
  %cond176 = phi i32 [ %111, %if.end.171 ], [ %call174, %cond.false.173 ]
  store i32 %cond176, i32* %tmp125, !tbaa !1
  %113 = bitcast i64* %__s2_len124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i64* %__s1_len122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = load i32, i32* %tmp125, !tbaa !1
  %tobool177 = icmp ne i32 %115, 0
  br i1 %tobool177, label %if.else.179, label %if.then.178

if.then.178:                                      ; preds = %cond.end.175
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.180

if.else.179:                                      ; preds = %cond.end.175
  br label %err

if.end.180:                                       ; preds = %if.then.178
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.119
  %116 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists182 = getelementptr inbounds %struct.config_s, %struct.config_s* %116, i32 0, i32 6
  %named183 = bitcast %union.ru_* %lists182 to %struct.nu_*
  %devs = getelementptr inbounds %struct.nu_, %struct.nu_* %named183, i32 0, i32 2
  store %struct.string_list_s* %devs, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %pre

pre:                                              ; preds = %if.then.1237, %if.end.802, %if.end.494, %if.end.433, %if.end.181, %if.end.58
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  %117 = load i8*, i8** %pat, align 8, !tbaa !5
  %118 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %name_prefix = getelementptr inbounds %struct.config_s, %struct.config_s* %118, i32 0, i32 1
  %119 = load i8*, i8** %name_prefix, align 8, !tbaa !16
  %call184 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %117, i8* %119) #7
  %arraydecay185 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  store i8* %arraydecay185, i8** %pat, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.186:                                        ; preds = %if.end
  %120 = bitcast i64* %__s1_len188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = bitcast i64* %__s2_len190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.27 to i64)), i64 1), label %land.lhs.true.192, label %cond.false.239

land.lhs.true.192:                                ; preds = %sw.bb.186
  %call193 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #10
  store i64 %call193, i64* %__s2_len190, align 8, !tbaa !37
  %122 = load i64, i64* %__s2_len190, align 8, !tbaa !37
  %cmp194 = icmp ult i64 %122, 4
  br i1 %cmp194, label %cond.true.196, label %cond.false.239

cond.true.196:                                    ; preds = %land.lhs.true.192
  %123 = bitcast i8** %__s1198 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  %124 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %124, i8** %__s1198, align 8, !tbaa !5
  %125 = bitcast i32* %__result200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load i8*, i8** %__s1198, align 8, !tbaa !5
  %arrayidx201 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx201, align 1, !tbaa !7
  %conv202 = zext i8 %127 to i32
  %128 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), align 1, !tbaa !7
  %conv203 = zext i8 %128 to i32
  %sub204 = sub nsw i32 %conv202, %conv203
  store i32 %sub204, i32* %__result200, align 4, !tbaa !1
  %129 = load i64, i64* %__s2_len190, align 8, !tbaa !37
  %cmp205 = icmp ugt i64 %129, 0
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.237

land.lhs.true.207:                                ; preds = %cond.true.196
  %130 = load i32, i32* %__result200, align 4, !tbaa !1
  %cmp208 = icmp eq i32 %130, 0
  br i1 %cmp208, label %if.then.210, label %if.end.237

if.then.210:                                      ; preds = %land.lhs.true.207
  %131 = load i8*, i8** %__s1198, align 8, !tbaa !5
  %arrayidx211 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load i8, i8* %arrayidx211, align 1, !tbaa !7
  %conv212 = zext i8 %132 to i32
  %133 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i64 1), align 1, !tbaa !7
  %conv213 = zext i8 %133 to i32
  %sub214 = sub nsw i32 %conv212, %conv213
  store i32 %sub214, i32* %__result200, align 4, !tbaa !1
  %134 = load i64, i64* %__s2_len190, align 8, !tbaa !37
  %cmp215 = icmp ugt i64 %134, 1
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.236

land.lhs.true.217:                                ; preds = %if.then.210
  %135 = load i32, i32* %__result200, align 4, !tbaa !1
  %cmp218 = icmp eq i32 %135, 0
  br i1 %cmp218, label %if.then.220, label %if.end.236

if.then.220:                                      ; preds = %land.lhs.true.217
  %136 = load i8*, i8** %__s1198, align 8, !tbaa !5
  %arrayidx221 = getelementptr inbounds i8, i8* %136, i64 2
  %137 = load i8, i8* %arrayidx221, align 1, !tbaa !7
  %conv222 = zext i8 %137 to i32
  %138 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i64 2), align 1, !tbaa !7
  %conv223 = zext i8 %138 to i32
  %sub224 = sub nsw i32 %conv222, %conv223
  store i32 %sub224, i32* %__result200, align 4, !tbaa !1
  %139 = load i64, i64* %__s2_len190, align 8, !tbaa !37
  %cmp225 = icmp ugt i64 %139, 2
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.235

land.lhs.true.227:                                ; preds = %if.then.220
  %140 = load i32, i32* %__result200, align 4, !tbaa !1
  %cmp228 = icmp eq i32 %140, 0
  br i1 %cmp228, label %if.then.230, label %if.end.235

if.then.230:                                      ; preds = %land.lhs.true.227
  %141 = load i8*, i8** %__s1198, align 8, !tbaa !5
  %arrayidx231 = getelementptr inbounds i8, i8* %141, i64 3
  %142 = load i8, i8* %arrayidx231, align 1, !tbaa !7
  %conv232 = zext i8 %142 to i32
  %143 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i64 3), align 1, !tbaa !7
  %conv233 = zext i8 %143 to i32
  %sub234 = sub nsw i32 %conv232, %conv233
  store i32 %sub234, i32* %__result200, align 4, !tbaa !1
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.230, %land.lhs.true.227, %if.then.220
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %land.lhs.true.217, %if.then.210
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.lhs.true.207, %cond.true.196
  %144 = load i32, i32* %__result200, align 4, !tbaa !1
  store i32 %144, i32* %tmp238, !tbaa !1
  %145 = bitcast i32* %__result200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i8** %__s1198 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = load i32, i32* %tmp238, !tbaa !1
  br label %cond.end.241

cond.false.239:                                   ; preds = %land.lhs.true.192, %sw.bb.186
  %148 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call240 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #7
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.239, %if.end.237
  %cond242 = phi i32 [ %147, %if.end.237 ], [ %call240, %cond.false.239 ]
  store i32 %cond242, i32* %tmp191, !tbaa !1
  %149 = bitcast i64* %__s2_len190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i64* %__s1_len188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = load i32, i32* %tmp191, !tbaa !1
  %tobool243 = icmp ne i32 %151, 0
  br i1 %tobool243, label %if.end.250, label %if.then.244

if.then.244:                                      ; preds = %cond.end.241
  %arraydecay245 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %152 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %153 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call246 = call i64 @strlen(i8* %153) #10
  %conv247 = trunc i64 %call246 to i32
  %call248 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay245, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i8* %152, i32 %conv247) #7
  %arraydecay249 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay249, i8** %item.addr, align 8, !tbaa !5
  br label %sw.epilog

if.end.250:                                       ; preds = %cond.end.241
  br label %err

sw.bb.251:                                        ; preds = %if.end
  %154 = bitcast i64* %__s1_len253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = bitcast i64* %__s2_len255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.29 to i64)), i64 1), label %land.lhs.true.257, label %cond.false.304

land.lhs.true.257:                                ; preds = %sw.bb.251
  %call258 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #10
  store i64 %call258, i64* %__s2_len255, align 8, !tbaa !37
  %156 = load i64, i64* %__s2_len255, align 8, !tbaa !37
  %cmp259 = icmp ult i64 %156, 4
  br i1 %cmp259, label %cond.true.261, label %cond.false.304

cond.true.261:                                    ; preds = %land.lhs.true.257
  %157 = bitcast i8** %__s1263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %158, i8** %__s1263, align 8, !tbaa !5
  %159 = bitcast i32* %__result265 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load i8*, i8** %__s1263, align 8, !tbaa !5
  %arrayidx266 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx266, align 1, !tbaa !7
  %conv267 = zext i8 %161 to i32
  %162 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), align 1, !tbaa !7
  %conv268 = zext i8 %162 to i32
  %sub269 = sub nsw i32 %conv267, %conv268
  store i32 %sub269, i32* %__result265, align 4, !tbaa !1
  %163 = load i64, i64* %__s2_len255, align 8, !tbaa !37
  %cmp270 = icmp ugt i64 %163, 0
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.302

land.lhs.true.272:                                ; preds = %cond.true.261
  %164 = load i32, i32* %__result265, align 4, !tbaa !1
  %cmp273 = icmp eq i32 %164, 0
  br i1 %cmp273, label %if.then.275, label %if.end.302

if.then.275:                                      ; preds = %land.lhs.true.272
  %165 = load i8*, i8** %__s1263, align 8, !tbaa !5
  %arrayidx276 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx276, align 1, !tbaa !7
  %conv277 = zext i8 %166 to i32
  %167 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i64 1), align 1, !tbaa !7
  %conv278 = zext i8 %167 to i32
  %sub279 = sub nsw i32 %conv277, %conv278
  store i32 %sub279, i32* %__result265, align 4, !tbaa !1
  %168 = load i64, i64* %__s2_len255, align 8, !tbaa !37
  %cmp280 = icmp ugt i64 %168, 1
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.301

land.lhs.true.282:                                ; preds = %if.then.275
  %169 = load i32, i32* %__result265, align 4, !tbaa !1
  %cmp283 = icmp eq i32 %169, 0
  br i1 %cmp283, label %if.then.285, label %if.end.301

if.then.285:                                      ; preds = %land.lhs.true.282
  %170 = load i8*, i8** %__s1263, align 8, !tbaa !5
  %arrayidx286 = getelementptr inbounds i8, i8* %170, i64 2
  %171 = load i8, i8* %arrayidx286, align 1, !tbaa !7
  %conv287 = zext i8 %171 to i32
  %172 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i64 2), align 1, !tbaa !7
  %conv288 = zext i8 %172 to i32
  %sub289 = sub nsw i32 %conv287, %conv288
  store i32 %sub289, i32* %__result265, align 4, !tbaa !1
  %173 = load i64, i64* %__s2_len255, align 8, !tbaa !37
  %cmp290 = icmp ugt i64 %173, 2
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.300

land.lhs.true.292:                                ; preds = %if.then.285
  %174 = load i32, i32* %__result265, align 4, !tbaa !1
  %cmp293 = icmp eq i32 %174, 0
  br i1 %cmp293, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %land.lhs.true.292
  %175 = load i8*, i8** %__s1263, align 8, !tbaa !5
  %arrayidx296 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx296, align 1, !tbaa !7
  %conv297 = zext i8 %176 to i32
  %177 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i64 3), align 1, !tbaa !7
  %conv298 = zext i8 %177 to i32
  %sub299 = sub nsw i32 %conv297, %conv298
  store i32 %sub299, i32* %__result265, align 4, !tbaa !1
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %land.lhs.true.292, %if.then.285
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %land.lhs.true.282, %if.then.275
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %land.lhs.true.272, %cond.true.261
  %178 = load i32, i32* %__result265, align 4, !tbaa !1
  store i32 %178, i32* %tmp303, !tbaa !1
  %179 = bitcast i32* %__result265 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i8** %__s1263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = load i32, i32* %tmp303, !tbaa !1
  br label %cond.end.306

cond.false.304:                                   ; preds = %land.lhs.true.257, %sw.bb.251
  %182 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call305 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #7
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.304, %if.end.302
  %cond307 = phi i32 [ %181, %if.end.302 ], [ %call305, %cond.false.304 ]
  store i32 %cond307, i32* %tmp256, !tbaa !1
  %183 = bitcast i64* %__s2_len255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i64* %__s1_len253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = load i32, i32* %tmp256, !tbaa !1
  %tobool308 = icmp ne i32 %185, 0
  br i1 %tobool308, label %if.else.312, label %if.then.309

if.then.309:                                      ; preds = %cond.end.306
  %186 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists310 = getelementptr inbounds %struct.config_s, %struct.config_s* %186, i32 0, i32 6
  %named311 = bitcast %union.ru_* %lists310 to %struct.nu_*
  %fonts = getelementptr inbounds %struct.nu_, %struct.nu_* %named311, i32 0, i32 4
  store %struct.string_list_s* %fonts, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %sw.epilog

if.else.312:                                      ; preds = %cond.end.306
  %187 = bitcast i64* %__s1_len314 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  %188 = bitcast i64* %__s2_len316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.30 to i64)), i64 1), label %land.lhs.true.318, label %cond.false.365

land.lhs.true.318:                                ; preds = %if.else.312
  %call319 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #10
  store i64 %call319, i64* %__s2_len316, align 8, !tbaa !37
  %189 = load i64, i64* %__s2_len316, align 8, !tbaa !37
  %cmp320 = icmp ult i64 %189, 4
  br i1 %cmp320, label %cond.true.322, label %cond.false.365

cond.true.322:                                    ; preds = %land.lhs.true.318
  %190 = bitcast i8** %__s1324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #1
  %191 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %191, i8** %__s1324, align 8, !tbaa !5
  %192 = bitcast i32* %__result326 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = load i8*, i8** %__s1324, align 8, !tbaa !5
  %arrayidx327 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx327, align 1, !tbaa !7
  %conv328 = zext i8 %194 to i32
  %195 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), align 1, !tbaa !7
  %conv329 = zext i8 %195 to i32
  %sub330 = sub nsw i32 %conv328, %conv329
  store i32 %sub330, i32* %__result326, align 4, !tbaa !1
  %196 = load i64, i64* %__s2_len316, align 8, !tbaa !37
  %cmp331 = icmp ugt i64 %196, 0
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.363

land.lhs.true.333:                                ; preds = %cond.true.322
  %197 = load i32, i32* %__result326, align 4, !tbaa !1
  %cmp334 = icmp eq i32 %197, 0
  br i1 %cmp334, label %if.then.336, label %if.end.363

if.then.336:                                      ; preds = %land.lhs.true.333
  %198 = load i8*, i8** %__s1324, align 8, !tbaa !5
  %arrayidx337 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx337, align 1, !tbaa !7
  %conv338 = zext i8 %199 to i32
  %200 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i64 1), align 1, !tbaa !7
  %conv339 = zext i8 %200 to i32
  %sub340 = sub nsw i32 %conv338, %conv339
  store i32 %sub340, i32* %__result326, align 4, !tbaa !1
  %201 = load i64, i64* %__s2_len316, align 8, !tbaa !37
  %cmp341 = icmp ugt i64 %201, 1
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.362

land.lhs.true.343:                                ; preds = %if.then.336
  %202 = load i32, i32* %__result326, align 4, !tbaa !1
  %cmp344 = icmp eq i32 %202, 0
  br i1 %cmp344, label %if.then.346, label %if.end.362

if.then.346:                                      ; preds = %land.lhs.true.343
  %203 = load i8*, i8** %__s1324, align 8, !tbaa !5
  %arrayidx347 = getelementptr inbounds i8, i8* %203, i64 2
  %204 = load i8, i8* %arrayidx347, align 1, !tbaa !7
  %conv348 = zext i8 %204 to i32
  %205 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i64 2), align 1, !tbaa !7
  %conv349 = zext i8 %205 to i32
  %sub350 = sub nsw i32 %conv348, %conv349
  store i32 %sub350, i32* %__result326, align 4, !tbaa !1
  %206 = load i64, i64* %__s2_len316, align 8, !tbaa !37
  %cmp351 = icmp ugt i64 %206, 2
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.361

land.lhs.true.353:                                ; preds = %if.then.346
  %207 = load i32, i32* %__result326, align 4, !tbaa !1
  %cmp354 = icmp eq i32 %207, 0
  br i1 %cmp354, label %if.then.356, label %if.end.361

if.then.356:                                      ; preds = %land.lhs.true.353
  %208 = load i8*, i8** %__s1324, align 8, !tbaa !5
  %arrayidx357 = getelementptr inbounds i8, i8* %208, i64 3
  %209 = load i8, i8* %arrayidx357, align 1, !tbaa !7
  %conv358 = zext i8 %209 to i32
  %210 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i64 3), align 1, !tbaa !7
  %conv359 = zext i8 %210 to i32
  %sub360 = sub nsw i32 %conv358, %conv359
  store i32 %sub360, i32* %__result326, align 4, !tbaa !1
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.356, %land.lhs.true.353, %if.then.346
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %land.lhs.true.343, %if.then.336
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %land.lhs.true.333, %cond.true.322
  %211 = load i32, i32* %__result326, align 4, !tbaa !1
  store i32 %211, i32* %tmp364, !tbaa !1
  %212 = bitcast i32* %__result326 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i8** %__s1324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = load i32, i32* %tmp364, !tbaa !1
  br label %cond.end.367

cond.false.365:                                   ; preds = %land.lhs.true.318, %if.else.312
  %215 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call366 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #7
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.365, %if.end.363
  %cond368 = phi i32 [ %214, %if.end.363 ], [ %call366, %cond.false.365 ]
  store i32 %cond368, i32* %tmp317, !tbaa !1
  %216 = bitcast i64* %__s2_len316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i64* %__s1_len314 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = load i32, i32* %tmp317, !tbaa !1
  %tobool369 = icmp ne i32 %218, 0
  br i1 %tobool369, label %if.else.371, label %if.then.370

if.then.370:                                      ; preds = %cond.end.367
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.432

if.else.371:                                      ; preds = %cond.end.367
  %219 = bitcast i64* %__s1_len373 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  %220 = bitcast i64* %__s2_len375 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.32 to i64)), i64 1), label %land.lhs.true.377, label %cond.false.424

land.lhs.true.377:                                ; preds = %if.else.371
  %call378 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #10
  store i64 %call378, i64* %__s2_len375, align 8, !tbaa !37
  %221 = load i64, i64* %__s2_len375, align 8, !tbaa !37
  %cmp379 = icmp ult i64 %221, 4
  br i1 %cmp379, label %cond.true.381, label %cond.false.424

cond.true.381:                                    ; preds = %land.lhs.true.377
  %222 = bitcast i8** %__s1383 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  %223 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %223, i8** %__s1383, align 8, !tbaa !5
  %224 = bitcast i32* %__result385 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = load i8*, i8** %__s1383, align 8, !tbaa !5
  %arrayidx386 = getelementptr inbounds i8, i8* %225, i64 0
  %226 = load i8, i8* %arrayidx386, align 1, !tbaa !7
  %conv387 = zext i8 %226 to i32
  %227 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), align 1, !tbaa !7
  %conv388 = zext i8 %227 to i32
  %sub389 = sub nsw i32 %conv387, %conv388
  store i32 %sub389, i32* %__result385, align 4, !tbaa !1
  %228 = load i64, i64* %__s2_len375, align 8, !tbaa !37
  %cmp390 = icmp ugt i64 %228, 0
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.422

land.lhs.true.392:                                ; preds = %cond.true.381
  %229 = load i32, i32* %__result385, align 4, !tbaa !1
  %cmp393 = icmp eq i32 %229, 0
  br i1 %cmp393, label %if.then.395, label %if.end.422

if.then.395:                                      ; preds = %land.lhs.true.392
  %230 = load i8*, i8** %__s1383, align 8, !tbaa !5
  %arrayidx396 = getelementptr inbounds i8, i8* %230, i64 1
  %231 = load i8, i8* %arrayidx396, align 1, !tbaa !7
  %conv397 = zext i8 %231 to i32
  %232 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i64 1), align 1, !tbaa !7
  %conv398 = zext i8 %232 to i32
  %sub399 = sub nsw i32 %conv397, %conv398
  store i32 %sub399, i32* %__result385, align 4, !tbaa !1
  %233 = load i64, i64* %__s2_len375, align 8, !tbaa !37
  %cmp400 = icmp ugt i64 %233, 1
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.421

land.lhs.true.402:                                ; preds = %if.then.395
  %234 = load i32, i32* %__result385, align 4, !tbaa !1
  %cmp403 = icmp eq i32 %234, 0
  br i1 %cmp403, label %if.then.405, label %if.end.421

if.then.405:                                      ; preds = %land.lhs.true.402
  %235 = load i8*, i8** %__s1383, align 8, !tbaa !5
  %arrayidx406 = getelementptr inbounds i8, i8* %235, i64 2
  %236 = load i8, i8* %arrayidx406, align 1, !tbaa !7
  %conv407 = zext i8 %236 to i32
  %237 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i64 2), align 1, !tbaa !7
  %conv408 = zext i8 %237 to i32
  %sub409 = sub nsw i32 %conv407, %conv408
  store i32 %sub409, i32* %__result385, align 4, !tbaa !1
  %238 = load i64, i64* %__s2_len375, align 8, !tbaa !37
  %cmp410 = icmp ugt i64 %238, 2
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.420

land.lhs.true.412:                                ; preds = %if.then.405
  %239 = load i32, i32* %__result385, align 4, !tbaa !1
  %cmp413 = icmp eq i32 %239, 0
  br i1 %cmp413, label %if.then.415, label %if.end.420

if.then.415:                                      ; preds = %land.lhs.true.412
  %240 = load i8*, i8** %__s1383, align 8, !tbaa !5
  %arrayidx416 = getelementptr inbounds i8, i8* %240, i64 3
  %241 = load i8, i8* %arrayidx416, align 1, !tbaa !7
  %conv417 = zext i8 %241 to i32
  %242 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i64 3), align 1, !tbaa !7
  %conv418 = zext i8 %242 to i32
  %sub419 = sub nsw i32 %conv417, %conv418
  store i32 %sub419, i32* %__result385, align 4, !tbaa !1
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.415, %land.lhs.true.412, %if.then.405
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %land.lhs.true.402, %if.then.395
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %land.lhs.true.392, %cond.true.381
  %243 = load i32, i32* %__result385, align 4, !tbaa !1
  store i32 %243, i32* %tmp423, !tbaa !1
  %244 = bitcast i32* %__result385 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i8** %__s1383 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = load i32, i32* %tmp423, !tbaa !1
  br label %cond.end.426

cond.false.424:                                   ; preds = %land.lhs.true.377, %if.else.371
  %247 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call425 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #7
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.424, %if.end.422
  %cond427 = phi i32 [ %246, %if.end.422 ], [ %call425, %cond.false.424 ]
  store i32 %cond427, i32* %tmp376, !tbaa !1
  %248 = bitcast i64* %__s2_len375 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i64* %__s1_len373 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = load i32, i32* %tmp376, !tbaa !1
  %tobool428 = icmp ne i32 %250, 0
  br i1 %tobool428, label %if.else.430, label %if.then.429

if.then.429:                                      ; preds = %cond.end.426
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.431

if.else.430:                                      ; preds = %cond.end.426
  br label %err

if.end.431:                                       ; preds = %if.then.429
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.then.370
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432
  br label %pre

sw.bb.434:                                        ; preds = %if.end
  %251 = bitcast i64* %__s1_len436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = bitcast i64* %__s2_len438 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.34 to i64)), i64 1), label %land.lhs.true.440, label %cond.false.487

land.lhs.true.440:                                ; preds = %sw.bb.434
  %call441 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #10
  store i64 %call441, i64* %__s2_len438, align 8, !tbaa !37
  %253 = load i64, i64* %__s2_len438, align 8, !tbaa !37
  %cmp442 = icmp ult i64 %253, 4
  br i1 %cmp442, label %cond.true.444, label %cond.false.487

cond.true.444:                                    ; preds = %land.lhs.true.440
  %254 = bitcast i8** %__s1446 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %255, i8** %__s1446, align 8, !tbaa !5
  %256 = bitcast i32* %__result448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #1
  %257 = load i8*, i8** %__s1446, align 8, !tbaa !5
  %arrayidx449 = getelementptr inbounds i8, i8* %257, i64 0
  %258 = load i8, i8* %arrayidx449, align 1, !tbaa !7
  %conv450 = zext i8 %258 to i32
  %259 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), align 1, !tbaa !7
  %conv451 = zext i8 %259 to i32
  %sub452 = sub nsw i32 %conv450, %conv451
  store i32 %sub452, i32* %__result448, align 4, !tbaa !1
  %260 = load i64, i64* %__s2_len438, align 8, !tbaa !37
  %cmp453 = icmp ugt i64 %260, 0
  br i1 %cmp453, label %land.lhs.true.455, label %if.end.485

land.lhs.true.455:                                ; preds = %cond.true.444
  %261 = load i32, i32* %__result448, align 4, !tbaa !1
  %cmp456 = icmp eq i32 %261, 0
  br i1 %cmp456, label %if.then.458, label %if.end.485

if.then.458:                                      ; preds = %land.lhs.true.455
  %262 = load i8*, i8** %__s1446, align 8, !tbaa !5
  %arrayidx459 = getelementptr inbounds i8, i8* %262, i64 1
  %263 = load i8, i8* %arrayidx459, align 1, !tbaa !7
  %conv460 = zext i8 %263 to i32
  %264 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i64 1), align 1, !tbaa !7
  %conv461 = zext i8 %264 to i32
  %sub462 = sub nsw i32 %conv460, %conv461
  store i32 %sub462, i32* %__result448, align 4, !tbaa !1
  %265 = load i64, i64* %__s2_len438, align 8, !tbaa !37
  %cmp463 = icmp ugt i64 %265, 1
  br i1 %cmp463, label %land.lhs.true.465, label %if.end.484

land.lhs.true.465:                                ; preds = %if.then.458
  %266 = load i32, i32* %__result448, align 4, !tbaa !1
  %cmp466 = icmp eq i32 %266, 0
  br i1 %cmp466, label %if.then.468, label %if.end.484

if.then.468:                                      ; preds = %land.lhs.true.465
  %267 = load i8*, i8** %__s1446, align 8, !tbaa !5
  %arrayidx469 = getelementptr inbounds i8, i8* %267, i64 2
  %268 = load i8, i8* %arrayidx469, align 1, !tbaa !7
  %conv470 = zext i8 %268 to i32
  %269 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i64 2), align 1, !tbaa !7
  %conv471 = zext i8 %269 to i32
  %sub472 = sub nsw i32 %conv470, %conv471
  store i32 %sub472, i32* %__result448, align 4, !tbaa !1
  %270 = load i64, i64* %__s2_len438, align 8, !tbaa !37
  %cmp473 = icmp ugt i64 %270, 2
  br i1 %cmp473, label %land.lhs.true.475, label %if.end.483

land.lhs.true.475:                                ; preds = %if.then.468
  %271 = load i32, i32* %__result448, align 4, !tbaa !1
  %cmp476 = icmp eq i32 %271, 0
  br i1 %cmp476, label %if.then.478, label %if.end.483

if.then.478:                                      ; preds = %land.lhs.true.475
  %272 = load i8*, i8** %__s1446, align 8, !tbaa !5
  %arrayidx479 = getelementptr inbounds i8, i8* %272, i64 3
  %273 = load i8, i8* %arrayidx479, align 1, !tbaa !7
  %conv480 = zext i8 %273 to i32
  %274 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i64 3), align 1, !tbaa !7
  %conv481 = zext i8 %274 to i32
  %sub482 = sub nsw i32 %conv480, %conv481
  store i32 %sub482, i32* %__result448, align 4, !tbaa !1
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.478, %land.lhs.true.475, %if.then.468
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %land.lhs.true.465, %if.then.458
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %land.lhs.true.455, %cond.true.444
  %275 = load i32, i32* %__result448, align 4, !tbaa !1
  store i32 %275, i32* %tmp486, !tbaa !1
  %276 = bitcast i32* %__result448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i8** %__s1446 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = load i32, i32* %tmp486, !tbaa !1
  br label %cond.end.489

cond.false.487:                                   ; preds = %land.lhs.true.440, %sw.bb.434
  %279 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call488 = call i32 @strcmp(i8* %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #7
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.false.487, %if.end.485
  %cond490 = phi i32 [ %278, %if.end.485 ], [ %call488, %cond.false.487 ]
  store i32 %cond490, i32* %tmp439, !tbaa !1
  %280 = bitcast i64* %__s2_len438 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i64* %__s1_len436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = load i32, i32* %tmp439, !tbaa !1
  %tobool491 = icmp ne i32 %282, 0
  br i1 %tobool491, label %if.else.493, label %if.then.492

if.then.492:                                      ; preds = %cond.end.489
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.494

if.else.493:                                      ; preds = %cond.end.489
  br label %err

if.end.494:                                       ; preds = %if.then.492
  br label %pre

sw.bb.495:                                        ; preds = %if.end
  %283 = bitcast i64* %__s1_len497 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  %284 = bitcast i64* %__s2_len499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.36 to i64)), i64 1), label %land.lhs.true.501, label %cond.false.548

land.lhs.true.501:                                ; preds = %sw.bb.495
  %call502 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #10
  store i64 %call502, i64* %__s2_len499, align 8, !tbaa !37
  %285 = load i64, i64* %__s2_len499, align 8, !tbaa !37
  %cmp503 = icmp ult i64 %285, 4
  br i1 %cmp503, label %cond.true.505, label %cond.false.548

cond.true.505:                                    ; preds = %land.lhs.true.501
  %286 = bitcast i8** %__s1507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #1
  %287 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %287, i8** %__s1507, align 8, !tbaa !5
  %288 = bitcast i32* %__result509 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #1
  %289 = load i8*, i8** %__s1507, align 8, !tbaa !5
  %arrayidx510 = getelementptr inbounds i8, i8* %289, i64 0
  %290 = load i8, i8* %arrayidx510, align 1, !tbaa !7
  %conv511 = zext i8 %290 to i32
  %291 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), align 1, !tbaa !7
  %conv512 = zext i8 %291 to i32
  %sub513 = sub nsw i32 %conv511, %conv512
  store i32 %sub513, i32* %__result509, align 4, !tbaa !1
  %292 = load i64, i64* %__s2_len499, align 8, !tbaa !37
  %cmp514 = icmp ugt i64 %292, 0
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.546

land.lhs.true.516:                                ; preds = %cond.true.505
  %293 = load i32, i32* %__result509, align 4, !tbaa !1
  %cmp517 = icmp eq i32 %293, 0
  br i1 %cmp517, label %if.then.519, label %if.end.546

if.then.519:                                      ; preds = %land.lhs.true.516
  %294 = load i8*, i8** %__s1507, align 8, !tbaa !5
  %arrayidx520 = getelementptr inbounds i8, i8* %294, i64 1
  %295 = load i8, i8* %arrayidx520, align 1, !tbaa !7
  %conv521 = zext i8 %295 to i32
  %296 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i64 1), align 1, !tbaa !7
  %conv522 = zext i8 %296 to i32
  %sub523 = sub nsw i32 %conv521, %conv522
  store i32 %sub523, i32* %__result509, align 4, !tbaa !1
  %297 = load i64, i64* %__s2_len499, align 8, !tbaa !37
  %cmp524 = icmp ugt i64 %297, 1
  br i1 %cmp524, label %land.lhs.true.526, label %if.end.545

land.lhs.true.526:                                ; preds = %if.then.519
  %298 = load i32, i32* %__result509, align 4, !tbaa !1
  %cmp527 = icmp eq i32 %298, 0
  br i1 %cmp527, label %if.then.529, label %if.end.545

if.then.529:                                      ; preds = %land.lhs.true.526
  %299 = load i8*, i8** %__s1507, align 8, !tbaa !5
  %arrayidx530 = getelementptr inbounds i8, i8* %299, i64 2
  %300 = load i8, i8* %arrayidx530, align 1, !tbaa !7
  %conv531 = zext i8 %300 to i32
  %301 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i64 2), align 1, !tbaa !7
  %conv532 = zext i8 %301 to i32
  %sub533 = sub nsw i32 %conv531, %conv532
  store i32 %sub533, i32* %__result509, align 4, !tbaa !1
  %302 = load i64, i64* %__s2_len499, align 8, !tbaa !37
  %cmp534 = icmp ugt i64 %302, 2
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.544

land.lhs.true.536:                                ; preds = %if.then.529
  %303 = load i32, i32* %__result509, align 4, !tbaa !1
  %cmp537 = icmp eq i32 %303, 0
  br i1 %cmp537, label %if.then.539, label %if.end.544

if.then.539:                                      ; preds = %land.lhs.true.536
  %304 = load i8*, i8** %__s1507, align 8, !tbaa !5
  %arrayidx540 = getelementptr inbounds i8, i8* %304, i64 3
  %305 = load i8, i8* %arrayidx540, align 1, !tbaa !7
  %conv541 = zext i8 %305 to i32
  %306 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i64 3), align 1, !tbaa !7
  %conv542 = zext i8 %306 to i32
  %sub543 = sub nsw i32 %conv541, %conv542
  store i32 %sub543, i32* %__result509, align 4, !tbaa !1
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.539, %land.lhs.true.536, %if.then.529
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %land.lhs.true.526, %if.then.519
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %land.lhs.true.516, %cond.true.505
  %307 = load i32, i32* %__result509, align 4, !tbaa !1
  store i32 %307, i32* %tmp547, !tbaa !1
  %308 = bitcast i32* %__result509 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i8** %__s1507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = load i32, i32* %tmp547, !tbaa !1
  br label %cond.end.550

cond.false.548:                                   ; preds = %land.lhs.true.501, %sw.bb.495
  %311 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call549 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #7
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.false.548, %if.end.546
  %cond551 = phi i32 [ %310, %if.end.546 ], [ %call549, %cond.false.548 ]
  store i32 %cond551, i32* %tmp500, !tbaa !1
  %312 = bitcast i64* %__s2_len499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i64* %__s1_len497 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = load i32, i32* %tmp500, !tbaa !1
  %tobool552 = icmp ne i32 %314, 0
  br i1 %tobool552, label %if.else.556, label %if.then.553

if.then.553:                                      ; preds = %cond.end.550
  %315 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists554 = getelementptr inbounds %struct.config_s, %struct.config_s* %315, i32 0, i32 6
  %named555 = bitcast %union.ru_* %lists554 to %struct.nu_*
  %sorted_resources = getelementptr inbounds %struct.nu_, %struct.nu_* %named555, i32 0, i32 0
  store %struct.string_list_s* %sorted_resources, %struct.string_list_s** %list, align 8, !tbaa !5
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.802

if.else.556:                                      ; preds = %cond.end.550
  %316 = bitcast i64* %__s1_len558 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316) #1
  %317 = bitcast i64* %__s2_len560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.38 to i64)), i64 1), label %land.lhs.true.562, label %cond.false.609

land.lhs.true.562:                                ; preds = %if.else.556
  %call563 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #10
  store i64 %call563, i64* %__s2_len560, align 8, !tbaa !37
  %318 = load i64, i64* %__s2_len560, align 8, !tbaa !37
  %cmp564 = icmp ult i64 %318, 4
  br i1 %cmp564, label %cond.true.566, label %cond.false.609

cond.true.566:                                    ; preds = %land.lhs.true.562
  %319 = bitcast i8** %__s1568 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319) #1
  %320 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %320, i8** %__s1568, align 8, !tbaa !5
  %321 = bitcast i32* %__result570 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #1
  %322 = load i8*, i8** %__s1568, align 8, !tbaa !5
  %arrayidx571 = getelementptr inbounds i8, i8* %322, i64 0
  %323 = load i8, i8* %arrayidx571, align 1, !tbaa !7
  %conv572 = zext i8 %323 to i32
  %324 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), align 1, !tbaa !7
  %conv573 = zext i8 %324 to i32
  %sub574 = sub nsw i32 %conv572, %conv573
  store i32 %sub574, i32* %__result570, align 4, !tbaa !1
  %325 = load i64, i64* %__s2_len560, align 8, !tbaa !37
  %cmp575 = icmp ugt i64 %325, 0
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.607

land.lhs.true.577:                                ; preds = %cond.true.566
  %326 = load i32, i32* %__result570, align 4, !tbaa !1
  %cmp578 = icmp eq i32 %326, 0
  br i1 %cmp578, label %if.then.580, label %if.end.607

if.then.580:                                      ; preds = %land.lhs.true.577
  %327 = load i8*, i8** %__s1568, align 8, !tbaa !5
  %arrayidx581 = getelementptr inbounds i8, i8* %327, i64 1
  %328 = load i8, i8* %arrayidx581, align 1, !tbaa !7
  %conv582 = zext i8 %328 to i32
  %329 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i64 1), align 1, !tbaa !7
  %conv583 = zext i8 %329 to i32
  %sub584 = sub nsw i32 %conv582, %conv583
  store i32 %sub584, i32* %__result570, align 4, !tbaa !1
  %330 = load i64, i64* %__s2_len560, align 8, !tbaa !37
  %cmp585 = icmp ugt i64 %330, 1
  br i1 %cmp585, label %land.lhs.true.587, label %if.end.606

land.lhs.true.587:                                ; preds = %if.then.580
  %331 = load i32, i32* %__result570, align 4, !tbaa !1
  %cmp588 = icmp eq i32 %331, 0
  br i1 %cmp588, label %if.then.590, label %if.end.606

if.then.590:                                      ; preds = %land.lhs.true.587
  %332 = load i8*, i8** %__s1568, align 8, !tbaa !5
  %arrayidx591 = getelementptr inbounds i8, i8* %332, i64 2
  %333 = load i8, i8* %arrayidx591, align 1, !tbaa !7
  %conv592 = zext i8 %333 to i32
  %334 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i64 2), align 1, !tbaa !7
  %conv593 = zext i8 %334 to i32
  %sub594 = sub nsw i32 %conv592, %conv593
  store i32 %sub594, i32* %__result570, align 4, !tbaa !1
  %335 = load i64, i64* %__s2_len560, align 8, !tbaa !37
  %cmp595 = icmp ugt i64 %335, 2
  br i1 %cmp595, label %land.lhs.true.597, label %if.end.605

land.lhs.true.597:                                ; preds = %if.then.590
  %336 = load i32, i32* %__result570, align 4, !tbaa !1
  %cmp598 = icmp eq i32 %336, 0
  br i1 %cmp598, label %if.then.600, label %if.end.605

if.then.600:                                      ; preds = %land.lhs.true.597
  %337 = load i8*, i8** %__s1568, align 8, !tbaa !5
  %arrayidx601 = getelementptr inbounds i8, i8* %337, i64 3
  %338 = load i8, i8* %arrayidx601, align 1, !tbaa !7
  %conv602 = zext i8 %338 to i32
  %339 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i64 3), align 1, !tbaa !7
  %conv603 = zext i8 %339 to i32
  %sub604 = sub nsw i32 %conv602, %conv603
  store i32 %sub604, i32* %__result570, align 4, !tbaa !1
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.600, %land.lhs.true.597, %if.then.590
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %land.lhs.true.587, %if.then.580
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %land.lhs.true.577, %cond.true.566
  %340 = load i32, i32* %__result570, align 4, !tbaa !1
  store i32 %340, i32* %tmp608, !tbaa !1
  %341 = bitcast i32* %__result570 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i8** %__s1568 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = load i32, i32* %tmp608, !tbaa !1
  br label %cond.end.611

cond.false.609:                                   ; preds = %land.lhs.true.562, %if.else.556
  %344 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call610 = call i32 @strcmp(i8* %344, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #7
  br label %cond.end.611

cond.end.611:                                     ; preds = %cond.false.609, %if.end.607
  %cond612 = phi i32 [ %343, %if.end.607 ], [ %call610, %cond.false.609 ]
  store i32 %cond612, i32* %tmp561, !tbaa !1
  %345 = bitcast i64* %__s2_len560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i64* %__s1_len558 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = load i32, i32* %tmp561, !tbaa !1
  %tobool613 = icmp ne i32 %347, 0
  br i1 %tobool613, label %if.else.615, label %if.then.614

if.then.614:                                      ; preds = %cond.end.611
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.801

if.else.615:                                      ; preds = %cond.end.611
  %348 = bitcast i64* %__s1_len617 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #1
  %349 = bitcast i64* %__s2_len619 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %349) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.40 to i64)), i64 1), label %land.lhs.true.621, label %cond.false.668

land.lhs.true.621:                                ; preds = %if.else.615
  %call622 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #10
  store i64 %call622, i64* %__s2_len619, align 8, !tbaa !37
  %350 = load i64, i64* %__s2_len619, align 8, !tbaa !37
  %cmp623 = icmp ult i64 %350, 4
  br i1 %cmp623, label %cond.true.625, label %cond.false.668

cond.true.625:                                    ; preds = %land.lhs.true.621
  %351 = bitcast i8** %__s1627 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %351) #1
  %352 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %352, i8** %__s1627, align 8, !tbaa !5
  %353 = bitcast i32* %__result629 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #1
  %354 = load i8*, i8** %__s1627, align 8, !tbaa !5
  %arrayidx630 = getelementptr inbounds i8, i8* %354, i64 0
  %355 = load i8, i8* %arrayidx630, align 1, !tbaa !7
  %conv631 = zext i8 %355 to i32
  %356 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), align 1, !tbaa !7
  %conv632 = zext i8 %356 to i32
  %sub633 = sub nsw i32 %conv631, %conv632
  store i32 %sub633, i32* %__result629, align 4, !tbaa !1
  %357 = load i64, i64* %__s2_len619, align 8, !tbaa !37
  %cmp634 = icmp ugt i64 %357, 0
  br i1 %cmp634, label %land.lhs.true.636, label %if.end.666

land.lhs.true.636:                                ; preds = %cond.true.625
  %358 = load i32, i32* %__result629, align 4, !tbaa !1
  %cmp637 = icmp eq i32 %358, 0
  br i1 %cmp637, label %if.then.639, label %if.end.666

if.then.639:                                      ; preds = %land.lhs.true.636
  %359 = load i8*, i8** %__s1627, align 8, !tbaa !5
  %arrayidx640 = getelementptr inbounds i8, i8* %359, i64 1
  %360 = load i8, i8* %arrayidx640, align 1, !tbaa !7
  %conv641 = zext i8 %360 to i32
  %361 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i64 1), align 1, !tbaa !7
  %conv642 = zext i8 %361 to i32
  %sub643 = sub nsw i32 %conv641, %conv642
  store i32 %sub643, i32* %__result629, align 4, !tbaa !1
  %362 = load i64, i64* %__s2_len619, align 8, !tbaa !37
  %cmp644 = icmp ugt i64 %362, 1
  br i1 %cmp644, label %land.lhs.true.646, label %if.end.665

land.lhs.true.646:                                ; preds = %if.then.639
  %363 = load i32, i32* %__result629, align 4, !tbaa !1
  %cmp647 = icmp eq i32 %363, 0
  br i1 %cmp647, label %if.then.649, label %if.end.665

if.then.649:                                      ; preds = %land.lhs.true.646
  %364 = load i8*, i8** %__s1627, align 8, !tbaa !5
  %arrayidx650 = getelementptr inbounds i8, i8* %364, i64 2
  %365 = load i8, i8* %arrayidx650, align 1, !tbaa !7
  %conv651 = zext i8 %365 to i32
  %366 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i64 2), align 1, !tbaa !7
  %conv652 = zext i8 %366 to i32
  %sub653 = sub nsw i32 %conv651, %conv652
  store i32 %sub653, i32* %__result629, align 4, !tbaa !1
  %367 = load i64, i64* %__s2_len619, align 8, !tbaa !37
  %cmp654 = icmp ugt i64 %367, 2
  br i1 %cmp654, label %land.lhs.true.656, label %if.end.664

land.lhs.true.656:                                ; preds = %if.then.649
  %368 = load i32, i32* %__result629, align 4, !tbaa !1
  %cmp657 = icmp eq i32 %368, 0
  br i1 %cmp657, label %if.then.659, label %if.end.664

if.then.659:                                      ; preds = %land.lhs.true.656
  %369 = load i8*, i8** %__s1627, align 8, !tbaa !5
  %arrayidx660 = getelementptr inbounds i8, i8* %369, i64 3
  %370 = load i8, i8* %arrayidx660, align 1, !tbaa !7
  %conv661 = zext i8 %370 to i32
  %371 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i64 3), align 1, !tbaa !7
  %conv662 = zext i8 %371 to i32
  %sub663 = sub nsw i32 %conv661, %conv662
  store i32 %sub663, i32* %__result629, align 4, !tbaa !1
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.659, %land.lhs.true.656, %if.then.649
  br label %if.end.665

if.end.665:                                       ; preds = %if.end.664, %land.lhs.true.646, %if.then.639
  br label %if.end.666

if.end.666:                                       ; preds = %if.end.665, %land.lhs.true.636, %cond.true.625
  %372 = load i32, i32* %__result629, align 4, !tbaa !1
  store i32 %372, i32* %tmp667, !tbaa !1
  %373 = bitcast i32* %__result629 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  %374 = bitcast i8** %__s1627 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  %375 = load i32, i32* %tmp667, !tbaa !1
  br label %cond.end.670

cond.false.668:                                   ; preds = %land.lhs.true.621, %if.else.615
  %376 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call669 = call i32 @strcmp(i8* %376, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #7
  br label %cond.end.670

cond.end.670:                                     ; preds = %cond.false.668, %if.end.666
  %cond671 = phi i32 [ %375, %if.end.666 ], [ %call669, %cond.false.668 ]
  store i32 %cond671, i32* %tmp620, !tbaa !1
  %377 = bitcast i64* %__s2_len619 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #1
  %378 = bitcast i64* %__s1_len617 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #1
  %379 = load i32, i32* %tmp620, !tbaa !1
  %tobool672 = icmp ne i32 %379, 0
  br i1 %tobool672, label %if.else.679, label %if.then.673

if.then.673:                                      ; preds = %cond.end.670
  %arraydecay674 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %380 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call675 = call i8* @strcpy(i8* %arraydecay674, i8* %380) #7
  %arraydecay676 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  call void @dev_file_name(i8* %arraydecay676) #8
  %381 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %arraydecay677 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %call678 = call i32 @read_dev(%struct.config_s* %381, i8* %arraydecay677) #8
  store i32 %call678, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.679:                                      ; preds = %cond.end.670
  %382 = bitcast i64* %__s1_len681 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #1
  %383 = bitcast i64* %__s2_len683 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.41 to i64)), i64 1), label %land.lhs.true.685, label %cond.false.732

land.lhs.true.685:                                ; preds = %if.else.679
  %call686 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)) #10
  store i64 %call686, i64* %__s2_len683, align 8, !tbaa !37
  %384 = load i64, i64* %__s2_len683, align 8, !tbaa !37
  %cmp687 = icmp ult i64 %384, 4
  br i1 %cmp687, label %cond.true.689, label %cond.false.732

cond.true.689:                                    ; preds = %land.lhs.true.685
  %385 = bitcast i8** %__s1691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #1
  %386 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %386, i8** %__s1691, align 8, !tbaa !5
  %387 = bitcast i32* %__result693 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %387) #1
  %388 = load i8*, i8** %__s1691, align 8, !tbaa !5
  %arrayidx694 = getelementptr inbounds i8, i8* %388, i64 0
  %389 = load i8, i8* %arrayidx694, align 1, !tbaa !7
  %conv695 = zext i8 %389 to i32
  %390 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), align 1, !tbaa !7
  %conv696 = zext i8 %390 to i32
  %sub697 = sub nsw i32 %conv695, %conv696
  store i32 %sub697, i32* %__result693, align 4, !tbaa !1
  %391 = load i64, i64* %__s2_len683, align 8, !tbaa !37
  %cmp698 = icmp ugt i64 %391, 0
  br i1 %cmp698, label %land.lhs.true.700, label %if.end.730

land.lhs.true.700:                                ; preds = %cond.true.689
  %392 = load i32, i32* %__result693, align 4, !tbaa !1
  %cmp701 = icmp eq i32 %392, 0
  br i1 %cmp701, label %if.then.703, label %if.end.730

if.then.703:                                      ; preds = %land.lhs.true.700
  %393 = load i8*, i8** %__s1691, align 8, !tbaa !5
  %arrayidx704 = getelementptr inbounds i8, i8* %393, i64 1
  %394 = load i8, i8* %arrayidx704, align 1, !tbaa !7
  %conv705 = zext i8 %394 to i32
  %395 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i64 1), align 1, !tbaa !7
  %conv706 = zext i8 %395 to i32
  %sub707 = sub nsw i32 %conv705, %conv706
  store i32 %sub707, i32* %__result693, align 4, !tbaa !1
  %396 = load i64, i64* %__s2_len683, align 8, !tbaa !37
  %cmp708 = icmp ugt i64 %396, 1
  br i1 %cmp708, label %land.lhs.true.710, label %if.end.729

land.lhs.true.710:                                ; preds = %if.then.703
  %397 = load i32, i32* %__result693, align 4, !tbaa !1
  %cmp711 = icmp eq i32 %397, 0
  br i1 %cmp711, label %if.then.713, label %if.end.729

if.then.713:                                      ; preds = %land.lhs.true.710
  %398 = load i8*, i8** %__s1691, align 8, !tbaa !5
  %arrayidx714 = getelementptr inbounds i8, i8* %398, i64 2
  %399 = load i8, i8* %arrayidx714, align 1, !tbaa !7
  %conv715 = zext i8 %399 to i32
  %400 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i64 2), align 1, !tbaa !7
  %conv716 = zext i8 %400 to i32
  %sub717 = sub nsw i32 %conv715, %conv716
  store i32 %sub717, i32* %__result693, align 4, !tbaa !1
  %401 = load i64, i64* %__s2_len683, align 8, !tbaa !37
  %cmp718 = icmp ugt i64 %401, 2
  br i1 %cmp718, label %land.lhs.true.720, label %if.end.728

land.lhs.true.720:                                ; preds = %if.then.713
  %402 = load i32, i32* %__result693, align 4, !tbaa !1
  %cmp721 = icmp eq i32 %402, 0
  br i1 %cmp721, label %if.then.723, label %if.end.728

if.then.723:                                      ; preds = %land.lhs.true.720
  %403 = load i8*, i8** %__s1691, align 8, !tbaa !5
  %arrayidx724 = getelementptr inbounds i8, i8* %403, i64 3
  %404 = load i8, i8* %arrayidx724, align 1, !tbaa !7
  %conv725 = zext i8 %404 to i32
  %405 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i64 3), align 1, !tbaa !7
  %conv726 = zext i8 %405 to i32
  %sub727 = sub nsw i32 %conv725, %conv726
  store i32 %sub727, i32* %__result693, align 4, !tbaa !1
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.723, %land.lhs.true.720, %if.then.713
  br label %if.end.729

if.end.729:                                       ; preds = %if.end.728, %land.lhs.true.710, %if.then.703
  br label %if.end.730

if.end.730:                                       ; preds = %if.end.729, %land.lhs.true.700, %cond.true.689
  %406 = load i32, i32* %__result693, align 4, !tbaa !1
  store i32 %406, i32* %tmp731, !tbaa !1
  %407 = bitcast i32* %__result693 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i8** %__s1691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = load i32, i32* %tmp731, !tbaa !1
  br label %cond.end.734

cond.false.732:                                   ; preds = %land.lhs.true.685, %if.else.679
  %410 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call733 = call i32 @strcmp(i8* %410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)) #7
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.732, %if.end.730
  %cond735 = phi i32 [ %409, %if.end.730 ], [ %call733, %cond.false.732 ]
  store i32 %cond735, i32* %tmp684, !tbaa !1
  %411 = bitcast i64* %__s2_len683 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast i64* %__s1_len681 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #1
  %413 = load i32, i32* %tmp684, !tbaa !1
  %tobool736 = icmp ne i32 %413, 0
  br i1 %tobool736, label %if.else.738, label %if.then.737

if.then.737:                                      ; preds = %cond.end.734
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.799

if.else.738:                                      ; preds = %cond.end.734
  %414 = bitcast i64* %__s1_len740 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %414) #1
  %415 = bitcast i64* %__s2_len742 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %415) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.43 to i64)), i64 1), label %land.lhs.true.744, label %cond.false.791

land.lhs.true.744:                                ; preds = %if.else.738
  %call745 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #10
  store i64 %call745, i64* %__s2_len742, align 8, !tbaa !37
  %416 = load i64, i64* %__s2_len742, align 8, !tbaa !37
  %cmp746 = icmp ult i64 %416, 4
  br i1 %cmp746, label %cond.true.748, label %cond.false.791

cond.true.748:                                    ; preds = %land.lhs.true.744
  %417 = bitcast i8** %__s1750 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #1
  %418 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %418, i8** %__s1750, align 8, !tbaa !5
  %419 = bitcast i32* %__result752 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #1
  %420 = load i8*, i8** %__s1750, align 8, !tbaa !5
  %arrayidx753 = getelementptr inbounds i8, i8* %420, i64 0
  %421 = load i8, i8* %arrayidx753, align 1, !tbaa !7
  %conv754 = zext i8 %421 to i32
  %422 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), align 1, !tbaa !7
  %conv755 = zext i8 %422 to i32
  %sub756 = sub nsw i32 %conv754, %conv755
  store i32 %sub756, i32* %__result752, align 4, !tbaa !1
  %423 = load i64, i64* %__s2_len742, align 8, !tbaa !37
  %cmp757 = icmp ugt i64 %423, 0
  br i1 %cmp757, label %land.lhs.true.759, label %if.end.789

land.lhs.true.759:                                ; preds = %cond.true.748
  %424 = load i32, i32* %__result752, align 4, !tbaa !1
  %cmp760 = icmp eq i32 %424, 0
  br i1 %cmp760, label %if.then.762, label %if.end.789

if.then.762:                                      ; preds = %land.lhs.true.759
  %425 = load i8*, i8** %__s1750, align 8, !tbaa !5
  %arrayidx763 = getelementptr inbounds i8, i8* %425, i64 1
  %426 = load i8, i8* %arrayidx763, align 1, !tbaa !7
  %conv764 = zext i8 %426 to i32
  %427 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i64 1), align 1, !tbaa !7
  %conv765 = zext i8 %427 to i32
  %sub766 = sub nsw i32 %conv764, %conv765
  store i32 %sub766, i32* %__result752, align 4, !tbaa !1
  %428 = load i64, i64* %__s2_len742, align 8, !tbaa !37
  %cmp767 = icmp ugt i64 %428, 1
  br i1 %cmp767, label %land.lhs.true.769, label %if.end.788

land.lhs.true.769:                                ; preds = %if.then.762
  %429 = load i32, i32* %__result752, align 4, !tbaa !1
  %cmp770 = icmp eq i32 %429, 0
  br i1 %cmp770, label %if.then.772, label %if.end.788

if.then.772:                                      ; preds = %land.lhs.true.769
  %430 = load i8*, i8** %__s1750, align 8, !tbaa !5
  %arrayidx773 = getelementptr inbounds i8, i8* %430, i64 2
  %431 = load i8, i8* %arrayidx773, align 1, !tbaa !7
  %conv774 = zext i8 %431 to i32
  %432 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i64 2), align 1, !tbaa !7
  %conv775 = zext i8 %432 to i32
  %sub776 = sub nsw i32 %conv774, %conv775
  store i32 %sub776, i32* %__result752, align 4, !tbaa !1
  %433 = load i64, i64* %__s2_len742, align 8, !tbaa !37
  %cmp777 = icmp ugt i64 %433, 2
  br i1 %cmp777, label %land.lhs.true.779, label %if.end.787

land.lhs.true.779:                                ; preds = %if.then.772
  %434 = load i32, i32* %__result752, align 4, !tbaa !1
  %cmp780 = icmp eq i32 %434, 0
  br i1 %cmp780, label %if.then.782, label %if.end.787

if.then.782:                                      ; preds = %land.lhs.true.779
  %435 = load i8*, i8** %__s1750, align 8, !tbaa !5
  %arrayidx783 = getelementptr inbounds i8, i8* %435, i64 3
  %436 = load i8, i8* %arrayidx783, align 1, !tbaa !7
  %conv784 = zext i8 %436 to i32
  %437 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i64 3), align 1, !tbaa !7
  %conv785 = zext i8 %437 to i32
  %sub786 = sub nsw i32 %conv784, %conv785
  store i32 %sub786, i32* %__result752, align 4, !tbaa !1
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.782, %land.lhs.true.779, %if.then.772
  br label %if.end.788

if.end.788:                                       ; preds = %if.end.787, %land.lhs.true.769, %if.then.762
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %land.lhs.true.759, %cond.true.748
  %438 = load i32, i32* %__result752, align 4, !tbaa !1
  store i32 %438, i32* %tmp790, !tbaa !1
  %439 = bitcast i32* %__result752 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i8** %__s1750 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #1
  %441 = load i32, i32* %tmp790, !tbaa !1
  br label %cond.end.793

cond.false.791:                                   ; preds = %land.lhs.true.744, %if.else.738
  %442 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call792 = call i32 @strcmp(i8* %442, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #7
  br label %cond.end.793

cond.end.793:                                     ; preds = %cond.false.791, %if.end.789
  %cond794 = phi i32 [ %441, %if.end.789 ], [ %call792, %cond.false.791 ]
  store i32 %cond794, i32* %tmp743, !tbaa !1
  %443 = bitcast i64* %__s2_len742 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %443) #1
  %444 = bitcast i64* %__s1_len740 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = load i32, i32* %tmp743, !tbaa !1
  %tobool795 = icmp ne i32 %445, 0
  br i1 %tobool795, label %if.else.797, label %if.then.796

if.then.796:                                      ; preds = %cond.end.793
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %if.end.798

if.else.797:                                      ; preds = %cond.end.793
  br label %err

if.end.798:                                       ; preds = %if.then.796
  br label %if.end.799

if.end.799:                                       ; preds = %if.end.798, %if.then.737
  br label %if.end.800

if.end.800:                                       ; preds = %if.end.799
  br label %if.end.801

if.end.801:                                       ; preds = %if.end.800, %if.then.614
  br label %if.end.802

if.end.802:                                       ; preds = %if.end.801, %if.then.553
  br label %pre

sw.bb.803:                                        ; preds = %if.end
  %446 = bitcast i64* %__s1_len805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %446) #1
  %447 = bitcast i64* %__s2_len807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %447) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.45 to i64)), i64 1), label %land.lhs.true.809, label %cond.false.856

land.lhs.true.809:                                ; preds = %sw.bb.803
  %call810 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #10
  store i64 %call810, i64* %__s2_len807, align 8, !tbaa !37
  %448 = load i64, i64* %__s2_len807, align 8, !tbaa !37
  %cmp811 = icmp ult i64 %448, 4
  br i1 %cmp811, label %cond.true.813, label %cond.false.856

cond.true.813:                                    ; preds = %land.lhs.true.809
  %449 = bitcast i8** %__s1815 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %449) #1
  %450 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %450, i8** %__s1815, align 8, !tbaa !5
  %451 = bitcast i32* %__result817 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = load i8*, i8** %__s1815, align 8, !tbaa !5
  %arrayidx818 = getelementptr inbounds i8, i8* %452, i64 0
  %453 = load i8, i8* %arrayidx818, align 1, !tbaa !7
  %conv819 = zext i8 %453 to i32
  %454 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), align 1, !tbaa !7
  %conv820 = zext i8 %454 to i32
  %sub821 = sub nsw i32 %conv819, %conv820
  store i32 %sub821, i32* %__result817, align 4, !tbaa !1
  %455 = load i64, i64* %__s2_len807, align 8, !tbaa !37
  %cmp822 = icmp ugt i64 %455, 0
  br i1 %cmp822, label %land.lhs.true.824, label %if.end.854

land.lhs.true.824:                                ; preds = %cond.true.813
  %456 = load i32, i32* %__result817, align 4, !tbaa !1
  %cmp825 = icmp eq i32 %456, 0
  br i1 %cmp825, label %if.then.827, label %if.end.854

if.then.827:                                      ; preds = %land.lhs.true.824
  %457 = load i8*, i8** %__s1815, align 8, !tbaa !5
  %arrayidx828 = getelementptr inbounds i8, i8* %457, i64 1
  %458 = load i8, i8* %arrayidx828, align 1, !tbaa !7
  %conv829 = zext i8 %458 to i32
  %459 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i64 1), align 1, !tbaa !7
  %conv830 = zext i8 %459 to i32
  %sub831 = sub nsw i32 %conv829, %conv830
  store i32 %sub831, i32* %__result817, align 4, !tbaa !1
  %460 = load i64, i64* %__s2_len807, align 8, !tbaa !37
  %cmp832 = icmp ugt i64 %460, 1
  br i1 %cmp832, label %land.lhs.true.834, label %if.end.853

land.lhs.true.834:                                ; preds = %if.then.827
  %461 = load i32, i32* %__result817, align 4, !tbaa !1
  %cmp835 = icmp eq i32 %461, 0
  br i1 %cmp835, label %if.then.837, label %if.end.853

if.then.837:                                      ; preds = %land.lhs.true.834
  %462 = load i8*, i8** %__s1815, align 8, !tbaa !5
  %arrayidx838 = getelementptr inbounds i8, i8* %462, i64 2
  %463 = load i8, i8* %arrayidx838, align 1, !tbaa !7
  %conv839 = zext i8 %463 to i32
  %464 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i64 2), align 1, !tbaa !7
  %conv840 = zext i8 %464 to i32
  %sub841 = sub nsw i32 %conv839, %conv840
  store i32 %sub841, i32* %__result817, align 4, !tbaa !1
  %465 = load i64, i64* %__s2_len807, align 8, !tbaa !37
  %cmp842 = icmp ugt i64 %465, 2
  br i1 %cmp842, label %land.lhs.true.844, label %if.end.852

land.lhs.true.844:                                ; preds = %if.then.837
  %466 = load i32, i32* %__result817, align 4, !tbaa !1
  %cmp845 = icmp eq i32 %466, 0
  br i1 %cmp845, label %if.then.847, label %if.end.852

if.then.847:                                      ; preds = %land.lhs.true.844
  %467 = load i8*, i8** %__s1815, align 8, !tbaa !5
  %arrayidx848 = getelementptr inbounds i8, i8* %467, i64 3
  %468 = load i8, i8* %arrayidx848, align 1, !tbaa !7
  %conv849 = zext i8 %468 to i32
  %469 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i64 3), align 1, !tbaa !7
  %conv850 = zext i8 %469 to i32
  %sub851 = sub nsw i32 %conv849, %conv850
  store i32 %sub851, i32* %__result817, align 4, !tbaa !1
  br label %if.end.852

if.end.852:                                       ; preds = %if.then.847, %land.lhs.true.844, %if.then.837
  br label %if.end.853

if.end.853:                                       ; preds = %if.end.852, %land.lhs.true.834, %if.then.827
  br label %if.end.854

if.end.854:                                       ; preds = %if.end.853, %land.lhs.true.824, %cond.true.813
  %470 = load i32, i32* %__result817, align 4, !tbaa !1
  store i32 %470, i32* %tmp855, !tbaa !1
  %471 = bitcast i32* %__result817 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i8** %__s1815 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %472) #1
  %473 = load i32, i32* %tmp855, !tbaa !1
  br label %cond.end.858

cond.false.856:                                   ; preds = %land.lhs.true.809, %sw.bb.803
  %474 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call857 = call i32 @strcmp(i8* %474, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #7
  br label %cond.end.858

cond.end.858:                                     ; preds = %cond.false.856, %if.end.854
  %cond859 = phi i32 [ %473, %if.end.854 ], [ %call857, %cond.false.856 ]
  store i32 %cond859, i32* %tmp808, !tbaa !1
  %475 = bitcast i64* %__s2_len807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #1
  %476 = bitcast i64* %__s1_len805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #1
  %477 = load i32, i32* %tmp808, !tbaa !1
  %tobool860 = icmp ne i32 %477, 0
  br i1 %tobool860, label %if.else.864, label %if.then.861

if.then.861:                                      ; preds = %cond.end.858
  %478 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists862 = getelementptr inbounds %struct.config_s, %struct.config_s* %478, i32 0, i32 6
  %named863 = bitcast %union.ru_* %lists862 to %struct.nu_*
  %libs = getelementptr inbounds %struct.nu_, %struct.nu_* %named863, i32 0, i32 5
  store %struct.string_list_s* %libs, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %sw.epilog

if.else.864:                                      ; preds = %cond.end.858
  %479 = bitcast i64* %__s1_len866 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %479) #1
  %480 = bitcast i64* %__s2_len868 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %480) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.46 to i64)), i64 1), label %land.lhs.true.870, label %cond.false.917

land.lhs.true.870:                                ; preds = %if.else.864
  %call871 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #10
  store i64 %call871, i64* %__s2_len868, align 8, !tbaa !37
  %481 = load i64, i64* %__s2_len868, align 8, !tbaa !37
  %cmp872 = icmp ult i64 %481, 4
  br i1 %cmp872, label %cond.true.874, label %cond.false.917

cond.true.874:                                    ; preds = %land.lhs.true.870
  %482 = bitcast i8** %__s1876 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %482) #1
  %483 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %483, i8** %__s1876, align 8, !tbaa !5
  %484 = bitcast i32* %__result878 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %484) #1
  %485 = load i8*, i8** %__s1876, align 8, !tbaa !5
  %arrayidx879 = getelementptr inbounds i8, i8* %485, i64 0
  %486 = load i8, i8* %arrayidx879, align 1, !tbaa !7
  %conv880 = zext i8 %486 to i32
  %487 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), align 1, !tbaa !7
  %conv881 = zext i8 %487 to i32
  %sub882 = sub nsw i32 %conv880, %conv881
  store i32 %sub882, i32* %__result878, align 4, !tbaa !1
  %488 = load i64, i64* %__s2_len868, align 8, !tbaa !37
  %cmp883 = icmp ugt i64 %488, 0
  br i1 %cmp883, label %land.lhs.true.885, label %if.end.915

land.lhs.true.885:                                ; preds = %cond.true.874
  %489 = load i32, i32* %__result878, align 4, !tbaa !1
  %cmp886 = icmp eq i32 %489, 0
  br i1 %cmp886, label %if.then.888, label %if.end.915

if.then.888:                                      ; preds = %land.lhs.true.885
  %490 = load i8*, i8** %__s1876, align 8, !tbaa !5
  %arrayidx889 = getelementptr inbounds i8, i8* %490, i64 1
  %491 = load i8, i8* %arrayidx889, align 1, !tbaa !7
  %conv890 = zext i8 %491 to i32
  %492 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i64 1), align 1, !tbaa !7
  %conv891 = zext i8 %492 to i32
  %sub892 = sub nsw i32 %conv890, %conv891
  store i32 %sub892, i32* %__result878, align 4, !tbaa !1
  %493 = load i64, i64* %__s2_len868, align 8, !tbaa !37
  %cmp893 = icmp ugt i64 %493, 1
  br i1 %cmp893, label %land.lhs.true.895, label %if.end.914

land.lhs.true.895:                                ; preds = %if.then.888
  %494 = load i32, i32* %__result878, align 4, !tbaa !1
  %cmp896 = icmp eq i32 %494, 0
  br i1 %cmp896, label %if.then.898, label %if.end.914

if.then.898:                                      ; preds = %land.lhs.true.895
  %495 = load i8*, i8** %__s1876, align 8, !tbaa !5
  %arrayidx899 = getelementptr inbounds i8, i8* %495, i64 2
  %496 = load i8, i8* %arrayidx899, align 1, !tbaa !7
  %conv900 = zext i8 %496 to i32
  %497 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i64 2), align 1, !tbaa !7
  %conv901 = zext i8 %497 to i32
  %sub902 = sub nsw i32 %conv900, %conv901
  store i32 %sub902, i32* %__result878, align 4, !tbaa !1
  %498 = load i64, i64* %__s2_len868, align 8, !tbaa !37
  %cmp903 = icmp ugt i64 %498, 2
  br i1 %cmp903, label %land.lhs.true.905, label %if.end.913

land.lhs.true.905:                                ; preds = %if.then.898
  %499 = load i32, i32* %__result878, align 4, !tbaa !1
  %cmp906 = icmp eq i32 %499, 0
  br i1 %cmp906, label %if.then.908, label %if.end.913

if.then.908:                                      ; preds = %land.lhs.true.905
  %500 = load i8*, i8** %__s1876, align 8, !tbaa !5
  %arrayidx909 = getelementptr inbounds i8, i8* %500, i64 3
  %501 = load i8, i8* %arrayidx909, align 1, !tbaa !7
  %conv910 = zext i8 %501 to i32
  %502 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i64 3), align 1, !tbaa !7
  %conv911 = zext i8 %502 to i32
  %sub912 = sub nsw i32 %conv910, %conv911
  store i32 %sub912, i32* %__result878, align 4, !tbaa !1
  br label %if.end.913

if.end.913:                                       ; preds = %if.then.908, %land.lhs.true.905, %if.then.898
  br label %if.end.914

if.end.914:                                       ; preds = %if.end.913, %land.lhs.true.895, %if.then.888
  br label %if.end.915

if.end.915:                                       ; preds = %if.end.914, %land.lhs.true.885, %cond.true.874
  %503 = load i32, i32* %__result878, align 4, !tbaa !1
  store i32 %503, i32* %tmp916, !tbaa !1
  %504 = bitcast i32* %__result878 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #1
  %505 = bitcast i8** %__s1876 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %505) #1
  %506 = load i32, i32* %tmp916, !tbaa !1
  br label %cond.end.919

cond.false.917:                                   ; preds = %land.lhs.true.870, %if.else.864
  %507 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call918 = call i32 @strcmp(i8* %507, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %cond.end.919

cond.end.919:                                     ; preds = %cond.false.917, %if.end.915
  %cond920 = phi i32 [ %506, %if.end.915 ], [ %call918, %cond.false.917 ]
  store i32 %cond920, i32* %tmp869, !tbaa !1
  %508 = bitcast i64* %__s2_len868 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %508) #1
  %509 = bitcast i64* %__s1_len866 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %509) #1
  %510 = load i32, i32* %tmp869, !tbaa !1
  %tobool921 = icmp ne i32 %510, 0
  br i1 %tobool921, label %if.else.925, label %if.then.922

if.then.922:                                      ; preds = %cond.end.919
  %511 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists923 = getelementptr inbounds %struct.config_s, %struct.config_s* %511, i32 0, i32 6
  %named924 = bitcast %union.ru_* %lists923 to %struct.nu_*
  %libpaths = getelementptr inbounds %struct.nu_, %struct.nu_* %named924, i32 0, i32 6
  store %struct.string_list_s* %libpaths, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %sw.epilog

if.else.925:                                      ; preds = %cond.end.919
  %512 = bitcast i64* %__s1_len927 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %512) #1
  %513 = bitcast i64* %__s2_len929 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %513) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.47 to i64)), i64 1), label %land.lhs.true.931, label %cond.false.978

land.lhs.true.931:                                ; preds = %if.else.925
  %call932 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)) #10
  store i64 %call932, i64* %__s2_len929, align 8, !tbaa !37
  %514 = load i64, i64* %__s2_len929, align 8, !tbaa !37
  %cmp933 = icmp ult i64 %514, 4
  br i1 %cmp933, label %cond.true.935, label %cond.false.978

cond.true.935:                                    ; preds = %land.lhs.true.931
  %515 = bitcast i8** %__s1937 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %515) #1
  %516 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %516, i8** %__s1937, align 8, !tbaa !5
  %517 = bitcast i32* %__result939 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %517) #1
  %518 = load i8*, i8** %__s1937, align 8, !tbaa !5
  %arrayidx940 = getelementptr inbounds i8, i8* %518, i64 0
  %519 = load i8, i8* %arrayidx940, align 1, !tbaa !7
  %conv941 = zext i8 %519 to i32
  %520 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), align 1, !tbaa !7
  %conv942 = zext i8 %520 to i32
  %sub943 = sub nsw i32 %conv941, %conv942
  store i32 %sub943, i32* %__result939, align 4, !tbaa !1
  %521 = load i64, i64* %__s2_len929, align 8, !tbaa !37
  %cmp944 = icmp ugt i64 %521, 0
  br i1 %cmp944, label %land.lhs.true.946, label %if.end.976

land.lhs.true.946:                                ; preds = %cond.true.935
  %522 = load i32, i32* %__result939, align 4, !tbaa !1
  %cmp947 = icmp eq i32 %522, 0
  br i1 %cmp947, label %if.then.949, label %if.end.976

if.then.949:                                      ; preds = %land.lhs.true.946
  %523 = load i8*, i8** %__s1937, align 8, !tbaa !5
  %arrayidx950 = getelementptr inbounds i8, i8* %523, i64 1
  %524 = load i8, i8* %arrayidx950, align 1, !tbaa !7
  %conv951 = zext i8 %524 to i32
  %525 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i64 1), align 1, !tbaa !7
  %conv952 = zext i8 %525 to i32
  %sub953 = sub nsw i32 %conv951, %conv952
  store i32 %sub953, i32* %__result939, align 4, !tbaa !1
  %526 = load i64, i64* %__s2_len929, align 8, !tbaa !37
  %cmp954 = icmp ugt i64 %526, 1
  br i1 %cmp954, label %land.lhs.true.956, label %if.end.975

land.lhs.true.956:                                ; preds = %if.then.949
  %527 = load i32, i32* %__result939, align 4, !tbaa !1
  %cmp957 = icmp eq i32 %527, 0
  br i1 %cmp957, label %if.then.959, label %if.end.975

if.then.959:                                      ; preds = %land.lhs.true.956
  %528 = load i8*, i8** %__s1937, align 8, !tbaa !5
  %arrayidx960 = getelementptr inbounds i8, i8* %528, i64 2
  %529 = load i8, i8* %arrayidx960, align 1, !tbaa !7
  %conv961 = zext i8 %529 to i32
  %530 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i64 2), align 1, !tbaa !7
  %conv962 = zext i8 %530 to i32
  %sub963 = sub nsw i32 %conv961, %conv962
  store i32 %sub963, i32* %__result939, align 4, !tbaa !1
  %531 = load i64, i64* %__s2_len929, align 8, !tbaa !37
  %cmp964 = icmp ugt i64 %531, 2
  br i1 %cmp964, label %land.lhs.true.966, label %if.end.974

land.lhs.true.966:                                ; preds = %if.then.959
  %532 = load i32, i32* %__result939, align 4, !tbaa !1
  %cmp967 = icmp eq i32 %532, 0
  br i1 %cmp967, label %if.then.969, label %if.end.974

if.then.969:                                      ; preds = %land.lhs.true.966
  %533 = load i8*, i8** %__s1937, align 8, !tbaa !5
  %arrayidx970 = getelementptr inbounds i8, i8* %533, i64 3
  %534 = load i8, i8* %arrayidx970, align 1, !tbaa !7
  %conv971 = zext i8 %534 to i32
  %535 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i64 3), align 1, !tbaa !7
  %conv972 = zext i8 %535 to i32
  %sub973 = sub nsw i32 %conv971, %conv972
  store i32 %sub973, i32* %__result939, align 4, !tbaa !1
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.969, %land.lhs.true.966, %if.then.959
  br label %if.end.975

if.end.975:                                       ; preds = %if.end.974, %land.lhs.true.956, %if.then.949
  br label %if.end.976

if.end.976:                                       ; preds = %if.end.975, %land.lhs.true.946, %cond.true.935
  %536 = load i32, i32* %__result939, align 4, !tbaa !1
  store i32 %536, i32* %tmp977, !tbaa !1
  %537 = bitcast i32* %__result939 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  %538 = bitcast i8** %__s1937 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %538) #1
  %539 = load i32, i32* %tmp977, !tbaa !1
  br label %cond.end.980

cond.false.978:                                   ; preds = %land.lhs.true.931, %if.else.925
  %540 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call979 = call i32 @strcmp(i8* %540, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)) #7
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.false.978, %if.end.976
  %cond981 = phi i32 [ %539, %if.end.976 ], [ %call979, %cond.false.978 ]
  store i32 %cond981, i32* %tmp930, !tbaa !1
  %541 = bitcast i64* %__s2_len929 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %541) #1
  %542 = bitcast i64* %__s1_len927 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %542) #1
  %543 = load i32, i32* %tmp930, !tbaa !1
  %tobool982 = icmp ne i32 %543, 0
  br i1 %tobool982, label %if.end.986, label %if.then.983

if.then.983:                                      ; preds = %cond.end.980
  %544 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists984 = getelementptr inbounds %struct.config_s, %struct.config_s* %544, i32 0, i32 6
  %named985 = bitcast %union.ru_* %lists984 to %struct.nu_*
  %links = getelementptr inbounds %struct.nu_, %struct.nu_* %named985, i32 0, i32 7
  store %struct.string_list_s* %links, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %sw.epilog

if.end.986:                                       ; preds = %cond.end.980
  br label %if.end.987

if.end.987:                                       ; preds = %if.end.986
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987
  br label %err

sw.bb.989:                                        ; preds = %if.end
  %545 = bitcast i64* %__s1_len991 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %545) #1
  %546 = bitcast i64* %__s2_len993 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %546) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.995, label %cond.false.1042

land.lhs.true.995:                                ; preds = %sw.bb.989
  %call996 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #10
  store i64 %call996, i64* %__s2_len993, align 8, !tbaa !37
  %547 = load i64, i64* %__s2_len993, align 8, !tbaa !37
  %cmp997 = icmp ult i64 %547, 4
  br i1 %cmp997, label %cond.true.999, label %cond.false.1042

cond.true.999:                                    ; preds = %land.lhs.true.995
  %548 = bitcast i8** %__s11001 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %548) #1
  %549 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %549, i8** %__s11001, align 8, !tbaa !5
  %550 = bitcast i32* %__result1003 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %550) #1
  %551 = load i8*, i8** %__s11001, align 8, !tbaa !5
  %arrayidx1004 = getelementptr inbounds i8, i8* %551, i64 0
  %552 = load i8, i8* %arrayidx1004, align 1, !tbaa !7
  %conv1005 = zext i8 %552 to i32
  %553 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !7
  %conv1006 = zext i8 %553 to i32
  %sub1007 = sub nsw i32 %conv1005, %conv1006
  store i32 %sub1007, i32* %__result1003, align 4, !tbaa !1
  %554 = load i64, i64* %__s2_len993, align 8, !tbaa !37
  %cmp1008 = icmp ugt i64 %554, 0
  br i1 %cmp1008, label %land.lhs.true.1010, label %if.end.1040

land.lhs.true.1010:                               ; preds = %cond.true.999
  %555 = load i32, i32* %__result1003, align 4, !tbaa !1
  %cmp1011 = icmp eq i32 %555, 0
  br i1 %cmp1011, label %if.then.1013, label %if.end.1040

if.then.1013:                                     ; preds = %land.lhs.true.1010
  %556 = load i8*, i8** %__s11001, align 8, !tbaa !5
  %arrayidx1014 = getelementptr inbounds i8, i8* %556, i64 1
  %557 = load i8, i8* %arrayidx1014, align 1, !tbaa !7
  %conv1015 = zext i8 %557 to i32
  %558 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !7
  %conv1016 = zext i8 %558 to i32
  %sub1017 = sub nsw i32 %conv1015, %conv1016
  store i32 %sub1017, i32* %__result1003, align 4, !tbaa !1
  %559 = load i64, i64* %__s2_len993, align 8, !tbaa !37
  %cmp1018 = icmp ugt i64 %559, 1
  br i1 %cmp1018, label %land.lhs.true.1020, label %if.end.1039

land.lhs.true.1020:                               ; preds = %if.then.1013
  %560 = load i32, i32* %__result1003, align 4, !tbaa !1
  %cmp1021 = icmp eq i32 %560, 0
  br i1 %cmp1021, label %if.then.1023, label %if.end.1039

if.then.1023:                                     ; preds = %land.lhs.true.1020
  %561 = load i8*, i8** %__s11001, align 8, !tbaa !5
  %arrayidx1024 = getelementptr inbounds i8, i8* %561, i64 2
  %562 = load i8, i8* %arrayidx1024, align 1, !tbaa !7
  %conv1025 = zext i8 %562 to i32
  %563 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !7
  %conv1026 = zext i8 %563 to i32
  %sub1027 = sub nsw i32 %conv1025, %conv1026
  store i32 %sub1027, i32* %__result1003, align 4, !tbaa !1
  %564 = load i64, i64* %__s2_len993, align 8, !tbaa !37
  %cmp1028 = icmp ugt i64 %564, 2
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.end.1038

land.lhs.true.1030:                               ; preds = %if.then.1023
  %565 = load i32, i32* %__result1003, align 4, !tbaa !1
  %cmp1031 = icmp eq i32 %565, 0
  br i1 %cmp1031, label %if.then.1033, label %if.end.1038

if.then.1033:                                     ; preds = %land.lhs.true.1030
  %566 = load i8*, i8** %__s11001, align 8, !tbaa !5
  %arrayidx1034 = getelementptr inbounds i8, i8* %566, i64 3
  %567 = load i8, i8* %arrayidx1034, align 1, !tbaa !7
  %conv1035 = zext i8 %567 to i32
  %568 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !7
  %conv1036 = zext i8 %568 to i32
  %sub1037 = sub nsw i32 %conv1035, %conv1036
  store i32 %sub1037, i32* %__result1003, align 4, !tbaa !1
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.then.1033, %land.lhs.true.1030, %if.then.1023
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.end.1038, %land.lhs.true.1020, %if.then.1013
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.end.1039, %land.lhs.true.1010, %cond.true.999
  %569 = load i32, i32* %__result1003, align 4, !tbaa !1
  store i32 %569, i32* %tmp1041, !tbaa !1
  %570 = bitcast i32* %__result1003 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i8** %__s11001 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %571) #1
  %572 = load i32, i32* %tmp1041, !tbaa !1
  br label %cond.end.1044

cond.false.1042:                                  ; preds = %land.lhs.true.995, %sw.bb.989
  %573 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call1043 = call i32 @strcmp(i8* %573, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end.1044

cond.end.1044:                                    ; preds = %cond.false.1042, %if.end.1040
  %cond1045 = phi i32 [ %572, %if.end.1040 ], [ %call1043, %cond.false.1042 ]
  store i32 %cond1045, i32* %tmp994, !tbaa !1
  %574 = bitcast i64* %__s2_len993 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %574) #1
  %575 = bitcast i64* %__s1_len991 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = load i32, i32* %tmp994, !tbaa !1
  %tobool1046 = icmp ne i32 %576, 0
  br i1 %tobool1046, label %if.end.1055, label %if.then.1047

if.then.1047:                                     ; preds = %cond.end.1044
  %577 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %lists1048 = getelementptr inbounds %struct.config_s, %struct.config_s* %577, i32 0, i32 6
  %named1049 = bitcast %union.ru_* %lists1048 to %struct.nu_*
  %objs = getelementptr inbounds %struct.nu_, %struct.nu_* %named1049, i32 0, i32 8
  store %struct.string_list_s* %objs, %struct.string_list_s** %list, align 8, !tbaa !5
  %arraydecay1050 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  %578 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %file_prefix = getelementptr inbounds %struct.config_s, %struct.config_s* %578, i32 0, i32 2
  %579 = load i8*, i8** %file_prefix, align 8, !tbaa !15
  %call1051 = call i8* @strcpy(i8* %arraydecay1050, i8* %579) #7
  %arraydecay1052 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  %call1053 = call i8* @strcat(i8* %arraydecay1052, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #7
  %arraydecay1054 = getelementptr inbounds [80 x i8], [80 x i8]* %templat, i32 0, i32 0
  store i8* %arraydecay1054, i8** %pat, align 8, !tbaa !5
  br label %sw.epilog

if.end.1055:                                      ; preds = %cond.end.1044
  %580 = bitcast i64* %__s1_len1057 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %580) #1
  %581 = bitcast i64* %__s2_len1059 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %581) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.49 to i64)), i64 1), label %land.lhs.true.1061, label %cond.false.1108

land.lhs.true.1061:                               ; preds = %if.end.1055
  %call1062 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)) #10
  store i64 %call1062, i64* %__s2_len1059, align 8, !tbaa !37
  %582 = load i64, i64* %__s2_len1059, align 8, !tbaa !37
  %cmp1063 = icmp ult i64 %582, 4
  br i1 %cmp1063, label %cond.true.1065, label %cond.false.1108

cond.true.1065:                                   ; preds = %land.lhs.true.1061
  %583 = bitcast i8** %__s11067 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %583) #1
  %584 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %584, i8** %__s11067, align 8, !tbaa !5
  %585 = bitcast i32* %__result1069 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %585) #1
  %586 = load i8*, i8** %__s11067, align 8, !tbaa !5
  %arrayidx1070 = getelementptr inbounds i8, i8* %586, i64 0
  %587 = load i8, i8* %arrayidx1070, align 1, !tbaa !7
  %conv1071 = zext i8 %587 to i32
  %588 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), align 1, !tbaa !7
  %conv1072 = zext i8 %588 to i32
  %sub1073 = sub nsw i32 %conv1071, %conv1072
  store i32 %sub1073, i32* %__result1069, align 4, !tbaa !1
  %589 = load i64, i64* %__s2_len1059, align 8, !tbaa !37
  %cmp1074 = icmp ugt i64 %589, 0
  br i1 %cmp1074, label %land.lhs.true.1076, label %if.end.1106

land.lhs.true.1076:                               ; preds = %cond.true.1065
  %590 = load i32, i32* %__result1069, align 4, !tbaa !1
  %cmp1077 = icmp eq i32 %590, 0
  br i1 %cmp1077, label %if.then.1079, label %if.end.1106

if.then.1079:                                     ; preds = %land.lhs.true.1076
  %591 = load i8*, i8** %__s11067, align 8, !tbaa !5
  %arrayidx1080 = getelementptr inbounds i8, i8* %591, i64 1
  %592 = load i8, i8* %arrayidx1080, align 1, !tbaa !7
  %conv1081 = zext i8 %592 to i32
  %593 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i64 1), align 1, !tbaa !7
  %conv1082 = zext i8 %593 to i32
  %sub1083 = sub nsw i32 %conv1081, %conv1082
  store i32 %sub1083, i32* %__result1069, align 4, !tbaa !1
  %594 = load i64, i64* %__s2_len1059, align 8, !tbaa !37
  %cmp1084 = icmp ugt i64 %594, 1
  br i1 %cmp1084, label %land.lhs.true.1086, label %if.end.1105

land.lhs.true.1086:                               ; preds = %if.then.1079
  %595 = load i32, i32* %__result1069, align 4, !tbaa !1
  %cmp1087 = icmp eq i32 %595, 0
  br i1 %cmp1087, label %if.then.1089, label %if.end.1105

if.then.1089:                                     ; preds = %land.lhs.true.1086
  %596 = load i8*, i8** %__s11067, align 8, !tbaa !5
  %arrayidx1090 = getelementptr inbounds i8, i8* %596, i64 2
  %597 = load i8, i8* %arrayidx1090, align 1, !tbaa !7
  %conv1091 = zext i8 %597 to i32
  %598 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i64 2), align 1, !tbaa !7
  %conv1092 = zext i8 %598 to i32
  %sub1093 = sub nsw i32 %conv1091, %conv1092
  store i32 %sub1093, i32* %__result1069, align 4, !tbaa !1
  %599 = load i64, i64* %__s2_len1059, align 8, !tbaa !37
  %cmp1094 = icmp ugt i64 %599, 2
  br i1 %cmp1094, label %land.lhs.true.1096, label %if.end.1104

land.lhs.true.1096:                               ; preds = %if.then.1089
  %600 = load i32, i32* %__result1069, align 4, !tbaa !1
  %cmp1097 = icmp eq i32 %600, 0
  br i1 %cmp1097, label %if.then.1099, label %if.end.1104

if.then.1099:                                     ; preds = %land.lhs.true.1096
  %601 = load i8*, i8** %__s11067, align 8, !tbaa !5
  %arrayidx1100 = getelementptr inbounds i8, i8* %601, i64 3
  %602 = load i8, i8* %arrayidx1100, align 1, !tbaa !7
  %conv1101 = zext i8 %602 to i32
  %603 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i64 3), align 1, !tbaa !7
  %conv1102 = zext i8 %603 to i32
  %sub1103 = sub nsw i32 %conv1101, %conv1102
  store i32 %sub1103, i32* %__result1069, align 4, !tbaa !1
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.then.1099, %land.lhs.true.1096, %if.then.1089
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.end.1104, %land.lhs.true.1086, %if.then.1079
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %land.lhs.true.1076, %cond.true.1065
  %604 = load i32, i32* %__result1069, align 4, !tbaa !1
  store i32 %604, i32* %tmp1107, !tbaa !1
  %605 = bitcast i32* %__result1069 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %605) #1
  %606 = bitcast i8** %__s11067 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %606) #1
  %607 = load i32, i32* %tmp1107, !tbaa !1
  br label %cond.end.1110

cond.false.1108:                                  ; preds = %land.lhs.true.1061, %if.end.1055
  %608 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call1109 = call i32 @strcmp(i8* %608, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %cond.end.1110

cond.end.1110:                                    ; preds = %cond.false.1108, %if.end.1106
  %cond1111 = phi i32 [ %607, %if.end.1106 ], [ %call1109, %cond.false.1108 ]
  store i32 %cond1111, i32* %tmp1060, !tbaa !1
  %609 = bitcast i64* %__s2_len1059 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %609) #1
  %610 = bitcast i64* %__s1_len1057 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %610) #1
  %611 = load i32, i32* %tmp1060, !tbaa !1
  %tobool1112 = icmp ne i32 %611, 0
  br i1 %tobool1112, label %if.end.1114, label %if.then.1113

if.then.1113:                                     ; preds = %cond.end.1110
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %sw.epilog

if.end.1114:                                      ; preds = %cond.end.1110
  br label %err

sw.bb.1115:                                       ; preds = %if.end
  %612 = bitcast i64* %__s1_len1117 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %612) #1
  %613 = bitcast i64* %__s2_len1119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %613) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.51 to i64)), i64 1), label %land.lhs.true.1121, label %cond.false.1168

land.lhs.true.1121:                               ; preds = %sw.bb.1115
  %call1122 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #10
  store i64 %call1122, i64* %__s2_len1119, align 8, !tbaa !37
  %614 = load i64, i64* %__s2_len1119, align 8, !tbaa !37
  %cmp1123 = icmp ult i64 %614, 4
  br i1 %cmp1123, label %cond.true.1125, label %cond.false.1168

cond.true.1125:                                   ; preds = %land.lhs.true.1121
  %615 = bitcast i8** %__s11127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %615) #1
  %616 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %616, i8** %__s11127, align 8, !tbaa !5
  %617 = bitcast i32* %__result1129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %617) #1
  %618 = load i8*, i8** %__s11127, align 8, !tbaa !5
  %arrayidx1130 = getelementptr inbounds i8, i8* %618, i64 0
  %619 = load i8, i8* %arrayidx1130, align 1, !tbaa !7
  %conv1131 = zext i8 %619 to i32
  %620 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), align 1, !tbaa !7
  %conv1132 = zext i8 %620 to i32
  %sub1133 = sub nsw i32 %conv1131, %conv1132
  store i32 %sub1133, i32* %__result1129, align 4, !tbaa !1
  %621 = load i64, i64* %__s2_len1119, align 8, !tbaa !37
  %cmp1134 = icmp ugt i64 %621, 0
  br i1 %cmp1134, label %land.lhs.true.1136, label %if.end.1166

land.lhs.true.1136:                               ; preds = %cond.true.1125
  %622 = load i32, i32* %__result1129, align 4, !tbaa !1
  %cmp1137 = icmp eq i32 %622, 0
  br i1 %cmp1137, label %if.then.1139, label %if.end.1166

if.then.1139:                                     ; preds = %land.lhs.true.1136
  %623 = load i8*, i8** %__s11127, align 8, !tbaa !5
  %arrayidx1140 = getelementptr inbounds i8, i8* %623, i64 1
  %624 = load i8, i8* %arrayidx1140, align 1, !tbaa !7
  %conv1141 = zext i8 %624 to i32
  %625 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i64 1), align 1, !tbaa !7
  %conv1142 = zext i8 %625 to i32
  %sub1143 = sub nsw i32 %conv1141, %conv1142
  store i32 %sub1143, i32* %__result1129, align 4, !tbaa !1
  %626 = load i64, i64* %__s2_len1119, align 8, !tbaa !37
  %cmp1144 = icmp ugt i64 %626, 1
  br i1 %cmp1144, label %land.lhs.true.1146, label %if.end.1165

land.lhs.true.1146:                               ; preds = %if.then.1139
  %627 = load i32, i32* %__result1129, align 4, !tbaa !1
  %cmp1147 = icmp eq i32 %627, 0
  br i1 %cmp1147, label %if.then.1149, label %if.end.1165

if.then.1149:                                     ; preds = %land.lhs.true.1146
  %628 = load i8*, i8** %__s11127, align 8, !tbaa !5
  %arrayidx1150 = getelementptr inbounds i8, i8* %628, i64 2
  %629 = load i8, i8* %arrayidx1150, align 1, !tbaa !7
  %conv1151 = zext i8 %629 to i32
  %630 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i64 2), align 1, !tbaa !7
  %conv1152 = zext i8 %630 to i32
  %sub1153 = sub nsw i32 %conv1151, %conv1152
  store i32 %sub1153, i32* %__result1129, align 4, !tbaa !1
  %631 = load i64, i64* %__s2_len1119, align 8, !tbaa !37
  %cmp1154 = icmp ugt i64 %631, 2
  br i1 %cmp1154, label %land.lhs.true.1156, label %if.end.1164

land.lhs.true.1156:                               ; preds = %if.then.1149
  %632 = load i32, i32* %__result1129, align 4, !tbaa !1
  %cmp1157 = icmp eq i32 %632, 0
  br i1 %cmp1157, label %if.then.1159, label %if.end.1164

if.then.1159:                                     ; preds = %land.lhs.true.1156
  %633 = load i8*, i8** %__s11127, align 8, !tbaa !5
  %arrayidx1160 = getelementptr inbounds i8, i8* %633, i64 3
  %634 = load i8, i8* %arrayidx1160, align 1, !tbaa !7
  %conv1161 = zext i8 %634 to i32
  %635 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv1162 = zext i8 %635 to i32
  %sub1163 = sub nsw i32 %conv1161, %conv1162
  store i32 %sub1163, i32* %__result1129, align 4, !tbaa !1
  br label %if.end.1164

if.end.1164:                                      ; preds = %if.then.1159, %land.lhs.true.1156, %if.then.1149
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.end.1164, %land.lhs.true.1146, %if.then.1139
  br label %if.end.1166

if.end.1166:                                      ; preds = %if.end.1165, %land.lhs.true.1136, %cond.true.1125
  %636 = load i32, i32* %__result1129, align 4, !tbaa !1
  store i32 %636, i32* %tmp1167, !tbaa !1
  %637 = bitcast i32* %__result1129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %637) #1
  %638 = bitcast i8** %__s11127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %638) #1
  %639 = load i32, i32* %tmp1167, !tbaa !1
  br label %cond.end.1170

cond.false.1168:                                  ; preds = %land.lhs.true.1121, %sw.bb.1115
  %640 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call1169 = call i32 @strcmp(i8* %640, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #7
  br label %cond.end.1170

cond.end.1170:                                    ; preds = %cond.false.1168, %if.end.1166
  %cond1171 = phi i32 [ %639, %if.end.1166 ], [ %call1169, %cond.false.1168 ]
  store i32 %cond1171, i32* %tmp1120, !tbaa !1
  %641 = bitcast i64* %__s2_len1119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %641) #1
  %642 = bitcast i64* %__s1_len1117 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %642) #1
  %643 = load i32, i32* %tmp1120, !tbaa !1
  %tobool1172 = icmp ne i32 %643, 0
  br i1 %tobool1172, label %if.else.1179, label %if.then.1173

if.then.1173:                                     ; preds = %cond.end.1170
  %arraydecay1174 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %644 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %645 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call1175 = call i64 @strlen(i8* %645) #10
  %add = add i64 %call1175, 3
  %conv1176 = trunc i64 %add to i32
  %call1177 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i8* %644, i32 %conv1176) #7
  %arraydecay1178 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay1178, i8** %item.addr, align 8, !tbaa !5
  br label %sw.epilog

if.else.1179:                                     ; preds = %cond.end.1170
  %646 = bitcast i64* %__s1_len1181 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %646) #1
  %647 = bitcast i64* %__s2_len1183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %647) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.53 to i64)), i64 1), label %land.lhs.true.1185, label %cond.false.1232

land.lhs.true.1185:                               ; preds = %if.else.1179
  %call1186 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #10
  store i64 %call1186, i64* %__s2_len1183, align 8, !tbaa !37
  %648 = load i64, i64* %__s2_len1183, align 8, !tbaa !37
  %cmp1187 = icmp ult i64 %648, 4
  br i1 %cmp1187, label %cond.true.1189, label %cond.false.1232

cond.true.1189:                                   ; preds = %land.lhs.true.1185
  %649 = bitcast i8** %__s11191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %649) #1
  %650 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %650, i8** %__s11191, align 8, !tbaa !5
  %651 = bitcast i32* %__result1193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %651) #1
  %652 = load i8*, i8** %__s11191, align 8, !tbaa !5
  %arrayidx1194 = getelementptr inbounds i8, i8* %652, i64 0
  %653 = load i8, i8* %arrayidx1194, align 1, !tbaa !7
  %conv1195 = zext i8 %653 to i32
  %654 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), align 1, !tbaa !7
  %conv1196 = zext i8 %654 to i32
  %sub1197 = sub nsw i32 %conv1195, %conv1196
  store i32 %sub1197, i32* %__result1193, align 4, !tbaa !1
  %655 = load i64, i64* %__s2_len1183, align 8, !tbaa !37
  %cmp1198 = icmp ugt i64 %655, 0
  br i1 %cmp1198, label %land.lhs.true.1200, label %if.end.1230

land.lhs.true.1200:                               ; preds = %cond.true.1189
  %656 = load i32, i32* %__result1193, align 4, !tbaa !1
  %cmp1201 = icmp eq i32 %656, 0
  br i1 %cmp1201, label %if.then.1203, label %if.end.1230

if.then.1203:                                     ; preds = %land.lhs.true.1200
  %657 = load i8*, i8** %__s11191, align 8, !tbaa !5
  %arrayidx1204 = getelementptr inbounds i8, i8* %657, i64 1
  %658 = load i8, i8* %arrayidx1204, align 1, !tbaa !7
  %conv1205 = zext i8 %658 to i32
  %659 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i64 1), align 1, !tbaa !7
  %conv1206 = zext i8 %659 to i32
  %sub1207 = sub nsw i32 %conv1205, %conv1206
  store i32 %sub1207, i32* %__result1193, align 4, !tbaa !1
  %660 = load i64, i64* %__s2_len1183, align 8, !tbaa !37
  %cmp1208 = icmp ugt i64 %660, 1
  br i1 %cmp1208, label %land.lhs.true.1210, label %if.end.1229

land.lhs.true.1210:                               ; preds = %if.then.1203
  %661 = load i32, i32* %__result1193, align 4, !tbaa !1
  %cmp1211 = icmp eq i32 %661, 0
  br i1 %cmp1211, label %if.then.1213, label %if.end.1229

if.then.1213:                                     ; preds = %land.lhs.true.1210
  %662 = load i8*, i8** %__s11191, align 8, !tbaa !5
  %arrayidx1214 = getelementptr inbounds i8, i8* %662, i64 2
  %663 = load i8, i8* %arrayidx1214, align 1, !tbaa !7
  %conv1215 = zext i8 %663 to i32
  %664 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i64 2), align 1, !tbaa !7
  %conv1216 = zext i8 %664 to i32
  %sub1217 = sub nsw i32 %conv1215, %conv1216
  store i32 %sub1217, i32* %__result1193, align 4, !tbaa !1
  %665 = load i64, i64* %__s2_len1183, align 8, !tbaa !37
  %cmp1218 = icmp ugt i64 %665, 2
  br i1 %cmp1218, label %land.lhs.true.1220, label %if.end.1228

land.lhs.true.1220:                               ; preds = %if.then.1213
  %666 = load i32, i32* %__result1193, align 4, !tbaa !1
  %cmp1221 = icmp eq i32 %666, 0
  br i1 %cmp1221, label %if.then.1223, label %if.end.1228

if.then.1223:                                     ; preds = %land.lhs.true.1220
  %667 = load i8*, i8** %__s11191, align 8, !tbaa !5
  %arrayidx1224 = getelementptr inbounds i8, i8* %667, i64 3
  %668 = load i8, i8* %arrayidx1224, align 1, !tbaa !7
  %conv1225 = zext i8 %668 to i32
  %669 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i64 3), align 1, !tbaa !7
  %conv1226 = zext i8 %669 to i32
  %sub1227 = sub nsw i32 %conv1225, %conv1226
  store i32 %sub1227, i32* %__result1193, align 4, !tbaa !1
  br label %if.end.1228

if.end.1228:                                      ; preds = %if.then.1223, %land.lhs.true.1220, %if.then.1213
  br label %if.end.1229

if.end.1229:                                      ; preds = %if.end.1228, %land.lhs.true.1210, %if.then.1203
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.end.1229, %land.lhs.true.1200, %cond.true.1189
  %670 = load i32, i32* %__result1193, align 4, !tbaa !1
  store i32 %670, i32* %tmp1231, !tbaa !1
  %671 = bitcast i32* %__result1193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %671) #1
  %672 = bitcast i8** %__s11191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = load i32, i32* %tmp1231, !tbaa !1
  br label %cond.end.1234

cond.false.1232:                                  ; preds = %land.lhs.true.1185, %if.else.1179
  %674 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call1233 = call i32 @strcmp(i8* %674, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #7
  br label %cond.end.1234

cond.end.1234:                                    ; preds = %cond.false.1232, %if.end.1230
  %cond1235 = phi i32 [ %673, %if.end.1230 ], [ %call1233, %cond.false.1232 ]
  store i32 %cond1235, i32* %tmp1184, !tbaa !1
  %675 = bitcast i64* %__s2_len1183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %675) #1
  %676 = bitcast i64* %__s1_len1181 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %676) #1
  %677 = load i32, i32* %tmp1184, !tbaa !1
  %tobool1236 = icmp ne i32 %677, 0
  br i1 %tobool1236, label %if.end.1238, label %if.then.1237

if.then.1237:                                     ; preds = %cond.end.1234
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i8** %pat, align 8, !tbaa !5
  br label %pre

if.end.1238:                                      ; preds = %cond.end.1234
  br label %if.end.1239

if.end.1239:                                      ; preds = %if.end.1238
  br label %err

sw.bb.1240:                                       ; preds = %if.end
  %678 = bitcast i64* %__s1_len1242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %678) #1
  %679 = bitcast i64* %__s2_len1244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %679) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true.1246, label %cond.false.1293

land.lhs.true.1246:                               ; preds = %sw.bb.1240
  %call1247 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0)) #10
  store i64 %call1247, i64* %__s2_len1244, align 8, !tbaa !37
  %680 = load i64, i64* %__s2_len1244, align 8, !tbaa !37
  %cmp1248 = icmp ult i64 %680, 4
  br i1 %cmp1248, label %cond.true.1250, label %cond.false.1293

cond.true.1250:                                   ; preds = %land.lhs.true.1246
  %681 = bitcast i8** %__s11252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %681) #1
  %682 = load i8*, i8** %category.addr, align 8, !tbaa !5
  store i8* %682, i8** %__s11252, align 8, !tbaa !5
  %683 = bitcast i32* %__result1254 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %683) #1
  %684 = load i8*, i8** %__s11252, align 8, !tbaa !5
  %arrayidx1255 = getelementptr inbounds i8, i8* %684, i64 0
  %685 = load i8, i8* %arrayidx1255, align 1, !tbaa !7
  %conv1256 = zext i8 %685 to i32
  %686 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), align 1, !tbaa !7
  %conv1257 = zext i8 %686 to i32
  %sub1258 = sub nsw i32 %conv1256, %conv1257
  store i32 %sub1258, i32* %__result1254, align 4, !tbaa !1
  %687 = load i64, i64* %__s2_len1244, align 8, !tbaa !37
  %cmp1259 = icmp ugt i64 %687, 0
  br i1 %cmp1259, label %land.lhs.true.1261, label %if.end.1291

land.lhs.true.1261:                               ; preds = %cond.true.1250
  %688 = load i32, i32* %__result1254, align 4, !tbaa !1
  %cmp1262 = icmp eq i32 %688, 0
  br i1 %cmp1262, label %if.then.1264, label %if.end.1291

if.then.1264:                                     ; preds = %land.lhs.true.1261
  %689 = load i8*, i8** %__s11252, align 8, !tbaa !5
  %arrayidx1265 = getelementptr inbounds i8, i8* %689, i64 1
  %690 = load i8, i8* %arrayidx1265, align 1, !tbaa !7
  %conv1266 = zext i8 %690 to i32
  %691 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i64 1), align 1, !tbaa !7
  %conv1267 = zext i8 %691 to i32
  %sub1268 = sub nsw i32 %conv1266, %conv1267
  store i32 %sub1268, i32* %__result1254, align 4, !tbaa !1
  %692 = load i64, i64* %__s2_len1244, align 8, !tbaa !37
  %cmp1269 = icmp ugt i64 %692, 1
  br i1 %cmp1269, label %land.lhs.true.1271, label %if.end.1290

land.lhs.true.1271:                               ; preds = %if.then.1264
  %693 = load i32, i32* %__result1254, align 4, !tbaa !1
  %cmp1272 = icmp eq i32 %693, 0
  br i1 %cmp1272, label %if.then.1274, label %if.end.1290

if.then.1274:                                     ; preds = %land.lhs.true.1271
  %694 = load i8*, i8** %__s11252, align 8, !tbaa !5
  %arrayidx1275 = getelementptr inbounds i8, i8* %694, i64 2
  %695 = load i8, i8* %arrayidx1275, align 1, !tbaa !7
  %conv1276 = zext i8 %695 to i32
  %696 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i64 2), align 1, !tbaa !7
  %conv1277 = zext i8 %696 to i32
  %sub1278 = sub nsw i32 %conv1276, %conv1277
  store i32 %sub1278, i32* %__result1254, align 4, !tbaa !1
  %697 = load i64, i64* %__s2_len1244, align 8, !tbaa !37
  %cmp1279 = icmp ugt i64 %697, 2
  br i1 %cmp1279, label %land.lhs.true.1281, label %if.end.1289

land.lhs.true.1281:                               ; preds = %if.then.1274
  %698 = load i32, i32* %__result1254, align 4, !tbaa !1
  %cmp1282 = icmp eq i32 %698, 0
  br i1 %cmp1282, label %if.then.1284, label %if.end.1289

if.then.1284:                                     ; preds = %land.lhs.true.1281
  %699 = load i8*, i8** %__s11252, align 8, !tbaa !5
  %arrayidx1285 = getelementptr inbounds i8, i8* %699, i64 3
  %700 = load i8, i8* %arrayidx1285, align 1, !tbaa !7
  %conv1286 = zext i8 %700 to i32
  %701 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i64 3), align 1, !tbaa !7
  %conv1287 = zext i8 %701 to i32
  %sub1288 = sub nsw i32 %conv1286, %conv1287
  store i32 %sub1288, i32* %__result1254, align 4, !tbaa !1
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.then.1284, %land.lhs.true.1281, %if.then.1274
  br label %if.end.1290

if.end.1290:                                      ; preds = %if.end.1289, %land.lhs.true.1271, %if.then.1264
  br label %if.end.1291

if.end.1291:                                      ; preds = %if.end.1290, %land.lhs.true.1261, %cond.true.1250
  %702 = load i32, i32* %__result1254, align 4, !tbaa !1
  store i32 %702, i32* %tmp1292, !tbaa !1
  %703 = bitcast i32* %__result1254 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %703) #1
  %704 = bitcast i8** %__s11252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %704) #1
  %705 = load i32, i32* %tmp1292, !tbaa !1
  br label %cond.end.1295

cond.false.1293:                                  ; preds = %land.lhs.true.1246, %sw.bb.1240
  %706 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %call1294 = call i32 @strcmp(i8* %706, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0)) #7
  br label %cond.end.1295

cond.end.1295:                                    ; preds = %cond.false.1293, %if.end.1291
  %cond1296 = phi i32 [ %705, %if.end.1291 ], [ %call1294, %cond.false.1293 ]
  store i32 %cond1296, i32* %tmp1245, !tbaa !1
  %707 = bitcast i64* %__s2_len1244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %707) #1
  %708 = bitcast i64* %__s1_len1242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %708) #1
  %709 = load i32, i32* %tmp1245, !tbaa !1
  %tobool1297 = icmp ne i32 %709, 0
  br i1 %tobool1297, label %if.end.1299, label %if.then.1298

if.then.1298:                                     ; preds = %cond.end.1295
  %710 = load %struct.config_s*, %struct.config_s** %pconf.addr, align 8, !tbaa !5
  %replaces = getelementptr inbounds %struct.config_s, %struct.config_s* %710, i32 0, i32 5
  store %struct.string_list_s* %replaces, %struct.string_list_s** %list, align 8, !tbaa !5
  br label %sw.epilog

if.end.1299:                                      ; preds = %cond.end.1295
  br label %err

sw.default:                                       ; preds = %if.end
  br label %err

err:                                              ; preds = %sw.default, %if.end.1299, %if.end.1239, %if.end.1114, %if.end.988, %if.else.797, %if.else.493, %if.else.430, %if.end.250, %if.else.179, %if.then.57
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %712 = load i8*, i8** %category.addr, align 8, !tbaa !5
  %713 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call1300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %711, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0), i8* %712, i8* %713) #8
  call void @exit(i32 1) #9
  unreachable

sw.epilog:                                        ; preds = %if.then.1298, %if.then.1173, %if.then.1113, %if.then.1047, %if.then.983, %if.then.922, %if.then.861, %if.then.309, %if.then.244, %pre
  %714 = load i8*, i8** %pat, align 8, !tbaa !5
  %tobool1301 = icmp ne i8* %714, null
  br i1 %tobool1301, label %if.then.1302, label %if.else.1314

if.then.1302:                                     ; preds = %sw.epilog
  %arraydecay1303 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %715 = load i8*, i8** %pat, align 8, !tbaa !5
  %716 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %717 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %call1304 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1303, i8* %715, i8* %716, i8* %717) #7
  %arraydecay1305 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %call1306 = call i64 @strlen(i8* %arraydecay1305) #10
  %cmp1307 = icmp ult i64 %call1306, 120
  br i1 %cmp1307, label %cond.true.1309, label %cond.false.1310

cond.true.1309:                                   ; preds = %if.then.1302
  br label %cond.end.1311

cond.false.1310:                                  ; preds = %if.then.1302
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 872, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.add_entry, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1311

cond.end.1311:                                    ; preds = %718, %cond.true.1309
  %719 = load %struct.string_list_s*, %struct.string_list_s** %list, align 8, !tbaa !5
  %arraydecay1312 = getelementptr inbounds [120 x i8], [120 x i8]* %str, i32 0, i32 0
  %720 = load i32, i32* %file_index.addr, align 4, !tbaa !1
  %call1313 = call %struct.string_item_s* @add_item(%struct.string_list_s* %719, i8* %arraydecay1312, i32 %720) #8
  br label %if.end.1316

if.else.1314:                                     ; preds = %sw.epilog
  %721 = load %struct.string_list_s*, %struct.string_list_s** %list, align 8, !tbaa !5
  %722 = load i8*, i8** %item.addr, align 8, !tbaa !5
  %723 = load i32, i32* %file_index.addr, align 4, !tbaa !1
  %call1315 = call %struct.string_item_s* @add_item(%struct.string_list_s* %721, i8* %722, i32 %723) #8
  br label %if.end.1316

if.end.1316:                                      ; preds = %if.else.1314, %cond.end.1311
  %724 = load %struct.string_list_s*, %struct.string_list_s** %list, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %724, i32 0, i32 2
  %725 = load i32, i32* %mode, align 4, !tbaa !34
  store i32 %725, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1316, %if.then.673
  %726 = bitcast %struct.string_list_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %726) #1
  %727 = bitcast i8** %pat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %727) #1
  %728 = bitcast [80 x i8]* %templat to i8*
  call void @llvm.lifetime.end(i64 80, i8* %728) #1
  %729 = bitcast [120 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 120, i8* %729) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %730 = load i32, i32* %retval
  ret i32 %730
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define %struct.string_item_s* @add_item(%struct.string_list_s* %list, i8* %str, i32 %file_index) #0 {
entry:
  %list.addr = alloca %struct.string_list_s*, align 8
  %str.addr = alloca i8*, align 8
  %file_index.addr = alloca i32, align 4
  %rstr = alloca i8*, align 8
  %count = alloca i32, align 4
  %item = alloca %struct.string_item_s*, align 8
  store %struct.string_list_s* %list, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  store i32 %file_index, i32* %file_index.addr, align 4, !tbaa !1
  %0 = bitcast i8** %rstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %1) #10
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #7
  store i8* %call1, i8** %rstr, align 8, !tbaa !5
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count2 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %3, i32 0, i32 3
  %4 = load i32, i32* %count2, align 4, !tbaa !20
  store i32 %4, i32* %count, align 4, !tbaa !1
  %5 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %count, align 4, !tbaa !1
  %7 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %7, i32 0, i32 1
  %8 = load i32, i32* %max_count, align 4, !tbaa !21
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %9 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count3 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %9, i32 0, i32 1
  %10 = load i32, i32* %max_count3, align 4, !tbaa !21
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %max_count3, align 4, !tbaa !21
  %11 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count4 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %11, i32 0, i32 1
  %12 = load i32, i32* %max_count4, align 4, !tbaa !21
  %cmp5 = icmp slt i32 %12, 20
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count7 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %13, i32 0, i32 1
  store i32 20, i32* %max_count7, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %14 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %14, i32 0, i32 4
  %15 = load %struct.string_item_s*, %struct.string_item_s** %items, align 8, !tbaa !22
  %16 = bitcast %struct.string_item_s* %15 to i8*
  %17 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count8 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %17, i32 0, i32 1
  %18 = load i32, i32* %max_count8, align 4, !tbaa !21
  %shr = ashr i32 %18, 1
  %conv = sext i32 %shr to i64
  %mul = mul i64 %conv, 16
  %19 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %max_count9 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %19, i32 0, i32 1
  %20 = load i32, i32* %max_count9, align 4, !tbaa !21
  %conv10 = sext i32 %20 to i64
  %mul11 = mul i64 %conv10, 16
  %call12 = call i8* @mrealloc(i8* %16, i64 %mul, i64 %mul11) #8
  %21 = bitcast i8* %call12 to %struct.string_item_s*
  %22 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items13 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %22, i32 0, i32 4
  store %struct.string_item_s* %21, %struct.string_item_s** %items13, align 8, !tbaa !22
  %23 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items14 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %23, i32 0, i32 4
  %24 = load %struct.string_item_s*, %struct.string_item_s** %items14, align 8, !tbaa !22
  %cmp15 = icmp ne %struct.string_item_s* %24, null
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 898, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.add_item, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %25, %cond.true
  br label %if.end.17

if.end.17:                                        ; preds = %cond.end, %entry
  %26 = load i32, i32* %count, align 4, !tbaa !1
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %items18 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %27, i32 0, i32 4
  %28 = load %struct.string_item_s*, %struct.string_item_s** %items18, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %28, i64 %idxprom
  store %struct.string_item_s* %arrayidx, %struct.string_item_s** %item, align 8, !tbaa !5
  %29 = load i8*, i8** %rstr, align 8, !tbaa !5
  %30 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %str19 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %30, i32 0, i32 0
  store i8* %29, i8** %str19, align 8, !tbaa !25
  %31 = load i32, i32* %count, align 4, !tbaa !1
  %32 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %32, i32 0, i32 2
  store i32 %31, i32* %index, align 4, !tbaa !23
  %33 = load i32, i32* %file_index.addr, align 4, !tbaa !1
  %34 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %file_index20 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %34, i32 0, i32 1
  store i32 %33, i32* %file_index20, align 4, !tbaa !31
  %35 = load i8*, i8** %rstr, align 8, !tbaa !5
  %36 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call21 = call i8* @strcpy(i8* %35, i8* %36) #7
  %37 = load %struct.string_list_s*, %struct.string_list_s** %list.addr, align 8, !tbaa !5
  %count22 = getelementptr inbounds %struct.string_list_s, %struct.string_list_s* %37, i32 0, i32 3
  %38 = load i32, i32* %count22, align 4, !tbaa !20
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %count22, align 4, !tbaa !20
  %39 = load %struct.string_item_s*, %struct.string_item_s** %item, align 8, !tbaa !5
  %40 = bitcast %struct.string_item_s** %item to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %rstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret %struct.string_item_s* %39
}

; Function Attrs: nounwind uwtable
define internal i8* @mrealloc(i8* %old_ptr, i64 %old_size, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %old_ptr.addr = alloca i8*, align 8
  %old_size.addr = alloca i64, align 8
  %new_size.addr = alloca i64, align 8
  %new_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %old_ptr, i8** %old_ptr.addr, align 8, !tbaa !5
  store i64 %old_size, i64* %old_size.addr, align 8, !tbaa !37
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !37
  %0 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %new_size.addr, align 8, !tbaa !37
  %call = call noalias i8* @malloc(i64 %1) #7
  store i8* %call, i8** %new_ptr, align 8, !tbaa !5
  %2 = load i8*, i8** %new_ptr, align 8, !tbaa !5
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %old_ptr.addr, align 8, !tbaa !5
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %4 = load i8*, i8** %new_ptr, align 8, !tbaa !5
  %5 = load i8*, i8** %old_ptr.addr, align 8, !tbaa !5
  %6 = load i64, i64* %old_size.addr, align 8, !tbaa !37
  %7 = load i64, i64* %new_size.addr, align 8, !tbaa !37
  %cmp2 = icmp ult i64 %6, %7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %8 = load i64, i64* %old_size.addr, align 8, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %9 = load i64, i64* %new_size.addr, align 8, !tbaa !37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ]
  %call3 = call i8* @memcpy(i8* %4, i8* %5, i64 %cond) #7
  br label %if.end.4

if.end.4:                                         ; preds = %cond.end, %if.end
  %10 = load i8*, i8** %new_ptr, align 8, !tbaa !5
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %11 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmp_str(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %psi1 = alloca %struct.string_item_s*, align 8
  %psi2 = alloca %struct.string_item_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8, !tbaa !5
  store i8* %p2, i8** %p2.addr, align 8, !tbaa !5
  %0 = bitcast %struct.string_item_s** %psi1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p1.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.string_item_s*
  store %struct.string_item_s* %2, %struct.string_item_s** %psi1, align 8, !tbaa !5
  %3 = bitcast %struct.string_item_s** %psi2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %p2.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.string_item_s*
  store %struct.string_item_s* %5, %struct.string_item_s** %psi2, align 8, !tbaa !5
  %6 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.string_item_s*, %struct.string_item_s** %psi1, align 8, !tbaa !5
  %str = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %str, align 8, !tbaa !25
  %10 = load %struct.string_item_s*, %struct.string_item_s** %psi2, align 8, !tbaa !5
  %str1 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %str1, align 8, !tbaa !25
  %call = call i32 @strcmp(i8* %9, i8* %11) #7
  store i32 %call, i32* %tmp, !tbaa !1
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %tmp, !tbaa !1
  %15 = bitcast %struct.string_item_s** %psi2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.string_item_s** %psi1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_index(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %psi1 = alloca %struct.string_item_s*, align 8
  %psi2 = alloca %struct.string_item_s*, align 8
  %cmp = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8, !tbaa !5
  store i8* %p2, i8** %p2.addr, align 8, !tbaa !5
  %0 = bitcast %struct.string_item_s** %psi1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p1.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.string_item_s*
  store %struct.string_item_s* %2, %struct.string_item_s** %psi1, align 8, !tbaa !5
  %3 = bitcast %struct.string_item_s** %psi2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %p2.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.string_item_s*
  store %struct.string_item_s* %5, %struct.string_item_s** %psi2, align 8, !tbaa !5
  %6 = bitcast i32* %cmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.string_item_s*, %struct.string_item_s** %psi1, align 8, !tbaa !5
  %index = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %7, i32 0, i32 2
  %8 = load i32, i32* %index, align 4, !tbaa !23
  %9 = load %struct.string_item_s*, %struct.string_item_s** %psi2, align 8, !tbaa !5
  %index1 = getelementptr inbounds %struct.string_item_s, %struct.string_item_s* %9, i32 0, i32 2
  %10 = load i32, i32* %index1, align 4, !tbaa !23
  %sub = sub nsw i32 %8, %10
  store i32 %sub, i32* %cmp, align 4, !tbaa !1
  %11 = load i32, i32* %cmp, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %cmp, align 4, !tbaa !1
  %cmp3 = icmp sgt i32 %12, 0
  %cond = select i1 %cmp3, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %13 = bitcast i32* %cmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.string_item_s** %psi2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.string_item_s** %psi1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %cond4
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #6

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i64 @ftell(%struct._IO_FILE*) #3

declare void @rewind(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin noreturn nounwind }
attributes #10 = { nobuiltin nounwind readonly }
attributes #11 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{i64 0, i64 4, !1, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 4, !1, i64 36, i64 4, !7, i64 40, i64 4, !1, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 4, !1, i64 68, i64 4, !7, i64 72, i64 4, !1, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 4, !1, i64 100, i64 4, !7, i64 104, i64 4, !1, i64 112, i64 8, !5, i64 120, i64 8, !5, i64 128, i64 4, !1, i64 132, i64 4, !7, i64 136, i64 4, !1, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 4, !1, i64 164, i64 4, !7, i64 168, i64 4, !1, i64 176, i64 8, !5, i64 184, i64 8, !5, i64 192, i64 4, !1, i64 196, i64 4, !7, i64 200, i64 4, !1, i64 208, i64 8, !5, i64 216, i64 8, !5, i64 224, i64 4, !1, i64 228, i64 4, !7, i64 232, i64 4, !1, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 4, !1, i64 260, i64 4, !7, i64 264, i64 4, !1, i64 272, i64 8, !5, i64 280, i64 8, !5, i64 288, i64 4, !1, i64 292, i64 4, !7, i64 296, i64 4, !1, i64 304, i64 8, !5, i64 312, i64 8, !5, i64 320, i64 4, !1, i64 324, i64 4, !7, i64 328, i64 4, !1, i64 336, i64 8, !5, i64 344, i64 8, !5, i64 352, i64 4, !1, i64 356, i64 4, !7, i64 360, i64 4, !1, i64 368, i64 8, !5, i64 376, i64 8, !5, i64 384, i64 4, !1, i64 388, i64 4, !7, i64 392, i64 4, !1, i64 400, i64 8, !5, i64 120, i64 288, !7, i64 408, i64 4, !1, i64 412, i64 4, !1, i64 416, i64 61, !7, i64 480, i64 4, !1, i64 484, i64 4, !1, i64 488, i64 61, !7, i64 552, i64 4, !1, i64 556, i64 4, !1, i64 560, i64 61, !7}
!9 = !{!10, !2, i64 408}
!10 = !{!"config_s", !2, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 56, !11, i64 88, !3, i64 120, !12, i64 408, !12, i64 480, !12, i64 552}
!11 = !{!"string_list_s", !6, i64 0, !2, i64 8, !3, i64 12, !2, i64 16, !6, i64 24}
!12 = !{!"string_pattern_s", !2, i64 0, !2, i64 4, !3, i64 8}
!13 = !{!10, !2, i64 412}
!14 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 61, !7}
!15 = !{!10, !6, i64 16}
!16 = !{!10, !6, i64 8}
!17 = !{!12, !2, i64 0}
!18 = !{!12, !2, i64 4}
!19 = !{!10, !2, i64 0}
!20 = !{!11, !2, i64 16}
!21 = !{!11, !2, i64 8}
!22 = !{!11, !6, i64 24}
!23 = !{!24, !2, i64 12}
!24 = !{!"string_item_s", !6, i64 0, !2, i64 8, !2, i64 12}
!25 = !{!24, !6, i64 0}
!26 = !{!10, !6, i64 80}
!27 = !{!10, !2, i64 104}
!28 = !{!10, !6, i64 112}
!29 = !{!10, !2, i64 40}
!30 = !{!10, !6, i64 48}
!31 = !{!24, !2, i64 8}
!32 = !{!11, !6, i64 0}
!33 = !{i64 0, i64 8, !5, i64 8, i64 4, !1, i64 12, i64 4, !1}
!34 = !{!11, !3, i64 12}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !3, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !3, i64 0}
