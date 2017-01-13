; ModuleID = './plug-ins/common/mail.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.m_info = type { [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkTextPendingScroll = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._GMappedFile = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"to-address\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"The email address to send to\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"from-address\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"The email address for the From: field\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"The subject\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"The Comment\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"encapsulation\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"plug-in-mail-image\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Send the image by email\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"You need to have sendmail installed\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Adrian Likins, Reagan Blundell\00", align 1
@.str.22 = private unnamed_addr constant [82 x i8] c"Adrian Likins, Reagan Blundell, Daniel Risacher, Spencer Kimball and Peter Mattis\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"1995-1997\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Send by E_mail...\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"<Image>/File/Send\00", align 1
@mail_icon = internal constant [609 x i8] c"GdkP\00\00\02`\02\01\00\02\00\00\00@\00\00\00\10\00\00\00\10\A5\00\00\00\00\01\88\8A\850\85\88\8A\85\FF\01\88\8A\850\88\00\00\00\00\02\88\8A\850\88\8A\85\FF\85\FF\FF\FF\FF\02\88\8A\85\FF\88\8A\850\86\00\00\00\00\0B\88\8A\850\88\8A\85\FF\FF\FF\FF\FF\D9\D6\D0\FF\C9\C7\C1\FF\C1\BF\BA\FF\AF\AC\A9\FF\A1\A0\9A\FF\FF\FF\FF\FF\88\8A\85\FF\88\8A\850\84\00\00\00\00\0D\88\8A\850\88\8A\85\FF\FF\FF\FF\FF\D9\D6\D0\FF\A8\A7\A1\FF\BE\BD\B9\FF\CE\CD\CA\FF\CF\CE\CC\FF\C6\C5\C5\FF\BD\BD\BD\FF\FF\FF\FF\FF\88\8A\85\FF\88\8A\850\83\00\00\00\00\07\88\8A\85\FF\E4\E4\E3\FF\B9\B8\B3\FF\95\94\8E\FF\DB\DA\D9\FF\EC\EC\EB\FF\F5\F5\F5\FF\82\FF\FF\FF\FF\04\C5\C5\C5\FF\B1\AE\AA\FF\EA\EA\E9\FF\88\8A\85\FF\83\00\00\00\00\04\88\8A\85\FF\F7\F7\F7\FF\AF\AE\AC\FF\F5\F5\F5\FF\84\FF\FF\FF\FF\05\EB\EB\EB\FF\D8\D8\D8\FF\CD\CC\C9\FF\F7\F7\F7\FF\88\8A\85\FF\83\00\00\00\00\04\88\8A\85\FF\FF\FF\FF\FF\E6\E5\E2\FF\AA\A9\A7\FF\82\EB\EB\EB\FF\07\E1\E1\E1\FF\D8\D8\D8\FF\CF\CF\CF\FF\A6\A5\A1\FF\F3\F3\F2\FF\FF\FF\FF\FF\88\8A\85\FF\83\00\00\00\00\05\88\8A\85\FF\FF\FF\FF\FF\FB\FB\F8\FF\E2\E2\DF\FF\92\91\91\FF\82\B6\B4\B3\FF\06\BC\BB\B7\FF\A1\A0\A0\FF\F3\F3\F2\FF\F7\F5\F3\FF\FF\FF\FF\FF\88\8A\85\FF\83\00\00\00\00\05\88\8A\85\FF\FF\FF\FF\FF\FB\FB\F8\FF\F0\EF\ED\FF\A5\A2\9D\FF\83\FB\FB\F8\FF\05\90\8D\87\FF\F9\F7\F3\FF\F2\F0\EC\FF\FF\FF\FF\FF\88\8A\85\FF\83\00\00\00\00\04\88\8A\85\FF\FF\FF\FF\FF\FB\FA\F7\FF\B2\B1\AE\FF\83\FB\FB\F8\FF\82\F9\F8\F4\FF\04\BC\BB\B7\FF\E9\E7\E2\FF\FF\FF\FF\FF\88\8A\85\FF\83\00\00\00\00\0D\88\8A\85\FF\FF\FF\FF\FF\C9\C7\C4\FF\FB\FB\F8\FF\F7\F5\F1\FF\FA\F9\F6\FF\F8\F6\F2\FF\FA\F8\F5\FF\F7\F5\F2\FF\EB\E8\E3\FF\CF\CE\CA\FF\FF\FF\FF\FF\88\8A\85\FF\83\00\00\00\00\02\88\8A\85\FF\F0\F0\F0\FF\89\FF\FF\FF\FF\02\F0\F0\F0\FF\88\8A\85\FF\83\00\00\00\00\01\88\8A\85\8F\8B\88\8A\85\FF\01\88\8A\85\8F\91\00\00\00\00\00", align 4
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@mail_info = internal global %struct.m_info zeroinitializer, align 1
@mesg_body = internal global i8* null, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"gump-from\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Send by Email\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"gimp-mail\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"_Send\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"_Filename:\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"email-address\04_To:\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"email-address\04_From:\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"S_ubject:\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"/usr/sbin/sendmail\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"\0A--GUMP-MIME-boundary--\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"some sort of error with the file extension or lack thereof\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"Could not start sendmail (%s)\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"To: %s \0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Subject: %s \0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"From: %s \0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"X-Mailer: GIMP Useless Mail Plug-In %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"2.8.18\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"MIME-Version: 1.0\0A\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"Content-type: multipart/mixed; boundary=GUMP-MIME-boundary\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"--GUMP-MIME-boundary\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"Content-type: text/plain; charset=UTF-8\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Content-type: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"Content-transfer-encoding: base64\0A\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Content-disposition: attachment; filename=\22%s\22\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"Content-description: %s\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"jpg\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"image/tiff\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"tiff\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"g3\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"image/g3fax\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"application/postscript\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@find_content_type.type_mappings = private unnamed_addr constant [20 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null], align 16
@.str.77 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"image/x-%s\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([609 x i8], [609 x i8]* @mail_icon, i32 0, i32 0))
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
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_image, align 4
  store i32 %3, i32* %image_ID, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  store i32 %5, i32* %drawable_ID, align 4
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %7, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %8 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.else.55

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.then
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  %10 = load i32, i32* %image_ID, align 4
  %call10 = call i8* @gimp_image_get_filename(i32 %10)
  store i8* %call10, i8** %filename, align 8
  %11 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %sw.bb
  %12 = load i8*, i8** %filename, align 8
  %call12 = call noalias i8* @g_filename_display_basename(i8* %12)
  store i8* %call12, i8** %basename, align 8
  %13 = load i8*, i8** %basename, align 8
  %call13 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0), i8* %13, i64 256)
  %14 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %14)
  %15 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %sw.bb
  %call14 = call i32 @save_dialog()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end
  store i32 4, i32* %status, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %16 = load i32, i32* %nparams.addr, align 4
  %cmp19 = icmp slt i32 %16, 8
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.bb.18
  store i32 1, i32* %status, align 4
  br label %if.end.40

if.else:                                          ; preds = %sw.bb.18
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data22 to i8**
  %18 = load i8*, i8** %d_string, align 8
  %call23 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0), i8* %18, i64 256)
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 4
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_string26 = bitcast %union._GimpParamData* %data25 to i8**
  %20 = load i8*, i8** %d_string26, align 8
  %call27 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 1, i32 0), i8* %20, i64 256)
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 5
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_string30 = bitcast %union._GimpParamData* %data29 to i8**
  %22 = load i8*, i8** %d_string30, align 8
  %call31 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0), i8* %22, i64 256)
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 6
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_string34 = bitcast %union._GimpParamData* %data33 to i8**
  %24 = load i8*, i8** %d_string34, align 8
  %call35 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 3, i32 0), i8* %24, i64 256)
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 7
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_string38 = bitcast %union._GimpParamData* %data37 to i8**
  %26 = load i8*, i8** %d_string38, align 8
  %call39 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 4, i32 0), i8* %26, i64 256)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.20
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.then
  %call42 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.41, %if.end.40, %if.end.17
  %27 = load i32, i32* %status, align 4
  %cmp43 = icmp eq i32 %27, 3
  br i1 %cmp43, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %sw.epilog
  %28 = load i32, i32* %image_ID, align 4
  %29 = load i32, i32* %drawable_ID, align 4
  %30 = load i32, i32* %run_mode, align 4
  %call45 = call i32 @save_image(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0), i32 %28, i32 %29, i32 %30)
  store i32 %call45, i32* %status, align 4
  %31 = load i32, i32* %status, align 4
  %cmp46 = icmp eq i32 %31, 3
  br i1 %cmp46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.then.44
  %32 = load i8*, i8** @mesg_body, align 8
  %tobool48 = icmp ne i8* %32, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.47
  %33 = load i8*, i8** @mesg_body, align 8
  %call50 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 4, i32 0), i8* %33, i64 256)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.47
  %call52 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0), i32 1280)
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %sw.epilog
  br label %if.end.56

if.else.55:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.end.54
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i8* @gimp_image_get_filename(i32) #1

declare noalias i8* @g_filename_display_basename(i8*) #1

declare i64 @g_strlcpy(i8*, i8*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog() #0 {
entry:
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %text_view = alloca %struct._GtkWidget*, align 8
  %text_buffer = alloca %struct._GtkTextBuffer*, align 8
  %gump_from = alloca i8*, align 8
  %row = alloca i32, align 4
  %run = alloca i32, align 4
  store i32 0, i32* %row, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0))
  store i8* %call, i8** %gump_from, align 8
  %0 = load i8*, i8** %gump_from, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %gump_from, align 8
  %call2 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0), i8* %1, i64 256)
  %2 = load i8*, i8** %gump_from, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #5
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 -6, i8* %call4, i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dlg, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %main_vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %29, i32 0, i32 12)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %call27 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %entry1, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %33, i32 200, i32 -1)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_entry_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %36, i32 255)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_entry_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %39, i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %43 = load i32, i32* %row, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %row, align 4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #5
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call35 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %42, i32 0, i32 %43, i8* %call34, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %44, i32 1, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mail_entry_callback to void ()*), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %call37 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %entry1, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %47, i32 200, i32 -1)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_entry_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %50, i32 255)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_entry_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %53, i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 1, i32 0))
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call42)
  %56 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %57 = load i32, i32* %row, align 4
  %inc44 = add nsw i32 %57, 1
  store i32 %inc44, i32* %row, align 4
  %call45 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i64 14)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call46 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %56, i32 0, i32 %57, i8* %call45, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %58, i32 1, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mail_entry_callback to void ()*), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 1, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %61)
  %call48 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %entry1, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %62, i32 200, i32 -1)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_entry_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call49)
  %65 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %65, i32 255)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_entry_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call51)
  %68 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %68, i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0))
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call53)
  %71 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %72 = load i32, i32* %row, align 4
  %inc55 = add nsw i32 %72, 1
  store i32 %inc55, i32* %row, align 4
  %call56 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i64 14)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call57 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %71, i32 0, i32 %72, i8* %call56, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %73, i32 1, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mail_entry_callback to void ()*), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %call59 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %entry1, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %76, i32 200, i32 -1)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_entry_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call60)
  %79 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %79, i32 255)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_entry_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call62)
  %82 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %82, i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 3, i32 0))
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call64)
  %85 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %86 = load i32, i32* %row, align 4
  %inc66 = add nsw i32 %86, 1
  store i32 %inc66, i32* %row, align 4
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #5
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %85, i32 0, i32 %86, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %87, i32 1, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mail_entry_callback to void ()*), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 3, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %call70 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %scrolled_window, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_scrolled_window_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call71)
  %92 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %92, i32 1)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_scrolled_window_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call73)
  %95 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %95, i32 1, i32 1)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call75)
  %98 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %99, i32 1, i32 1, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %call77 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call77, %struct._GtkTextBuffer** %text_buffer, align 8
  %101 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %102 = bitcast %struct._GtkTextBuffer* %101 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, i8*)* @mesg_body_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %103, i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 4, i32 0), i32 -1)
  %104 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %call79 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %104)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %text_view, align 8
  %105 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %106 = bitcast %struct._GtkTextBuffer* %105 to i8*
  call void @g_object_unref(i8* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_text_view_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call80)
  %109 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %109, i32 2)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_container_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call82)
  %112 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkContainer*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %112, %struct._GtkWidget* %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_dialog_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call84)
  %118 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpDialog*
  %call86 = call i32 @gimp_dialog_run(%struct._GimpDialog* %118)
  %cmp = icmp eq i32 %call86, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %119)
  %120 = load i32, i32* %run, align 4
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %run_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %ext = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %mailcmd = alloca [3 x i8*], align 16
  %mailpid = alloca i32, align 4
  %mailpipe = alloca %struct._IO_FILE*, align 8
  %error = alloca %struct._GError*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @find_extension(i8* %0)
  store i8* %call, i8** %ext, align 8
  %1 = load i8*, i8** %ext, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %call1 = call i8* @gimp_temp_name(i8* %add.ptr)
  store i8* %call1, i8** %tmpname, align 8
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %mailcmd, i32 0, i64 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* %mailcmd, i32 0, i64 1
  store i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 1, i32 0), i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* %mailcmd, i32 0, i64 2
  store i8* null, i8** %arrayidx3, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %mailcmd, i32 0, i32 0
  %call4 = call %struct._IO_FILE* @sendmail_pipe(i8** %arraydecay, i32* %mailpid)
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %mailpipe, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  call void @create_headers(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %5)
  %6 = load i32, i32* %run_mode.addr, align 4
  %7 = load i32, i32* %image_ID.addr, align 4
  %8 = load i32, i32* %drawable_ID.addr, align 4
  %9 = load i8*, i8** %tmpname, align 8
  %10 = load i8*, i8** %tmpname, align 8
  %call9 = call i32 @gimp_file_save(i32 %6, i32 %7, i32 %8, i8* %9, i8* %10)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %land.lhs.true, label %if.then.12

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i8*, i8** %tmpname, align 8
  %call10 = call i32 @valid_file(i8* %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true, %if.end.7
  br label %error.19

if.end.13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %tmpname, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  %call14 = call i32 @to64(i8* %12, %struct._IO_FILE* %13, %struct._GError** %error)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 2
  %15 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* %15)
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %16)
  br label %error.19

if.end.17:                                        ; preds = %if.end.13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0))
  br label %cleanup

error.19:                                         ; preds = %if.then.16, %if.then.12
  %18 = load i32, i32* %mailpid, align 4
  %call20 = call i32 @kill(i32 %18, i32 2) #5
  store i32 0, i32* %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %error.19, %if.end.17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %19)
  %20 = load i32, i32* %mailpid, align 4
  %call22 = call i32 @waitpid(i32 %20, i32* null, i32 0)
  %21 = load i32, i32* %mailpid, align 4
  call void @g_spawn_close_pid(i32 %21)
  %22 = load i8*, i8** %tmpname, align 8
  %call23 = call i32 @g_unlink(i8* %22)
  %23 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %23)
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %cleanup, %if.then.6, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare i8* @gimp_gimprc_query(i8*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_max_length(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mail_entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  %call3 = call i64 @g_strlcpy(i8* %0, i8* %call2, i64 256)
  ret void
}

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

; Function Attrs: nounwind uwtable
define internal void @mesg_body_callback(%struct._GtkTextBuffer* %buffer, i8* %data) #0 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %0, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %1 = load i8*, i8** @mesg_body, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %2, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter, i32 0)
  store i8* %call, i8** @mesg_body, align 8
  ret void
}

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @find_extension(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %filename_copy = alloca i8*, align 8
  %ext = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %filename_copy, align 8
  %1 = load i8*, i8** %filename_copy, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 46) #7
  store i8* %call1, i8** %ext, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.15
  %2 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i8*, i8** %ext, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %ext, align 8
  %call4 = call i8* @strchr(i8* %5, i32 47) #7
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %while.body
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.43, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call6)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %6 = load i8*, i8** %ext, align 8
  %call7 = call i32 @g_ascii_strcasecmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  %cmp8 = icmp ne i32 0, %call7
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %ext, align 8
  %call10 = call i32 @g_ascii_strcasecmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %cmp11 = icmp ne i32 0, %call10
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %8 = load i8*, i8** %ext, align 8
  store i8* %8, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i8*, i8** %ext, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %filename_copy, align 8
  %call14 = call i8* @strrchr(i8* %10, i32 46) #7
  store i8* %call14, i8** %ext, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  br label %while.body

return:                                           ; preds = %if.then.13, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare i8* @gimp_temp_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @sendmail_pipe(i8** %cmd, i32* %pid) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %cmd.addr = alloca i8**, align 8
  %pid.addr = alloca i32*, align 8
  %fd = alloca i32, align 4
  %err = alloca %struct._GError*, align 8
  store i8** %cmd, i8*** %cmd.addr, align 8
  store i32* %pid, i32** %pid.addr, align 8
  store %struct._GError* null, %struct._GError** %err, align 8
  %0 = load i8**, i8*** %cmd.addr, align 8
  %1 = load i32*, i32** %pid.addr, align 8
  %call = call i32 @g_spawn_async_with_pipes(i8* null, i8** %0, i8** null, i32 2, void (i8*)* null, i8* null, i32* %1, i32* %fd, i32* null, i32* null, %struct._GError** %err)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0)) #5
  %2 = load %struct._GError*, %struct._GError** %err, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %2, i32 0, i32 2
  %3 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_message(i8* %call1, i8* %3)
  %4 = load %struct._GError*, %struct._GError** %err, align 8
  call void @g_error_free(%struct._GError* %4)
  %5 = load i32*, i32** %pid.addr, align 8
  store i32 -1, i32* %5, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd, align 4
  %call2 = call %struct._IO_FILE* @fdopen(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %7
}

; Function Attrs: nounwind uwtable
define internal void @create_headers(%struct._IO_FILE* %mailpipe) #0 {
entry:
  %mailpipe.addr = alloca %struct._IO_FILE*, align 8
  %content = alloca i8*, align 8
  store %struct._IO_FILE* %mailpipe, %struct._IO_FILE** %mailpipe.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 1, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 3, i32 0))
  %call2 = call i64 @strlen(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0)) #7
  %cmp = icmp ugt i64 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 2, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.54, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0))
  %9 = load i8*, i8** @mesg_body, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %11 = load i8*, i8** @mesg_body, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0))
  %call14 = call i8* @find_content_type(i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  store i8* %call14, i8** %content, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %15 = load i8*, i8** %content, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %mailpipe.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds (%struct.m_info, %struct.m_info* @mail_info, i32 0, i32 0, i32 0))
  %19 = load i8*, i8** %content, align 8
  call void @g_free(i8* %19)
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @gimp_file_save(i32, i32, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @valid_file(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %buf = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %buf) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %cmp1 = icmp sgt i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @to64(i8* %filename, %struct._IO_FILE* %outfile, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %infile = alloca %struct._GMappedFile*, align 8
  %in = alloca i8*, align 8
  %out = alloca [2048 x i8], align 16
  %state = alloca i32, align 4
  %save = alloca i32, align 4
  %len = alloca i64, align 8
  %bytes = alloca i64, align 8
  %c = alloca i64, align 8
  %step = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %state, align 4
  store i32 0, i32* %save, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %0, i32 0, %struct._GError** %1)
  store %struct._GMappedFile* %call, %struct._GMappedFile** %infile, align 8
  %2 = load %struct._GMappedFile*, %struct._GMappedFile** %infile, align 8
  %tobool = icmp ne %struct._GMappedFile* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GMappedFile*, %struct._GMappedFile** %infile, align 8
  %call1 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %3)
  store i8* %call1, i8** %in, align 8
  %4 = load %struct._GMappedFile*, %struct._GMappedFile** %infile, align 8
  %call2 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %4)
  store i64 %call2, i64* %len, align 8
  store i64 0, i64* %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %5 = load i64, i64* %c, align 8
  %6 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %len, align 8
  %8 = load i64, i64* %c, align 8
  %sub = sub i64 %7, %8
  %cmp3 = icmp ult i64 1024, %sub
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i64, i64* %len, align 8
  %10 = load i64, i64* %c, align 8
  %sub4 = sub i64 %9, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1024, %cond.true ], [ %sub4, %cond.false ]
  store i64 %cond, i64* %step, align 8
  %11 = load i8*, i8** %in, align 8
  %12 = load i64, i64* %c, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i64, i64* %step, align 8
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %out, i32 0, i32 0
  %call5 = call i64 @g_base64_encode_step(i8* %add.ptr, i64 %13, i32 1, i8* %arraydecay, i32* %state, i32* %save)
  store i64 %call5, i64* %bytes, align 8
  %arraydecay6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %out, i32 0, i32 0
  %14 = load i64, i64* %bytes, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call7 = call i64 @fwrite(i8* %arraydecay6, i64 1, i64 %14, %struct._IO_FILE* %15)
  %16 = load i64, i64* %step, align 8
  %17 = load i64, i64* %c, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %out, i32 0, i32 0
  %call9 = call i64 @g_base64_encode_close(i32 1, i8* %arraydecay8, i32* %state, i32* %save)
  store i64 %call9, i64* %bytes, align 8
  %arraydecay10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %out, i32 0, i32 0
  %18 = load i64, i64* %bytes, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call11 = call i64 @fwrite(i8* %arraydecay10, i64 1, i64 %18, %struct._IO_FILE* %19)
  %20 = load %struct._GMappedFile*, %struct._GMappedFile** %infile, align 8
  call void @g_mapped_file_unref(%struct._GMappedFile* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

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

declare void @g_error_free(%struct._GError*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @waitpid(i32, i32*, i32) #1

declare void @g_spawn_close_pid(i32) #1

declare i32 @g_unlink(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @g_spawn_async_with_pipes(i8*, i8**, i8**, i32, void (i8*)*, i8*, i32*, i32*, i32*, i32*, %struct._GError**) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @find_content_type(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %type_mappings = alloca [20 x i8*], align 16
  %ext = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = bitcast [20 x i8*]* %type_mappings to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([20 x i8*]* @find_content_type.type_mappings to i8*), i64 160, i32 16, i1 false)
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @find_extension(i8* %1)
  store i8* %call, i8** %ext, align 8
  %2 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i32 0, i32 0))
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  %3 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %ext, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* %type_mappings, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %ext, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [20 x i8*], [20 x i8*]* %type_mappings, i32 0, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @g_ascii_strcasecmp(i8* %6, i8* %8)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [20 x i8*], [20 x i8*]* %type_mappings, i32 0, i64 %idxprom7
  %10 = load i8*, i8** %arrayidx8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call9, i8** %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %11, 2
  store i32 %add11, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %ext, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* %12)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare noalias %struct._GMappedFile* @g_mapped_file_new(i8*, i32, %struct._GError**) #1

declare i8* @g_mapped_file_get_contents(%struct._GMappedFile*) #1

declare i64 @g_mapped_file_get_length(%struct._GMappedFile*) #1

declare i64 @g_base64_encode_step(i8*, i64, i32, i8*, i32*, i32*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i64 @g_base64_encode_close(i32, i8*, i32*, i32*) #1

declare void @g_mapped_file_unref(%struct._GMappedFile*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
