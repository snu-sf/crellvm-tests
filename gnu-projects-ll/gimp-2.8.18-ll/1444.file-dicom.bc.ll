; ModuleID = './plug-ins/common/file-dicom.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.DICOMELEMENT = type { i16, i16, [3 x i8], i32, i8*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DicomInfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GByteArray = type { i8*, i32 }
%struct._GDate = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon = type { %struct._IO_FILE*, %struct._GByteArray*, i32 }
%struct.anon.0 = type { %struct._IO_FILE*, %struct._GByteArray*, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"The name of the file to save\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"file-dicom-load\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"loads files of the dicom file format\00", align 1
@.str.13 = private unnamed_addr constant [179 x i8] c"Load a file in the DICOM standard format.The standard is defined at http://medical.nema.org/. The plug-in currently only supports reading images with uncompressed pixel sections.\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Dov Grobgeld\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Dov Grobgeld <dov@imagic.weizmann.ac.il>\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"DICOM image\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"image/x-dcm\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"dcm,dicom\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"128,string,DICM\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"file-dicom-save\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Save file in the DICOM file format\00", align 1
@.str.24 = private unnamed_addr constant [271 x i8] c"Save an image in the medical standard DICOM image formats. The standard is defined at http://medical.nema.org/. The file format is defined in section 10 of the standard. The files are saved uncompressed and the compulsory DICOM tags are filled with default dummy values.\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Digital Imaging and Communications in Medicine image\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"RGB, GRAY\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"file-dicom\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"DICOM\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"PAPYRUS\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"'%s' is a PAPYRUS DICOM file.\0AThis plug-in does not support this type yet.\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"DICM\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"'%s' is not a DICOM file.\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"OB\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"'%s' seems to have an incorrect value field length.\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"1.2.840.10008.1.2\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"1.2.840.10008.1.2.1\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"1.2.840.10008.1.2.2\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"dcm/%04x-%04x-%s\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"'%s' has a bpp of %d which GIMP cannot handle.\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"'%s' has a larger image size (%d x %d) than GIMP can handle.\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"'%s' has samples per pixel of %d which GIMP cannot handle.\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Cannot save images with alpha channel.\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"MONOCHROME2\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"Cannot operate on unknown image types.\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"%04d%02d%02d\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"dcm\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"0x%s\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"\00\01\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"UI\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"GIMP Dicom Plugin 1.0\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"ORIGINAL\5CPRIMARY\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"1.2.840.10008.5.1.4.1.1.7\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"000000.000000\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"WSD\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"DOE^WILBER\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"314159265\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@dicom_remove_gimp_specified_elements.remove = private unnamed_addr constant [9 x %struct.DICOMELEMENT] [%struct.DICOMELEMENT { i16 40, i16 2, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 4, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 16, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 17, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 256, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 257, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 258, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT { i16 40, i16 259, [3 x i8] zeroinitializer, i32 0, i8* null, i32 0 }, %struct.DICOMELEMENT zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [12 x i8] c"OB|OW|SQ|UN\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"UI|OB\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.84 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %do.end
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %call7 = call i32 @load_image(i8* %6, %struct._GError** %error)
  store i32 %call7, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %cmp8 = icmp ne i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %8 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %8, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %9 = load i32, i32* %image_ID, align 4
  store i32 %9, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %10, null
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %11, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  store i8* %13, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.9
  br label %if.end.54

if.else.12:                                       ; preds = %do.end
  %14 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0)) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.52

if.then.15:                                       ; preds = %if.else.12
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 1
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %16 = load i32, i32* %d_int3218, align 4
  store i32 %16, i32* %image_ID, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 2
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %18 = load i32, i32* %d_int3221, align 4
  store i32 %18, i32* %drawable_ID, align 4
  %19 = load i32, i32* %run_mode, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.15, %if.then.15
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call22 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 3)
  store i32 %call22, i32* %export, align 4
  %20 = load i32, i32* %export, align 4
  %cmp23 = icmp eq i32 %20, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.25:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.25
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default.32 [
    i32 0, label %sw.bb.26
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.31
  ]

sw.bb.26:                                         ; preds = %sw.epilog
  br label %sw.epilog.33

sw.bb.27:                                         ; preds = %sw.epilog
  %22 = load i32, i32* %nparams.addr, align 4
  %cmp28 = icmp ne i32 %22, 5
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.27
  store i32 1, i32* %status, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %sw.bb.27
  br label %sw.epilog.33

sw.bb.31:                                         ; preds = %sw.epilog
  br label %sw.epilog.33

sw.default.32:                                    ; preds = %sw.epilog
  br label %sw.epilog.33

sw.epilog.33:                                     ; preds = %sw.default.32, %sw.bb.31, %if.end.30, %sw.bb.26
  %23 = load i32, i32* %status, align 4
  %cmp34 = icmp eq i32 %23, 3
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %sw.epilog.33
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 3
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_string38 = bitcast %union._GimpParamData* %data37 to i8**
  %25 = load i8*, i8** %d_string38, align 8
  %26 = load i32, i32* %image_ID, align 4
  %27 = load i32, i32* %drawable_ID, align 4
  %call39 = call i32 @save_image(i8* %25, i32 %26, i32 %27, %struct._GError** %error)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.46, label %if.then.41

if.then.41:                                       ; preds = %if.then.35
  store i32 0, i32* %status, align 4
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool42 = icmp ne %struct._GError* %28, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.41
  %29 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %29, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %30 = load %struct._GError*, %struct._GError** %error, align 8
  %message44 = getelementptr inbounds %struct._GError, %struct._GError* %30, i32 0, i32 2
  %31 = load i8*, i8** %message44, align 8
  store i8* %31, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %sw.epilog.33
  %32 = load i32, i32* %export, align 4
  %cmp48 = icmp eq i32 %32, 2
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %33 = load i32, i32* %image_ID, align 4
  %call50 = call i32 @gimp_image_delete(i32 %33)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  br label %if.end.53

if.else.52:                                       ; preds = %if.else.12
  store i32 1, i32* %status, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.11
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.54, %if.then.24
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

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

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
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %elements = alloca %struct._GSList*, align 8
  %DICOM = alloca %struct._IO_FILE*, align 8
  %buf = alloca [500 x i8], align 16
  %dicominfo = alloca %struct._DicomInfo*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %samples_per_pixel = alloca i32, align 4
  %bpp = alloca i32, align 4
  %bits_stored = alloca i32, align 4
  %high_bit = alloca i32, align 4
  %pix_buf = alloca i8*, align 8
  %is_signed = alloca i32, align 4
  %in_sequence = alloca i8, align 1
  %group_word = alloca i16, align 2
  %element_word = alloca i16, align 2
  %value_rep = alloca [3 x i8], align 1
  %element_length = alloca i32, align 4
  %ctx_us = alloca i16, align 2
  %value = alloca i8*, align 8
  %tag = alloca i32, align 4
  %do_toggle_endian = alloca i32, align 4
  %implicit_encoding = alloca i32, align 4
  %element_length_chars = alloca [4 x i8], align 1
  %el16 = alloca i16, align 2
  %parasite = alloca %struct._GimpParasite*, align 8
  %pname = alloca [255 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store volatile i32 -1, i32* %image_ID, align 4
  store %struct._GSList* null, %struct._GSList** %elements, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %samples_per_pixel, align 4
  store i32 0, i32* %bpp, align 4
  store i32 0, i32* %bits_stored, align 4
  store i32 0, i32* %high_bit, align 4
  store i8* null, i8** %pix_buf, align 8
  store i32 0, i32* %is_signed, align 4
  store i8 0, i8* %in_sequence, align 1
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %DICOM, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)) #6
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %call11 = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %7 = bitcast i8* %call11 to %struct._DicomInfo*
  store %struct._DicomInfo* %7, %struct._DicomInfo** %dicominfo, align 8
  %arraydecay = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call12 = call i64 @fread(i8* %arraydecay, i64 1, i64 128, %struct._IO_FILE* %8)
  %arraydecay13 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %call14 = call i32 @g_ascii_strncasecmp(i8* %arraydecay13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i64 7)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %9 = load i8*, i8** %filename.addr, align 8
  %call16 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.35, i32 0, i32 0), i8* %call16)
  %10 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %11 = bitcast %struct._DicomInfo* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %12)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call20 = call i64 @fread(i8* %arraydecay19, i64 1, i64 4, %struct._IO_FILE* %13)
  %arraydecay21 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %call22 = call i32 @g_ascii_strncasecmp(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i64 4)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.18
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @g_file_error_quark()
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0)) #6
  %15 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %14, i32 %call25, i32 24, i8* %call26, i8* %call27)
  %16 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %17 = bitcast %struct._DicomInfo* %16 to i8*
  call void @g_free(i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %18)
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.18
  br label %while.cond

while.cond:                                       ; preds = %if.end.412, %if.then.343, %if.then.331, %if.then.327, %if.then.323, %if.end.29
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call30 = call i32 @feof(%struct._IO_FILE* %19) #6
  %tobool31 = icmp ne i32 %call30, 0
  %lnot = xor i1 %tobool31, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %do_toggle_endian, align 4
  store i32 0, i32* %implicit_encoding, align 4
  %20 = bitcast i16* %group_word to i8*
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call32 = call i64 @fread(i8* %20, i64 1, i64 2, %struct._IO_FILE* %21)
  %cmp33 = icmp eq i64 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  br label %while.end

if.end.35:                                        ; preds = %while.body
  %22 = load i16, i16* %group_word, align 2
  %conv = zext i16 %22 to i32
  %shr = ashr i32 %conv, 8
  %conv36 = trunc i32 %shr to i16
  %conv37 = zext i16 %conv36 to i32
  %23 = load i16, i16* %group_word, align 2
  %conv38 = zext i16 %23 to i32
  %shl = shl i32 %conv38, 8
  %conv39 = trunc i32 %shl to i16
  %conv40 = zext i16 %conv39 to i32
  %or = or i32 %conv37, %conv40
  %conv41 = trunc i32 %or to i16
  %conv42 = zext i16 %conv41 to i32
  %shr43 = ashr i32 %conv42, 8
  %conv44 = trunc i32 %shr43 to i16
  %conv45 = zext i16 %conv44 to i32
  %24 = load i16, i16* %group_word, align 2
  %conv46 = zext i16 %24 to i32
  %shr47 = ashr i32 %conv46, 8
  %conv48 = trunc i32 %shr47 to i16
  %conv49 = zext i16 %conv48 to i32
  %25 = load i16, i16* %group_word, align 2
  %conv50 = zext i16 %25 to i32
  %shl51 = shl i32 %conv50, 8
  %conv52 = trunc i32 %shl51 to i16
  %conv53 = zext i16 %conv52 to i32
  %or54 = or i32 %conv49, %conv53
  %conv55 = trunc i32 %or54 to i16
  %conv56 = zext i16 %conv55 to i32
  %shl57 = shl i32 %conv56, 8
  %conv58 = trunc i32 %shl57 to i16
  %conv59 = zext i16 %conv58 to i32
  %or60 = or i32 %conv45, %conv59
  %conv61 = trunc i32 %or60 to i16
  store i16 %conv61, i16* %group_word, align 2
  %26 = bitcast i16* %element_word to i8*
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call62 = call i64 @fread(i8* %26, i64 1, i64 2, %struct._IO_FILE* %27)
  %28 = load i16, i16* %element_word, align 2
  %conv63 = zext i16 %28 to i32
  %shr64 = ashr i32 %conv63, 8
  %conv65 = trunc i32 %shr64 to i16
  %conv66 = zext i16 %conv65 to i32
  %29 = load i16, i16* %element_word, align 2
  %conv67 = zext i16 %29 to i32
  %shl68 = shl i32 %conv67, 8
  %conv69 = trunc i32 %shl68 to i16
  %conv70 = zext i16 %conv69 to i32
  %or71 = or i32 %conv66, %conv70
  %conv72 = trunc i32 %or71 to i16
  %conv73 = zext i16 %conv72 to i32
  %shr74 = ashr i32 %conv73, 8
  %conv75 = trunc i32 %shr74 to i16
  %conv76 = zext i16 %conv75 to i32
  %30 = load i16, i16* %element_word, align 2
  %conv77 = zext i16 %30 to i32
  %shr78 = ashr i32 %conv77, 8
  %conv79 = trunc i32 %shr78 to i16
  %conv80 = zext i16 %conv79 to i32
  %31 = load i16, i16* %element_word, align 2
  %conv81 = zext i16 %31 to i32
  %shl82 = shl i32 %conv81, 8
  %conv83 = trunc i32 %shl82 to i16
  %conv84 = zext i16 %conv83 to i32
  %or85 = or i32 %conv80, %conv84
  %conv86 = trunc i32 %or85 to i16
  %conv87 = zext i16 %conv86 to i32
  %shl88 = shl i32 %conv87, 8
  %conv89 = trunc i32 %shl88 to i16
  %conv90 = zext i16 %conv89 to i32
  %or91 = or i32 %conv76, %conv90
  %conv92 = trunc i32 %or91 to i16
  store i16 %conv92, i16* %element_word, align 2
  %32 = load i16, i16* %group_word, align 2
  %conv93 = zext i16 %32 to i32
  %shl94 = shl i32 %conv93, 16
  %33 = load i16, i16* %element_word, align 2
  %conv95 = zext i16 %33 to i32
  %or96 = or i32 %shl94, %conv95
  store i32 %or96, i32* %tag, align 4
  %arraydecay97 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call98 = call i64 @fread(i8* %arraydecay97, i64 2, i64 1, %struct._IO_FILE* %34)
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  %35 = load i32, i32* %tag, align 4
  %cmp99 = icmp ugt i32 %35, 196607
  br i1 %cmp99, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.35
  %36 = load i32, i32* %implicit_encoding, align 4
  %tobool101 = icmp ne i32 %36, 0
  br i1 %tobool101, label %if.then.130, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.35
  %arrayidx102 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 0
  %37 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %37 to i32
  %cmp104 = icmp slt i32 %conv103, 65
  br i1 %cmp104, label %land.lhs.true.121, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false
  %arrayidx107 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 0
  %38 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %38 to i32
  %cmp109 = icmp sgt i32 %conv108, 90
  br i1 %cmp109, label %land.lhs.true.121, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.106
  %arrayidx112 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 1
  %39 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %39 to i32
  %cmp114 = icmp slt i32 %conv113, 65
  br i1 %cmp114, label %land.lhs.true.121, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.111
  %arrayidx117 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 1
  %40 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %40 to i32
  %cmp119 = icmp sgt i32 %conv118, 90
  br i1 %cmp119, label %land.lhs.true.121, label %if.else

land.lhs.true.121:                                ; preds = %lor.lhs.false.116, %lor.lhs.false.111, %lor.lhs.false.106, %lor.lhs.false
  %arrayidx122 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 0
  %41 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %41 to i32
  %cmp124 = icmp eq i32 %conv123, 32
  br i1 %cmp124, label %land.lhs.true.126, label %if.then.130

land.lhs.true.126:                                ; preds = %land.lhs.true.121
  %arrayidx127 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 1
  %42 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %42 to i32
  %tobool129 = icmp ne i32 %conv128, 0
  br i1 %tobool129, label %if.else, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.126, %land.lhs.true.121, %land.lhs.true
  %arrayidx131 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 0
  %43 = load i8, i8* %arrayidx131, align 1
  %arrayidx132 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i64 0
  store i8 %43, i8* %arrayidx132, align 1
  %arrayidx133 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i64 1
  %44 = load i8, i8* %arrayidx133, align 1
  %arrayidx134 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i64 1
  store i8 %44, i8* %arrayidx134, align 1
  %arraydecay135 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call136 = call i8* @strcpy(i8* %arraydecay135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)) #6
  %arrayidx137 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i64 2
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call138 = call i64 @fread(i8* %arrayidx137, i64 1, i64 2, %struct._IO_FILE* %45)
  %arraydecay139 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %46 = bitcast i8* %arraydecay139 to i32*
  %47 = load i32, i32* %46, align 4
  %and = and i32 %47, 255
  %shl140 = shl i32 %and, 24
  %arraydecay141 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %48 = bitcast i8* %arraydecay141 to i32*
  %49 = load i32, i32* %48, align 4
  %and142 = and i32 %49, 65280
  %shl143 = shl i32 %and142, 8
  %or144 = or i32 %shl140, %shl143
  %arraydecay145 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %50 = bitcast i8* %arraydecay145 to i32*
  %51 = load i32, i32* %50, align 4
  %and146 = and i32 %51, 16711680
  %shr147 = lshr i32 %and146, 8
  %or148 = or i32 %or144, %shr147
  %arraydecay149 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %52 = bitcast i8* %arraydecay149 to i32*
  %53 = load i32, i32* %52, align 4
  %and150 = and i32 %53, -16777216
  %shr151 = lshr i32 %and150, 24
  %or152 = or i32 %or148, %shr151
  %and153 = and i32 %or152, 255
  %shl154 = shl i32 %and153, 24
  %arraydecay155 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %54 = bitcast i8* %arraydecay155 to i32*
  %55 = load i32, i32* %54, align 4
  %and156 = and i32 %55, 255
  %shl157 = shl i32 %and156, 24
  %arraydecay158 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %56 = bitcast i8* %arraydecay158 to i32*
  %57 = load i32, i32* %56, align 4
  %and159 = and i32 %57, 65280
  %shl160 = shl i32 %and159, 8
  %or161 = or i32 %shl157, %shl160
  %arraydecay162 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %58 = bitcast i8* %arraydecay162 to i32*
  %59 = load i32, i32* %58, align 4
  %and163 = and i32 %59, 16711680
  %shr164 = lshr i32 %and163, 8
  %or165 = or i32 %or161, %shr164
  %arraydecay166 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %60 = bitcast i8* %arraydecay166 to i32*
  %61 = load i32, i32* %60, align 4
  %and167 = and i32 %61, -16777216
  %shr168 = lshr i32 %and167, 24
  %or169 = or i32 %or165, %shr168
  %and170 = and i32 %or169, 65280
  %shl171 = shl i32 %and170, 8
  %or172 = or i32 %shl154, %shl171
  %arraydecay173 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %62 = bitcast i8* %arraydecay173 to i32*
  %63 = load i32, i32* %62, align 4
  %and174 = and i32 %63, 255
  %shl175 = shl i32 %and174, 24
  %arraydecay176 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %64 = bitcast i8* %arraydecay176 to i32*
  %65 = load i32, i32* %64, align 4
  %and177 = and i32 %65, 65280
  %shl178 = shl i32 %and177, 8
  %or179 = or i32 %shl175, %shl178
  %arraydecay180 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %66 = bitcast i8* %arraydecay180 to i32*
  %67 = load i32, i32* %66, align 4
  %and181 = and i32 %67, 16711680
  %shr182 = lshr i32 %and181, 8
  %or183 = or i32 %or179, %shr182
  %arraydecay184 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %68 = bitcast i8* %arraydecay184 to i32*
  %69 = load i32, i32* %68, align 4
  %and185 = and i32 %69, -16777216
  %shr186 = lshr i32 %and185, 24
  %or187 = or i32 %or183, %shr186
  %and188 = and i32 %or187, 16711680
  %shr189 = lshr i32 %and188, 8
  %or190 = or i32 %or172, %shr189
  %arraydecay191 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %70 = bitcast i8* %arraydecay191 to i32*
  %71 = load i32, i32* %70, align 4
  %and192 = and i32 %71, 255
  %shl193 = shl i32 %and192, 24
  %arraydecay194 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %72 = bitcast i8* %arraydecay194 to i32*
  %73 = load i32, i32* %72, align 4
  %and195 = and i32 %73, 65280
  %shl196 = shl i32 %and195, 8
  %or197 = or i32 %shl193, %shl196
  %arraydecay198 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %74 = bitcast i8* %arraydecay198 to i32*
  %75 = load i32, i32* %74, align 4
  %and199 = and i32 %75, 16711680
  %shr200 = lshr i32 %and199, 8
  %or201 = or i32 %or197, %shr200
  %arraydecay202 = getelementptr inbounds [4 x i8], [4 x i8]* %element_length_chars, i32 0, i32 0
  %76 = bitcast i8* %arraydecay202 to i32*
  %77 = load i32, i32* %76, align 4
  %and203 = and i32 %77, -16777216
  %shr204 = lshr i32 %and203, 24
  %or205 = or i32 %or201, %shr204
  %and206 = and i32 %or205, -16777216
  %shr207 = lshr i32 %and206, 24
  %or208 = or i32 %or190, %shr207
  store i32 %or208, i32* %element_length, align 4
  br label %if.end.320

if.else:                                          ; preds = %land.lhs.true.126, %lor.lhs.false.116
  %arraydecay209 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call210 = call i32 @strncmp(i8* %arraydecay209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i64 2) #8
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then.228, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.else
  %arraydecay214 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call215 = call i32 @strncmp(i8* %arraydecay214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i64 2) #8
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then.228, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %lor.lhs.false.213
  %arraydecay219 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call220 = call i32 @strncmp(i8* %arraydecay219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i64 2) #8
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then.228, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.218
  %arraydecay224 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call225 = call i32 @strncmp(i8* %arraydecay224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i64 2) #8
  %cmp226 = icmp eq i32 %call225, 0
  br i1 %cmp226, label %if.then.228, label %if.else.286

if.then.228:                                      ; preds = %lor.lhs.false.223, %lor.lhs.false.218, %lor.lhs.false.213, %if.else
  %78 = bitcast i32* %element_length to i8*
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call229 = call i64 @fread(i8* %78, i64 1, i64 2, %struct._IO_FILE* %79)
  %80 = bitcast i32* %element_length to i8*
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call230 = call i64 @fread(i8* %80, i64 1, i64 4, %struct._IO_FILE* %81)
  %82 = load i32, i32* %element_length, align 4
  %and231 = and i32 %82, 255
  %shl232 = shl i32 %and231, 24
  %83 = load i32, i32* %element_length, align 4
  %and233 = and i32 %83, 65280
  %shl234 = shl i32 %and233, 8
  %or235 = or i32 %shl232, %shl234
  %84 = load i32, i32* %element_length, align 4
  %and236 = and i32 %84, 16711680
  %shr237 = lshr i32 %and236, 8
  %or238 = or i32 %or235, %shr237
  %85 = load i32, i32* %element_length, align 4
  %and239 = and i32 %85, -16777216
  %shr240 = lshr i32 %and239, 24
  %or241 = or i32 %or238, %shr240
  %and242 = and i32 %or241, 255
  %shl243 = shl i32 %and242, 24
  %86 = load i32, i32* %element_length, align 4
  %and244 = and i32 %86, 255
  %shl245 = shl i32 %and244, 24
  %87 = load i32, i32* %element_length, align 4
  %and246 = and i32 %87, 65280
  %shl247 = shl i32 %and246, 8
  %or248 = or i32 %shl245, %shl247
  %88 = load i32, i32* %element_length, align 4
  %and249 = and i32 %88, 16711680
  %shr250 = lshr i32 %and249, 8
  %or251 = or i32 %or248, %shr250
  %89 = load i32, i32* %element_length, align 4
  %and252 = and i32 %89, -16777216
  %shr253 = lshr i32 %and252, 24
  %or254 = or i32 %or251, %shr253
  %and255 = and i32 %or254, 65280
  %shl256 = shl i32 %and255, 8
  %or257 = or i32 %shl243, %shl256
  %90 = load i32, i32* %element_length, align 4
  %and258 = and i32 %90, 255
  %shl259 = shl i32 %and258, 24
  %91 = load i32, i32* %element_length, align 4
  %and260 = and i32 %91, 65280
  %shl261 = shl i32 %and260, 8
  %or262 = or i32 %shl259, %shl261
  %92 = load i32, i32* %element_length, align 4
  %and263 = and i32 %92, 16711680
  %shr264 = lshr i32 %and263, 8
  %or265 = or i32 %or262, %shr264
  %93 = load i32, i32* %element_length, align 4
  %and266 = and i32 %93, -16777216
  %shr267 = lshr i32 %and266, 24
  %or268 = or i32 %or265, %shr267
  %and269 = and i32 %or268, 16711680
  %shr270 = lshr i32 %and269, 8
  %or271 = or i32 %or257, %shr270
  %94 = load i32, i32* %element_length, align 4
  %and272 = and i32 %94, 255
  %shl273 = shl i32 %and272, 24
  %95 = load i32, i32* %element_length, align 4
  %and274 = and i32 %95, 65280
  %shl275 = shl i32 %and274, 8
  %or276 = or i32 %shl273, %shl275
  %96 = load i32, i32* %element_length, align 4
  %and277 = and i32 %96, 16711680
  %shr278 = lshr i32 %and277, 8
  %or279 = or i32 %or276, %shr278
  %97 = load i32, i32* %element_length, align 4
  %and280 = and i32 %97, -16777216
  %shr281 = lshr i32 %and280, 24
  %or282 = or i32 %or279, %shr281
  %and283 = and i32 %or282, -16777216
  %shr284 = lshr i32 %and283, 24
  %or285 = or i32 %or271, %shr284
  store i32 %or285, i32* %element_length, align 4
  br label %if.end.319

if.else.286:                                      ; preds = %lor.lhs.false.223
  %98 = bitcast i16* %el16 to i8*
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call287 = call i64 @fread(i8* %98, i64 1, i64 2, %struct._IO_FILE* %99)
  %100 = load i16, i16* %el16, align 2
  %conv288 = zext i16 %100 to i32
  %shr289 = ashr i32 %conv288, 8
  %conv290 = trunc i32 %shr289 to i16
  %conv291 = zext i16 %conv290 to i32
  %101 = load i16, i16* %el16, align 2
  %conv292 = zext i16 %101 to i32
  %shl293 = shl i32 %conv292, 8
  %conv294 = trunc i32 %shl293 to i16
  %conv295 = zext i16 %conv294 to i32
  %or296 = or i32 %conv291, %conv295
  %conv297 = trunc i32 %or296 to i16
  %conv298 = zext i16 %conv297 to i32
  %shr299 = ashr i32 %conv298, 8
  %conv300 = trunc i32 %shr299 to i16
  %conv301 = zext i16 %conv300 to i32
  %102 = load i16, i16* %el16, align 2
  %conv302 = zext i16 %102 to i32
  %shr303 = ashr i32 %conv302, 8
  %conv304 = trunc i32 %shr303 to i16
  %conv305 = zext i16 %conv304 to i32
  %103 = load i16, i16* %el16, align 2
  %conv306 = zext i16 %103 to i32
  %shl307 = shl i32 %conv306, 8
  %conv308 = trunc i32 %shl307 to i16
  %conv309 = zext i16 %conv308 to i32
  %or310 = or i32 %conv305, %conv309
  %conv311 = trunc i32 %or310 to i16
  %conv312 = zext i16 %conv311 to i32
  %shl313 = shl i32 %conv312, 8
  %conv314 = trunc i32 %shl313 to i16
  %conv315 = zext i16 %conv314 to i32
  %or316 = or i32 %conv301, %conv315
  %conv317 = trunc i32 %or316 to i16
  %conv318 = zext i16 %conv317 to i32
  store i32 %conv318, i32* %element_length, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.286, %if.then.228
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.130
  %104 = load i32, i32* %element_length, align 4
  %cmp321 = icmp eq i32 %104, -1
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.end.320
  store i8 1, i8* %in_sequence, align 1
  br label %while.cond

if.end.324:                                       ; preds = %if.end.320
  %105 = load i32, i32* %tag, align 4
  %cmp325 = icmp eq i32 %105, -73507
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %if.end.324
  store i8 0, i8* %in_sequence, align 1
  br label %while.cond

if.end.328:                                       ; preds = %if.end.324
  %106 = load i32, i32* %tag, align 4
  %cmp329 = icmp eq i32 %106, -73728
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %if.end.328
  br label %while.cond

if.end.332:                                       ; preds = %if.end.328
  %107 = load i32, i32* %element_length, align 4
  %cmp333 = icmp uge i32 %107, -7
  br i1 %cmp333, label %if.then.335, label %if.end.337

if.then.335:                                      ; preds = %if.end.332
  %108 = load i8*, i8** %filename.addr, align 8
  %call336 = call i8* @gimp_filename_to_utf8(i8* %108)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0), i8* %call336)
  call void @gimp_quit() #9
  unreachable

if.end.337:                                       ; preds = %if.end.332
  %109 = load i32, i32* %element_length, align 4
  %add = add i32 %109, 4
  %conv338 = zext i32 %add to i64
  %call339 = call noalias i8* @g_malloc0_n(i64 %conv338, i64 1)
  store i8* %call339, i8** %value, align 8
  %110 = load i8*, i8** %value, align 8
  %111 = load i32, i32* %element_length, align 4
  %conv340 = zext i32 %111 to i64
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call341 = call i64 @fread(i8* %110, i64 1, i64 %conv340, %struct._IO_FILE* %112)
  %113 = load i8, i8* %in_sequence, align 1
  %tobool342 = icmp ne i8 %113, 0
  br i1 %tobool342, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %if.end.337
  %114 = load i8*, i8** %value, align 8
  call void @g_free(i8* %114)
  br label %while.cond

if.end.344:                                       ; preds = %if.end.337
  %115 = load i8*, i8** %value, align 8
  %116 = bitcast i8* %115 to i16*
  %117 = load i16, i16* %116, align 2
  store i16 %117, i16* %ctx_us, align 2
  %118 = load i16, i16* %group_word, align 2
  %conv345 = zext i16 %118 to i32
  %cmp346 = icmp eq i32 %conv345, 2
  br i1 %cmp346, label %if.then.348, label %if.else.367

if.then.348:                                      ; preds = %if.end.344
  %119 = load i16, i16* %element_word, align 2
  %conv349 = zext i16 %119 to i32
  switch i32 %conv349, label %sw.epilog [
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.348
  %120 = load i8*, i8** %value, align 8
  %call350 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* %120) #8
  %cmp351 = icmp eq i32 %call350, 0
  br i1 %cmp351, label %if.then.353, label %if.else.354

if.then.353:                                      ; preds = %sw.bb
  store i32 0, i32* %do_toggle_endian, align 4
  store i32 1, i32* %implicit_encoding, align 4
  br label %if.end.366

if.else.354:                                      ; preds = %sw.bb
  %121 = load i8*, i8** %value, align 8
  %call355 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %121) #8
  %cmp356 = icmp eq i32 %call355, 0
  br i1 %cmp356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %if.else.354
  store i32 0, i32* %do_toggle_endian, align 4
  br label %if.end.365

if.else.359:                                      ; preds = %if.else.354
  %122 = load i8*, i8** %value, align 8
  %call360 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %122) #8
  %cmp361 = icmp eq i32 %call360, 0
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.else.359
  store i32 1, i32* %do_toggle_endian, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.363, %if.else.359
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.358
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.then.353
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.348, %if.end.366
  br label %if.end.391

if.else.367:                                      ; preds = %if.end.344
  %123 = load i16, i16* %group_word, align 2
  %conv368 = zext i16 %123 to i32
  %cmp369 = icmp eq i32 %conv368, 40
  br i1 %cmp369, label %if.then.371, label %if.end.390

if.then.371:                                      ; preds = %if.else.367
  %124 = load i16, i16* %element_word, align 2
  %conv372 = zext i16 %124 to i32
  switch i32 %conv372, label %sw.epilog.389 [
    i32 2, label %sw.bb.373
    i32 16, label %sw.bb.375
    i32 17, label %sw.bb.377
    i32 256, label %sw.bb.379
    i32 257, label %sw.bb.381
    i32 258, label %sw.bb.383
    i32 259, label %sw.bb.385
  ]

sw.bb.373:                                        ; preds = %if.then.371
  %125 = load i16, i16* %ctx_us, align 2
  %conv374 = zext i16 %125 to i32
  store i32 %conv374, i32* %samples_per_pixel, align 4
  br label %sw.epilog.389

sw.bb.375:                                        ; preds = %if.then.371
  %126 = load i16, i16* %ctx_us, align 2
  %conv376 = zext i16 %126 to i32
  store i32 %conv376, i32* %height, align 4
  br label %sw.epilog.389

sw.bb.377:                                        ; preds = %if.then.371
  %127 = load i16, i16* %ctx_us, align 2
  %conv378 = zext i16 %127 to i32
  store i32 %conv378, i32* %width, align 4
  br label %sw.epilog.389

sw.bb.379:                                        ; preds = %if.then.371
  %128 = load i16, i16* %ctx_us, align 2
  %conv380 = zext i16 %128 to i32
  store i32 %conv380, i32* %bpp, align 4
  br label %sw.epilog.389

sw.bb.381:                                        ; preds = %if.then.371
  %129 = load i16, i16* %ctx_us, align 2
  %conv382 = zext i16 %129 to i32
  store i32 %conv382, i32* %bits_stored, align 4
  br label %sw.epilog.389

sw.bb.383:                                        ; preds = %if.then.371
  %130 = load i16, i16* %ctx_us, align 2
  %conv384 = zext i16 %130 to i32
  store i32 %conv384, i32* %high_bit, align 4
  br label %sw.epilog.389

sw.bb.385:                                        ; preds = %if.then.371
  %131 = load i16, i16* %ctx_us, align 2
  %conv386 = zext i16 %131 to i32
  %cmp387 = icmp eq i32 %conv386, 0
  %cond = select i1 %cmp387, i32 0, i32 1
  store i32 %cond, i32* %is_signed, align 4
  br label %sw.epilog.389

sw.epilog.389:                                    ; preds = %if.then.371, %sw.bb.385, %sw.bb.383, %sw.bb.381, %sw.bb.379, %sw.bb.377, %sw.bb.375, %sw.bb.373
  br label %if.end.390

if.end.390:                                       ; preds = %sw.epilog.389, %if.else.367
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %sw.epilog
  %132 = load i16, i16* %group_word, align 2
  %conv392 = zext i16 %132 to i32
  %cmp393 = icmp eq i32 %conv392, 32736
  br i1 %cmp393, label %land.lhs.true.395, label %if.else.400

land.lhs.true.395:                                ; preds = %if.end.391
  %133 = load i16, i16* %element_word, align 2
  %conv396 = zext i16 %133 to i32
  %cmp397 = icmp eq i32 %conv396, 16
  br i1 %cmp397, label %if.then.399, label %if.else.400

if.then.399:                                      ; preds = %land.lhs.true.395
  %134 = load i8*, i8** %value, align 8
  store i8* %134, i8** %pix_buf, align 8
  br label %if.end.412

if.else.400:                                      ; preds = %land.lhs.true.395, %if.end.391
  %arraydecay401 = getelementptr inbounds [255 x i8], [255 x i8]* %pname, i32 0, i32 0
  %135 = load i16, i16* %group_word, align 2
  %conv402 = zext i16 %135 to i32
  %136 = load i16, i16* %element_word, align 2
  %conv403 = zext i16 %136 to i32
  %arraydecay404 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %call405 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay401, i64 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i32 %conv402, i32 %conv403, i8* %arraydecay404)
  %arraydecay406 = getelementptr inbounds [255 x i8], [255 x i8]* %pname, i32 0, i32 0
  %137 = load i32, i32* %element_length, align 4
  %138 = load i8*, i8** %value, align 8
  %call407 = call %struct._GimpParasite* @gimp_parasite_new(i8* %arraydecay406, i32 1, i32 %137, i8* %138)
  store %struct._GimpParasite* %call407, %struct._GimpParasite** %parasite, align 8
  %tobool408 = icmp ne %struct._GimpParasite* %call407, null
  br i1 %tobool408, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %if.else.400
  %139 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %140 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %141 = bitcast %struct._GimpParasite* %140 to i8*
  %call410 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %139, i8* %141)
  store %struct._GSList* %call410, %struct._GSList** %elements, align 8
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %if.else.400
  %142 = load i8*, i8** %value, align 8
  call void @g_free(i8* %142)
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.then.399
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %while.cond
  %143 = load i32, i32* %bpp, align 4
  %cmp413 = icmp ne i32 %143, 8
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.420

land.lhs.true.415:                                ; preds = %while.end
  %144 = load i32, i32* %bpp, align 4
  %cmp416 = icmp ne i32 %144, 16
  br i1 %cmp416, label %if.then.418, label %if.end.420

if.then.418:                                      ; preds = %land.lhs.true.415
  %145 = load i8*, i8** %filename.addr, align 8
  %call419 = call i8* @gimp_filename_to_utf8(i8* %145)
  %146 = load i32, i32* %bpp, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i8* %call419, i32 %146)
  call void @gimp_quit() #9
  unreachable

if.end.420:                                       ; preds = %land.lhs.true.415, %while.end
  %147 = load i32, i32* %width, align 4
  %cmp421 = icmp ugt i32 %147, 262144
  br i1 %cmp421, label %if.then.426, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %if.end.420
  %148 = load i32, i32* %height, align 4
  %cmp424 = icmp ugt i32 %148, 262144
  br i1 %cmp424, label %if.then.426, label %if.end.428

if.then.426:                                      ; preds = %lor.lhs.false.423, %if.end.420
  %149 = load i8*, i8** %filename.addr, align 8
  %call427 = call i8* @gimp_filename_to_utf8(i8* %149)
  %150 = load i32, i32* %width, align 4
  %151 = load i32, i32* %height, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i32 0, i32 0), i8* %call427, i32 %150, i32 %151)
  call void @gimp_quit() #9
  unreachable

if.end.428:                                       ; preds = %lor.lhs.false.423
  %152 = load i32, i32* %samples_per_pixel, align 4
  %cmp429 = icmp sgt i32 %152, 3
  br i1 %cmp429, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %if.end.428
  %153 = load i8*, i8** %filename.addr, align 8
  %call432 = call i8* @gimp_filename_to_utf8(i8* %153)
  %154 = load i32, i32* %samples_per_pixel, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.50, i32 0, i32 0), i8* %call432, i32 %154)
  call void @gimp_quit() #9
  unreachable

if.end.433:                                       ; preds = %if.end.428
  %155 = load i32, i32* %width, align 4
  %156 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %width434 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %156, i32 0, i32 0
  store i32 %155, i32* %width434, align 4
  %157 = load i32, i32* %height, align 4
  %158 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %height435 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %158, i32 0, i32 1
  store i32 %157, i32* %height435, align 4
  %159 = load i32, i32* %bpp, align 4
  %160 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %bpp436 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %160, i32 0, i32 4
  store i32 %159, i32* %bpp436, align 4
  %161 = load i32, i32* %bits_stored, align 4
  %162 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %bits_stored437 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %162, i32 0, i32 5
  store i32 %161, i32* %bits_stored437, align 4
  %163 = load i32, i32* %high_bit, align 4
  %164 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %high_bit438 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %164, i32 0, i32 6
  store i32 %163, i32* %high_bit438, align 4
  %165 = load i32, i32* %is_signed, align 4
  %166 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %is_signed439 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %166, i32 0, i32 7
  store i32 %165, i32* %is_signed439, align 4
  %167 = load i32, i32* %samples_per_pixel, align 4
  %168 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %samples_per_pixel440 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %168, i32 0, i32 3
  store i32 %167, i32* %samples_per_pixel440, align 4
  %169 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %maxval = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %169, i32 0, i32 2
  store i32 -1, i32* %maxval, align 4
  %170 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %width441 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %170, i32 0, i32 0
  %171 = load i32, i32* %width441, align 4
  %172 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %height442 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %172, i32 0, i32 1
  %173 = load i32, i32* %height442, align 4
  %174 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %samples_per_pixel443 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %174, i32 0, i32 3
  %175 = load i32, i32* %samples_per_pixel443, align 4
  %cmp444 = icmp sge i32 %175, 3
  %cond446 = select i1 %cmp444, i32 0, i32 1
  %call447 = call i32 @gimp_image_new(i32 %171, i32 %173, i32 %cond446)
  store volatile i32 %call447, i32* %image_ID, align 4
  %176 = load volatile i32, i32* %image_ID, align 4
  %177 = load i8*, i8** %filename.addr, align 8
  %call448 = call i32 @gimp_image_set_filename(i32 %176, i8* %177)
  %178 = load volatile i32, i32* %image_ID, align 4
  %call449 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #6
  %179 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %width450 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %179, i32 0, i32 0
  %180 = load i32, i32* %width450, align 4
  %181 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %height451 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %181, i32 0, i32 1
  %182 = load i32, i32* %height451, align 4
  %183 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %samples_per_pixel452 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %183, i32 0, i32 3
  %184 = load i32, i32* %samples_per_pixel452, align 4
  %cmp453 = icmp sge i32 %184, 3
  %cond455 = select i1 %cmp453, i32 0, i32 2
  %call456 = call i32 @gimp_layer_new(i32 %178, i8* %call449, i32 %180, i32 %182, i32 %cond455, double 1.000000e+02, i32 0)
  store i32 %call456, i32* %layer_ID, align 4
  %185 = load volatile i32, i32* %image_ID, align 4
  %186 = load i32, i32* %layer_ID, align 4
  %call457 = call i32 @gimp_image_insert_layer(i32 %185, i32 %186, i32 -1, i32 0)
  %187 = load i32, i32* %layer_ID, align 4
  %call458 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %187)
  store %struct._GimpDrawable* %call458, %struct._GimpDrawable** %drawable, align 8
  %188 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %189 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width459 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %189, i32 0, i32 1
  %190 = load i32, i32* %width459, align 4
  %191 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height460 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %191, i32 0, i32 2
  %192 = load i32, i32* %height460, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %188, i32 0, i32 0, i32 %190, i32 %192, i32 1, i32 0)
  %193 = load i32, i32* %bpp, align 4
  %cmp461 = icmp eq i32 %193, 16
  br i1 %cmp461, label %if.then.463, label %if.end.464

if.then.463:                                      ; preds = %if.end.433
  %194 = load i8*, i8** %pix_buf, align 8
  %195 = bitcast i8* %194 to i16*
  %196 = load i32, i32* %width, align 4
  %197 = load i32, i32* %height, align 4
  %mul = mul i32 %196, %197
  call void @guess_and_set_endian2(i16* %195, i32 %mul)
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.463, %if.end.433
  %198 = load i8*, i8** %pix_buf, align 8
  %199 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  call void @dicom_loader(i8* %198, %struct._DicomInfo* %199, %struct._GimpPixelRgn* %pixel_rgn)
  %200 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %tobool465 = icmp ne %struct._GSList* %200, null
  br i1 %tobool465, label %if.then.466, label %if.end.468

if.then.466:                                      ; preds = %if.end.464
  %201 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %call467 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %201)
  store %struct._GSList* %call467, %struct._GSList** %elements, align 8
  %202 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %203 = bitcast i32* %image_ID to i8*
  call void @g_slist_foreach(%struct._GSList* %202, void (i8*, i8*)* @add_parasites_to_image, i8* %203)
  %204 = load %struct._GSList*, %struct._GSList** %elements, align 8
  call void @g_slist_free(%struct._GSList* %204)
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.466, %if.end.464
  %205 = load i8*, i8** %pix_buf, align 8
  call void @g_free(i8* %205)
  %206 = load %struct._DicomInfo*, %struct._DicomInfo** %dicominfo, align 8
  %207 = bitcast %struct._DicomInfo* %206 to i8*
  call void @g_free(i8* %207)
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call469 = call i32 @fclose(%struct._IO_FILE* %208)
  %209 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %209)
  %210 = load volatile i32, i32* %image_ID, align 4
  store i32 %210, i32* %retval
  br label %return

return:                                           ; preds = %if.end.468, %if.then.24, %if.then.15, %if.then
  %211 = load i32, i32* %retval
  ret i32 %211
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %DICOM = alloca %struct._IO_FILE*, align 8
  %drawable_type = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %group_stream = alloca %struct._GByteArray*, align 8
  %elements = alloca %struct._GSList*, align 8
  %group = alloca i32, align 4
  %date = alloca %struct._GDate*, align 8
  %today_string = alloca [16 x i8], align 16
  %photometric_interp = alloca i8*, align 8
  %samples_per_pixel = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %zero = alloca i16, align 2
  %seven = alloca i16, align 2
  %eight = alloca i16, align 2
  %src = alloca i8*, align 8
  %val = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GSList* null, %struct._GSList** %elements, align 8
  store i32 1, i32* %retval1, align 4
  store i16 0, i16* %zero, align 2
  store i16 7, i16* %seven, align 2
  store i16 8, i16* %eight, align 2
  store i8* null, i8** %src, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %0)
  store i32 %call, i32* %drawable_type, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call4)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %drawable_type, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %samples_per_pixel, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8** %photometric_interp, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  store i32 3, i32* %samples_per_pixel, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8** %photometric_interp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call6)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %call7 = call %struct._GDate* @g_date_new()
  store %struct._GDate* %call7, %struct._GDate** %date, align 8
  %4 = load %struct._GDate*, %struct._GDate** %date, align 8
  %call8 = call i64 @time(i64* null) #6
  call void @g_date_set_time_t(%struct._GDate* %4, i64 %call8)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %today_string, i32 0, i32 0
  %5 = load %struct._GDate*, %struct._GDate** %date, align 8
  %6 = bitcast %struct._GDate* %5 to i64*
  %bf.load = load i64, i64* %6, align 4
  %bf.lshr = lshr i64 %bf.load, 44
  %bf.clear = and i64 %bf.lshr, 65535
  %bf.cast = trunc i64 %bf.clear to i32
  %7 = load %struct._GDate*, %struct._GDate** %date, align 8
  %8 = bitcast %struct._GDate* %7 to i64*
  %bf.load9 = load i64, i64* %8, align 4
  %bf.lshr10 = lshr i64 %bf.load9, 40
  %bf.clear11 = and i64 %bf.lshr10, 15
  %bf.cast12 = trunc i64 %bf.clear11 to i32
  %9 = load %struct._GDate*, %struct._GDate** %date, align 8
  %10 = bitcast %struct._GDate* %9 to i64*
  %bf.load13 = load i64, i64* %10, align 4
  %bf.lshr14 = lshr i64 %bf.load13, 34
  %bf.clear15 = and i64 %bf.lshr14, 63
  %bf.cast16 = trunc i64 %bf.clear15 to i32
  %call17 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i32 %bf.cast, i32 %bf.cast12, i32 %bf.cast16)
  %11 = load %struct._GDate*, %struct._GDate** %date, align 8
  call void @g_date_free(%struct._GDate* %11)
  %12 = load i8*, i8** %filename.addr, align 8
  %call18 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %DICOM, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %tobool19 = icmp ne %struct._IO_FILE* %13, null
  br i1 %tobool19, label %if.end.28, label %if.then.20

if.then.20:                                       ; preds = %sw.epilog
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @g_file_error_quark()
  %call22 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call22, align 4
  %call23 = call i32 @g_file_error_from_errno(i32 %16)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0)) #6
  %17 = load i8*, i8** %filename.addr, align 8
  %call25 = call i8* @gimp_filename_to_utf8(i8* %17)
  %call26 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call26, align 4
  %call27 = call i8* @g_strerror(i32 %18) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call21, i32 %call23, i8* %call24, i8* %call25, i8* %call27)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %sw.epilog
  store i8 0, i8* %val, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %19 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %19, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call29 = call i64 @fwrite(i8* %val, i64 1, i64 1, %struct._IO_FILE* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %call31 = call %struct._GByteArray* @g_byte_array_new()
  store %struct._GByteArray* %call31, %struct._GByteArray** %group_stream, align 8
  %23 = load i32, i32* %image_ID.addr, align 4
  %call32 = call %struct._GSList* @dicom_get_elements_list(i32 %23)
  store %struct._GSList* %call32, %struct._GSList** %elements, align 8
  %24 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %today_string, i32 0, i32 0
  %call34 = call %struct._GSList* @dicom_ensure_required_elements_present(%struct._GSList* %24, i8* %arraydecay33)
  store %struct._GSList* %call34, %struct._GSList** %elements, align 8
  %25 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %26 = load i32, i32* %samples_per_pixel, align 4
  %call35 = call %struct._GSList* @dicom_remove_gimp_specified_elements(%struct._GSList* %25, i32 %26)
  store %struct._GSList* %call35, %struct._GSList** %elements, align 8
  store i32 40, i32* %group, align 4
  %27 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %28 = load i32, i32* %group, align 4
  %conv = trunc i32 %28 to i16
  %29 = bitcast i32* %samples_per_pixel to i8*
  %call36 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %27, i16 zeroext %conv, i16 zeroext 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %29)
  store %struct._GSList* %call36, %struct._GSList** %elements, align 8
  %30 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %31 = load i32, i32* %group, align 4
  %conv37 = trunc i32 %31 to i16
  %32 = load i8*, i8** %photometric_interp, align 8
  %call38 = call i64 @strlen(i8* %32) #8
  %conv39 = trunc i64 %call38 to i32
  %33 = load i8*, i8** %photometric_interp, align 8
  %call40 = call %struct._GSList* @dicom_add_element(%struct._GSList* %30, i16 zeroext %conv37, i16 zeroext 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i32 %conv39, i8* %33)
  store %struct._GSList* %call40, %struct._GSList** %elements, align 8
  %34 = load i32, i32* %samples_per_pixel, align 4
  %cmp41 = icmp eq i32 %34, 3
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %for.end
  %35 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %36 = load i32, i32* %group, align 4
  %conv44 = trunc i32 %36 to i16
  %37 = bitcast i16* %zero to i8*
  %call45 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %35, i16 zeroext %conv44, i16 zeroext 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %37)
  store %struct._GSList* %call45, %struct._GSList** %elements, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %for.end
  %38 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %39 = load i32, i32* %group, align 4
  %conv47 = trunc i32 %39 to i16
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 2
  %41 = bitcast i32* %height to i8*
  %call48 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %38, i16 zeroext %conv47, i16 zeroext 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %41)
  store %struct._GSList* %call48, %struct._GSList** %elements, align 8
  %42 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %43 = load i32, i32* %group, align 4
  %conv49 = trunc i32 %43 to i16
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = bitcast i32* %width to i8*
  %call50 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %42, i16 zeroext %conv49, i16 zeroext 17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %45)
  store %struct._GSList* %call50, %struct._GSList** %elements, align 8
  %46 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %47 = load i32, i32* %group, align 4
  %conv51 = trunc i32 %47 to i16
  %48 = bitcast i16* %eight to i8*
  %call52 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %46, i16 zeroext %conv51, i16 zeroext 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %48)
  store %struct._GSList* %call52, %struct._GSList** %elements, align 8
  %49 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %50 = load i32, i32* %group, align 4
  %conv53 = trunc i32 %50 to i16
  %51 = bitcast i16* %eight to i8*
  %call54 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %49, i16 zeroext %conv53, i16 zeroext 257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %51)
  store %struct._GSList* %call54, %struct._GSList** %elements, align 8
  %52 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %53 = load i32, i32* %group, align 4
  %conv55 = trunc i32 %53 to i16
  %54 = bitcast i16* %seven to i8*
  %call56 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %52, i16 zeroext %conv55, i16 zeroext 258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %54)
  store %struct._GSList* %call56, %struct._GSList** %elements, align 8
  %55 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %56 = load i32, i32* %group, align 4
  %conv57 = trunc i32 %56 to i16
  %57 = bitcast i16* %zero to i8*
  %call58 = call %struct._GSList* @dicom_add_element_int(%struct._GSList* %55, i16 zeroext %conv57, i16 zeroext 259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* %57)
  store %struct._GSList* %call58, %struct._GSList** %elements, align 8
  store i32 32736, i32* %group, align 4
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height59 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 2
  %59 = load i32, i32* %height59, align 4
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %60, i32 0, i32 1
  %61 = load i32, i32* %width60, align 4
  %mul = mul i32 %59, %61
  %62 = load i32, i32* %samples_per_pixel, align 4
  %mul61 = mul i32 %mul, %62
  %conv62 = zext i32 %mul61 to i64
  %call63 = call noalias i8* @g_malloc_n(i64 %conv62, i64 1)
  store i8* %call63, i8** %src, align 8
  %63 = load i8*, i8** %src, align 8
  %tobool64 = icmp ne i8* %63, null
  br i1 %tobool64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.end.46
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width66 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %65, i32 0, i32 1
  %66 = load i32, i32* %width66, align 4
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %67, i32 0, i32 2
  %68 = load i32, i32* %height67, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %64, i32 0, i32 0, i32 %66, i32 %68, i32 0, i32 0)
  %69 = load i8*, i8** %src, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %70, i32 0, i32 1
  %71 = load i32, i32* %width68, align 4
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height69 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 2
  %73 = load i32, i32* %height69, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %69, i32 0, i32 0, i32 %71, i32 %73)
  %74 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %75 = load i32, i32* %group, align 4
  %conv70 = trunc i32 %75 to i16
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width71 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %76, i32 0, i32 1
  %77 = load i32, i32* %width71, align 4
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height72 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 2
  %79 = load i32, i32* %height72, align 4
  %mul73 = mul i32 %77, %79
  %80 = load i32, i32* %samples_per_pixel, align 4
  %mul74 = mul i32 %mul73, %80
  %81 = load i8*, i8** %src, align 8
  %call75 = call %struct._GSList* @dicom_add_element(%struct._GSList* %74, i16 zeroext %conv70, i16 zeroext 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 %mul74, i8* %81)
  store %struct._GSList* %call75, %struct._GSList** %elements, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %83 = load %struct._GByteArray*, %struct._GByteArray** %group_stream, align 8
  %84 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %call76 = call %struct._GSList* @dicom_add_tags(%struct._IO_FILE* %82, %struct._GByteArray* %83, %struct._GSList* %84)
  store %struct._GSList* %call76, %struct._GSList** %elements, align 8
  %85 = load i8*, i8** %src, align 8
  call void @g_free(i8* %85)
  br label %if.end.77

if.else:                                          ; preds = %if.end.46
  store i32 0, i32* %retval1, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.65
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %call78 = call i32 @fclose(%struct._IO_FILE* %86)
  %87 = load %struct._GSList*, %struct._GSList** %elements, align 8
  call void @dicom_elements_destroy(%struct._GSList* %87)
  %88 = load %struct._GByteArray*, %struct._GByteArray** %group_stream, align 8
  %call79 = call i8* @g_byte_array_free(%struct._GByteArray* %88, i32 1)
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %89)
  %90 = load i32, i32* %retval1, align 4
  store i32 %90, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.then.20, %sw.default, %if.then
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare i32 @gimp_image_delete(i32) #1

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

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

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

declare void @g_free(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: noreturn
declare void @gimp_quit() #5

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @guess_and_set_endian2(i16* %buf16, i32 %length) #0 {
entry:
  %buf16.addr = alloca i16*, align 8
  %length.addr = alloca i32, align 4
  %p = alloca i16*, align 8
  %max_first = alloca i32, align 4
  %max_second = alloca i32, align 4
  store i16* %buf16, i16** %buf16.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i16*, i16** %buf16.addr, align 8
  store i16* %0, i16** %p, align 8
  store i32 -1, i32* %max_first, align 4
  store i32 -1, i32* %max_second, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  %1 = load i16*, i16** %p, align 8
  %2 = load i16*, i16** %buf16.addr, align 8
  %3 = load i32, i32* %length.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 %idx.ext
  %cmp = icmp ult i16* %1, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i16*, i16** %p, align 8
  %5 = bitcast i16* %4 to i8*
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %max_first, align 4
  %cmp1 = icmp sgt i32 %conv, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i16*, i16** %p, align 8
  %9 = bitcast i16* %8 to i8*
  %10 = load i8, i8* %9, align 1
  %conv3 = zext i8 %10 to i32
  store i32 %conv3, i32* %max_first, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load i16*, i16** %p, align 8
  %12 = bitcast i16* %11 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %13 to i32
  %14 = load i32, i32* %max_second, align 4
  %cmp5 = icmp sgt i32 %conv4, %14
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %15 = load i16*, i16** %p, align 8
  %16 = bitcast i16* %15 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  store i32 %conv9, i32* %max_second, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %18 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %max_second, align 4
  %20 = load i32, i32* %max_first, align 4
  %cmp11 = icmp sgt i32 %19, %20
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %21 = load i32, i32* %max_second, align 4
  %22 = load i32, i32* %max_first, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %lor.lhs.false
  br i1 false, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true, %while.end
  %23 = load i16*, i16** %buf16.addr, align 8
  %24 = load i32, i32* %length.addr, align 4
  call void @toggle_endian2(i16* %23, i32 %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dicom_loader(i8* %pix_buffer, %struct._DicomInfo* %info, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %pix_buffer.addr = alloca i8*, align 8
  %info.addr = alloca %struct._DicomInfo*, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data = alloca i8*, align 8
  %row_idx = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %samples_per_pixel = alloca i32, align 4
  %buf16 = alloca i16*, align 8
  %pix_idx = alloca i64, align 8
  %shift = alloca i32, align 4
  %d = alloca i8*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %scanlines = alloca i32, align 4
  %i = alloca i32, align 4
  %row_start = alloca i16*, align 8
  %col_idx = alloca i32, align 4
  %row_start80 = alloca i8*, align 8
  %col_idx81 = alloca i32, align 4
  store i8* %pix_buffer, i8** %pix_buffer.addr, align 8
  store %struct._DicomInfo* %info, %struct._DicomInfo** %info.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %width1 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %height2 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %samples_per_pixel3 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %samples_per_pixel3, align 4
  store i32 %5, i32* %samples_per_pixel, align 4
  %6 = load i8*, i8** %pix_buffer.addr, align 8
  %7 = bitcast i8* %6 to i16*
  store i16* %7, i16** %buf16, align 8
  %8 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bpp = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %8, i32 0, i32 4
  %9 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %9, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %high_bit = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %10, i32 0, i32 6
  %11 = load i32, i32* %high_bit, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bits_stored = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %12, i32 0, i32 5
  %13 = load i32, i32* %bits_stored, align 4
  %sub = sub nsw i32 %add, %13
  store i32 %sub, i32* %shift, align 4
  store i64 0, i64* %pix_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i64, i64* %pix_idx, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %15, %16
  %17 = load i32, i32* %samples_per_pixel, align 4
  %mul4 = mul nsw i32 %mul, %17
  %conv = sext i32 %mul4 to i64
  %cmp5 = icmp ult i64 %14, %conv
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %pix_idx, align 8
  %19 = load i16*, i16** %buf16, align 8
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 %18
  %20 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %20 to i32
  %shr = ashr i32 %conv7, 8
  %conv8 = trunc i32 %shr to i16
  %conv9 = zext i16 %conv8 to i32
  %21 = load i64, i64* %pix_idx, align 8
  %22 = load i16*, i16** %buf16, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %22, i64 %21
  %23 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %23 to i32
  %shl = shl i32 %conv11, 8
  %conv12 = trunc i32 %shl to i16
  %conv13 = zext i16 %conv12 to i32
  %or = or i32 %conv9, %conv13
  %conv14 = trunc i32 %or to i16
  %conv15 = zext i16 %conv14 to i32
  %24 = load i32, i32* %shift, align 4
  %shr16 = ashr i32 %conv15, %24
  %conv17 = trunc i32 %shr16 to i16
  %25 = load i64, i64* %pix_idx, align 8
  %26 = load i16*, i16** %buf16, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %26, i64 %25
  store i16 %conv17, i16* %arrayidx18, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %pix_idx, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %pix_idx, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %call = call i32 @gimp_tile_height() #7
  %28 = load i32, i32* %width, align 4
  %mul19 = mul i32 %call, %28
  %29 = load i32, i32* %samples_per_pixel, align 4
  %mul20 = mul i32 %mul19, %29
  %conv21 = zext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc(i64 %conv21)
  store i8* %call22, i8** %data, align 8
  store i32 0, i32* %row_idx, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.end.130, %if.end
  %30 = load i32, i32* %row_idx, align 4
  %31 = load i32, i32* %height, align 4
  %cmp24 = icmp slt i32 %30, %31
  br i1 %cmp24, label %for.body.26, label %for.end.135

for.body.26:                                      ; preds = %for.cond.23
  %32 = load i8*, i8** %data, align 8
  store i8* %32, i8** %d, align 8
  %33 = load i32, i32* %row_idx, align 4
  store i32 %33, i32* %start, align 4
  %34 = load i32, i32* %row_idx, align 4
  %call27 = call i32 @gimp_tile_height() #7
  %add28 = add i32 %34, %call27
  store i32 %add28, i32* %end, align 4
  %35 = load i32, i32* %end, align 4
  %36 = load i32, i32* %height, align 4
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.26
  %37 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.26
  %38 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, i32* %end, align 4
  %39 = load i32, i32* %end, align 4
  %40 = load i32, i32* %start, align 4
  %sub31 = sub nsw i32 %39, %40
  store i32 %sub31, i32* %scanlines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.128, %cond.end
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %scanlines, align 4
  %cmp33 = icmp slt i32 %41, %42
  br i1 %cmp33, label %for.body.35, label %for.end.130

for.body.35:                                      ; preds = %for.cond.32
  %43 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bpp36 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %43, i32 0, i32 4
  %44 = load i32, i32* %bpp36, align 4
  %cmp37 = icmp eq i32 %44, 16
  br i1 %cmp37, label %if.then.39, label %if.else.75

if.then.39:                                       ; preds = %for.body.35
  %45 = load i16*, i16** %buf16, align 8
  %46 = load i32, i32* %row_idx, align 4
  %47 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %46, %47
  %48 = load i32, i32* %width, align 4
  %mul41 = mul nsw i32 %add40, %48
  %49 = load i32, i32* %samples_per_pixel, align 4
  %mul42 = mul nsw i32 %mul41, %49
  %idx.ext = sext i32 %mul42 to i64
  %add.ptr = getelementptr inbounds i16, i16* %45, i64 %idx.ext
  store i16* %add.ptr, i16** %row_start, align 8
  store i32 0, i32* %col_idx, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.72, %if.then.39
  %50 = load i32, i32* %col_idx, align 4
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %samples_per_pixel, align 4
  %mul44 = mul nsw i32 %51, %52
  %cmp45 = icmp slt i32 %50, %mul44
  br i1 %cmp45, label %for.body.47, label %for.end.74

for.body.47:                                      ; preds = %for.cond.43
  %53 = load i32, i32* %col_idx, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load i16*, i16** %row_start, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %54, i64 %idxprom
  %55 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %55 to i32
  %56 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bits_stored50 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %56, i32 0, i32 5
  %57 = load i32, i32* %bits_stored50, align 4
  %sub51 = sub nsw i32 %57, 8
  %shr52 = ashr i32 %conv49, %sub51
  %conv53 = trunc i32 %shr52 to i8
  %58 = load i32, i32* %col_idx, align 4
  %idxprom54 = sext i32 %58 to i64
  %59 = load i8*, i8** %d, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %59, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  %60 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %is_signed = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %60, i32 0, i32 7
  %61 = load i32, i32* %is_signed, align 4
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then.56, label %if.end.71

if.then.56:                                       ; preds = %for.body.47
  %62 = load i32, i32* %col_idx, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load i8*, i8** %d, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %63, i64 %idxprom57
  %64 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %64 to i32
  %cmp60 = icmp sgt i32 %conv59, 127
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.then.56
  %65 = load i32, i32* %col_idx, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load i8*, i8** %d, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %66, i64 %idxprom63
  store i8 0, i8* %arrayidx64, align 1
  br label %if.end.70

if.else:                                          ; preds = %if.then.56
  %67 = load i32, i32* %col_idx, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load i8*, i8** %d, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %68, i64 %idxprom65
  %69 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %69 to i32
  %shl68 = shl i32 %conv67, 1
  %conv69 = trunc i32 %shl68 to i8
  store i8 %conv69, i8* %arrayidx66, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %if.then.62
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.body.47
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %70 = load i32, i32* %col_idx, align 4
  %inc73 = add nsw i32 %70, 1
  store i32 %inc73, i32* %col_idx, align 4
  br label %for.cond.43

for.end.74:                                       ; preds = %for.cond.43
  br label %if.end.124

if.else.75:                                       ; preds = %for.body.35
  %71 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bpp76 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %71, i32 0, i32 4
  %72 = load i32, i32* %bpp76, align 4
  %cmp77 = icmp eq i32 %72, 8
  br i1 %cmp77, label %if.then.79, label %if.end.123

if.then.79:                                       ; preds = %if.else.75
  %73 = load i8*, i8** %pix_buffer.addr, align 8
  %74 = load i32, i32* %row_idx, align 4
  %75 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %74, %75
  %76 = load i32, i32* %width, align 4
  %mul83 = mul nsw i32 %add82, %76
  %77 = load i32, i32* %samples_per_pixel, align 4
  %mul84 = mul nsw i32 %mul83, %77
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %73, i64 %idx.ext85
  store i8* %add.ptr86, i8** %row_start80, align 8
  store i32 0, i32* %col_idx81, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.120, %if.then.79
  %78 = load i32, i32* %col_idx81, align 4
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %samples_per_pixel, align 4
  %mul88 = mul nsw i32 %79, %80
  %cmp89 = icmp slt i32 %78, %mul88
  br i1 %cmp89, label %for.body.91, label %for.end.122

for.body.91:                                      ; preds = %for.cond.87
  %81 = load i32, i32* %col_idx81, align 4
  %idxprom92 = sext i32 %81 to i64
  %82 = load i8*, i8** %row_start80, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %82, i64 %idxprom92
  %83 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %83 to i32
  %84 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %bits_stored95 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %84, i32 0, i32 5
  %85 = load i32, i32* %bits_stored95, align 4
  %sub96 = sub nsw i32 8, %85
  %shl97 = shl i32 %conv94, %sub96
  %conv98 = trunc i32 %shl97 to i8
  %86 = load i32, i32* %col_idx81, align 4
  %idxprom99 = sext i32 %86 to i64
  %87 = load i8*, i8** %d, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %87, i64 %idxprom99
  store i8 %conv98, i8* %arrayidx100, align 1
  %88 = load %struct._DicomInfo*, %struct._DicomInfo** %info.addr, align 8
  %is_signed101 = getelementptr inbounds %struct._DicomInfo, %struct._DicomInfo* %88, i32 0, i32 7
  %89 = load i32, i32* %is_signed101, align 4
  %tobool102 = icmp ne i32 %89, 0
  br i1 %tobool102, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %for.body.91
  %90 = load i32, i32* %col_idx81, align 4
  %idxprom104 = sext i32 %90 to i64
  %91 = load i8*, i8** %d, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %91, i64 %idxprom104
  %92 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %92 to i32
  %cmp107 = icmp sgt i32 %conv106, 127
  br i1 %cmp107, label %if.then.109, label %if.else.112

if.then.109:                                      ; preds = %if.then.103
  %93 = load i32, i32* %col_idx81, align 4
  %idxprom110 = sext i32 %93 to i64
  %94 = load i8*, i8** %d, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %94, i64 %idxprom110
  store i8 0, i8* %arrayidx111, align 1
  br label %if.end.118

if.else.112:                                      ; preds = %if.then.103
  %95 = load i32, i32* %col_idx81, align 4
  %idxprom113 = sext i32 %95 to i64
  %96 = load i8*, i8** %d, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %96, i64 %idxprom113
  %97 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %97 to i32
  %shl116 = shl i32 %conv115, 1
  %conv117 = trunc i32 %shl116 to i8
  store i8 %conv117, i8* %arrayidx114, align 1
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.112, %if.then.109
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %for.body.91
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %98 = load i32, i32* %col_idx81, align 4
  %inc121 = add nsw i32 %98, 1
  store i32 %inc121, i32* %col_idx81, align 4
  br label %for.cond.87

for.end.122:                                      ; preds = %for.cond.87
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %if.else.75
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %for.end.74
  %99 = load i32, i32* %width, align 4
  %100 = load i32, i32* %samples_per_pixel, align 4
  %mul125 = mul nsw i32 %99, %100
  %101 = load i8*, i8** %d, align 8
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %101, i64 %idx.ext126
  store i8* %add.ptr127, i8** %d, align 8
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.124
  %102 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %102, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.32

for.end.130:                                      ; preds = %for.cond.32
  %103 = load i32, i32* %row_idx, align 4
  %conv131 = sitofp i32 %103 to double
  %104 = load i32, i32* %height, align 4
  %conv132 = sitofp i32 %104 to double
  %div = fdiv double %conv131, %conv132
  %call133 = call i32 @gimp_progress_update(double %div)
  %105 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %106 = load i8*, i8** %data, align 8
  %107 = load i32, i32* %row_idx, align 4
  %108 = load i32, i32* %width, align 4
  %109 = load i32, i32* %scanlines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %105, i8* %106, i32 0, i32 %107, i32 %108, i32 %109)
  %110 = load i32, i32* %scanlines, align 4
  %111 = load i32, i32* %row_idx, align 4
  %add134 = add nsw i32 %111, %110
  store i32 %add134, i32* %row_idx, align 4
  br label %for.cond.23

for.end.135:                                      ; preds = %for.cond.23
  %call136 = call i32 @gimp_progress_update(double 1.000000e+00)
  %112 = load i8*, i8** %data, align 8
  call void @g_free(i8* %112)
  ret void
}

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @add_parasites_to_image(i8* %data, i8* %user_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %image_ID = alloca i32*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpParasite*
  store %struct._GimpParasite* %1, %struct._GimpParasite** %parasite, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %image_ID, align 8
  %4 = load i32*, i32** %image_ID, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call = call i32 @gimp_image_attach_parasite(i32 %5, %struct._GimpParasite* %6)
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %7)
  ret void
}

declare void @g_slist_free(%struct._GSList*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @toggle_endian2(i16* %buf16, i32 %length) #0 {
entry:
  %buf16.addr = alloca i16*, align 8
  %length.addr = alloca i32, align 4
  %p = alloca i16*, align 8
  store i16* %buf16, i16** %buf16.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i16*, i16** %buf16.addr, align 8
  store i16* %0, i16** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i16*, i16** %p, align 8
  %2 = load i16*, i16** %buf16.addr, align 8
  %3 = load i32, i32* %length.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 %idx.ext
  %cmp = icmp ult i16* %1, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i16*, i16** %p, align 8
  %5 = load i16, i16* %4, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 8
  %6 = load i16*, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %conv1 = zext i16 %7 to i32
  %shr = ashr i32 %conv1, 8
  %or = or i32 %shl, %shr
  %conv2 = trunc i32 %or to i16
  %8 = load i16*, i16** %p, align 8
  store i16 %conv2, i16* %8, align 2
  %9 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare %struct._GDate* @g_date_new() #1

declare void @g_date_set_time_t(%struct._GDate*, i64) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare void @g_date_free(%struct._GDate*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._GByteArray* @g_byte_array_new() #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_get_elements_list(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %elements = alloca %struct._GSList*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %parasites = alloca i8**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %ptr1 = alloca i8*, align 8
  %ptr2 = alloca i8*, align 8
  %value_rep = alloca [3 x i8], align 1
  %group_word = alloca i16, align 2
  %element_word = alloca i16, align 2
  %t = alloca [15 x i8], align 1
  %t27 = alloca [15 x i8], align 1
  %val = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GSList* null, %struct._GSList** %elements, align 8
  store i8** null, i8*** %parasites, align 8
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8** @gimp_image_get_parasite_list(i32 %0, i32* %count)
  store i8** %call, i8*** %parasites, align 8
  %1 = load i8**, i8*** %parasites, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.62

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %count, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %parasites, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i64 3) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.59

if.then.4:                                        ; preds = %for.body
  %8 = load i32, i32* %image_ID.addr, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8**, i8*** %parasites, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx6, align 8
  %call7 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %8, i8* %11)
  store %struct._GimpParasite* %call7, %struct._GimpParasite** %parasite, align 8
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool8 = icmp ne %struct._GimpParasite* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.58

if.then.9:                                        ; preds = %if.then.4
  %13 = bitcast [3 x i8]* %value_rep to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 3, i32 1, i1 false)
  store i16 0, i16* %group_word, align 2
  store i16 0, i16* %element_word, align 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i8**, i8*** %parasites, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 %idxprom10
  %16 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @strncpy(i8* %arraydecay, i8* %16, i64 1024) #6
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call14 = call i8* @strchr(i8* %arraydecay13, i32 47) #8
  store i8* %call14, i8** %ptr1, align 8
  %17 = load i8*, i8** %ptr1, align 8
  %tobool15 = icmp ne i8* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.then.9
  %18 = load i8*, i8** %ptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr1, align 8
  %19 = load i8*, i8** %ptr1, align 8
  %call17 = call i8* @strchr(i8* %19, i32 45) #8
  store i8* %call17, i8** %ptr2, align 8
  %20 = load i8*, i8** %ptr2, align 8
  %tobool18 = icmp ne i8* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.16
  %21 = load i8*, i8** %ptr2, align 8
  store i8 0, i8* %21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.16
  %arraydecay20 = getelementptr inbounds [15 x i8], [15 x i8]* %t, i32 0, i32 0
  %22 = load i8*, i8** %ptr1, align 8
  %call21 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay20, i64 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %22)
  %arraydecay22 = getelementptr inbounds [15 x i8], [15 x i8]* %t, i32 0, i32 0
  %call23 = call i64 @g_ascii_strtoull(i8* %arraydecay22, i8** null, i32 16)
  %conv = trunc i64 %call23 to i16
  store i16 %conv, i16* %group_word, align 2
  %23 = load i8*, i8** %ptr2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr, i8** %ptr1, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.9
  %24 = load i8*, i8** %ptr1, align 8
  %tobool25 = icmp ne i8* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.24
  %25 = load i8*, i8** %ptr1, align 8
  %call28 = call i8* @strchr(i8* %25, i32 45) #8
  store i8* %call28, i8** %ptr2, align 8
  %26 = load i8*, i8** %ptr2, align 8
  %tobool29 = icmp ne i8* %26, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %27 = load i8*, i8** %ptr2, align 8
  store i8 0, i8* %27, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  %arraydecay32 = getelementptr inbounds [15 x i8], [15 x i8]* %t27, i32 0, i32 0
  %28 = load i8*, i8** %ptr1, align 8
  %call33 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay32, i64 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* %28)
  %arraydecay34 = getelementptr inbounds [15 x i8], [15 x i8]* %t27, i32 0, i32 0
  %call35 = call i64 @g_ascii_strtoull(i8* %arraydecay34, i8** null, i32 16)
  %conv36 = trunc i64 %call35 to i16
  store i16 %conv36, i16* %element_word, align 2
  %29 = load i8*, i8** %ptr2, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %add.ptr37, i8** %ptr1, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.31, %if.end.24
  %30 = load i8*, i8** %ptr1, align 8
  %tobool39 = icmp ne i8* %30, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %arraydecay41 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %31 = load i8*, i8** %ptr1, align 8
  %call42 = call i8* @strncpy(i8* %arraydecay41, i8* %31, i64 3) #6
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %32 = load i16, i16* %group_word, align 2
  %conv44 = zext i16 %32 to i32
  %cmp45 = icmp sgt i32 %conv44, 0
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.57

land.lhs.true.47:                                 ; preds = %if.end.43
  %33 = load i16, i16* %element_word, align 2
  %conv48 = zext i16 %33 to i32
  %cmp49 = icmp sgt i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %land.lhs.true.47
  %34 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call52 = call i8* @gimp_parasite_data(%struct._GimpParasite* %34)
  store i8* %call52, i8** %val, align 8
  %35 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call53 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %35)
  %conv54 = trunc i64 %call53 to i32
  store i32 %conv54, i32* %len, align 4
  %36 = load %struct._GSList*, %struct._GSList** %elements, align 8
  %37 = load i16, i16* %group_word, align 2
  %38 = load i16, i16* %element_word, align 2
  %arraydecay55 = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %39 = load i32, i32* %len, align 4
  %40 = load i8*, i8** %val, align 8
  %call56 = call %struct._GSList* @dicom_add_element_copy(%struct._GSList* %36, i16 zeroext %37, i16 zeroext %38, i8* %arraydecay55, i32 %39, i8* %40)
  store %struct._GSList* %call56, %struct._GSList** %elements, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %land.lhs.true.47, %if.end.43
  %41 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %41)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.4
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %for.body
  %42 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load i8**, i8*** %parasites, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %43, i64 %idxprom60
  %44 = load i8*, i8** %arrayidx61, align 8
  call void @g_free(i8* %44)
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %land.lhs.true, %entry
  %46 = load i8**, i8*** %parasites, align 8
  %tobool63 = icmp ne i8** %46, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %47 = load i8**, i8*** %parasites, align 8
  %48 = bitcast i8** %47 to i8*
  call void @g_free(i8* %48)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %49 = load %struct._GSList*, %struct._GSList** %elements, align 8
  ret %struct._GSList* %49
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_ensure_required_elements_present(%struct._GSList* %elements, i8* %today_string) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %today_string.addr = alloca i8*, align 8
  %defaults = alloca [23 x %struct.DICOMELEMENT], align 16
  %i = alloca i32, align 4
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store i8* %today_string, i8** %today_string.addr, align 8
  %arrayinit.begin = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i64 0, i64 0
  %group_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 0
  store i16 2, i16* %group_word, align 2
  %element_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 1
  store i16 1, i16* %element_word, align 2
  %value_rep = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 2
  %0 = bitcast [3 x i8]* %value_rep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 3
  store i32 2, i32* %element_length, align 4
  %value = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8** %value, align 8
  %free = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i32 0, i32 5
  store i32 0, i32* %free, align 4
  %arrayinit.element = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.begin, i64 1
  %group_word1 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 0
  store i16 2, i16* %group_word1, align 2
  %element_word2 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 1
  store i16 16, i16* %element_word2, align 2
  %value_rep3 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 2
  %1 = bitcast [3 x i8]* %value_rep3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length4 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 3
  store i32 19, i32* %element_length4, align 4
  %value5 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8** %value5, align 8
  %free6 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i32 0, i32 5
  store i32 0, i32* %free6, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element, i64 1
  %group_word8 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 0
  store i16 2, i16* %group_word8, align 2
  %element_word9 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 1
  store i16 19, i16* %element_word9, align 2
  %value_rep10 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 2
  %2 = bitcast [3 x i8]* %value_rep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length11 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 3
  store i32 21, i32* %element_length11, align 4
  %value12 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8** %value12, align 8
  %free13 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i32 0, i32 5
  store i32 0, i32* %free13, align 4
  %arrayinit.element14 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element7, i64 1
  %group_word15 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 0
  store i16 8, i16* %group_word15, align 2
  %element_word16 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 1
  store i16 8, i16* %element_word16, align 2
  %value_rep17 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 2
  %3 = bitcast [3 x i8]* %value_rep17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length18 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 3
  store i32 16, i32* %element_length18, align 4
  %value19 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0), i8** %value19, align 8
  %free20 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i32 0, i32 5
  store i32 0, i32* %free20, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element14, i64 1
  %group_word22 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 0
  store i16 8, i16* %group_word22, align 2
  %element_word23 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 1
  store i16 22, i16* %element_word23, align 2
  %value_rep24 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 2
  %4 = bitcast [3 x i8]* %value_rep24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length25 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 3
  store i32 25, i32* %element_length25, align 4
  %value26 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i8** %value26, align 8
  %free27 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i32 0, i32 5
  store i32 0, i32* %free27, align 4
  %arrayinit.element28 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element21, i64 1
  %group_word29 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 0
  store i16 8, i16* %group_word29, align 2
  %element_word30 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 1
  store i16 32, i16* %element_word30, align 2
  %value_rep31 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 2
  %5 = bitcast [3 x i8]* %value_rep31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length32 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 3
  %6 = load i8*, i8** %today_string.addr, align 8
  %call = call i64 @strlen(i8* %6) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %element_length32, align 4
  %value33 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 4
  %7 = load i8*, i8** %today_string.addr, align 8
  store i8* %7, i8** %value33, align 8
  %free34 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i32 0, i32 5
  store i32 0, i32* %free34, align 4
  %arrayinit.element35 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element28, i64 1
  %group_word36 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 0
  store i16 8, i16* %group_word36, align 2
  %element_word37 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 1
  store i16 33, i16* %element_word37, align 2
  %value_rep38 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 2
  %8 = bitcast [3 x i8]* %value_rep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length39 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 3
  %9 = load i8*, i8** %today_string.addr, align 8
  %call40 = call i64 @strlen(i8* %9) #8
  %conv41 = trunc i64 %call40 to i32
  store i32 %conv41, i32* %element_length39, align 4
  %value42 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 4
  %10 = load i8*, i8** %today_string.addr, align 8
  store i8* %10, i8** %value42, align 8
  %free43 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i32 0, i32 5
  store i32 0, i32* %free43, align 4
  %arrayinit.element44 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element35, i64 1
  %group_word45 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 0
  store i16 8, i16* %group_word45, align 2
  %element_word46 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 1
  store i16 34, i16* %element_word46, align 2
  %value_rep47 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 2
  %11 = bitcast [3 x i8]* %value_rep47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length48 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 3
  %12 = load i8*, i8** %today_string.addr, align 8
  %call49 = call i64 @strlen(i8* %12) #8
  %conv50 = trunc i64 %call49 to i32
  store i32 %conv50, i32* %element_length48, align 4
  %value51 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 4
  %13 = load i8*, i8** %today_string.addr, align 8
  store i8* %13, i8** %value51, align 8
  %free52 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i32 0, i32 5
  store i32 0, i32* %free52, align 4
  %arrayinit.element53 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element44, i64 1
  %group_word54 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 0
  store i16 8, i16* %group_word54, align 2
  %element_word55 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 1
  store i16 35, i16* %element_word55, align 2
  %value_rep56 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 2
  %14 = bitcast [3 x i8]* %value_rep56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length57 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 3
  %15 = load i8*, i8** %today_string.addr, align 8
  %call58 = call i64 @strlen(i8* %15) #8
  %conv59 = trunc i64 %call58 to i32
  store i32 %conv59, i32* %element_length57, align 4
  %value60 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 4
  %16 = load i8*, i8** %today_string.addr, align 8
  store i8* %16, i8** %value60, align 8
  %free61 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i32 0, i32 5
  store i32 0, i32* %free61, align 4
  %arrayinit.element62 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element53, i64 1
  %group_word63 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 0
  store i16 8, i16* %group_word63, align 2
  %element_word64 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 1
  store i16 48, i16* %element_word64, align 2
  %value_rep65 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 2
  %17 = bitcast [3 x i8]* %value_rep65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length66 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 3
  store i32 13, i32* %element_length66, align 4
  %value67 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i8** %value67, align 8
  %free68 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i32 0, i32 5
  store i32 0, i32* %free68, align 4
  %arrayinit.element69 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element62, i64 1
  %group_word70 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 0
  store i16 8, i16* %group_word70, align 2
  %element_word71 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 1
  store i16 80, i16* %element_word71, align 2
  %value_rep72 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 2
  %18 = bitcast [3 x i8]* %value_rep72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length73 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 3
  store i32 0, i32* %element_length73, align 4
  %value74 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8** %value74, align 8
  %free75 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i32 0, i32 5
  store i32 0, i32* %free75, align 4
  %arrayinit.element76 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element69, i64 1
  %group_word77 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 0
  store i16 8, i16* %group_word77, align 2
  %element_word78 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 1
  store i16 96, i16* %element_word78, align 2
  %value_rep79 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 2
  %19 = bitcast [3 x i8]* %value_rep79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length80 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 3
  store i32 2, i32* %element_length80, align 4
  %value81 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i8** %value81, align 8
  %free82 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i32 0, i32 5
  store i32 0, i32* %free82, align 4
  %arrayinit.element83 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element76, i64 1
  %group_word84 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 0
  store i16 8, i16* %group_word84, align 2
  %element_word85 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 1
  store i16 100, i16* %element_word85, align 2
  %value_rep86 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 2
  %20 = bitcast [3 x i8]* %value_rep86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length87 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 3
  store i32 3, i32* %element_length87, align 4
  %value88 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8** %value88, align 8
  %free89 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i32 0, i32 5
  store i32 0, i32* %free89, align 4
  %arrayinit.element90 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element83, i64 1
  %group_word91 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 0
  store i16 8, i16* %group_word91, align 2
  %element_word92 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 1
  store i16 144, i16* %element_word92, align 2
  %value_rep93 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 2
  %21 = bitcast [3 x i8]* %value_rep93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length94 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 3
  store i32 0, i32* %element_length94, align 4
  %value95 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8** %value95, align 8
  %free96 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i32 0, i32 5
  store i32 0, i32* %free96, align 4
  %arrayinit.element97 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element90, i64 1
  %group_word98 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 0
  store i16 16, i16* %group_word98, align 2
  %element_word99 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 1
  store i16 16, i16* %element_word99, align 2
  %value_rep100 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 2
  %22 = bitcast [3 x i8]* %value_rep100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length101 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 3
  store i32 10, i32* %element_length101, align 4
  %value102 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8** %value102, align 8
  %free103 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i32 0, i32 5
  store i32 0, i32* %free103, align 4
  %arrayinit.element104 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element97, i64 1
  %group_word105 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 0
  store i16 16, i16* %group_word105, align 2
  %element_word106 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 1
  store i16 32, i16* %element_word106, align 2
  %value_rep107 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 2
  %23 = bitcast [3 x i8]* %value_rep107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length108 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 3
  store i32 9, i32* %element_length108, align 4
  %value109 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8** %value109, align 8
  %free110 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i32 0, i32 5
  store i32 0, i32* %free110, align 4
  %arrayinit.element111 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element104, i64 1
  %group_word112 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 0
  store i16 16, i16* %group_word112, align 2
  %element_word113 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 1
  store i16 48, i16* %element_word113, align 2
  %value_rep114 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 2
  %24 = bitcast [3 x i8]* %value_rep114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length115 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 3
  %25 = load i8*, i8** %today_string.addr, align 8
  %call116 = call i64 @strlen(i8* %25) #8
  %conv117 = trunc i64 %call116 to i32
  store i32 %conv117, i32* %element_length115, align 4
  %value118 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 4
  %26 = load i8*, i8** %today_string.addr, align 8
  store i8* %26, i8** %value118, align 8
  %free119 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i32 0, i32 5
  store i32 0, i32* %free119, align 4
  %arrayinit.element120 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element111, i64 1
  %group_word121 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 0
  store i16 16, i16* %group_word121, align 2
  %element_word122 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 1
  store i16 64, i16* %element_word122, align 2
  %value_rep123 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 2
  %27 = bitcast [3 x i8]* %value_rep123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length124 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 3
  store i32 0, i32* %element_length124, align 4
  %value125 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8** %value125, align 8
  %free126 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i32 0, i32 5
  store i32 0, i32* %free126, align 4
  %arrayinit.element127 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element120, i64 1
  %group_word128 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 0
  store i16 32, i16* %group_word128, align 2
  %element_word129 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 1
  store i16 16, i16* %element_word129, align 2
  %value_rep130 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 2
  %28 = bitcast [3 x i8]* %value_rep130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length131 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 3
  store i32 1, i32* %element_length131, align 4
  %value132 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8** %value132, align 8
  %free133 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i32 0, i32 5
  store i32 0, i32* %free133, align 4
  %arrayinit.element134 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element127, i64 1
  %group_word135 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 0
  store i16 32, i16* %group_word135, align 2
  %element_word136 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 1
  store i16 17, i16* %element_word136, align 2
  %value_rep137 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 2
  %29 = bitcast [3 x i8]* %value_rep137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length138 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 3
  store i32 1, i32* %element_length138, align 4
  %value139 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8** %value139, align 8
  %free140 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i32 0, i32 5
  store i32 0, i32* %free140, align 4
  %arrayinit.element141 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element134, i64 1
  %group_word142 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 0
  store i16 32, i16* %group_word142, align 2
  %element_word143 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 1
  store i16 18, i16* %element_word143, align 2
  %value_rep144 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 2
  %30 = bitcast [3 x i8]* %value_rep144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length145 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 3
  store i32 1, i32* %element_length145, align 4
  %value146 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8** %value146, align 8
  %free147 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i32 0, i32 5
  store i32 0, i32* %free147, align 4
  %arrayinit.element148 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element141, i64 1
  %group_word149 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 0
  store i16 32, i16* %group_word149, align 2
  %element_word150 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 1
  store i16 19, i16* %element_word150, align 2
  %value_rep151 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 2
  %31 = bitcast [3 x i8]* %value_rep151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length152 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 3
  store i32 1, i32* %element_length152, align 4
  %value153 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8** %value153, align 8
  %free154 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i32 0, i32 5
  store i32 0, i32* %free154, align 4
  %arrayinit.element155 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element148, i64 1
  %group_word156 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 0
  store i16 0, i16* %group_word156, align 2
  %element_word157 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 1
  store i16 0, i16* %element_word157, align 2
  %value_rep158 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 2
  %32 = bitcast [3 x i8]* %value_rep158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length159 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 3
  store i32 0, i32* %element_length159, align 4
  %value160 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 4
  store i8* null, i8** %value160, align 8
  %free161 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayinit.element155, i32 0, i32 5
  store i32 0, i32* %free161, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom
  %group_word162 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx, i32 0, i32 0
  %34 = load i16, i16* %group_word162, align 2
  %conv163 = zext i16 %34 to i32
  %cmp = icmp sgt i32 %conv163, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %36 to i64
  %arrayidx166 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom165
  %group_word167 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx166, i32 0, i32 0
  %37 = load i16, i16* %group_word167, align 2
  %38 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %38 to i64
  %arrayidx169 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom168
  %element_word170 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx169, i32 0, i32 1
  %39 = load i16, i16* %element_word170, align 2
  %call171 = call %struct.DICOMELEMENT* @dicom_element_find_by_num(%struct._GSList* %35, i16 zeroext %37, i16 zeroext %39)
  %cmp172 = icmp eq %struct.DICOMELEMENT* %call171, null
  br i1 %cmp172, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %40 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %41 to i64
  %arrayidx175 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom174
  %group_word176 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx175, i32 0, i32 0
  %42 = load i16, i16* %group_word176, align 2
  %43 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %43 to i64
  %arrayidx178 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom177
  %element_word179 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx178, i32 0, i32 1
  %44 = load i16, i16* %element_word179, align 2
  %45 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %45 to i64
  %arrayidx181 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom180
  %value_rep182 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx181, i32 0, i32 2
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep182, i32 0, i32 0
  %46 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %46 to i64
  %arrayidx184 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom183
  %element_length185 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx184, i32 0, i32 3
  %47 = load i32, i32* %element_length185, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %48 to i64
  %arrayidx187 = getelementptr inbounds [23 x %struct.DICOMELEMENT], [23 x %struct.DICOMELEMENT]* %defaults, i32 0, i64 %idxprom186
  %value188 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx187, i32 0, i32 4
  %49 = load i8*, i8** %value188, align 8
  %call189 = call %struct._GSList* @dicom_add_element(%struct._GSList* %40, i16 zeroext %42, i16 zeroext %44, i8* %arraydecay, i32 %47, i8* %49)
  store %struct._GSList* %call189, %struct._GSList** %elements.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  ret %struct._GSList* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_remove_gimp_specified_elements(%struct._GSList* %elements, i32 %samples_per_pixel) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %samples_per_pixel.addr = alloca i32, align 4
  %remove = alloca [9 x %struct.DICOMELEMENT], align 16
  %ele = alloca %struct.DICOMELEMENT*, align 8
  %i = alloca i32, align 4
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store i32 %samples_per_pixel, i32* %samples_per_pixel.addr, align 4
  %0 = bitcast [9 x %struct.DICOMELEMENT]* %remove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x %struct.DICOMELEMENT]* @dicom_remove_gimp_specified_elements.remove to i8*), i64 288, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.DICOMELEMENT], [9 x %struct.DICOMELEMENT]* %remove, i32 0, i64 %idxprom
  %group_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx, i32 0, i32 0
  %2 = load i16, i16* %group_word, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [9 x %struct.DICOMELEMENT], [9 x %struct.DICOMELEMENT]* %remove, i32 0, i64 %idxprom2
  %group_word4 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx3, i32 0, i32 0
  %5 = load i16, i16* %group_word4, align 2
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [9 x %struct.DICOMELEMENT], [9 x %struct.DICOMELEMENT]* %remove, i32 0, i64 %idxprom5
  %element_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %arrayidx6, i32 0, i32 1
  %7 = load i16, i16* %element_word, align 2
  %call = call %struct.DICOMELEMENT* @dicom_element_find_by_num(%struct._GSList* %3, i16 zeroext %5, i16 zeroext %7)
  store %struct.DICOMELEMENT* %call, %struct.DICOMELEMENT** %ele, align 8
  %tobool = icmp ne %struct.DICOMELEMENT* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %9 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele, align 8
  %call7 = call %struct._GSList* @dicom_destroy_element(%struct._GSList* %8, %struct.DICOMELEMENT* %9)
  store %struct._GSList* %call7, %struct._GSList** %elements.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %samples_per_pixel.addr, align 4
  %cmp8 = icmp eq i32 %11, 3
  br i1 %cmp8, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %for.end
  %12 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %call11 = call %struct.DICOMELEMENT* @dicom_element_find_by_num(%struct._GSList* %12, i16 zeroext 40, i16 zeroext 6)
  store %struct.DICOMELEMENT* %call11, %struct.DICOMELEMENT** %ele, align 8
  %tobool12 = icmp ne %struct.DICOMELEMENT* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %13 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %14 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele, align 8
  %call14 = call %struct._GSList* @dicom_destroy_element(%struct._GSList* %13, %struct.DICOMELEMENT* %14)
  store %struct._GSList* %call14, %struct._GSList** %elements.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %for.end
  %15 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  ret %struct._GSList* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_add_element_int(%struct._GSList* %elements, i16 zeroext %group_word, i16 zeroext %element_word, i8* %value_rep, i8* %value) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %group_word.addr = alloca i16, align 2
  %element_word.addr = alloca i16, align 2
  %value_rep.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store i16 %group_word, i16* %group_word.addr, align 2
  store i16 %element_word, i16* %element_word.addr, align 2
  store i8* %value_rep, i8** %value_rep.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value_rep.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %2 = load i16, i16* %group_word.addr, align 2
  %3 = load i16, i16* %element_word.addr, align 2
  %4 = load i8*, i8** %value_rep.addr, align 8
  %5 = load i32, i32* %len, align 4
  %6 = load i8*, i8** %value.addr, align 8
  %call1 = call %struct._GSList* @dicom_add_element(%struct._GSList* %1, i16 zeroext %2, i16 zeroext %3, i8* %4, i32 %5, i8* %6)
  ret %struct._GSList* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_add_element(%struct._GSList* %elements, i16 zeroext %group_word, i16 zeroext %element_word, i8* %value_rep, i32 %element_length, i8* %value) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %group_word.addr = alloca i16, align 2
  %element_word.addr = alloca i16, align 2
  %value_rep.addr = alloca i8*, align 8
  %element_length.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %element = alloca %struct.DICOMELEMENT*, align 8
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store i16 %group_word, i16* %group_word.addr, align 2
  store i16 %element_word, i16* %element_word.addr, align 2
  store i8* %value_rep, i8** %value_rep.addr, align 8
  store i32 %element_length, i32* %element_length.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 32)
  %0 = bitcast i8* %call to %struct.DICOMELEMENT*
  store %struct.DICOMELEMENT* %0, %struct.DICOMELEMENT** %element, align 8
  %1 = load i16, i16* %group_word.addr, align 2
  %2 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %group_word1 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %2, i32 0, i32 0
  store i16 %1, i16* %group_word1, align 2
  %3 = load i16, i16* %element_word.addr, align 2
  %4 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %element_word2 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %4, i32 0, i32 1
  store i16 %3, i16* %element_word2, align 2
  %5 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %value_rep3 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep3, i32 0, i32 0
  %6 = load i8*, i8** %value_rep.addr, align 8
  %call4 = call i8* @strncpy(i8* %arraydecay, i8* %6, i64 3) #6
  %7 = load i32, i32* %element_length.addr, align 4
  %8 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %element_length5 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %8, i32 0, i32 3
  store i32 %7, i32* %element_length5, align 4
  %9 = load i8*, i8** %value.addr, align 8
  %10 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %value6 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %10, i32 0, i32 4
  store i8* %9, i8** %value6, align 8
  %11 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %12 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %element, align 8
  %13 = bitcast %struct.DICOMELEMENT* %12 to i8*
  %call7 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %11, i8* %13)
  ret %struct._GSList* %call7
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_add_tags(%struct._IO_FILE* %DICOM, %struct._GByteArray* %group_stream, %struct._GSList* %elements) #0 {
entry:
  %DICOM.addr = alloca %struct._IO_FILE*, align 8
  %group_stream.addr = alloca %struct._GByteArray*, align 8
  %elements.addr = alloca %struct._GSList*, align 8
  %data = alloca %struct.anon, align 8
  store %struct._IO_FILE* %DICOM, %struct._IO_FILE** %DICOM.addr, align 8
  store %struct._GByteArray* %group_stream, %struct._GByteArray** %group_stream.addr, align 8
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  %DICOM1 = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %DICOM1, align 8
  %group_stream2 = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 1
  %1 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  store %struct._GByteArray* %1, %struct._GByteArray** %group_stream2, align 8
  %last_group = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 2
  store i32 -1, i32* %last_group, align 4
  %2 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %call = call %struct._GSList* @g_slist_sort(%struct._GSList* %2, i32 (i8*, i8*)* @dicom_elements_compare)
  store %struct._GSList* %call, %struct._GSList** %elements.addr, align 8
  %3 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %4 = bitcast %struct.anon* %data to i8*
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* @dicom_print_tags, i8* %4)
  %DICOM3 = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM3, align 8
  %last_group4 = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 2
  %6 = load i32, i32* %last_group4, align 4
  %group_stream5 = getelementptr inbounds %struct.anon, %struct.anon* %data, i32 0, i32 1
  %7 = load %struct._GByteArray*, %struct._GByteArray** %group_stream5, align 8
  %call6 = call i32 @write_group_to_file(%struct._IO_FILE* %5, i32 %6, %struct._GByteArray* %7)
  %8 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  ret %struct._GSList* %8
}

; Function Attrs: nounwind uwtable
define internal void @dicom_elements_destroy(%struct._GSList* %elements) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %tobool = icmp ne %struct._GSList* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  call void @g_slist_free_full(%struct._GSList* %1, void (i8*)* @dicom_element_done)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @g_byte_array_free(%struct._GByteArray*, i32) #1

declare i8** @gimp_image_get_parasite_list(i32, i32*) #1

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i64 @g_ascii_strtoull(i8*, i8**, i32) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_add_element_copy(%struct._GSList* %elements, i16 zeroext %group_word, i16 zeroext %element_word, i8* %value_rep, i32 %element_length, i8* %value) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %group_word.addr = alloca i16, align 2
  %element_word.addr = alloca i16, align 2
  %value_rep.addr = alloca i8*, align 8
  %element_length.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store i16 %group_word, i16* %group_word.addr, align 2
  store i16 %element_word, i16* %element_word.addr, align 2
  store i8* %value_rep, i8** %value_rep.addr, align 8
  store i32 %element_length, i32* %element_length.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %1 = load i16, i16* %group_word.addr, align 2
  %2 = load i16, i16* %element_word.addr, align 2
  %3 = load i8*, i8** %value_rep.addr, align 8
  %4 = load i32, i32* %element_length.addr, align 4
  %5 = load i8*, i8** %value.addr, align 8
  %6 = load i32, i32* %element_length.addr, align 4
  %call = call noalias i8* @g_memdup(i8* %5, i32 %6)
  %call1 = call %struct._GSList* @dicom_add_element(%struct._GSList* %0, i16 zeroext %1, i16 zeroext %2, i8* %3, i32 %4, i8* %call)
  store %struct._GSList* %call1, %struct._GSList** %elements.addr, align 8
  %7 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct.DICOMELEMENT*
  %free = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %9, i32 0, i32 5
  store i32 1, i32* %free, align 4
  %10 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  ret %struct._GSList* %10
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal %struct.DICOMELEMENT* @dicom_element_find_by_num(%struct._GSList* %head, i16 zeroext %group_word, i16 zeroext %element_word) #0 {
entry:
  %head.addr = alloca %struct._GSList*, align 8
  %group_word.addr = alloca i16, align 2
  %element_word.addr = alloca i16, align 2
  %data = alloca %struct.DICOMELEMENT, align 8
  %ele = alloca %struct._GSList*, align 8
  store %struct._GSList* %head, %struct._GSList** %head.addr, align 8
  store i16 %group_word, i16* %group_word.addr, align 2
  store i16 %element_word, i16* %element_word.addr, align 2
  %group_word1 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 0
  %0 = load i16, i16* %group_word.addr, align 2
  store i16 %0, i16* %group_word1, align 2
  %element_word2 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 1
  %1 = load i16, i16* %element_word.addr, align 2
  store i16 %1, i16* %element_word2, align 2
  %value_rep = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 2
  %2 = bitcast [3 x i8]* %value_rep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i64 3, i32 1, i1 false)
  %element_length = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 3
  store i32 0, i32* %element_length, align 4
  %value = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 4
  store i8* null, i8** %value, align 8
  %free = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %data, i32 0, i32 5
  store i32 0, i32* %free, align 4
  %3 = load %struct._GSList*, %struct._GSList** %head.addr, align 8
  %4 = bitcast %struct.DICOMELEMENT* %data to i8*
  %call = call %struct._GSList* @g_slist_find_custom(%struct._GSList* %3, i8* %4, i32 (i8*, i8*)* @dicom_elements_compare)
  store %struct._GSList* %call, %struct._GSList** %ele, align 8
  %5 = load %struct._GSList*, %struct._GSList** %ele, align 8
  %tobool = icmp ne %struct._GSList* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct._GSList*, %struct._GSList** %ele, align 8
  %data3 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ null, %cond.false ]
  %8 = bitcast i8* %cond to %struct.DICOMELEMENT*
  ret %struct.DICOMELEMENT* %8
}

declare %struct._GSList* @g_slist_find_custom(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dicom_elements_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %e1 = alloca %struct.DICOMELEMENT*, align 8
  %e2 = alloca %struct.DICOMELEMENT*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.DICOMELEMENT*
  store %struct.DICOMELEMENT* %1, %struct.DICOMELEMENT** %e1, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.DICOMELEMENT*
  store %struct.DICOMELEMENT* %3, %struct.DICOMELEMENT** %e2, align 8
  %4 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e1, align 8
  %group_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %4, i32 0, i32 0
  %5 = load i16, i16* %group_word, align 2
  %conv = zext i16 %5 to i32
  %6 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e2, align 8
  %group_word1 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %6, i32 0, i32 0
  %7 = load i16, i16* %group_word1, align 2
  %conv2 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %8 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e1, align 8
  %element_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %8, i32 0, i32 1
  %9 = load i16, i16* %element_word, align 2
  %conv4 = zext i16 %9 to i32
  %10 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e2, align 8
  %element_word5 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %10, i32 0, i32 1
  %11 = load i16, i16* %element_word5, align 2
  %conv6 = zext i16 %11 to i32
  %cmp7 = icmp eq i32 %conv4, %conv6
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %12 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e1, align 8
  %element_word10 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %12, i32 0, i32 1
  %13 = load i16, i16* %element_word10, align 2
  %conv11 = zext i16 %13 to i32
  %14 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e2, align 8
  %element_word12 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %14, i32 0, i32 1
  %15 = load i16, i16* %element_word12, align 2
  %conv13 = zext i16 %15 to i32
  %cmp14 = icmp sgt i32 %conv11, %conv13
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.18:                                       ; preds = %entry
  %16 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e1, align 8
  %group_word19 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %16, i32 0, i32 0
  %17 = load i16, i16* %group_word19, align 2
  %conv20 = zext i16 %17 to i32
  %18 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e2, align 8
  %group_word21 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %18, i32 0, i32 0
  %19 = load i16, i16* %group_word21, align 2
  %conv22 = zext i16 %19 to i32
  %cmp23 = icmp slt i32 %conv20, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else.18
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.else.17, %if.then.16, %if.then.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @dicom_destroy_element(%struct._GSList* %elements, %struct.DICOMELEMENT* %ele) #0 {
entry:
  %elements.addr = alloca %struct._GSList*, align 8
  %ele.addr = alloca %struct.DICOMELEMENT*, align 8
  store %struct._GSList* %elements, %struct._GSList** %elements.addr, align 8
  store %struct.DICOMELEMENT* %ele, %struct.DICOMELEMENT** %ele.addr, align 8
  %0 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele.addr, align 8
  %tobool = icmp ne %struct.DICOMELEMENT* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  %2 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele.addr, align 8
  %3 = bitcast %struct.DICOMELEMENT* %2 to i8*
  %call = call %struct._GSList* @g_slist_remove_all(%struct._GSList* %1, i8* %3)
  store %struct._GSList* %call, %struct._GSList** %elements.addr, align 8
  %4 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele.addr, align 8
  %free = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %4, i32 0, i32 5
  %5 = load i32, i32* %free, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele.addr, align 8
  %value = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %6, i32 0, i32 4
  %7 = load i8*, i8** %value, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %ele.addr, align 8
  %9 = bitcast %struct.DICOMELEMENT* %8 to i8*
  call void @g_slice_free1(i64 32, i8* %9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %10 = load %struct._GSList*, %struct._GSList** %elements.addr, align 8
  ret %struct._GSList* %10
}

declare %struct._GSList* @g_slist_remove_all(%struct._GSList*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GSList* @g_slist_sort(%struct._GSList*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @dicom_print_tags(i8* %data, i8* %user_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %d = alloca %struct.anon.0*, align 8
  %e = alloca %struct.DICOMELEMENT*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.anon.0*
  store %struct.anon.0* %1, %struct.anon.0** %d, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.DICOMELEMENT*
  store %struct.DICOMELEMENT* %3, %struct.DICOMELEMENT** %e, align 8
  %4 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %last_group = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i32 0, i32 2
  %5 = load i32, i32* %last_group, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %group_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %6, i32 0, i32 0
  %7 = load i16, i16* %group_word, align 2
  %conv = zext i16 %7 to i32
  %8 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %last_group1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 2
  %9 = load i32, i32* %last_group1, align 4
  %cmp2 = icmp ne i32 %conv, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %DICOM = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM, align 8
  %12 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %last_group4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 2
  %13 = load i32, i32* %last_group4, align 4
  %14 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %group_stream = getelementptr inbounds %struct.anon.0, %struct.anon.0* %14, i32 0, i32 1
  %15 = load %struct._GByteArray*, %struct._GByteArray** %group_stream, align 8
  %call = call i32 @write_group_to_file(%struct._IO_FILE* %11, i32 %13, %struct._GByteArray* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %group_stream5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %16, i32 0, i32 1
  %17 = load %struct._GByteArray*, %struct._GByteArray** %group_stream5, align 8
  %18 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %group_word6 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %18, i32 0, i32 0
  %19 = load i16, i16* %group_word6, align 2
  %conv7 = zext i16 %19 to i32
  %20 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %element_word = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %20, i32 0, i32 1
  %21 = load i16, i16* %element_word, align 2
  %conv8 = zext i16 %21 to i32
  %22 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %value_rep = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %22, i32 0, i32 2
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %value_rep, i32 0, i32 0
  %23 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %value = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %23, i32 0, i32 4
  %24 = load i8*, i8** %value, align 8
  %25 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %element_length = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %25, i32 0, i32 3
  %26 = load i32, i32* %element_length, align 4
  call void @add_tag_pointer(%struct._GByteArray* %17, i32 %conv7, i32 %conv8, i8* %arraydecay, i8* %24, i32 %26)
  %27 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %group_word9 = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %27, i32 0, i32 0
  %28 = load i16, i16* %group_word9, align 2
  %conv10 = zext i16 %28 to i32
  %29 = load %struct.anon.0*, %struct.anon.0** %d, align 8
  %last_group11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %29, i32 0, i32 2
  store i32 %conv10, i32* %last_group11, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_group_to_file(%struct._IO_FILE* %DICOM, i32 %group, %struct._GByteArray* %group_stream) #0 {
entry:
  %DICOM.addr = alloca %struct._IO_FILE*, align 8
  %group.addr = alloca i32, align 4
  %group_stream.addr = alloca %struct._GByteArray*, align 8
  %retval1 = alloca i32, align 4
  %swapped16 = alloca i16, align 2
  %swapped32 = alloca i32, align 4
  store %struct._IO_FILE* %DICOM, %struct._IO_FILE** %DICOM.addr, align 8
  store i32 %group, i32* %group.addr, align 4
  store %struct._GByteArray* %group_stream, %struct._GByteArray** %group_stream.addr, align 8
  store i32 1, i32* %retval1, align 4
  %0 = load i32, i32* %group.addr, align 4
  %conv = trunc i32 %0 to i16
  %conv2 = zext i16 %conv to i32
  %shr = ashr i32 %conv2, 8
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i32
  %1 = load i32, i32* %group.addr, align 4
  %conv5 = trunc i32 %1 to i16
  %conv6 = zext i16 %conv5 to i32
  %shl = shl i32 %conv6, 8
  %conv7 = trunc i32 %shl to i16
  %conv8 = zext i16 %conv7 to i32
  %or = or i32 %conv4, %conv8
  %conv9 = trunc i32 %or to i16
  %conv10 = zext i16 %conv9 to i32
  %shr11 = ashr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i16
  %conv13 = zext i16 %conv12 to i32
  %2 = load i32, i32* %group.addr, align 4
  %conv14 = trunc i32 %2 to i16
  %conv15 = zext i16 %conv14 to i32
  %shr16 = ashr i32 %conv15, 8
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = zext i16 %conv17 to i32
  %3 = load i32, i32* %group.addr, align 4
  %conv19 = trunc i32 %3 to i16
  %conv20 = zext i16 %conv19 to i32
  %shl21 = shl i32 %conv20, 8
  %conv22 = trunc i32 %shl21 to i16
  %conv23 = zext i16 %conv22 to i32
  %or24 = or i32 %conv18, %conv23
  %conv25 = trunc i32 %or24 to i16
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 8
  %conv28 = trunc i32 %shl27 to i16
  %conv29 = zext i16 %conv28 to i32
  %or30 = or i32 %conv13, %conv29
  %conv31 = trunc i32 %or30 to i16
  store i16 %conv31, i16* %swapped16, align 2
  %4 = bitcast i16* %swapped16 to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call = call i64 @fwrite(i8* %4, i64 1, i64 2, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call32 = call i32 @fputc(i32 0, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call33 = call i32 @fputc(i32 0, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call34 = call i32 @fputc(i32 85, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call35 = call i32 @fputc(i32 76, %struct._IO_FILE* %9)
  store i16 4, i16* %swapped16, align 2
  %10 = bitcast i16* %swapped16 to i8*
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call36 = call i64 @fwrite(i8* %10, i64 1, i64 2, %struct._IO_FILE* %11)
  %12 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %12, i32 0, i32 1
  %13 = load i32, i32* %len, align 4
  %and = and i32 %13, 255
  %shl37 = shl i32 %and, 24
  %14 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len38 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %14, i32 0, i32 1
  %15 = load i32, i32* %len38, align 4
  %and39 = and i32 %15, 65280
  %shl40 = shl i32 %and39, 8
  %or41 = or i32 %shl37, %shl40
  %16 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len42 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %16, i32 0, i32 1
  %17 = load i32, i32* %len42, align 4
  %and43 = and i32 %17, 16711680
  %shr44 = lshr i32 %and43, 8
  %or45 = or i32 %or41, %shr44
  %18 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len46 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %18, i32 0, i32 1
  %19 = load i32, i32* %len46, align 4
  %and47 = and i32 %19, -16777216
  %shr48 = lshr i32 %and47, 24
  %or49 = or i32 %or45, %shr48
  %and50 = and i32 %or49, 255
  %shl51 = shl i32 %and50, 24
  %20 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len52 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %20, i32 0, i32 1
  %21 = load i32, i32* %len52, align 4
  %and53 = and i32 %21, 255
  %shl54 = shl i32 %and53, 24
  %22 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len55 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len55, align 4
  %and56 = and i32 %23, 65280
  %shl57 = shl i32 %and56, 8
  %or58 = or i32 %shl54, %shl57
  %24 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len59 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %24, i32 0, i32 1
  %25 = load i32, i32* %len59, align 4
  %and60 = and i32 %25, 16711680
  %shr61 = lshr i32 %and60, 8
  %or62 = or i32 %or58, %shr61
  %26 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len63 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %26, i32 0, i32 1
  %27 = load i32, i32* %len63, align 4
  %and64 = and i32 %27, -16777216
  %shr65 = lshr i32 %and64, 24
  %or66 = or i32 %or62, %shr65
  %and67 = and i32 %or66, 65280
  %shl68 = shl i32 %and67, 8
  %or69 = or i32 %shl51, %shl68
  %28 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len70 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %28, i32 0, i32 1
  %29 = load i32, i32* %len70, align 4
  %and71 = and i32 %29, 255
  %shl72 = shl i32 %and71, 24
  %30 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len73 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %30, i32 0, i32 1
  %31 = load i32, i32* %len73, align 4
  %and74 = and i32 %31, 65280
  %shl75 = shl i32 %and74, 8
  %or76 = or i32 %shl72, %shl75
  %32 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len77 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %32, i32 0, i32 1
  %33 = load i32, i32* %len77, align 4
  %and78 = and i32 %33, 16711680
  %shr79 = lshr i32 %and78, 8
  %or80 = or i32 %or76, %shr79
  %34 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len81 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %34, i32 0, i32 1
  %35 = load i32, i32* %len81, align 4
  %and82 = and i32 %35, -16777216
  %shr83 = lshr i32 %and82, 24
  %or84 = or i32 %or80, %shr83
  %and85 = and i32 %or84, 16711680
  %shr86 = lshr i32 %and85, 8
  %or87 = or i32 %or69, %shr86
  %36 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len88 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %36, i32 0, i32 1
  %37 = load i32, i32* %len88, align 4
  %and89 = and i32 %37, 255
  %shl90 = shl i32 %and89, 24
  %38 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len91 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %38, i32 0, i32 1
  %39 = load i32, i32* %len91, align 4
  %and92 = and i32 %39, 65280
  %shl93 = shl i32 %and92, 8
  %or94 = or i32 %shl90, %shl93
  %40 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len95 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %40, i32 0, i32 1
  %41 = load i32, i32* %len95, align 4
  %and96 = and i32 %41, 16711680
  %shr97 = lshr i32 %and96, 8
  %or98 = or i32 %or94, %shr97
  %42 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len99 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %42, i32 0, i32 1
  %43 = load i32, i32* %len99, align 4
  %and100 = and i32 %43, -16777216
  %shr101 = lshr i32 %and100, 24
  %or102 = or i32 %or98, %shr101
  %and103 = and i32 %or102, -16777216
  %shr104 = lshr i32 %and103, 24
  %or105 = or i32 %or87, %shr104
  store i32 %or105, i32* %swapped32, align 4
  %44 = bitcast i32* %swapped32 to i8*
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call106 = call i64 @fwrite(i8* %44, i64 1, i64 4, %struct._IO_FILE* %45)
  %46 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %data = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len107 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %48, i32 0, i32 1
  %49 = load i32, i32* %len107, align 4
  %conv108 = zext i32 %49 to i64
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %DICOM.addr, align 8
  %call109 = call i64 @fwrite(i8* %47, i64 1, i64 %conv108, %struct._IO_FILE* %50)
  %51 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %len110 = getelementptr inbounds %struct._GByteArray, %struct._GByteArray* %51, i32 0, i32 1
  %52 = load i32, i32* %len110, align 4
  %conv111 = zext i32 %52 to i64
  %cmp = icmp ne i64 %call109, %conv111
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %53 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %call113 = call %struct._GByteArray* @g_byte_array_set_size(%struct._GByteArray* %53, i32 0)
  %54 = load i32, i32* %retval1, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal void @add_tag_pointer(%struct._GByteArray* %group_stream, i32 %group, i32 %element, i8* %value_rep, i8* %data, i32 %length) #0 {
entry:
  %group_stream.addr = alloca %struct._GByteArray*, align 8
  %group.addr = alloca i32, align 4
  %element.addr = alloca i32, align 4
  %value_rep.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %is_long = alloca i32, align 4
  %swapped16 = alloca i16, align 2
  %swapped32 = alloca i32, align 4
  %pad = alloca i32, align 4
  store %struct._GByteArray* %group_stream, %struct._GByteArray** %group_stream.addr, align 8
  store i32 %group, i32* %group.addr, align 4
  store i32 %element, i32* %element.addr, align 4
  store i8* %value_rep, i8** %value_rep.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %pad, align 4
  %0 = load i8*, i8** %value_rep.addr, align 8
  %call = call i8* @strstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %0) #8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4
  %cmp1 = icmp sgt i32 %1, 65535
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %is_long, align 4
  %3 = load i32, i32* %group.addr, align 4
  %conv = trunc i32 %3 to i16
  %conv2 = zext i16 %conv to i32
  %shr = ashr i32 %conv2, 8
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i32
  %4 = load i32, i32* %group.addr, align 4
  %conv5 = trunc i32 %4 to i16
  %conv6 = zext i16 %conv5 to i32
  %shl = shl i32 %conv6, 8
  %conv7 = trunc i32 %shl to i16
  %conv8 = zext i16 %conv7 to i32
  %or = or i32 %conv4, %conv8
  %conv9 = trunc i32 %or to i16
  %conv10 = zext i16 %conv9 to i32
  %shr11 = ashr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i16
  %conv13 = zext i16 %conv12 to i32
  %5 = load i32, i32* %group.addr, align 4
  %conv14 = trunc i32 %5 to i16
  %conv15 = zext i16 %conv14 to i32
  %shr16 = ashr i32 %conv15, 8
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = zext i16 %conv17 to i32
  %6 = load i32, i32* %group.addr, align 4
  %conv19 = trunc i32 %6 to i16
  %conv20 = zext i16 %conv19 to i32
  %shl21 = shl i32 %conv20, 8
  %conv22 = trunc i32 %shl21 to i16
  %conv23 = zext i16 %conv22 to i32
  %or24 = or i32 %conv18, %conv23
  %conv25 = trunc i32 %or24 to i16
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 8
  %conv28 = trunc i32 %shl27 to i16
  %conv29 = zext i16 %conv28 to i32
  %or30 = or i32 %conv13, %conv29
  %conv31 = trunc i32 %or30 to i16
  store i16 %conv31, i16* %swapped16, align 2
  %7 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %8 = bitcast i16* %swapped16 to i8*
  %call32 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %7, i8* %8, i32 2)
  %9 = load i32, i32* %element.addr, align 4
  %conv33 = trunc i32 %9 to i16
  %conv34 = zext i16 %conv33 to i32
  %shr35 = ashr i32 %conv34, 8
  %conv36 = trunc i32 %shr35 to i16
  %conv37 = zext i16 %conv36 to i32
  %10 = load i32, i32* %element.addr, align 4
  %conv38 = trunc i32 %10 to i16
  %conv39 = zext i16 %conv38 to i32
  %shl40 = shl i32 %conv39, 8
  %conv41 = trunc i32 %shl40 to i16
  %conv42 = zext i16 %conv41 to i32
  %or43 = or i32 %conv37, %conv42
  %conv44 = trunc i32 %or43 to i16
  %conv45 = zext i16 %conv44 to i32
  %shr46 = ashr i32 %conv45, 8
  %conv47 = trunc i32 %shr46 to i16
  %conv48 = zext i16 %conv47 to i32
  %11 = load i32, i32* %element.addr, align 4
  %conv49 = trunc i32 %11 to i16
  %conv50 = zext i16 %conv49 to i32
  %shr51 = ashr i32 %conv50, 8
  %conv52 = trunc i32 %shr51 to i16
  %conv53 = zext i16 %conv52 to i32
  %12 = load i32, i32* %element.addr, align 4
  %conv54 = trunc i32 %12 to i16
  %conv55 = zext i16 %conv54 to i32
  %shl56 = shl i32 %conv55, 8
  %conv57 = trunc i32 %shl56 to i16
  %conv58 = zext i16 %conv57 to i32
  %or59 = or i32 %conv53, %conv58
  %conv60 = trunc i32 %or59 to i16
  %conv61 = zext i16 %conv60 to i32
  %shl62 = shl i32 %conv61, 8
  %conv63 = trunc i32 %shl62 to i16
  %conv64 = zext i16 %conv63 to i32
  %or65 = or i32 %conv48, %conv64
  %conv66 = trunc i32 %or65 to i16
  store i16 %conv66, i16* %swapped16, align 2
  %13 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %14 = bitcast i16* %swapped16 to i8*
  %call67 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %13, i8* %14, i32 2)
  %15 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %16 = load i8*, i8** %value_rep.addr, align 8
  %call68 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %15, i8* %16, i32 2)
  %17 = load i32, i32* %length.addr, align 4
  %rem = srem i32 %17, 2
  %cmp69 = icmp ne i32 %rem, 0
  br i1 %cmp69, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i32 1, i32* %pad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %18 = load i32, i32* %is_long, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.end
  %19 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %call72 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i32 2)
  %20 = load i32, i32* %length.addr, align 4
  %21 = load i32, i32* %pad, align 4
  %add = add i32 %20, %21
  %and = and i32 %add, 255
  %shl73 = shl i32 %and, 24
  %22 = load i32, i32* %length.addr, align 4
  %23 = load i32, i32* %pad, align 4
  %add74 = add i32 %22, %23
  %and75 = and i32 %add74, 65280
  %shl76 = shl i32 %and75, 8
  %or77 = or i32 %shl73, %shl76
  %24 = load i32, i32* %length.addr, align 4
  %25 = load i32, i32* %pad, align 4
  %add78 = add i32 %24, %25
  %and79 = and i32 %add78, 16711680
  %shr80 = lshr i32 %and79, 8
  %or81 = or i32 %or77, %shr80
  %26 = load i32, i32* %length.addr, align 4
  %27 = load i32, i32* %pad, align 4
  %add82 = add i32 %26, %27
  %and83 = and i32 %add82, -16777216
  %shr84 = lshr i32 %and83, 24
  %or85 = or i32 %or81, %shr84
  %and86 = and i32 %or85, 255
  %shl87 = shl i32 %and86, 24
  %28 = load i32, i32* %length.addr, align 4
  %29 = load i32, i32* %pad, align 4
  %add88 = add i32 %28, %29
  %and89 = and i32 %add88, 255
  %shl90 = shl i32 %and89, 24
  %30 = load i32, i32* %length.addr, align 4
  %31 = load i32, i32* %pad, align 4
  %add91 = add i32 %30, %31
  %and92 = and i32 %add91, 65280
  %shl93 = shl i32 %and92, 8
  %or94 = or i32 %shl90, %shl93
  %32 = load i32, i32* %length.addr, align 4
  %33 = load i32, i32* %pad, align 4
  %add95 = add i32 %32, %33
  %and96 = and i32 %add95, 16711680
  %shr97 = lshr i32 %and96, 8
  %or98 = or i32 %or94, %shr97
  %34 = load i32, i32* %length.addr, align 4
  %35 = load i32, i32* %pad, align 4
  %add99 = add i32 %34, %35
  %and100 = and i32 %add99, -16777216
  %shr101 = lshr i32 %and100, 24
  %or102 = or i32 %or98, %shr101
  %and103 = and i32 %or102, 65280
  %shl104 = shl i32 %and103, 8
  %or105 = or i32 %shl87, %shl104
  %36 = load i32, i32* %length.addr, align 4
  %37 = load i32, i32* %pad, align 4
  %add106 = add i32 %36, %37
  %and107 = and i32 %add106, 255
  %shl108 = shl i32 %and107, 24
  %38 = load i32, i32* %length.addr, align 4
  %39 = load i32, i32* %pad, align 4
  %add109 = add i32 %38, %39
  %and110 = and i32 %add109, 65280
  %shl111 = shl i32 %and110, 8
  %or112 = or i32 %shl108, %shl111
  %40 = load i32, i32* %length.addr, align 4
  %41 = load i32, i32* %pad, align 4
  %add113 = add i32 %40, %41
  %and114 = and i32 %add113, 16711680
  %shr115 = lshr i32 %and114, 8
  %or116 = or i32 %or112, %shr115
  %42 = load i32, i32* %length.addr, align 4
  %43 = load i32, i32* %pad, align 4
  %add117 = add i32 %42, %43
  %and118 = and i32 %add117, -16777216
  %shr119 = lshr i32 %and118, 24
  %or120 = or i32 %or116, %shr119
  %and121 = and i32 %or120, 16711680
  %shr122 = lshr i32 %and121, 8
  %or123 = or i32 %or105, %shr122
  %44 = load i32, i32* %length.addr, align 4
  %45 = load i32, i32* %pad, align 4
  %add124 = add i32 %44, %45
  %and125 = and i32 %add124, 255
  %shl126 = shl i32 %and125, 24
  %46 = load i32, i32* %length.addr, align 4
  %47 = load i32, i32* %pad, align 4
  %add127 = add i32 %46, %47
  %and128 = and i32 %add127, 65280
  %shl129 = shl i32 %and128, 8
  %or130 = or i32 %shl126, %shl129
  %48 = load i32, i32* %length.addr, align 4
  %49 = load i32, i32* %pad, align 4
  %add131 = add i32 %48, %49
  %and132 = and i32 %add131, 16711680
  %shr133 = lshr i32 %and132, 8
  %or134 = or i32 %or130, %shr133
  %50 = load i32, i32* %length.addr, align 4
  %51 = load i32, i32* %pad, align 4
  %add135 = add i32 %50, %51
  %and136 = and i32 %add135, -16777216
  %shr137 = lshr i32 %and136, 24
  %or138 = or i32 %or134, %shr137
  %and139 = and i32 %or138, -16777216
  %shr140 = lshr i32 %and139, 24
  %or141 = or i32 %or123, %shr140
  store i32 %or141, i32* %swapped32, align 4
  %52 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %53 = bitcast i32* %swapped32 to i8*
  %call142 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %52, i8* %53, i32 4)
  br label %if.end.182

if.else:                                          ; preds = %if.end
  %54 = load i32, i32* %length.addr, align 4
  %55 = load i32, i32* %pad, align 4
  %add143 = add i32 %54, %55
  %conv144 = trunc i32 %add143 to i16
  %conv145 = zext i16 %conv144 to i32
  %shr146 = ashr i32 %conv145, 8
  %conv147 = trunc i32 %shr146 to i16
  %conv148 = zext i16 %conv147 to i32
  %56 = load i32, i32* %length.addr, align 4
  %57 = load i32, i32* %pad, align 4
  %add149 = add i32 %56, %57
  %conv150 = trunc i32 %add149 to i16
  %conv151 = zext i16 %conv150 to i32
  %shl152 = shl i32 %conv151, 8
  %conv153 = trunc i32 %shl152 to i16
  %conv154 = zext i16 %conv153 to i32
  %or155 = or i32 %conv148, %conv154
  %conv156 = trunc i32 %or155 to i16
  %conv157 = zext i16 %conv156 to i32
  %shr158 = ashr i32 %conv157, 8
  %conv159 = trunc i32 %shr158 to i16
  %conv160 = zext i16 %conv159 to i32
  %58 = load i32, i32* %length.addr, align 4
  %59 = load i32, i32* %pad, align 4
  %add161 = add i32 %58, %59
  %conv162 = trunc i32 %add161 to i16
  %conv163 = zext i16 %conv162 to i32
  %shr164 = ashr i32 %conv163, 8
  %conv165 = trunc i32 %shr164 to i16
  %conv166 = zext i16 %conv165 to i32
  %60 = load i32, i32* %length.addr, align 4
  %61 = load i32, i32* %pad, align 4
  %add167 = add i32 %60, %61
  %conv168 = trunc i32 %add167 to i16
  %conv169 = zext i16 %conv168 to i32
  %shl170 = shl i32 %conv169, 8
  %conv171 = trunc i32 %shl170 to i16
  %conv172 = zext i16 %conv171 to i32
  %or173 = or i32 %conv166, %conv172
  %conv174 = trunc i32 %or173 to i16
  %conv175 = zext i16 %conv174 to i32
  %shl176 = shl i32 %conv175, 8
  %conv177 = trunc i32 %shl176 to i16
  %conv178 = zext i16 %conv177 to i32
  %or179 = or i32 %conv160, %conv178
  %conv180 = trunc i32 %or179 to i16
  store i16 %conv180, i16* %swapped16, align 2
  %62 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %63 = bitcast i16* %swapped16 to i8*
  %call181 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %62, i8* %63, i32 2)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else, %if.then.71
  %64 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %65 = load i8*, i8** %data.addr, align 8
  %66 = load i32, i32* %length.addr, align 4
  %call183 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %64, i8* %65, i32 %66)
  %67 = load i32, i32* %pad, align 4
  %tobool184 = icmp ne i32 %67, 0
  br i1 %tobool184, label %if.then.185, label %if.end.194

if.then.185:                                      ; preds = %if.end.182
  %68 = load i8*, i8** %value_rep.addr, align 8
  %call186 = call i8* @strstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* %68) #8
  %cmp187 = icmp ne i8* %call186, null
  br i1 %cmp187, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %if.then.185
  %69 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %call190 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i32 1)
  br label %if.end.193

if.else.191:                                      ; preds = %if.then.185
  %70 = load %struct._GByteArray*, %struct._GByteArray** %group_stream.addr, align 8
  %call192 = call %struct._GByteArray* @g_byte_array_append(%struct._GByteArray* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i32 1)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.189
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.182
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare %struct._GByteArray* @g_byte_array_append(%struct._GByteArray*, i8*, i32) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare %struct._GByteArray* @g_byte_array_set_size(%struct._GByteArray*, i32) #1

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @dicom_element_done(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %e = alloca %struct.DICOMELEMENT*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct.DICOMELEMENT*
  store %struct.DICOMELEMENT* %2, %struct.DICOMELEMENT** %e, align 8
  %3 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %free = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %3, i32 0, i32 5
  %4 = load i32, i32* %free, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.DICOMELEMENT*, %struct.DICOMELEMENT** %e, align 8
  %value = getelementptr inbounds %struct.DICOMELEMENT, %struct.DICOMELEMENT* %5, i32 0, i32 4
  %6 = load i8*, i8** %value, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i8*, i8** %data.addr, align 8
  call void @g_slice_free1(i64 32, i8* %7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
