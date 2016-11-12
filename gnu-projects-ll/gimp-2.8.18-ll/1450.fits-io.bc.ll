; ModuleID = './plug-ins/file-fits/fits-io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FITS_DATA = type { i64, [72 x i8] }
%struct.FITS_FILE = type { %struct._IO_FILE*, i8, i32, i32, i32, i32, %struct.fits_hdu_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fits_hdu_list = type { i64, i64, i64, i64, i32, i32, i32, [128 x [80 x i8]], %struct.anon, double, double, i32, [999 x i32], i32, i64, double, double, [80 x i8], i64, i64, double, double, i32, i32, %struct.fits_record_list*, %struct.fits_hdu_list* }
%struct.anon = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fits_record_list = type { [2880 x i8], %struct.fits_record_list* }
%struct.FITS_PIX_TRANSFORM = type { double, double, double, double, double, i8 }

@fits_get_error.errmsg = internal global [256 x i8] zeroinitializer, align 16
@fits_n_error = internal global i32 0, align 4
@fits_error = internal global [16 x [256 x i8]] zeroinitializer, align 16
@fits_ieee32_intel = internal global i32 0, align 4
@fits_ieee32_motorola = internal global i32 0, align 4
@fits_ieee64_intel = internal global i32 0, align 4
@fits_ieee64_motorola = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"fits_open: Invalid parameters\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fits_open: Invalid openmode\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"fits_open: fopen() failed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"fits_open: No more memory\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"fits_close: Invalid parameter\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"fits_add_hdu: file not open for writing\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Content of SIMPLE-header:\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Content of XTENSION-header %s:\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"header_offset : %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"data_offset   : %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"data_size     : %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"used data_size: %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"bytes p.pixel : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"pixmin        : %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"pixmax        : %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"naxis         : %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"naxis%-3d      : %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"bitpix        : %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"blank         : %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"blank         : not used\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"datamin       : %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"datamin       : not used\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"datamax       : %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"datamax       : not used\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"gcount        : %ld\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"gcount        : not used\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"pcount        : %ld\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"pcount        : not used\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"bscale        : %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"bscale        : not used\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"bzero         : %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"bzero         : not used\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"fits_write_header: file not open for writing\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"%-8.8s= %20s%50s\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"%-8.8s= '%s\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"XTENSION\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"%-8.8s= %20ld%50s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"BITPIX\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"NAXIS\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"NAXIS%d\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"PCOUNT\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"GCOUNT\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%-8.8s= %20.20s%50s\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"BZERO\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"BSCALE\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"DATAMIN\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"DATAMAX\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"BLANK\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%-80.80s\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@fits_decode_card.data = internal global %union.FITS_DATA zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [3 x i8] c"= \00", align 1
@.str.63 = private unnamed_addr constant [67 x i8] c"fits_decode_card (warning): Missing value indicator '= ' for %8.8s\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"fits_decode_card: error decoding typ_bitpix16\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"fits_decode_card: error decoding typ_bitpix32\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"fits_decode_card: error decoding typ_bitpixm32\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"fits_decode_card: error decoding typ_bitpixm64\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"fits_decode_card: error decoding typ_fbool\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"fits_decode_card: error decoding typ_flong\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"fits_decode_card: error decoding typ_fdouble\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"fits_decode_card: missing ' decoding typ_fstring\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"fits_search_card: Invalid parameter\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"fits_image_info: ff is NULL\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"fits_image_info: file not open for reading\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"fits_image_info: picind out of range\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"fits_seek_image: Unable to position to image\00", align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"fits_read_header: Error in read of first record\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"SIMPLE  \00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"fits_read_header: Missing keyword SIMPLE or XTENSION\00", align 1
@.str.82 = private unnamed_addr constant [65 x i8] c"fits_read_header (warning): keyword SIMPLE does not have value T\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"fits_read_header: Not enough memory\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"fits_read_header: Error in read of record\00", align 1
@.str.85 = private unnamed_addr constant [38 x i8] c"fits_decode_header: Not enough memory\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"No valid XTENSION header found.\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"fits_decode_header: Invalid BITPIX-value\00", align 1
@.str.88 = private unnamed_addr constant [55 x i8] c"fits_decode_header: Missing GCOUNT/PCOUNT for XTENSION\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"NAXIS%-3d\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"fits_decode_header: Negative value in NAXISn\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"fits_decode_header: Random groups with NAXIS1 != 0\00", align 1
@.str.92 = private unnamed_addr constant [42 x i8] c"fits_decode_card: Not enough NAXISn-cards\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.94 = private unnamed_addr constant [103 x i8] c"fits_decode_header: IEEE floating point format required for BITPIX=%d\0Ais not supported on this machine\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"fits_decode_header: missing/invalid %s card\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"fits_eval_pixrange: cant position file\00", align 1
@.str.97 = private unnamed_addr constant [48 x i8] c"fits_eval_pixrange: error on read bitpix 8 data\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"fits_eval_pixrange: error on read bitpix 16 data\00", align 1
@.str.99 = private unnamed_addr constant [49 x i8] c"fits_eval_pixrange: error on read bitpix 32 data\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"fits_eval_pixrange: error on read bitpix -32 data\00", align 1
@.str.101 = private unnamed_addr constant [50 x i8] c"fits_eval_pixrange: error on read bitpix -64 data\00", align 1
@g_ascii_table = external constant i16*, align 8

; Function Attrs: nounwind uwtable
define i8* @fits_get_error() #0 {
entry:
  %retval = alloca i8*, align 8
  %k = alloca i32, align 4
  %0 = load i32, i32* @fits_n_error, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fits_get_error.errmsg, i32 0, i32 0), i8* getelementptr inbounds ([16 x [256 x i8]], [16 x [256 x i8]]* @fits_error, i32 0, i64 0, i32 0)) #4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* @fits_n_error, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x [256 x i8]], [16 x [256 x i8]]* @fits_error, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [16 x [256 x i8]], [16 x [256 x i8]]* @fits_error, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx3, i32 0, i32 0
  %call5 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay4) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @fits_n_error, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @fits_n_error, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fits_get_error.errmsg, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.FITS_FILE* @fits_open(i8* %filename, i8* %openmode) #0 {
entry:
  %retval = alloca %struct.FITS_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %openmode.addr = alloca i8*, align 8
  %reading = alloca i32, align 4
  %writing = alloca i32, align 4
  %n_rec = alloca i32, align 4
  %n_hdr = alloca i32, align 4
  %fpos_header = alloca i64, align 8
  %fpos_data = alloca i64, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %ff = alloca %struct.FITS_FILE*, align 8
  %hdrlist = alloca %struct.fits_record_list*, align 8
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %last_hdulist = alloca %struct.fits_hdu_list*, align 8
  %one32 = alloca float, align 4
  %one64 = alloca double, align 8
  %op32 = alloca i8*, align 8
  %op64 = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %openmode, i8** %openmode.addr, align 8
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %last_hdulist, align 8
  store float 1.000000e+00, float* %one32, align 4
  store double 1.000000e+00, double* %one64, align 8
  %0 = bitcast float* %one32 to i8*
  store i8* %0, i8** %op32, align 8
  %1 = bitcast double* %one64 to i8*
  store i8* %1, i8** %op64, align 8
  %2 = load i8*, i8** %op32, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 3
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 63
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* @fits_ieee32_intel, align 4
  %4 = load i8*, i8** %op32, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 63
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* @fits_ieee32_motorola, align 4
  %6 = load i8*, i8** %op64, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 7
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 63
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* @fits_ieee64_intel, align 4
  %8 = load i8*, i8** %op64, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 63
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* @fits_ieee64_motorola, align 4
  %10 = load i8*, i8** %filename.addr, align 8
  %cmp14 = icmp eq i8* %10, null
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i8*, i8** %filename.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %13 = load i8*, i8** %openmode.addr, align 8
  %cmp20 = icmp eq i8* %13, null
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false, %entry
  call void @fits_set_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store %struct.FITS_FILE* null, %struct.FITS_FILE** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19
  %14 = load i8*, i8** %openmode.addr, align 8
  %call = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp22 = icmp eq i32 %call, 0
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %reading, align 4
  %15 = load i8*, i8** %openmode.addr, align 8
  %call24 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %writing, align 4
  %16 = load i32, i32* %reading, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %writing, align 4
  %tobool27 = icmp ne i32 %17, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  call void @fits_set_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct.FITS_FILE* null, %struct.FITS_FILE** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %if.end
  %18 = load i8*, i8** %filename.addr, align 8
  %19 = load i32, i32* %reading, align 4
  %tobool30 = icmp ne i32 %19, 0
  %cond = select i1 %tobool30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)
  %call31 = call %struct._IO_FILE* @fopen(i8* %18, i8* %cond)
  store %struct._IO_FILE* %call31, %struct._IO_FILE** %fp, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp32 = icmp eq %struct._IO_FILE* %20, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.29
  call void @fits_set_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct.FITS_FILE* null, %struct.FITS_FILE** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.29
  %call36 = call %struct.FITS_FILE* @fits_new_filestruct()
  store %struct.FITS_FILE* %call36, %struct.FITS_FILE** %ff, align 8
  %21 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %cmp37 = icmp eq %struct.FITS_FILE* %21, null
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call40 = call i32 @fclose(%struct._IO_FILE* %22)
  call void @fits_set_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct.FITS_FILE* null, %struct.FITS_FILE** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.35
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %24 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %fp42 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %24, i32 0, i32 0
  store %struct._IO_FILE* %23, %struct._IO_FILE** %fp42, align 8
  %25 = load i8*, i8** %openmode.addr, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %openmode43 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %27, i32 0, i32 1
  store i8 %26, i8* %openmode43, align 1
  %28 = load i32, i32* %writing, align 4
  %tobool44 = icmp ne i32 %28, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  %29 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  store %struct.FITS_FILE* %29, %struct.FITS_FILE** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.41
  store i32 0, i32* %n_hdr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call47 = call i64 @ftell(%struct._IO_FILE* %30)
  store i64 %call47, i64* %fpos_header, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call48 = call %struct.fits_record_list* @fits_read_header(%struct._IO_FILE* %31, i32* %n_rec)
  store %struct.fits_record_list* %call48, %struct.fits_record_list** %hdrlist, align 8
  %32 = load %struct.fits_record_list*, %struct.fits_record_list** %hdrlist, align 8
  %cmp49 = icmp eq %struct.fits_record_list* %32, null
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %for.cond
  %33 = load i32, i32* %n_hdr, align 4
  %cmp52 = icmp sgt i32 %33, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  call void @fits_drop_error()
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  br label %for.end

if.end.56:                                        ; preds = %for.cond
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call i64 @ftell(%struct._IO_FILE* %34)
  store i64 %call57, i64* %fpos_data, align 8
  %35 = load %struct.fits_record_list*, %struct.fits_record_list** %hdrlist, align 8
  %36 = load i64, i64* %fpos_header, align 8
  %37 = load i64, i64* %fpos_data, align 8
  %call58 = call %struct.fits_hdu_list* @fits_decode_header(%struct.fits_record_list* %35, i64 %36, i64 %37)
  store %struct.fits_hdu_list* %call58, %struct.fits_hdu_list** %hdulist, align 8
  %38 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp59 = icmp eq %struct.fits_hdu_list* %38, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.56
  %39 = load %struct.fits_record_list*, %struct.fits_record_list** %hdrlist, align 8
  call void @fits_delete_recordlist(%struct.fits_record_list* %39)
  br label %for.end

if.end.62:                                        ; preds = %if.end.56
  %40 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %n_hdu = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %40, i32 0, i32 2
  %41 = load i32, i32* %n_hdu, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %n_hdu, align 4
  %42 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %42, i32 0, i32 5
  %43 = load i32, i32* %numpic, align 4
  %44 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %n_pic = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %44, i32 0, i32 3
  %45 = load i32, i32* %n_pic, align 4
  %add = add nsw i32 %45, %43
  store i32 %add, i32* %n_pic, align 4
  %46 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %46, i32 0, i32 8
  %blank_value = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 1
  %47 = load i8, i8* %blank_value, align 1
  %tobool63 = icmp ne i8 %47, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %48 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %blank_used = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %48, i32 0, i32 5
  store i32 1, i32* %blank_used, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %49 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used66 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %49, i32 0, i32 8
  %nan_value = getelementptr inbounds %struct.anon, %struct.anon* %used66, i32 0, i32 0
  %50 = load i8, i8* %nan_value, align 1
  %tobool67 = icmp ne i8 %50, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  %51 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %nan_used = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %51, i32 0, i32 4
  store i32 1, i32* %nan_used, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.65
  %52 = load i32, i32* %n_hdr, align 4
  %cmp70 = icmp eq i32 %52, 0
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.69
  %53 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %54 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %hdu_list = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %54, i32 0, i32 6
  store %struct.fits_hdu_list* %53, %struct.fits_hdu_list** %hdu_list, align 8
  br label %if.end.73

if.else:                                          ; preds = %if.end.69
  %55 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %56 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %last_hdulist, align 8
  %next_hdu = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %56, i32 0, i32 25
  store %struct.fits_hdu_list* %55, %struct.fits_hdu_list** %next_hdu, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.72
  %57 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* %57, %struct.fits_hdu_list** %last_hdulist, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %59 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call74 = call i32 @fits_eval_pixrange(%struct._IO_FILE* %58, %struct.fits_hdu_list* %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %61 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %data_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %61, i32 0, i32 1
  %62 = load i64, i64* %data_offset, align 8
  %63 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %data_size = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %63, i32 0, i32 2
  %64 = load i64, i64* %data_size, align 8
  %add75 = add nsw i64 %62, %64
  %call76 = call i32 @fseek(%struct._IO_FILE* %60, i64 %add75, i32 0)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.73
  br label %for.end

if.end.80:                                        ; preds = %if.end.73
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %65 = load i32, i32* %n_hdr, align 4
  %inc81 = add nsw i32 %65, 1
  store i32 %inc81, i32* %n_hdr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.79, %if.then.61, %if.end.55
  %66 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  store %struct.FITS_FILE* %66, %struct.FITS_FILE** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.45, %if.then.39, %if.then.34, %if.then.28, %if.then
  %67 = load %struct.FITS_FILE*, %struct.FITS_FILE** %retval
  ret %struct.FITS_FILE* %67
}

; Function Attrs: nounwind uwtable
define internal void @fits_set_error(i8* %errmsg) #0 {
entry:
  %errmsg.addr = alloca i8*, align 8
  store i8* %errmsg, i8** %errmsg.addr, align 8
  %0 = load i32, i32* @fits_n_error, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @fits_n_error, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [256 x i8]], [16 x [256 x i8]]* @fits_error, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %errmsg.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %2, i64 256) #4
  %3 = load i32, i32* @fits_n_error, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @fits_n_error, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [16 x [256 x i8]], [16 x [256 x i8]]* @fits_error, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx2, i32 0, i64 255
  store i8 0, i8* %arrayidx3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.FITS_FILE* @fits_new_filestruct() #0 {
entry:
  %retval = alloca %struct.FITS_FILE*, align 8
  %ff = alloca %struct.FITS_FILE*, align 8
  %call = call noalias i8* @malloc(i64 40) #4
  %0 = bitcast i8* %call to %struct.FITS_FILE*
  store %struct.FITS_FILE* %0, %struct.FITS_FILE** %ff, align 8
  %1 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %cmp = icmp eq %struct.FITS_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.FITS_FILE* null, %struct.FITS_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  %3 = bitcast %struct.FITS_FILE* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 1, i1 false)
  %4 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff, align 8
  store %struct.FITS_FILE* %4, %struct.FITS_FILE** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.FITS_FILE*, %struct.FITS_FILE** %retval
  ret %struct.FITS_FILE* %5
}

declare i32 @fclose(%struct._IO_FILE*) #3

declare i64 @ftell(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal %struct.fits_record_list* @fits_read_header(%struct._IO_FILE* %fp, i32* %nrec) #0 {
entry:
  %retval = alloca %struct.fits_record_list*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %nrec.addr = alloca i32*, align 8
  %record = alloca [2880 x i8], align 16
  %start_list = alloca %struct.fits_record_list*, align 8
  %cu_record = alloca %struct.fits_record_list*, align 8
  %new_record = alloca %struct.fits_record_list*, align 8
  %fdat = alloca %union.FITS_DATA*, align 8
  %k = alloca i32, align 4
  %simple = alloca i32, align 4
  %xtension = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %nrec, i32** %nrec.addr, align 8
  store %struct.fits_record_list* null, %struct.fits_record_list** %start_list, align 8
  store %struct.fits_record_list* null, %struct.fits_record_list** %cu_record, align 8
  %0 = load i32*, i32** %nrec.addr, align 8
  store i32 0, i32* %0, align 4
  %arraydecay = getelementptr inbounds [2880 x i8], [2880 x i8]* %record, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 2880, %struct._IO_FILE* %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp ne i32 %2, 2880
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.79, i32 0, i32 0))
  store %struct.fits_record_list* null, %struct.fits_record_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2880 x i8], [2880 x i8]* %record, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* %arraydecay2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i64 8) #6
  %cmp4 = icmp eq i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %simple, align 4
  %arraydecay6 = getelementptr inbounds [2880 x i8], [2880 x i8]* %record, i32 0, i32 0
  %call7 = call i32 @strncmp(i8* %arraydecay6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i64 8) #6
  %cmp8 = icmp eq i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %xtension, align 4
  %3 = load i32, i32* %simple, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %xtension, align 4
  %tobool10 = icmp ne i32 %4, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  call void @fits_set_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i32 0, i32 0))
  store %struct.fits_record_list* null, %struct.fits_record_list** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %simple, align 4
  %tobool13 = icmp ne i32 %5, 0
  br i1 %tobool13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.12
  %arraydecay15 = getelementptr inbounds [2880 x i8], [2880 x i8]* %record, i32 0, i32 0
  %call16 = call %union.FITS_DATA* @fits_decode_card(i8* %arraydecay15, i32 5)
  store %union.FITS_DATA* %call16, %union.FITS_DATA** %fdat, align 8
  %6 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %tobool17 = icmp ne %union.FITS_DATA* %6, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %if.then.14
  %7 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %fbool = bitcast %union.FITS_DATA* %7 to i32*
  %8 = load i32, i32* %fbool, align 4
  %tobool19 = icmp ne i32 %8, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.18
  call void @fits_set_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.18, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.12
  br label %for.cond

for.cond:                                         ; preds = %if.end.44, %if.end.22
  %call23 = call noalias i8* @malloc(i64 2888) #4
  %9 = bitcast i8* %call23 to %struct.fits_record_list*
  store %struct.fits_record_list* %9, %struct.fits_record_list** %new_record, align 8
  %10 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  %cmp24 = icmp eq %struct.fits_record_list* %10, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.cond
  %11 = load %struct.fits_record_list*, %struct.fits_record_list** %start_list, align 8
  call void @fits_delete_recordlist(%struct.fits_record_list* %11)
  call void @fits_set_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.83, i32 0, i32 0))
  store %struct.fits_record_list* null, %struct.fits_record_list** %retval
  br label %return

if.end.27:                                        ; preds = %for.cond
  %12 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  %data = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %12, i32 0, i32 0
  %13 = bitcast [2880 x i8]* %data to i8*
  %14 = bitcast [2880 x i8]* %record to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 2880, i32 8, i1 false)
  %15 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  %next_record = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %15, i32 0, i32 1
  store %struct.fits_record_list* null, %struct.fits_record_list** %next_record, align 8
  %16 = load i32*, i32** %nrec.addr, align 8
  %17 = load i32, i32* %16, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %16, align 4
  %18 = load %struct.fits_record_list*, %struct.fits_record_list** %start_list, align 8
  %cmp28 = icmp eq %struct.fits_record_list* %18, null
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.27
  %19 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  store %struct.fits_record_list* %19, %struct.fits_record_list** %start_list, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.27
  %20 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  %21 = load %struct.fits_record_list*, %struct.fits_record_list** %cu_record, align 8
  %next_record31 = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %21, i32 0, i32 1
  store %struct.fits_record_list* %20, %struct.fits_record_list** %next_record31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.30
  %22 = load %struct.fits_record_list*, %struct.fits_record_list** %new_record, align 8
  store %struct.fits_record_list* %22, %struct.fits_record_list** %cu_record, align 8
  %23 = load %struct.fits_record_list*, %struct.fits_record_list** %cu_record, align 8
  %call33 = call i8* @fits_search_card(%struct.fits_record_list* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  %cmp34 = icmp ne i8* %call33, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  br label %for.end

if.end.37:                                        ; preds = %if.end.32
  %arraydecay38 = getelementptr inbounds [2880 x i8], [2880 x i8]* %record, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call39 = call i64 @fread(i8* %arraydecay38, i64 1, i64 2880, %struct._IO_FILE* %24)
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* %k, align 4
  %25 = load i32, i32* %k, align 4
  %cmp41 = icmp ne i32 %25, 2880
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  call void @fits_set_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0))
  store %struct.fits_record_list* null, %struct.fits_record_list** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  br label %for.cond

for.end:                                          ; preds = %if.then.36
  %26 = load %struct.fits_record_list*, %struct.fits_record_list** %start_list, align 8
  store %struct.fits_record_list* %26, %struct.fits_record_list** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.43, %if.then.26, %if.then.11, %if.then
  %27 = load %struct.fits_record_list*, %struct.fits_record_list** %retval
  ret %struct.fits_record_list* %27
}

; Function Attrs: nounwind uwtable
define internal void @fits_drop_error() #0 {
entry:
  %0 = load i32, i32* @fits_n_error, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @fits_n_error, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @fits_n_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.fits_hdu_list* @fits_decode_header(%struct.fits_record_list* %hdr, i64 %hdr_offset, i64 %dat_offset) #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %hdr.addr = alloca %struct.fits_record_list*, align 8
  %hdr_offset.addr = alloca i64, align 8
  %dat_offset.addr = alloca i64, align 8
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %fdat = alloca %union.FITS_DATA*, align 8
  %errmsg = alloca [80 x i8], align 16
  %key = alloca [9 x i8], align 1
  %k = alloca i32, align 4
  %bpp = alloca i32, align 4
  %random_groups = alloca i32, align 4
  %mul_axis = alloca i64, align 8
  %data_size = alloca i64, align 8
  %bitpix_supported = alloca i64, align 8
  %mfdat = alloca %union.FITS_DATA*, align 8
  %mfdat81 = alloca %union.FITS_DATA*, align 8
  %mfdat95 = alloca %union.FITS_DATA*, align 8
  %mfdat114 = alloca %union.FITS_DATA*, align 8
  %naxisn = alloca [9 x i8], align 1
  %mfdat231 = alloca %union.FITS_DATA*, align 8
  %mfdat245 = alloca %union.FITS_DATA*, align 8
  %mfdat258 = alloca %union.FITS_DATA*, align 8
  %mfdat272 = alloca %union.FITS_DATA*, align 8
  %mfdat286 = alloca %union.FITS_DATA*, align 8
  %msg = alloca [160 x i8], align 16
  store %struct.fits_record_list* %hdr, %struct.fits_record_list** %hdr.addr, align 8
  store i64 %hdr_offset, i64* %hdr_offset.addr, align 8
  store i64 %dat_offset, i64* %dat_offset.addr, align 8
  %call = call %struct.fits_hdu_list* @fits_new_hdulist()
  store %struct.fits_hdu_list* %call, %struct.fits_hdu_list** %hdulist, align 8
  %0 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.85, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %hdr_offset.addr, align 8
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %header_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %2, i32 0, i32 0
  store i64 %1, i64* %header_offset, align 8
  %3 = load i64, i64* %dat_offset.addr, align 8
  %4 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %data_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %4, i32 0, i32 1
  store i64 %3, i64* %data_offset, align 8
  %5 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %data = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2880 x i8], [2880 x i8]* %data, i32 0, i32 0
  %call1 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i64 8) #6
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %conv3 = trunc i32 %conv to i8
  %6 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %6, i32 0, i32 8
  %simple = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 5
  store i8 %conv3, i8* %simple, align 1
  %7 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %data4 = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %7, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [2880 x i8], [2880 x i8]* %data4, i32 0, i32 0
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i64 8) #6
  %cmp7 = icmp eq i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = trunc i32 %conv8 to i8
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used10 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %8, i32 0, i32 8
  %xtension = getelementptr inbounds %struct.anon, %struct.anon* %used10, i32 0, i32 6
  store i8 %conv9, i8* %xtension, align 1
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used11 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 8
  %xtension12 = getelementptr inbounds %struct.anon, %struct.anon* %used11, i32 0, i32 6
  %10 = load i8, i8* %xtension12, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end
  %11 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call14 = call i8* @fits_search_card(%struct.fits_record_list* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0))
  %call15 = call %union.FITS_DATA* @fits_decode_card(i8* %call14, i32 8)
  store %union.FITS_DATA* %call15, %union.FITS_DATA** %fdat, align 8
  %12 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %cmp16 = icmp ne %union.FITS_DATA* %12, null
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.13
  %13 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %xtension19 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %13, i32 0, i32 17
  %arraydecay20 = getelementptr inbounds [80 x i8], [80 x i8]* %xtension19, i32 0, i32 0
  %14 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %fstring = bitcast %union.FITS_DATA* %14 to [80 x i8]*
  %arraydecay21 = getelementptr inbounds [80 x i8], [80 x i8]* %fstring, i32 0, i32 0
  %call22 = call i8* @strcpy(i8* %arraydecay20, i8* %arraydecay21) #4
  br label %if.end.25

if.else:                                          ; preds = %if.then.13
  %arraydecay23 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call24 = call i8* @strcpy(i8* %arraydecay23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i32 0, i32 0)) #4
  br label %err_return

if.end.25:                                        ; preds = %if.then.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %arraydecay27 = getelementptr inbounds [9 x i8], [9 x i8]* %key, i32 0, i32 0
  %call28 = call i8* @strcpy(i8* %arraydecay27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #4
  %15 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call29 = call i8* @fits_search_card(%struct.fits_record_list* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %call30 = call %union.FITS_DATA* @fits_decode_card(i8* %call29, i32 6)
  store %union.FITS_DATA* %call30, %union.FITS_DATA** %fdat, align 8
  %16 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %cmp31 = icmp eq %union.FITS_DATA* %16, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.26
  br label %err_missing

if.end.34:                                        ; preds = %if.end.26
  %17 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %flong = bitcast %union.FITS_DATA* %17 to i64*
  %18 = load i64, i64* %flong, align 8
  %conv35 = trunc i64 %18 to i32
  %19 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %19, i32 0, i32 11
  store i32 %conv35, i32* %naxis, align 4
  %arraydecay36 = getelementptr inbounds [9 x i8], [9 x i8]* %key, i32 0, i32 0
  %call37 = call i8* @strcpy(i8* %arraydecay36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0)) #4
  %20 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call38 = call i8* @fits_search_card(%struct.fits_record_list* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0))
  %call39 = call %union.FITS_DATA* @fits_decode_card(i8* %call38, i32 6)
  store %union.FITS_DATA* %call39, %union.FITS_DATA** %fdat, align 8
  %21 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %cmp40 = icmp eq %union.FITS_DATA* %21, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.34
  br label %err_missing

if.end.43:                                        ; preds = %if.end.34
  %22 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %flong44 = bitcast %union.FITS_DATA* %22 to i64*
  %23 = load i64, i64* %flong44, align 8
  %conv45 = trunc i64 %23 to i32
  %24 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %24, i32 0, i32 13
  store i32 %conv45, i32* %bitpix, align 4
  store i32 %conv45, i32* %bpp, align 4
  %25 = load i32, i32* %bpp, align 4
  %cmp46 = icmp ne i32 %25, 8
  br i1 %cmp46, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.43
  %26 = load i32, i32* %bpp, align 4
  %cmp48 = icmp ne i32 %26, 16
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.62

land.lhs.true.50:                                 ; preds = %land.lhs.true
  %27 = load i32, i32* %bpp, align 4
  %cmp51 = icmp ne i32 %27, 32
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.62

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %28 = load i32, i32* %bpp, align 4
  %cmp54 = icmp ne i32 %28, -32
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.62

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %29 = load i32, i32* %bpp, align 4
  %cmp57 = icmp ne i32 %29, -64
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %land.lhs.true.56
  %arraydecay60 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call61 = call i8* @strcpy(i8* %arraydecay60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0)) #4
  br label %err_return

if.end.62:                                        ; preds = %land.lhs.true.56, %land.lhs.true.53, %land.lhs.true.50, %land.lhs.true, %if.end.43
  %30 = load i32, i32* %bpp, align 4
  %cmp63 = icmp slt i32 %30, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  %31 = load i32, i32* %bpp, align 4
  %sub = sub nsw i32 0, %31
  store i32 %sub, i32* %bpp, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.62
  %32 = load i32, i32* %bpp, align 4
  %div = sdiv i32 %32, 8
  store i32 %div, i32* %bpp, align 4
  %33 = load i32, i32* %bpp, align 4
  %34 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bpp67 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %34, i32 0, i32 4
  store i32 %33, i32* %bpp67, align 4
  %35 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call68 = call i8* @fits_search_card(%struct.fits_record_list* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0))
  %call69 = call %union.FITS_DATA* @fits_decode_card(i8* %call68, i32 6)
  store %union.FITS_DATA* %call69, %union.FITS_DATA** %mfdat, align 8
  %36 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat, align 8
  %cmp70 = icmp ne %union.FITS_DATA* %36, null
  %conv71 = zext i1 %cmp70 to i32
  %conv72 = trunc i32 %conv71 to i8
  %37 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used73 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %37, i32 0, i32 8
  %gcount = getelementptr inbounds %struct.anon, %struct.anon* %used73, i32 0, i32 7
  store i8 %conv72, i8* %gcount, align 1
  %38 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used74 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %38, i32 0, i32 8
  %gcount75 = getelementptr inbounds %struct.anon, %struct.anon* %used74, i32 0, i32 7
  %39 = load i8, i8* %gcount75, align 1
  %tobool76 = icmp ne i8 %39, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.66
  %40 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat, align 8
  %flong78 = bitcast %union.FITS_DATA* %40 to i64*
  %41 = load i64, i64* %flong78, align 8
  %42 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %gcount79 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %42, i32 0, i32 18
  store i64 %41, i64* %gcount79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.66
  %43 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call82 = call i8* @fits_search_card(%struct.fits_record_list* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0))
  %call83 = call %union.FITS_DATA* @fits_decode_card(i8* %call82, i32 6)
  store %union.FITS_DATA* %call83, %union.FITS_DATA** %mfdat81, align 8
  %44 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat81, align 8
  %cmp84 = icmp ne %union.FITS_DATA* %44, null
  %conv85 = zext i1 %cmp84 to i32
  %conv86 = trunc i32 %conv85 to i8
  %45 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used87 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %45, i32 0, i32 8
  %pcount = getelementptr inbounds %struct.anon, %struct.anon* %used87, i32 0, i32 8
  store i8 %conv86, i8* %pcount, align 1
  %46 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used88 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %46, i32 0, i32 8
  %pcount89 = getelementptr inbounds %struct.anon, %struct.anon* %used88, i32 0, i32 8
  %47 = load i8, i8* %pcount89, align 1
  %tobool90 = icmp ne i8 %47, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.80
  %48 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat81, align 8
  %flong92 = bitcast %union.FITS_DATA* %48 to i64*
  %49 = load i64, i64* %flong92, align 8
  %50 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %pcount93 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %50, i32 0, i32 19
  store i64 %49, i64* %pcount93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.80
  %51 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call96 = call i8* @fits_search_card(%struct.fits_record_list* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  %call97 = call %union.FITS_DATA* @fits_decode_card(i8* %call96, i32 5)
  store %union.FITS_DATA* %call97, %union.FITS_DATA** %mfdat95, align 8
  %52 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat95, align 8
  %cmp98 = icmp ne %union.FITS_DATA* %52, null
  %conv99 = zext i1 %cmp98 to i32
  %conv100 = trunc i32 %conv99 to i8
  %53 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used101 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %53, i32 0, i32 8
  %groups = getelementptr inbounds %struct.anon, %struct.anon* %used101, i32 0, i32 11
  store i8 %conv100, i8* %groups, align 1
  %54 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used102 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %54, i32 0, i32 8
  %groups103 = getelementptr inbounds %struct.anon, %struct.anon* %used102, i32 0, i32 11
  %55 = load i8, i8* %groups103, align 1
  %tobool104 = icmp ne i8 %55, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.94
  %56 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat95, align 8
  %fbool = bitcast %union.FITS_DATA* %56 to i32*
  %57 = load i32, i32* %fbool, align 4
  %58 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %groups106 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %58, i32 0, i32 22
  store i32 %57, i32* %groups106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.94
  %59 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used108 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %59, i32 0, i32 8
  %groups109 = getelementptr inbounds %struct.anon, %struct.anon* %used108, i32 0, i32 11
  %60 = load i8, i8* %groups109, align 1
  %conv110 = sext i8 %60 to i32
  %tobool111 = icmp ne i32 %conv110, 0
  br i1 %tobool111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.107
  %61 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %groups112 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %61, i32 0, i32 22
  %62 = load i32, i32* %groups112, align 4
  %tobool113 = icmp ne i32 %62, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.107
  %63 = phi i1 [ false, %if.end.107 ], [ %tobool113, %land.rhs ]
  %land.ext = zext i1 %63 to i32
  store i32 %land.ext, i32* %random_groups, align 4
  %64 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call115 = call i8* @fits_search_card(%struct.fits_record_list* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  %call116 = call %union.FITS_DATA* @fits_decode_card(i8* %call115, i32 5)
  store %union.FITS_DATA* %call116, %union.FITS_DATA** %mfdat114, align 8
  %65 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat114, align 8
  %cmp117 = icmp ne %union.FITS_DATA* %65, null
  %conv118 = zext i1 %cmp117 to i32
  %conv119 = trunc i32 %conv118 to i8
  %66 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used120 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %66, i32 0, i32 8
  %extend = getelementptr inbounds %struct.anon, %struct.anon* %used120, i32 0, i32 12
  store i8 %conv119, i8* %extend, align 1
  %67 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used121 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %67, i32 0, i32 8
  %extend122 = getelementptr inbounds %struct.anon, %struct.anon* %used121, i32 0, i32 12
  %68 = load i8, i8* %extend122, align 1
  %tobool123 = icmp ne i8 %68, 0
  br i1 %tobool123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %land.end
  %69 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat114, align 8
  %fbool125 = bitcast %union.FITS_DATA* %69 to i32*
  %70 = load i32, i32* %fbool125, align 4
  %71 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %extend126 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %71, i32 0, i32 23
  store i32 %70, i32* %extend126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %land.end
  %72 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used128 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %72, i32 0, i32 8
  %xtension129 = getelementptr inbounds %struct.anon, %struct.anon* %used128, i32 0, i32 6
  %73 = load i8, i8* %xtension129, align 1
  %tobool130 = icmp ne i8 %73, 0
  br i1 %tobool130, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %if.end.127
  %74 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used132 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %74, i32 0, i32 8
  %gcount133 = getelementptr inbounds %struct.anon, %struct.anon* %used132, i32 0, i32 7
  %75 = load i8, i8* %gcount133, align 1
  %tobool134 = icmp ne i8 %75, 0
  br i1 %tobool134, label %lor.lhs.false, label %if.then.138

lor.lhs.false:                                    ; preds = %if.then.131
  %76 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used135 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %76, i32 0, i32 8
  %pcount136 = getelementptr inbounds %struct.anon, %struct.anon* %used135, i32 0, i32 8
  %77 = load i8, i8* %pcount136, align 1
  %tobool137 = icmp ne i8 %77, 0
  br i1 %tobool137, label %if.end.141, label %if.then.138

if.then.138:                                      ; preds = %lor.lhs.false, %if.then.131
  %arraydecay139 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call140 = call i8* @strcpy(i8* %arraydecay139, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.88, i32 0, i32 0)) #4
  br label %err_return

if.end.141:                                       ; preds = %lor.lhs.false
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.127
  store i64 1, i64* %mul_axis, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.142
  %78 = load i32, i32* %k, align 4
  %cmp143 = icmp sle i32 %78, 999
  br i1 %cmp143, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay145 = getelementptr inbounds [9 x i8], [9 x i8]* %naxisn, i32 0, i32 0
  %79 = load i32, i32* %k, align 4
  %call146 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 %79) #4
  %80 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %arraydecay147 = getelementptr inbounds [9 x i8], [9 x i8]* %naxisn, i32 0, i32 0
  %call148 = call i8* @fits_search_card(%struct.fits_record_list* %80, i8* %arraydecay147)
  %call149 = call %union.FITS_DATA* @fits_decode_card(i8* %call148, i32 6)
  store %union.FITS_DATA* %call149, %union.FITS_DATA** %fdat, align 8
  %81 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %cmp150 = icmp eq %union.FITS_DATA* %81, null
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %for.body
  %82 = load i32, i32* %k, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %k, align 4
  br label %for.end

if.end.153:                                       ; preds = %for.body
  %83 = load %union.FITS_DATA*, %union.FITS_DATA** %fdat, align 8
  %flong154 = bitcast %union.FITS_DATA* %83 to i64*
  %84 = load i64, i64* %flong154, align 8
  %conv155 = trunc i64 %84 to i32
  %85 = load i32, i32* %k, align 4
  %sub156 = sub nsw i32 %85, 1
  %idxprom = sext i32 %sub156 to i64
  %86 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn157 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %86, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn157, i32 0, i64 %idxprom
  store i32 %conv155, i32* %arrayidx, align 4
  %87 = load i32, i32* %k, align 4
  %sub158 = sub nsw i32 %87, 1
  %idxprom159 = sext i32 %sub158 to i64
  %88 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn160 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %88, i32 0, i32 12
  %arrayidx161 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn160, i32 0, i64 %idxprom159
  %89 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp slt i32 %89, 0
  br i1 %cmp162, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %if.end.153
  %arraydecay165 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call166 = call i8* @strcpy(i8* %arraydecay165, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i32 0, i32 0)) #4
  br label %err_return

if.end.167:                                       ; preds = %if.end.153
  %90 = load i32, i32* %k, align 4
  %cmp168 = icmp eq i32 %90, 1
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.181

land.lhs.true.170:                                ; preds = %if.end.167
  %91 = load i32, i32* %random_groups, align 4
  %tobool171 = icmp ne i32 %91, 0
  br i1 %tobool171, label %if.then.172, label %if.else.181

if.then.172:                                      ; preds = %land.lhs.true.170
  %92 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn173 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %92, i32 0, i32 12
  %arrayidx174 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn173, i32 0, i64 0
  %93 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp ne i32 %93, 0
  br i1 %cmp175, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %if.then.172
  %arraydecay178 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call179 = call i8* @strcpy(i8* %arraydecay178, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.91, i32 0, i32 0)) #4
  br label %err_return

if.end.180:                                       ; preds = %if.then.172
  br label %if.end.187

if.else.181:                                      ; preds = %land.lhs.true.170, %if.end.167
  %94 = load i32, i32* %k, align 4
  %sub182 = sub nsw i32 %94, 1
  %idxprom183 = sext i32 %sub182 to i64
  %95 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn184 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %95, i32 0, i32 12
  %arrayidx185 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn184, i32 0, i64 %idxprom183
  %96 = load i32, i32* %arrayidx185, align 4
  %conv186 = sext i32 %96 to i64
  %97 = load i64, i64* %mul_axis, align 8
  %mul = mul nsw i64 %97, %conv186
  store i64 %mul, i64* %mul_axis, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.181, %if.end.180
  br label %for.inc

for.inc:                                          ; preds = %if.end.187
  %98 = load i32, i32* %k, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.152, %for.cond
  %99 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis188 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %99, i32 0, i32 11
  %100 = load i32, i32* %naxis188, align 4
  %cmp189 = icmp sgt i32 %100, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.198

land.lhs.true.191:                                ; preds = %for.end
  %101 = load i32, i32* %k, align 4
  %102 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis192 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %102, i32 0, i32 11
  %103 = load i32, i32* %naxis192, align 4
  %cmp193 = icmp slt i32 %101, %103
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %land.lhs.true.191
  %arraydecay196 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %call197 = call i8* @strcpy(i8* %arraydecay196, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.92, i32 0, i32 0)) #4
  br label %err_return

if.end.198:                                       ; preds = %land.lhs.true.191, %for.end
  %104 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis199 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %104, i32 0, i32 11
  %105 = load i32, i32* %naxis199, align 4
  %cmp200 = icmp slt i32 %105, 2
  br i1 %cmp200, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %if.end.198
  %106 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn203 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %106, i32 0, i32 12
  %arrayidx204 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn203, i32 0, i64 1
  store i32 1, i32* %arrayidx204, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %if.end.198
  %107 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis206 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %107, i32 0, i32 11
  %108 = load i32, i32* %naxis206, align 4
  %cmp207 = icmp slt i32 %108, 1
  br i1 %cmp207, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.end.205
  store i64 0, i64* %mul_axis, align 8
  %109 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn210 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %109, i32 0, i32 12
  %arrayidx211 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn210, i32 0, i64 0
  store i32 1, i32* %arrayidx211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %if.end.205
  %110 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used213 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %110, i32 0, i32 8
  %xtension214 = getelementptr inbounds %struct.anon, %struct.anon* %used213, i32 0, i32 6
  %111 = load i8, i8* %xtension214, align 1
  %tobool215 = icmp ne i8 %111, 0
  br i1 %tobool215, label %if.then.216, label %if.else.222

if.then.216:                                      ; preds = %if.end.212
  %112 = load i32, i32* %bpp, align 4
  %conv217 = sext i32 %112 to i64
  %113 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %gcount218 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %113, i32 0, i32 18
  %114 = load i64, i64* %gcount218, align 8
  %mul219 = mul nsw i64 %conv217, %114
  %115 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %pcount220 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %115, i32 0, i32 19
  %116 = load i64, i64* %pcount220, align 8
  %117 = load i64, i64* %mul_axis, align 8
  %add = add nsw i64 %116, %117
  %mul221 = mul nsw i64 %mul219, %add
  store i64 %mul221, i64* %data_size, align 8
  br label %if.end.225

if.else.222:                                      ; preds = %if.end.212
  %118 = load i32, i32* %bpp, align 4
  %conv223 = sext i32 %118 to i64
  %119 = load i64, i64* %mul_axis, align 8
  %mul224 = mul nsw i64 %conv223, %119
  store i64 %mul224, i64* %data_size, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.216
  %120 = load i64, i64* %data_size, align 8
  %121 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %udata_size = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %121, i32 0, i32 3
  store i64 %120, i64* %udata_size, align 8
  %122 = load i64, i64* %data_size, align 8
  %add226 = add nsw i64 %122, 2880
  %sub227 = sub nsw i64 %add226, 1
  %div228 = sdiv i64 %sub227, 2880
  store i64 %div228, i64* %data_size, align 8
  %123 = load i64, i64* %data_size, align 8
  %mul229 = mul nsw i64 %123, 2880
  store i64 %mul229, i64* %data_size, align 8
  %124 = load i64, i64* %data_size, align 8
  %125 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %data_size230 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %125, i32 0, i32 2
  store i64 %124, i64* %data_size230, align 8
  %126 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call232 = call i8* @fits_search_card(%struct.fits_record_list* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0))
  %call233 = call %union.FITS_DATA* @fits_decode_card(i8* %call232, i32 6)
  store %union.FITS_DATA* %call233, %union.FITS_DATA** %mfdat231, align 8
  %127 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat231, align 8
  %cmp234 = icmp ne %union.FITS_DATA* %127, null
  %conv235 = zext i1 %cmp234 to i32
  %conv236 = trunc i32 %conv235 to i8
  %128 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used237 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %128, i32 0, i32 8
  %blank = getelementptr inbounds %struct.anon, %struct.anon* %used237, i32 0, i32 2
  store i8 %conv236, i8* %blank, align 1
  %129 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used238 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %129, i32 0, i32 8
  %blank239 = getelementptr inbounds %struct.anon, %struct.anon* %used238, i32 0, i32 2
  %130 = load i8, i8* %blank239, align 1
  %tobool240 = icmp ne i8 %130, 0
  br i1 %tobool240, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %if.end.225
  %131 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat231, align 8
  %flong242 = bitcast %union.FITS_DATA* %131 to i64*
  %132 = load i64, i64* %flong242, align 8
  %133 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %blank243 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %133, i32 0, i32 14
  store i64 %132, i64* %blank243, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %if.end.225
  %134 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call246 = call i8* @fits_search_card(%struct.fits_record_list* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0))
  %call247 = call %union.FITS_DATA* @fits_decode_card(i8* %call246, i32 7)
  store %union.FITS_DATA* %call247, %union.FITS_DATA** %mfdat245, align 8
  %135 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat245, align 8
  %cmp248 = icmp ne %union.FITS_DATA* %135, null
  %conv249 = zext i1 %cmp248 to i32
  %conv250 = trunc i32 %conv249 to i8
  %136 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used251 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %136, i32 0, i32 8
  %datamin = getelementptr inbounds %struct.anon, %struct.anon* %used251, i32 0, i32 3
  store i8 %conv250, i8* %datamin, align 1
  %137 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used252 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %137, i32 0, i32 8
  %datamin253 = getelementptr inbounds %struct.anon, %struct.anon* %used252, i32 0, i32 3
  %138 = load i8, i8* %datamin253, align 1
  %tobool254 = icmp ne i8 %138, 0
  br i1 %tobool254, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.end.244
  %139 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat245, align 8
  %fdouble = bitcast %union.FITS_DATA* %139 to double*
  %140 = load double, double* %fdouble, align 8
  %141 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamin256 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %141, i32 0, i32 15
  store double %140, double* %datamin256, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %if.end.244
  %142 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call259 = call i8* @fits_search_card(%struct.fits_record_list* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0))
  %call260 = call %union.FITS_DATA* @fits_decode_card(i8* %call259, i32 7)
  store %union.FITS_DATA* %call260, %union.FITS_DATA** %mfdat258, align 8
  %143 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat258, align 8
  %cmp261 = icmp ne %union.FITS_DATA* %143, null
  %conv262 = zext i1 %cmp261 to i32
  %conv263 = trunc i32 %conv262 to i8
  %144 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used264 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %144, i32 0, i32 8
  %datamax = getelementptr inbounds %struct.anon, %struct.anon* %used264, i32 0, i32 4
  store i8 %conv263, i8* %datamax, align 1
  %145 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used265 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %145, i32 0, i32 8
  %datamax266 = getelementptr inbounds %struct.anon, %struct.anon* %used265, i32 0, i32 4
  %146 = load i8, i8* %datamax266, align 1
  %tobool267 = icmp ne i8 %146, 0
  br i1 %tobool267, label %if.then.268, label %if.end.271

if.then.268:                                      ; preds = %if.end.257
  %147 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat258, align 8
  %fdouble269 = bitcast %union.FITS_DATA* %147 to double*
  %148 = load double, double* %fdouble269, align 8
  %149 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamax270 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %149, i32 0, i32 16
  store double %148, double* %datamax270, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.268, %if.end.257
  %150 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call273 = call i8* @fits_search_card(%struct.fits_record_list* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  %call274 = call %union.FITS_DATA* @fits_decode_card(i8* %call273, i32 7)
  store %union.FITS_DATA* %call274, %union.FITS_DATA** %mfdat272, align 8
  %151 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat272, align 8
  %cmp275 = icmp ne %union.FITS_DATA* %151, null
  %conv276 = zext i1 %cmp275 to i32
  %conv277 = trunc i32 %conv276 to i8
  %152 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used278 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %152, i32 0, i32 8
  %bzero = getelementptr inbounds %struct.anon, %struct.anon* %used278, i32 0, i32 9
  store i8 %conv277, i8* %bzero, align 1
  %153 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used279 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %153, i32 0, i32 8
  %bzero280 = getelementptr inbounds %struct.anon, %struct.anon* %used279, i32 0, i32 9
  %154 = load i8, i8* %bzero280, align 1
  %tobool281 = icmp ne i8 %154, 0
  br i1 %tobool281, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %if.end.271
  %155 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat272, align 8
  %fdouble283 = bitcast %union.FITS_DATA* %155 to double*
  %156 = load double, double* %fdouble283, align 8
  %157 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bzero284 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %157, i32 0, i32 20
  store double %156, double* %bzero284, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %if.end.271
  %158 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %call287 = call i8* @fits_search_card(%struct.fits_record_list* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0))
  %call288 = call %union.FITS_DATA* @fits_decode_card(i8* %call287, i32 7)
  store %union.FITS_DATA* %call288, %union.FITS_DATA** %mfdat286, align 8
  %159 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat286, align 8
  %cmp289 = icmp ne %union.FITS_DATA* %159, null
  %conv290 = zext i1 %cmp289 to i32
  %conv291 = trunc i32 %conv290 to i8
  %160 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used292 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %160, i32 0, i32 8
  %bscale = getelementptr inbounds %struct.anon, %struct.anon* %used292, i32 0, i32 10
  store i8 %conv291, i8* %bscale, align 1
  %161 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used293 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %161, i32 0, i32 8
  %bscale294 = getelementptr inbounds %struct.anon, %struct.anon* %used293, i32 0, i32 10
  %162 = load i8, i8* %bscale294, align 1
  %tobool295 = icmp ne i8 %162, 0
  br i1 %tobool295, label %if.then.296, label %if.end.299

if.then.296:                                      ; preds = %if.end.285
  %163 = load %union.FITS_DATA*, %union.FITS_DATA** %mfdat286, align 8
  %fdouble297 = bitcast %union.FITS_DATA* %163 to double*
  %164 = load double, double* %fdouble297, align 8
  %165 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bscale298 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %165, i32 0, i32 21
  store double %164, double* %bscale298, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.296, %if.end.285
  %166 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %166, i32 0, i32 5
  store i32 0, i32* %numpic, align 4
  %167 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix300 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %167, i32 0, i32 13
  %168 = load i32, i32* %bitpix300, align 4
  %cmp301 = icmp sgt i32 %168, 0
  br i1 %cmp301, label %lor.end.324, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %if.end.299
  %169 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix304 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %169, i32 0, i32 13
  %170 = load i32, i32* %bitpix304, align 4
  %cmp305 = icmp eq i32 %170, -64
  br i1 %cmp305, label %land.lhs.true.307, label %lor.rhs

land.lhs.true.307:                                ; preds = %lor.lhs.false.303
  %171 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool308 = icmp ne i32 %171, 0
  br i1 %tobool308, label %lor.end.324, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %land.lhs.true.307
  %172 = load i32, i32* @fits_ieee64_motorola, align 4
  %tobool310 = icmp ne i32 %172, 0
  br i1 %tobool310, label %lor.end.324, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.309, %lor.lhs.false.303
  %173 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix311 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %173, i32 0, i32 13
  %174 = load i32, i32* %bitpix311, align 4
  %cmp312 = icmp eq i32 %174, -32
  br i1 %cmp312, label %land.rhs.314, label %land.end.322

land.rhs.314:                                     ; preds = %lor.rhs
  %175 = load i32, i32* @fits_ieee32_intel, align 4
  %tobool315 = icmp ne i32 %175, 0
  br i1 %tobool315, label %lor.end, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %land.rhs.314
  %176 = load i32, i32* @fits_ieee32_motorola, align 4
  %tobool317 = icmp ne i32 %176, 0
  br i1 %tobool317, label %lor.end, label %lor.lhs.false.318

lor.lhs.false.318:                                ; preds = %lor.lhs.false.316
  %177 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool319 = icmp ne i32 %177, 0
  br i1 %tobool319, label %lor.end, label %lor.rhs.320

lor.rhs.320:                                      ; preds = %lor.lhs.false.318
  %178 = load i32, i32* @fits_ieee64_motorola, align 4
  %tobool321 = icmp ne i32 %178, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.320, %lor.lhs.false.318, %lor.lhs.false.316, %land.rhs.314
  %179 = phi i1 [ true, %lor.lhs.false.318 ], [ true, %lor.lhs.false.316 ], [ true, %land.rhs.314 ], [ %tobool321, %lor.rhs.320 ]
  br label %land.end.322

land.end.322:                                     ; preds = %lor.end, %lor.rhs
  %180 = phi i1 [ false, %lor.rhs ], [ %179, %lor.end ]
  br label %lor.end.324

lor.end.324:                                      ; preds = %land.end.322, %lor.lhs.false.309, %land.lhs.true.307, %if.end.299
  %181 = phi i1 [ true, %lor.lhs.false.309 ], [ true, %land.lhs.true.307 ], [ true, %if.end.299 ], [ %180, %land.end.322 ]
  %lor.ext = zext i1 %181 to i32
  %conv325 = sext i32 %lor.ext to i64
  store i64 %conv325, i64* %bitpix_supported, align 8
  %182 = load i64, i64* %bitpix_supported, align 8
  %tobool326 = icmp ne i64 %182, 0
  br i1 %tobool326, label %if.then.327, label %if.else.386

if.then.327:                                      ; preds = %lor.end.324
  %183 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used328 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %183, i32 0, i32 8
  %simple329 = getelementptr inbounds %struct.anon, %struct.anon* %used328, i32 0, i32 5
  %184 = load i8, i8* %simple329, align 1
  %tobool330 = icmp ne i8 %184, 0
  br i1 %tobool330, label %if.then.331, label %if.else.352

if.then.331:                                      ; preds = %if.then.327
  %185 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis332 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %185, i32 0, i32 11
  %186 = load i32, i32* %naxis332, align 4
  %cmp333 = icmp sgt i32 %186, 0
  br i1 %cmp333, label %if.then.335, label %if.end.351

if.then.335:                                      ; preds = %if.then.331
  %187 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic336 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %187, i32 0, i32 5
  store i32 1, i32* %numpic336, align 4
  store i32 3, i32* %k, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.348, %if.then.335
  %188 = load i32, i32* %k, align 4
  %189 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis338 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %189, i32 0, i32 11
  %190 = load i32, i32* %naxis338, align 4
  %cmp339 = icmp sle i32 %188, %190
  br i1 %cmp339, label %for.body.341, label %for.end.350

for.body.341:                                     ; preds = %for.cond.337
  %191 = load i32, i32* %k, align 4
  %sub342 = sub nsw i32 %191, 1
  %idxprom343 = sext i32 %sub342 to i64
  %192 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn344 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %192, i32 0, i32 12
  %arrayidx345 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn344, i32 0, i64 %idxprom343
  %193 = load i32, i32* %arrayidx345, align 4
  %194 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic346 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %194, i32 0, i32 5
  %195 = load i32, i32* %numpic346, align 4
  %mul347 = mul nsw i32 %195, %193
  store i32 %mul347, i32* %numpic346, align 4
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.341
  %196 = load i32, i32* %k, align 4
  %inc349 = add nsw i32 %196, 1
  store i32 %inc349, i32* %k, align 4
  br label %for.cond.337

for.end.350:                                      ; preds = %for.cond.337
  br label %if.end.351

if.end.351:                                       ; preds = %for.end.350, %if.then.331
  br label %if.end.385

if.else.352:                                      ; preds = %if.then.327
  %197 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used353 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %197, i32 0, i32 8
  %xtension354 = getelementptr inbounds %struct.anon, %struct.anon* %used353, i32 0, i32 6
  %198 = load i8, i8* %xtension354, align 1
  %conv355 = sext i8 %198 to i32
  %tobool356 = icmp ne i32 %conv355, 0
  br i1 %tobool356, label %land.lhs.true.357, label %if.end.384

land.lhs.true.357:                                ; preds = %if.else.352
  %199 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %xtension358 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %199, i32 0, i32 17
  %arraydecay359 = getelementptr inbounds [80 x i8], [80 x i8]* %xtension358, i32 0, i32 0
  %call360 = call i32 @strncmp(i8* %arraydecay359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i64 5) #6
  %cmp361 = icmp eq i32 %call360, 0
  br i1 %cmp361, label %if.then.363, label %if.end.384

if.then.363:                                      ; preds = %land.lhs.true.357
  %200 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis364 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %200, i32 0, i32 11
  %201 = load i32, i32* %naxis364, align 4
  %cmp365 = icmp sgt i32 %201, 0
  br i1 %cmp365, label %if.then.367, label %if.end.383

if.then.367:                                      ; preds = %if.then.363
  %202 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic368 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %202, i32 0, i32 5
  store i32 1, i32* %numpic368, align 4
  store i32 3, i32* %k, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.380, %if.then.367
  %203 = load i32, i32* %k, align 4
  %204 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis370 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %204, i32 0, i32 11
  %205 = load i32, i32* %naxis370, align 4
  %cmp371 = icmp sle i32 %203, %205
  br i1 %cmp371, label %for.body.373, label %for.end.382

for.body.373:                                     ; preds = %for.cond.369
  %206 = load i32, i32* %k, align 4
  %sub374 = sub nsw i32 %206, 1
  %idxprom375 = sext i32 %sub374 to i64
  %207 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn376 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %207, i32 0, i32 12
  %arrayidx377 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn376, i32 0, i64 %idxprom375
  %208 = load i32, i32* %arrayidx377, align 4
  %209 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic378 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %209, i32 0, i32 5
  %210 = load i32, i32* %numpic378, align 4
  %mul379 = mul nsw i32 %210, %208
  store i32 %mul379, i32* %numpic378, align 4
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.body.373
  %211 = load i32, i32* %k, align 4
  %inc381 = add nsw i32 %211, 1
  store i32 %inc381, i32* %k, align 4
  br label %for.cond.369

for.end.382:                                      ; preds = %for.cond.369
  br label %if.end.383

if.end.383:                                       ; preds = %for.end.382, %if.then.363
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %land.lhs.true.357, %if.else.352
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.end.351
  br label %if.end.391

if.else.386:                                      ; preds = %lor.end.324
  %arraydecay387 = getelementptr inbounds [160 x i8], [160 x i8]* %msg, i32 0, i32 0
  %212 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix388 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %212, i32 0, i32 13
  %213 = load i32, i32* %bitpix388, align 4
  %call389 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay387, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.94, i32 0, i32 0), i32 %213) #4
  %arraydecay390 = getelementptr inbounds [160 x i8], [160 x i8]* %msg, i32 0, i32 0
  call void @fits_set_error(i8* %arraydecay390)
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.386, %if.end.385
  %214 = load %struct.fits_record_list*, %struct.fits_record_list** %hdr.addr, align 8
  %215 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %header_record_list = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %215, i32 0, i32 24
  store %struct.fits_record_list* %214, %struct.fits_record_list** %header_record_list, align 8
  %216 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* %216, %struct.fits_hdu_list** %retval
  br label %return

err_missing:                                      ; preds = %if.then.42, %if.then.33
  %arraydecay392 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  %arraydecay393 = getelementptr inbounds [9 x i8], [9 x i8]* %key, i32 0, i32 0
  %call394 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay392, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.95, i32 0, i32 0), i8* %arraydecay393) #4
  br label %err_return

err_return:                                       ; preds = %err_missing, %if.then.195, %if.then.177, %if.then.164, %if.then.138, %if.then.59, %if.else
  %217 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  call void @fits_delete_hdulist(%struct.fits_hdu_list* %217)
  %arraydecay395 = getelementptr inbounds [80 x i8], [80 x i8]* %errmsg, i32 0, i32 0
  call void @fits_set_error(i8* %arraydecay395)
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %err_return, %if.end.391, %if.then
  %218 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %218
}

; Function Attrs: nounwind uwtable
define internal void @fits_delete_recordlist(%struct.fits_record_list* %rl) #0 {
entry:
  %rl.addr = alloca %struct.fits_record_list*, align 8
  %next = alloca %struct.fits_record_list*, align 8
  store %struct.fits_record_list* %rl, %struct.fits_record_list** %rl.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %cmp = icmp ne %struct.fits_record_list* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %next_record = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %1, i32 0, i32 1
  %2 = load %struct.fits_record_list*, %struct.fits_record_list** %next_record, align 8
  store %struct.fits_record_list* %2, %struct.fits_record_list** %next, align 8
  %3 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %next_record1 = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %3, i32 0, i32 1
  store %struct.fits_record_list* null, %struct.fits_record_list** %next_record1, align 8
  %4 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %5 = bitcast %struct.fits_record_list* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.fits_record_list*, %struct.fits_record_list** %next, align 8
  store %struct.fits_record_list* %6, %struct.fits_record_list** %rl.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fits_eval_pixrange(%struct._IO_FILE* %fp, %struct.fits_hdu_list* %hdu) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hdu.addr = alloca %struct.fits_hdu_list*, align 8
  %maxelem = alloca i32, align 4
  %pixdat = alloca [4096 x i8], align 16
  %nelem = alloca i32, align 4
  %bpp = alloca i32, align 4
  %blank_found = alloca i32, align 4
  %nan_found = alloca i32, align 4
  %pixval = alloca i8, align 1
  %ptr = alloca i8*, align 8
  %minval = alloca i8, align 1
  %maxval = alloca i8, align 1
  %blankval = alloca i8, align 1
  %pixval73 = alloca i16, align 2
  %ptr74 = alloca i8*, align 8
  %minval75 = alloca i16, align 2
  %maxval76 = alloca i16, align 2
  %blankval103 = alloca i16, align 2
  %pixval171 = alloca i64, align 8
  %ptr172 = alloca i8*, align 8
  %minval173 = alloca i64, align 8
  %maxval174 = alloca i64, align 8
  %blankval201 = alloca i64, align 8
  %pixval278 = alloca float, align 4
  %ptr279 = alloca i8*, align 8
  %minval280 = alloca float, align 4
  %maxval281 = alloca float, align 4
  %first = alloca i32, align 4
  %uc = alloca [4 x i8], align 1
  %m64 = alloca double, align 8
  %uc329 = alloca i8*, align 8
  %i64 = alloca double, align 8
  %uc346 = alloca i8*, align 8
  %pixval387 = alloca double, align 8
  %ptr388 = alloca i8*, align 8
  %minval389 = alloca double, align 8
  %maxval390 = alloca double, align 8
  %first391 = alloca i32, align 4
  %uc424 = alloca [8 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.fits_hdu_list* %hdu, %struct.fits_hdu_list** %hdu.addr, align 8
  store i32 0, i32* %blank_found, align 4
  store i32 0, i32* %nan_found, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %data_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %1, i32 0, i32 1
  %2 = load i64, i64* %data_offset, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %2, i32 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %bpp1 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 4
  %4 = load i32, i32* %bpp1, align 4
  store i32 %4, i32* %bpp, align 4
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %udata_size = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 3
  %6 = load i64, i64* %udata_size, align 8
  %7 = load i32, i32* %bpp, align 4
  %conv = sext i32 %7 to i64
  %div = sdiv i64 %6, %conv
  %conv2 = trunc i64 %div to i32
  store i32 %conv2, i32* %nelem, align 4
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %8, i32 0, i32 13
  %9 = load i32, i32* %bitpix, align 4
  switch i32 %9, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb.72
    i32 32, label %sw.bb.170
    i32 -32, label %sw.bb.277
    i32 -64, label %sw.bb.386
  ]

sw.bb:                                            ; preds = %if.end
  store i8 -1, i8* %minval, align 1
  store i8 0, i8* %maxval, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %sw.bb
  %10 = load i32, i32* %nelem, align 4
  %cmp3 = icmp sgt i32 %10, 0
  br i1 %cmp3, label %while.body, label %while.end.69

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %bpp, align 4
  %conv5 = sext i32 %11 to i64
  %div6 = udiv i64 4096, %conv5
  %conv7 = trunc i64 %div6 to i32
  store i32 %conv7, i32* %maxelem, align 4
  %12 = load i32, i32* %nelem, align 4
  %13 = load i32, i32* %maxelem, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  %14 = load i32, i32* %nelem, align 4
  store i32 %14, i32* %maxelem, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %while.body
  %15 = load i32, i32* %maxelem, align 4
  %16 = load i32, i32* %nelem, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %nelem, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  %17 = load i32, i32* %bpp, align 4
  %conv12 = sext i32 %17 to i64
  %18 = load i32, i32* %maxelem, align 4
  %conv13 = sext i32 %18 to i64
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i64 @fread(i8* %arraydecay, i64 %conv12, i64 %conv13, %struct._IO_FILE* %19)
  %20 = load i32, i32* %maxelem, align 4
  %conv15 = sext i32 %20 to i64
  %cmp16 = icmp ne i64 %call14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.11
  call void @fits_set_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.97, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  store i8* %arraydecay20, i8** %ptr, align 8
  %21 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %21, i32 0, i32 8
  %blank = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 2
  %22 = load i8, i8* %blank, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.then.21, label %if.else.47

if.then.21:                                       ; preds = %if.end.19
  %23 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %blank22 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %23, i32 0, i32 14
  %24 = load i64, i64* %blank22, align 8
  %conv23 = trunc i64 %24 to i8
  store i8 %conv23, i8* %blankval, align 1
  br label %while.cond.24

while.cond.24:                                    ; preds = %if.end.46, %if.then.21
  %25 = load i32, i32* %maxelem, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %maxelem, align 4
  %cmp25 = icmp sgt i32 %25, 0
  br i1 %cmp25, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.24
  %26 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %pixval, align 1
  %28 = load i8, i8* %pixval, align 1
  %conv28 = zext i8 %28 to i32
  %29 = load i8, i8* %blankval, align 1
  %conv29 = zext i8 %29 to i32
  %cmp30 = icmp ne i32 %conv28, %conv29
  br i1 %cmp30, label %if.then.32, label %if.else.45

if.then.32:                                       ; preds = %while.body.27
  %30 = load i8, i8* %pixval, align 1
  %conv33 = zext i8 %30 to i32
  %31 = load i8, i8* %minval, align 1
  %conv34 = zext i8 %31 to i32
  %cmp35 = icmp slt i32 %conv33, %conv34
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.32
  %32 = load i8, i8* %pixval, align 1
  store i8 %32, i8* %minval, align 1
  br label %if.end.44

if.else:                                          ; preds = %if.then.32
  %33 = load i8, i8* %pixval, align 1
  %conv38 = zext i8 %33 to i32
  %34 = load i8, i8* %maxval, align 1
  %conv39 = zext i8 %34 to i32
  %cmp40 = icmp sgt i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  %35 = load i8, i8* %pixval, align 1
  store i8 %35, i8* %maxval, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.37
  br label %if.end.46

if.else.45:                                       ; preds = %while.body.27
  store i32 1, i32* %blank_found, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.end.44
  br label %while.cond.24

while.end:                                        ; preds = %while.cond.24
  br label %if.end.68

if.else.47:                                       ; preds = %if.end.19
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.66, %if.else.47
  %36 = load i32, i32* %maxelem, align 4
  %dec49 = add nsw i32 %36, -1
  store i32 %dec49, i32* %maxelem, align 4
  %cmp50 = icmp sgt i32 %36, 0
  br i1 %cmp50, label %while.body.52, label %while.end.67

while.body.52:                                    ; preds = %while.cond.48
  %37 = load i8*, i8** %ptr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr53, i8** %ptr, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %pixval, align 1
  %39 = load i8, i8* %pixval, align 1
  %conv54 = zext i8 %39 to i32
  %40 = load i8, i8* %minval, align 1
  %conv55 = zext i8 %40 to i32
  %cmp56 = icmp slt i32 %conv54, %conv55
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %while.body.52
  %41 = load i8, i8* %pixval, align 1
  store i8 %41, i8* %minval, align 1
  br label %if.end.66

if.else.59:                                       ; preds = %while.body.52
  %42 = load i8, i8* %pixval, align 1
  %conv60 = zext i8 %42 to i32
  %43 = load i8, i8* %maxval, align 1
  %conv61 = zext i8 %43 to i32
  %cmp62 = icmp sgt i32 %conv60, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.59
  %44 = load i8, i8* %pixval, align 1
  store i8 %44, i8* %maxval, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.else.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.58
  br label %while.cond.48

while.end.67:                                     ; preds = %while.cond.48
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.67, %while.end
  br label %while.cond

while.end.69:                                     ; preds = %while.cond
  %45 = load i8, i8* %minval, align 1
  %conv70 = uitofp i8 %45 to double
  %46 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmin = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %46, i32 0, i32 9
  store double %conv70, double* %pixmin, align 8
  %47 = load i8, i8* %maxval, align 1
  %conv71 = uitofp i8 %47 to double
  %48 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmax = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %48, i32 0, i32 10
  store double %conv71, double* %pixmax, align 8
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end
  store i16 32767, i16* %minval75, align 2
  store i16 -32768, i16* %maxval76, align 2
  br label %while.cond.77

while.cond.77:                                    ; preds = %if.end.164, %sw.bb.72
  %49 = load i32, i32* %nelem, align 4
  %cmp78 = icmp sgt i32 %49, 0
  br i1 %cmp78, label %while.body.80, label %while.end.165

while.body.80:                                    ; preds = %while.cond.77
  %50 = load i32, i32* %bpp, align 4
  %conv81 = sext i32 %50 to i64
  %div82 = udiv i64 4096, %conv81
  %conv83 = trunc i64 %div82 to i32
  store i32 %conv83, i32* %maxelem, align 4
  %51 = load i32, i32* %nelem, align 4
  %52 = load i32, i32* %maxelem, align 4
  %cmp84 = icmp slt i32 %51, %52
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %while.body.80
  %53 = load i32, i32* %nelem, align 4
  store i32 %53, i32* %maxelem, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %while.body.80
  %54 = load i32, i32* %maxelem, align 4
  %55 = load i32, i32* %nelem, align 4
  %sub88 = sub nsw i32 %55, %54
  store i32 %sub88, i32* %nelem, align 4
  %arraydecay89 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  %56 = load i32, i32* %bpp, align 4
  %conv90 = sext i32 %56 to i64
  %57 = load i32, i32* %maxelem, align 4
  %conv91 = sext i32 %57 to i64
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call92 = call i64 @fread(i8* %arraydecay89, i64 %conv90, i64 %conv91, %struct._IO_FILE* %58)
  %59 = load i32, i32* %maxelem, align 4
  %conv93 = sext i32 %59 to i64
  %cmp94 = icmp ne i64 %call92, %conv93
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.87
  call void @fits_set_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.98, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.87
  %arraydecay98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  store i8* %arraydecay98, i8** %ptr74, align 8
  %60 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %used99 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %60, i32 0, i32 8
  %blank100 = getelementptr inbounds %struct.anon, %struct.anon* %used99, i32 0, i32 2
  %61 = load i8, i8* %blank100, align 1
  %tobool101 = icmp ne i8 %61, 0
  br i1 %tobool101, label %if.then.102, label %if.else.136

if.then.102:                                      ; preds = %if.end.97
  %62 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %blank104 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %62, i32 0, i32 14
  %63 = load i64, i64* %blank104, align 8
  %conv105 = trunc i64 %63 to i16
  store i16 %conv105, i16* %blankval103, align 2
  br label %while.cond.106

while.cond.106:                                   ; preds = %if.end.134, %if.then.102
  %64 = load i32, i32* %maxelem, align 4
  %dec107 = add nsw i32 %64, -1
  store i32 %dec107, i32* %maxelem, align 4
  %cmp108 = icmp sgt i32 %64, 0
  br i1 %cmp108, label %while.body.110, label %while.end.135

while.body.110:                                   ; preds = %while.cond.106
  %65 = load i8*, i8** %ptr74, align 8
  %arrayidx = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx, align 1
  %conv111 = zext i8 %66 to i32
  %shl = shl i32 %conv111, 8
  %67 = load i8*, i8** %ptr74, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %68 to i32
  %or = or i32 %shl, %conv113
  %conv114 = trunc i32 %or to i16
  store i16 %conv114, i16* %pixval73, align 2
  %69 = load i8*, i8** %ptr74, align 8
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %add.ptr, i8** %ptr74, align 8
  %70 = load i16, i16* %pixval73, align 2
  %conv115 = sext i16 %70 to i32
  %71 = load i16, i16* %blankval103, align 2
  %conv116 = sext i16 %71 to i32
  %cmp117 = icmp ne i32 %conv115, %conv116
  br i1 %cmp117, label %if.then.119, label %if.else.133

if.then.119:                                      ; preds = %while.body.110
  %72 = load i16, i16* %pixval73, align 2
  %conv120 = sext i16 %72 to i32
  %73 = load i16, i16* %minval75, align 2
  %conv121 = sext i16 %73 to i32
  %cmp122 = icmp slt i32 %conv120, %conv121
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.then.119
  %74 = load i16, i16* %pixval73, align 2
  store i16 %74, i16* %minval75, align 2
  br label %if.end.132

if.else.125:                                      ; preds = %if.then.119
  %75 = load i16, i16* %pixval73, align 2
  %conv126 = sext i16 %75 to i32
  %76 = load i16, i16* %maxval76, align 2
  %conv127 = sext i16 %76 to i32
  %cmp128 = icmp sgt i32 %conv126, %conv127
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.else.125
  %77 = load i16, i16* %pixval73, align 2
  store i16 %77, i16* %maxval76, align 2
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.else.125
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.124
  br label %if.end.134

if.else.133:                                      ; preds = %while.body.110
  store i32 1, i32* %blank_found, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.133, %if.end.132
  br label %while.cond.106

while.end.135:                                    ; preds = %while.cond.106
  br label %if.end.164

if.else.136:                                      ; preds = %if.end.97
  br label %while.cond.137

while.cond.137:                                   ; preds = %if.end.162, %if.else.136
  %78 = load i32, i32* %maxelem, align 4
  %dec138 = add nsw i32 %78, -1
  store i32 %dec138, i32* %maxelem, align 4
  %cmp139 = icmp sgt i32 %78, 0
  br i1 %cmp139, label %while.body.141, label %while.end.163

while.body.141:                                   ; preds = %while.cond.137
  %79 = load i8*, i8** %ptr74, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %80 to i32
  %shl144 = shl i32 %conv143, 8
  %81 = load i8*, i8** %ptr74, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %82 to i32
  %or147 = or i32 %shl144, %conv146
  %conv148 = trunc i32 %or147 to i16
  store i16 %conv148, i16* %pixval73, align 2
  %83 = load i8*, i8** %ptr74, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %add.ptr149, i8** %ptr74, align 8
  %84 = load i16, i16* %pixval73, align 2
  %conv150 = sext i16 %84 to i32
  %85 = load i16, i16* %minval75, align 2
  %conv151 = sext i16 %85 to i32
  %cmp152 = icmp slt i32 %conv150, %conv151
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %while.body.141
  %86 = load i16, i16* %pixval73, align 2
  store i16 %86, i16* %minval75, align 2
  br label %if.end.162

if.else.155:                                      ; preds = %while.body.141
  %87 = load i16, i16* %pixval73, align 2
  %conv156 = sext i16 %87 to i32
  %88 = load i16, i16* %maxval76, align 2
  %conv157 = sext i16 %88 to i32
  %cmp158 = icmp sgt i32 %conv156, %conv157
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.else.155
  %89 = load i16, i16* %pixval73, align 2
  store i16 %89, i16* %maxval76, align 2
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.else.155
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.154
  br label %while.cond.137

while.end.163:                                    ; preds = %while.cond.137
  br label %if.end.164

if.end.164:                                       ; preds = %while.end.163, %while.end.135
  br label %while.cond.77

while.end.165:                                    ; preds = %while.cond.77
  %90 = load i16, i16* %minval75, align 2
  %conv166 = sitofp i16 %90 to double
  %91 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmin167 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %91, i32 0, i32 9
  store double %conv166, double* %pixmin167, align 8
  %92 = load i16, i16* %maxval76, align 2
  %conv168 = sitofp i16 %92 to double
  %93 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmax169 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %93, i32 0, i32 10
  store double %conv168, double* %pixmax169, align 8
  br label %sw.epilog

sw.bb.170:                                        ; preds = %if.end
  store i64 2147483647, i64* %minval173, align 8
  store i64 -2147483648, i64* %maxval174, align 8
  br label %while.cond.175

while.cond.175:                                   ; preds = %if.end.271, %sw.bb.170
  %94 = load i32, i32* %nelem, align 4
  %cmp176 = icmp sgt i32 %94, 0
  br i1 %cmp176, label %while.body.178, label %while.end.272

while.body.178:                                   ; preds = %while.cond.175
  %95 = load i32, i32* %bpp, align 4
  %conv179 = sext i32 %95 to i64
  %div180 = udiv i64 4096, %conv179
  %conv181 = trunc i64 %div180 to i32
  store i32 %conv181, i32* %maxelem, align 4
  %96 = load i32, i32* %nelem, align 4
  %97 = load i32, i32* %maxelem, align 4
  %cmp182 = icmp slt i32 %96, %97
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %while.body.178
  %98 = load i32, i32* %nelem, align 4
  store i32 %98, i32* %maxelem, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %while.body.178
  %99 = load i32, i32* %maxelem, align 4
  %100 = load i32, i32* %nelem, align 4
  %sub186 = sub nsw i32 %100, %99
  store i32 %sub186, i32* %nelem, align 4
  %arraydecay187 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  %101 = load i32, i32* %bpp, align 4
  %conv188 = sext i32 %101 to i64
  %102 = load i32, i32* %maxelem, align 4
  %conv189 = sext i32 %102 to i64
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call190 = call i64 @fread(i8* %arraydecay187, i64 %conv188, i64 %conv189, %struct._IO_FILE* %103)
  %104 = load i32, i32* %maxelem, align 4
  %conv191 = sext i32 %104 to i64
  %cmp192 = icmp ne i64 %call190, %conv191
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.185
  call void @fits_set_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.99, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.195:                                       ; preds = %if.end.185
  %arraydecay196 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  store i8* %arraydecay196, i8** %ptr172, align 8
  %105 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %used197 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %105, i32 0, i32 8
  %blank198 = getelementptr inbounds %struct.anon, %struct.anon* %used197, i32 0, i32 2
  %106 = load i8, i8* %blank198, align 1
  %tobool199 = icmp ne i8 %106, 0
  br i1 %tobool199, label %if.then.200, label %if.else.239

if.then.200:                                      ; preds = %if.end.195
  %107 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %blank202 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %107, i32 0, i32 14
  %108 = load i64, i64* %blank202, align 8
  store i64 %108, i64* %blankval201, align 8
  br label %while.cond.203

while.cond.203:                                   ; preds = %if.end.237, %if.then.200
  %109 = load i32, i32* %maxelem, align 4
  %dec204 = add nsw i32 %109, -1
  store i32 %dec204, i32* %maxelem, align 4
  %cmp205 = icmp sgt i32 %109, 0
  br i1 %cmp205, label %while.body.207, label %while.end.238

while.body.207:                                   ; preds = %while.cond.203
  %110 = load i8*, i8** %ptr172, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %111 to i32
  %shl210 = shl i32 %conv209, 24
  %112 = load i8*, i8** %ptr172, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %113 to i32
  %shl213 = shl i32 %conv212, 16
  %or214 = or i32 %shl210, %shl213
  %114 = load i8*, i8** %ptr172, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %115 to i32
  %shl217 = shl i32 %conv216, 8
  %or218 = or i32 %or214, %shl217
  %116 = load i8*, i8** %ptr172, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %116, i64 3
  %117 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %117 to i32
  %or221 = or i32 %or218, %conv220
  %conv222 = sext i32 %or221 to i64
  store i64 %conv222, i64* %pixval171, align 8
  %118 = load i8*, i8** %ptr172, align 8
  %add.ptr223 = getelementptr inbounds i8, i8* %118, i64 4
  store i8* %add.ptr223, i8** %ptr172, align 8
  %119 = load i64, i64* %pixval171, align 8
  %120 = load i64, i64* %blankval201, align 8
  %cmp224 = icmp ne i64 %119, %120
  br i1 %cmp224, label %if.then.226, label %if.else.236

if.then.226:                                      ; preds = %while.body.207
  %121 = load i64, i64* %pixval171, align 8
  %122 = load i64, i64* %minval173, align 8
  %cmp227 = icmp slt i64 %121, %122
  br i1 %cmp227, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %if.then.226
  %123 = load i64, i64* %pixval171, align 8
  store i64 %123, i64* %minval173, align 8
  br label %if.end.235

if.else.230:                                      ; preds = %if.then.226
  %124 = load i64, i64* %pixval171, align 8
  %125 = load i64, i64* %maxval174, align 8
  %cmp231 = icmp sgt i64 %124, %125
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.else.230
  %126 = load i64, i64* %pixval171, align 8
  store i64 %126, i64* %maxval174, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.else.230
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.229
  br label %if.end.237

if.else.236:                                      ; preds = %while.body.207
  store i32 1, i32* %blank_found, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.236, %if.end.235
  br label %while.cond.203

while.end.238:                                    ; preds = %while.cond.203
  br label %if.end.271

if.else.239:                                      ; preds = %if.end.195
  br label %while.cond.240

while.cond.240:                                   ; preds = %if.end.269, %if.else.239
  %127 = load i32, i32* %maxelem, align 4
  %dec241 = add nsw i32 %127, -1
  store i32 %dec241, i32* %maxelem, align 4
  %cmp242 = icmp sgt i32 %127, 0
  br i1 %cmp242, label %while.body.244, label %while.end.270

while.body.244:                                   ; preds = %while.cond.240
  %128 = load i8*, i8** %ptr172, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %128, i64 0
  %129 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %129 to i32
  %shl247 = shl i32 %conv246, 24
  %130 = load i8*, i8** %ptr172, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %131 to i32
  %shl250 = shl i32 %conv249, 16
  %or251 = or i32 %shl247, %shl250
  %132 = load i8*, i8** %ptr172, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %132, i64 2
  %133 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %133 to i32
  %shl254 = shl i32 %conv253, 8
  %or255 = or i32 %or251, %shl254
  %134 = load i8*, i8** %ptr172, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %134, i64 3
  %135 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %135 to i32
  %or258 = or i32 %or255, %conv257
  %conv259 = sext i32 %or258 to i64
  store i64 %conv259, i64* %pixval171, align 8
  %136 = load i8*, i8** %ptr172, align 8
  %add.ptr260 = getelementptr inbounds i8, i8* %136, i64 4
  store i8* %add.ptr260, i8** %ptr172, align 8
  %137 = load i64, i64* %pixval171, align 8
  %138 = load i64, i64* %minval173, align 8
  %cmp261 = icmp slt i64 %137, %138
  br i1 %cmp261, label %if.then.263, label %if.else.264

if.then.263:                                      ; preds = %while.body.244
  %139 = load i64, i64* %pixval171, align 8
  store i64 %139, i64* %minval173, align 8
  br label %if.end.269

if.else.264:                                      ; preds = %while.body.244
  %140 = load i64, i64* %pixval171, align 8
  %141 = load i64, i64* %maxval174, align 8
  %cmp265 = icmp sgt i64 %140, %141
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.else.264
  %142 = load i64, i64* %pixval171, align 8
  store i64 %142, i64* %maxval174, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.else.264
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.263
  br label %while.cond.240

while.end.270:                                    ; preds = %while.cond.240
  br label %if.end.271

if.end.271:                                       ; preds = %while.end.270, %while.end.238
  br label %while.cond.175

while.end.272:                                    ; preds = %while.cond.175
  %143 = load i64, i64* %minval173, align 8
  %conv273 = sitofp i64 %143 to double
  %144 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmin274 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %144, i32 0, i32 9
  store double %conv273, double* %pixmin274, align 8
  %145 = load i64, i64* %maxval174, align 8
  %conv275 = sitofp i64 %145 to double
  %146 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmax276 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %146, i32 0, i32 10
  store double %conv275, double* %pixmax276, align 8
  br label %sw.epilog

sw.bb.277:                                        ; preds = %if.end
  store i32 1, i32* %first, align 4
  store float 0.000000e+00, float* %pixval278, align 4
  store float 0.000000e+00, float* %minval280, align 4
  store float 0.000000e+00, float* %maxval281, align 4
  br label %while.cond.282

while.cond.282:                                   ; preds = %while.end.380, %sw.bb.277
  %147 = load i32, i32* %nelem, align 4
  %cmp283 = icmp sgt i32 %147, 0
  br i1 %cmp283, label %while.body.285, label %while.end.381

while.body.285:                                   ; preds = %while.cond.282
  %148 = load i32, i32* %bpp, align 4
  %conv286 = sext i32 %148 to i64
  %div287 = udiv i64 4096, %conv286
  %conv288 = trunc i64 %div287 to i32
  store i32 %conv288, i32* %maxelem, align 4
  %149 = load i32, i32* %nelem, align 4
  %150 = load i32, i32* %maxelem, align 4
  %cmp289 = icmp slt i32 %149, %150
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %while.body.285
  %151 = load i32, i32* %nelem, align 4
  store i32 %151, i32* %maxelem, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %while.body.285
  %152 = load i32, i32* %maxelem, align 4
  %153 = load i32, i32* %nelem, align 4
  %sub293 = sub nsw i32 %153, %152
  store i32 %sub293, i32* %nelem, align 4
  %arraydecay294 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  %154 = load i32, i32* %bpp, align 4
  %conv295 = sext i32 %154 to i64
  %155 = load i32, i32* %maxelem, align 4
  %conv296 = sext i32 %155 to i64
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call297 = call i64 @fread(i8* %arraydecay294, i64 %conv295, i64 %conv296, %struct._IO_FILE* %156)
  %157 = load i32, i32* %maxelem, align 4
  %conv298 = sext i32 %157 to i64
  %cmp299 = icmp ne i64 %call297, %conv298
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.292
  call void @fits_set_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.302:                                       ; preds = %if.end.292
  %arraydecay303 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  store i8* %arraydecay303, i8** %ptr279, align 8
  br label %while.cond.304

while.cond.304:                                   ; preds = %if.end.379, %if.end.302
  %158 = load i32, i32* %maxelem, align 4
  %dec305 = add nsw i32 %158, -1
  store i32 %dec305, i32* %maxelem, align 4
  %cmp306 = icmp sgt i32 %158, 0
  br i1 %cmp306, label %while.body.308, label %while.end.380

while.body.308:                                   ; preds = %while.cond.304
  %159 = load i8*, i8** %ptr279, align 8
  %call309 = call i32 @fits_nan_32(i8* %159)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.else.378, label %if.then.311

if.then.311:                                      ; preds = %while.body.308
  %160 = load i32, i32* @fits_ieee32_intel, align 4
  %tobool312 = icmp ne i32 %160, 0
  br i1 %tobool312, label %if.then.313, label %if.else.323

if.then.313:                                      ; preds = %if.then.311
  %161 = load i8*, i8** %ptr279, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %161, i64 3
  %162 = load i8, i8* %arrayidx314, align 1
  %arrayidx315 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 0
  store i8 %162, i8* %arrayidx315, align 1
  %163 = load i8*, i8** %ptr279, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %163, i64 2
  %164 = load i8, i8* %arrayidx316, align 1
  %arrayidx317 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 1
  store i8 %164, i8* %arrayidx317, align 1
  %165 = load i8*, i8** %ptr279, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx318, align 1
  %arrayidx319 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 2
  store i8 %166, i8* %arrayidx319, align 1
  %167 = load i8*, i8** %ptr279, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx320, align 1
  %arrayidx321 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 3
  store i8 %168, i8* %arrayidx321, align 1
  %arraydecay322 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i32 0
  %169 = bitcast i8* %arraydecay322 to float*
  %170 = load float, float* %169, align 4
  store float %170, float* %pixval278, align 4
  br label %if.end.363

if.else.323:                                      ; preds = %if.then.311
  %171 = load i32, i32* @fits_ieee32_motorola, align 4
  %tobool324 = icmp ne i32 %171, 0
  br i1 %tobool324, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %if.else.323
  %172 = load i8*, i8** %ptr279, align 8
  %173 = bitcast i8* %172 to float*
  %174 = load float, float* %173, align 4
  store float %174, float* %pixval278, align 4
  br label %if.end.362

if.else.326:                                      ; preds = %if.else.323
  %175 = load i32, i32* @fits_ieee64_motorola, align 4
  %tobool327 = icmp ne i32 %175, 0
  br i1 %tobool327, label %if.then.328, label %if.else.343

if.then.328:                                      ; preds = %if.else.326
  %176 = bitcast double* %m64 to i8*
  store i8* %176, i8** %uc329, align 8
  %177 = load i8*, i8** %ptr279, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %177, i64 0
  %178 = load i8, i8* %arrayidx330, align 1
  %179 = load i8*, i8** %uc329, align 8
  %arrayidx331 = getelementptr inbounds i8, i8* %179, i64 0
  store i8 %178, i8* %arrayidx331, align 1
  %180 = load i8*, i8** %ptr279, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %180, i64 1
  %181 = load i8, i8* %arrayidx332, align 1
  %182 = load i8*, i8** %uc329, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %182, i64 1
  store i8 %181, i8* %arrayidx333, align 1
  %183 = load i8*, i8** %ptr279, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %183, i64 2
  %184 = load i8, i8* %arrayidx334, align 1
  %185 = load i8*, i8** %uc329, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %185, i64 2
  store i8 %184, i8* %arrayidx335, align 1
  %186 = load i8*, i8** %ptr279, align 8
  %arrayidx336 = getelementptr inbounds i8, i8* %186, i64 3
  %187 = load i8, i8* %arrayidx336, align 1
  %188 = load i8*, i8** %uc329, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %188, i64 3
  store i8 %187, i8* %arrayidx337, align 1
  %189 = load i8*, i8** %uc329, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %189, i64 7
  store i8 0, i8* %arrayidx338, align 1
  %190 = load i8*, i8** %uc329, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %190, i64 6
  store i8 0, i8* %arrayidx339, align 1
  %191 = load i8*, i8** %uc329, align 8
  %arrayidx340 = getelementptr inbounds i8, i8* %191, i64 5
  store i8 0, i8* %arrayidx340, align 1
  %192 = load i8*, i8** %uc329, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %192, i64 4
  store i8 0, i8* %arrayidx341, align 1
  %193 = load double, double* %m64, align 8
  %conv342 = fptrunc double %193 to float
  store float %conv342, float* %pixval278, align 4
  br label %if.end.361

if.else.343:                                      ; preds = %if.else.326
  %194 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool344 = icmp ne i32 %194, 0
  br i1 %tobool344, label %if.then.345, label %if.end.360

if.then.345:                                      ; preds = %if.else.343
  %195 = bitcast double* %i64 to i8*
  store i8* %195, i8** %uc346, align 8
  %196 = load i8*, i8** %uc346, align 8
  %arrayidx347 = getelementptr inbounds i8, i8* %196, i64 3
  store i8 0, i8* %arrayidx347, align 1
  %197 = load i8*, i8** %uc346, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %197, i64 2
  store i8 0, i8* %arrayidx348, align 1
  %198 = load i8*, i8** %uc346, align 8
  %arrayidx349 = getelementptr inbounds i8, i8* %198, i64 1
  store i8 0, i8* %arrayidx349, align 1
  %199 = load i8*, i8** %uc346, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 0, i8* %arrayidx350, align 1
  %200 = load i8*, i8** %ptr279, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %200, i64 0
  %201 = load i8, i8* %arrayidx351, align 1
  %202 = load i8*, i8** %uc346, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %202, i64 7
  store i8 %201, i8* %arrayidx352, align 1
  %203 = load i8*, i8** %ptr279, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx353, align 1
  %205 = load i8*, i8** %uc346, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %205, i64 6
  store i8 %204, i8* %arrayidx354, align 1
  %206 = load i8*, i8** %ptr279, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %206, i64 2
  %207 = load i8, i8* %arrayidx355, align 1
  %208 = load i8*, i8** %uc346, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %208, i64 5
  store i8 %207, i8* %arrayidx356, align 1
  %209 = load i8*, i8** %ptr279, align 8
  %arrayidx357 = getelementptr inbounds i8, i8* %209, i64 3
  %210 = load i8, i8* %arrayidx357, align 1
  %211 = load i8*, i8** %uc346, align 8
  %arrayidx358 = getelementptr inbounds i8, i8* %211, i64 4
  store i8 %210, i8* %arrayidx358, align 1
  %212 = load double, double* %i64, align 8
  %conv359 = fptrunc double %212 to float
  store float %conv359, float* %pixval278, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.345, %if.else.343
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.328
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.325
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.then.313
  %213 = load i8*, i8** %ptr279, align 8
  %add.ptr364 = getelementptr inbounds i8, i8* %213, i64 4
  store i8* %add.ptr364, i8** %ptr279, align 8
  %214 = load i32, i32* %first, align 4
  %tobool365 = icmp ne i32 %214, 0
  br i1 %tobool365, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %if.end.363
  store i32 0, i32* %first, align 4
  %215 = load float, float* %pixval278, align 4
  store float %215, float* %maxval281, align 4
  store float %215, float* %minval280, align 4
  br label %if.end.377

if.else.367:                                      ; preds = %if.end.363
  %216 = load float, float* %pixval278, align 4
  %217 = load float, float* %minval280, align 4
  %cmp368 = fcmp olt float %216, %217
  br i1 %cmp368, label %if.then.370, label %if.else.371

if.then.370:                                      ; preds = %if.else.367
  %218 = load float, float* %pixval278, align 4
  store float %218, float* %minval280, align 4
  br label %if.end.376

if.else.371:                                      ; preds = %if.else.367
  %219 = load float, float* %pixval278, align 4
  %220 = load float, float* %maxval281, align 4
  %cmp372 = fcmp ogt float %219, %220
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.else.371
  %221 = load float, float* %pixval278, align 4
  store float %221, float* %maxval281, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.374, %if.else.371
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.370
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.366
  br label %if.end.379

if.else.378:                                      ; preds = %while.body.308
  store i32 1, i32* %nan_found, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.378, %if.end.377
  br label %while.cond.304

while.end.380:                                    ; preds = %while.cond.304
  br label %while.cond.282

while.end.381:                                    ; preds = %while.cond.282
  %222 = load float, float* %minval280, align 4
  %conv382 = fpext float %222 to double
  %223 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmin383 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %223, i32 0, i32 9
  store double %conv382, double* %pixmin383, align 8
  %224 = load float, float* %maxval281, align 4
  %conv384 = fpext float %224 to double
  %225 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmax385 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %225, i32 0, i32 10
  store double %conv384, double* %pixmax385, align 8
  br label %sw.epilog

sw.bb.386:                                        ; preds = %if.end
  store i32 1, i32* %first391, align 4
  store double 0.000000e+00, double* %minval389, align 8
  store double 0.000000e+00, double* %maxval390, align 8
  br label %while.cond.392

while.cond.392:                                   ; preds = %while.end.460, %sw.bb.386
  %226 = load i32, i32* %nelem, align 4
  %cmp393 = icmp sgt i32 %226, 0
  br i1 %cmp393, label %while.body.395, label %while.end.461

while.body.395:                                   ; preds = %while.cond.392
  %227 = load i32, i32* %bpp, align 4
  %conv396 = sext i32 %227 to i64
  %div397 = udiv i64 4096, %conv396
  %conv398 = trunc i64 %div397 to i32
  store i32 %conv398, i32* %maxelem, align 4
  %228 = load i32, i32* %nelem, align 4
  %229 = load i32, i32* %maxelem, align 4
  %cmp399 = icmp slt i32 %228, %229
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %while.body.395
  %230 = load i32, i32* %nelem, align 4
  store i32 %230, i32* %maxelem, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %while.body.395
  %231 = load i32, i32* %maxelem, align 4
  %232 = load i32, i32* %nelem, align 4
  %sub403 = sub nsw i32 %232, %231
  store i32 %sub403, i32* %nelem, align 4
  %arraydecay404 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  %233 = load i32, i32* %bpp, align 4
  %conv405 = sext i32 %233 to i64
  %234 = load i32, i32* %maxelem, align 4
  %conv406 = sext i32 %234 to i64
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call407 = call i64 @fread(i8* %arraydecay404, i64 %conv405, i64 %conv406, %struct._IO_FILE* %235)
  %236 = load i32, i32* %maxelem, align 4
  %conv408 = sext i32 %236 to i64
  %cmp409 = icmp ne i64 %call407, %conv408
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.402
  call void @fits_set_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.101, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.412:                                       ; preds = %if.end.402
  %arraydecay413 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixdat, i32 0, i32 0
  store i8* %arraydecay413, i8** %ptr388, align 8
  br label %while.cond.414

while.cond.414:                                   ; preds = %if.end.459, %if.end.412
  %237 = load i32, i32* %maxelem, align 4
  %dec415 = add nsw i32 %237, -1
  store i32 %dec415, i32* %maxelem, align 4
  %cmp416 = icmp sgt i32 %237, 0
  br i1 %cmp416, label %while.body.418, label %while.end.460

while.body.418:                                   ; preds = %while.cond.414
  %238 = load i8*, i8** %ptr388, align 8
  %call419 = call i32 @fits_nan_64(i8* %238)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.else.458, label %if.then.421

if.then.421:                                      ; preds = %while.body.418
  %239 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool422 = icmp ne i32 %239, 0
  br i1 %tobool422, label %if.then.423, label %if.else.442

if.then.423:                                      ; preds = %if.then.421
  %240 = load i8*, i8** %ptr388, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %240, i64 7
  %241 = load i8, i8* %arrayidx425, align 1
  %arrayidx426 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 0
  store i8 %241, i8* %arrayidx426, align 1
  %242 = load i8*, i8** %ptr388, align 8
  %arrayidx427 = getelementptr inbounds i8, i8* %242, i64 6
  %243 = load i8, i8* %arrayidx427, align 1
  %arrayidx428 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 1
  store i8 %243, i8* %arrayidx428, align 1
  %244 = load i8*, i8** %ptr388, align 8
  %arrayidx429 = getelementptr inbounds i8, i8* %244, i64 5
  %245 = load i8, i8* %arrayidx429, align 1
  %arrayidx430 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 2
  store i8 %245, i8* %arrayidx430, align 1
  %246 = load i8*, i8** %ptr388, align 8
  %arrayidx431 = getelementptr inbounds i8, i8* %246, i64 4
  %247 = load i8, i8* %arrayidx431, align 1
  %arrayidx432 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 3
  store i8 %247, i8* %arrayidx432, align 1
  %248 = load i8*, i8** %ptr388, align 8
  %arrayidx433 = getelementptr inbounds i8, i8* %248, i64 3
  %249 = load i8, i8* %arrayidx433, align 1
  %arrayidx434 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 4
  store i8 %249, i8* %arrayidx434, align 1
  %250 = load i8*, i8** %ptr388, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %250, i64 2
  %251 = load i8, i8* %arrayidx435, align 1
  %arrayidx436 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 5
  store i8 %251, i8* %arrayidx436, align 1
  %252 = load i8*, i8** %ptr388, align 8
  %arrayidx437 = getelementptr inbounds i8, i8* %252, i64 1
  %253 = load i8, i8* %arrayidx437, align 1
  %arrayidx438 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 6
  store i8 %253, i8* %arrayidx438, align 1
  %254 = load i8*, i8** %ptr388, align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %254, i64 0
  %255 = load i8, i8* %arrayidx439, align 1
  %arrayidx440 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i64 7
  store i8 %255, i8* %arrayidx440, align 1
  %arraydecay441 = getelementptr inbounds [8 x i8], [8 x i8]* %uc424, i32 0, i32 0
  %256 = bitcast i8* %arraydecay441 to double*
  %257 = load double, double* %256, align 8
  store double %257, double* %pixval387, align 8
  br label %if.end.443

if.else.442:                                      ; preds = %if.then.421
  %258 = load i8*, i8** %ptr388, align 8
  %259 = bitcast i8* %258 to double*
  %260 = load double, double* %259, align 8
  store double %260, double* %pixval387, align 8
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.442, %if.then.423
  %261 = load i8*, i8** %ptr388, align 8
  %add.ptr444 = getelementptr inbounds i8, i8* %261, i64 8
  store i8* %add.ptr444, i8** %ptr388, align 8
  %262 = load i32, i32* %first391, align 4
  %tobool445 = icmp ne i32 %262, 0
  br i1 %tobool445, label %if.then.446, label %if.else.447

if.then.446:                                      ; preds = %if.end.443
  store i32 0, i32* %first391, align 4
  %263 = load double, double* %pixval387, align 8
  store double %263, double* %maxval390, align 8
  store double %263, double* %minval389, align 8
  br label %if.end.457

if.else.447:                                      ; preds = %if.end.443
  %264 = load double, double* %pixval387, align 8
  %265 = load double, double* %minval389, align 8
  %cmp448 = fcmp olt double %264, %265
  br i1 %cmp448, label %if.then.450, label %if.else.451

if.then.450:                                      ; preds = %if.else.447
  %266 = load double, double* %pixval387, align 8
  store double %266, double* %minval389, align 8
  br label %if.end.456

if.else.451:                                      ; preds = %if.else.447
  %267 = load double, double* %pixval387, align 8
  %268 = load double, double* %maxval390, align 8
  %cmp452 = fcmp ogt double %267, %268
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.else.451
  %269 = load double, double* %pixval387, align 8
  store double %269, double* %maxval390, align 8
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %if.else.451
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %if.then.450
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.then.446
  br label %if.end.459

if.else.458:                                      ; preds = %while.body.418
  store i32 1, i32* %nan_found, align 4
  br label %if.end.459

if.end.459:                                       ; preds = %if.else.458, %if.end.457
  br label %while.cond.414

while.end.460:                                    ; preds = %while.cond.414
  br label %while.cond.392

while.end.461:                                    ; preds = %while.cond.392
  %270 = load double, double* %minval389, align 8
  %271 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmin462 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %271, i32 0, i32 9
  store double %270, double* %pixmin462, align 8
  %272 = load double, double* %maxval390, align 8
  %273 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %pixmax463 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %273, i32 0, i32 10
  store double %272, double* %pixmax463, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %while.end.461, %while.end.381, %while.end.272, %while.end.165, %while.end.69
  %274 = load i32, i32* %nan_found, align 4
  %tobool464 = icmp ne i32 %274, 0
  br i1 %tobool464, label %if.then.465, label %if.end.467

if.then.465:                                      ; preds = %sw.epilog
  %275 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %used466 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %275, i32 0, i32 8
  %nan_value = getelementptr inbounds %struct.anon, %struct.anon* %used466, i32 0, i32 0
  store i8 1, i8* %nan_value, align 1
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.465, %sw.epilog
  %276 = load i32, i32* %blank_found, align 4
  %tobool468 = icmp ne i32 %276, 0
  br i1 %tobool468, label %if.then.469, label %if.end.471

if.then.469:                                      ; preds = %if.end.467
  %277 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu.addr, align 8
  %used470 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %277, i32 0, i32 8
  %blank_value = getelementptr inbounds %struct.anon, %struct.anon* %used470, i32 0, i32 1
  store i8 1, i8* %blank_value, align 1
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.469, %if.end.467
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.471, %if.then.411, %if.then.301, %if.then.194, %if.then.96, %if.then.18, %if.then
  %278 = load i32, i32* %retval
  ret i32 %278
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind uwtable
define void @fits_close(%struct.FITS_FILE* %ff) #0 {
entry:
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %cmp = icmp eq %struct.FITS_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %2)
  %3 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  call void @fits_delete_filestruct(%struct.FITS_FILE* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fits_delete_filestruct(%struct.FITS_FILE* %ff) #0 {
entry:
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %cmp = icmp eq %struct.FITS_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %1, i32 0, i32 6
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu_list, align 8
  call void @fits_delete_hdulist(%struct.fits_hdu_list* %2)
  %3 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list1 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %3, i32 0, i32 6
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %hdu_list1, align 8
  %4 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %4, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %5 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %6 = bitcast %struct.FITS_FILE* %5 to i8*
  call void @free(i8* %6) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.fits_hdu_list* @fits_add_hdu(%struct.FITS_FILE* %ff) #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  %newhdu = alloca %struct.fits_hdu_list*, align 8
  %hdu = alloca %struct.fits_hdu_list*, align 8
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %openmode = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %0, i32 0, i32 1
  %1 = load i8, i8* %openmode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 119
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.fits_hdu_list* @fits_new_hdulist()
  store %struct.fits_hdu_list* %call, %struct.fits_hdu_list** %newhdu, align 8
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %newhdu, align 8
  %cmp2 = icmp eq %struct.fits_hdu_list* %2, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %3, i32 0, i32 6
  %4 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu_list, align 8
  %cmp6 = icmp eq %struct.fits_hdu_list* %4, null
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %newhdu, align 8
  %6 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list9 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %6, i32 0, i32 6
  store %struct.fits_hdu_list* %5, %struct.fits_hdu_list** %hdu_list9, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.5
  %7 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list10 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %7, i32 0, i32 6
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu_list10, align 8
  store %struct.fits_hdu_list* %8, %struct.fits_hdu_list** %hdu, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %next_hdu = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 25
  %10 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %next_hdu, align 8
  %cmp11 = icmp ne %struct.fits_hdu_list* %10, null
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %next_hdu13 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %11, i32 0, i32 25
  %12 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %next_hdu13, align 8
  store %struct.fits_hdu_list* %12, %struct.fits_hdu_list** %hdu, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %newhdu, align 8
  %14 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %next_hdu14 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %14, i32 0, i32 25
  store %struct.fits_hdu_list* %13, %struct.fits_hdu_list** %next_hdu14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.then.8
  %15 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %newhdu, align 8
  store %struct.fits_hdu_list* %15, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.4, %if.then
  %16 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %16
}

; Function Attrs: nounwind uwtable
define internal %struct.fits_hdu_list* @fits_new_hdulist() #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %hdl = alloca %struct.fits_hdu_list*, align 8
  %call = call noalias i8* @malloc(i64 14488) #4
  %0 = bitcast i8* %call to %struct.fits_hdu_list*
  store %struct.fits_hdu_list* %0, %struct.fits_hdu_list** %hdl, align 8
  %1 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %3 = bitcast %struct.fits_hdu_list* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 14488, i32 1, i1 false)
  %4 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %datamax = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %4, i32 0, i32 16
  store double 0.000000e+00, double* %datamax, align 8
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %datamin = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 15
  store double 0.000000e+00, double* %datamin, align 8
  %6 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %pixmax = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %6, i32 0, i32 10
  store double 0.000000e+00, double* %pixmax, align 8
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %pixmin = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 9
  store double 0.000000e+00, double* %pixmin, align 8
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %bscale = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %8, i32 0, i32 21
  store double 0.000000e+00, double* %bscale, align 8
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  %bzero = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 20
  store double 0.000000e+00, double* %bzero, align 8
  %10 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdl, align 8
  store %struct.fits_hdu_list* %10, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %11
}

; Function Attrs: nounwind uwtable
define i32 @fits_add_card(%struct.fits_hdu_list* %hdulist, i8* %card) #0 {
entry:
  %retval = alloca i32, align 4
  %hdulist.addr = alloca %struct.fits_hdu_list*, align 8
  %card.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store %struct.fits_hdu_list* %hdulist, %struct.fits_hdu_list** %hdulist.addr, align 8
  store i8* %card, i8** %card.addr, align 8
  %0 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %0, i32 0, i32 6
  %1 = load i32, i32* %naddcards, align 4
  %cmp = icmp sge i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %card.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %3 = load i32, i32* %k, align 4
  %cmp1 = icmp slt i32 %3, 80
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards4 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 6
  %6 = load i32, i32* %naddcards4, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %addcards = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 7
  %arrayidx = getelementptr inbounds [128 x [80 x i8]], [128 x [80 x i8]]* %addcards, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %k, align 4
  %sub = sub nsw i32 80, %8
  %conv7 = sext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx6, i8 32, i64 %conv7, i32 1, i1 false)
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards8 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 6
  %10 = load i32, i32* %naddcards8, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %naddcards8, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %addcards10 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %11, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [128 x [80 x i8]], [128 x [80 x i8]]* %addcards10, i32 0, i64 %idxprom9
  %12 = bitcast [80 x i8]* %arrayidx11 to i8*
  %13 = load i8*, i8** %card.addr, align 8
  %14 = load i32, i32* %k, align 4
  %conv12 = sext i32 %14 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %conv12, i32 1, i1 false)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %15 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards13 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %15, i32 0, i32 6
  %16 = load i32, i32* %naddcards13, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %naddcards13, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %addcards16 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %17, i32 0, i32 7
  %arrayidx17 = getelementptr inbounds [128 x [80 x i8]], [128 x [80 x i8]]* %addcards16, i32 0, i64 %idxprom15
  %18 = bitcast [80 x i8]* %arrayidx17 to i8*
  %19 = load i8*, i8** %card.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 80, i32 1, i1 false)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @fits_print_header(%struct.fits_hdu_list* %hdr) #0 {
entry:
  %hdr.addr = alloca %struct.fits_hdu_list*, align 8
  %k = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  store %struct.fits_hdu_list* %hdr, %struct.fits_hdu_list** %hdr.addr, align 8
  %0 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %0, i32 0, i32 8
  %simple = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 5
  %1 = load i8, i8* %simple, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %xtension = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %2, i32 0, i32 17
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %xtension, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %header_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 0
  %4 = load i64, i64* %header_offset, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i64 %4)
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %data_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 1
  %6 = load i64, i64* %data_offset, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i64 %6)
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %data_size = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 2
  %8 = load i64, i64* %data_size, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i64 %8)
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %udata_size = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 3
  %10 = load i64, i64* %udata_size, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i64 %10)
  %11 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %bpp = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %11, i32 0, i32 4
  %12 = load i32, i32* %bpp, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 %12)
  %arraydecay7 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %13 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %pixmin = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %13, i32 0, i32 9
  %14 = load double, double* %pixmin, align 8
  %call8 = call i8* @g_ascii_dtostr(i8* %arraydecay7, i32 39, double %14)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call8)
  %arraydecay10 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %15 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %pixmax = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %15, i32 0, i32 10
  %16 = load double, double* %pixmax, align 8
  %call11 = call i8* @g_ascii_dtostr(i8* %arraydecay10, i32 39, double %16)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call11)
  %17 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %naxis = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %17, i32 0, i32 11
  %18 = load i32, i32* %naxis, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 %18)
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %k, align 4
  %20 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %naxis14 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %20, i32 0, i32 11
  %21 = load i32, i32* %naxis14, align 4
  %cmp = icmp sle i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom = sext i32 %sub to i64
  %24 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %naxisn = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %24, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i32 %22, i32 %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %27, i32 0, i32 13
  %28 = load i32, i32* %bitpix, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 %28)
  %29 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used17 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %29, i32 0, i32 8
  %blank = getelementptr inbounds %struct.anon, %struct.anon* %used17, i32 0, i32 2
  %30 = load i8, i8* %blank, align 1
  %tobool18 = icmp ne i8 %30, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %for.end
  %31 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %blank20 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %31, i32 0, i32 14
  %32 = load i64, i64* %blank20, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i64 %32)
  br label %if.end.24

if.else.22:                                       ; preds = %for.end
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.19
  %33 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used25 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %33, i32 0, i32 8
  %datamin = getelementptr inbounds %struct.anon, %struct.anon* %used25, i32 0, i32 3
  %34 = load i8, i8* %datamin, align 1
  %tobool26 = icmp ne i8 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.end.24
  %arraydecay28 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %35 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %datamin29 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %35, i32 0, i32 15
  %36 = load double, double* %datamin29, align 8
  %call30 = call i8* @g_ascii_dtostr(i8* %arraydecay28, i32 39, double %36)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call30)
  br label %if.end.34

if.else.32:                                       ; preds = %if.end.24
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.27
  %37 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used35 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %37, i32 0, i32 8
  %datamax = getelementptr inbounds %struct.anon, %struct.anon* %used35, i32 0, i32 4
  %38 = load i8, i8* %datamax, align 1
  %tobool36 = icmp ne i8 %38, 0
  br i1 %tobool36, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.end.34
  %arraydecay38 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %39 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %datamax39 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %39, i32 0, i32 16
  %40 = load double, double* %datamax39, align 8
  %call40 = call i8* @g_ascii_dtostr(i8* %arraydecay38, i32 39, double %40)
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call40)
  br label %if.end.44

if.else.42:                                       ; preds = %if.end.34
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.37
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used45 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %41, i32 0, i32 8
  %gcount = getelementptr inbounds %struct.anon, %struct.anon* %used45, i32 0, i32 7
  %42 = load i8, i8* %gcount, align 1
  %tobool46 = icmp ne i8 %42, 0
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.end.44
  %43 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %gcount48 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %43, i32 0, i32 18
  %44 = load i64, i64* %gcount48, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i64 %44)
  br label %if.end.52

if.else.50:                                       ; preds = %if.end.44
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.47
  %45 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used53 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %45, i32 0, i32 8
  %pcount = getelementptr inbounds %struct.anon, %struct.anon* %used53, i32 0, i32 8
  %46 = load i8, i8* %pcount, align 1
  %tobool54 = icmp ne i8 %46, 0
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.52
  %47 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %pcount56 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %47, i32 0, i32 19
  %48 = load i64, i64* %pcount56, align 8
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i64 %48)
  br label %if.end.60

if.else.58:                                       ; preds = %if.end.52
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.55
  %49 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used61 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %49, i32 0, i32 8
  %bscale = getelementptr inbounds %struct.anon, %struct.anon* %used61, i32 0, i32 10
  %50 = load i8, i8* %bscale, align 1
  %tobool62 = icmp ne i8 %50, 0
  br i1 %tobool62, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.end.60
  %arraydecay64 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %51 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %bscale65 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %51, i32 0, i32 21
  %52 = load double, double* %bscale65, align 8
  %call66 = call i8* @g_ascii_dtostr(i8* %arraydecay64, i32 39, double %52)
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call66)
  br label %if.end.70

if.else.68:                                       ; preds = %if.end.60
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.63
  %53 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %used71 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %53, i32 0, i32 8
  %bzero = getelementptr inbounds %struct.anon, %struct.anon* %used71, i32 0, i32 9
  %54 = load i8, i8* %bzero, align 1
  %tobool72 = icmp ne i8 %54, 0
  br i1 %tobool72, label %if.then.73, label %if.else.78

if.then.73:                                       ; preds = %if.end.70
  %arraydecay74 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %55 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdr.addr, align 8
  %bzero75 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %55, i32 0, i32 20
  %56 = load double, double* %bzero75, align 8
  %call76 = call i8* @g_ascii_dtostr(i8* %arraydecay74, i32 39, double %56)
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* %call76)
  br label %if.end.80

if.else.78:                                       ; preds = %if.end.70
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.73
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i8* @g_ascii_dtostr(i8*, i32, double) #3

; Function Attrs: nounwind uwtable
define i32 @fits_write_header(%struct.FITS_FILE* %ff, %struct.fits_hdu_list* %hdulist) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  %hdulist.addr = alloca %struct.fits_hdu_list*, align 8
  %numcards = alloca i32, align 4
  %k = alloca i32, align 4
  %card = alloca [81 x i8], align 16
  %card8 = alloca [81 x i8], align 16
  %k9 = alloca i32, align 4
  %card34 = alloca [81 x i8], align 16
  %card42 = alloca [81 x i8], align 16
  %naxisn = alloca [10 x i8], align 1
  %card58 = alloca [81 x i8], align 16
  %card76 = alloca [81 x i8], align 16
  %card89 = alloca [81 x i8], align 16
  %card103 = alloca [81 x i8], align 16
  %card115 = alloca [81 x i8], align 16
  %card127 = alloca [81 x i8], align 16
  %dbl = alloca [21 x i8], align 16
  %istr = alloca i8*, align 8
  %card147 = alloca [81 x i8], align 16
  %dbl148 = alloca [21 x i8], align 16
  %istr149 = alloca i8*, align 8
  %card169 = alloca [81 x i8], align 16
  %dbl170 = alloca [21 x i8], align 16
  %istr171 = alloca i8*, align 8
  %card191 = alloca [81 x i8], align 16
  %dbl192 = alloca [21 x i8], align 16
  %istr193 = alloca i8*, align 8
  %card213 = alloca [81 x i8], align 16
  %card233 = alloca [81 x i8], align 16
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  store %struct.fits_hdu_list* %hdulist, %struct.fits_hdu_list** %hdulist.addr, align 8
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %openmode = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %0, i32 0, i32 1
  %1 = load i8, i8* %openmode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 119
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %numcards, align 4
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %2, i32 0, i32 8
  %simple = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 5
  %3 = load i8, i8* %simple, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [81 x i8], [81 x i8]* %card, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay3 = getelementptr inbounds [81 x i8], [81 x i8]* %card, i32 0, i32 0
  %4 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i64 @fwrite(i8* %arraydecay3, i64 1, i64 80, %struct._IO_FILE* %5)
  %6 = load i32, i32* %numcards, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %numcards, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used5 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 8
  %xtension = getelementptr inbounds %struct.anon, %struct.anon* %used5, i32 0, i32 6
  %8 = load i8, i8* %xtension, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.then.7, label %if.end.32

if.then.7:                                        ; preds = %if.else
  %arraydecay10 = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i32 0
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %xtension11 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 17
  %arraydecay12 = getelementptr inbounds [80 x i8], [80 x i8]* %xtension11, i32 0, i32 0
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay12) #4
  %arraydecay14 = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i32 0
  %call15 = call i64 @strlen(i8* %arraydecay14) #6
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %k9, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %10 = load i32, i32* %k9, align 4
  %cmp17 = icmp slt i32 %10, 81
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k9, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %k9, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, i32* %k9, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 8, i32* %k9, align 4
  %13 = load i32, i32* %k9, align 4
  %cmp20 = icmp slt i32 %13, 8
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %for.end
  %arrayidx23 = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i64 19
  store i8 39, i8* %arrayidx23, align 1
  br label %if.end.27

if.else.24:                                       ; preds = %for.end
  %14 = load i32, i32* %k9, align 4
  %add = add nsw i32 11, %14
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i64 %idxprom25
  store i8 39, i8* %arrayidx26, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.22
  %arraydecay28 = getelementptr inbounds [81 x i8], [81 x i8]* %card8, i32 0, i32 0
  %15 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp29 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %15, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp29, align 8
  %call30 = call i64 @fwrite(i8* %arraydecay28, i64 1, i64 80, %struct._IO_FILE* %16)
  %17 = load i32, i32* %numcards, align 4
  %inc31 = add nsw i32 %17, 1
  store i32 %inc31, i32* %numcards, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.27, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.2
  %arraydecay35 = getelementptr inbounds [81 x i8], [81 x i8]* %card34, i32 0, i32 0
  %18 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %18, i32 0, i32 13
  %19 = load i32, i32* %bitpix, align 4
  %conv36 = sext i32 %19 to i64
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 %conv36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay38 = getelementptr inbounds [81 x i8], [81 x i8]* %card34, i32 0, i32 0
  %20 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp39 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %20, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp39, align 8
  %call40 = call i64 @fwrite(i8* %arraydecay38, i64 1, i64 80, %struct._IO_FILE* %21)
  %22 = load i32, i32* %numcards, align 4
  %inc41 = add nsw i32 %22, 1
  store i32 %inc41, i32* %numcards, align 4
  %arraydecay43 = getelementptr inbounds [81 x i8], [81 x i8]* %card42, i32 0, i32 0
  %23 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naxis = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %23, i32 0, i32 11
  %24 = load i32, i32* %naxis, align 4
  %conv44 = sext i32 %24 to i64
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i64 %conv44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay46 = getelementptr inbounds [81 x i8], [81 x i8]* %card42, i32 0, i32 0
  %25 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp47 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %25, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp47, align 8
  %call48 = call i64 @fwrite(i8* %arraydecay46, i64 1, i64 80, %struct._IO_FILE* %26)
  %27 = load i32, i32* %numcards, align 4
  %inc49 = add nsw i32 %27, 1
  store i32 %inc49, i32* %numcards, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.70, %if.end.33
  %28 = load i32, i32* %k, align 4
  %29 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naxis51 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %29, i32 0, i32 11
  %30 = load i32, i32* %naxis51, align 4
  %cmp52 = icmp slt i32 %28, %30
  br i1 %cmp52, label %for.body.54, label %for.end.72

for.body.54:                                      ; preds = %for.cond.50
  %arraydecay55 = getelementptr inbounds [10 x i8], [10 x i8]* %naxisn, i32 0, i32 0
  %31 = load i32, i32* %k, align 4
  %add56 = add nsw i32 %31, 1
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 %add56) #4
  %arraydecay59 = getelementptr inbounds [81 x i8], [81 x i8]* %card58, i32 0, i32 0
  %arraydecay60 = getelementptr inbounds [10 x i8], [10 x i8]* %naxisn, i32 0, i32 0
  %32 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %32 to i64
  %33 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naxisn62 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %33, i32 0, i32 12
  %arrayidx63 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn62, i32 0, i64 %idxprom61
  %34 = load i32, i32* %arrayidx63, align 4
  %conv64 = sext i32 %34 to i64
  %call65 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay60, i64 %conv64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay66 = getelementptr inbounds [81 x i8], [81 x i8]* %card58, i32 0, i32 0
  %35 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp67 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %35, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp67, align 8
  %call68 = call i64 @fwrite(i8* %arraydecay66, i64 1, i64 80, %struct._IO_FILE* %36)
  %37 = load i32, i32* %numcards, align 4
  %inc69 = add nsw i32 %37, 1
  store i32 %inc69, i32* %numcards, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.54
  %38 = load i32, i32* %k, align 4
  %inc71 = add nsw i32 %38, 1
  store i32 %inc71, i32* %k, align 4
  br label %for.cond.50

for.end.72:                                       ; preds = %for.cond.50
  %39 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used73 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %39, i32 0, i32 8
  %extend = getelementptr inbounds %struct.anon, %struct.anon* %used73, i32 0, i32 12
  %40 = load i8, i8* %extend, align 1
  %tobool74 = icmp ne i8 %40, 0
  br i1 %tobool74, label %if.then.75, label %if.end.85

if.then.75:                                       ; preds = %for.end.72
  %arraydecay77 = getelementptr inbounds [81 x i8], [81 x i8]* %card76, i32 0, i32 0
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %extend78 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %41, i32 0, i32 23
  %42 = load i32, i32* %extend78, align 4
  %tobool79 = icmp ne i32 %42, 0
  %cond = select i1 %tobool79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)
  %call80 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay81 = getelementptr inbounds [81 x i8], [81 x i8]* %card76, i32 0, i32 0
  %43 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp82 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %43, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp82, align 8
  %call83 = call i64 @fwrite(i8* %arraydecay81, i64 1, i64 80, %struct._IO_FILE* %44)
  %45 = load i32, i32* %numcards, align 4
  %inc84 = add nsw i32 %45, 1
  store i32 %inc84, i32* %numcards, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.75, %for.end.72
  %46 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used86 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %46, i32 0, i32 8
  %groups = getelementptr inbounds %struct.anon, %struct.anon* %used86, i32 0, i32 11
  %47 = load i8, i8* %groups, align 1
  %tobool87 = icmp ne i8 %47, 0
  br i1 %tobool87, label %if.then.88, label %if.end.99

if.then.88:                                       ; preds = %if.end.85
  %arraydecay90 = getelementptr inbounds [81 x i8], [81 x i8]* %card89, i32 0, i32 0
  %48 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %groups91 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %48, i32 0, i32 22
  %49 = load i32, i32* %groups91, align 4
  %tobool92 = icmp ne i32 %49, 0
  %cond93 = select i1 %tobool92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)
  %call94 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %cond93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay95 = getelementptr inbounds [81 x i8], [81 x i8]* %card89, i32 0, i32 0
  %50 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp96 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %50, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp96, align 8
  %call97 = call i64 @fwrite(i8* %arraydecay95, i64 1, i64 80, %struct._IO_FILE* %51)
  %52 = load i32, i32* %numcards, align 4
  %inc98 = add nsw i32 %52, 1
  store i32 %inc98, i32* %numcards, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.88, %if.end.85
  %53 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used100 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %53, i32 0, i32 8
  %pcount = getelementptr inbounds %struct.anon, %struct.anon* %used100, i32 0, i32 8
  %54 = load i8, i8* %pcount, align 1
  %tobool101 = icmp ne i8 %54, 0
  br i1 %tobool101, label %if.then.102, label %if.end.111

if.then.102:                                      ; preds = %if.end.99
  %arraydecay104 = getelementptr inbounds [81 x i8], [81 x i8]* %card103, i32 0, i32 0
  %55 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %pcount105 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %55, i32 0, i32 19
  %56 = load i64, i64* %pcount105, align 8
  %call106 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i64 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay107 = getelementptr inbounds [81 x i8], [81 x i8]* %card103, i32 0, i32 0
  %57 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp108 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %57, i32 0, i32 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp108, align 8
  %call109 = call i64 @fwrite(i8* %arraydecay107, i64 1, i64 80, %struct._IO_FILE* %58)
  %59 = load i32, i32* %numcards, align 4
  %inc110 = add nsw i32 %59, 1
  store i32 %inc110, i32* %numcards, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.102, %if.end.99
  %60 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used112 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %60, i32 0, i32 8
  %gcount = getelementptr inbounds %struct.anon, %struct.anon* %used112, i32 0, i32 7
  %61 = load i8, i8* %gcount, align 1
  %tobool113 = icmp ne i8 %61, 0
  br i1 %tobool113, label %if.then.114, label %if.end.123

if.then.114:                                      ; preds = %if.end.111
  %arraydecay116 = getelementptr inbounds [81 x i8], [81 x i8]* %card115, i32 0, i32 0
  %62 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %gcount117 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %62, i32 0, i32 18
  %63 = load i64, i64* %gcount117, align 8
  %call118 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i64 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay119 = getelementptr inbounds [81 x i8], [81 x i8]* %card115, i32 0, i32 0
  %64 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp120 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %64, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp120, align 8
  %call121 = call i64 @fwrite(i8* %arraydecay119, i64 1, i64 80, %struct._IO_FILE* %65)
  %66 = load i32, i32* %numcards, align 4
  %inc122 = add nsw i32 %66, 1
  store i32 %inc122, i32* %numcards, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.114, %if.end.111
  %67 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used124 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %67, i32 0, i32 8
  %bzero = getelementptr inbounds %struct.anon, %struct.anon* %used124, i32 0, i32 9
  %68 = load i8, i8* %bzero, align 1
  %tobool125 = icmp ne i8 %68, 0
  br i1 %tobool125, label %if.then.126, label %if.end.143

if.then.126:                                      ; preds = %if.end.123
  %arraydecay128 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl, i32 0, i32 0
  %69 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bzero129 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %69, i32 0, i32 20
  %70 = load double, double* %bzero129, align 8
  %call130 = call i8* @g_ascii_formatd(i8* %arraydecay128, i32 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %70)
  %arraydecay131 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl, i32 0, i32 0
  %call132 = call i8* @strstr(i8* %arraydecay131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call132, i8** %istr, align 8
  %71 = load i8*, i8** %istr, align 8
  %tobool133 = icmp ne i8* %71, null
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.126
  %72 = load i8*, i8** %istr, align 8
  store i8 69, i8* %72, align 1
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.then.126
  %arraydecay136 = getelementptr inbounds [81 x i8], [81 x i8]* %card127, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl, i32 0, i32 0
  %call138 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay139 = getelementptr inbounds [81 x i8], [81 x i8]* %card127, i32 0, i32 0
  %73 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp140 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %73, i32 0, i32 0
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp140, align 8
  %call141 = call i64 @fwrite(i8* %arraydecay139, i64 1, i64 80, %struct._IO_FILE* %74)
  %75 = load i32, i32* %numcards, align 4
  %inc142 = add nsw i32 %75, 1
  store i32 %inc142, i32* %numcards, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.135, %if.end.123
  %76 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used144 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %76, i32 0, i32 8
  %bscale = getelementptr inbounds %struct.anon, %struct.anon* %used144, i32 0, i32 10
  %77 = load i8, i8* %bscale, align 1
  %tobool145 = icmp ne i8 %77, 0
  br i1 %tobool145, label %if.then.146, label %if.end.165

if.then.146:                                      ; preds = %if.end.143
  %arraydecay150 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl148, i32 0, i32 0
  %78 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bscale151 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %78, i32 0, i32 21
  %79 = load double, double* %bscale151, align 8
  %call152 = call i8* @g_ascii_formatd(i8* %arraydecay150, i32 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %79)
  %arraydecay153 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl148, i32 0, i32 0
  %call154 = call i8* @strstr(i8* %arraydecay153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call154, i8** %istr149, align 8
  %80 = load i8*, i8** %istr149, align 8
  %tobool155 = icmp ne i8* %80, null
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.then.146
  %81 = load i8*, i8** %istr149, align 8
  store i8 69, i8* %81, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.then.146
  %arraydecay158 = getelementptr inbounds [81 x i8], [81 x i8]* %card147, i32 0, i32 0
  %arraydecay159 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl148, i32 0, i32 0
  %call160 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay161 = getelementptr inbounds [81 x i8], [81 x i8]* %card147, i32 0, i32 0
  %82 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp162 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %82, i32 0, i32 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp162, align 8
  %call163 = call i64 @fwrite(i8* %arraydecay161, i64 1, i64 80, %struct._IO_FILE* %83)
  %84 = load i32, i32* %numcards, align 4
  %inc164 = add nsw i32 %84, 1
  store i32 %inc164, i32* %numcards, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.157, %if.end.143
  %85 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used166 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %85, i32 0, i32 8
  %datamin = getelementptr inbounds %struct.anon, %struct.anon* %used166, i32 0, i32 3
  %86 = load i8, i8* %datamin, align 1
  %tobool167 = icmp ne i8 %86, 0
  br i1 %tobool167, label %if.then.168, label %if.end.187

if.then.168:                                      ; preds = %if.end.165
  %arraydecay172 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl170, i32 0, i32 0
  %87 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %datamin173 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %87, i32 0, i32 15
  %88 = load double, double* %datamin173, align 8
  %call174 = call i8* @g_ascii_formatd(i8* %arraydecay172, i32 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %88)
  %arraydecay175 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl170, i32 0, i32 0
  %call176 = call i8* @strstr(i8* %arraydecay175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call176, i8** %istr171, align 8
  %89 = load i8*, i8** %istr171, align 8
  %tobool177 = icmp ne i8* %89, null
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.168
  %90 = load i8*, i8** %istr171, align 8
  store i8 69, i8* %90, align 1
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.then.168
  %arraydecay180 = getelementptr inbounds [81 x i8], [81 x i8]* %card169, i32 0, i32 0
  %arraydecay181 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl170, i32 0, i32 0
  %call182 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay183 = getelementptr inbounds [81 x i8], [81 x i8]* %card169, i32 0, i32 0
  %91 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp184 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %91, i32 0, i32 0
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp184, align 8
  %call185 = call i64 @fwrite(i8* %arraydecay183, i64 1, i64 80, %struct._IO_FILE* %92)
  %93 = load i32, i32* %numcards, align 4
  %inc186 = add nsw i32 %93, 1
  store i32 %inc186, i32* %numcards, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.179, %if.end.165
  %94 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used188 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %94, i32 0, i32 8
  %datamax = getelementptr inbounds %struct.anon, %struct.anon* %used188, i32 0, i32 4
  %95 = load i8, i8* %datamax, align 1
  %tobool189 = icmp ne i8 %95, 0
  br i1 %tobool189, label %if.then.190, label %if.end.209

if.then.190:                                      ; preds = %if.end.187
  %arraydecay194 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl192, i32 0, i32 0
  %96 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %datamax195 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %96, i32 0, i32 16
  %97 = load double, double* %datamax195, align 8
  %call196 = call i8* @g_ascii_formatd(i8* %arraydecay194, i32 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %97)
  %arraydecay197 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl192, i32 0, i32 0
  %call198 = call i8* @strstr(i8* %arraydecay197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call198, i8** %istr193, align 8
  %98 = load i8*, i8** %istr193, align 8
  %tobool199 = icmp ne i8* %98, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.then.190
  %99 = load i8*, i8** %istr193, align 8
  store i8 69, i8* %99, align 1
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.then.190
  %arraydecay202 = getelementptr inbounds [81 x i8], [81 x i8]* %card191, i32 0, i32 0
  %arraydecay203 = getelementptr inbounds [21 x i8], [21 x i8]* %dbl192, i32 0, i32 0
  %call204 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* %arraydecay203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay205 = getelementptr inbounds [81 x i8], [81 x i8]* %card191, i32 0, i32 0
  %100 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp206 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %100, i32 0, i32 0
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp206, align 8
  %call207 = call i64 @fwrite(i8* %arraydecay205, i64 1, i64 80, %struct._IO_FILE* %101)
  %102 = load i32, i32* %numcards, align 4
  %inc208 = add nsw i32 %102, 1
  store i32 %inc208, i32* %numcards, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.201, %if.end.187
  %103 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used210 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %103, i32 0, i32 8
  %blank = getelementptr inbounds %struct.anon, %struct.anon* %used210, i32 0, i32 2
  %104 = load i8, i8* %blank, align 1
  %tobool211 = icmp ne i8 %104, 0
  br i1 %tobool211, label %if.then.212, label %if.end.221

if.then.212:                                      ; preds = %if.end.209
  %arraydecay214 = getelementptr inbounds [81 x i8], [81 x i8]* %card213, i32 0, i32 0
  %105 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %blank215 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %105, i32 0, i32 14
  %106 = load i64, i64* %blank215, align 8
  %call216 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay214, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i64 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #4
  %arraydecay217 = getelementptr inbounds [81 x i8], [81 x i8]* %card213, i32 0, i32 0
  %107 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp218 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %107, i32 0, i32 0
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp218, align 8
  %call219 = call i64 @fwrite(i8* %arraydecay217, i64 1, i64 80, %struct._IO_FILE* %108)
  %109 = load i32, i32* %numcards, align 4
  %inc220 = add nsw i32 %109, 1
  store i32 %inc220, i32* %numcards, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.212, %if.end.209
  %110 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %110, i32 0, i32 6
  %111 = load i32, i32* %naddcards, align 4
  %cmp222 = icmp sgt i32 %111, 0
  br i1 %cmp222, label %if.then.224, label %if.end.232

if.then.224:                                      ; preds = %if.end.221
  %112 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %addcards = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %112, i32 0, i32 7
  %arraydecay225 = getelementptr inbounds [128 x [80 x i8]], [128 x [80 x i8]]* %addcards, i32 0, i32 0
  %113 = bitcast [80 x i8]* %arraydecay225 to i8*
  %114 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards226 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %114, i32 0, i32 6
  %115 = load i32, i32* %naddcards226, align 4
  %conv227 = sext i32 %115 to i64
  %116 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp228 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %116, i32 0, i32 0
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp228, align 8
  %call229 = call i64 @fwrite(i8* %113, i64 80, i64 %conv227, %struct._IO_FILE* %117)
  %118 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %naddcards230 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %118, i32 0, i32 6
  %119 = load i32, i32* %naddcards230, align 4
  %120 = load i32, i32* %numcards, align 4
  %add231 = add nsw i32 %120, %119
  store i32 %add231, i32* %numcards, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.224, %if.end.221
  %arraydecay234 = getelementptr inbounds [81 x i8], [81 x i8]* %card233, i32 0, i32 0
  %call235 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0)) #4
  %arraydecay236 = getelementptr inbounds [81 x i8], [81 x i8]* %card233, i32 0, i32 0
  %121 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp237 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %121, i32 0, i32 0
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp237, align 8
  %call238 = call i64 @fwrite(i8* %arraydecay236, i64 1, i64 80, %struct._IO_FILE* %122)
  %123 = load i32, i32* %numcards, align 4
  %inc239 = add nsw i32 %123, 1
  store i32 %inc239, i32* %numcards, align 4
  %124 = load i32, i32* %numcards, align 4
  %mul = mul nsw i32 %124, 80
  %rem = srem i32 %mul, 2880
  store i32 %rem, i32* %k, align 4
  %125 = load i32, i32* %k, align 4
  %tobool240 = icmp ne i32 %125, 0
  br i1 %tobool240, label %if.then.241, label %if.end.247

if.then.241:                                      ; preds = %if.end.232
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.241
  %126 = load i32, i32* %k, align 4
  %inc242 = add nsw i32 %126, 1
  store i32 %inc242, i32* %k, align 4
  %cmp243 = icmp slt i32 %126, 2880
  br i1 %cmp243, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %127 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp245 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %127, i32 0, i32 0
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp245, align 8
  %call246 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %128)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.247

if.end.247:                                       ; preds = %while.end, %if.end.232
  %129 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp248 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %129, i32 0, i32 0
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp248, align 8
  %call249 = call i32 @ferror(%struct._IO_FILE* %130) #4
  %tobool250 = icmp ne i32 %call249, 0
  %cond251 = select i1 %tobool250, i32 -1, i32 0
  store i32 %cond251, i32* %retval
  br label %return

return:                                           ; preds = %if.end.247, %if.then
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %union.FITS_DATA* @fits_decode_card(i8* %card, i32 %data_type) #0 {
entry:
  %retval = alloca %union.FITS_DATA*, align 8
  %card.addr = alloca i8*, align 8
  %data_type.addr = alloca i32, align 4
  %l_long = alloca i64, align 8
  %l_double = alloca double, align 8
  %l_card = alloca [81 x i8], align 16
  %msg = alloca [256 x i8], align 16
  %cp = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %end = alloca i8*, align 8
  %ErrCount = alloca i32, align 4
  store i8* %card, i8** %card.addr, align 8
  store i32 %data_type, i32* %data_type.addr, align 4
  store i32 0, i32* %ErrCount, align 4
  %0 = load i8*, i8** %card.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.FITS_DATA* null, %union.FITS_DATA** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast [81 x i8]* %l_card to i8*
  %2 = load i8*, i8** %card.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 80, i32 1, i1 false)
  %arrayidx = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i64 80
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %card.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8
  %call = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i64 2) #6
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.63, i32 0, i32 0), i8* %arraydecay3) #4
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i32 0
  call void @fits_set_error(i8* %arraydecay5)
  %4 = load i32, i32* %ErrCount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %ErrCount, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %data_type.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.35
    i32 5, label %sw.bb.44
    i32 6, label %sw.bb.62
    i32 7, label %sw.bb.71
    i32 8, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %if.end.6
  %arrayidx7 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i64 10
  %6 = load i8, i8* %arrayidx7, align 1
  store i8 %6, i8* bitcast (%union.FITS_DATA* @fits_decode_card.data to i8*), align 1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.6
  %arraydecay9 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 10
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i64* %l_long) #4
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %sw.bb.8
  call void @fits_set_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.65, i32 0, i32 0))
  %7 = load i32, i32* %ErrCount, align 4
  %inc14 = add nsw i32 %7, 1
  store i32 %inc14, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.15:                                        ; preds = %sw.bb.8
  %8 = load i64, i64* %l_long, align 8
  %conv = trunc i64 %8 to i16
  store i16 %conv, i16* bitcast (%union.FITS_DATA* @fits_decode_card.data to i16*), align 2
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.6
  %arraydecay17 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 10
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i64* %l_long) #4
  %cmp20 = icmp ne i32 %call19, 1
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %sw.bb.16
  call void @fits_set_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.66, i32 0, i32 0))
  %9 = load i32, i32* %ErrCount, align 4
  %inc23 = add nsw i32 %9, 1
  store i32 %inc23, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.24:                                        ; preds = %sw.bb.16
  %10 = load i64, i64* %l_long, align 8
  store i64 %10, i64* getelementptr inbounds (%union.FITS_DATA, %union.FITS_DATA* @fits_decode_card.data, i32 0, i32 0), align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.6
  %arraydecay26 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr27 = getelementptr inbounds i8, i8* %arraydecay26, i64 10
  %call28 = call i32 @fits_scanfdouble(i8* %add.ptr27, double* %l_double)
  %cmp29 = icmp ne i32 %call28, 1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %sw.bb.25
  call void @fits_set_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i32 0, i32 0))
  %11 = load i32, i32* %ErrCount, align 4
  %inc32 = add nsw i32 %11, 1
  store i32 %inc32, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.33:                                        ; preds = %sw.bb.25
  %12 = load double, double* %l_double, align 8
  %conv34 = fptrunc double %12 to float
  store float %conv34, float* bitcast (%union.FITS_DATA* @fits_decode_card.data to float*), align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.6
  %arraydecay36 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay36, i64 10
  %call38 = call i32 @fits_scanfdouble(i8* %add.ptr37, double* %l_double)
  %cmp39 = icmp ne i32 %call38, 1
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %sw.bb.35
  call void @fits_set_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0))
  %13 = load i32, i32* %ErrCount, align 4
  %inc42 = add nsw i32 %13, 1
  store i32 %inc42, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.43:                                        ; preds = %sw.bb.35
  %14 = load double, double* %l_double, align 8
  store double %14, double* bitcast (%union.FITS_DATA* @fits_decode_card.data to double*), align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.6
  %arraydecay45 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr46 = getelementptr inbounds i8, i8* %arraydecay45, i64 10
  store i8* %add.ptr46, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.44
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv47 = sext i8 %16 to i32
  %cmp48 = icmp eq i32 %conv47, 32
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv50 = sext i8 %19 to i32
  %cmp51 = icmp eq i32 %conv50, 84
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %while.end
  store i32 1, i32* bitcast (%union.FITS_DATA* @fits_decode_card.data to i32*), align 4
  br label %if.end.61

if.else:                                          ; preds = %while.end
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv54 = sext i8 %21 to i32
  %cmp55 = icmp eq i32 %conv54, 70
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else
  store i32 0, i32* bitcast (%union.FITS_DATA* @fits_decode_card.data to i32*), align 4
  br label %if.end.60

if.else.58:                                       ; preds = %if.else
  call void @fits_set_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i32 0, i32 0))
  %22 = load i32, i32* %ErrCount, align 4
  %inc59 = add nsw i32 %22, 1
  store i32 %inc59, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.60:                                        ; preds = %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.53
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.6
  %arraydecay63 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr64 = getelementptr inbounds i8, i8* %arraydecay63, i64 10
  %call65 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i64* %l_long) #4
  %cmp66 = icmp ne i32 %call65, 1
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %sw.bb.62
  call void @fits_set_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i32 0, i32 0))
  %23 = load i32, i32* %ErrCount, align 4
  %inc69 = add nsw i32 %23, 1
  store i32 %inc69, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.70:                                        ; preds = %sw.bb.62
  %24 = load i64, i64* %l_long, align 8
  store i64 %24, i64* getelementptr inbounds (%union.FITS_DATA, %union.FITS_DATA* @fits_decode_card.data, i32 0, i32 0), align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.6
  %arraydecay72 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay72, i64 10
  %call74 = call i32 @fits_scanfdouble(i8* %add.ptr73, double* %l_double)
  %cmp75 = icmp ne i32 %call74, 1
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %sw.bb.71
  call void @fits_set_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i32 0, i32 0))
  %25 = load i32, i32* %ErrCount, align 4
  %inc78 = add nsw i32 %25, 1
  store i32 %inc78, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.79:                                        ; preds = %sw.bb.71
  %26 = load double, double* %l_double, align 8
  %conv80 = fptrunc double %26 to float
  %conv81 = fpext float %conv80 to double
  store double %conv81, double* bitcast (%union.FITS_DATA* @fits_decode_card.data to double*), align 8
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.6
  %arraydecay83 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr84 = getelementptr inbounds i8, i8* %arraydecay83, i64 10
  store i8* %add.ptr84, i8** %cp, align 8
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv85 = sext i8 %28 to i32
  %cmp86 = icmp ne i32 %conv85, 39
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %sw.bb.82
  call void @fits_set_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.72, i32 0, i32 0))
  %29 = load i32, i32* %ErrCount, align 4
  %inc89 = add nsw i32 %29, 1
  store i32 %inc89, i32* %ErrCount, align 4
  br label %sw.epilog

if.end.90:                                        ; preds = %sw.bb.82
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* bitcast (%union.FITS_DATA* @fits_decode_card.data to [80 x i8]*), i32 0, i32 0), i8** %dst, align 8
  %30 = load i8*, i8** %cp, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr91, i8** %cp, align 8
  %arraydecay92 = getelementptr inbounds [81 x i8], [81 x i8]* %l_card, i32 0, i32 0
  %add.ptr93 = getelementptr inbounds i8, i8* %arraydecay92, i64 80
  %add.ptr94 = getelementptr inbounds i8, i8* %add.ptr93, i64 -1
  store i8* %add.ptr94, i8** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.117, %if.end.90
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv95 = sext i8 %32 to i32
  %cmp96 = icmp ne i32 %conv95, 39
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %for.cond
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %dst, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr99, i8** %dst, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.113

if.else.100:                                      ; preds = %for.cond
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8*, i8** %end, align 8
  %cmp101 = icmp uge i8* %36, %37
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.100
  br label %for.end

if.end.104:                                       ; preds = %if.else.100
  %38 = load i8*, i8** %cp, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %add.ptr105, align 1
  %conv106 = sext i8 %39 to i32
  %cmp107 = icmp ne i32 %conv106, 39
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.104
  br label %for.end

if.end.110:                                       ; preds = %if.end.104
  %40 = load i8*, i8** %cp, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr111, i8** %cp, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %dst, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr112, i8** %dst, align 8
  store i8 %41, i8* %42, align 1
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.110, %if.then.98
  %43 = load i8*, i8** %cp, align 8
  %44 = load i8*, i8** %end, align 8
  %cmp114 = icmp uge i8* %43, %44
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.113
  br label %for.end

if.end.117:                                       ; preds = %if.end.113
  %45 = load i8*, i8** %cp, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr118, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.116, %if.then.109, %if.then.103
  %46 = load i8*, i8** %dst, align 8
  store i8 0, i8* %46, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.6, %for.end, %if.then.88, %if.end.79, %if.then.77, %if.end.70, %if.then.68, %if.end.61, %if.else.58, %if.end.43, %if.then.41, %if.end.33, %if.then.31, %if.end.24, %if.then.22, %if.end.15, %if.then.13, %sw.bb
  %47 = load i32, i32* %ErrCount, align 4
  %cmp119 = icmp eq i32 %47, 0
  %cond = select i1 %cmp119, %union.FITS_DATA* @fits_decode_card.data, %union.FITS_DATA* null
  store %union.FITS_DATA* %cond, %union.FITS_DATA** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %48 = load %union.FITS_DATA*, %union.FITS_DATA** %retval
  ret %union.FITS_DATA* %48
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @fits_scanfdouble(i8* %buf, double* %value) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %value.addr = alloca double*, align 8
  %retval1 = alloca i32, align 4
  %bufcopy = alloca i8*, align 8
  %bufptr = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %gvalue = alloca double, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store double* %value, double** %value.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %bufcopy, align 8
  %1 = load i8*, i8** %bufcopy, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %bufcopy, align 8
  store i8* %2, i8** %bufptr, align 8
  %3 = load i8*, i8** %bufcopy, align 8
  %call2 = call i8* @g_strchug(i8* %3)
  %4 = load i8*, i8** %bufptr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i8*, i8** %bufptr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 43
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %8 = load i8*, i8** %bufptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %bufptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.lhs.false
  %9 = load i8*, i8** %bufptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 48
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8*, i8** %bufptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx11, align 1
  %call12 = call signext i8 @g_ascii_toupper(i8 signext %12) #7
  %conv13 = sext i8 %call12 to i32
  %cmp14 = icmp eq i32 %conv13, 88
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %13 = load double*, double** %value.addr, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 1, i32* %retval1, align 4
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load i8*, i8** %bufptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else
  %16 = load i8*, i8** %bufptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr21, i8** %bufptr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else
  %17 = load i8*, i8** %bufptr, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom = zext i8 %18 to i64
  %19 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %20 to i32
  %and = and i32 %conv24, 8
  %cmp25 = icmp ne i32 %and, 0
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %if.end.22
  %21 = load i8*, i8** %bufcopy, align 8
  %call28 = call double @g_ascii_strtod(i8* %21, i8** %endptr)
  store double %call28, double* %gvalue, align 8
  %call29 = call i32* @__errno_location() #7
  %22 = load i32, i32* %call29, align 4
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  %23 = load double, double* %gvalue, align 8
  %24 = load double*, double** %value.addr, align 8
  store double %23, double* %24, align 8
  store i32 1, i32* %retval1, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.22
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.16
  %25 = load i8*, i8** %bufcopy, align 8
  call void @g_free(i8* %25)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  %26 = load i32, i32* %retval1, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i8* @fits_search_card(%struct.fits_record_list* %rl, i8* %keyword) #0 {
entry:
  %retval = alloca i8*, align 8
  %rl.addr = alloca %struct.fits_record_list*, align 8
  %keyword.addr = alloca i8*, align 8
  %key_len = alloca i32, align 4
  %k = alloca i32, align 4
  %card = alloca i8*, align 8
  %key = alloca [9 x i8], align 1
  store %struct.fits_record_list* %rl, %struct.fits_record_list** %rl.addr, align 8
  store i8* %keyword, i8** %keyword.addr, align 8
  %0 = load i8*, i8** %keyword.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %key_len, align 4
  %1 = load i32, i32* %key_len, align 4
  %cmp = icmp sgt i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, i32* %key_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %key_len, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fits_set_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %key, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)) #4
  %3 = bitcast [9 x i8]* %key to i8*
  %4 = load i8*, i8** %keyword.addr, align 8
  %5 = load i32, i32* %key_len, align 4
  %conv7 = sext i32 %5 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %conv7, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.5
  %6 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %cmp8 = icmp ne %struct.fits_record_list* %6, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %data = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %7, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [2880 x i8], [2880 x i8]* %data, i32 0, i32 0
  store i8* %arraydecay10, i8** %card, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %8, 36
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %card, align 8
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %key, i32 0, i32 0
  %call14 = call i32 @strncmp(i8* %9, i8* %arraydecay13, i64 8) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %10 = load i8*, i8** %card, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  %11 = load i8*, i8** %card, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 80
  store i8* %add.ptr, i8** %card, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.fits_record_list*, %struct.fits_record_list** %rl.addr, align 8
  %next_record = getelementptr inbounds %struct.fits_record_list, %struct.fits_record_list* %13, i32 0, i32 1
  %14 = load %struct.fits_record_list*, %struct.fits_record_list** %next_record, align 8
  store %struct.fits_record_list* %14, %struct.fits_record_list** %rl.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.17, %if.then.4
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define %struct.fits_hdu_list* @fits_image_info(%struct.FITS_FILE* %ff, i32 %picind, i32* %hdupicind) #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  %picind.addr = alloca i32, align 4
  %hdupicind.addr = alloca i32*, align 8
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %firstpic = alloca i32, align 4
  %lastpic = alloca i32, align 4
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  store i32 %picind, i32* %picind.addr, align 4
  store i32* %hdupicind, i32** %hdupicind.addr, align 8
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %cmp = icmp eq %struct.FITS_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fits_set_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %openmode = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %1, i32 0, i32 1
  %2 = load i8, i8* %openmode, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 114
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @fits_set_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %picind.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load i32, i32* %picind.addr, align 4
  %5 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %n_pic = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %5, i32 0, i32 3
  %6 = load i32, i32* %n_pic, align 4
  %cmp7 = icmp sgt i32 %4, %6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  call void @fits_set_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %firstpic, align 4
  %7 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %hdu_list = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %7, i32 0, i32 6
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu_list, align 8
  store %struct.fits_hdu_list* %8, %struct.fits_hdu_list** %hdulist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp11 = icmp ne %struct.fits_hdu_list* %9, null
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %10, i32 0, i32 5
  %11 = load i32, i32* %numpic, align 4
  %cmp13 = icmp sle i32 %11, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.inc

if.end.16:                                        ; preds = %for.body
  %12 = load i32, i32* %firstpic, align 4
  %13 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %numpic17 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %13, i32 0, i32 5
  %14 = load i32, i32* %numpic17, align 4
  %add = add nsw i32 %12, %14
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %lastpic, align 4
  %15 = load i32, i32* %picind.addr, align 4
  %16 = load i32, i32* %lastpic, align 4
  %cmp18 = icmp sle i32 %15, %16
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  br label %for.end

if.end.21:                                        ; preds = %if.end.16
  %17 = load i32, i32* %lastpic, align 4
  %add22 = add nsw i32 %17, 1
  store i32 %add22, i32* %firstpic, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.21, %if.then.15
  %18 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %next_hdu = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %18, i32 0, i32 25
  %19 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %next_hdu, align 8
  store %struct.fits_hdu_list* %19, %struct.fits_hdu_list** %hdulist, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  %20 = load i32, i32* %picind.addr, align 4
  %21 = load i32, i32* %firstpic, align 4
  %sub23 = sub nsw i32 %20, %21
  %add24 = add nsw i32 %sub23, 1
  %22 = load i32*, i32** %hdupicind.addr, align 8
  store i32 %add24, i32* %22, align 4
  %23 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* %23, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.3, %if.then
  %24 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %24
}

; Function Attrs: nounwind uwtable
define %struct.fits_hdu_list* @fits_seek_image(%struct.FITS_FILE* %ff, i32 %picind) #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  %picind.addr = alloca i32, align 4
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %hdupicind = alloca i32, align 4
  %offset = alloca i64, align 8
  %pic_size = alloca i64, align 8
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  store i32 %picind, i32* %picind.addr, align 4
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %1 = load i32, i32* %picind.addr, align 4
  %call = call %struct.fits_hdu_list* @fits_image_info(%struct.FITS_FILE* %0, i32 %1, i32* %hdupicind)
  store %struct.fits_hdu_list* %call, %struct.fits_hdu_list** %hdulist, align 8
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bpp = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 4
  %4 = load i32, i32* %bpp, align 4
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 %4, %6
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn1 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 12
  %arrayidx2 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn1, i32 0, i64 1
  %8 = load i32, i32* %arrayidx2, align 4
  %mul3 = mul nsw i32 %mul, %8
  %conv = sext i32 %mul3 to i64
  store i64 %conv, i64* %pic_size, align 8
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %data_offset = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 1
  %10 = load i64, i64* %data_offset, align 8
  %11 = load i32, i32* %hdupicind, align 4
  %sub = sub nsw i32 %11, 1
  %conv4 = sext i32 %sub to i64
  %12 = load i64, i64* %pic_size, align 8
  %mul5 = mul nsw i64 %conv4, %12
  %add = add nsw i64 %10, %mul5
  store i64 %add, i64* %offset, align 8
  %13 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load i64, i64* %offset, align 8
  %call6 = call i32 @fseek(%struct._IO_FILE* %14, i64 %15, i32 0)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @fits_set_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i32 0, i32 0))
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %16 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* %16, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %17 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %17
}

; Function Attrs: nounwind uwtable
define i32 @fits_read_pixel(%struct.FITS_FILE* %ff, %struct.fits_hdu_list* %hdulist, i32 %npix, %struct.FITS_PIX_TRANSFORM* %trans, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.FITS_FILE*, align 8
  %hdulist.addr = alloca %struct.fits_hdu_list*, align 8
  %npix.addr = alloca i32, align 4
  %trans.addr = alloca %struct.FITS_PIX_TRANSFORM*, align 8
  %buf.addr = alloca i8*, align 8
  %offs = alloca double, align 8
  %scale = alloca double, align 8
  %datadiff = alloca double, align 8
  %pixdiff = alloca double, align 8
  %pixbuffer = alloca [4096 x i8], align 16
  %pix = alloca i8*, align 8
  %cdata = alloca i8*, align 8
  %creplace = alloca i8, align 1
  %transcount = alloca i32, align 4
  %tdata = alloca i64, align 8
  %tmin = alloca i64, align 8
  %tmax = alloca i64, align 8
  %maxelem = alloca i32, align 4
  %bp8 = alloca i8, align 1
  %bp8blank = alloca i8, align 1
  %bp16 = alloca i16, align 2
  %bp16blank = alloca i16, align 2
  %bp32 = alloca i64, align 8
  %bp32blank = alloca i64, align 8
  %bpm32 = alloca float, align 4
  %bpm64 = alloca double, align 8
  %uc = alloca [4 x i8], align 1
  %m64 = alloca double, align 8
  %uc377 = alloca i8*, align 8
  %i64 = alloca double, align 8
  %uc394 = alloca i8*, align 8
  %uc469 = alloca [8 x i8], align 1
  store %struct.FITS_FILE* %ff, %struct.FITS_FILE** %ff.addr, align 8
  store %struct.fits_hdu_list* %hdulist, %struct.fits_hdu_list** %hdulist.addr, align 8
  store i32 %npix, i32* %npix.addr, align 4
  store %struct.FITS_PIX_TRANSFORM* %trans, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %transcount, align 4
  store float 0.000000e+00, float* %bpm32, align 4
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %openmode = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %0, i32 0, i32 1
  %1 = load i8, i8* %openmode, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 114
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %dsttyp = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %2, i32 0, i32 5
  %3 = load i8, i8* %dsttyp, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 99
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %npix.addr, align 4
  %cmp7 = icmp sle i32 %4, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %5 = load i32, i32* %npix.addr, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %datamax = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %6, i32 0, i32 3
  %7 = load double, double* %datamax, align 8
  %8 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %datamin = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %8, i32 0, i32 2
  %9 = load double, double* %datamin, align 8
  %sub = fsub double %7, %9
  store double %sub, double* %datadiff, align 8
  %10 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %pixmax = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %10, i32 0, i32 1
  %11 = load double, double* %pixmax, align 8
  %12 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %pixmin = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %12, i32 0, i32 0
  %13 = load double, double* %pixmin, align 8
  %sub11 = fsub double %11, %13
  store double %sub11, double* %pixdiff, align 8
  %14 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %datamin12 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %14, i32 0, i32 2
  %15 = load double, double* %datamin12, align 8
  %16 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %pixmin13 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %16, i32 0, i32 0
  %17 = load double, double* %pixmin13, align 8
  %18 = load double, double* %datadiff, align 8
  %mul = fmul double %17, %18
  %19 = load double, double* %pixdiff, align 8
  %div = fdiv double %mul, %19
  %sub14 = fsub double %15, %div
  store double %sub14, double* %offs, align 8
  %20 = load double, double* %datadiff, align 8
  %21 = load double, double* %pixdiff, align 8
  %div15 = fdiv double %20, %21
  store double %div15, double* %scale, align 8
  %22 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %datamin16 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %22, i32 0, i32 2
  %23 = load double, double* %datamin16, align 8
  %conv17 = fptosi double %23 to i64
  store i64 %conv17, i64* %tmin, align 8
  %24 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %datamax18 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %24, i32 0, i32 3
  %25 = load double, double* %datamax18, align 8
  %conv19 = fptosi double %25 to i64
  store i64 %conv19, i64* %tmax, align 8
  %26 = load i64, i64* %tmin, align 8
  %cmp20 = icmp slt i64 %26, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.10
  store i64 0, i64* %tmin, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.10
  %27 = load i64, i64* %tmin, align 8
  %cmp23 = icmp sgt i64 %27, 255
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else
  store i64 255, i64* %tmin, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.22
  %28 = load i64, i64* %tmax, align 8
  %cmp28 = icmp slt i64 %28, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  store i64 0, i64* %tmax, align 8
  br label %if.end.36

if.else.31:                                       ; preds = %if.end.27
  %29 = load i64, i64* %tmax, align 8
  %cmp32 = icmp sgt i64 %29, 255
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.31
  store i64 255, i64* %tmax, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.30
  %30 = load i8*, i8** %buf.addr, align 8
  store i8* %30, i8** %cdata, align 8
  %31 = load %struct.FITS_PIX_TRANSFORM*, %struct.FITS_PIX_TRANSFORM** %trans.addr, align 8
  %replacement = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %31, i32 0, i32 4
  %32 = load double, double* %replacement, align 8
  %conv37 = fptoui double %32 to i8
  store i8 %conv37, i8* %creplace, align 1
  %33 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %33, i32 0, i32 13
  %34 = load i32, i32* %bitpix, align 4
  switch i32 %34, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb.112
    i32 32, label %sw.bb.211
    i32 -32, label %sw.bb.325
    i32 -64, label %sw.bb.432
  ]

sw.bb:                                            ; preds = %if.end.36
  br label %while.cond

while.cond:                                       ; preds = %if.end.110, %sw.bb
  %35 = load i32, i32* %npix.addr, align 4
  %cmp38 = icmp sgt i32 %35, 0
  br i1 %cmp38, label %while.body, label %while.end.111

while.body:                                       ; preds = %while.cond
  %36 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %36, i32 0, i32 4
  %37 = load i32, i32* %bpp, align 4
  %conv40 = sext i32 %37 to i64
  %div41 = udiv i64 4096, %conv40
  %conv42 = trunc i64 %div41 to i32
  store i32 %conv42, i32* %maxelem, align 4
  %38 = load i32, i32* %maxelem, align 4
  %39 = load i32, i32* %npix.addr, align 4
  %cmp43 = icmp sgt i32 %38, %39
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %while.body
  %40 = load i32, i32* %npix.addr, align 4
  store i32 %40, i32* %maxelem, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %while.body
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp47 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %41, i32 0, i32 4
  %42 = load i32, i32* %bpp47, align 4
  %conv48 = sext i32 %42 to i64
  %43 = load i32, i32* %maxelem, align 4
  %conv49 = sext i32 %43 to i64
  %44 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %44, i32 0, i32 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 %conv48, i64 %conv49, %struct._IO_FILE* %45)
  %46 = load i32, i32* %maxelem, align 4
  %conv50 = sext i32 %46 to i64
  %cmp51 = icmp ne i64 %call, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.46
  %47 = load i32, i32* %maxelem, align 4
  %48 = load i32, i32* %npix.addr, align 4
  %sub55 = sub nsw i32 %48, %47
  store i32 %sub55, i32* %npix.addr, align 4
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  store i8* %arraydecay56, i8** %pix, align 8
  %49 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %49, i32 0, i32 8
  %blank = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 2
  %50 = load i8, i8* %blank, align 1
  %tobool = icmp ne i8 %50, 0
  br i1 %tobool, label %if.then.57, label %if.else.86

if.then.57:                                       ; preds = %if.end.54
  %51 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %blank58 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %51, i32 0, i32 14
  %52 = load i64, i64* %blank58, align 8
  %conv59 = trunc i64 %52 to i8
  store i8 %conv59, i8* %bp8blank, align 1
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.85, %if.then.57
  %53 = load i32, i32* %maxelem, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %maxelem, align 4
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %while.body.62, label %while.end

while.body.62:                                    ; preds = %while.cond.60
  %54 = load i8*, i8** %pix, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %pix, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %bp8, align 1
  %56 = load i8, i8* %bp8, align 1
  %conv63 = zext i8 %56 to i32
  %57 = load i8, i8* %bp8blank, align 1
  %conv64 = zext i8 %57 to i32
  %cmp65 = icmp eq i32 %conv63, %conv64
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %while.body.62
  %58 = load i8, i8* %creplace, align 1
  %59 = load i8*, i8** %cdata, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr68, i8** %cdata, align 8
  store i8 %58, i8* %59, align 1
  br label %if.end.85

if.else.69:                                       ; preds = %while.body.62
  %60 = load i8, i8* %bp8, align 1
  %conv70 = zext i8 %60 to i32
  %conv71 = sitofp i32 %conv70 to double
  %61 = load double, double* %scale, align 8
  %mul72 = fmul double %conv71, %61
  %62 = load double, double* %offs, align 8
  %add = fadd double %mul72, %62
  %conv73 = fptosi double %add to i64
  store i64 %conv73, i64* %tdata, align 8
  %63 = load i64, i64* %tdata, align 8
  %64 = load i64, i64* %tmin, align 8
  %cmp74 = icmp slt i64 %63, %64
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.69
  %65 = load i64, i64* %tmin, align 8
  store i64 %65, i64* %tdata, align 8
  br label %if.end.82

if.else.77:                                       ; preds = %if.else.69
  %66 = load i64, i64* %tdata, align 8
  %67 = load i64, i64* %tmax, align 8
  %cmp78 = icmp sgt i64 %66, %67
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.else.77
  %68 = load i64, i64* %tmax, align 8
  store i64 %68, i64* %tdata, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.else.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.76
  %69 = load i64, i64* %tdata, align 8
  %conv83 = trunc i64 %69 to i8
  %70 = load i8*, i8** %cdata, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr84, i8** %cdata, align 8
  store i8 %conv83, i8* %70, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %if.then.67
  %71 = load i32, i32* %transcount, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %transcount, align 4
  br label %while.cond.60

while.end:                                        ; preds = %while.cond.60
  br label %if.end.110

if.else.86:                                       ; preds = %if.end.54
  br label %while.cond.87

while.cond.87:                                    ; preds = %if.end.105, %if.else.86
  %72 = load i32, i32* %maxelem, align 4
  %dec88 = add nsw i32 %72, -1
  store i32 %dec88, i32* %maxelem, align 4
  %tobool89 = icmp ne i32 %72, 0
  br i1 %tobool89, label %while.body.90, label %while.end.109

while.body.90:                                    ; preds = %while.cond.87
  %73 = load i8*, i8** %pix, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr91, i8** %pix, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %bp8, align 1
  %75 = load i8, i8* %bp8, align 1
  %conv92 = zext i8 %75 to i32
  %conv93 = sitofp i32 %conv92 to double
  %76 = load double, double* %scale, align 8
  %mul94 = fmul double %conv93, %76
  %77 = load double, double* %offs, align 8
  %add95 = fadd double %mul94, %77
  %conv96 = fptosi double %add95 to i64
  store i64 %conv96, i64* %tdata, align 8
  %78 = load i64, i64* %tdata, align 8
  %79 = load i64, i64* %tmin, align 8
  %cmp97 = icmp slt i64 %78, %79
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %while.body.90
  %80 = load i64, i64* %tmin, align 8
  store i64 %80, i64* %tdata, align 8
  br label %if.end.105

if.else.100:                                      ; preds = %while.body.90
  %81 = load i64, i64* %tdata, align 8
  %82 = load i64, i64* %tmax, align 8
  %cmp101 = icmp sgt i64 %81, %82
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.100
  %83 = load i64, i64* %tmax, align 8
  store i64 %83, i64* %tdata, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.else.100
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.99
  %84 = load i64, i64* %tdata, align 8
  %conv106 = trunc i64 %84 to i8
  %85 = load i8*, i8** %cdata, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr107, i8** %cdata, align 8
  store i8 %conv106, i8* %85, align 1
  %86 = load i32, i32* %transcount, align 4
  %inc108 = add nsw i32 %86, 1
  store i32 %inc108, i32* %transcount, align 4
  br label %while.cond.87

while.end.109:                                    ; preds = %while.cond.87
  br label %if.end.110

if.end.110:                                       ; preds = %while.end.109, %while.end
  br label %while.cond

while.end.111:                                    ; preds = %while.cond
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.end.36
  br label %while.cond.113

while.cond.113:                                   ; preds = %if.end.209, %sw.bb.112
  %87 = load i32, i32* %npix.addr, align 4
  %cmp114 = icmp sgt i32 %87, 0
  br i1 %cmp114, label %while.body.116, label %while.end.210

while.body.116:                                   ; preds = %while.cond.113
  %88 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp117 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %88, i32 0, i32 4
  %89 = load i32, i32* %bpp117, align 4
  %conv118 = sext i32 %89 to i64
  %div119 = udiv i64 4096, %conv118
  %conv120 = trunc i64 %div119 to i32
  store i32 %conv120, i32* %maxelem, align 4
  %90 = load i32, i32* %maxelem, align 4
  %91 = load i32, i32* %npix.addr, align 4
  %cmp121 = icmp sgt i32 %90, %91
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %while.body.116
  %92 = load i32, i32* %npix.addr, align 4
  store i32 %92, i32* %maxelem, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %while.body.116
  %arraydecay125 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  %93 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp126 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %93, i32 0, i32 4
  %94 = load i32, i32* %bpp126, align 4
  %conv127 = sext i32 %94 to i64
  %95 = load i32, i32* %maxelem, align 4
  %conv128 = sext i32 %95 to i64
  %96 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp129 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %96, i32 0, i32 0
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp129, align 8
  %call130 = call i64 @fread(i8* %arraydecay125, i64 %conv127, i64 %conv128, %struct._IO_FILE* %97)
  %98 = load i32, i32* %maxelem, align 4
  %conv131 = sext i32 %98 to i64
  %cmp132 = icmp ne i64 %call130, %conv131
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.124
  store i32 -1, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.end.124
  %99 = load i32, i32* %maxelem, align 4
  %100 = load i32, i32* %npix.addr, align 4
  %sub136 = sub nsw i32 %100, %99
  store i32 %sub136, i32* %npix.addr, align 4
  %arraydecay137 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  store i8* %arraydecay137, i8** %pix, align 8
  %101 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used138 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %101, i32 0, i32 8
  %blank139 = getelementptr inbounds %struct.anon, %struct.anon* %used138, i32 0, i32 2
  %102 = load i8, i8* %blank139, align 1
  %tobool140 = icmp ne i8 %102, 0
  br i1 %tobool140, label %if.then.141, label %if.else.178

if.then.141:                                      ; preds = %if.end.135
  %103 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %blank142 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %103, i32 0, i32 14
  %104 = load i64, i64* %blank142, align 8
  %conv143 = trunc i64 %104 to i16
  store i16 %conv143, i16* %bp16blank, align 2
  br label %while.cond.144

while.cond.144:                                   ; preds = %if.end.175, %if.then.141
  %105 = load i32, i32* %maxelem, align 4
  %dec145 = add nsw i32 %105, -1
  store i32 %dec145, i32* %maxelem, align 4
  %tobool146 = icmp ne i32 %105, 0
  br i1 %tobool146, label %while.body.147, label %while.end.177

while.body.147:                                   ; preds = %while.cond.144
  %106 = load i8*, i8** %pix, align 8
  %arrayidx = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx, align 1
  %conv148 = zext i8 %107 to i32
  %shl = shl i32 %conv148, 8
  %108 = load i8*, i8** %pix, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %109 to i32
  %or = or i32 %shl, %conv150
  %conv151 = trunc i32 %or to i16
  store i16 %conv151, i16* %bp16, align 2
  %110 = load i16, i16* %bp16, align 2
  %conv152 = sext i16 %110 to i32
  %111 = load i16, i16* %bp16blank, align 2
  %conv153 = sext i16 %111 to i32
  %cmp154 = icmp eq i32 %conv152, %conv153
  br i1 %cmp154, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %while.body.147
  %112 = load i8, i8* %creplace, align 1
  %113 = load i8*, i8** %cdata, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr157, i8** %cdata, align 8
  store i8 %112, i8* %113, align 1
  br label %if.end.175

if.else.158:                                      ; preds = %while.body.147
  %114 = load i16, i16* %bp16, align 2
  %conv159 = sext i16 %114 to i32
  %conv160 = sitofp i32 %conv159 to double
  %115 = load double, double* %scale, align 8
  %mul161 = fmul double %conv160, %115
  %116 = load double, double* %offs, align 8
  %add162 = fadd double %mul161, %116
  %conv163 = fptosi double %add162 to i64
  store i64 %conv163, i64* %tdata, align 8
  %117 = load i64, i64* %tdata, align 8
  %118 = load i64, i64* %tmin, align 8
  %cmp164 = icmp slt i64 %117, %118
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.else.158
  %119 = load i64, i64* %tmin, align 8
  store i64 %119, i64* %tdata, align 8
  br label %if.end.172

if.else.167:                                      ; preds = %if.else.158
  %120 = load i64, i64* %tdata, align 8
  %121 = load i64, i64* %tmax, align 8
  %cmp168 = icmp sgt i64 %120, %121
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.else.167
  %122 = load i64, i64* %tmax, align 8
  store i64 %122, i64* %tdata, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.else.167
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.166
  %123 = load i64, i64* %tdata, align 8
  %conv173 = trunc i64 %123 to i8
  %124 = load i8*, i8** %cdata, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr174, i8** %cdata, align 8
  store i8 %conv173, i8* %124, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.172, %if.then.156
  %125 = load i32, i32* %transcount, align 4
  %inc176 = add nsw i32 %125, 1
  store i32 %inc176, i32* %transcount, align 4
  %126 = load i8*, i8** %pix, align 8
  %add.ptr = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %add.ptr, i8** %pix, align 8
  br label %while.cond.144

while.end.177:                                    ; preds = %while.cond.144
  br label %if.end.209

if.else.178:                                      ; preds = %if.end.135
  br label %while.cond.179

while.cond.179:                                   ; preds = %if.end.203, %if.else.178
  %127 = load i32, i32* %maxelem, align 4
  %dec180 = add nsw i32 %127, -1
  store i32 %dec180, i32* %maxelem, align 4
  %tobool181 = icmp ne i32 %127, 0
  br i1 %tobool181, label %while.body.182, label %while.end.208

while.body.182:                                   ; preds = %while.cond.179
  %128 = load i8*, i8** %pix, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %128, i64 0
  %129 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %129 to i32
  %shl185 = shl i32 %conv184, 8
  %130 = load i8*, i8** %pix, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %131 to i32
  %or188 = or i32 %shl185, %conv187
  %conv189 = trunc i32 %or188 to i16
  store i16 %conv189, i16* %bp16, align 2
  %132 = load i16, i16* %bp16, align 2
  %conv190 = sext i16 %132 to i32
  %conv191 = sitofp i32 %conv190 to double
  %133 = load double, double* %scale, align 8
  %mul192 = fmul double %conv191, %133
  %134 = load double, double* %offs, align 8
  %add193 = fadd double %mul192, %134
  %conv194 = fptosi double %add193 to i64
  store i64 %conv194, i64* %tdata, align 8
  %135 = load i64, i64* %tdata, align 8
  %136 = load i64, i64* %tmin, align 8
  %cmp195 = icmp slt i64 %135, %136
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %while.body.182
  %137 = load i64, i64* %tmin, align 8
  store i64 %137, i64* %tdata, align 8
  br label %if.end.203

if.else.198:                                      ; preds = %while.body.182
  %138 = load i64, i64* %tdata, align 8
  %139 = load i64, i64* %tmax, align 8
  %cmp199 = icmp sgt i64 %138, %139
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.else.198
  %140 = load i64, i64* %tmax, align 8
  store i64 %140, i64* %tdata, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.else.198
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.197
  %141 = load i64, i64* %tdata, align 8
  %conv204 = trunc i64 %141 to i8
  %142 = load i8*, i8** %cdata, align 8
  %incdec.ptr205 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr205, i8** %cdata, align 8
  store i8 %conv204, i8* %142, align 1
  %143 = load i32, i32* %transcount, align 4
  %inc206 = add nsw i32 %143, 1
  store i32 %inc206, i32* %transcount, align 4
  %144 = load i8*, i8** %pix, align 8
  %add.ptr207 = getelementptr inbounds i8, i8* %144, i64 2
  store i8* %add.ptr207, i8** %pix, align 8
  br label %while.cond.179

while.end.208:                                    ; preds = %while.cond.179
  br label %if.end.209

if.end.209:                                       ; preds = %while.end.208, %while.end.177
  br label %while.cond.113

while.end.210:                                    ; preds = %while.cond.113
  br label %sw.epilog

sw.bb.211:                                        ; preds = %if.end.36
  br label %while.cond.212

while.cond.212:                                   ; preds = %if.end.323, %sw.bb.211
  %145 = load i32, i32* %npix.addr, align 4
  %cmp213 = icmp sgt i32 %145, 0
  br i1 %cmp213, label %while.body.215, label %while.end.324

while.body.215:                                   ; preds = %while.cond.212
  %146 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp216 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %146, i32 0, i32 4
  %147 = load i32, i32* %bpp216, align 4
  %conv217 = sext i32 %147 to i64
  %div218 = udiv i64 4096, %conv217
  %conv219 = trunc i64 %div218 to i32
  store i32 %conv219, i32* %maxelem, align 4
  %148 = load i32, i32* %maxelem, align 4
  %149 = load i32, i32* %npix.addr, align 4
  %cmp220 = icmp sgt i32 %148, %149
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %while.body.215
  %150 = load i32, i32* %npix.addr, align 4
  store i32 %150, i32* %maxelem, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %while.body.215
  %arraydecay224 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  %151 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp225 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %151, i32 0, i32 4
  %152 = load i32, i32* %bpp225, align 4
  %conv226 = sext i32 %152 to i64
  %153 = load i32, i32* %maxelem, align 4
  %conv227 = sext i32 %153 to i64
  %154 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp228 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %154, i32 0, i32 0
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp228, align 8
  %call229 = call i64 @fread(i8* %arraydecay224, i64 %conv226, i64 %conv227, %struct._IO_FILE* %155)
  %156 = load i32, i32* %maxelem, align 4
  %conv230 = sext i32 %156 to i64
  %cmp231 = icmp ne i64 %call229, %conv230
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.223
  store i32 -1, i32* %retval
  br label %return

if.end.234:                                       ; preds = %if.end.223
  %157 = load i32, i32* %maxelem, align 4
  %158 = load i32, i32* %npix.addr, align 4
  %sub235 = sub nsw i32 %158, %157
  store i32 %sub235, i32* %npix.addr, align 4
  %arraydecay236 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  store i8* %arraydecay236, i8** %pix, align 8
  %159 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %used237 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %159, i32 0, i32 8
  %blank238 = getelementptr inbounds %struct.anon, %struct.anon* %used237, i32 0, i32 2
  %160 = load i8, i8* %blank238, align 1
  %tobool239 = icmp ne i8 %160, 0
  br i1 %tobool239, label %if.then.240, label %if.else.285

if.then.240:                                      ; preds = %if.end.234
  %161 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %blank241 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %161, i32 0, i32 14
  %162 = load i64, i64* %blank241, align 8
  store i64 %162, i64* %bp32blank, align 8
  br label %while.cond.242

while.cond.242:                                   ; preds = %if.end.281, %if.then.240
  %163 = load i32, i32* %maxelem, align 4
  %dec243 = add nsw i32 %163, -1
  store i32 %dec243, i32* %maxelem, align 4
  %tobool244 = icmp ne i32 %163, 0
  br i1 %tobool244, label %while.body.245, label %while.end.284

while.body.245:                                   ; preds = %while.cond.242
  %164 = load i8*, i8** %pix, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %165 to i32
  %shl248 = shl i32 %conv247, 24
  %166 = load i8*, i8** %pix, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %166, i64 1
  %167 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %167 to i32
  %shl251 = shl i32 %conv250, 16
  %or252 = or i32 %shl248, %shl251
  %168 = load i8*, i8** %pix, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %168, i64 2
  %169 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %169 to i32
  %shl255 = shl i32 %conv254, 8
  %or256 = or i32 %or252, %shl255
  %170 = load i8*, i8** %pix, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %170, i64 3
  %171 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %171 to i32
  %or259 = or i32 %or256, %conv258
  %conv260 = sext i32 %or259 to i64
  store i64 %conv260, i64* %bp32, align 8
  %172 = load i64, i64* %bp32, align 8
  %173 = load i64, i64* %bp32blank, align 8
  %cmp261 = icmp eq i64 %172, %173
  br i1 %cmp261, label %if.then.263, label %if.else.265

if.then.263:                                      ; preds = %while.body.245
  %174 = load i8, i8* %creplace, align 1
  %175 = load i8*, i8** %cdata, align 8
  %incdec.ptr264 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr264, i8** %cdata, align 8
  store i8 %174, i8* %175, align 1
  br label %if.end.281

if.else.265:                                      ; preds = %while.body.245
  %176 = load i64, i64* %bp32, align 8
  %conv266 = sitofp i64 %176 to double
  %177 = load double, double* %scale, align 8
  %mul267 = fmul double %conv266, %177
  %178 = load double, double* %offs, align 8
  %add268 = fadd double %mul267, %178
  %conv269 = fptosi double %add268 to i64
  store i64 %conv269, i64* %tdata, align 8
  %179 = load i64, i64* %tdata, align 8
  %180 = load i64, i64* %tmin, align 8
  %cmp270 = icmp slt i64 %179, %180
  br i1 %cmp270, label %if.then.272, label %if.else.273

if.then.272:                                      ; preds = %if.else.265
  %181 = load i64, i64* %tmin, align 8
  store i64 %181, i64* %tdata, align 8
  br label %if.end.278

if.else.273:                                      ; preds = %if.else.265
  %182 = load i64, i64* %tdata, align 8
  %183 = load i64, i64* %tmax, align 8
  %cmp274 = icmp sgt i64 %182, %183
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.else.273
  %184 = load i64, i64* %tmax, align 8
  store i64 %184, i64* %tdata, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %if.else.273
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.272
  %185 = load i64, i64* %tdata, align 8
  %conv279 = trunc i64 %185 to i8
  %186 = load i8*, i8** %cdata, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr280, i8** %cdata, align 8
  store i8 %conv279, i8* %186, align 1
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.278, %if.then.263
  %187 = load i32, i32* %transcount, align 4
  %inc282 = add nsw i32 %187, 1
  store i32 %inc282, i32* %transcount, align 4
  %188 = load i8*, i8** %pix, align 8
  %add.ptr283 = getelementptr inbounds i8, i8* %188, i64 4
  store i8* %add.ptr283, i8** %pix, align 8
  br label %while.cond.242

while.end.284:                                    ; preds = %while.cond.242
  br label %if.end.323

if.else.285:                                      ; preds = %if.end.234
  br label %while.cond.286

while.cond.286:                                   ; preds = %if.end.317, %if.else.285
  %189 = load i32, i32* %maxelem, align 4
  %dec287 = add nsw i32 %189, -1
  store i32 %dec287, i32* %maxelem, align 4
  %tobool288 = icmp ne i32 %189, 0
  br i1 %tobool288, label %while.body.289, label %while.end.322

while.body.289:                                   ; preds = %while.cond.286
  %190 = load i8*, i8** %pix, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %190, i64 0
  %191 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %191 to i32
  %shl292 = shl i32 %conv291, 24
  %192 = load i8*, i8** %pix, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %192, i64 1
  %193 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %193 to i32
  %shl295 = shl i32 %conv294, 16
  %or296 = or i32 %shl292, %shl295
  %194 = load i8*, i8** %pix, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %194, i64 2
  %195 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %195 to i32
  %shl299 = shl i32 %conv298, 8
  %or300 = or i32 %or296, %shl299
  %196 = load i8*, i8** %pix, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %196, i64 3
  %197 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %197 to i32
  %or303 = or i32 %or300, %conv302
  %conv304 = sext i32 %or303 to i64
  store i64 %conv304, i64* %bp32, align 8
  %198 = load i64, i64* %bp32, align 8
  %conv305 = sitofp i64 %198 to double
  %199 = load double, double* %scale, align 8
  %mul306 = fmul double %conv305, %199
  %200 = load double, double* %offs, align 8
  %add307 = fadd double %mul306, %200
  %conv308 = fptosi double %add307 to i64
  store i64 %conv308, i64* %tdata, align 8
  %201 = load i64, i64* %tdata, align 8
  %202 = load i64, i64* %tmin, align 8
  %cmp309 = icmp slt i64 %201, %202
  br i1 %cmp309, label %if.then.311, label %if.else.312

if.then.311:                                      ; preds = %while.body.289
  %203 = load i64, i64* %tmin, align 8
  store i64 %203, i64* %tdata, align 8
  br label %if.end.317

if.else.312:                                      ; preds = %while.body.289
  %204 = load i64, i64* %tdata, align 8
  %205 = load i64, i64* %tmax, align 8
  %cmp313 = icmp sgt i64 %204, %205
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.else.312
  %206 = load i64, i64* %tmax, align 8
  store i64 %206, i64* %tdata, align 8
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.else.312
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.311
  %207 = load i64, i64* %tdata, align 8
  %conv318 = trunc i64 %207 to i8
  %208 = load i8*, i8** %cdata, align 8
  %incdec.ptr319 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr319, i8** %cdata, align 8
  store i8 %conv318, i8* %208, align 1
  %209 = load i32, i32* %transcount, align 4
  %inc320 = add nsw i32 %209, 1
  store i32 %inc320, i32* %transcount, align 4
  %210 = load i8*, i8** %pix, align 8
  %add.ptr321 = getelementptr inbounds i8, i8* %210, i64 4
  store i8* %add.ptr321, i8** %pix, align 8
  br label %while.cond.286

while.end.322:                                    ; preds = %while.cond.286
  br label %if.end.323

if.end.323:                                       ; preds = %while.end.322, %while.end.284
  br label %while.cond.212

while.end.324:                                    ; preds = %while.cond.212
  br label %sw.epilog

sw.bb.325:                                        ; preds = %if.end.36
  br label %while.cond.326

while.cond.326:                                   ; preds = %while.end.430, %sw.bb.325
  %211 = load i32, i32* %npix.addr, align 4
  %cmp327 = icmp sgt i32 %211, 0
  br i1 %cmp327, label %while.body.329, label %while.end.431

while.body.329:                                   ; preds = %while.cond.326
  %212 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp330 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %212, i32 0, i32 4
  %213 = load i32, i32* %bpp330, align 4
  %conv331 = sext i32 %213 to i64
  %div332 = udiv i64 4096, %conv331
  %conv333 = trunc i64 %div332 to i32
  store i32 %conv333, i32* %maxelem, align 4
  %214 = load i32, i32* %maxelem, align 4
  %215 = load i32, i32* %npix.addr, align 4
  %cmp334 = icmp sgt i32 %214, %215
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %while.body.329
  %216 = load i32, i32* %npix.addr, align 4
  store i32 %216, i32* %maxelem, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %while.body.329
  %arraydecay338 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  %217 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp339 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %217, i32 0, i32 4
  %218 = load i32, i32* %bpp339, align 4
  %conv340 = sext i32 %218 to i64
  %219 = load i32, i32* %maxelem, align 4
  %conv341 = sext i32 %219 to i64
  %220 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp342 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %220, i32 0, i32 0
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp342, align 8
  %call343 = call i64 @fread(i8* %arraydecay338, i64 %conv340, i64 %conv341, %struct._IO_FILE* %221)
  %222 = load i32, i32* %maxelem, align 4
  %conv344 = sext i32 %222 to i64
  %cmp345 = icmp ne i64 %call343, %conv344
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %if.end.337
  store i32 -1, i32* %retval
  br label %return

if.end.348:                                       ; preds = %if.end.337
  %223 = load i32, i32* %maxelem, align 4
  %224 = load i32, i32* %npix.addr, align 4
  %sub349 = sub nsw i32 %224, %223
  store i32 %sub349, i32* %npix.addr, align 4
  %arraydecay350 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  store i8* %arraydecay350, i8** %pix, align 8
  br label %while.cond.351

while.cond.351:                                   ; preds = %if.end.427, %if.end.348
  %225 = load i32, i32* %maxelem, align 4
  %dec352 = add nsw i32 %225, -1
  store i32 %dec352, i32* %maxelem, align 4
  %tobool353 = icmp ne i32 %225, 0
  br i1 %tobool353, label %while.body.354, label %while.end.430

while.body.354:                                   ; preds = %while.cond.351
  %226 = load i8*, i8** %pix, align 8
  %call355 = call i32 @fits_nan_32(i8* %226)
  %tobool356 = icmp ne i32 %call355, 0
  br i1 %tobool356, label %if.then.357, label %if.else.359

if.then.357:                                      ; preds = %while.body.354
  %227 = load i8, i8* %creplace, align 1
  %228 = load i8*, i8** %cdata, align 8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr358, i8** %cdata, align 8
  store i8 %227, i8* %228, align 1
  br label %if.end.427

if.else.359:                                      ; preds = %while.body.354
  %229 = load i32, i32* @fits_ieee32_intel, align 4
  %tobool360 = icmp ne i32 %229, 0
  br i1 %tobool360, label %if.then.361, label %if.else.371

if.then.361:                                      ; preds = %if.else.359
  %230 = load i8*, i8** %pix, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %230, i64 3
  %231 = load i8, i8* %arrayidx362, align 1
  %arrayidx363 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 0
  store i8 %231, i8* %arrayidx363, align 1
  %232 = load i8*, i8** %pix, align 8
  %arrayidx364 = getelementptr inbounds i8, i8* %232, i64 2
  %233 = load i8, i8* %arrayidx364, align 1
  %arrayidx365 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 1
  store i8 %233, i8* %arrayidx365, align 1
  %234 = load i8*, i8** %pix, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %234, i64 1
  %235 = load i8, i8* %arrayidx366, align 1
  %arrayidx367 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 2
  store i8 %235, i8* %arrayidx367, align 1
  %236 = load i8*, i8** %pix, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %236, i64 0
  %237 = load i8, i8* %arrayidx368, align 1
  %arrayidx369 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i64 3
  store i8 %237, i8* %arrayidx369, align 1
  %arraydecay370 = getelementptr inbounds [4 x i8], [4 x i8]* %uc, i32 0, i32 0
  %238 = bitcast i8* %arraydecay370 to float*
  %239 = load float, float* %238, align 4
  store float %239, float* %bpm32, align 4
  br label %if.end.411

if.else.371:                                      ; preds = %if.else.359
  %240 = load i32, i32* @fits_ieee32_motorola, align 4
  %tobool372 = icmp ne i32 %240, 0
  br i1 %tobool372, label %if.then.373, label %if.else.374

if.then.373:                                      ; preds = %if.else.371
  %241 = load i8*, i8** %pix, align 8
  %242 = bitcast i8* %241 to float*
  %243 = load float, float* %242, align 4
  store float %243, float* %bpm32, align 4
  br label %if.end.410

if.else.374:                                      ; preds = %if.else.371
  %244 = load i32, i32* @fits_ieee64_motorola, align 4
  %tobool375 = icmp ne i32 %244, 0
  br i1 %tobool375, label %if.then.376, label %if.else.391

if.then.376:                                      ; preds = %if.else.374
  %245 = bitcast double* %m64 to i8*
  store i8* %245, i8** %uc377, align 8
  %246 = load i8*, i8** %pix, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %246, i64 0
  %247 = load i8, i8* %arrayidx378, align 1
  %248 = load i8*, i8** %uc377, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %248, i64 0
  store i8 %247, i8* %arrayidx379, align 1
  %249 = load i8*, i8** %pix, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %249, i64 1
  %250 = load i8, i8* %arrayidx380, align 1
  %251 = load i8*, i8** %uc377, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %251, i64 1
  store i8 %250, i8* %arrayidx381, align 1
  %252 = load i8*, i8** %pix, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %252, i64 2
  %253 = load i8, i8* %arrayidx382, align 1
  %254 = load i8*, i8** %uc377, align 8
  %arrayidx383 = getelementptr inbounds i8, i8* %254, i64 2
  store i8 %253, i8* %arrayidx383, align 1
  %255 = load i8*, i8** %pix, align 8
  %arrayidx384 = getelementptr inbounds i8, i8* %255, i64 3
  %256 = load i8, i8* %arrayidx384, align 1
  %257 = load i8*, i8** %uc377, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %257, i64 3
  store i8 %256, i8* %arrayidx385, align 1
  %258 = load i8*, i8** %uc377, align 8
  %arrayidx386 = getelementptr inbounds i8, i8* %258, i64 7
  store i8 0, i8* %arrayidx386, align 1
  %259 = load i8*, i8** %uc377, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %259, i64 6
  store i8 0, i8* %arrayidx387, align 1
  %260 = load i8*, i8** %uc377, align 8
  %arrayidx388 = getelementptr inbounds i8, i8* %260, i64 5
  store i8 0, i8* %arrayidx388, align 1
  %261 = load i8*, i8** %uc377, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %261, i64 4
  store i8 0, i8* %arrayidx389, align 1
  %262 = load double, double* %m64, align 8
  %conv390 = fptrunc double %262 to float
  store float %conv390, float* %bpm32, align 4
  br label %if.end.409

if.else.391:                                      ; preds = %if.else.374
  %263 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool392 = icmp ne i32 %263, 0
  br i1 %tobool392, label %if.then.393, label %if.end.408

if.then.393:                                      ; preds = %if.else.391
  %264 = bitcast double* %i64 to i8*
  store i8* %264, i8** %uc394, align 8
  %265 = load i8*, i8** %uc394, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %265, i64 3
  store i8 0, i8* %arrayidx395, align 1
  %266 = load i8*, i8** %uc394, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %266, i64 2
  store i8 0, i8* %arrayidx396, align 1
  %267 = load i8*, i8** %uc394, align 8
  %arrayidx397 = getelementptr inbounds i8, i8* %267, i64 1
  store i8 0, i8* %arrayidx397, align 1
  %268 = load i8*, i8** %uc394, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %268, i64 0
  store i8 0, i8* %arrayidx398, align 1
  %269 = load i8*, i8** %pix, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %269, i64 0
  %270 = load i8, i8* %arrayidx399, align 1
  %271 = load i8*, i8** %uc394, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %271, i64 7
  store i8 %270, i8* %arrayidx400, align 1
  %272 = load i8*, i8** %pix, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %272, i64 1
  %273 = load i8, i8* %arrayidx401, align 1
  %274 = load i8*, i8** %uc394, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %274, i64 6
  store i8 %273, i8* %arrayidx402, align 1
  %275 = load i8*, i8** %pix, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %275, i64 2
  %276 = load i8, i8* %arrayidx403, align 1
  %277 = load i8*, i8** %uc394, align 8
  %arrayidx404 = getelementptr inbounds i8, i8* %277, i64 5
  store i8 %276, i8* %arrayidx404, align 1
  %278 = load i8*, i8** %pix, align 8
  %arrayidx405 = getelementptr inbounds i8, i8* %278, i64 3
  %279 = load i8, i8* %arrayidx405, align 1
  %280 = load i8*, i8** %uc394, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %280, i64 4
  store i8 %279, i8* %arrayidx406, align 1
  %281 = load double, double* %i64, align 8
  %conv407 = fptrunc double %281 to float
  store float %conv407, float* %bpm32, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.393, %if.else.391
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.376
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.373
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.361
  %282 = load float, float* %bpm32, align 4
  %conv412 = fpext float %282 to double
  %283 = load double, double* %scale, align 8
  %mul413 = fmul double %conv412, %283
  %284 = load double, double* %offs, align 8
  %add414 = fadd double %mul413, %284
  %conv415 = fptosi double %add414 to i64
  store i64 %conv415, i64* %tdata, align 8
  %285 = load i64, i64* %tdata, align 8
  %286 = load i64, i64* %tmin, align 8
  %cmp416 = icmp slt i64 %285, %286
  br i1 %cmp416, label %if.then.418, label %if.else.419

if.then.418:                                      ; preds = %if.end.411
  %287 = load i64, i64* %tmin, align 8
  store i64 %287, i64* %tdata, align 8
  br label %if.end.424

if.else.419:                                      ; preds = %if.end.411
  %288 = load i64, i64* %tdata, align 8
  %289 = load i64, i64* %tmax, align 8
  %cmp420 = icmp sgt i64 %288, %289
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %if.else.419
  %290 = load i64, i64* %tmax, align 8
  store i64 %290, i64* %tdata, align 8
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.422, %if.else.419
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.418
  %291 = load i64, i64* %tdata, align 8
  %conv425 = trunc i64 %291 to i8
  %292 = load i8*, i8** %cdata, align 8
  %incdec.ptr426 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr426, i8** %cdata, align 8
  store i8 %conv425, i8* %292, align 1
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.424, %if.then.357
  %293 = load i32, i32* %transcount, align 4
  %inc428 = add nsw i32 %293, 1
  store i32 %inc428, i32* %transcount, align 4
  %294 = load i8*, i8** %pix, align 8
  %add.ptr429 = getelementptr inbounds i8, i8* %294, i64 4
  store i8* %add.ptr429, i8** %pix, align 8
  br label %while.cond.351

while.end.430:                                    ; preds = %while.cond.351
  br label %while.cond.326

while.end.431:                                    ; preds = %while.cond.326
  br label %sw.epilog

sw.bb.432:                                        ; preds = %if.end.36
  br label %while.cond.433

while.cond.433:                                   ; preds = %while.end.506, %sw.bb.432
  %295 = load i32, i32* %npix.addr, align 4
  %cmp434 = icmp sgt i32 %295, 0
  br i1 %cmp434, label %while.body.436, label %while.end.507

while.body.436:                                   ; preds = %while.cond.433
  %296 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp437 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %296, i32 0, i32 4
  %297 = load i32, i32* %bpp437, align 4
  %conv438 = sext i32 %297 to i64
  %div439 = udiv i64 4096, %conv438
  %conv440 = trunc i64 %div439 to i32
  store i32 %conv440, i32* %maxelem, align 4
  %298 = load i32, i32* %maxelem, align 4
  %299 = load i32, i32* %npix.addr, align 4
  %cmp441 = icmp sgt i32 %298, %299
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %while.body.436
  %300 = load i32, i32* %npix.addr, align 4
  store i32 %300, i32* %maxelem, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.443, %while.body.436
  %arraydecay445 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  %301 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist.addr, align 8
  %bpp446 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %301, i32 0, i32 4
  %302 = load i32, i32* %bpp446, align 4
  %conv447 = sext i32 %302 to i64
  %303 = load i32, i32* %maxelem, align 4
  %conv448 = sext i32 %303 to i64
  %304 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ff.addr, align 8
  %fp449 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %304, i32 0, i32 0
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %fp449, align 8
  %call450 = call i64 @fread(i8* %arraydecay445, i64 %conv447, i64 %conv448, %struct._IO_FILE* %305)
  %306 = load i32, i32* %maxelem, align 4
  %conv451 = sext i32 %306 to i64
  %cmp452 = icmp ne i64 %call450, %conv451
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.end.444
  store i32 -1, i32* %retval
  br label %return

if.end.455:                                       ; preds = %if.end.444
  %307 = load i32, i32* %maxelem, align 4
  %308 = load i32, i32* %npix.addr, align 4
  %sub456 = sub nsw i32 %308, %307
  store i32 %sub456, i32* %npix.addr, align 4
  %arraydecay457 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixbuffer, i32 0, i32 0
  store i8* %arraydecay457, i8** %pix, align 8
  br label %while.cond.458

while.cond.458:                                   ; preds = %if.end.503, %if.end.455
  %309 = load i32, i32* %maxelem, align 4
  %dec459 = add nsw i32 %309, -1
  store i32 %dec459, i32* %maxelem, align 4
  %tobool460 = icmp ne i32 %309, 0
  br i1 %tobool460, label %while.body.461, label %while.end.506

while.body.461:                                   ; preds = %while.cond.458
  %310 = load i8*, i8** %pix, align 8
  %call462 = call i32 @fits_nan_64(i8* %310)
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.then.464, label %if.else.466

if.then.464:                                      ; preds = %while.body.461
  %311 = load i8, i8* %creplace, align 1
  %312 = load i8*, i8** %cdata, align 8
  %incdec.ptr465 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %incdec.ptr465, i8** %cdata, align 8
  store i8 %311, i8* %312, align 1
  br label %if.end.503

if.else.466:                                      ; preds = %while.body.461
  %313 = load i32, i32* @fits_ieee64_intel, align 4
  %tobool467 = icmp ne i32 %313, 0
  br i1 %tobool467, label %if.then.468, label %if.else.487

if.then.468:                                      ; preds = %if.else.466
  %314 = load i8*, i8** %pix, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %314, i64 7
  %315 = load i8, i8* %arrayidx470, align 1
  %arrayidx471 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 0
  store i8 %315, i8* %arrayidx471, align 1
  %316 = load i8*, i8** %pix, align 8
  %arrayidx472 = getelementptr inbounds i8, i8* %316, i64 6
  %317 = load i8, i8* %arrayidx472, align 1
  %arrayidx473 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 1
  store i8 %317, i8* %arrayidx473, align 1
  %318 = load i8*, i8** %pix, align 8
  %arrayidx474 = getelementptr inbounds i8, i8* %318, i64 5
  %319 = load i8, i8* %arrayidx474, align 1
  %arrayidx475 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 2
  store i8 %319, i8* %arrayidx475, align 1
  %320 = load i8*, i8** %pix, align 8
  %arrayidx476 = getelementptr inbounds i8, i8* %320, i64 4
  %321 = load i8, i8* %arrayidx476, align 1
  %arrayidx477 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 3
  store i8 %321, i8* %arrayidx477, align 1
  %322 = load i8*, i8** %pix, align 8
  %arrayidx478 = getelementptr inbounds i8, i8* %322, i64 3
  %323 = load i8, i8* %arrayidx478, align 1
  %arrayidx479 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 4
  store i8 %323, i8* %arrayidx479, align 1
  %324 = load i8*, i8** %pix, align 8
  %arrayidx480 = getelementptr inbounds i8, i8* %324, i64 2
  %325 = load i8, i8* %arrayidx480, align 1
  %arrayidx481 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 5
  store i8 %325, i8* %arrayidx481, align 1
  %326 = load i8*, i8** %pix, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %326, i64 1
  %327 = load i8, i8* %arrayidx482, align 1
  %arrayidx483 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 6
  store i8 %327, i8* %arrayidx483, align 1
  %328 = load i8*, i8** %pix, align 8
  %arrayidx484 = getelementptr inbounds i8, i8* %328, i64 0
  %329 = load i8, i8* %arrayidx484, align 1
  %arrayidx485 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i64 7
  store i8 %329, i8* %arrayidx485, align 1
  %arraydecay486 = getelementptr inbounds [8 x i8], [8 x i8]* %uc469, i32 0, i32 0
  %330 = bitcast i8* %arraydecay486 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %bpm64, align 8
  br label %if.end.488

if.else.487:                                      ; preds = %if.else.466
  %332 = load i8*, i8** %pix, align 8
  %333 = bitcast i8* %332 to double*
  %334 = load double, double* %333, align 8
  store double %334, double* %bpm64, align 8
  br label %if.end.488

if.end.488:                                       ; preds = %if.else.487, %if.then.468
  %335 = load double, double* %bpm64, align 8
  %336 = load double, double* %scale, align 8
  %mul489 = fmul double %335, %336
  %337 = load double, double* %offs, align 8
  %add490 = fadd double %mul489, %337
  %conv491 = fptosi double %add490 to i64
  store i64 %conv491, i64* %tdata, align 8
  %338 = load i64, i64* %tdata, align 8
  %339 = load i64, i64* %tmin, align 8
  %cmp492 = icmp slt i64 %338, %339
  br i1 %cmp492, label %if.then.494, label %if.else.495

if.then.494:                                      ; preds = %if.end.488
  %340 = load i64, i64* %tmin, align 8
  store i64 %340, i64* %tdata, align 8
  br label %if.end.500

if.else.495:                                      ; preds = %if.end.488
  %341 = load i64, i64* %tdata, align 8
  %342 = load i64, i64* %tmax, align 8
  %cmp496 = icmp sgt i64 %341, %342
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.else.495
  %343 = load i64, i64* %tmax, align 8
  store i64 %343, i64* %tdata, align 8
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.498, %if.else.495
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.494
  %344 = load i64, i64* %tdata, align 8
  %conv501 = trunc i64 %344 to i8
  %345 = load i8*, i8** %cdata, align 8
  %incdec.ptr502 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr502, i8** %cdata, align 8
  store i8 %conv501, i8* %345, align 1
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.500, %if.then.464
  %346 = load i32, i32* %transcount, align 4
  %inc504 = add nsw i32 %346, 1
  store i32 %inc504, i32* %transcount, align 4
  %347 = load i8*, i8** %pix, align 8
  %add.ptr505 = getelementptr inbounds i8, i8* %347, i64 8
  store i8* %add.ptr505, i8** %pix, align 8
  br label %while.cond.458

while.end.506:                                    ; preds = %while.cond.458
  br label %while.cond.433

while.end.507:                                    ; preds = %while.cond.433
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.36, %while.end.507, %while.end.431, %while.end.324, %while.end.210, %while.end.111
  %348 = load i32, i32* %transcount, align 4
  store i32 %348, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.454, %if.then.347, %if.then.233, %if.then.134, %if.then.53, %if.then.9, %if.then.5, %if.then
  %349 = load i32, i32* %retval
  ret i32 %349
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fits_nan_32(i8* %v) #0 {
entry:
  %v.addr = alloca i8*, align 8
  %k = alloca i64, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load i8*, i8** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %v.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load i8*, i8** %v.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load i8*, i8** %v.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %conv11 = sext i32 %or10 to i64
  store i64 %conv11, i64* %k, align 8
  %8 = load i64, i64* %k, align 8
  %and = and i64 %8, 2147483647
  store i64 %and, i64* %k, align 8
  %9 = load i64, i64* %k, align 8
  %cmp = icmp uge i64 %9, 2139095039
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %k, align 8
  %cmp13 = icmp ule i64 %10, 2147483647
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %11 = load i64, i64* %k, align 8
  %cmp15 = icmp uge i64 %11, 1
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %12 = load i64, i64* %k, align 8
  %cmp17 = icmp ule i64 %12, 8388608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %13 = phi i1 [ false, %lor.rhs ], [ %cmp17, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %14 = phi i1 [ true, %land.lhs.true ], [ %13, %land.end ]
  %lor.ext = zext i1 %14 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @fits_nan_64(i8* %v) #0 {
entry:
  %v.addr = alloca i8*, align 8
  %k = alloca i64, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load i8*, i8** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %v.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load i8*, i8** %v.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load i8*, i8** %v.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %conv11 = sext i32 %or10 to i64
  store i64 %conv11, i64* %k, align 8
  %8 = load i64, i64* %k, align 8
  %and = and i64 %8, 2147483647
  store i64 %and, i64* %k, align 8
  %9 = load i64, i64* %k, align 8
  %cmp = icmp uge i64 %9, 2139095039
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %k, align 8
  %cmp13 = icmp ule i64 %10, 2147483647
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %11 = load i64, i64* %k, align 8
  %cmp15 = icmp uge i64 %11, 1
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %12 = load i64, i64* %k, align 8
  %cmp17 = icmp ule i64 %12, 8388608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %13 = phi i1 [ false, %lor.rhs ], [ %cmp17, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %14 = phi i1 [ true, %land.lhs.true ], [ %13, %land.end ]
  %lor.ext = zext i1 %14 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fits_delete_hdulist(%struct.fits_hdu_list* %hl) #0 {
entry:
  %hl.addr = alloca %struct.fits_hdu_list*, align 8
  %next = alloca %struct.fits_hdu_list*, align 8
  store %struct.fits_hdu_list* %hl, %struct.fits_hdu_list** %hl.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hl.addr, align 8
  %cmp = icmp ne %struct.fits_hdu_list* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hl.addr, align 8
  %header_record_list = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %1, i32 0, i32 24
  %2 = load %struct.fits_record_list*, %struct.fits_record_list** %header_record_list, align 8
  call void @fits_delete_recordlist(%struct.fits_record_list* %2)
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hl.addr, align 8
  %next_hdu = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 25
  %4 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %next_hdu, align 8
  store %struct.fits_hdu_list* %4, %struct.fits_hdu_list** %next, align 8
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hl.addr, align 8
  %next_hdu1 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 25
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %next_hdu1, align 8
  %6 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hl.addr, align 8
  %7 = bitcast %struct.fits_hdu_list* %6 to i8*
  call void @free(i8* %7) #4
  %8 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %next, align 8
  store %struct.fits_hdu_list* %8, %struct.fits_hdu_list** %hl.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare noalias i8* @g_strdup(i8*) #3

declare i8* @g_strchug(i8*) #3

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_toupper(i8 signext) #5

declare double @g_ascii_strtod(i8*, i8**) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @g_free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
