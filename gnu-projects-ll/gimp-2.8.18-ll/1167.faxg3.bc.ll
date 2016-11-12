; ModuleID = './plug-ins/file-faxg3/faxg3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.g3_tree = type { i32, [256 x %struct.g3_tree*] }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.g3code = type { i32, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@black = global %struct.g3_tree* null, align 8
@white = global %struct.g3_tree* null, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"file-faxg3-load\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"loads g3 fax files\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"This plug-in loads Fax G3 Image files.\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Jochen Friedrich\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Jochen Friedrich, Gert Doering, Spencer Kimball & Peter Mattis\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"0.6\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"G3 fax image\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"image/g3-fax\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"g3\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"4,string,Research\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@t_white = external global [0 x %struct.g3code], align 4
@m_white = external global [0 x %struct.g3code], align 4
@t_black = external global [0 x %struct.g3code], align 4
@m_black = external global [0 x %struct.g3code], align 4
@byte_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@rbuf = internal global [2048 x i8] zeroinitializer, align 16
@rs = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"PC Research, Inc\00", align 1
@rp = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"read2\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"invalid code, row=%d, col=%d, file offset=%lx, skip to eol\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"read4\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"read3\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"realloc() failed, page truncated\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Background\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %call1 = call i8* @gimp_locale_directory() #8
  %call2 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call1) #6
  %call3 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #6
  %call4 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call5 = call i32 @load_image(i8* %4, %struct._GError** %error)
  store i32 %call5, i32* %image_ID, align 4
  %5 = load i32, i32* %image_ID, align 4
  %cmp6 = icmp ne i32 %5, -1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.end
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %6, align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %7 = load i32, i32* %image_ID, align 4
  store i32 %7, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.9

if.else:                                          ; preds = %do.end
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %8, null
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %9 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %9, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  store i8* %11, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %data = alloca i32, align 4
  %hibit = alloca i32, align 4
  %p = alloca %struct.g3_tree*, align 8
  %nr_pels = alloca i32, align 4
  %fd = alloca i32, align 4
  %color = alloca i32, align 4
  %i = alloca i32, align 4
  %rr = alloca i32, align 4
  %rsize = alloca i32, align 4
  %cons_eol = alloca i32, align 4
  %image_id = alloca i32, align 4
  %bperrow = alloca i32, align 4
  %bitmap = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %row = alloca i32, align 4
  %max_rows = alloca i32, align 4
  %col = alloca i32, align 4
  %hcol = alloca i32, align 4
  %p216 = alloca i8*, align 8
  %bit = alloca i32, align 4
  %w = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 216, i32* %bperrow, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)) #6
  %0 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %0)
  %call2 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call, i8* %call1)
  call void @build_tree(%struct.g3_tree** @white, %struct.g3code* getelementptr inbounds ([0 x %struct.g3code], [0 x %struct.g3code]* @t_white, i32 0, i32 0))
  call void @build_tree(%struct.g3_tree** @white, %struct.g3code* getelementptr inbounds ([0 x %struct.g3code], [0 x %struct.g3code]* @m_white, i32 0, i32 0))
  call void @build_tree(%struct.g3_tree** @black, %struct.g3code* getelementptr inbounds ([0 x %struct.g3code], [0 x %struct.g3code]* @t_black, i32 0, i32 0))
  call void @build_tree(%struct.g3_tree** @black, %struct.g3code* getelementptr inbounds ([0 x %struct.g3code], [0 x %struct.g3code]* @m_black, i32 0, i32 0))
  call void @init_byte_tab(i32 0, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @byte_tab, i32 0, i32 0))
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (i8*, i32, ...) @open(i8* %1, i32 0, i32 0)
  store i32 %call3, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #8
  %4 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %4)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0)) #6
  %5 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call9 = call i32* @__errno_location() #8
  %6 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %6) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %hibit, align 4
  store i32 0, i32* %data, align 4
  store i32 0, i32* %cons_eol, align 4
  store i32 0, i32* %color, align 4
  store i32 0, i32* %rr, align 4
  %7 = load i32, i32* %fd, align 4
  %call11 = call i64 @lseek(i32 %7, i64 0, i32 2) #6
  %conv = trunc i64 %call11 to i32
  store i32 %conv, i32* %rsize, align 4
  %8 = load i32, i32* %fd, align 4
  %call12 = call i64 @lseek(i32 %8, i64 0, i32 0) #6
  %9 = load i32, i32* %fd, align 4
  %call13 = call i64 @read(i32 %9, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @rbuf, i32 0, i32 0), i64 2048)
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* @rs, align 4
  %10 = load i32, i32* @rs, align 4
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %11 = load i32, i32* @rs, align 4
  %call18 = call i32 @close(i32 %11)
  call void @gimp_quit() #9
  unreachable

if.end.19:                                        ; preds = %if.end
  %12 = load i32, i32* @rs, align 4
  %13 = load i32, i32* %rr, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %rr, align 4
  %14 = load i32, i32* %rr, align 4
  %conv20 = sitofp i32 %14 to float
  %15 = load i32, i32* %rsize, align 4
  %conv21 = sitofp i32 %15 to float
  %div = fdiv float %conv20, %conv21
  %conv22 = fpext float %div to double
  %div23 = fdiv double %conv22, 2.000000e+00
  %call24 = call i32 @gimp_progress_update(double %div23)
  %16 = load i32, i32* @rs, align 4
  %cmp25 = icmp sge i32 %16, 64
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.19
  %call27 = call i32 @strcmp(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @rbuf, i32 0, i64 1), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.19
  %17 = phi i1 [ false, %if.end.19 ], [ %cmp28, %land.rhs ]
  %cond = select i1 %17, i32 64, i32 0
  store i32 %cond, i32* @rp, align 4
  store i32 0, i32* %hcol, align 4
  store i32 0, i32* %col, align 4
  store i32 0, i32* %row, align 4
  store i32 4300, i32* %max_rows, align 4
  %call30 = call noalias i8* @g_malloc0_n(i64 928800, i64 1)
  store i8* %call30, i8** %bitmap, align 8
  %18 = load i32, i32* %row, align 4
  %mul = mul nsw i32 %18, 1728
  %div31 = sdiv i32 %mul, 8
  %idxprom = sext i32 %div31 to i64
  %19 = load i8*, i8** %bitmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8* %arrayidx, i8** %bp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.277, %land.end
  %20 = load i32, i32* @rs, align 4
  %cmp32 = icmp sgt i32 %20, 0
  br i1 %cmp32, label %land.rhs.34, label %land.end.37

land.rhs.34:                                      ; preds = %while.cond
  %21 = load i32, i32* %cons_eol, align 4
  %cmp35 = icmp slt i32 %21, 4
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.34, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp35, %land.rhs.34 ]
  br i1 %22, label %while.body, label %while.end.278

while.body:                                       ; preds = %land.end.37
  br label %while.cond.38

while.cond.38:                                    ; preds = %if.end.68, %while.body
  %23 = load i32, i32* %hibit, align 4
  %cmp39 = icmp slt i32 %23, 20
  br i1 %cmp39, label %while.body.41, label %while.end

while.body.41:                                    ; preds = %while.cond.38
  %24 = load i32, i32* @rp, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @rp, align 4
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [2048 x i8], [2048 x i8]* @rbuf, i32 0, i64 %idxprom42
  %25 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %25 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds [256 x i32], [256 x i32]* @byte_tab, i32 0, i64 %idxprom45
  %26 = load i32, i32* %arrayidx46, align 4
  %27 = load i32, i32* %hibit, align 4
  %shl = shl i32 %26, %27
  %28 = load i32, i32* %data, align 4
  %or = or i32 %28, %shl
  store i32 %or, i32* %data, align 4
  %29 = load i32, i32* %hibit, align 4
  %add47 = add nsw i32 %29, 8
  store i32 %add47, i32* %hibit, align 4
  %30 = load i32, i32* @rp, align 4
  %31 = load i32, i32* @rs, align 4
  %cmp48 = icmp sge i32 %30, %31
  br i1 %cmp48, label %if.then.50, label %if.end.68

if.then.50:                                       ; preds = %while.body.41
  %32 = load i32, i32* %fd, align 4
  %call51 = call i64 @read(i32 %32, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @rbuf, i32 0, i32 0), i64 2048)
  %conv52 = trunc i64 %call51 to i32
  store i32 %conv52, i32* @rs, align 4
  %33 = load i32, i32* @rs, align 4
  %cmp53 = icmp slt i32 %33, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.50
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  br label %while.end

if.end.56:                                        ; preds = %if.then.50
  %34 = load i32, i32* @rs, align 4
  %35 = load i32, i32* %rr, align 4
  %add57 = add nsw i32 %35, %34
  store i32 %add57, i32* %rr, align 4
  %36 = load i32, i32* %rr, align 4
  %conv58 = sitofp i32 %36 to float
  %37 = load i32, i32* %rsize, align 4
  %conv59 = sitofp i32 %37 to float
  %div60 = fdiv float %conv58, %conv59
  %conv61 = fpext float %div60 to double
  %div62 = fdiv double %conv61, 2.000000e+00
  %call63 = call i32 @gimp_progress_update(double %div62)
  store i32 0, i32* @rp, align 4
  %38 = load i32, i32* @rs, align 4
  %cmp64 = icmp eq i32 %38, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.56
  br label %do_write

if.end.67:                                        ; preds = %if.end.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %while.body.41
  br label %while.cond.38

while.end:                                        ; preds = %if.then.55, %while.cond.38
  %39 = load i32, i32* %color, align 4
  %cmp69 = icmp eq i32 %39, 0
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %while.end
  %40 = load i32, i32* %data, align 4
  %and = and i32 %40, 255
  %idxprom72 = sext i32 %and to i64
  %41 = load %struct.g3_tree*, %struct.g3_tree** @white, align 8
  %nextb = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %41, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb, i32 0, i64 %idxprom72
  %42 = load %struct.g3_tree*, %struct.g3_tree** %arrayidx73, align 8
  store %struct.g3_tree* %42, %struct.g3_tree** %p, align 8
  br label %if.end.78

if.else:                                          ; preds = %while.end
  %43 = load i32, i32* %data, align 4
  %and74 = and i32 %43, 255
  %idxprom75 = sext i32 %and74 to i64
  %44 = load %struct.g3_tree*, %struct.g3_tree** @black, align 8
  %nextb76 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %44, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb76, i32 0, i64 %idxprom75
  %45 = load %struct.g3_tree*, %struct.g3_tree** %arrayidx77, align 8
  store %struct.g3_tree* %45, %struct.g3_tree** %p, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.then.71
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.84, %if.end.78
  %46 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %cmp80 = icmp ne %struct.g3_tree* %46, null
  br i1 %cmp80, label %land.rhs.82, label %land.end.83

land.rhs.82:                                      ; preds = %while.cond.79
  %47 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %nr_bits = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %47, i32 0, i32 0
  %48 = load i32, i32* %nr_bits, align 4
  %tobool = icmp ne i32 %48, 0
  %lnot = xor i1 %tobool, true
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.82, %while.cond.79
  %49 = phi i1 [ false, %while.cond.79 ], [ %lnot, %land.rhs.82 ]
  br i1 %49, label %while.body.84, label %while.end.89

while.body.84:                                    ; preds = %land.end.83
  %50 = load i32, i32* %data, align 4
  %shr = ashr i32 %50, 8
  store i32 %shr, i32* %data, align 4
  %51 = load i32, i32* %hibit, align 4
  %sub = sub nsw i32 %51, 8
  store i32 %sub, i32* %hibit, align 4
  %52 = load i32, i32* %data, align 4
  %and85 = and i32 %52, 255
  %idxprom86 = sext i32 %and85 to i64
  %53 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %nextb87 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %53, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb87, i32 0, i64 %idxprom86
  %54 = load %struct.g3_tree*, %struct.g3_tree** %arrayidx88, align 8
  store %struct.g3_tree* %54, %struct.g3_tree** %p, align 8
  br label %while.cond.79

while.end.89:                                     ; preds = %land.end.83
  %55 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %cmp90 = icmp eq %struct.g3_tree* %55, null
  br i1 %cmp90, label %if.then.92, label %if.else.139

if.then.92:                                       ; preds = %while.end.89
  %56 = load i32, i32* %row, align 4
  %57 = load i32, i32* %col, align 4
  %58 = load i32, i32* %fd, align 4
  %call93 = call i64 @lseek(i32 %58, i64 0, i32 1) #6
  %59 = load i32, i32* @rs, align 4
  %conv94 = sext i32 %59 to i64
  %sub95 = sub i64 %call93, %conv94
  %60 = load i32, i32* @rp, align 4
  %conv96 = sext i32 %60 to i64
  %add97 = add i64 %sub95, %conv96
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i32 0, i32 0), i32 %56, i32 %57, i64 %add97)
  br label %while.cond.98

while.cond.98:                                    ; preds = %if.end.137, %if.then.92
  %61 = load i32, i32* %data, align 4
  %and99 = and i32 %61, 63
  %cmp100 = icmp ne i32 %and99, 0
  br i1 %cmp100, label %while.body.102, label %while.end.138

while.body.102:                                   ; preds = %while.cond.98
  %62 = load i32, i32* %data, align 4
  %shr103 = ashr i32 %62, 1
  store i32 %shr103, i32* %data, align 4
  %63 = load i32, i32* %hibit, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %hibit, align 4
  %64 = load i32, i32* %hibit, align 4
  %cmp104 = icmp slt i32 %64, 20
  br i1 %cmp104, label %if.then.106, label %if.end.137

if.then.106:                                      ; preds = %while.body.102
  %65 = load i32, i32* @rp, align 4
  %inc107 = add nsw i32 %65, 1
  store i32 %inc107, i32* @rp, align 4
  %idxprom108 = sext i32 %65 to i64
  %arrayidx109 = getelementptr inbounds [2048 x i8], [2048 x i8]* @rbuf, i32 0, i64 %idxprom108
  %66 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %66 to i32
  %idxprom111 = sext i32 %conv110 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* @byte_tab, i32 0, i64 %idxprom111
  %67 = load i32, i32* %arrayidx112, align 4
  %68 = load i32, i32* %hibit, align 4
  %shl113 = shl i32 %67, %68
  %69 = load i32, i32* %data, align 4
  %or114 = or i32 %69, %shl113
  store i32 %or114, i32* %data, align 4
  %70 = load i32, i32* %hibit, align 4
  %add115 = add nsw i32 %70, 8
  store i32 %add115, i32* %hibit, align 4
  %71 = load i32, i32* @rp, align 4
  %72 = load i32, i32* @rs, align 4
  %cmp116 = icmp sge i32 %71, %72
  br i1 %cmp116, label %if.then.118, label %if.end.136

if.then.118:                                      ; preds = %if.then.106
  %73 = load i32, i32* %fd, align 4
  %call119 = call i64 @read(i32 %73, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @rbuf, i32 0, i32 0), i64 2048)
  %conv120 = trunc i64 %call119 to i32
  store i32 %conv120, i32* @rs, align 4
  %74 = load i32, i32* @rs, align 4
  %cmp121 = icmp slt i32 %74, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.118
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  br label %while.end.138

if.end.124:                                       ; preds = %if.then.118
  %75 = load i32, i32* @rs, align 4
  %76 = load i32, i32* %rr, align 4
  %add125 = add nsw i32 %76, %75
  store i32 %add125, i32* %rr, align 4
  %77 = load i32, i32* %rr, align 4
  %conv126 = sitofp i32 %77 to float
  %78 = load i32, i32* %rsize, align 4
  %conv127 = sitofp i32 %78 to float
  %div128 = fdiv float %conv126, %conv127
  %conv129 = fpext float %div128 to double
  %div130 = fdiv double %conv129, 2.000000e+00
  %call131 = call i32 @gimp_progress_update(double %div130)
  store i32 0, i32* @rp, align 4
  %79 = load i32, i32* @rs, align 4
  %cmp132 = icmp eq i32 %79, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.124
  br label %do_write

if.end.135:                                       ; preds = %if.end.124
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.106
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %while.body.102
  br label %while.cond.98

while.end.138:                                    ; preds = %if.then.123, %while.cond.98
  store i32 -1, i32* %nr_pels, align 4
  br label %if.end.145

if.else.139:                                      ; preds = %while.end.89
  %80 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %nr_bits140 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %80, i32 0, i32 0
  %81 = load i32, i32* %nr_bits140, align 4
  %82 = load i32, i32* %data, align 4
  %shr141 = ashr i32 %82, %81
  store i32 %shr141, i32* %data, align 4
  %83 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %nr_bits142 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %83, i32 0, i32 0
  %84 = load i32, i32* %nr_bits142, align 4
  %85 = load i32, i32* %hibit, align 4
  %sub143 = sub nsw i32 %85, %84
  store i32 %sub143, i32* %hibit, align 4
  %86 = load %struct.g3_tree*, %struct.g3_tree** %p, align 8
  %87 = bitcast %struct.g3_tree* %86 to %struct.g3code*
  %nr_pels144 = getelementptr inbounds %struct.g3code, %struct.g3code* %87, i32 0, i32 1
  %88 = load i32, i32* %nr_pels144, align 4
  store i32 %88, i32* %nr_pels, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.139, %while.end.138
  %89 = load i32, i32* %nr_pels, align 4
  %cmp146 = icmp eq i32 %89, -1
  br i1 %cmp146, label %if.then.148, label %if.else.241

if.then.148:                                      ; preds = %if.end.145
  br label %while.cond.149

while.cond.149:                                   ; preds = %if.end.197, %if.then.148
  %90 = load i32, i32* %data, align 4
  %and150 = and i32 %90, 1
  %cmp151 = icmp ne i32 %and150, 1
  br i1 %cmp151, label %while.body.153, label %while.end.198

while.body.153:                                   ; preds = %while.cond.149
  %91 = load i32, i32* %data, align 4
  %and154 = and i32 %91, 15
  %cmp155 = icmp eq i32 %and154, 0
  br i1 %cmp155, label %if.then.157, label %if.else.160

if.then.157:                                      ; preds = %while.body.153
  %92 = load i32, i32* %hibit, align 4
  %sub158 = sub nsw i32 %92, 4
  store i32 %sub158, i32* %hibit, align 4
  %93 = load i32, i32* %data, align 4
  %shr159 = ashr i32 %93, 4
  store i32 %shr159, i32* %data, align 4
  br label %if.end.163

if.else.160:                                      ; preds = %while.body.153
  %94 = load i32, i32* %hibit, align 4
  %dec161 = add nsw i32 %94, -1
  store i32 %dec161, i32* %hibit, align 4
  %95 = load i32, i32* %data, align 4
  %shr162 = ashr i32 %95, 1
  store i32 %shr162, i32* %data, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.157
  %96 = load i32, i32* %hibit, align 4
  %cmp164 = icmp slt i32 %96, 20
  br i1 %cmp164, label %if.then.166, label %if.end.197

if.then.166:                                      ; preds = %if.end.163
  %97 = load i32, i32* @rp, align 4
  %inc167 = add nsw i32 %97, 1
  store i32 %inc167, i32* @rp, align 4
  %idxprom168 = sext i32 %97 to i64
  %arrayidx169 = getelementptr inbounds [2048 x i8], [2048 x i8]* @rbuf, i32 0, i64 %idxprom168
  %98 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %98 to i32
  %idxprom171 = sext i32 %conv170 to i64
  %arrayidx172 = getelementptr inbounds [256 x i32], [256 x i32]* @byte_tab, i32 0, i64 %idxprom171
  %99 = load i32, i32* %arrayidx172, align 4
  %100 = load i32, i32* %hibit, align 4
  %shl173 = shl i32 %99, %100
  %101 = load i32, i32* %data, align 4
  %or174 = or i32 %101, %shl173
  store i32 %or174, i32* %data, align 4
  %102 = load i32, i32* %hibit, align 4
  %add175 = add nsw i32 %102, 8
  store i32 %add175, i32* %hibit, align 4
  %103 = load i32, i32* @rp, align 4
  %104 = load i32, i32* @rs, align 4
  %cmp176 = icmp sge i32 %103, %104
  br i1 %cmp176, label %if.then.178, label %if.end.196

if.then.178:                                      ; preds = %if.then.166
  %105 = load i32, i32* %fd, align 4
  %call179 = call i64 @read(i32 %105, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @rbuf, i32 0, i32 0), i64 2048)
  %conv180 = trunc i64 %call179 to i32
  store i32 %conv180, i32* @rs, align 4
  %106 = load i32, i32* @rs, align 4
  %cmp181 = icmp slt i32 %106, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.then.178
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  br label %while.end.198

if.end.184:                                       ; preds = %if.then.178
  %107 = load i32, i32* @rs, align 4
  %108 = load i32, i32* %rr, align 4
  %add185 = add nsw i32 %108, %107
  store i32 %add185, i32* %rr, align 4
  %109 = load i32, i32* %rr, align 4
  %conv186 = sitofp i32 %109 to float
  %110 = load i32, i32* %rsize, align 4
  %conv187 = sitofp i32 %110 to float
  %div188 = fdiv float %conv186, %conv187
  %conv189 = fpext float %div188 to double
  %div190 = fdiv double %conv189, 2.000000e+00
  %call191 = call i32 @gimp_progress_update(double %div190)
  store i32 0, i32* @rp, align 4
  %111 = load i32, i32* @rs, align 4
  %cmp192 = icmp eq i32 %111, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.184
  br label %do_write

if.end.195:                                       ; preds = %if.end.184
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.166
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.163
  br label %while.cond.149

while.end.198:                                    ; preds = %if.then.183, %while.cond.149
  %112 = load i32, i32* %hibit, align 4
  %dec199 = add nsw i32 %112, -1
  store i32 %dec199, i32* %hibit, align 4
  %113 = load i32, i32* %data, align 4
  %shr200 = ashr i32 %113, 1
  store i32 %shr200, i32* %data, align 4
  store i32 0, i32* %color, align 4
  %114 = load i32, i32* %col, align 4
  %cmp201 = icmp eq i32 %114, 0
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %while.end.198
  %115 = load i32, i32* %cons_eol, align 4
  %inc204 = add nsw i32 %115, 1
  store i32 %inc204, i32* %cons_eol, align 4
  br label %if.end.240

if.else.205:                                      ; preds = %while.end.198
  %116 = load i32, i32* %col, align 4
  %117 = load i32, i32* %hcol, align 4
  %cmp206 = icmp sgt i32 %116, %117
  br i1 %cmp206, label %land.lhs.true, label %if.end.211

land.lhs.true:                                    ; preds = %if.else.205
  %118 = load i32, i32* %col, align 4
  %cmp208 = icmp sle i32 %118, 1728
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %land.lhs.true
  %119 = load i32, i32* %col, align 4
  store i32 %119, i32* %hcol, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %land.lhs.true, %if.else.205
  %120 = load i32, i32* %row, align 4
  %inc212 = add nsw i32 %120, 1
  store i32 %inc212, i32* %row, align 4
  %121 = load i32, i32* %row, align 4
  %122 = load i32, i32* %max_rows, align 4
  %cmp213 = icmp sge i32 %121, %122
  br i1 %cmp213, label %if.then.215, label %if.end.235

if.then.215:                                      ; preds = %if.end.211
  %123 = load i8*, i8** %bitmap, align 8
  %124 = load i32, i32* %max_rows, align 4
  %add217 = add nsw i32 %124, 500
  store i32 %add217, i32* %max_rows, align 4
  %mul218 = mul nsw i32 %add217, 1728
  %div219 = sdiv i32 %mul218, 8
  %conv220 = sext i32 %div219 to i64
  %call221 = call i8* @g_try_realloc(i8* %123, i64 %conv220)
  store i8* %call221, i8** %p216, align 8
  %125 = load i8*, i8** %p216, align 8
  %cmp222 = icmp eq i8* %125, null
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %if.then.215
  call void @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* @rs, align 4
  br label %if.end.234

if.else.225:                                      ; preds = %if.then.215
  %126 = load i8*, i8** %p216, align 8
  store i8* %126, i8** %bitmap, align 8
  %127 = load i32, i32* %row, align 4
  %mul226 = mul nsw i32 %127, 1728
  %div227 = sdiv i32 %mul226, 8
  %idxprom228 = sext i32 %div227 to i64
  %128 = load i8*, i8** %bitmap, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %128, i64 %idxprom228
  %129 = load i32, i32* %max_rows, align 4
  %130 = load i32, i32* %row, align 4
  %sub230 = sub nsw i32 %129, %130
  %mul231 = mul nsw i32 %sub230, 1728
  %div232 = sdiv i32 %mul231, 8
  %conv233 = sext i32 %div232 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx229, i8 0, i64 %conv233, i32 1, i1 false)
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.225, %if.then.224
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.211
  store i32 0, i32* %col, align 4
  %131 = load i32, i32* %row, align 4
  %mul236 = mul nsw i32 %131, 1728
  %div237 = sdiv i32 %mul236, 8
  %idxprom238 = sext i32 %div237 to i64
  %132 = load i8*, i8** %bitmap, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %132, i64 %idxprom238
  store i8* %arrayidx239, i8** %bp, align 8
  store i32 0, i32* %cons_eol, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.235, %if.then.203
  br label %if.end.277

if.else.241:                                      ; preds = %if.end.145
  %133 = load i32, i32* %col, align 4
  %134 = load i32, i32* %nr_pels, align 4
  %add242 = add nsw i32 %133, %134
  %cmp243 = icmp sgt i32 %add242, 1728
  br i1 %cmp243, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.else.241
  %135 = load i32, i32* %col, align 4
  %sub246 = sub nsw i32 1728, %135
  store i32 %sub246, i32* %nr_pels, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.else.241
  %136 = load i32, i32* %color, align 4
  %cmp248 = icmp eq i32 %136, 0
  br i1 %cmp248, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.end.247
  %137 = load i32, i32* %nr_pels, align 4
  %138 = load i32, i32* %col, align 4
  %add251 = add nsw i32 %138, %137
  store i32 %add251, i32* %col, align 4
  br label %if.end.270

if.else.252:                                      ; preds = %if.end.247
  %139 = load i32, i32* %col, align 4
  %and253 = and i32 %139, 7
  %shr254 = ashr i32 128, %and253
  store i32 %shr254, i32* %bit, align 4
  %140 = load i32, i32* %col, align 4
  %shr255 = ashr i32 %140, 3
  %idxprom256 = sext i32 %shr255 to i64
  %141 = load i8*, i8** %bp, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %141, i64 %idxprom256
  store i8* %arrayidx257, i8** %w, align 8
  %142 = load i32, i32* %nr_pels, align 4
  store i32 %142, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.252
  %143 = load i32, i32* %i, align 4
  %cmp258 = icmp sgt i32 %143, 0
  br i1 %cmp258, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %144 = load i32, i32* %bit, align 4
  %145 = load i8*, i8** %w, align 8
  %146 = load i8, i8* %145, align 1
  %conv260 = sext i8 %146 to i32
  %or261 = or i32 %conv260, %144
  %conv262 = trunc i32 %or261 to i8
  store i8 %conv262, i8* %145, align 1
  %147 = load i32, i32* %bit, align 4
  %shr263 = ashr i32 %147, 1
  store i32 %shr263, i32* %bit, align 4
  %148 = load i32, i32* %bit, align 4
  %cmp264 = icmp eq i32 %148, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %for.body
  store i32 128, i32* %bit, align 4
  %149 = load i8*, i8** %w, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr, i8** %w, align 8
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %for.body
  %150 = load i32, i32* %col, align 4
  %inc268 = add nsw i32 %150, 1
  store i32 %inc268, i32* %col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.267
  %151 = load i32, i32* %i, align 4
  %dec269 = add nsw i32 %151, -1
  store i32 %dec269, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.270

if.end.270:                                       ; preds = %for.end, %if.then.250
  %152 = load i32, i32* %nr_pels, align 4
  %cmp271 = icmp slt i32 %152, 64
  br i1 %cmp271, label %if.then.273, label %if.end.276

if.then.273:                                      ; preds = %if.end.270
  %153 = load i32, i32* %color, align 4
  %tobool274 = icmp ne i32 %153, 0
  %lnot275 = xor i1 %tobool274, true
  %lnot.ext = zext i1 %lnot275 to i32
  store i32 %lnot.ext, i32* %color, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.273, %if.end.270
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.240
  br label %while.cond

while.end.278:                                    ; preds = %land.end.37
  br label %do_write

do_write:                                         ; preds = %while.end.278, %if.then.194, %if.then.134, %if.then.66
  %154 = load i32, i32* %fd, align 4
  %cmp279 = icmp ne i32 %154, 0
  br i1 %cmp279, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %do_write
  %155 = load i32, i32* %fd, align 4
  %call282 = call i32 @close(i32 %155)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %do_write
  %156 = load i32, i32* %hcol, align 4
  %157 = load i32, i32* %row, align 4
  %158 = load i8*, i8** %bitmap, align 8
  %159 = load i32, i32* %bperrow, align 4
  %160 = load i8*, i8** %filename.addr, align 8
  %call284 = call i32 @emitgimp(i32 %156, i32 %157, i8* %158, i32 %159, i8* %160)
  store i32 %call284, i32* %image_id, align 4
  %161 = load i8*, i8** %bitmap, align 8
  call void @g_free(i8* %161)
  %162 = load i32, i32* %image_id, align 4
  store i32 %162, i32* %retval
  br label %return

return:                                           ; preds = %if.end.283, %if.then
  %163 = load i32, i32* %retval
  ret i32 %163
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @build_tree(%struct.g3_tree**, %struct.g3code*) #1

declare void @init_byte_tab(i32, i32*) #1

declare i32 @open(i8*, i32, ...) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i64 @read(i32, i8*, i64) #1

declare void @perror(i8*) #1

declare i32 @close(i32) #1

; Function Attrs: noreturn
declare void @gimp_quit() #5

declare i32 @gimp_progress_update(double) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_printerr(i8*, ...) #1

declare i8* @g_try_realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @emitgimp(i32 %hcol, i32 %row, i8* %bitmap, i32 %bperrow, i8* %filename) #0 {
entry:
  %hcol.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %bitmap.addr = alloca i8*, align 8
  %bperrow.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %buf = alloca i8*, align 8
  %tmp = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %tile_height = alloca i32, align 4
  store i32 %hcol, i32* %hcol.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %bitmap, i8** %bitmap.addr, align 8
  store i32 %bperrow, i32* %bperrow.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8 0, i8* %tmp, align 1
  %0 = load i32, i32* %hcol.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  %call = call i32 @gimp_image_new(i32 %0, i32 %1, i32 1)
  store i32 %call, i32* %image_ID, align 4
  %2 = load i32, i32* %image_ID, align 4
  %3 = load i8*, i8** %filename.addr, align 8
  %call6 = call i32 @gimp_image_set_filename(i32 %2, i8* %3)
  %4 = load i32, i32* %image_ID, align 4
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #6
  %5 = load i32, i32* %hcol.addr, align 4
  %6 = load i32, i32* %row.addr, align 4
  %call8 = call i32 @gimp_layer_new(i32 %4, i8* %call7, i32 %5, i32 %6, i32 2, double 1.000000e+02, i32 0)
  store i32 %call8, i32* %layer_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %8 = load i32, i32* %layer_ID, align 4
  %call9 = call i32 @gimp_image_insert_layer(i32 %7, i32 %8, i32 -1, i32 0)
  %9 = load i32, i32* %layer_ID, align 4
  %call10 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %9)
  store %struct._GimpDrawable* %call10, %struct._GimpDrawable** %drawable, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %10, i32 0, i32 0, i32 %12, i32 %14, i32 1, i32 0)
  %call11 = call i32 @gimp_tile_height() #8
  store i32 %call11, i32* %tile_height, align 4
  %15 = load i32, i32* %hcol.addr, align 4
  %16 = load i32, i32* %tile_height, align 4
  %mul = mul nsw i32 %15, %16
  %conv = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call12, i8** %buf, align 8
  store i32 0, i32* %xx, align 4
  store i32 0, i32* %yy, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %row.addr, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %hcol.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %x, align 4
  %and = and i32 %21, 7
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.17
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %bperrow.addr, align 4
  %mul20 = mul nsw i32 %22, %23
  %24 = load i32, i32* %x, align 4
  %shr = ashr i32 %24, 3
  %add = add nsw i32 %mul20, %shr
  %idxprom = sext i32 %add to i64
  %25 = load i8*, i8** %bitmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  store i8 %26, i8* %tmp, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.17
  %27 = load i8, i8* %tmp, align 1
  %conv21 = zext i8 %27 to i32
  %28 = load i32, i32* %x, align 4
  %and22 = and i32 %28, 7
  %shr23 = ashr i32 128, %and22
  %and24 = and i32 %conv21, %shr23
  %tobool = icmp ne i32 %and24, 0
  %cond = select i1 %tobool, i32 0, i32 255
  %conv25 = trunc i32 %cond to i8
  %29 = load i32, i32* %xx, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %xx, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load i8*, i8** %buf, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %x, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %x, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %yy, align 4
  %sub = sub nsw i32 %32, %33
  %34 = load i32, i32* %tile_height, align 4
  %sub29 = sub nsw i32 %34, 1
  %cmp30 = icmp eq i32 %sub, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %for.end
  %35 = load i8*, i8** %buf, align 8
  %36 = load i32, i32* %yy, align 4
  %37 = load i32, i32* %hcol.addr, align 4
  %38 = load i32, i32* %tile_height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %35, i32 0, i32 %36, i32 %37, i32 %38)
  %39 = load i32, i32* %y, align 4
  %conv33 = sitofp i32 %39 to float
  %40 = load i32, i32* %row.addr, align 4
  %conv34 = sitofp i32 %40 to float
  %div = fdiv float %conv33, %conv34
  %conv35 = fpext float %div to double
  %div36 = fdiv double %conv35, 2.000000e+00
  %add37 = fadd double 5.000000e-01, %div36
  %call38 = call i32 @gimp_progress_update(double %add37)
  store i32 0, i32* %xx, align 4
  %41 = load i32, i32* %tile_height, align 4
  %42 = load i32, i32* %yy, align 4
  %add39 = add nsw i32 %42, %41
  store i32 %add39, i32* %yy, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.32, %for.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %43 = load i32, i32* %y, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %y, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %44 = load i32, i32* %row.addr, align 4
  %45 = load i32, i32* %yy, align 4
  %sub44 = sub nsw i32 %44, %45
  %tobool45 = icmp ne i32 %sub44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.end.43
  %46 = load i8*, i8** %buf, align 8
  %47 = load i32, i32* %yy, align 4
  %48 = load i32, i32* %hcol.addr, align 4
  %49 = load i32, i32* %row.addr, align 4
  %50 = load i32, i32* %yy, align 4
  %sub47 = sub nsw i32 %49, %50
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %46, i32 0, i32 %47, i32 %48, i32 %sub47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %for.end.43
  %call49 = call i32 @gimp_progress_update(double 1.000000e+00)
  %51 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %51)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %52)
  %53 = load i32, i32* %image_ID, align 4
  ret i32 %53
}

declare void @g_free(i8*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #4

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
