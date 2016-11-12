; ModuleID = './plug-ins/common/file-csource.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.Config = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, double }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"file-csource-save\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Dump image data in RGB(A) format for C source\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"CSource cannot be run non-interactively.\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Tim Janik\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"C source code\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"text/x-csrc\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@config = internal global %struct.Config { i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, double 1.000000e+02 }, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"gimp_image\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"file-csource\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"C Source\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"C-Source\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"_Prefixed name:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Co_mment:\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"_Save comment to file\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"_Use GLib types (guint8*)\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Us_e macros instead of struct\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Use _1 byte Run-Length-Encoding\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Sa_ve alpha channel (RGBA/RGB)\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Save as _RGB565 (16-bit)\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"set-insensitive-1\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"set-insensitive-2\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Op_acity:\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"guint8 \00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"guint  \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"gchar  \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"unsigned int \00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"char         \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"(char*) 0\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"guint8\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"guint\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"gchar\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"/* GIMP %s C-Source image dump %s(%s) */\0A\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"1-byte-run-length-encoded \00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"static const struct {\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"  %s\09 width;\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"  %s\09 height;\0A\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"  %s\09 bytes_per_pixel; /* 2:RGB16, 3:RGB, 4:RGBA */ \0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"  %s\09*comment;\0A\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"  %s\09 %spixel_data[\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"rle_\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%u + 1];\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"%u * %u * %u + 1];\0A\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"} %s = {\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"  %u, %u, %u,\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"#define %s_WIDTH (%u)\0A\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"#define %s_HEIGHT (%u)\0A\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"#define %s_BYTES_PER_PIXEL (%u) /* 3:RGB, 4:RGBA */\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"  %s,\0A\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"#define %s_COMMENT (%s)\0A\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"#define %s_COMMENT \5C\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  \22\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"\5Cn\22%s\0A  \22\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c" \5C\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.89 = private unnamed_addr constant [49 x i8] c"#define %s_%sPIXEL_DATA ((%s*) %s_%spixel_data)\0A\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"RLE_\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"static const %s %s_%spixel_data[\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"%u] =\0A\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"%u * %u * %u + 1] =\0A\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"(\22\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"unhandled drawable type (%d)\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"\22,\0A};\0A\0A\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"\22);\0A\0A\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"file-csource.c\00", align 1
@__func__.rl_encode_rgbx = private unnamed_addr constant [15 x i8] c"rl_encode_rgbx\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"ip < ilimit\00", align 1
@.str.100 = private unnamed_addr constant [67 x i8] c"#define %s_RUN_LENGTH_DECODE(image_buf, rle_data, size, bpp) do \5C\0A\00", align 1
@.str.101 = private unnamed_addr constant [48 x i8] c"{ %s __bpp; %s *__ip; const %s *__il, *__rd; \5C\0A\00", align 1
@.str.102 = private unnamed_addr constant [70 x i8] c"  __bpp = (bpp); __ip = (image_buf); __il = __ip + (size) * __bpp; \5C\0A\00", align 1
@.str.103 = private unnamed_addr constant [52 x i8] c"  __rd = (rle_data); if (__bpp > 3) { /* RGBA */ \5C\0A\00", align 1
@.str.104 = private unnamed_addr constant [49 x i8] c"    while (__ip < __il) { %s __l = *(__rd++); \5C\0A\00", align 1
@.str.105 = private unnamed_addr constant [43 x i8] c"      if (__l & 128) { __l = __l - 128; \5C\0A\00", align 1
@.str.106 = private unnamed_addr constant [79 x i8] c"        do { memcpy (__ip, __rd, 4); __ip += 4; } while (--__l); __rd += 4; \5C\0A\00", align 1
@.str.107 = private unnamed_addr constant [54 x i8] c"      } else { __l *= 4; memcpy (__ip, __rd, __l); \5C\0A\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"               __ip += __l; __rd += __l; } } \5C\0A\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"  } else { /* RGB */ \5C\0A\00", align 1
@.str.110 = private unnamed_addr constant [79 x i8] c"        do { memcpy (__ip, __rd, 3); __ip += 3; } while (--__l); __rd += 3; \5C\0A\00", align 1
@.str.111 = private unnamed_addr constant [54 x i8] c"      } else { __l *= 3; memcpy (__ip, __rd, __l); \5C\0A\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"  } } while (0)\0A\00", align 1
@save_uchar.pad = internal global i8 0, align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"\22\0A  \22\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"\22\0A \22\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0))
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0))
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
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %x = alloca i8*, align 8
  %drawable_type = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.67

land.lhs.true:                                    ; preds = %do.end
  %5 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else.67

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %7 = load i32, i32* %d_int328, align 4
  store i32 %7, i32* %image_ID, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %9 = load i32, i32* %d_int3211, align 4
  store i32 %9, i32* %drawable_ID, align 4
  %10 = load i32, i32* %drawable_ID, align 4
  %call12 = call i32 @gimp_drawable_type(i32 %10)
  store i32 %call12, i32* %drawable_type, align 4
  %call13 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* bitcast (%struct.Config* @config to i8*))
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data15 to i8**
  %12 = load i8*, i8** %d_string, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 0), align 8
  %13 = load i32, i32* %drawable_type, align 4
  %cmp16 = icmp eq i32 %13, 1
  br i1 %cmp16, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load i32, i32* %drawable_type, align 4
  %cmp17 = icmp eq i32 %14, 3
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %15 = load i32, i32* %drawable_type, align 4
  %cmp18 = icmp eq i32 %15, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.then
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then ], [ %cmp18, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  store i32 %lor.ext, i32* getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 5), align 4
  %17 = load i32, i32* %image_ID, align 4
  %call19 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpParasite* %call19, %struct._GimpParasite** %parasite, align 8
  %18 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %18, null
  br i1 %tobool, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %lor.end
  %19 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call21 = call i8* @gimp_parasite_data(%struct._GimpParasite* %19)
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call22 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %20)
  %call23 = call noalias i8* @g_strndup(i8* %call21, i64 %call22)
  store i8* %call23, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %lor.end
  %22 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  store i8* %22, i8** %x, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 0)
  %call24 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 17)
  store i32 %call24, i32* %export, align 4
  %23 = load i32, i32* %export, align 4
  %cmp25 = icmp eq i32 %23, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.27:                                        ; preds = %if.end
  %call28 = call i32 @run_save_dialog(%struct.Config* @config)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.60

if.then.30:                                       ; preds = %if.end.27
  %24 = load i8*, i8** %x, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %cmp31 = icmp ne i8* %24, %25
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.50

land.lhs.true.32:                                 ; preds = %if.then.30
  %26 = load i8*, i8** %x, align 8
  %tobool33 = icmp ne i8* %26, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.then.39

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %27 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %tobool35 = icmp ne i8* %27, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.then.39

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %28 = load i8*, i8** %x, align 8
  %29 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %call37 = call i32 @strcmp(i8* %28, i8* %29) #9
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.end.50, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true.32
  %30 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %tobool40 = icmp ne i8* %30, null
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.44

lor.lhs.false.41:                                 ; preds = %if.then.39
  %31 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx42, align 1
  %tobool43 = icmp ne i8 %32, 0
  br i1 %tobool43, label %if.else, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.then.39
  %33 = load i32, i32* %image_ID, align 4
  %call45 = call i32 @gimp_image_detach_parasite(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.49

if.else:                                          ; preds = %lor.lhs.false.41
  %34 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %call46 = call i64 @strlen(i8* %34) #9
  %add = add i64 %call46, 1
  %conv = trunc i64 %add to i32
  %35 = load i8*, i8** getelementptr inbounds (%struct.Config, %struct.Config* @config, i32 0, i32 2), align 8
  %call47 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 %conv, i8* %35)
  store %struct._GimpParasite* %call47, %struct._GimpParasite** %parasite, align 8
  %36 = load i32, i32* %image_ID, align 4
  %37 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call48 = call i32 @gimp_image_attach_parasite(i32 %36, %struct._GimpParasite* %37)
  %38 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.36, %if.then.30
  %39 = load i32, i32* %image_ID, align 4
  %40 = load i32, i32* %drawable_ID, align 4
  %call51 = call i32 @save_image(%struct.Config* @config, i32 %39, i32 %40, %struct._GError** %error)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.else.57, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %status, align 4
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool54 = icmp ne %struct._GError* %41, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.53
  %42 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %42, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %43 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %43, i32 0, i32 2
  %44 = load i8*, i8** %message, align 8
  store i8* %44, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.53
  br label %if.end.59

if.else.57:                                       ; preds = %if.end.50
  %call58 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* bitcast (%struct.Config* @config to i8*), i32 56)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.end.56
  br label %if.end.61

if.else.60:                                       ; preds = %if.end.27
  store i32 4, i32* %status, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.end.59
  %45 = load i32, i32* %export, align 4
  %cmp62 = icmp eq i32 %45, 2
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.61
  %46 = load i32, i32* %image_ID, align 4
  %call65 = call i32 @gimp_image_delete(i32 %46)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.61
  br label %if.end.68

if.else.67:                                       ; preds = %land.lhs.true, %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.end.66
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.68, %if.then.26
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

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @run_save_dialog(%struct.Config* %config) #0 {
entry:
  %config.addr = alloca %struct.Config*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %prefixed_name = alloca %struct._GtkWidget*, align 8
  %centry = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %rle_toggle = alloca %struct._GtkWidget*, align 8
  %alpha_toggle = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct.Config* %config, %struct.Config** %config.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call5 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkWidget* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call15 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %prefixed_name, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %prefixed_name, align 8
  %call19 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %21, i32 0, i32 0, i8* %call18, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %22, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %prefixed_name, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_entry_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkEntry*
  %26 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name22 = getelementptr inbounds %struct.Config, %struct.Config* %26, i32 0, i32 1
  %27 = load i8*, i8** %prefixed_name22, align 8
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %28 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name23 = getelementptr inbounds %struct.Config, %struct.Config* %28, i32 0, i32 1
  %29 = load i8*, i8** %prefixed_name23, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %29, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %25, i8* %cond)
  %call24 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %centry, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %centry, align 8
  %call28 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %32, i32 0, i32 1, i8* %call27, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %33, i32 1, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %centry, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_entry_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkEntry*
  %37 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment = getelementptr inbounds %struct.Config, %struct.Config* %37, i32 0, i32 2
  %38 = load i8*, i8** %comment, align 8
  %tobool31 = icmp ne i8* %38, null
  br i1 %tobool31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.end
  %39 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment33 = getelementptr inbounds %struct.Config, %struct.Config* %39, i32 0, i32 2
  %40 = load i8*, i8** %comment33, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.32
  %cond36 = phi i8* [ %40, %cond.true.32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %cond.false.34 ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %36, i8* %cond36)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #7
  %call38 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %toggle, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call39)
  %43 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %44, i32 0, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_toggle_button_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call41)
  %47 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkToggleButton*
  %48 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_comment = getelementptr inbounds %struct.Config, %struct.Config* %48, i32 0, i32 3
  %49 = load i32, i32* %use_comment, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %47, i32 %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_comment43 = getelementptr inbounds %struct.Config, %struct.Config* %53, i32 0, i32 3
  %54 = bitcast i32* %use_comment43 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0)) #7
  %call46 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call45)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %toggle, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call47)
  %57 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_toggle_button_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call49)
  %61 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkToggleButton*
  %62 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types = getelementptr inbounds %struct.Config, %struct.Config* %62, i32 0, i32 4
  %63 = load i32, i32* %glib_types, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %61, i32 %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types51 = getelementptr inbounds %struct.Config, %struct.Config* %67, i32 0, i32 4
  %68 = bitcast i32* %glib_types51 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)) #7
  %call54 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %toggle, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call55)
  %71 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_toggle_button_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call57)
  %75 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkToggleButton*
  %76 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros = getelementptr inbounds %struct.Config, %struct.Config* %76, i32 0, i32 7
  %77 = load i32, i32* %use_macros, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %75, i32 %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %81 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros59 = getelementptr inbounds %struct.Config, %struct.Config* %81, i32 0, i32 7
  %82 = bitcast i32* %use_macros59 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0)) #7
  %call62 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %rle_toggle, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call63)
  %85 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_toggle_button_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call65)
  %89 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkToggleButton*
  %90 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle = getelementptr inbounds %struct.Config, %struct.Config* %90, i32 0, i32 8
  %91 = load i32, i32* %use_rle, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %89, i32 %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %95 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle67 = getelementptr inbounds %struct.Config, %struct.Config* %95, i32 0, i32 8
  %96 = bitcast i32* %use_rle67 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0)) #7
  %call70 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %alpha_toggle, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #8
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call71)
  %99 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_toggle_button_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call73)
  %103 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkToggleButton*
  %104 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha = getelementptr inbounds %struct.Config, %struct.Config* %104, i32 0, i32 5
  %105 = load i32, i32* %alpha, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %103, i32 %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %108 = bitcast %struct._GtkWidget* %107 to i8*
  %109 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha75 = getelementptr inbounds %struct.Config, %struct.Config* %109, i32 0, i32 5
  %110 = bitcast i32* %alpha75 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %110, void (i8*, %struct._GClosure*)* null, i32 0)
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0)) #7
  %call78 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call77)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %toggle, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #8
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call79)
  %113 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 80)
  %117 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %rle_toggle, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  call void @g_object_set_data(%struct._GObject* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 80)
  %122 = bitcast %struct._GTypeInstance* %call82 to %struct._GObject*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_toggle, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  call void @g_object_set_data(%struct._GObject* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %127 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %rgb565 = getelementptr inbounds %struct.Config, %struct.Config* %127, i32 0, i32 6
  %128 = bitcast i32* %rgb565 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @rgb565_toggle_button_update to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_toggle_button_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call84)
  %132 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkToggleButton*
  %133 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %rgb56586 = getelementptr inbounds %struct.Config, %struct.Config* %133, i32 0, i32 6
  %134 = load i32, i32* %rgb56586, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %132, i32 %134)
  %call87 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %table, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call88)
  %137 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %137, i32 4)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #8
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call90)
  %140 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %140, %struct._GtkWidget* %141, i32 0, i32 0, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call92)
  %145 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0)) #7
  %146 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %opacity = getelementptr inbounds %struct.Config, %struct.Config* %146, i32 0, i32 9
  %147 = load double, double* %opacity, align 8
  %call95 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %145, i32 0, i32 0, i8* %call94, i32 100, i32 0, double %147, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call95, %struct._GtkObject** %adj, align 8
  %148 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %149 = bitcast %struct._GtkObject* %148 to i8*
  %150 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %opacity96 = getelementptr inbounds %struct.Config, %struct.Config* %150, i32 0, i32 9
  %151 = bitcast double* %opacity96 to i8*
  %call97 = call i64 @g_signal_connect_data(i8* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %151, void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_dialog_get_type() #8
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call98)
  %155 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpDialog*
  %call100 = call i32 @gimp_dialog_run(%struct._GimpDialog* %155)
  %cmp = icmp eq i32 %call100, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %156 = load i32, i32* %run, align 4
  %tobool101 = icmp ne i32 %156, 0
  br i1 %tobool101, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.35
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %prefixed_name, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_entry_get_type() #8
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call102)
  %159 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkEntry*
  %call104 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %159)
  %call105 = call noalias i8* @g_strdup(i8* %call104)
  %160 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name106 = getelementptr inbounds %struct.Config, %struct.Config* %160, i32 0, i32 1
  store i8* %call105, i8** %prefixed_name106, align 8
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %centry, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_entry_get_type() #8
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call107)
  %163 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkEntry*
  %call109 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %163)
  %call110 = call noalias i8* @g_strdup(i8* %call109)
  %164 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment111 = getelementptr inbounds %struct.Config, %struct.Config* %164, i32 0, i32 2
  store i8* %call110, i8** %comment111, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.35
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %165)
  %166 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name112 = getelementptr inbounds %struct.Config, %struct.Config* %166, i32 0, i32 1
  %167 = load i8*, i8** %prefixed_name112, align 8
  %tobool113 = icmp ne i8* %167, null
  br i1 %tobool113, label %lor.lhs.false, label %if.then.116

lor.lhs.false:                                    ; preds = %if.end
  %168 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name114 = getelementptr inbounds %struct.Config, %struct.Config* %168, i32 0, i32 1
  %169 = load i8*, i8** %prefixed_name114, align 8
  %arrayidx = getelementptr inbounds i8, i8* %169, i64 0
  %170 = load i8, i8* %arrayidx, align 1
  %tobool115 = icmp ne i8 %170, 0
  br i1 %tobool115, label %if.end.118, label %if.then.116

if.then.116:                                      ; preds = %lor.lhs.false, %if.end
  %171 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name117 = getelementptr inbounds %struct.Config, %struct.Config* %171, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8** %prefixed_name117, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %lor.lhs.false
  %172 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment119 = getelementptr inbounds %struct.Config, %struct.Config* %172, i32 0, i32 2
  %173 = load i8*, i8** %comment119, align 8
  %tobool120 = icmp ne i8* %173, null
  br i1 %tobool120, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.end.118
  %174 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment121 = getelementptr inbounds %struct.Config, %struct.Config* %174, i32 0, i32 2
  %175 = load i8*, i8** %comment121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %175, i64 0
  %176 = load i8, i8* %arrayidx122, align 1
  %tobool123 = icmp ne i8 %176, 0
  br i1 %tobool123, label %if.end.126, label %if.then.124

if.then.124:                                      ; preds = %land.lhs.true
  %177 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment125 = getelementptr inbounds %struct.Config, %struct.Config* %177, i32 0, i32 2
  store i8* null, i8** %comment125, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %land.lhs.true, %if.end.118
  %178 = load i32, i32* %run, align 4
  ret i32 %178
}

declare i32 @gimp_image_detach_parasite(i32, i8*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(%struct.Config* %config, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct.Config*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %s_uint_8 = alloca i8*, align 8
  %s_uint = alloca i8*, align 8
  %s_char = alloca i8*, align 8
  %s_null = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %macro_name = alloca i8*, align 8
  %img_buffer = alloca i8*, align 8
  %img_buffer_end = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %data = alloca i8*, align 8
  %p = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pad = alloca i32, align 4
  %n_bytes = alloca i32, align 4
  %bpp = alloca i32, align 4
  %d = alloca i8*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %rgb16 = alloca i16, align 2
  %alpha47 = alloca double, align 8
  %d101 = alloca i8*, align 8
  %alpha106 = alloca double, align 8
  %d137 = alloca i8*, align 8
  %alpha142 = alloca double, align 8
  %p311 = alloca i8*, align 8
  store %struct.Config* %config, %struct.Config** %config.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %drawable_type, align 4
  %2 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %file_name = getelementptr inbounds %struct.Config, %struct.Config* %2, i32 0, i32 0
  %3 = load i8*, i8** %file_name, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i32* @__errno_location() #8
  %6 = load i32, i32* %call4, align 4
  %call5 = call i32 @g_file_error_from_errno(i32 %6)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0)) #7
  %7 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %file_name7 = getelementptr inbounds %struct.Config, %struct.Config* %7, i32 0, i32 0
  %8 = load i8*, i8** %file_name7, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call9 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %9) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call3, i32 %call5, i8* %call6, i8* %call8, i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %10, i32 0, i32 0, i32 %12, i32 %14, i32 0, i32 0)
  %15 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %rgb565 = getelementptr inbounds %struct.Config, %struct.Config* %15, i32 0, i32 6
  %16 = load i32, i32* %rgb565, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha = getelementptr inbounds %struct.Config, %struct.Config* %17, i32 0, i32 5
  %18 = load i32, i32* %alpha, align 4
  %tobool12 = icmp ne i32 %18, 0
  %cond = select i1 %tobool12, i32 4, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond13, i32* %bpp, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width14, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height15, align 4
  %mul = mul i32 %20, %22
  %23 = load i32, i32* %bpp, align 4
  %mul16 = mul i32 %mul, %23
  store i32 %mul16, i32* %n_bytes, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width17, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 3
  %27 = load i32, i32* %bpp18, align 4
  %mul19 = mul i32 %25, %27
  store i32 %mul19, i32* %pad, align 4
  %28 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle = getelementptr inbounds %struct.Config, %struct.Config* %28, i32 0, i32 8
  %29 = load i32, i32* %use_rle, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %cond.end
  %30 = load i32, i32* %pad, align 4
  %31 = load i32, i32* %n_bytes, align 4
  %div = sdiv i32 %31, 127
  %add = add nsw i32 130, %div
  %cmp = icmp sgt i32 %30, %add
  br i1 %cmp, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.then.21
  %32 = load i32, i32* %pad, align 4
  br label %cond.end.26

cond.false.23:                                    ; preds = %if.then.21
  %33 = load i32, i32* %n_bytes, align 4
  %div24 = sdiv i32 %33, 127
  %add25 = add nsw i32 130, %div24
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i32 [ %32, %cond.true.22 ], [ %add25, %cond.false.23 ]
  store i32 %cond27, i32* %pad, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %cond.end
  %34 = load i32, i32* %pad, align 4
  %35 = load i32, i32* %n_bytes, align 4
  %add29 = add nsw i32 %34, %35
  %conv = sext i32 %add29 to i64
  %call30 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call30, i8** %data, align 8
  %36 = load i8*, i8** %data, align 8
  %37 = load i32, i32* %pad, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.178, %if.end.28
  %38 = load i32, i32* %y, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 2
  %40 = load i32, i32* %height31, align 4
  %cmp32 = icmp ult i32 %38, %40
  br i1 %cmp32, label %for.body, label %for.end.180

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %data, align 8
  %42 = load i32, i32* %y, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width34 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width34, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %41, i32 0, i32 %42, i32 %44)
  %45 = load i32, i32* %bpp, align 4
  %cmp35 = icmp eq i32 %45, 2
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %if.then.37
  %46 = load i32, i32* %x, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width39 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 1
  %48 = load i32, i32* %width39, align 4
  %cmp40 = icmp ult i32 %46, %48
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.38
  %49 = load i8*, i8** %data, align 8
  %50 = load i32, i32* %x, align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp43 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 3
  %52 = load i32, i32* %bpp43, align 4
  %mul44 = mul i32 %50, %52
  %idx.ext45 = zext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %49, i64 %idx.ext45
  store i8* %add.ptr46, i8** %d, align 8
  %53 = load i32, i32* %drawable_type, align 4
  %cmp48 = icmp eq i32 %53, 1
  br i1 %cmp48, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %for.body.42
  %54 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 3
  %55 = load i8, i8* %arrayidx, align 1
  %conv51 = zext i8 %55 to i32
  br label %cond.end.53

cond.false.52:                                    ; preds = %for.body.42
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.50
  %cond54 = phi i32 [ %conv51, %cond.true.50 ], [ 255, %cond.false.52 ]
  %conv55 = sitofp i32 %cond54 to double
  store double %conv55, double* %alpha47, align 8
  %56 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %opacity = getelementptr inbounds %struct.Config, %struct.Config* %56, i32 0, i32 9
  %57 = load double, double* %opacity, align 8
  %div56 = fdiv double %57, 2.550000e+04
  %58 = load double, double* %alpha47, align 8
  %mul57 = fmul double %58, %div56
  store double %mul57, double* %alpha47, align 8
  %59 = load double, double* %alpha47, align 8
  %60 = load i8*, i8** %d, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx58, align 1
  %conv59 = uitofp i8 %61 to double
  %mul60 = fmul double %59, %conv59
  %add61 = fadd double 5.000000e-01, %mul60
  %conv62 = fptoui double %add61 to i8
  store i8 %conv62, i8* %r, align 1
  %62 = load double, double* %alpha47, align 8
  %63 = load i8*, i8** %d, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx63, align 1
  %conv64 = uitofp i8 %64 to double
  %mul65 = fmul double %62, %conv64
  %add66 = fadd double 5.000000e-01, %mul65
  %conv67 = fptoui double %add66 to i8
  store i8 %conv67, i8* %g, align 1
  %65 = load double, double* %alpha47, align 8
  %66 = load i8*, i8** %d, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx68, align 1
  %conv69 = uitofp i8 %67 to double
  %mul70 = fmul double %65, %conv69
  %add71 = fadd double 5.000000e-01, %mul70
  %conv72 = fptoui double %add71 to i8
  store i8 %conv72, i8* %b, align 1
  %68 = load i8, i8* %r, align 1
  %conv73 = zext i8 %68 to i32
  %shr = ashr i32 %conv73, 3
  %conv74 = trunc i32 %shr to i8
  store i8 %conv74, i8* %r, align 1
  %69 = load i8, i8* %g, align 1
  %conv75 = zext i8 %69 to i32
  %shr76 = ashr i32 %conv75, 2
  %conv77 = trunc i32 %shr76 to i8
  store i8 %conv77, i8* %g, align 1
  %70 = load i8, i8* %b, align 1
  %conv78 = zext i8 %70 to i32
  %shr79 = ashr i32 %conv78, 3
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %b, align 1
  %71 = load i8, i8* %r, align 1
  %conv81 = zext i8 %71 to i32
  %shl = shl i32 %conv81, 11
  %72 = load i8, i8* %g, align 1
  %conv82 = zext i8 %72 to i32
  %shl83 = shl i32 %conv82, 5
  %add84 = add nsw i32 %shl, %shl83
  %73 = load i8, i8* %b, align 1
  %conv85 = zext i8 %73 to i32
  %add86 = add nsw i32 %add84, %conv85
  %conv87 = trunc i32 %add86 to i16
  store i16 %conv87, i16* %rgb16, align 2
  %74 = load i16, i16* %rgb16, align 2
  %conv88 = trunc i16 %74 to i8
  %75 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv88, i8* %75, align 1
  %76 = load i16, i16* %rgb16, align 2
  %conv89 = zext i16 %76 to i32
  %shr90 = ashr i32 %conv89, 8
  %conv91 = trunc i32 %shr90 to i8
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr92, i8** %p, align 8
  store i8 %conv91, i8* %77, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.53
  %78 = load i32, i32* %x, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  br label %if.end.177

if.else:                                          ; preds = %for.body
  %79 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha93 = getelementptr inbounds %struct.Config, %struct.Config* %79, i32 0, i32 5
  %80 = load i32, i32* %alpha93, align 4
  %tobool94 = icmp ne i32 %80, 0
  br i1 %tobool94, label %if.then.95, label %if.else.131

if.then.95:                                       ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.128, %if.then.95
  %81 = load i32, i32* %x, align 4
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width97 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 1
  %83 = load i32, i32* %width97, align 4
  %cmp98 = icmp ult i32 %81, %83
  br i1 %cmp98, label %for.body.100, label %for.end.130

for.body.100:                                     ; preds = %for.cond.96
  %84 = load i8*, i8** %data, align 8
  %85 = load i32, i32* %x, align 4
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp102 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 3
  %87 = load i32, i32* %bpp102, align 4
  %mul103 = mul i32 %85, %87
  %idx.ext104 = zext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %84, i64 %idx.ext104
  store i8* %add.ptr105, i8** %d101, align 8
  %88 = load i32, i32* %drawable_type, align 4
  %cmp107 = icmp eq i32 %88, 1
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %for.body.100
  %89 = load i8*, i8** %d101, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %89, i64 3
  %90 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %90 to i32
  br label %cond.end.113

cond.false.112:                                   ; preds = %for.body.100
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.109
  %cond114 = phi i32 [ %conv111, %cond.true.109 ], [ 255, %cond.false.112 ]
  %conv115 = sitofp i32 %cond114 to double
  store double %conv115, double* %alpha106, align 8
  %91 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %opacity116 = getelementptr inbounds %struct.Config, %struct.Config* %91, i32 0, i32 9
  %92 = load double, double* %opacity116, align 8
  %div117 = fdiv double %92, 1.000000e+02
  %93 = load double, double* %alpha106, align 8
  %mul118 = fmul double %93, %div117
  store double %mul118, double* %alpha106, align 8
  %94 = load i8*, i8** %d101, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx119, align 1
  %96 = load i8*, i8** %p, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr120, i8** %p, align 8
  store i8 %95, i8* %96, align 1
  %97 = load i8*, i8** %d101, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx121, align 1
  %99 = load i8*, i8** %p, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr122, i8** %p, align 8
  store i8 %98, i8* %99, align 1
  %100 = load i8*, i8** %d101, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx123, align 1
  %102 = load i8*, i8** %p, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr124, i8** %p, align 8
  store i8 %101, i8* %102, align 1
  %103 = load double, double* %alpha106, align 8
  %add125 = fadd double %103, 5.000000e-01
  %conv126 = fptoui double %add125 to i8
  %104 = load i8*, i8** %p, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr127, i8** %p, align 8
  store i8 %conv126, i8* %104, align 1
  br label %for.inc.128

for.inc.128:                                      ; preds = %cond.end.113
  %105 = load i32, i32* %x, align 4
  %inc129 = add nsw i32 %105, 1
  store i32 %inc129, i32* %x, align 4
  br label %for.cond.96

for.end.130:                                      ; preds = %for.cond.96
  br label %if.end.176

if.else.131:                                      ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.173, %if.else.131
  %106 = load i32, i32* %x, align 4
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width133 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %107, i32 0, i32 1
  %108 = load i32, i32* %width133, align 4
  %cmp134 = icmp ult i32 %106, %108
  br i1 %cmp134, label %for.body.136, label %for.end.175

for.body.136:                                     ; preds = %for.cond.132
  %109 = load i8*, i8** %data, align 8
  %110 = load i32, i32* %x, align 4
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp138 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 3
  %112 = load i32, i32* %bpp138, align 4
  %mul139 = mul i32 %110, %112
  %idx.ext140 = zext i32 %mul139 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %109, i64 %idx.ext140
  store i8* %add.ptr141, i8** %d137, align 8
  %113 = load i32, i32* %drawable_type, align 4
  %cmp143 = icmp eq i32 %113, 1
  br i1 %cmp143, label %cond.true.145, label %cond.false.148

cond.true.145:                                    ; preds = %for.body.136
  %114 = load i8*, i8** %d137, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %114, i64 3
  %115 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %115 to i32
  br label %cond.end.149

cond.false.148:                                   ; preds = %for.body.136
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.145
  %cond150 = phi i32 [ %conv147, %cond.true.145 ], [ 255, %cond.false.148 ]
  %conv151 = sitofp i32 %cond150 to double
  store double %conv151, double* %alpha142, align 8
  %116 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %opacity152 = getelementptr inbounds %struct.Config, %struct.Config* %116, i32 0, i32 9
  %117 = load double, double* %opacity152, align 8
  %div153 = fdiv double %117, 2.550000e+04
  %118 = load double, double* %alpha142, align 8
  %mul154 = fmul double %118, %div153
  store double %mul154, double* %alpha142, align 8
  %119 = load double, double* %alpha142, align 8
  %120 = load i8*, i8** %d137, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx155, align 1
  %conv156 = uitofp i8 %121 to double
  %mul157 = fmul double %119, %conv156
  %add158 = fadd double 5.000000e-01, %mul157
  %conv159 = fptoui double %add158 to i8
  %122 = load i8*, i8** %p, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr160, i8** %p, align 8
  store i8 %conv159, i8* %122, align 1
  %123 = load double, double* %alpha142, align 8
  %124 = load i8*, i8** %d137, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %124, i64 1
  %125 = load i8, i8* %arrayidx161, align 1
  %conv162 = uitofp i8 %125 to double
  %mul163 = fmul double %123, %conv162
  %add164 = fadd double 5.000000e-01, %mul163
  %conv165 = fptoui double %add164 to i8
  %126 = load i8*, i8** %p, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr166, i8** %p, align 8
  store i8 %conv165, i8* %126, align 1
  %127 = load double, double* %alpha142, align 8
  %128 = load i8*, i8** %d137, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %128, i64 2
  %129 = load i8, i8* %arrayidx167, align 1
  %conv168 = uitofp i8 %129 to double
  %mul169 = fmul double %127, %conv168
  %add170 = fadd double 5.000000e-01, %mul169
  %conv171 = fptoui double %add170 to i8
  %130 = load i8*, i8** %p, align 8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr172, i8** %p, align 8
  store i8 %conv171, i8* %130, align 1
  br label %for.inc.173

for.inc.173:                                      ; preds = %cond.end.149
  %131 = load i32, i32* %x, align 4
  %inc174 = add nsw i32 %131, 1
  store i32 %inc174, i32* %x, align 4
  br label %for.cond.132

for.end.175:                                      ; preds = %for.cond.132
  br label %if.end.176

if.end.176:                                       ; preds = %for.end.175, %for.end.130
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %for.end
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %132 = load i32, i32* %y, align 4
  %inc179 = add nsw i32 %132, 1
  store i32 %inc179, i32* %y, align 4
  br label %for.cond

for.end.180:                                      ; preds = %for.cond
  %133 = load i8*, i8** %data, align 8
  %134 = load i32, i32* %pad, align 4
  %idx.ext181 = sext i32 %134 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %133, i64 %idx.ext181
  store i8* %add.ptr182, i8** %img_buffer, align 8
  %135 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle183 = getelementptr inbounds %struct.Config, %struct.Config* %135, i32 0, i32 8
  %136 = load i32, i32* %use_rle183, align 4
  %tobool184 = icmp ne i32 %136, 0
  br i1 %tobool184, label %if.then.185, label %if.else.189

if.then.185:                                      ; preds = %for.end.180
  %137 = load i8*, i8** %data, align 8
  %138 = load i8*, i8** %img_buffer, align 8
  %139 = load i8*, i8** %img_buffer, align 8
  %140 = load i32, i32* %n_bytes, align 4
  %idx.ext186 = sext i32 %140 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %139, i64 %idx.ext186
  %141 = load i32, i32* %bpp, align 4
  %call188 = call i8* @rl_encode_rgbx(i8* %137, i8* %138, i8* %add.ptr187, i32 %141)
  store i8* %call188, i8** %img_buffer_end, align 8
  %142 = load i8*, i8** %data, align 8
  store i8* %142, i8** %img_buffer, align 8
  br label %if.end.192

if.else.189:                                      ; preds = %for.end.180
  %143 = load i8*, i8** %img_buffer, align 8
  %144 = load i32, i32* %n_bytes, align 4
  %idx.ext190 = sext i32 %144 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %143, i64 %idx.ext190
  store i8* %add.ptr191, i8** %img_buffer_end, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.then.185
  %145 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros = getelementptr inbounds %struct.Config, %struct.Config* %145, i32 0, i32 7
  %146 = load i32, i32* %use_macros, align 4
  %tobool193 = icmp ne i32 %146, 0
  br i1 %tobool193, label %if.else.196, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.192
  %147 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types = getelementptr inbounds %struct.Config, %struct.Config* %147, i32 0, i32 4
  %148 = load i32, i32* %glib_types, align 4
  %tobool194 = icmp ne i32 %148, 0
  br i1 %tobool194, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %s_uint_8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8** %s_uint, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8** %s_char, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8** %s_null, align 8
  br label %if.end.210

if.else.196:                                      ; preds = %land.lhs.true, %if.end.192
  %149 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros197 = getelementptr inbounds %struct.Config, %struct.Config* %149, i32 0, i32 7
  %150 = load i32, i32* %use_macros197, align 4
  %tobool198 = icmp ne i32 %150, 0
  br i1 %tobool198, label %if.else.200, label %if.then.199

if.then.199:                                      ; preds = %if.else.196
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8** %s_uint_8, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8** %s_uint, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8** %s_char, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8** %s_null, align 8
  br label %if.end.209

if.else.200:                                      ; preds = %if.else.196
  %151 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros201 = getelementptr inbounds %struct.Config, %struct.Config* %151, i32 0, i32 7
  %152 = load i32, i32* %use_macros201, align 4
  %tobool202 = icmp ne i32 %152, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.else.207

land.lhs.true.203:                                ; preds = %if.else.200
  %153 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types204 = getelementptr inbounds %struct.Config, %struct.Config* %153, i32 0, i32 4
  %154 = load i32, i32* %glib_types204, align 4
  %tobool205 = icmp ne i32 %154, 0
  br i1 %tobool205, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %land.lhs.true.203
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8** %s_uint_8, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8** %s_uint, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8** %s_char, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8** %s_null, align 8
  br label %if.end.208

if.else.207:                                      ; preds = %land.lhs.true.203, %if.else.200
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8** %s_uint_8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** %s_uint, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8** %s_char, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8** %s_null, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.207, %if.then.206
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.199
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.195
  %155 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name = getelementptr inbounds %struct.Config, %struct.Config* %155, i32 0, i32 1
  %156 = load i8*, i8** %prefixed_name, align 8
  %call211 = call noalias i8* @g_ascii_strup(i8* %156, i64 -1)
  store i8* %call211, i8** %macro_name, align 8
  %157 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %file_name212 = getelementptr inbounds %struct.Config, %struct.Config* %157, i32 0, i32 0
  %158 = load i8*, i8** %file_name212, align 8
  %call213 = call noalias i8* @g_path_get_basename(i8* %158)
  store i8* %call213, i8** %basename, align 8
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %160 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha214 = getelementptr inbounds %struct.Config, %struct.Config* %160, i32 0, i32 5
  %161 = load i32, i32* %alpha214, align 4
  %tobool215 = icmp ne i32 %161, 0
  %cond216 = select i1 %tobool215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)
  %162 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle217 = getelementptr inbounds %struct.Config, %struct.Config* %162, i32 0, i32 8
  %163 = load i32, i32* %use_rle217, align 4
  %tobool218 = icmp ne i32 %163, 0
  %cond219 = select i1 %tobool218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %164 = load i8*, i8** %basename, align 8
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i32 0, i32 0), i8* %cond216, i8* %cond219, i8* %164)
  %165 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %165)
  %166 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle221 = getelementptr inbounds %struct.Config, %struct.Config* %166, i32 0, i32 8
  %167 = load i32, i32* %use_rle221, align 4
  %tobool222 = icmp ne i32 %167, 0
  br i1 %tobool222, label %land.lhs.true.223, label %if.end.236

land.lhs.true.223:                                ; preds = %if.end.210
  %168 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros224 = getelementptr inbounds %struct.Config, %struct.Config* %168, i32 0, i32 7
  %169 = load i32, i32* %use_macros224, align 4
  %tobool225 = icmp ne i32 %169, 0
  br i1 %tobool225, label %if.end.236, label %if.then.226

if.then.226:                                      ; preds = %land.lhs.true.223
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %171 = load i8*, i8** %macro_name, align 8
  %172 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types227 = getelementptr inbounds %struct.Config, %struct.Config* %172, i32 0, i32 4
  %173 = load i32, i32* %glib_types227, align 4
  %tobool228 = icmp ne i32 %173, 0
  %cond229 = select i1 %tobool228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0)
  %174 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %glib_types230 = getelementptr inbounds %struct.Config, %struct.Config* %174, i32 0, i32 4
  %175 = load i32, i32* %glib_types230, align 4
  %tobool231 = icmp ne i32 %175, 0
  %cond232 = select i1 %tobool231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0)
  %176 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha233 = getelementptr inbounds %struct.Config, %struct.Config* %176, i32 0, i32 5
  %177 = load i32, i32* %alpha233, align 4
  %tobool234 = icmp ne i32 %177, 0
  %cond235 = select i1 %tobool234, i32 4, i32 3
  call void @save_rle_decoder(%struct._IO_FILE* %170, i8* %171, i8* %cond229, i8* %cond232, i32 %cond235)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.226, %land.lhs.true.223, %if.end.210
  %178 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros237 = getelementptr inbounds %struct.Config, %struct.Config* %178, i32 0, i32 7
  %179 = load i32, i32* %use_macros237, align 4
  %tobool238 = icmp ne i32 %179, 0
  br i1 %tobool238, label %if.else.285, label %if.then.239

if.then.239:                                      ; preds = %if.end.236
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0))
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %182 = load i8*, i8** %s_uint, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %184 = load i8*, i8** %s_uint, align 8
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* %184)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %186 = load i8*, i8** %s_uint, align 8
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i32 0, i32 0), i8* %186)
  %187 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_comment = getelementptr inbounds %struct.Config, %struct.Config* %187, i32 0, i32 3
  %188 = load i32, i32* %use_comment, align 4
  %tobool244 = icmp ne i32 %188, 0
  br i1 %tobool244, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.then.239
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %190 = load i8*, i8** %s_char, align 8
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* %190)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.then.239
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %192 = load i8*, i8** %s_uint_8, align 8
  %193 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle248 = getelementptr inbounds %struct.Config, %struct.Config* %193, i32 0, i32 8
  %194 = load i32, i32* %use_rle248, align 4
  %tobool249 = icmp ne i32 %194, 0
  %cond250 = select i1 %tobool249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* %192, i8* %cond250)
  %195 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle252 = getelementptr inbounds %struct.Config, %struct.Config* %195, i32 0, i32 8
  %196 = load i32, i32* %use_rle252, align 4
  %tobool253 = icmp ne i32 %196, 0
  br i1 %tobool253, label %if.then.254, label %if.else.257

if.then.254:                                      ; preds = %if.end.247
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %198 = load i8*, i8** %img_buffer_end, align 8
  %199 = load i8*, i8** %img_buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %198 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %199 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv255 = trunc i64 %sub.ptr.sub to i32
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %conv255)
  br label %if.end.270

if.else.257:                                      ; preds = %if.end.247
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width258 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %201, i32 0, i32 1
  %202 = load i32, i32* %width258, align 4
  %203 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height259 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %203, i32 0, i32 2
  %204 = load i32, i32* %height259, align 4
  %205 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %rgb565260 = getelementptr inbounds %struct.Config, %struct.Config* %205, i32 0, i32 6
  %206 = load i32, i32* %rgb565260, align 4
  %tobool261 = icmp ne i32 %206, 0
  br i1 %tobool261, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %if.else.257
  br label %cond.end.267

cond.false.263:                                   ; preds = %if.else.257
  %207 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha264 = getelementptr inbounds %struct.Config, %struct.Config* %207, i32 0, i32 5
  %208 = load i32, i32* %alpha264, align 4
  %tobool265 = icmp ne i32 %208, 0
  %cond266 = select i1 %tobool265, i32 4, i32 3
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.263, %cond.true.262
  %cond268 = phi i32 [ 2, %cond.true.262 ], [ %cond266, %cond.false.263 ]
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i32 %202, i32 %204, i32 %cond268)
  br label %if.end.270

if.end.270:                                       ; preds = %cond.end.267, %if.then.254
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %210 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %prefixed_name271 = getelementptr inbounds %struct.Config, %struct.Config* %210, i32 0, i32 1
  %211 = load i8*, i8** %prefixed_name271, align 8
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i8* %211)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %213 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width273 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %213, i32 0, i32 1
  %214 = load i32, i32* %width273, align 4
  %215 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height274 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %215, i32 0, i32 2
  %216 = load i32, i32* %height274, align 4
  %217 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %rgb565275 = getelementptr inbounds %struct.Config, %struct.Config* %217, i32 0, i32 6
  %218 = load i32, i32* %rgb565275, align 4
  %tobool276 = icmp ne i32 %218, 0
  br i1 %tobool276, label %cond.true.277, label %cond.false.278

cond.true.277:                                    ; preds = %if.end.270
  br label %cond.end.282

cond.false.278:                                   ; preds = %if.end.270
  %219 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha279 = getelementptr inbounds %struct.Config, %struct.Config* %219, i32 0, i32 5
  %220 = load i32, i32* %alpha279, align 4
  %tobool280 = icmp ne i32 %220, 0
  %cond281 = select i1 %tobool280, i32 4, i32 3
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.278, %cond.true.277
  %cond283 = phi i32 [ 2, %cond.true.277 ], [ %cond281, %cond.false.278 ]
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i32 %214, i32 %216, i32 %cond283)
  br label %if.end.294

if.else.285:                                      ; preds = %if.end.236
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %222 = load i8*, i8** %macro_name, align 8
  %223 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width286 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %223, i32 0, i32 1
  %224 = load i32, i32* %width286, align 4
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0), i8* %222, i32 %224)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %226 = load i8*, i8** %macro_name, align 8
  %227 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height288 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %227, i32 0, i32 2
  %228 = load i32, i32* %height288, align 4
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i32 0, i32 0), i8* %226, i32 %228)
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %230 = load i8*, i8** %macro_name, align 8
  %231 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha290 = getelementptr inbounds %struct.Config, %struct.Config* %231, i32 0, i32 5
  %232 = load i32, i32* %alpha290, align 4
  %tobool291 = icmp ne i32 %232, 0
  %cond292 = select i1 %tobool291, i32 4, i32 3
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.72, i32 0, i32 0), i8* %230, i32 %cond292)
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.285, %cond.end.282
  %233 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_comment295 = getelementptr inbounds %struct.Config, %struct.Config* %233, i32 0, i32 3
  %234 = load i32, i32* %use_comment295, align 4
  %tobool296 = icmp ne i32 %234, 0
  br i1 %tobool296, label %land.lhs.true.297, label %if.else.307

land.lhs.true.297:                                ; preds = %if.end.294
  %235 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment = getelementptr inbounds %struct.Config, %struct.Config* %235, i32 0, i32 2
  %236 = load i8*, i8** %comment, align 8
  %tobool298 = icmp ne i8* %236, null
  br i1 %tobool298, label %if.else.307, label %if.then.299

if.then.299:                                      ; preds = %land.lhs.true.297
  %237 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros300 = getelementptr inbounds %struct.Config, %struct.Config* %237, i32 0, i32 7
  %238 = load i32, i32* %use_macros300, align 4
  %tobool301 = icmp ne i32 %238, 0
  br i1 %tobool301, label %if.else.304, label %if.then.302

if.then.302:                                      ; preds = %if.then.299
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %240 = load i8*, i8** %s_null, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %240)
  br label %if.end.306

if.else.304:                                      ; preds = %if.then.299
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %242 = load i8*, i8** %macro_name, align 8
  %243 = load i8*, i8** %s_null, align 8
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i32 0, i32 0), i8* %242, i8* %243)
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.304, %if.then.302
  br label %if.end.407

if.else.307:                                      ; preds = %land.lhs.true.297, %if.end.294
  %244 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_comment308 = getelementptr inbounds %struct.Config, %struct.Config* %244, i32 0, i32 3
  %245 = load i32, i32* %use_comment308, align 4
  %tobool309 = icmp ne i32 %245, 0
  br i1 %tobool309, label %if.then.310, label %if.end.406

if.then.310:                                      ; preds = %if.else.307
  %246 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %comment312 = getelementptr inbounds %struct.Config, %struct.Config* %246, i32 0, i32 2
  %247 = load i8*, i8** %comment312, align 8
  %add.ptr313 = getelementptr inbounds i8, i8* %247, i64 -1
  store i8* %add.ptr313, i8** %p311, align 8
  %248 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros314 = getelementptr inbounds %struct.Config, %struct.Config* %248, i32 0, i32 7
  %249 = load i32, i32* %use_macros314, align 4
  %tobool315 = icmp ne i32 %249, 0
  br i1 %tobool315, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.then.310
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %251 = load i8*, i8** %macro_name, align 8
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i8* %251)
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.then.310
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.398, %if.end.318
  %253 = load i8*, i8** %p311, align 8
  %incdec.ptr320 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %incdec.ptr320, i8** %p311, align 8
  %254 = load i8, i8* %incdec.ptr320, align 1
  %tobool321 = icmp ne i8 %254, 0
  br i1 %tobool321, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %255 = load i8*, i8** %p311, align 8
  %256 = load i8, i8* %255, align 1
  %conv322 = sext i8 %256 to i32
  %cmp323 = icmp eq i32 %conv322, 92
  br i1 %cmp323, label %if.then.325, label %if.else.327

if.then.325:                                      ; preds = %while.body
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.398

if.else.327:                                      ; preds = %while.body
  %258 = load i8*, i8** %p311, align 8
  %259 = load i8, i8* %258, align 1
  %conv328 = sext i8 %259 to i32
  %cmp329 = icmp eq i32 %conv328, 34
  br i1 %cmp329, label %if.then.331, label %if.else.333

if.then.331:                                      ; preds = %if.else.327
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.397

if.else.333:                                      ; preds = %if.else.327
  %261 = load i8*, i8** %p311, align 8
  %262 = load i8, i8* %261, align 1
  %conv334 = sext i8 %262 to i32
  %cmp335 = icmp eq i32 %conv334, 10
  br i1 %cmp335, label %land.lhs.true.337, label %if.else.346

land.lhs.true.337:                                ; preds = %if.else.333
  %263 = load i8*, i8** %p311, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %263, i64 1
  %264 = load i8, i8* %arrayidx338, align 1
  %conv339 = sext i8 %264 to i32
  %tobool340 = icmp ne i32 %conv339, 0
  br i1 %tobool340, label %if.then.341, label %if.else.346

if.then.341:                                      ; preds = %land.lhs.true.337
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %266 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros342 = getelementptr inbounds %struct.Config, %struct.Config* %266, i32 0, i32 7
  %267 = load i32, i32* %use_macros342, align 4
  %tobool343 = icmp ne i32 %267, 0
  %cond344 = select i1 %tobool343, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* %cond344)
  br label %if.end.396

if.else.346:                                      ; preds = %land.lhs.true.337, %if.else.333
  %268 = load i8*, i8** %p311, align 8
  %269 = load i8, i8* %268, align 1
  %conv347 = sext i8 %269 to i32
  %cmp348 = icmp eq i32 %conv347, 10
  br i1 %cmp348, label %if.then.350, label %if.else.352

if.then.350:                                      ; preds = %if.else.346
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.395

if.else.352:                                      ; preds = %if.else.346
  %271 = load i8*, i8** %p311, align 8
  %272 = load i8, i8* %271, align 1
  %conv353 = sext i8 %272 to i32
  %cmp354 = icmp eq i32 %conv353, 13
  br i1 %cmp354, label %if.then.356, label %if.else.358

if.then.356:                                      ; preds = %if.else.352
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.394

if.else.358:                                      ; preds = %if.else.352
  %274 = load i8*, i8** %p311, align 8
  %275 = load i8, i8* %274, align 1
  %conv359 = sext i8 %275 to i32
  %cmp360 = icmp eq i32 %conv359, 8
  br i1 %cmp360, label %if.then.362, label %if.else.364

if.then.362:                                      ; preds = %if.else.358
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.393

if.else.364:                                      ; preds = %if.else.358
  %277 = load i8*, i8** %p311, align 8
  %278 = load i8, i8* %277, align 1
  %conv365 = sext i8 %278 to i32
  %cmp366 = icmp eq i32 %conv365, 12
  br i1 %cmp366, label %if.then.368, label %if.else.370

if.then.368:                                      ; preds = %if.else.364
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.392

if.else.370:                                      ; preds = %if.else.364
  %280 = load i8*, i8** %p311, align 8
  %281 = load i8, i8* %280, align 1
  %conv371 = sext i8 %281 to i32
  %cmp372 = icmp sge i32 %conv371, 32
  br i1 %cmp372, label %land.lhs.true.374, label %lor.lhs.false

land.lhs.true.374:                                ; preds = %if.else.370
  %282 = load i8*, i8** %p311, align 8
  %283 = load i8, i8* %282, align 1
  %conv375 = sext i8 %283 to i32
  %cmp376 = icmp sle i32 %conv375, 47
  br i1 %cmp376, label %if.then.385, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.374, %if.else.370
  %284 = load i8*, i8** %p311, align 8
  %285 = load i8, i8* %284, align 1
  %conv378 = sext i8 %285 to i32
  %cmp379 = icmp sge i32 %conv378, 58
  br i1 %cmp379, label %land.lhs.true.381, label %if.else.388

land.lhs.true.381:                                ; preds = %lor.lhs.false
  %286 = load i8*, i8** %p311, align 8
  %287 = load i8, i8* %286, align 1
  %conv382 = sext i8 %287 to i32
  %cmp383 = icmp sle i32 %conv382, 126
  br i1 %cmp383, label %if.then.385, label %if.else.388

if.then.385:                                      ; preds = %land.lhs.true.381, %land.lhs.true.374
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %289 = load i8*, i8** %p311, align 8
  %290 = load i8, i8* %289, align 1
  %conv386 = sext i8 %290 to i32
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i32 %conv386)
  br label %if.end.391

if.else.388:                                      ; preds = %land.lhs.true.381, %lor.lhs.false
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %292 = load i8*, i8** %p311, align 8
  %293 = load i8, i8* %292, align 1
  %conv389 = sext i8 %293 to i32
  %call390 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %conv389)
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.388, %if.then.385
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.then.368
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.then.362
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %if.then.356
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.350
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %if.then.341
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396, %if.then.331
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %if.then.325
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %294 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros399 = getelementptr inbounds %struct.Config, %struct.Config* %294, i32 0, i32 7
  %295 = load i32, i32* %use_macros399, align 4
  %tobool400 = icmp ne i32 %295, 0
  br i1 %tobool400, label %if.else.403, label %if.then.401

if.then.401:                                      ; preds = %while.end
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call402 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.405

if.else.403:                                      ; preds = %while.end
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.403, %if.then.401
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405, %if.else.307
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.end.306
  %298 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros408 = getelementptr inbounds %struct.Config, %struct.Config* %298, i32 0, i32 7
  %299 = load i32, i32* %use_macros408, align 4
  %tobool409 = icmp ne i32 %299, 0
  br i1 %tobool409, label %if.then.410, label %if.else.446

if.then.410:                                      ; preds = %if.end.407
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %301 = load i8*, i8** %macro_name, align 8
  %302 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle411 = getelementptr inbounds %struct.Config, %struct.Config* %302, i32 0, i32 8
  %303 = load i32, i32* %use_rle411, align 4
  %tobool412 = icmp ne i32 %303, 0
  %cond413 = select i1 %tobool412, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %304 = load i8*, i8** %s_uint_8, align 8
  %305 = load i8*, i8** %macro_name, align 8
  %306 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle414 = getelementptr inbounds %struct.Config, %struct.Config* %306, i32 0, i32 8
  %307 = load i32, i32* %use_rle414, align 4
  %tobool415 = icmp ne i32 %307, 0
  %cond416 = select i1 %tobool415, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %call417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.89, i32 0, i32 0), i8* %301, i8* %cond413, i8* %304, i8* %305, i8* %cond416)
  %308 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle418 = getelementptr inbounds %struct.Config, %struct.Config* %308, i32 0, i32 8
  %309 = load i32, i32* %use_rle418, align 4
  %tobool419 = icmp ne i32 %309, 0
  br i1 %tobool419, label %if.then.420, label %if.end.424

if.then.420:                                      ; preds = %if.then.410
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %311 = load i8*, i8** %macro_name, align 8
  %312 = load i8*, i8** %s_uint, align 8
  %313 = load i8*, i8** %s_uint_8, align 8
  %314 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha421 = getelementptr inbounds %struct.Config, %struct.Config* %314, i32 0, i32 5
  %315 = load i32, i32* %alpha421, align 4
  %tobool422 = icmp ne i32 %315, 0
  %cond423 = select i1 %tobool422, i32 4, i32 3
  call void @save_rle_decoder(%struct._IO_FILE* %310, i8* %311, i8* %312, i8* %313, i32 %cond423)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.420, %if.then.410
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %317 = load i8*, i8** %s_uint_8, align 8
  %318 = load i8*, i8** %macro_name, align 8
  %319 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle425 = getelementptr inbounds %struct.Config, %struct.Config* %319, i32 0, i32 8
  %320 = load i32, i32* %use_rle425, align 4
  %tobool426 = icmp ne i32 %320, 0
  %cond427 = select i1 %tobool426, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.91, i32 0, i32 0), i8* %317, i8* %318, i8* %cond427)
  %321 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_rle429 = getelementptr inbounds %struct.Config, %struct.Config* %321, i32 0, i32 8
  %322 = load i32, i32* %use_rle429, align 4
  %tobool430 = icmp ne i32 %322, 0
  br i1 %tobool430, label %if.then.431, label %if.else.437

if.then.431:                                      ; preds = %if.end.424
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %324 = load i8*, i8** %img_buffer_end, align 8
  %325 = load i8*, i8** %img_buffer, align 8
  %sub.ptr.lhs.cast432 = ptrtoint i8* %324 to i64
  %sub.ptr.rhs.cast433 = ptrtoint i8* %325 to i64
  %sub.ptr.sub434 = sub i64 %sub.ptr.lhs.cast432, %sub.ptr.rhs.cast433
  %conv435 = trunc i64 %sub.ptr.sub434 to i32
  %call436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 %conv435)
  br label %if.end.444

if.else.437:                                      ; preds = %if.end.424
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %327 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width438 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %327, i32 0, i32 1
  %328 = load i32, i32* %width438, align 4
  %329 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height439 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %329, i32 0, i32 2
  %330 = load i32, i32* %height439, align 4
  %331 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %alpha440 = getelementptr inbounds %struct.Config, %struct.Config* %331, i32 0, i32 5
  %332 = load i32, i32* %alpha440, align 4
  %tobool441 = icmp ne i32 %332, 0
  %cond442 = select i1 %tobool441, i32 4, i32 3
  %call443 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0), i32 %328, i32 %330, i32 %cond442)
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.437, %if.then.431
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0))
  store i32 2, i32* %c, align 4
  br label %if.end.448

if.else.446:                                      ; preds = %if.end.407
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  store i32 3, i32* %c, align 4
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.446, %if.end.444
  %335 = load i32, i32* %drawable_type, align 4
  switch i32 %335, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.448, %if.end.448
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %337 = load i32, i32* %c, align 4
  %338 = load i8*, i8** %img_buffer, align 8
  %incdec.ptr449 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %incdec.ptr449, i8** %img_buffer, align 8
  %339 = load i8, i8* %338, align 1
  %340 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %call450 = call i32 @save_uchar(%struct._IO_FILE* %336, i32 %337, i8 zeroext %339, %struct.Config* %340)
  store i32 %call450, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %341 = load i8*, i8** %img_buffer, align 8
  %342 = load i8*, i8** %img_buffer_end, align 8
  %cmp451 = icmp ult i8* %341, %342
  br i1 %cmp451, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.448
  %343 = load i32, i32* %drawable_type, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i32 0, i32 0), i32 %343)
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call453 = call i32 @fclose(%struct._IO_FILE* %344)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end
  %345 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros454 = getelementptr inbounds %struct.Config, %struct.Config* %345, i32 0, i32 7
  %346 = load i32, i32* %use_macros454, align 4
  %tobool455 = icmp ne i32 %346, 0
  br i1 %tobool455, label %if.else.458, label %if.then.456

if.then.456:                                      ; preds = %sw.epilog
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0))
  br label %if.end.460

if.else.458:                                      ; preds = %sw.epilog
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0))
  br label %if.end.460

if.end.460:                                       ; preds = %if.else.458, %if.then.456
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call461 = call i32 @fclose(%struct._IO_FILE* %349)
  %350 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %350)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.460, %sw.default, %if.then
  %351 = load i32, i32* %retval
  ret i32 %351
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @rgb565_toggle_button_update(%struct._GtkWidget* %toggle, i8* %data) #0 {
entry:
  %toggle.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %toggle, %struct._GtkWidget** %toggle.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %3, i8* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0))
  %8 = bitcast i8* %call4 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %widget, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %11 = load i32, i32* %active, align 4
  %tobool5 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %10, i32 %lnot.ext)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0))
  %15 = bitcast i8* %call7 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %widget, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %18 = load i32, i32* %active, align 4
  %tobool10 = icmp ne i32 %18, 0
  %lnot11 = xor i1 %tobool10, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %17, i32 %lnot.ext12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  ret void
}

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @rl_encode_rgbx(i8* %bp, i8* %ip, i8* %limit, i32 %n_ch) #0 {
entry:
  %bp.addr = alloca i8*, align 8
  %ip.addr = alloca i8*, align 8
  %limit.addr = alloca i8*, align 8
  %n_ch.addr = alloca i32, align 4
  %diff2_pix = alloca i32 (i8*)*, align 8
  %ilimit = alloca i8*, align 8
  %s_ip = alloca i8*, align 8
  %l = alloca i32, align 4
  %l27 = alloca i32, align 4
  store i8* %bp, i8** %bp.addr, align 8
  store i8* %ip, i8** %ip.addr, align 8
  store i8* %limit, i8** %limit.addr, align 8
  store i32 %n_ch, i32* %n_ch.addr, align 4
  %0 = load i32, i32* %n_ch.addr, align 4
  %cmp = icmp ugt i32 %0, 3
  %cond = select i1 %cmp, i32 (i8*)* @diff2_rgba, i32 (i8*)* @diff2_rgb
  store i32 (i8*)* %cond, i32 (i8*)** %diff2_pix, align 8
  %1 = load i8*, i8** %limit.addr, align 8
  %2 = load i32, i32* %n_ch.addr, align 4
  %idx.ext = zext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg
  store i8* %add.ptr, i8** %ilimit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %entry
  %3 = load i8*, i8** %ip.addr, align 8
  %4 = load i8*, i8** %limit.addr, align 8
  %cmp1 = icmp ult i8* %3, %4
  br i1 %cmp1, label %while.body, label %while.end.63

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %5 = load i8*, i8** %ip.addr, align 8
  %6 = load i8*, i8** %ilimit, align 8
  %cmp2 = icmp ult i8* %5, %6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i32 260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rl_encode_rgbx, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i32 (i8*)*, i32 (i8*)** %diff2_pix, align 8
  %8 = load i8*, i8** %ip.addr, align 8
  %call = call i32 %7(i8* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else.26

if.then.3:                                        ; preds = %do.end
  %9 = load i8*, i8** %ip.addr, align 8
  store i8* %9, i8** %s_ip, align 8
  store i32 1, i32* %l, align 4
  %10 = load i32, i32* %n_ch.addr, align 4
  %11 = load i8*, i8** %ip.addr, align 8
  %idx.ext4 = zext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 %idx.ext4
  store i8* %add.ptr5, i8** %ip.addr, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.11, %if.then.3
  %12 = load i32, i32* %l, align 4
  %cmp7 = icmp ult i32 %12, 127
  br i1 %cmp7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.6
  %13 = load i8*, i8** %ip.addr, align 8
  %14 = load i8*, i8** %ilimit, align 8
  %cmp8 = icmp ult i8* %13, %14
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load i32 (i8*)*, i32 (i8*)** %diff2_pix, align 8
  %16 = load i8*, i8** %ip.addr, align 8
  %call9 = call i32 %15(i8* %16)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.6
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.6 ], [ %tobool10, %land.rhs ]
  br i1 %17, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %land.end
  %18 = load i32, i32* %n_ch.addr, align 4
  %19 = load i8*, i8** %ip.addr, align 8
  %idx.ext12 = zext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i64 %idx.ext12
  store i8* %add.ptr13, i8** %ip.addr, align 8
  %20 = load i32, i32* %l, align 4
  %add = add i32 %20, 1
  store i32 %add, i32* %l, align 4
  br label %while.cond.6

while.end:                                        ; preds = %land.end
  %21 = load i8*, i8** %ip.addr, align 8
  %22 = load i8*, i8** %ilimit, align 8
  %cmp14 = icmp eq i8* %21, %22
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %while.end
  %23 = load i32, i32* %l, align 4
  %cmp16 = icmp ult i32 %23, 127
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true.15
  %24 = load i32, i32* %n_ch.addr, align 4
  %25 = load i8*, i8** %ip.addr, align 8
  %idx.ext18 = zext i32 %24 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i64 %idx.ext18
  store i8* %add.ptr19, i8** %ip.addr, align 8
  %26 = load i32, i32* %l, align 4
  %add20 = add i32 %26, 1
  store i32 %add20, i32* %l, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true.15, %while.end
  %27 = load i32, i32* %l, align 4
  %conv = trunc i32 %27 to i8
  %28 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %bp.addr, align 8
  store i8 %conv, i8* %28, align 1
  %29 = load i8*, i8** %bp.addr, align 8
  %30 = load i8*, i8** %s_ip, align 8
  %31 = load i32, i32* %l, align 4
  %32 = load i32, i32* %n_ch.addr, align 4
  %mul = mul i32 %31, %32
  %conv22 = zext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %conv22, i32 1, i1 false)
  %33 = load i32, i32* %l, align 4
  %34 = load i32, i32* %n_ch.addr, align 4
  %mul23 = mul i32 %33, %34
  %35 = load i8*, i8** %bp.addr, align 8
  %idx.ext24 = zext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %35, i64 %idx.ext24
  store i8* %add.ptr25, i8** %bp.addr, align 8
  br label %if.end.52

if.else.26:                                       ; preds = %do.end
  store i32 2, i32* %l27, align 4
  %36 = load i32, i32* %n_ch.addr, align 4
  %37 = load i8*, i8** %ip.addr, align 8
  %idx.ext28 = zext i32 %36 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %37, i64 %idx.ext28
  store i8* %add.ptr29, i8** %ip.addr, align 8
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.40, %if.else.26
  %38 = load i32, i32* %l27, align 4
  %cmp31 = icmp ult i32 %38, 127
  br i1 %cmp31, label %land.lhs.true.33, label %land.end.39

land.lhs.true.33:                                 ; preds = %while.cond.30
  %39 = load i8*, i8** %ip.addr, align 8
  %40 = load i8*, i8** %ilimit, align 8
  %cmp34 = icmp ult i8* %39, %40
  br i1 %cmp34, label %land.rhs.36, label %land.end.39

land.rhs.36:                                      ; preds = %land.lhs.true.33
  %41 = load i32 (i8*)*, i32 (i8*)** %diff2_pix, align 8
  %42 = load i8*, i8** %ip.addr, align 8
  %call37 = call i32 %41(i8* %42)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool38, true
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.36, %land.lhs.true.33, %while.cond.30
  %43 = phi i1 [ false, %land.lhs.true.33 ], [ false, %while.cond.30 ], [ %lnot, %land.rhs.36 ]
  br i1 %43, label %while.body.40, label %while.end.44

while.body.40:                                    ; preds = %land.end.39
  %44 = load i32, i32* %n_ch.addr, align 4
  %45 = load i8*, i8** %ip.addr, align 8
  %idx.ext41 = zext i32 %44 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %45, i64 %idx.ext41
  store i8* %add.ptr42, i8** %ip.addr, align 8
  %46 = load i32, i32* %l27, align 4
  %add43 = add i32 %46, 1
  store i32 %add43, i32* %l27, align 4
  br label %while.cond.30

while.end.44:                                     ; preds = %land.end.39
  %47 = load i32, i32* %l27, align 4
  %or = or i32 %47, 128
  %conv45 = trunc i32 %or to i8
  %48 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr46, i8** %bp.addr, align 8
  store i8 %conv45, i8* %48, align 1
  %49 = load i8*, i8** %bp.addr, align 8
  %50 = load i8*, i8** %ip.addr, align 8
  %51 = load i32, i32* %n_ch.addr, align 4
  %conv47 = zext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %conv47, i32 1, i1 false)
  %52 = load i32, i32* %n_ch.addr, align 4
  %53 = load i8*, i8** %ip.addr, align 8
  %idx.ext48 = zext i32 %52 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %53, i64 %idx.ext48
  store i8* %add.ptr49, i8** %ip.addr, align 8
  %54 = load i32, i32* %n_ch.addr, align 4
  %55 = load i8*, i8** %bp.addr, align 8
  %idx.ext50 = zext i32 %54 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %55, i64 %idx.ext50
  store i8* %add.ptr51, i8** %bp.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %while.end.44, %if.end.21
  %56 = load i8*, i8** %ip.addr, align 8
  %57 = load i8*, i8** %ilimit, align 8
  %cmp53 = icmp eq i8* %56, %57
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.52
  %58 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr56, i8** %bp.addr, align 8
  store i8 1, i8* %58, align 1
  %59 = load i8*, i8** %bp.addr, align 8
  %60 = load i8*, i8** %ip.addr, align 8
  %61 = load i32, i32* %n_ch.addr, align 4
  %conv57 = zext i32 %61 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 %conv57, i32 1, i1 false)
  %62 = load i32, i32* %n_ch.addr, align 4
  %63 = load i8*, i8** %ip.addr, align 8
  %idx.ext58 = zext i32 %62 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %63, i64 %idx.ext58
  store i8* %add.ptr59, i8** %ip.addr, align 8
  %64 = load i32, i32* %n_ch.addr, align 4
  %65 = load i8*, i8** %bp.addr, align 8
  %idx.ext60 = zext i32 %64 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %65, i64 %idx.ext60
  store i8* %add.ptr61, i8** %bp.addr, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.55, %if.end.52
  br label %while.cond

while.end.63:                                     ; preds = %while.cond
  %66 = load i8*, i8** %bp.addr, align 8
  ret i8* %66
}

declare noalias i8* @g_ascii_strup(i8*, i64) #1

declare noalias i8* @g_path_get_basename(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @save_rle_decoder(%struct._IO_FILE* %fp, i8* %macro_name, i8* %s_uint, i8* %s_uint_8, i32 %n_ch) #5 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %macro_name.addr = alloca i8*, align 8
  %s_uint.addr = alloca i8*, align 8
  %s_uint_8.addr = alloca i8*, align 8
  %n_ch.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %macro_name, i8** %macro_name.addr, align 8
  store i8* %s_uint, i8** %s_uint.addr, align 8
  store i8* %s_uint_8, i8** %s_uint_8.addr, align 8
  store i32 %n_ch, i32* %n_ch.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %macro_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.100, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %s_uint.addr, align 8
  %4 = load i8*, i8** %s_uint_8.addr, align 8
  %5 = load i8*, i8** %s_uint_8.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i32 0, i32 0), i8* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.102, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.103, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load i8*, i8** %s_uint.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.104, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.105, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.106, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.107, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.108, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i8*, i8** %s_uint.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.104, i32 0, i32 0), i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.105, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.110, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.111, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.108, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @save_uchar(%struct._IO_FILE* %fp, i32 %c, i8 zeroext %d, %struct.Config* %config) #5 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i32, align 4
  %d.addr = alloca i8, align 1
  %config.addr = alloca %struct.Config*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8 %d, i8* %d.addr, align 1
  store %struct.Config* %config, %struct.Config** %config.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ugt i32 %0, 74
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.Config*, %struct.Config** %config.addr, align 8
  %use_macros = getelementptr inbounds %struct.Config, %struct.Config* %1, i32 0, i32 7
  %2 = load i32, i32* %use_macros, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0))
  store i32 3, i32* %c.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0))
  store i32 2, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load i8, i8* %d.addr, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp slt i32 %conv, 33
  br i1 %cmp4, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %6 = load i8, i8* %d.addr, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp sge i32 %conv6, 48
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i8, i8* %d.addr, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp sle i32 %conv9, 57
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i8, i8* %d.addr, align 1
  %conv13 = zext i8 %8 to i32
  %cmp14 = icmp sgt i32 %conv13, 126
  br i1 %cmp14, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %lor.lhs.false.12, %land.lhs.true, %if.end.3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i8, i8* %d.addr, align 1
  %conv17 = zext i8 %10 to i32
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %conv17)
  %11 = load i8, i8* %d.addr, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp sgt i32 %conv19, 7
  %conv21 = zext i1 %cmp20 to i32
  %add = add nsw i32 2, %conv21
  %12 = load i8, i8* %d.addr, align 1
  %conv22 = zext i8 %12 to i32
  %cmp23 = icmp sgt i32 %conv22, 63
  %conv24 = zext i1 %cmp23 to i32
  %add25 = add nsw i32 %add, %conv24
  %13 = load i32, i32* %c.addr, align 4
  %add26 = add i32 %13, %add25
  store i32 %add26, i32* %c.addr, align 4
  %14 = load i8, i8* %d.addr, align 1
  %conv27 = zext i8 %14 to i32
  %cmp28 = icmp slt i32 %conv27, 64
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = trunc i32 %conv29 to i8
  store i8 %conv30, i8* @save_uchar.pad, align 1
  %15 = load i32, i32* %c.addr, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.12
  %16 = load i8, i8* %d.addr, align 1
  %conv32 = zext i8 %16 to i32
  %cmp33 = icmp eq i32 %conv32, 92
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.end.31
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %17)
  %18 = load i32, i32* %c.addr, align 4
  %add37 = add i32 %18, 2
  store i32 %add37, i32* %c.addr, align 4
  br label %if.end.67

if.else.38:                                       ; preds = %if.end.31
  %19 = load i8, i8* %d.addr, align 1
  %conv39 = zext i8 %19 to i32
  %cmp40 = icmp eq i32 %conv39, 34
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.38
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load i32, i32* %c.addr, align 4
  %add44 = add i32 %21, 2
  store i32 %add44, i32* %c.addr, align 4
  br label %if.end.66

if.else.45:                                       ; preds = %if.else.38
  %22 = load i8, i8* @save_uchar.pad, align 1
  %conv46 = zext i8 %22 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.else.61

land.lhs.true.48:                                 ; preds = %if.else.45
  %23 = load i8, i8* %d.addr, align 1
  %conv49 = zext i8 %23 to i32
  %cmp50 = icmp sge i32 %conv49, 48
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.61

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %24 = load i8, i8* %d.addr, align 1
  %conv53 = zext i8 %24 to i32
  %cmp54 = icmp sle i32 %conv53, 57
  br i1 %cmp54, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %land.lhs.true.52
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load i8, i8* %d.addr, align 1
  %conv58 = zext i8 %26 to i32
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call59 = call i32 @fputc(i32 %conv58, %struct._IO_FILE* %27)
  %28 = load i32, i32* %c.addr, align 4
  %add60 = add i32 %28, 3
  store i32 %add60, i32* %c.addr, align 4
  br label %if.end.65

if.else.61:                                       ; preds = %land.lhs.true.52, %land.lhs.true.48, %if.else.45
  %29 = load i8, i8* %d.addr, align 1
  %conv62 = zext i8 %29 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call63 = call i32 @fputc(i32 %conv62, %struct._IO_FILE* %30)
  %31 = load i32, i32* %c.addr, align 4
  %add64 = add i32 %31, 1
  store i32 %add64, i32* %c.addr, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.56
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.42
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.35
  store i8 0, i8* @save_uchar.pad, align 1
  %32 = load i32, i32* %c.addr, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.16
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @diff2_rgba(i8* %ip) #0 {
entry:
  %ip.addr = alloca i8*, align 8
  store i8* %ip, i8** %ip.addr, align 8
  %0 = load i8*, i8** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 4
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %ip.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %ip.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv5, %conv7
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %8 = load i8*, i8** %ip.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load i8*, i8** %ip.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 6
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp ne i32 %conv12, %conv14
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.10
  %12 = load i8*, i8** %ip.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %14 = load i8*, i8** %ip.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp ne i32 %conv18, %conv20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.10, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp21, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @diff2_rgb(i8* %ip) #0 {
entry:
  %ip.addr = alloca i8*, align 8
  store i8* %ip, i8** %ip.addr, align 8
  %0 = load i8*, i8** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %ip.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 3
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %ip.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %ip.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv5, %conv7
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %8 = load i8*, i8** %ip.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load i8*, i8** %ip.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv11, %conv13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
