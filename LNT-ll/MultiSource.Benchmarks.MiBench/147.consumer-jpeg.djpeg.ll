; ModuleID = './MultiSource.Benchmarks.MiBench/147.consumer-jpeg.djpeg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.djpeg_dest_struct = type { void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, %struct._IO_FILE*, i8**, i32 }

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x i8*] [i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@requested_fmt = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Comment, length %ld:\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"colours\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"quantize\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"quantise\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.67 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's DJPEG, version %s\0A%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"nosmooth\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"onepass\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"os2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"  -colors N      Reduce image to no more than N colors\0A\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"  -fast          Fast, low-quality processing\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"  -grayscale     Force grayscale output\0A\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"  -bmp           Select BMP output format (Windows style)%s\0A\00", align 1
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"  -gif           Select GIF output format%s\0A\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"  -os2           Select BMP output format (OS/2 style)%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"  -targa         Select Targa output format%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"  -dither fs     Use F-S dithering (default)\0A\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"  -dither none   Don't use dithering in quantization\0A\00", align 1
@.str.106 = private unnamed_addr constant [63 x i8] c"  -dither ordered  Use ordered dither (medium speed, quality)\0A\00", align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"  -map FILE      Map to colors used in named image file\0A\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"  -nosmooth      Don't use high-quality upsampling\0A\00", align 1
@.str.109 = private unnamed_addr constant [62 x i8] c"  -onepass       Use 1-pass quantization (fast, low quality)\0A\00", align 1
@.str.110 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cinfo = alloca %struct.jpeg_decompress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %dest_mgr = alloca %struct.djpeg_dest_struct*, align 8
  %input_file = alloca %struct._IO_FILE*, align 8
  %output_file = alloca %struct._IO_FILE*, align 8
  %num_scanlines = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.djpeg_dest_struct* null, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @progname, align 8
  %2 = load i8*, i8** @progname, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** @progname, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %jerr)
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %cinfo, i32 0, i32 0
  store %struct.jpeg_error_mgr* %call, %struct.jpeg_error_mgr** %err, align 8
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* %cinfo, i32 61, i64 616)
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i32 0, i32 0), i8*** %addon_message_table, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 12
  store i32 1000, i32* %first_addon_message, align 4
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 13
  store i32 1043, i32* %last_addon_message, align 4
  call void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %cinfo, i32 254, i32 (%struct.jpeg_decompress_struct*)* @COM_handler)
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %call4 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %cinfo, i32 %5, i8** %6, i32 0, i32 0)
  store i32 %call4, i32* %file_index, align 4
  %7 = load i32, i32* %file_index, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** @progname, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %10)
  call void @usage()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %11 = load i32, i32* %file_index, align 4
  %12 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %13 = load i32, i32* %file_index, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx13, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %input_file, align 8
  %cmp15 = icmp eq %struct._IO_FILE* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** @progname, align 8
  %18 = load i32, i32* %file_index, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %19, i64 %idxprom18
  %20 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %17, i8* %20)
  call void @exit(i32 1) #5
  unreachable

if.end.21:                                        ; preds = %if.then.12
  br label %if.end.23

if.else:                                          ; preds = %if.end.9
  %call22 = call %struct._IO_FILE* @read_stdin()
  store %struct._IO_FILE* %call22, %struct._IO_FILE** %input_file, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.21
  %21 = load i8*, i8** @outfilename, align 8
  %cmp24 = icmp ne i8* %21, null
  br i1 %cmp24, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %if.end.23
  %22 = load i8*, i8** @outfilename, align 8
  %call27 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call27, %struct._IO_FILE** %output_file, align 8
  %cmp28 = icmp eq %struct._IO_FILE* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8*, i8** @progname, align 8
  %25 = load i8*, i8** @outfilename, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %24, i8* %25)
  call void @exit(i32 1) #5
  unreachable

if.end.32:                                        ; preds = %if.then.26
  br label %if.end.35

if.else.33:                                       ; preds = %if.end.23
  %call34 = call %struct._IO_FILE* @write_stdout()
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %output_file, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %26)
  %call36 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %cinfo, i32 1)
  %27 = load i32, i32* %argc.addr, align 4
  %28 = load i8**, i8*** %argv.addr, align 8
  %call37 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %cinfo, i32 %27, i8** %28, i32 0, i32 1)
  store i32 %call37, i32* %file_index, align 4
  %29 = load i32, i32* @requested_fmt, align 4
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.39
    i32 1, label %sw.bb.41
    i32 3, label %sw.bb.43
    i32 5, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.35
  %call38 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* %cinfo, i32 0)
  store %struct.djpeg_dest_struct* %call38, %struct.djpeg_dest_struct** %dest_mgr, align 8
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.35
  %call40 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* %cinfo, i32 1)
  store %struct.djpeg_dest_struct* %call40, %struct.djpeg_dest_struct** %dest_mgr, align 8
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.35
  %call42 = call %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* %cinfo)
  store %struct.djpeg_dest_struct* %call42, %struct.djpeg_dest_struct** %dest_mgr, align 8
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.35
  %call44 = call %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* %cinfo)
  store %struct.djpeg_dest_struct* %call44, %struct.djpeg_dest_struct** %dest_mgr, align 8
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.35
  %call46 = call %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* %cinfo)
  store %struct.djpeg_dest_struct* %call46, %struct.djpeg_dest_struct** %dest_mgr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %cinfo, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 1042, i32* %msg_code, align 4
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %cinfo, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %cinfo to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %33)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.45, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %35 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %output_file49 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %35, i32 0, i32 3
  store %struct._IO_FILE* %34, %struct._IO_FILE** %output_file49, align 8
  %call50 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %cinfo)
  %36 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %start_output, align 8
  %38 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  call void %37(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %38)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %cinfo, i32 0, i32 33
  %39 = load i32, i32* %output_scanline, align 4
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %cinfo, i32 0, i32 27
  %40 = load i32, i32* %output_height, align 4
  %cmp51 = icmp ult i32 %39, %40
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %41, i32 0, i32 4
  %42 = load i8**, i8*** %buffer, align 8
  %43 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %43, i32 0, i32 5
  %44 = load i32, i32* %buffer_height, align 4
  %call53 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %cinfo, i8** %42, i32 %44)
  store i32 %call53, i32* %num_scanlines, align 4
  %45 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %45, i32 0, i32 1
  %46 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows, align 8
  %47 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %48 = load i32, i32* %num_scanlines, align 4
  call void %46(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %47, i32 %48)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %49, i32 0, i32 2
  %50 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %finish_output, align 8
  %51 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dest_mgr, align 8
  call void %50(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %51)
  %call54 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %cinfo)
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %cinfo)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp55 = icmp ne %struct._IO_FILE* %52, %53
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %while.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %54)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %while.end
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp60 = icmp ne %struct._IO_FILE* %55, %56
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call63 = call i32 @fclose(%struct._IO_FILE* %57)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 8
  %58 = load i64, i64* %num_warnings, align 8
  %tobool = icmp ne i64 %58, 0
  %cond = select i1 %tobool, i32 2, i32 0
  call void @exit(i32 %cond) #5
  unreachable

return:                                           ; No predecessors!
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct*, i32, i64) #1

declare void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct*, i32, i32 (%struct.jpeg_decompress_struct*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @COM_handler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %traceit = alloca i32, align 4
  %length = alloca i64, align 8
  %ch = alloca i32, align 4
  %lastch = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 7
  %2 = load i32, i32* %trace_level, align 4
  %cmp = icmp sge i32 %2, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %traceit, align 4
  store i32 0, i32* %lastch, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* %3)
  %shl = shl i32 %call, 8
  %conv1 = zext i32 %shl to i64
  store i64 %conv1, i64* %length, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call2 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* %4)
  %conv3 = zext i32 %call2 to i64
  %5 = load i64, i64* %length, align 8
  %add = add nsw i64 %5, %conv3
  store i64 %add, i64* %length, align 8
  %6 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %6, 2
  store i64 %sub, i64* %length, align 8
  %7 = load i32, i32* %traceit, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i64, i64* %length, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end
  %10 = load i64, i64* %length, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %length, align 8
  %cmp5 = icmp sge i64 %dec, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call7 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* %11)
  store i32 %call7, i32* %ch, align 4
  %12 = load i32, i32* %traceit, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.end.39

if.then.9:                                        ; preds = %while.body
  %13 = load i32, i32* %ch, align 4
  %cmp10 = icmp eq i32 %13, 13
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.38

if.else:                                          ; preds = %if.then.9
  %15 = load i32, i32* %ch, align 4
  %cmp14 = icmp eq i32 %15, 10
  br i1 %cmp14, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %if.else
  %16 = load i32, i32* %lastch, align 4
  %cmp17 = icmp ne i32 %16, 13
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.37

if.else.22:                                       ; preds = %if.else
  %18 = load i32, i32* %ch, align 4
  %cmp23 = icmp eq i32 %18, 92
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else.22
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.36

if.else.27:                                       ; preds = %if.else.22
  %20 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %20 to i64
  %call28 = call i16** @__ctype_b_loc() #6
  %21 = load i16*, i16** %call28, align 8
  %arrayidx = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv29 = zext i16 %22 to i32
  %and = and i32 %conv29, 16384
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  %23 = load i32, i32* %ch, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 @_IO_putc(i32 %23, %struct._IO_FILE* %24)
  br label %if.end.35

if.else.33:                                       ; preds = %if.else.27
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i32, i32* %ch, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %26)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.12
  %27 = load i32, i32* %ch, align 4
  store i32 %27, i32* %lastch, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %traceit, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %while.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %while.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_decompress_struct* %cinfo, i32 %argc, i8** %argv, i32 %last_file_arg_seen, i32 %for_real) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %last_file_arg_seen.addr = alloca i32, align 4
  %for_real.addr = alloca i32, align 4
  %argn = alloca i32, align 4
  %arg = alloca i8*, align 8
  %val = alloca i32, align 4
  %mapfile = alloca %struct._IO_FILE*, align 8
  %lval = alloca i64, align 8
  %ch = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %last_file_arg_seen, i32* %last_file_arg_seen.addr, align 4
  store i32 %for_real, i32* %for_real.addr, align 4
  store i32 3, i32* @requested_fmt, align 4
  store i8* null, i8** @outfilename, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 7
  store i32 0, i32* %trace_level, align 4
  store i32 1, i32* %argn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %argn, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %argn, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %arg, align 8
  %7 = load i8*, i8** %arg, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %argn, align 4
  %10 = load i32, i32* %last_file_arg_seen.addr, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** @outfilename, align 8
  br label %for.inc

if.end:                                           ; preds = %if.then
  br label %for.end

if.end.6:                                         ; preds = %for.body
  %11 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %12 = load i8*, i8** %arg, align 8
  %call = call i32 @keymatch(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  store i32 0, i32* @requested_fmt, align 4
  br label %if.end.254

if.else:                                          ; preds = %if.end.6
  %13 = load i8*, i8** %arg, align 8
  %call8 = call i32 @keymatch(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %14 = load i8*, i8** %arg, align 8
  %call10 = call i32 @keymatch(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %15 = load i8*, i8** %arg, align 8
  %call13 = call i32 @keymatch(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %16 = load i8*, i8** %arg, align 8
  %call16 = call i32 @keymatch(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.30

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false, %if.else
  %17 = load i32, i32* %argn, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %argn, align 4
  %18 = load i32, i32* %argc.addr, align 4
  %cmp19 = icmp sge i32 %inc, %18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  call void @usage()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %19 = load i32, i32* %argn, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %20, i64 %idxprom23
  %21 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32* %val) #7
  %cmp26 = icmp ne i32 %call25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.22
  call void @usage()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.22
  %22 = load i32, i32* %val, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 22
  store i32 %22, i32* %desired_number_of_colors, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 19
  store i32 1, i32* %quantize_colors, align 4
  br label %if.end.253

if.else.30:                                       ; preds = %lor.lhs.false.15
  %25 = load i8*, i8** %arg, align 8
  %call31 = call i32 @keymatch(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.62

if.then.33:                                       ; preds = %if.else.30
  %26 = load i32, i32* %argn, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, i32* %argn, align 4
  %27 = load i32, i32* %argc.addr, align 4
  %cmp35 = icmp sge i32 %inc34, %27
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  call void @usage()
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.33
  %28 = load i32, i32* %argn, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %29, i64 %idxprom39
  %30 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 @keymatch(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 1)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.38
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 16
  store i32 0, i32* %dct_method, align 4
  br label %if.end.61

if.else.44:                                       ; preds = %if.end.38
  %32 = load i32, i32* %argn, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %33, i64 %idxprom45
  %34 = load i8*, i8** %arrayidx46, align 8
  %call47 = call i32 @keymatch(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 2)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.44
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 16
  store i32 1, i32* %dct_method50, align 4
  br label %if.end.60

if.else.51:                                       ; preds = %if.else.44
  %36 = load i32, i32* %argn, align 4
  %idxprom52 = sext i32 %36 to i64
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %37, i64 %idxprom52
  %38 = load i8*, i8** %arrayidx53, align 8
  %call54 = call i32 @keymatch(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 2)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.51
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 16
  store i32 2, i32* %dct_method57, align 4
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.51
  call void @usage()
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.43
  br label %if.end.252

if.else.62:                                       ; preds = %if.else.30
  %40 = load i8*, i8** %arg, align 8
  %call63 = call i32 @keymatch(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 2)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.94

if.then.65:                                       ; preds = %if.else.62
  %41 = load i32, i32* %argn, align 4
  %inc66 = add nsw i32 %41, 1
  store i32 %inc66, i32* %argn, align 4
  %42 = load i32, i32* %argc.addr, align 4
  %cmp67 = icmp sge i32 %inc66, %42
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.65
  call void @usage()
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.65
  %43 = load i32, i32* %argn, align 4
  %idxprom71 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %44, i64 %idxprom71
  %45 = load i8*, i8** %arrayidx72, align 8
  %call73 = call i32 @keymatch(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 2)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.end.70
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 20
  store i32 2, i32* %dither_mode, align 4
  br label %if.end.93

if.else.76:                                       ; preds = %if.end.70
  %47 = load i32, i32* %argn, align 4
  %idxprom77 = sext i32 %47 to i64
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %48, i64 %idxprom77
  %49 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i32 @keymatch(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 2)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.else.76
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 20
  store i32 0, i32* %dither_mode82, align 4
  br label %if.end.92

if.else.83:                                       ; preds = %if.else.76
  %51 = load i32, i32* %argn, align 4
  %idxprom84 = sext i32 %51 to i64
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %52, i64 %idxprom84
  %53 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i32 @keymatch(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 2)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else.83
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 20
  store i32 1, i32* %dither_mode89, align 4
  br label %if.end.91

if.else.90:                                       ; preds = %if.else.83
  call void @usage()
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.then.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.75
  br label %if.end.251

if.else.94:                                       ; preds = %if.else.62
  %55 = load i8*, i8** %arg, align 8
  %call95 = call i32 @keymatch(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 1)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.100, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.else.94
  %56 = load i8*, i8** %arg, align 8
  %call98 = call i32 @keymatch(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 1)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.108

if.then.100:                                      ; preds = %lor.lhs.false.97, %if.else.94
  %57 = load i32, i32* @parse_switches.printed_version, align 4
  %tobool101 = icmp ne i32 %57, 0
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.then.100
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0))
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.100
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err105, align 8
  %trace_level106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 7
  %61 = load i32, i32* %trace_level106, align 4
  %inc107 = add nsw i32 %61, 1
  store i32 %inc107, i32* %trace_level106, align 4
  br label %if.end.250

if.else.108:                                      ; preds = %lor.lhs.false.97
  %62 = load i8*, i8** %arg, align 8
  %call109 = call i32 @keymatch(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.119

if.then.111:                                      ; preds = %if.else.108
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 21
  store i32 0, i32* %two_pass_quantize, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 20
  store i32 1, i32* %dither_mode112, align 4
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 19
  %66 = load i32, i32* %quantize_colors113, align 4
  %tobool114 = icmp ne i32 %66, 0
  br i1 %tobool114, label %if.end.117, label %if.then.115

if.then.115:                                      ; preds = %if.then.111
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 22
  store i32 216, i32* %desired_number_of_colors116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.then.111
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 16
  store i32 1, i32* %dct_method118, align 4
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 17
  store i32 0, i32* %do_fancy_upsampling, align 4
  br label %if.end.249

if.else.119:                                      ; preds = %if.else.108
  %70 = load i8*, i8** %arg, align 8
  %call120 = call i32 @keymatch(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i32 1)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.else.119
  store i32 1, i32* @requested_fmt, align 4
  br label %if.end.248

if.else.123:                                      ; preds = %if.else.119
  %71 = load i8*, i8** %arg, align 8
  %call124 = call i32 @keymatch(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 2)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.else.123
  %72 = load i8*, i8** %arg, align 8
  %call127 = call i32 @keymatch(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 2)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.else.123
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 10
  store i32 1, i32* %out_color_space, align 4
  br label %if.end.247

if.else.130:                                      ; preds = %lor.lhs.false.126
  %74 = load i8*, i8** %arg, align 8
  %call131 = call i32 @keymatch(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 3)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.154

if.then.133:                                      ; preds = %if.else.130
  %75 = load i32, i32* %argn, align 4
  %inc134 = add nsw i32 %75, 1
  store i32 %inc134, i32* %argn, align 4
  %76 = load i32, i32* %argc.addr, align 4
  %cmp135 = icmp sge i32 %inc134, %76
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.133
  call void @usage()
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.133
  %77 = load i32, i32* %for_real.addr, align 4
  %tobool139 = icmp ne i32 %77, 0
  br i1 %tobool139, label %if.then.140, label %if.end.153

if.then.140:                                      ; preds = %if.end.138
  %78 = load i32, i32* %argn, align 4
  %idxprom141 = sext i32 %78 to i64
  %79 = load i8**, i8*** %argv.addr, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %79, i64 %idxprom141
  %80 = load i8*, i8** %arrayidx142, align 8
  %call143 = call %struct._IO_FILE* @fopen(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call143, %struct._IO_FILE** %mapfile, align 8
  %cmp144 = icmp eq %struct._IO_FILE* %call143, null
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %if.then.140
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** @progname, align 8
  %83 = load i32, i32* %argn, align 4
  %idxprom147 = sext i32 %83 to i64
  %84 = load i8**, i8*** %argv.addr, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %84, i64 %idxprom147
  %85 = load i8*, i8** %arrayidx148, align 8
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %82, i8* %85)
  call void @exit(i32 1) #5
  unreachable

if.end.150:                                       ; preds = %if.then.140
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %mapfile, align 8
  call void @read_color_map(%struct.jpeg_decompress_struct* %86, %struct._IO_FILE* %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %mapfile, align 8
  %call151 = call i32 @fclose(%struct._IO_FILE* %88)
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 19
  store i32 1, i32* %quantize_colors152, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.150, %if.end.138
  br label %if.end.246

if.else.154:                                      ; preds = %if.else.130
  %90 = load i8*, i8** %arg, align 8
  %call155 = call i32 @keymatch(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 3)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.else.180

if.then.157:                                      ; preds = %if.else.154
  store i8 120, i8* %ch, align 1
  %91 = load i32, i32* %argn, align 4
  %inc158 = add nsw i32 %91, 1
  store i32 %inc158, i32* %argn, align 4
  %92 = load i32, i32* %argc.addr, align 4
  %cmp159 = icmp sge i32 %inc158, %92
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.157
  call void @usage()
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.then.157
  %93 = load i32, i32* %argn, align 4
  %idxprom163 = sext i32 %93 to i64
  %94 = load i8**, i8*** %argv.addr, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %94, i64 %idxprom163
  %95 = load i8*, i8** %arrayidx164, align 8
  %call165 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i64* %lval, i8* %ch) #7
  %cmp166 = icmp slt i32 %call165, 1
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.162
  call void @usage()
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.162
  %96 = load i8, i8* %ch, align 1
  %conv170 = sext i8 %96 to i32
  %cmp171 = icmp eq i32 %conv170, 109
  br i1 %cmp171, label %if.then.177, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.end.169
  %97 = load i8, i8* %ch, align 1
  %conv174 = sext i8 %97 to i32
  %cmp175 = icmp eq i32 %conv174, 77
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %lor.lhs.false.173, %if.end.169
  %98 = load i64, i64* %lval, align 8
  %mul = mul nsw i64 %98, 1000
  store i64 %mul, i64* %lval, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %lor.lhs.false.173
  %99 = load i64, i64* %lval, align 8
  %mul179 = mul nsw i64 %99, 1000
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 1
  %101 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %101, i32 0, i32 11
  store i64 %mul179, i64* %max_memory_to_use, align 8
  br label %if.end.245

if.else.180:                                      ; preds = %if.else.154
  %102 = load i8*, i8** %arg, align 8
  %call181 = call i32 @keymatch(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i32 3)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then.183, label %if.else.185

if.then.183:                                      ; preds = %if.else.180
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_fancy_upsampling184 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 17
  store i32 0, i32* %do_fancy_upsampling184, align 4
  br label %if.end.244

if.else.185:                                      ; preds = %if.else.180
  %104 = load i8*, i8** %arg, align 8
  %call186 = call i32 @keymatch(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 3)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.else.190

if.then.188:                                      ; preds = %if.else.185
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %two_pass_quantize189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 21
  store i32 0, i32* %two_pass_quantize189, align 4
  br label %if.end.243

if.else.190:                                      ; preds = %if.else.185
  %106 = load i8*, i8** %arg, align 8
  %call191 = call i32 @keymatch(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i32 3)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %if.else.190
  store i32 2, i32* @requested_fmt, align 4
  br label %if.end.242

if.else.194:                                      ; preds = %if.else.190
  %107 = load i8*, i8** %arg, align 8
  %call195 = call i32 @keymatch(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i32 4)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.else.205

if.then.197:                                      ; preds = %if.else.194
  %108 = load i32, i32* %argn, align 4
  %inc198 = add nsw i32 %108, 1
  store i32 %inc198, i32* %argn, align 4
  %109 = load i32, i32* %argc.addr, align 4
  %cmp199 = icmp sge i32 %inc198, %109
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.then.197
  call void @usage()
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.then.197
  %110 = load i32, i32* %argn, align 4
  %idxprom203 = sext i32 %110 to i64
  %111 = load i8**, i8*** %argv.addr, align 8
  %arrayidx204 = getelementptr inbounds i8*, i8** %111, i64 %idxprom203
  %112 = load i8*, i8** %arrayidx204, align 8
  store i8* %112, i8** @outfilename, align 8
  br label %if.end.241

if.else.205:                                      ; preds = %if.else.194
  %113 = load i8*, i8** %arg, align 8
  %call206 = call i32 @keymatch(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i32 1)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then.211, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %if.else.205
  %114 = load i8*, i8** %arg, align 8
  %call209 = call i32 @keymatch(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 1)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %lor.lhs.false.208, %if.else.205
  store i32 3, i32* @requested_fmt, align 4
  br label %if.end.240

if.else.212:                                      ; preds = %lor.lhs.false.208
  %115 = load i8*, i8** %arg, align 8
  %call213 = call i32 @keymatch(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 1)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %if.else.212
  store i32 4, i32* @requested_fmt, align 4
  br label %if.end.239

if.else.216:                                      ; preds = %if.else.212
  %116 = load i8*, i8** %arg, align 8
  %call217 = call i32 @keymatch(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then.219, label %if.else.232

if.then.219:                                      ; preds = %if.else.216
  %117 = load i32, i32* %argn, align 4
  %inc220 = add nsw i32 %117, 1
  store i32 %inc220, i32* %argn, align 4
  %118 = load i32, i32* %argc.addr, align 4
  %cmp221 = icmp sge i32 %inc220, %118
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.then.219
  call void @usage()
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.then.219
  %119 = load i32, i32* %argn, align 4
  %idxprom225 = sext i32 %119 to i64
  %120 = load i8**, i8*** %argv.addr, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %120, i64 %idxprom225
  %121 = load i8*, i8** %arrayidx226, align 8
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 11
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 12
  %call227 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32* %scale_num, i32* %scale_denom) #7
  %cmp228 = icmp ne i32 %call227, 2
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.224
  call void @usage()
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.end.224
  br label %if.end.238

if.else.232:                                      ; preds = %if.else.216
  %124 = load i8*, i8** %arg, align 8
  %call233 = call i32 @keymatch(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 1)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %if.else.232
  store i32 5, i32* @requested_fmt, align 4
  br label %if.end.237

if.else.236:                                      ; preds = %if.else.232
  call void @usage()
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.236, %if.then.235
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.231
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.215
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.211
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.202
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.193
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.188
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.183
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.178
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.153
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.129
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.122
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.117
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.104
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.93
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.61
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.29
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.then.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.254, %if.then.5
  %125 = load i32, i32* %argn, align 4
  %inc255 = add nsw i32 %125, 1
  store i32 %inc255, i32* %argn, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %126 = load i32, i32* %argn, align 4
  ret i32 %126
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.88, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.89, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.90, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.91, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.100, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.105, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.106, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.107, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.108, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.109, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.110, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.111, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @read_stdin() #1

declare %struct._IO_FILE* @write_stdout() #1

declare void @jpeg_stdio_src(%struct.jpeg_decompress_struct*, %struct._IO_FILE*) #1

declare i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct*, i32) #1

declare %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct*) #1

declare %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct*) #1

declare %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct*) #1

declare i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i8**, i32) #1

declare i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_getc(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 1
  %3 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 3
  %5 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %5(%struct.jpeg_decompress_struct* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 1
  %15 = load i64, i64* %bytes_in_buffer4, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %bytes_in_buffer4, align 8
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %18 = load i8, i8* %17, align 1
  %conv = zext i8 %18 to i32
  ret i32 %conv
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @keymatch(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare void @read_color_map(%struct.jpeg_decompress_struct*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
