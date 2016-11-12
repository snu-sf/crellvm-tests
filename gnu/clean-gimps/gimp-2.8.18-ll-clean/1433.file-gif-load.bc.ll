; ModuleID = './plug-ins/common/file-gif-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { i32, i32, [3 x [256 x i8]], i32, i32, i32, i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct.anon.0 = type { i32, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.thumb_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"thumb-size\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Preferred thumbnail size\00", align 1
@query.thumb_return_vals = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"image-width\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Width of full-sized image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"image-height\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Height of full-sized image\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"file-gif-load\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Loads files of Compuserve GIF file format\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"FIXME: write help for gif_load\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Spencer Kimball, Peter Mattis, Adam Moss, David Koblas\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"1995-2006\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"GIF image\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"0,string,GIF8\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"file-gif-load-thumb\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Loads only the first frame of a GIF image, to be used as a thumbnail\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@run.values = internal global [4 x %struct._GimpParam] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@promote_to_rgb = internal global i32 0, align 4
@gimp_cmap = internal global [768 x i8] zeroinitializer, align 16
@highest_used_index = internal global i8 0, align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Error reading magic number\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"This is not a GIF file\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"87a\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"89a\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Bad version number, not '87a' or '89a'\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Failed to read screen descriptor\00", align 1
@GifScreen = internal global %struct.anon zeroinitializer, align 4
@.str.41 = private unnamed_addr constant [30 x i8] c"Error reading global colormap\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"Non-square pixels.  Image might look squashed.\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"EOF / read error on image data\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"EOF / read error on extension function code\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"GIF: bogus character 0x%02x, ignoring.\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Couldn't read left/top/width/height\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Error reading local colormap\00", align 1
@comment_parasite = internal global %struct._GimpParasite* null, align 8
@DoExtension.buf = internal global [256 x i8] zeroinitializer, align 16
@.str.48 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@Gif89 = internal global %struct.anon.0 { i32 -1, i32 -1, i32 -1, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [17 x i8] c"UNKNOWN (0x%02x)\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Error in getting DataBlock size\00", align 1
@ZeroDataBlock = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [27 x i8] c"Error in reading DataBlock\00", align 1
@ReadImage.frame_number = internal global i32 1, align 4
@ReadImage.previous_disposal = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [23 x i8] c"Bogus frame dimensions\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Error while reading\00", align 1
@used_cmap = internal global [3 x [256 x i8]] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Background (%d%s)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Opening '%s' (frame %d)\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"Frame %d\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Frame %d (%d%s)\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c" (combine)\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c" (replace)\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c" (combine) (!)\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c" (unknown disposal)\00", align 1
@.str.64 = private unnamed_addr constant [104 x i8] c"GIF: Undocumented GIF composite type %d is not handled.  Animation might not play or re-save perfectly.\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"Disposal word got corrupted.  Bug.\00", align 1
@.str.66 = private unnamed_addr constant [51 x i8] c"'%s' has a larger image size than GIMP can handle.\00", align 1
@.str.67 = private unnamed_addr constant [87 x i8] c"Ouch!  Can't handle non-alpha RGB frames.\0APlease file a bug report in GIMP's bugzilla.\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"GIF: too much input data, ignoring extra...\0A\00", align 1
@LZWReadByte.fresh = internal global i32 0, align 4
@LZWReadByte.code_size = internal global i32 0, align 4
@LZWReadByte.set_code_size = internal global i32 0, align 4
@LZWReadByte.max_code = internal global i32 0, align 4
@LZWReadByte.max_code_size = internal global i32 0, align 4
@LZWReadByte.firstcode = internal global i32 0, align 4
@LZWReadByte.oldcode = internal global i32 0, align 4
@LZWReadByte.clear_code = internal global i32 0, align 4
@LZWReadByte.end_code = internal global i32 0, align 4
@LZWReadByte.table = internal global [2 x [4096 x i32]] zeroinitializer, align 16
@LZWReadByte.stack = internal global [8192 x i32] zeroinitializer, align 16
@LZWReadByte.sp = internal global i32* null, align 8
@.str.69 = private unnamed_addr constant [51 x i8] c"Value out of range for code size (corrupted file?)\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"GIF: missing EOD in data stream (common occurence)\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"Circular table entry.  Corrupt file.\00", align 1
@GetCode.buf = internal global [280 x i8] zeroinitializer, align 16
@GetCode.curbit = internal global i32 0, align 4
@GetCode.lastbit = internal global i32 0, align 4
@GetCode.done = internal global i32 0, align 4
@GetCode.last_byte = internal global i32 0, align 4
@.str.72 = private unnamed_addr constant [27 x i8] c"Ran off the end of my bits\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2, i32 3, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.thumb_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.thumb_return_vals, i32 0, i32 0))
  %call2 = call i32 @gimp_register_thumbnail_loader(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %image_ID = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call5 = call i32 @load_image(i8* %4, i32 0, %struct._GError** %error)
  store i32 %call5, i32* %image_ID, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.end
  %5 = load i8*, i8** %name.addr, align 8
  %call6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_string11 = bitcast %union._GimpParamData* %data10 to i8**
  %7 = load i8*, i8** %d_string11, align 8
  %call12 = call i32 @load_image(i8* %7, i32 1, %struct._GError** %error)
  store i32 %call12, i32* %image_ID, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %8 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %8, 3
  br i1 %cmp15, label %if.then.16, label %if.end.34

if.then.16:                                       ; preds = %if.end.14
  %9 = load i32, i32* %image_ID, align 4
  %cmp17 = icmp ne i32 %9, -1
  br i1 %cmp17, label %if.then.18, label %if.else.29

if.then.18:                                       ; preds = %if.then.16
  %10 = load i32, i32* @promote_to_rgb, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  %11 = load i32, i32* %image_ID, align 4
  %12 = load i8, i8* @highest_used_index, align 1
  %conv = zext i8 %12 to i32
  %add = add nsw i32 %conv, 1
  %call20 = call i32 @gimp_image_set_colormap(i32 %11, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @gimp_cmap, i32 0, i32 0), i32 %add)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.18
  %13 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %13, align 4
  store i32 13, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %14 = load i32, i32* %image_ID, align 4
  store i32 %14, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %15 = load i8*, i8** %name.addr, align 8
  %call22 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.21
  %16 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 4, i32* %16, align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %17 = load i32, i32* %image_ID, align 4
  %call26 = call i32 @gimp_image_width(i32 %17)
  store i32 %call26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 0), align 4
  %18 = load i32, i32* %image_ID, align 4
  %call27 = call i32 @gimp_image_height(i32 %18)
  store i32 %call27, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 1) to i32*), align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.21
  br label %if.end.33

if.else.29:                                       ; preds = %if.then.16
  store i32 0, i32* %status, align 4
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool30 = icmp ne %struct._GError* %19, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else.29
  %20 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %20, align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %21, i32 0, i32 2
  %22 = load i8*, i8** %message, align 8
  store i8* %22, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.14
  %23 = load i32, i32* %status, align 4
  store i32 %23, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

declare i32 @gimp_register_thumbnail_loader(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, i32 %thumbnail, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %thumbnail.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %fd = alloca %struct._IO_FILE*, align 8
  %buf = alloca [16 x i8], align 16
  %c = alloca i8, align 1
  %localColorMap = alloca [3 x [256 x i8]], align 16
  %grayScale = alloca i32, align 4
  %useGlobalColormap = alloca i32, align 4
  %bitPixel = alloca i32, align 4
  %imageCount = alloca i32, align 4
  %version = alloca [4 x i8], align 1
  %image_ID = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %thumbnail, i32* %thumbnail.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %imageCount, align 4
  store i32 -1, i32* %image_ID, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call11 = call i64 @fread(i8* %arraydecay, i64 6, i64 1, %struct._IO_FILE* %7)
  %cmp = icmp ne i64 %call11, 0
  br i1 %cmp, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @strncmp(i8* %arraydecay14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 3) #8
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @g_file_error_quark()
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call18, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* %call19)
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %version, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay22, i64 3
  %call23 = call i8* @strncpy(i8* %arraydecay21, i8* %add.ptr, i64 3) #5
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %version, i32 0, i64 3
  store i8 0, i8* %arrayidx, align 1
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %version, i32 0, i32 0
  %call25 = call i32 @strcmp(i8* %arraydecay24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)) #8
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.20
  %arraydecay27 = getelementptr inbounds [4 x i8], [4 x i8]* %version, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.end.20
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call33 = call i64 @fread(i8* %arraydecay32, i64 7, i64 1, %struct._IO_FILE* %9)
  %cmp34 = icmp ne i64 %call33, 0
  br i1 %cmp34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.31
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.31
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  %10 = load i8, i8* %arrayidx37, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %arrayidx38 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  %11 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %11 to i32
  %or = or i32 %shl, %conv39
  store i32 %or, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 0), align 4
  %arrayidx40 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  %12 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %12 to i32
  %shl42 = shl i32 %conv41, 8
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  %13 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %13 to i32
  %or45 = or i32 %shl42, %conv44
  store i32 %or45, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 1), align 4
  %arrayidx46 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %14 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %14 to i32
  %and = and i32 %conv47, 7
  %shl48 = shl i32 2, %and
  store i32 %shl48, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 3), align 4
  %arrayidx49 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %15 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %15 to i32
  %and51 = and i32 %conv50, 112
  %shr = ashr i32 %and51, 3
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 4), align 4
  %arrayidx52 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 5
  %16 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %16 to i32
  store i32 %conv53, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 5), align 4
  %arrayidx54 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 6
  %17 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %17 to i32
  store i32 %conv55, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 6), align 4
  %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %18 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %18 to i32
  %and58 = and i32 %conv57, 128
  %cmp59 = icmp eq i32 %and58, 128
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.36
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 3), align 4
  %call62 = call i32 @ReadColorMap(%struct._IO_FILE* %19, i32 %20, [256 x i8]* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 2, i32 0), i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 7))
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.then.61
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.36
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 6), align 4
  %cmp67 = icmp ne i32 %21, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.74

land.lhs.true.69:                                 ; preds = %if.end.66
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 6), align 4
  %cmp70 = icmp ne i32 %22, 49
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.69
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.69, %if.end.66
  store i8 0, i8* @highest_used_index, align 1
  br label %while.body

while.body:                                       ; preds = %if.end.74, %if.end.93, %if.then.100, %if.end.201
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call75 = call i64 @fread(i8* %c, i64 1, i64 1, %struct._IO_FILE* %23)
  %cmp76 = icmp ne i64 %call75, 0
  br i1 %cmp76, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %while.body
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  %24 = load i32, i32* %image_ID, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.79:                                        ; preds = %while.body
  %25 = load i8, i8* %c, align 1
  %conv80 = zext i8 %25 to i32
  %cmp81 = icmp eq i32 %conv80, 59
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.79
  %26 = load i32, i32* %image_ID, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.79
  %27 = load i8, i8* %c, align 1
  %conv85 = zext i8 %27 to i32
  %cmp86 = icmp eq i32 %conv85, 33
  br i1 %cmp86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %if.end.84
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call89 = call i64 @fread(i8* %c, i64 1, i64 1, %struct._IO_FILE* %28)
  %cmp90 = icmp ne i64 %call89, 0
  br i1 %cmp90, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.88
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0))
  %29 = load i32, i32* %image_ID, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.88
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %31 = load i8, i8* %c, align 1
  %conv94 = zext i8 %31 to i32
  %call95 = call i32 @DoExtension(%struct._IO_FILE* %30, i32 %conv94)
  br label %while.body

if.end.96:                                        ; preds = %if.end.84
  %32 = load i8, i8* %c, align 1
  %conv97 = zext i8 %32 to i32
  %cmp98 = icmp ne i32 %conv97, 44
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.96
  %33 = load i8, i8* %c, align 1
  %conv101 = zext i8 %33 to i32
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0), i32 %conv101)
  br label %while.body

if.end.102:                                       ; preds = %if.end.96
  %34 = load i32, i32* %imageCount, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %imageCount, align 4
  %arraydecay103 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call104 = call i64 @fread(i8* %arraydecay103, i64 9, i64 1, %struct._IO_FILE* %35)
  %cmp105 = icmp ne i64 %call104, 0
  br i1 %cmp105, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.end.102
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  %36 = load i32, i32* %image_ID, align 4
  store i32 %36, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.102
  %arrayidx109 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 8
  %37 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %37 to i32
  %and111 = and i32 %conv110, 128
  %cmp112 = icmp eq i32 %and111, 128
  %lnot = xor i1 %cmp112, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %useGlobalColormap, align 4
  %arrayidx114 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 8
  %38 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %38 to i32
  %and116 = and i32 %conv115, 7
  %add117 = add nsw i32 %and116, 1
  %shl118 = shl i32 1, %add117
  store i32 %shl118, i32* %bitPixel, align 4
  %39 = load i32, i32* %useGlobalColormap, align 4
  %tobool119 = icmp ne i32 %39, 0
  br i1 %tobool119, label %if.else, label %if.then.120

if.then.120:                                      ; preds = %if.end.108
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %41 = load i32, i32* %bitPixel, align 4
  %arraydecay121 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %localColorMap, i32 0, i32 0
  %call122 = call i32 @ReadColorMap(%struct._IO_FILE* %40, i32 %41, [256 x i8]* %arraydecay121, i32* %grayScale)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.end.125, label %if.then.124

if.then.124:                                      ; preds = %if.then.120
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0))
  %42 = load i32, i32* %image_ID, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.125:                                       ; preds = %if.then.120
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %44 = load i8*, i8** %filename.addr, align 8
  %arrayidx126 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 5
  %45 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %45 to i32
  %shl128 = shl i32 %conv127, 8
  %arrayidx129 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %46 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %46 to i32
  %or131 = or i32 %shl128, %conv130
  %arrayidx132 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 7
  %47 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %47 to i32
  %shl134 = shl i32 %conv133, 8
  %arrayidx135 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 6
  %48 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %48 to i32
  %or137 = or i32 %shl134, %conv136
  %arraydecay138 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %localColorMap, i32 0, i32 0
  %49 = load i32, i32* %bitPixel, align 4
  %50 = load i32, i32* %grayScale, align 4
  %arrayidx139 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 8
  %51 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %51 to i32
  %and141 = and i32 %conv140, 64
  %cmp142 = icmp eq i32 %and141, 64
  %conv143 = zext i1 %cmp142 to i32
  %52 = load i32, i32* %imageCount, align 4
  %arrayidx144 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  %53 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %53 to i32
  %shl146 = shl i32 %conv145, 8
  %arrayidx147 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  %54 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %54 to i32
  %or149 = or i32 %shl146, %conv148
  %arrayidx150 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  %55 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %55 to i32
  %shl152 = shl i32 %conv151, 8
  %arrayidx153 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  %56 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %56 to i32
  %or155 = or i32 %shl152, %conv154
  %57 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 0), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 1), align 4
  %call156 = call i32 @ReadImage(%struct._IO_FILE* %43, i8* %44, i32 %or131, i32 %or137, [256 x i8]* %arraydecay138, i32 %49, i32 %50, i32 %conv143, i32 %52, i32 %or149, i32 %or155, i32 %57, i32 %58, i32* %image_ID)
  store i32 %call156, i32* %status, align 4
  br label %if.end.187

if.else:                                          ; preds = %if.end.108
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %60 = load i8*, i8** %filename.addr, align 8
  %arrayidx157 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 5
  %61 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %61 to i32
  %shl159 = shl i32 %conv158, 8
  %arrayidx160 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %62 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %62 to i32
  %or162 = or i32 %shl159, %conv161
  %arrayidx163 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 7
  %63 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %63 to i32
  %shl165 = shl i32 %conv164, 8
  %arrayidx166 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 6
  %64 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %64 to i32
  %or168 = or i32 %shl165, %conv167
  %65 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 3), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 7), align 4
  %arrayidx169 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 8
  %67 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %67 to i32
  %and171 = and i32 %conv170, 64
  %cmp172 = icmp eq i32 %and171, 64
  %conv173 = zext i1 %cmp172 to i32
  %68 = load i32, i32* %imageCount, align 4
  %arrayidx174 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  %69 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %69 to i32
  %shl176 = shl i32 %conv175, 8
  %arrayidx177 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  %70 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %70 to i32
  %or179 = or i32 %shl176, %conv178
  %arrayidx180 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  %71 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %71 to i32
  %shl182 = shl i32 %conv181, 8
  %arrayidx183 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  %72 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %72 to i32
  %or185 = or i32 %shl182, %conv184
  %73 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 0), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 1), align 4
  %call186 = call i32 @ReadImage(%struct._IO_FILE* %59, i8* %60, i32 %or162, i32 %or168, [256 x i8]* getelementptr inbounds (%struct.anon, %struct.anon* @GifScreen, i32 0, i32 2, i32 0), i32 %65, i32 %66, i32 %conv173, i32 %68, i32 %or179, i32 %or185, i32 %73, i32 %74, i32* %image_ID)
  store i32 %call186, i32* %status, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else, %if.end.125
  %75 = load i32, i32* %status, align 4
  %tobool188 = icmp ne i32 %75, 0
  br i1 %tobool188, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %if.end.187
  br label %while.end

if.end.190:                                       ; preds = %if.end.187
  %76 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  %cmp191 = icmp ne %struct._GimpParasite* %76, null
  br i1 %cmp191, label %if.then.193, label %if.end.198

if.then.193:                                      ; preds = %if.end.190
  %77 = load i32, i32* %thumbnail.addr, align 4
  %tobool194 = icmp ne i32 %77, 0
  br i1 %tobool194, label %if.end.197, label %if.then.195

if.then.195:                                      ; preds = %if.then.193
  %78 = load i32, i32* %image_ID, align 4
  %79 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  %call196 = call i32 @gimp_image_attach_parasite(i32 %78, %struct._GimpParasite* %79)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.then.193
  %80 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %80)
  store %struct._GimpParasite* null, %struct._GimpParasite** @comment_parasite, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.190
  %81 = load i32, i32* %thumbnail.addr, align 4
  %tobool199 = icmp ne i32 %81, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.198
  br label %while.end

if.end.201:                                       ; preds = %if.end.198
  br label %while.body

while.end:                                        ; preds = %if.then.200, %if.then.189
  %82 = load i32, i32* %image_ID, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.124, %if.then.107, %if.then.92, %if.then.83, %if.then.78, %if.then.64, %if.then.35, %if.then.30, %if.then.17, %if.then.12, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @ReadColorMap(%struct._IO_FILE* %fd, i32 %number, [256 x i8]* %buffer, i32* %format) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %number.addr = alloca i32, align 4
  %buffer.addr = alloca [256 x i8]*, align 8
  %format.addr = alloca i32*, align 8
  %rgb = alloca [3 x i8], align 1
  %flag = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store [256 x i8]* %buffer, [256 x i8]** %buffer.addr, align 8
  store i32* %format, i32** %format.addr, align 8
  store i32 1, i32* %flag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %number.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 3, i64 1, %struct._IO_FILE* %2)
  %cmp1 = icmp ne i64 %call, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load [256 x i8]*, [256 x i8]** %buffer.addr, align 8
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx2, i32 0, i64 %idxprom
  store i8 %3, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load [256 x i8]*, [256 x i8]** %buffer.addr, align 8
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 1
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx6, i32 0, i64 %idxprom5
  store i8 %6, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 2
  %9 = load i8, i8* %arrayidx8, align 1
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load [256 x i8]*, [256 x i8]** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 2
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx10, i32 0, i64 %idxprom9
  store i8 %9, i8* %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 0
  %12 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %12 to i32
  %arrayidx13 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 1
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv, %conv14
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %arrayidx17 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 1
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %arrayidx19 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 2
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv18, %conv20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %16 = phi i1 [ false, %if.end ], [ %cmp21, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %17 = load i32, i32* %flag, align 4
  %and = and i32 %17, %land.ext
  store i32 %and, i32* %flag, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %19, 0
  %cond = select i1 %tobool, i32 1, i32 2
  %20 = load i32*, i32** %format.addr, align 8
  store i32 %cond, i32* %20, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @DoExtension(%struct._IO_FILE* %fd, i32 %label) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %label.addr = alloca i32, align 4
  %comment = alloca i8*, align 8
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %label, i32* %label.addr, align 4
  %0 = load i32, i32* %label.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 255, label %sw.bb.1
    i32 254, label %sw.bb.2
    i32 249, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.then, %sw.bb.2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i32 @GetDataBlock(%struct._IO_FILE* %1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0))
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0), i8** %comment, align 8
  %2 = load i8*, i8** %comment, align 8
  %call3 = call i32 @g_utf8_validate(i8* %2, i64 -1, i8** null)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  %tobool4 = icmp ne %struct._GimpParasite* %3, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %4)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %5 = load i8*, i8** %comment, align 8
  %call7 = call i64 @strlen(i8* %5) #8
  %add = add i64 %call7, 1
  %conv = trunc i64 %add to i32
  %6 = load i8*, i8** %comment, align 8
  %call8 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 %conv, i8* %6)
  store %struct._GimpParasite* %call8, %struct._GimpParasite** @comment_parasite, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call10 = call i32 @GetDataBlock(%struct._IO_FILE* %7, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0))
  %8 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 0), align 1
  %conv11 = zext i8 %8 to i32
  %shr = ashr i32 %conv11, 2
  %and = and i32 %shr, 7
  store i32 %and, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 3), align 4
  %9 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 0), align 1
  %conv12 = zext i8 %9 to i32
  %shr13 = ashr i32 %conv12, 1
  %and14 = and i32 %shr13, 1
  store i32 %and14, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 2), align 4
  %10 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 2), align 1
  %conv15 = zext i8 %10 to i32
  %shl = shl i32 %conv15, 8
  %11 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 1), align 1
  %conv16 = zext i8 %11 to i32
  %or = or i32 %shl, %conv16
  store i32 %or, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 1), align 4
  %12 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 0), align 1
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 1
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %sw.bb.9
  %13 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i64 3), align 1
  %conv22 = zext i8 %13 to i32
  store i32 %conv22, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  br label %if.end.23

if.else:                                          ; preds = %sw.bb.9
  store i32 -1, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %if.end.23
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call25 = call i32 @GetDataBlock(%struct._IO_FILE* %14, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0))
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %while.body.28, label %while.end.29

while.body.28:                                    ; preds = %while.cond.24
  br label %while.cond.24

while.end.29:                                     ; preds = %while.cond.24
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %15 = load i32, i32* %label.addr, align 4
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 %15) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.35, %sw.epilog
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call32 = call i32 @GetDataBlock(%struct._IO_FILE* %16, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @DoExtension.buf, i32 0, i32 0))
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %while.body.35, label %while.end.36

while.body.35:                                    ; preds = %while.cond.31
  br label %while.cond.31

while.end.36:                                     ; preds = %while.cond.31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.36, %while.end.29, %while.end
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ReadImage(%struct._IO_FILE* %fd, i8* %filename, i32 %len, i32 %height, [256 x i8]* %cmap, i32 %ncols, i32 %format, i32 %interlace, i32 %number, i32 %leftpos, i32 %toppos, i32 %screenwidth, i32 %screenheight, i32* %image_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %cmap.addr = alloca [256 x i8]*, align 8
  %ncols.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %interlace.addr = alloca i32, align 4
  %number.addr = alloca i32, align 4
  %leftpos.addr = alloca i32, align 4
  %toppos.addr = alloca i32, align 4
  %screenwidth.addr = alloca i32, align 4
  %screenheight.addr = alloca i32, align 4
  %image_ID.addr = alloca i32*, align 8
  %layer_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %dest = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %c = alloca i8, align 1
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %pass = alloca i32, align 4
  %cur_progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %framename = alloca i8*, align 8
  %framename_ptr = alloca i8*, align 8
  %alpha_frame = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store [256 x i8]* %cmap, [256 x i8]** %cmap.addr, align 8
  store i32 %ncols, i32* %ncols.addr, align 4
  store i32 %format, i32* %format.addr, align 4
  store i32 %interlace, i32* %interlace.addr, align 4
  store i32 %number, i32* %number.addr, align 4
  store i32 %leftpos, i32* %leftpos.addr, align 4
  store i32 %toppos, i32* %toppos.addr, align 4
  store i32 %screenwidth, i32* %screenwidth.addr, align 4
  store i32 %screenheight, i32* %screenheight.addr, align 4
  store i32* %image_ID, i32** %image_ID.addr, align 8
  store i32 0, i32* %xpos, align 4
  store i32 0, i32* %ypos, align 4
  store i32 0, i32* %pass, align 4
  store i32 0, i32* %alpha_frame, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  %2 = load i32*, i32** %image_ID.addr, align 8
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i64 @fread(i8* %c, i64 1, i64 1, %struct._IO_FILE* %3)
  %cmp2 = icmp ne i64 %call, 0
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  %4 = load i32*, i32** %image_ID.addr, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %6 = load i8, i8* %c, align 1
  %conv = zext i8 %6 to i32
  %call5 = call i32 @LZWReadByte(%struct._IO_FILE* %5, i32 1, i32 %conv)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0))
  %7 = load i32*, i32** %image_ID.addr, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %8 = load i32, i32* @ReadImage.frame_number, align 4
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %if.then.12, label %if.else.63

if.then.12:                                       ; preds = %if.end.9
  %9 = load i32, i32* %screenwidth.addr, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %10 = load i32, i32* %len.addr, align 4
  store i32 %10, i32* %screenwidth.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %11 = load i32, i32* %screenheight.addr, align 4
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %12 = load i32, i32* %height.addr, align 4
  store i32 %12, i32* %screenheight.addr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %13 = load i32, i32* %screenwidth.addr, align 4
  %14 = load i32, i32* %screenheight.addr, align 4
  %call21 = call i32 @gimp_image_new(i32 %13, i32 %14, i32 2)
  %15 = load i32*, i32** %image_ID.addr, align 8
  store i32 %call21, i32* %15, align 4
  %16 = load i32*, i32** %image_ID.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %filename.addr, align 8
  %call22 = call i32 @gimp_image_set_filename(i32 %17, i8* %18)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %ncols.addr, align 4
  %cmp23 = icmp slt i32 %19, %20
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx25, align 1
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [768 x i8], [768 x i8]* @gimp_cmap, i32 0, i64 %idxprom26
  store i8 %23, i8* %arrayidx27, align 1
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 0), i32 0, i64 %idxprom28
  store i8 %23, i8* %arrayidx29, align 1
  %26 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 1
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx31, i32 0, i64 %idxprom30
  %28 = load i8, i8* %arrayidx32, align 1
  %29 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %29, 1
  store i32 %inc33, i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [768 x i8], [768 x i8]* @gimp_cmap, i32 0, i64 %idxprom34
  store i8 %28, i8* %arrayidx35, align 1
  %30 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 1), i32 0, i64 %idxprom36
  store i8 %28, i8* %arrayidx37, align 1
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 2
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx39, i32 0, i64 %idxprom38
  %33 = load i8, i8* %arrayidx40, align 1
  %34 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %j, align 4
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [768 x i8], [768 x i8]* @gimp_cmap, i32 0, i64 %idxprom42
  store i8 %33, i8* %arrayidx43, align 1
  %35 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 2), i32 0, i64 %idxprom44
  store i8 %33, i8* %arrayidx45, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32*, i32** %image_ID.addr, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %ncols.addr, align 4
  %call47 = call i32 @gimp_image_set_colormap(i32 %38, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @gimp_cmap, i32 0, i32 0), i32 %39)
  %40 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 1), align 4
  %cmp48 = icmp slt i32 %40, 0
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %for.end
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #5
  %call52 = call noalias i8* @g_strdup(i8* %call51)
  store i8* %call52, i8** %framename, align 8
  br label %if.end.55

if.else:                                          ; preds = %for.end
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0)) #5
  %41 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 1), align 4
  %mul = mul nsw i32 10, %41
  %call54 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call53, i32 %mul, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  store i8* %call54, i8** %framename, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.50
  %42 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 3), align 4
  store i32 %42, i32* @ReadImage.previous_disposal, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  %cmp56 = icmp eq i32 %43, -1
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.end.55
  %44 = load i32*, i32** %image_ID.addr, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %framename, align 8
  %47 = load i32, i32* %len.addr, align 4
  %48 = load i32, i32* %height.addr, align 4
  %call59 = call i32 @gimp_layer_new(i32 %45, i8* %46, i32 %47, i32 %48, i32 4, double 1.000000e+02, i32 0)
  store i32 %call59, i32* %layer_ID, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %if.end.55
  %49 = load i32*, i32** %image_ID.addr, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %framename, align 8
  %52 = load i32, i32* %len.addr, align 4
  %53 = load i32, i32* %height.addr, align 4
  %call61 = call i32 @gimp_layer_new(i32 %50, i8* %51, i32 %52, i32 %53, i32 5, double 1.000000e+02, i32 0)
  store i32 %call61, i32* %layer_ID, align 4
  store i32 1, i32* %alpha_frame, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.58
  %54 = load i8*, i8** %framename, align 8
  call void @g_free(i8* %54)
  br label %if.end.130

if.else.63:                                       ; preds = %if.end.9
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0)) #5
  %55 = load i8*, i8** %filename.addr, align 8
  %call65 = call i8* @gimp_filename_to_utf8(i8* %55)
  %56 = load i32, i32* @ReadImage.frame_number, align 4
  %call66 = call i32 (i8*, ...) @gimp_progress_set_text_printf(i8* %call64, i8* %call65, i32 %56)
  %call67 = call i32 @gimp_progress_pulse()
  %57 = load i32, i32* @promote_to_rgb, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.end.108, label %if.then.68

if.then.68:                                       ; preds = %if.else.63
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.105, %if.then.68
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %ncols.addr, align 4
  %cmp70 = icmp slt i32 %58, %59
  br i1 %cmp70, label %for.body.72, label %for.end.107

for.body.72:                                      ; preds = %for.cond.69
  %60 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %60 to i64
  %arrayidx74 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 0), i32 0, i64 %idxprom73
  %61 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %62 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %62 to i64
  %63 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx77 = getelementptr inbounds [256 x i8], [256 x i8]* %63, i64 0
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx77, i32 0, i64 %idxprom76
  %64 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %64 to i32
  %cmp80 = icmp ne i32 %conv75, %conv79
  br i1 %cmp80, label %if.then.102, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %for.body.72
  %65 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %65 to i64
  %arrayidx84 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 1), i32 0, i64 %idxprom83
  %66 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %66 to i32
  %67 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %67 to i64
  %68 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx87 = getelementptr inbounds [256 x i8], [256 x i8]* %68, i64 1
  %arrayidx88 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx87, i32 0, i64 %idxprom86
  %69 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %69 to i32
  %cmp90 = icmp ne i32 %conv85, %conv89
  br i1 %cmp90, label %if.then.102, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.82
  %70 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %70 to i64
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @used_cmap, i32 0, i64 2), i32 0, i64 %idxprom93
  %71 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %71 to i32
  %72 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %72 to i64
  %73 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx97 = getelementptr inbounds [256 x i8], [256 x i8]* %73, i64 2
  %arrayidx98 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx97, i32 0, i64 %idxprom96
  %74 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %74 to i32
  %cmp100 = icmp ne i32 %conv95, %conv99
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %lor.lhs.false.92, %lor.lhs.false.82, %for.body.72
  store i32 1, i32* @promote_to_rgb, align 4
  %75 = load i32*, i32** %image_ID.addr, align 8
  %76 = load i32, i32* %75, align 4
  %call103 = call i32 @gimp_image_convert_rgb(i32 %76)
  br label %for.end.107

if.end.104:                                       ; preds = %lor.lhs.false.92
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %77 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %77, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.69

for.end.107:                                      ; preds = %if.then.102, %for.cond.69
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %if.else.63
  %78 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 1), align 4
  %cmp109 = icmp slt i32 %78, 0
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %if.end.108
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0)) #5
  %79 = load i32, i32* @ReadImage.frame_number, align 4
  %call113 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call112, i32 %79)
  store i8* %call113, i8** %framename, align 8
  br label %if.end.118

if.else.114:                                      ; preds = %if.end.108
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0)) #5
  %80 = load i32, i32* @ReadImage.frame_number, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 1), align 4
  %mul116 = mul nsw i32 10, %81
  %call117 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call115, i32 %80, i32 %mul116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  store i8* %call117, i8** %framename, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.114, %if.then.111
  %82 = load i32, i32* @ReadImage.previous_disposal, align 4
  switch i32 %82, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.119
    i32 2, label %sw.bb.121
    i32 3, label %sw.bb.123
    i32 4, label %sw.bb.125
    i32 5, label %sw.bb.125
    i32 6, label %sw.bb.125
    i32 7, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %if.end.118
  br label %sw.epilog

sw.bb.119:                                        ; preds = %if.end.118
  %83 = load i8*, i8** %framename, align 8
  store i8* %83, i8** %framename_ptr, align 8
  %84 = load i8*, i8** %framename, align 8
  %call120 = call noalias i8* (i8*, ...) @g_strconcat(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* null)
  store i8* %call120, i8** %framename, align 8
  %85 = load i8*, i8** %framename_ptr, align 8
  call void @g_free(i8* %85)
  br label %sw.epilog

sw.bb.121:                                        ; preds = %if.end.118
  %86 = load i8*, i8** %framename, align 8
  store i8* %86, i8** %framename_ptr, align 8
  %87 = load i8*, i8** %framename, align 8
  %call122 = call noalias i8* (i8*, ...) @g_strconcat(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* null)
  store i8* %call122, i8** %framename, align 8
  %88 = load i8*, i8** %framename_ptr, align 8
  call void @g_free(i8* %88)
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.118
  %89 = load i8*, i8** %framename, align 8
  store i8* %89, i8** %framename_ptr, align 8
  %90 = load i8*, i8** %framename, align 8
  %call124 = call noalias i8* (i8*, ...) @g_strconcat(i8* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* null)
  store i8* %call124, i8** %framename, align 8
  %91 = load i8*, i8** %framename_ptr, align 8
  call void @g_free(i8* %91)
  br label %sw.epilog

sw.bb.125:                                        ; preds = %if.end.118, %if.end.118, %if.end.118, %if.end.118
  %92 = load i8*, i8** %framename, align 8
  store i8* %92, i8** %framename_ptr, align 8
  %93 = load i8*, i8** %framename, align 8
  %call126 = call noalias i8* (i8*, ...) @g_strconcat(i8* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i8* null)
  store i8* %call126, i8** %framename, align 8
  %94 = load i8*, i8** %framename_ptr, align 8
  call void @g_free(i8* %94)
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.64, i32 0, i32 0)) #5
  %95 = load i32, i32* @ReadImage.previous_disposal, align 4
  call void (i8*, ...) @g_message(i8* %call127, i32 %95)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.118
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.125, %sw.bb.123, %sw.bb.121, %sw.bb.119, %sw.bb
  %96 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 3), align 4
  store i32 %96, i32* @ReadImage.previous_disposal, align 4
  %97 = load i32*, i32** %image_ID.addr, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %framename, align 8
  %100 = load i32, i32* %len.addr, align 4
  %101 = load i32, i32* %height.addr, align 4
  %102 = load i32, i32* @promote_to_rgb, align 4
  %tobool128 = icmp ne i32 %102, 0
  %cond = select i1 %tobool128, i32 1, i32 5
  %call129 = call i32 @gimp_layer_new(i32 %98, i8* %99, i32 %100, i32 %101, i32 %cond, double 1.000000e+02, i32 0)
  store i32 %call129, i32* %layer_ID, align 4
  store i32 1, i32* %alpha_frame, align 4
  %103 = load i8*, i8** %framename, align 8
  call void @g_free(i8* %103)
  br label %if.end.130

if.end.130:                                       ; preds = %sw.epilog, %if.end.62
  %104 = load i32, i32* @ReadImage.frame_number, align 4
  %inc131 = add nsw i32 %104, 1
  store i32 %inc131, i32* @ReadImage.frame_number, align 4
  %105 = load i32*, i32** %image_ID.addr, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %layer_ID, align 4
  %call132 = call i32 @gimp_image_insert_layer(i32 %106, i32 %107, i32 -1, i32 0)
  %108 = load i32, i32* %layer_ID, align 4
  %109 = load i32, i32* %leftpos.addr, align 4
  %110 = load i32, i32* %toppos.addr, align 4
  %call133 = call i32 @gimp_layer_translate(i32 %108, i32 %109, i32 %110)
  %111 = load i32, i32* %layer_ID, align 4
  %call134 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %111)
  store %struct._GimpDrawable* %call134, %struct._GimpDrawable** %drawable, align 8
  store i32 0, i32* %cur_progress, align 4
  %112 = load i32, i32* %height.addr, align 4
  store i32 %112, i32* %max_progress, align 4
  %113 = load i32, i32* %len.addr, align 4
  %conv135 = sext i32 %113 to i64
  %114 = load i32, i32* %height.addr, align 4
  %conv136 = sext i32 %114 to i64
  %div = udiv i64 -1, %conv136
  %115 = load i32, i32* %alpha_frame, align 4
  %tobool137 = icmp ne i32 %115, 0
  br i1 %tobool137, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.130
  %116 = load i32, i32* @promote_to_rgb, align 4
  %tobool138 = icmp ne i32 %116, 0
  %cond139 = select i1 %tobool138, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.130
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond140 = phi i32 [ %cond139, %cond.true ], [ 1, %cond.false ]
  %conv141 = sext i32 %cond140 to i64
  %div142 = udiv i64 %div, %conv141
  %cmp143 = icmp ugt i64 %conv135, %div142
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %cond.end
  %117 = load i8*, i8** %filename.addr, align 8
  %call146 = call i8* @gimp_filename_to_utf8(i8* %117)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i32 0, i32 0), i8* %call146)
  %118 = load i32*, i32** %image_ID.addr, align 8
  store i32 -1, i32* %118, align 4
  store i32 0, i32* %retval
  br label %return

if.end.147:                                       ; preds = %cond.end
  %119 = load i32, i32* %alpha_frame, align 4
  %tobool148 = icmp ne i32 %119, 0
  br i1 %tobool148, label %if.then.149, label %if.else.158

if.then.149:                                      ; preds = %if.end.147
  %120 = load i32, i32* %len.addr, align 4
  %conv150 = sext i32 %120 to i64
  %121 = load i32, i32* %height.addr, align 4
  %conv151 = sext i32 %121 to i64
  %mul152 = mul i64 %conv150, %conv151
  %122 = load i32, i32* @promote_to_rgb, align 4
  %tobool153 = icmp ne i32 %122, 0
  %cond154 = select i1 %tobool153, i32 4, i32 2
  %conv155 = sext i32 %cond154 to i64
  %mul156 = mul i64 %mul152, %conv155
  %call157 = call noalias i8* @g_malloc(i64 %mul156)
  store i8* %call157, i8** %dest, align 8
  br label %if.end.163

if.else.158:                                      ; preds = %if.end.147
  %123 = load i32, i32* %len.addr, align 4
  %conv159 = sext i32 %123 to i64
  %124 = load i32, i32* %height.addr, align 4
  %conv160 = sext i32 %124 to i64
  %mul161 = mul i64 %conv159, %conv160
  %call162 = call noalias i8* @g_malloc(i64 %mul161)
  store i8* %call162, i8** %dest, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.158, %if.then.149
  %125 = load i32, i32* %alpha_frame, align 4
  %tobool164 = icmp ne i32 %125, 0
  br i1 %tobool164, label %if.end.167, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.163
  %126 = load i32, i32* @promote_to_rgb, align 4
  %tobool165 = icmp ne i32 %126, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.67, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end.167:                                       ; preds = %land.lhs.true, %if.end.163
  br label %while.cond

while.cond:                                       ; preds = %if.end.277, %if.end.167
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %128 = load i8, i8* %c, align 1
  %conv168 = zext i8 %128 to i32
  %call169 = call i32 @LZWReadByte(%struct._IO_FILE* %127, i32 0, i32 %conv168)
  store i32 %call169, i32* %v, align 4
  %cmp170 = icmp sge i32 %call169, 0
  br i1 %cmp170, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load i32, i32* %alpha_frame, align 4
  %tobool172 = icmp ne i32 %129, 0
  br i1 %tobool172, label %if.then.173, label %if.else.218

if.then.173:                                      ; preds = %while.body
  %130 = load i32, i32* %v, align 4
  %conv174 = trunc i32 %130 to i8
  %conv175 = zext i8 %conv174 to i32
  %131 = load i8, i8* @highest_used_index, align 1
  %conv176 = zext i8 %131 to i32
  %cmp177 = icmp sgt i32 %conv175, %conv176
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.184

land.lhs.true.179:                                ; preds = %if.then.173
  %132 = load i32, i32* %v, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  %cmp180 = icmp eq i32 %132, %133
  br i1 %cmp180, label %if.end.184, label %if.then.182

if.then.182:                                      ; preds = %land.lhs.true.179
  %134 = load i32, i32* %v, align 4
  %conv183 = trunc i32 %134 to i8
  store i8 %conv183, i8* @highest_used_index, align 1
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %land.lhs.true.179, %if.then.173
  %135 = load i32, i32* @promote_to_rgb, align 4
  %tobool185 = icmp ne i32 %135, 0
  br i1 %tobool185, label %if.then.186, label %if.else.205

if.then.186:                                      ; preds = %if.end.184
  %136 = load i8*, i8** %dest, align 8
  %137 = load i32, i32* %ypos, align 4
  %138 = load i32, i32* %len.addr, align 4
  %mul187 = mul nsw i32 %137, %138
  %139 = load i32, i32* %xpos, align 4
  %add = add nsw i32 %mul187, %139
  %mul188 = mul nsw i32 %add, 4
  %idx.ext = sext i32 %mul188 to i64
  %add.ptr = getelementptr inbounds i8, i8* %136, i64 %idx.ext
  store i8* %add.ptr, i8** %temp, align 8
  %140 = load i32, i32* %v, align 4
  %idxprom189 = sext i32 %140 to i64
  %141 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx190 = getelementptr inbounds [256 x i8], [256 x i8]* %141, i64 0
  %arrayidx191 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx190, i32 0, i64 %idxprom189
  %142 = load i8, i8* %arrayidx191, align 1
  %143 = load i8*, i8** %temp, align 8
  store i8 %142, i8* %143, align 1
  %144 = load i32, i32* %v, align 4
  %idxprom192 = sext i32 %144 to i64
  %145 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx193 = getelementptr inbounds [256 x i8], [256 x i8]* %145, i64 1
  %arrayidx194 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx193, i32 0, i64 %idxprom192
  %146 = load i8, i8* %arrayidx194, align 1
  %147 = load i8*, i8** %temp, align 8
  %add.ptr195 = getelementptr inbounds i8, i8* %147, i64 1
  store i8 %146, i8* %add.ptr195, align 1
  %148 = load i32, i32* %v, align 4
  %idxprom196 = sext i32 %148 to i64
  %149 = load [256 x i8]*, [256 x i8]** %cmap.addr, align 8
  %arrayidx197 = getelementptr inbounds [256 x i8], [256 x i8]* %149, i64 2
  %arrayidx198 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx197, i32 0, i64 %idxprom196
  %150 = load i8, i8* %arrayidx198, align 1
  %151 = load i8*, i8** %temp, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %151, i64 2
  store i8 %150, i8* %add.ptr199, align 1
  %152 = load i32, i32* %v, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  %cmp200 = icmp eq i32 %152, %153
  %cond202 = select i1 %cmp200, i32 0, i32 255
  %conv203 = trunc i32 %cond202 to i8
  %154 = load i8*, i8** %temp, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %154, i64 3
  store i8 %conv203, i8* %add.ptr204, align 1
  br label %if.end.217

if.else.205:                                      ; preds = %if.end.184
  %155 = load i8*, i8** %dest, align 8
  %156 = load i32, i32* %ypos, align 4
  %157 = load i32, i32* %len.addr, align 4
  %mul206 = mul nsw i32 %156, %157
  %158 = load i32, i32* %xpos, align 4
  %add207 = add nsw i32 %mul206, %158
  %mul208 = mul nsw i32 %add207, 2
  %idx.ext209 = sext i32 %mul208 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %155, i64 %idx.ext209
  store i8* %add.ptr210, i8** %temp, align 8
  %159 = load i32, i32* %v, align 4
  %conv211 = trunc i32 %159 to i8
  %160 = load i8*, i8** %temp, align 8
  store i8 %conv211, i8* %160, align 1
  %161 = load i32, i32* %v, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @Gif89, i32 0, i32 0), align 4
  %cmp212 = icmp eq i32 %161, %162
  %cond214 = select i1 %cmp212, i32 0, i32 255
  %conv215 = trunc i32 %cond214 to i8
  %163 = load i8*, i8** %temp, align 8
  %add.ptr216 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 %conv215, i8* %add.ptr216, align 1
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.205, %if.then.186
  br label %if.end.233

if.else.218:                                      ; preds = %while.body
  %164 = load i32, i32* %v, align 4
  %conv219 = trunc i32 %164 to i8
  %conv220 = zext i8 %conv219 to i32
  %165 = load i8, i8* @highest_used_index, align 1
  %conv221 = zext i8 %165 to i32
  %cmp222 = icmp sgt i32 %conv220, %conv221
  br i1 %cmp222, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %if.else.218
  %166 = load i32, i32* %v, align 4
  %conv225 = trunc i32 %166 to i8
  store i8 %conv225, i8* @highest_used_index, align 1
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %if.else.218
  %167 = load i8*, i8** %dest, align 8
  %168 = load i32, i32* %ypos, align 4
  %169 = load i32, i32* %len.addr, align 4
  %mul227 = mul nsw i32 %168, %169
  %idx.ext228 = sext i32 %mul227 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %167, i64 %idx.ext228
  %170 = load i32, i32* %xpos, align 4
  %idx.ext230 = sext i32 %170 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %add.ptr229, i64 %idx.ext230
  store i8* %add.ptr231, i8** %temp, align 8
  %171 = load i32, i32* %v, align 4
  %conv232 = trunc i32 %171 to i8
  %172 = load i8*, i8** %temp, align 8
  store i8 %conv232, i8* %172, align 1
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.226, %if.end.217
  %173 = load i32, i32* %xpos, align 4
  %inc234 = add nsw i32 %173, 1
  store i32 %inc234, i32* %xpos, align 4
  %174 = load i32, i32* %xpos, align 4
  %175 = load i32, i32* %len.addr, align 4
  %cmp235 = icmp eq i32 %174, %175
  br i1 %cmp235, label %if.then.237, label %if.end.273

if.then.237:                                      ; preds = %if.end.233
  store i32 0, i32* %xpos, align 4
  %176 = load i32, i32* %interlace.addr, align 4
  %tobool238 = icmp ne i32 %176, 0
  br i1 %tobool238, label %if.then.239, label %if.else.257

if.then.239:                                      ; preds = %if.then.237
  %177 = load i32, i32* %pass, align 4
  switch i32 %177, label %sw.epilog.246 [
    i32 0, label %sw.bb.240
    i32 1, label %sw.bb.240
    i32 2, label %sw.bb.242
    i32 3, label %sw.bb.244
  ]

sw.bb.240:                                        ; preds = %if.then.239, %if.then.239
  %178 = load i32, i32* %ypos, align 4
  %add241 = add nsw i32 %178, 8
  store i32 %add241, i32* %ypos, align 4
  br label %sw.epilog.246

sw.bb.242:                                        ; preds = %if.then.239
  %179 = load i32, i32* %ypos, align 4
  %add243 = add nsw i32 %179, 4
  store i32 %add243, i32* %ypos, align 4
  br label %sw.epilog.246

sw.bb.244:                                        ; preds = %if.then.239
  %180 = load i32, i32* %ypos, align 4
  %add245 = add nsw i32 %180, 2
  store i32 %add245, i32* %ypos, align 4
  br label %sw.epilog.246

sw.epilog.246:                                    ; preds = %if.then.239, %sw.bb.244, %sw.bb.242, %sw.bb.240
  %181 = load i32, i32* %ypos, align 4
  %182 = load i32, i32* %height.addr, align 4
  %cmp247 = icmp sge i32 %181, %182
  br i1 %cmp247, label %if.then.249, label %if.end.256

if.then.249:                                      ; preds = %sw.epilog.246
  %183 = load i32, i32* %pass, align 4
  %inc250 = add nsw i32 %183, 1
  store i32 %inc250, i32* %pass, align 4
  %184 = load i32, i32* %pass, align 4
  switch i32 %184, label %sw.default.254 [
    i32 1, label %sw.bb.251
    i32 2, label %sw.bb.252
    i32 3, label %sw.bb.253
  ]

sw.bb.251:                                        ; preds = %if.then.249
  store i32 4, i32* %ypos, align 4
  br label %sw.epilog.255

sw.bb.252:                                        ; preds = %if.then.249
  store i32 2, i32* %ypos, align 4
  br label %sw.epilog.255

sw.bb.253:                                        ; preds = %if.then.249
  store i32 1, i32* %ypos, align 4
  br label %sw.epilog.255

sw.default.254:                                   ; preds = %if.then.249
  br label %fini

sw.epilog.255:                                    ; preds = %sw.bb.253, %sw.bb.252, %sw.bb.251
  br label %if.end.256

if.end.256:                                       ; preds = %sw.epilog.255, %sw.epilog.246
  br label %if.end.259

if.else.257:                                      ; preds = %if.then.237
  %185 = load i32, i32* %ypos, align 4
  %inc258 = add nsw i32 %185, 1
  store i32 %inc258, i32* %ypos, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.257, %if.end.256
  %186 = load i32, i32* @ReadImage.frame_number, align 4
  %cmp260 = icmp eq i32 %186, 1
  br i1 %cmp260, label %if.then.262, label %if.end.272

if.then.262:                                      ; preds = %if.end.259
  %187 = load i32, i32* %cur_progress, align 4
  %inc263 = add nsw i32 %187, 1
  store i32 %inc263, i32* %cur_progress, align 4
  %188 = load i32, i32* %cur_progress, align 4
  %rem = srem i32 %188, 16
  %cmp264 = icmp eq i32 %rem, 0
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.then.262
  %189 = load i32, i32* %cur_progress, align 4
  %conv267 = sitofp i32 %189 to double
  %190 = load i32, i32* %max_progress, align 4
  %conv268 = sitofp i32 %190 to double
  %div269 = fdiv double %conv267, %conv268
  %call270 = call i32 @gimp_progress_update(double %div269)
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.then.262
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.259
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.233
  %191 = load i32, i32* %ypos, align 4
  %192 = load i32, i32* %height.addr, align 4
  %cmp274 = icmp sge i32 %191, %192
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.end.273
  br label %while.end

if.end.277:                                       ; preds = %if.end.273
  br label %while.cond

while.end:                                        ; preds = %if.then.276, %while.cond
  %193 = load i32, i32* %v, align 4
  %cmp278 = icmp slt i32 %193, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.281:                                       ; preds = %while.end
  br label %fini

fini:                                             ; preds = %if.end.281, %sw.default.254
  %call282 = call i32 @gimp_progress_update(double 1.000000e+00)
  %194 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %195 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %195, i32 0, i32 1
  %196 = load i32, i32* %width, align 4
  %197 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height283 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %197, i32 0, i32 2
  %198 = load i32, i32* %height283, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %194, i32 0, i32 0, i32 %196, i32 %198, i32 1, i32 0)
  %199 = load i8*, i8** %dest, align 8
  %200 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width284 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %200, i32 0, i32 1
  %201 = load i32, i32* %width284, align 4
  %202 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height285 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %202, i32 0, i32 2
  %203 = load i32, i32* %height285, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %199, i32 0, i32 0, i32 %201, i32 %203)
  %204 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %204)
  %205 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %205)
  %206 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %206)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %208 = load i8, i8* %c, align 1
  %conv286 = zext i8 %208 to i32
  %call287 = call i32 @LZWReadByte(%struct._IO_FILE* %207, i32 0, i32 %conv286)
  %cmp288 = icmp sge i32 %call287, 0
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %fini
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.68, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.291:                                       ; preds = %fini
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.291, %if.then.290, %if.then.280, %if.then.145, %if.then.8, %if.then.3, %if.then
  %209 = load i32, i32* %retval
  ret i32 %209
}

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @GetDataBlock(%struct._IO_FILE* %fd, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i8, align 1
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i64 @fread(i8* %count, i64 1, i64 1, %struct._IO_FILE* %0)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %count, align 1
  %conv = zext i8 %1 to i32
  %cmp1 = icmp eq i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* @ZeroDataBlock, align 4
  %2 = load i8, i8* %count, align 1
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i8, i8* %count, align 1
  %conv6 = zext i8 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call7 = call i64 @fread(i8* %3, i64 %conv6, i64 1, %struct._IO_FILE* %5)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %6 = load i8, i8* %count, align 1
  %conv12 = zext i8 %6 to i32
  store i32 %conv12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @LZWReadByte(%struct._IO_FILE* %fd, i32 %just_reset_LZW, i32 %input_code_size) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %just_reset_LZW.addr = alloca i32, align 4
  %input_code_size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %incode = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %buf = alloca [260 x i8], align 16
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %just_reset_LZW, i32* %just_reset_LZW.addr, align 4
  store i32 %input_code_size, i32* %input_code_size.addr, align 4
  %0 = load i32, i32* %just_reset_LZW.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %input_code_size.addr, align 4
  %cmp = icmp sgt i32 %1, 12
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %input_code_size.addr, align 4
  %cmp1 = icmp sle i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.69, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %input_code_size.addr, align 4
  store i32 %3, i32* @LZWReadByte.set_code_size, align 4
  %4 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @LZWReadByte.code_size, align 4
  %5 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %shl = shl i32 1, %5
  store i32 %shl, i32* @LZWReadByte.clear_code, align 4
  %6 = load i32, i32* @LZWReadByte.clear_code, align 4
  %add3 = add nsw i32 %6, 1
  store i32 %add3, i32* @LZWReadByte.end_code, align 4
  %7 = load i32, i32* @LZWReadByte.clear_code, align 4
  %mul = mul nsw i32 2, %7
  store i32 %mul, i32* @LZWReadByte.max_code_size, align 4
  %8 = load i32, i32* @LZWReadByte.clear_code, align 4
  %add4 = add nsw i32 %8, 2
  store i32 %add4, i32* @LZWReadByte.max_code, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i32 @GetCode(%struct._IO_FILE* %9, i32 0, i32 1)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 1, i32* @LZWReadByte.fresh, align 4
  store i32* getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i32 0, i32 0), i32** @LZWReadByte.sp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @LZWReadByte.clear_code, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom9
  store i32 %13, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %16, 4096
  br i1 %cmp12, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.13
  %19 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %20 = load i32, i32* @LZWReadByte.fresh, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.else
  store i32 0, i32* @LZWReadByte.fresh, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.22
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %22 = load i32, i32* @LZWReadByte.code_size, align 4
  %call23 = call i32 @GetCode(%struct._IO_FILE* %21, i32 %22, i32 0)
  store i32 %call23, i32* @LZWReadByte.oldcode, align 4
  store i32 %call23, i32* @LZWReadByte.firstcode, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i32, i32* @LZWReadByte.firstcode, align 4
  %24 = load i32, i32* @LZWReadByte.clear_code, align 4
  %cmp24 = icmp eq i32 %23, %24
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load i32, i32* @LZWReadByte.firstcode, align 4
  %cmp25 = icmp slt i32 %25, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end
  %26 = load i32, i32* @LZWReadByte.firstcode, align 4
  %and = and i32 %26, 255
  store i32 %and, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %27 = load i32*, i32** @LZWReadByte.sp, align 8
  %cmp30 = icmp ugt i32* %27, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i32 0, i32 0)
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %28 = load i32*, i32** @LZWReadByte.sp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %28, i32 -1
  store i32* %incdec.ptr, i32** @LZWReadByte.sp, align 8
  %29 = load i32, i32* %incdec.ptr, align 4
  %and32 = and i32 %29, 255
  store i32 %and32, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  br label %while.cond

while.cond:                                       ; preds = %if.end.129, %if.end.33
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %31 = load i32, i32* @LZWReadByte.code_size, align 4
  %call34 = call i32 @GetCode(%struct._IO_FILE* %30, i32 %31, i32 0)
  store i32 %call34, i32* %code, align 4
  %cmp35 = icmp sge i32 %call34, 0
  br i1 %cmp35, label %while.body, label %while.end.130

while.body:                                       ; preds = %while.cond
  %32 = load i32, i32* %code, align 4
  %33 = load i32, i32* @LZWReadByte.clear_code, align 4
  %cmp36 = icmp eq i32 %32, %33
  br i1 %cmp36, label %if.then.37, label %if.else.66

if.then.37:                                       ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %if.then.37
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* @LZWReadByte.clear_code, align 4
  %cmp39 = icmp slt i32 %34, %35
  br i1 %cmp39, label %for.body.40, label %for.end.47

for.body.40:                                      ; preds = %for.cond.38
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom41
  store i32 0, i32* %arrayidx42, align 4
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom43
  store i32 %37, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.40
  %39 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %39, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %for.end.47
  %40 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %40, 4096
  br i1 %cmp49, label %for.body.50, label %for.end.57

for.body.50:                                      ; preds = %for.cond.48
  %41 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom51
  store i32 0, i32* %arrayidx52, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %42 to i64
  %arrayidx54 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.50
  %43 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %43, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.48

for.end.57:                                       ; preds = %for.cond.48
  %44 = load i32, i32* @LZWReadByte.set_code_size, align 4
  %add58 = add nsw i32 %44, 1
  store i32 %add58, i32* @LZWReadByte.code_size, align 4
  %45 = load i32, i32* @LZWReadByte.clear_code, align 4
  %mul59 = mul nsw i32 2, %45
  store i32 %mul59, i32* @LZWReadByte.max_code_size, align 4
  %46 = load i32, i32* @LZWReadByte.clear_code, align 4
  %add60 = add nsw i32 %46, 2
  store i32 %add60, i32* @LZWReadByte.max_code, align 4
  store i32* getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i32 0, i32 0), i32** @LZWReadByte.sp, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %48 = load i32, i32* @LZWReadByte.code_size, align 4
  %call61 = call i32 @GetCode(%struct._IO_FILE* %47, i32 %48, i32 0)
  store i32 %call61, i32* @LZWReadByte.oldcode, align 4
  store i32 %call61, i32* @LZWReadByte.firstcode, align 4
  %49 = load i32, i32* @LZWReadByte.firstcode, align 4
  %cmp62 = icmp slt i32 %49, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end.57
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %for.end.57
  %50 = load i32, i32* @LZWReadByte.firstcode, align 4
  %and65 = and i32 %50, 255
  store i32 %and65, i32* %retval
  br label %return

if.else.66:                                       ; preds = %while.body
  %51 = load i32, i32* %code, align 4
  %52 = load i32, i32* @LZWReadByte.end_code, align 4
  %cmp67 = icmp eq i32 %51, %52
  br i1 %cmp67, label %if.then.70, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.else.66
  %53 = load i32, i32* %code, align 4
  %54 = load i32, i32* @LZWReadByte.max_code, align 4
  %cmp69 = icmp sgt i32 %53, %54
  br i1 %cmp69, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %lor.lhs.false.68, %if.else.66
  %55 = load i32, i32* @ZeroDataBlock, align 4
  %tobool71 = icmp ne i32 %55, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.70
  store i32 -2, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.then.70
  br label %while.cond.74

while.cond.74:                                    ; preds = %while.body.77, %if.end.73
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %arraydecay = getelementptr inbounds [260 x i8], [260 x i8]* %buf, i32 0, i32 0
  %call75 = call i32 @GetDataBlock(%struct._IO_FILE* %56, i8* %arraydecay)
  store i32 %call75, i32* %count, align 4
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %while.body.77, label %while.end

while.body.77:                                    ; preds = %while.cond.74
  br label %while.cond.74

while.end:                                        ; preds = %while.cond.74
  %57 = load i32, i32* %count, align 4
  %cmp78 = icmp ne i32 %57, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %while.end
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %while.end
  store i32 -2, i32* %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false.68
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  %58 = load i32, i32* %code, align 4
  store i32 %58, i32* %incode, align 4
  %59 = load i32, i32* %code, align 4
  %60 = load i32, i32* @LZWReadByte.max_code, align 4
  %cmp83 = icmp eq i32 %59, %60
  br i1 %cmp83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.end.82
  %61 = load i32*, i32** @LZWReadByte.sp, align 8
  %cmp85 = icmp ult i32* %61, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 1, i64 0)
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.84
  %62 = load i32, i32* @LZWReadByte.firstcode, align 4
  %63 = load i32*, i32** @LZWReadByte.sp, align 8
  %incdec.ptr87 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr87, i32** @LZWReadByte.sp, align 8
  store i32 %62, i32* %63, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.84
  %64 = load i32, i32* @LZWReadByte.oldcode, align 4
  store i32 %64, i32* %code, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.82
  br label %while.cond.90

while.cond.90:                                    ; preds = %if.end.101, %if.end.89
  %65 = load i32, i32* %code, align 4
  %66 = load i32, i32* @LZWReadByte.clear_code, align 4
  %cmp91 = icmp sge i32 %65, %66
  br i1 %cmp91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.90
  %67 = load i32*, i32** @LZWReadByte.sp, align 8
  %cmp92 = icmp ult i32* %67, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 1, i64 0)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.90
  %68 = phi i1 [ false, %while.cond.90 ], [ %cmp92, %land.rhs ]
  br i1 %68, label %while.body.93, label %while.end.104

while.body.93:                                    ; preds = %land.end
  %69 = load i32, i32* %code, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom94
  %70 = load i32, i32* %arrayidx95, align 4
  %71 = load i32*, i32** @LZWReadByte.sp, align 8
  %incdec.ptr96 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr96, i32** @LZWReadByte.sp, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %code, align 4
  %73 = load i32, i32* %code, align 4
  %idxprom97 = sext i32 %73 to i64
  %arrayidx98 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom97
  %74 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp eq i32 %72, %74
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %while.body.93
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end.101:                                       ; preds = %while.body.93
  %75 = load i32, i32* %code, align 4
  %idxprom102 = sext i32 %75 to i64
  %arrayidx103 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom102
  %76 = load i32, i32* %arrayidx103, align 4
  store i32 %76, i32* %code, align 4
  br label %while.cond.90

while.end.104:                                    ; preds = %land.end
  %77 = load i32*, i32** @LZWReadByte.sp, align 8
  %cmp105 = icmp ult i32* %77, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i64 1, i64 0)
  br i1 %cmp105, label %if.then.106, label %if.end.110

if.then.106:                                      ; preds = %while.end.104
  %78 = load i32, i32* %code, align 4
  %idxprom107 = sext i32 %78 to i64
  %arrayidx108 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom107
  %79 = load i32, i32* %arrayidx108, align 4
  store i32 %79, i32* @LZWReadByte.firstcode, align 4
  %80 = load i32*, i32** @LZWReadByte.sp, align 8
  %incdec.ptr109 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %incdec.ptr109, i32** @LZWReadByte.sp, align 8
  store i32 %79, i32* %80, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.106, %while.end.104
  %81 = load i32, i32* @LZWReadByte.max_code, align 4
  store i32 %81, i32* %code, align 4
  %cmp111 = icmp slt i32 %81, 4096
  br i1 %cmp111, label %if.then.112, label %if.end.124

if.then.112:                                      ; preds = %if.end.110
  %82 = load i32, i32* @LZWReadByte.oldcode, align 4
  %83 = load i32, i32* %code, align 4
  %idxprom113 = sext i32 %83 to i64
  %arrayidx114 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 0), i32 0, i64 %idxprom113
  store i32 %82, i32* %arrayidx114, align 4
  %84 = load i32, i32* @LZWReadByte.firstcode, align 4
  %85 = load i32, i32* %code, align 4
  %idxprom115 = sext i32 %85 to i64
  %arrayidx116 = getelementptr inbounds [4096 x i32], [4096 x i32]* getelementptr inbounds ([2 x [4096 x i32]], [2 x [4096 x i32]]* @LZWReadByte.table, i32 0, i64 1), i32 0, i64 %idxprom115
  store i32 %84, i32* %arrayidx116, align 4
  %86 = load i32, i32* @LZWReadByte.max_code, align 4
  %inc117 = add nsw i32 %86, 1
  store i32 %inc117, i32* @LZWReadByte.max_code, align 4
  %87 = load i32, i32* @LZWReadByte.max_code, align 4
  %88 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %cmp118 = icmp sge i32 %87, %88
  br i1 %cmp118, label %land.lhs.true, label %if.end.123

land.lhs.true:                                    ; preds = %if.then.112
  %89 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %cmp119 = icmp slt i32 %89, 4096
  br i1 %cmp119, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %land.lhs.true
  %90 = load i32, i32* @LZWReadByte.max_code_size, align 4
  %mul121 = mul nsw i32 %90, 2
  store i32 %mul121, i32* @LZWReadByte.max_code_size, align 4
  %91 = load i32, i32* @LZWReadByte.code_size, align 4
  %inc122 = add nsw i32 %91, 1
  store i32 %inc122, i32* @LZWReadByte.code_size, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %land.lhs.true, %if.then.112
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.110
  %92 = load i32, i32* %incode, align 4
  store i32 %92, i32* @LZWReadByte.oldcode, align 4
  %93 = load i32*, i32** @LZWReadByte.sp, align 8
  %cmp125 = icmp ugt i32* %93, getelementptr inbounds ([8192 x i32], [8192 x i32]* @LZWReadByte.stack, i32 0, i32 0)
  br i1 %cmp125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.124
  %94 = load i32*, i32** @LZWReadByte.sp, align 8
  %incdec.ptr127 = getelementptr inbounds i32, i32* %94, i32 -1
  store i32* %incdec.ptr127, i32** @LZWReadByte.sp, align 8
  %95 = load i32, i32* %incdec.ptr127, align 4
  %and128 = and i32 %95, 255
  store i32 %and128, i32* %retval
  br label %return

if.end.129:                                       ; preds = %if.end.124
  br label %while.cond

while.end.130:                                    ; preds = %while.cond
  %96 = load i32, i32* %code, align 4
  %cmp131 = icmp slt i32 %96, 0
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %while.end.130
  store i32 -1, i32* %retval
  br label %return

if.end.133:                                       ; preds = %while.end.130
  %97 = load i32, i32* %code, align 4
  %and134 = and i32 %97, 255
  store i32 %and134, i32* %retval
  br label %return

return:                                           ; preds = %if.end.133, %if.then.132, %if.then.126, %if.end.80, %if.then.72, %if.end.64, %if.then.63, %if.then.31, %if.end.27, %if.then.26, %for.end.20, %if.then.6, %if.then.2
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_progress_set_text_printf(i8*, ...) #1

declare i32 @gimp_progress_pulse() #1

declare i32 @gimp_image_convert_rgb(i32) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_translate(i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: noreturn
declare void @gimp_quit() #6

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @GetCode(%struct._IO_FILE* %fd, i32 %code_size, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %code_size.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %code_size, i32* %code_size.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @GetCode.curbit, align 4
  store i32 0, i32* @GetCode.lastbit, align 4
  store i32 0, i32* @GetCode.done, align 4
  store i32 2, i32* @GetCode.last_byte, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end
  %1 = load i32, i32* @GetCode.curbit, align 4
  %2 = load i32, i32* %code_size.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load i32, i32* @GetCode.lastbit, align 4
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* @GetCode.done, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %while.body
  %5 = load i32, i32* @GetCode.curbit, align 4
  %6 = load i32, i32* @GetCode.lastbit, align 4
  %cmp3 = icmp sge i32 %5, %6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %while.body
  %7 = load i32, i32* @GetCode.last_byte, align 4
  %sub = sub nsw i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* getelementptr inbounds ([280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 0), align 1
  %9 = load i32, i32* @GetCode.last_byte, align 4
  %sub7 = sub nsw i32 %9, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  store i8 %10, i8* getelementptr inbounds ([280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 1), align 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i32 @GetDataBlock(%struct._IO_FILE* %11, i8* getelementptr inbounds ([280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 2))
  store i32 %call, i32* %count, align 4
  %12 = load i32, i32* %count, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %13 = load i32, i32* %count, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 1, i32* @GetCode.done, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  %14 = load i32, i32* %count, align 4
  %add16 = add nsw i32 2, %14
  store i32 %add16, i32* @GetCode.last_byte, align 4
  %15 = load i32, i32* @GetCode.curbit, align 4
  %16 = load i32, i32* @GetCode.lastbit, align 4
  %sub17 = sub nsw i32 %15, %16
  %add18 = add nsw i32 %sub17, 16
  store i32 %add18, i32* @GetCode.curbit, align 4
  %17 = load i32, i32* %count, align 4
  %add19 = add nsw i32 2, %17
  %mul = mul nsw i32 %add19, 8
  store i32 %mul, i32* @GetCode.lastbit, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ret, align 4
  %18 = load i32, i32* @GetCode.curbit, align 4
  store i32 %18, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %code_size.addr, align 4
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %div = sdiv i32 %21, 8
  %idxprom21 = sext i32 %div to i64
  %arrayidx22 = getelementptr inbounds [280 x i8], [280 x i8]* @GetCode.buf, i32 0, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %22 to i32
  %23 = load i32, i32* %i, align 4
  %rem = srem i32 %23, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %cmp23 = icmp ne i32 %and, 0
  %conv24 = zext i1 %cmp23 to i32
  %24 = load i32, i32* %j, align 4
  %shl25 = shl i32 %conv24, %24
  %25 = load i32, i32* %ret, align 4
  %or = or i32 %25, %shl25
  store i32 %or, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %code_size.addr, align 4
  %29 = load i32, i32* @GetCode.curbit, align 4
  %add27 = add nsw i32 %29, %28
  store i32 %add27, i32* @GetCode.curbit, align 4
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.end.5, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
