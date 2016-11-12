; ModuleID = './plug-ins/imagemap/imap_csim_parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { double }
%struct.MapInfo_t = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, {}*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, {}*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
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
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.token = type { i8*, i8 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.Rectangle_t = type { %struct.Object_t, i32, i32, i32, i32 }
%struct.Circle_t = type { %struct.Object_t, i32, i32, i32 }
%struct.Polygon_t = type { %struct.Object_t, %struct._GList* }
%struct._GdkPoint = type { i32, i32 }

@csim_nerrs = global i32 0, align 4
@csim_char = global i32 0, align 4
@yypact = internal constant [106 x i8] c"\EB\16\1C\02\1D\E3\17\E3\04\18\ED\08\07\0A\0B\0C\E3\E3\E3\E3\0D\E3\0F\12\13\14\FD\E3\E3\FB\10\E3\E3\E3\11\E3\15\19\1A\1B\1E\E3\1F\E3\E3\E3\E3\E3\E3\FE\FA\FA\FA!#\E3\22$%&'()*+,\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3/0123\E345678\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3", align 16
@yytranslate = internal constant [284 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02 \02\02\02\02\02\02\02\02\02\02\02\02\1D\1E\1F\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C", align 16
@yycheck = internal constant [85 x i8] c"\05\06\07\08\17\18\19\0A\1D\0C\0F\0D\0E\0F\10\11\12\13\14\15\16\1B\1C34\03\1F \00\1F \1D\09\04\1E\0B\1C\1E\1C\1C\1C1\1D\1C\1A\1A\1A\1F\1F\FF\FF\1E\FF\FF\FF\1E\1E\1E\FF\FF\1E\1C\1F\1C\1E\FF\1E\1E\1E\1E\1E\1E\1E\1E\1E\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C", align 16
@yytable = internal constant [85 x i8] c"$%&'\0D\0E\0F\22\01#(89:;<=>?@ANOQR\04)*\05)*\06\09\08\0B\0C\15\16\17\18\19B\1A\1E\1F !/0\00\002\00\00\00345\00\006S7TU\00VWXY[\5C]^_`abcdefghi", align 16
@csim_lval = global %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal constant [106 x i8] c"\00\00\00\00\00\01\00\10\00\00\18\00\00\00\00\00\11\14\12\13\00\04\00\00\00\00\00\19\02\00\00\16\17\15\00\1D\00\00\00\00\00\1B\00\05\06\07\03\0F5\00\00\00\00\00\00\1C\00\00\00\00-\00\00\00\00\00\1A\1E\1F !\22#$%&'(\0D\0E\0B\0C\08\09\0A\00\00\00\00\00,\00\00\00\00\00)*/+.01234", align 16
@yyr2 = internal constant [54 x i8] c"\00\02\05\07\00\02\01\01\03\03\03\03\03\01\01\06\00\02\01\01\01\03\03\03\00\02\04\01\02\00\02\01\01\01\01\01\01\01\01\01\01\03\03\03\02\00\02\03\03\03\03\03\03\03", align 16
@_map_info = internal global %struct.MapInfo_t* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_type = internal global i32 0, align 4
@current_object = internal global %struct.Object_t* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"RECT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CIRCLE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"POLY\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@yyr1 = internal constant [54 x i8] c"\00!\22#$$%%%%%&'(()**+++,-.//0112233333333334567889:;<=>?", align 16
@yypgoto = internal constant [31 x i8] c"\E3\E3\E3\E3\E3\E3\E3\E4\E3\E3\E3\E3\E3\E3\E3\E3\F8\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3\E3", align 16
@yydefgoto = internal constant [31 x i8] c"\FF\02\03\1D+,-P\07\0A\10\11\12\13\14\1B.1CDEFGZHIJKLM\1C", align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [106 x i8] c"\00\1D\22#\03\00\1D)\04\09*\1E\0B\17\18\19+,-./\1C\1E\1C\1C\1C\1D0?$\1C\1A\1A\1A\0A\0C\05\06\07\08\0F\1F %&'1\1F\1F2\1E\1E\1E\1E\1E\1F\0D\0E\0F\10\11\12\13\14\15\161345679:;<=>\1B\1C(((\1C\1C\1E\1E\1E\1E\1E8\1E\1E\1E\1E\1E\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C", align 16
@.str.9 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@csim_in = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@unescape_text.tab = internal constant [5 x %struct.token] [%struct.token { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8 34 }, %struct.token { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8 39 }, %struct.token { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8 38 }, %struct.token { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8 60 }, %struct.token { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8 62 }], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1

; Function Attrs: nounwind uwtable
define i32 @csim_parse() #0 {
entry:
  %yystate = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca i16*, align 8
  %yyssp = alloca i16*, align 8
  %yyvsa = alloca [200 x %union.YYSTYPE], align 16
  %yyvs = alloca %union.YYSTYPE*, align 8
  %yyvsp = alloca %union.YYSTYPE*, align 8
  %yystacksize = alloca i64, align 8
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yytoken = alloca i32, align 4
  %yyval = alloca %union.YYSTYPE, align 8
  %yylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca i16*, align 8
  %yyptr = alloca %union.yyalloc*, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes21 = alloca i64, align 8
  %description = alloca i8*, align 8
  %p = alloca i8*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %points = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %first = alloca %struct._GdkPoint*, align 8
  %x231 = alloca i32, align 4
  %y232 = alloca i32, align 4
  store i32 0, i32* %yylen, align 4
  store i32 0, i32* %yytoken, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay1, %union.YYSTYPE** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @csim_nerrs, align 4
  store i32 -2, i32* @csim_char, align 4
  %0 = load i16*, i16** %yyss, align 8
  store i16* %0, i16** %yyssp, align 8
  %1 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %1, %union.YYSTYPE** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %for.end, %if.end.356, %if.end.90
  %2 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %entry
  %3 = load i32, i32* %yystate, align 4
  %conv = trunc i32 %3 to i16
  %4 = load i16*, i16** %yyssp, align 8
  store i16 %conv, i16* %4, align 2
  %5 = load i16*, i16** %yyss, align 8
  %6 = load i64, i64* %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, i16* %5, i64 %6
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  %7 = load i16*, i16** %yyssp, align 8
  %cmp = icmp ule i16* %add.ptr2, %7
  br i1 %cmp, label %if.then, label %if.end.44

if.then:                                          ; preds = %yysetstate
  %8 = load i16*, i16** %yyssp, align 8
  %9 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %yysize, align 8
  %10 = load i64, i64* %yystacksize, align 8
  %cmp4 = icmp ule i64 10000, %10
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %yyexhaustedlab

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %yystacksize, align 8
  %mul = mul i64 %11, 2
  store i64 %mul, i64* %yystacksize, align 8
  %12 = load i64, i64* %yystacksize, align 8
  %cmp7 = icmp ult i64 10000, %12
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i64 10000, i64* %yystacksize, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %13 = load i16*, i16** %yyss, align 8
  store i16* %13, i16** %yyss1, align 8
  %14 = load i64, i64* %yystacksize, align 8
  %mul11 = mul i64 %14, 10
  %add12 = add i64 %mul11, 7
  %call = call noalias i8* @malloc(i64 %add12) #2
  %15 = bitcast i8* %call to %union.yyalloc*
  store %union.yyalloc* %15, %union.yyalloc** %yyptr, align 8
  %16 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %tobool = icmp ne %union.yyalloc* %16, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %yyexhaustedlab

if.end.14:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %17 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss_alloc = bitcast %union.yyalloc* %17 to i16*
  %18 = bitcast i16* %yyss_alloc to i8*
  %19 = load i16*, i16** %yyss, align 8
  %20 = bitcast i16* %19 to i8*
  %21 = load i64, i64* %yysize, align 8
  %mul15 = mul i64 %21, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %mul15, i32 2, i1 false)
  %22 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss_alloc16 = bitcast %union.yyalloc* %22 to i16*
  store i16* %yyss_alloc16, i16** %yyss, align 8
  %23 = load i64, i64* %yystacksize, align 8
  %mul17 = mul i64 %23, 2
  %add18 = add i64 %mul17, 7
  store i64 %add18, i64* %yynewbytes, align 8
  %24 = load i64, i64* %yynewbytes, align 8
  %div = udiv i64 %24, 8
  %25 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr19 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %25, i64 %div
  store %union.yyalloc* %add.ptr19, %union.yyalloc** %yyptr, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %do.end
  %26 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs_alloc = bitcast %union.yyalloc* %26 to %union.YYSTYPE*
  %27 = bitcast %union.YYSTYPE* %yyvs_alloc to i8*
  %28 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %29 = bitcast %union.YYSTYPE* %28 to i8*
  %30 = load i64, i64* %yysize, align 8
  %mul22 = mul i64 %30, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %29, i64 %mul22, i32 8, i1 false)
  %31 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs_alloc23 = bitcast %union.yyalloc* %31 to %union.YYSTYPE*
  store %union.YYSTYPE* %yyvs_alloc23, %union.YYSTYPE** %yyvs, align 8
  %32 = load i64, i64* %yystacksize, align 8
  %mul24 = mul i64 %32, 8
  %add25 = add i64 %mul24, 7
  store i64 %add25, i64* %yynewbytes21, align 8
  %33 = load i64, i64* %yynewbytes21, align 8
  %div26 = udiv i64 %33, 8
  %34 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr27 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %34, i64 %div26
  store %union.yyalloc* %add.ptr27, %union.yyalloc** %yyptr, align 8
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.20
  %35 = load i16*, i16** %yyss1, align 8
  %arraydecay29 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp30 = icmp ne i16* %35, %arraydecay29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.end.28
  %36 = load i16*, i16** %yyss1, align 8
  %37 = bitcast i16* %36 to i8*
  call void @free(i8* %37) #2
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %do.end.28
  %38 = load i16*, i16** %yyss, align 8
  %39 = load i64, i64* %yysize, align 8
  %add.ptr34 = getelementptr inbounds i16, i16* %38, i64 %39
  %add.ptr35 = getelementptr inbounds i16, i16* %add.ptr34, i64 -1
  store i16* %add.ptr35, i16** %yyssp, align 8
  %40 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %41 = load i64, i64* %yysize, align 8
  %add.ptr36 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %40, i64 %41
  %add.ptr37 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %add.ptr36, i64 -1
  store %union.YYSTYPE* %add.ptr37, %union.YYSTYPE** %yyvsp, align 8
  %42 = load i16*, i16** %yyss, align 8
  %43 = load i64, i64* %yystacksize, align 8
  %add.ptr38 = getelementptr inbounds i16, i16* %42, i64 %43
  %add.ptr39 = getelementptr inbounds i16, i16* %add.ptr38, i64 -1
  %44 = load i16*, i16** %yyssp, align 8
  %cmp40 = icmp ule i16* %add.ptr39, %44
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.33
  br label %yyabortlab

if.end.43:                                        ; preds = %if.end.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %yysetstate
  %45 = load i32, i32* %yystate, align 4
  %cmp45 = icmp eq i32 %45, 5
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %yyacceptlab

if.end.48:                                        ; preds = %if.end.44
  br label %yybackup

yybackup:                                         ; preds = %if.end.48
  %46 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [106 x i8], [106 x i8]* @yypact, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx, align 1
  %conv49 = sext i8 %47 to i32
  store i32 %conv49, i32* %yyn, align 4
  %48 = load i32, i32* %yyn, align 4
  %cmp50 = icmp eq i32 %48, -29
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %yybackup
  br label %yydefault

if.end.53:                                        ; preds = %yybackup
  %49 = load i32, i32* @csim_char, align 4
  %cmp54 = icmp eq i32 %49, -2
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %call57 = call i32 @csim_lex()
  store i32 %call57, i32* @csim_char, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %50 = load i32, i32* @csim_char, align 4
  %cmp59 = icmp sle i32 %50, 0
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.end.58
  store i32 0, i32* %yytoken, align 4
  store i32 0, i32* @csim_char, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.58
  %51 = load i32, i32* @csim_char, align 4
  %cmp62 = icmp ule i32 %51, 283
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %52 = load i32, i32* @csim_char, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [284 x i8], [284 x i8]* @yytranslate, i32 0, i64 %idxprom64
  %53 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %53 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv66, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yytoken, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end, %if.then.61
  %54 = load i32, i32* %yytoken, align 4
  %55 = load i32, i32* %yyn, align 4
  %add68 = add nsw i32 %55, %54
  store i32 %add68, i32* %yyn, align 4
  %56 = load i32, i32* %yyn, align 4
  %cmp69 = icmp slt i32 %56, 0
  br i1 %cmp69, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.67
  %57 = load i32, i32* %yyn, align 4
  %cmp71 = icmp slt i32 84, %57
  br i1 %cmp71, label %if.then.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false
  %58 = load i32, i32* %yyn, align 4
  %idxprom74 = sext i32 %58 to i64
  %arrayidx75 = getelementptr inbounds [85 x i8], [85 x i8]* @yycheck, i32 0, i64 %idxprom74
  %59 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %59 to i32
  %60 = load i32, i32* %yytoken, align 4
  %cmp77 = icmp ne i32 %conv76, %60
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false, %if.end.67
  br label %yydefault

if.end.80:                                        ; preds = %lor.lhs.false.73
  %61 = load i32, i32* %yyn, align 4
  %idxprom81 = sext i32 %61 to i64
  %arrayidx82 = getelementptr inbounds [85 x i8], [85 x i8]* @yytable, i32 0, i64 %idxprom81
  %62 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %62 to i32
  store i32 %conv83, i32* %yyn, align 4
  %63 = load i32, i32* %yyn, align 4
  %cmp84 = icmp sle i32 %63, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.80
  %64 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %64
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.end.87:                                        ; preds = %if.end.80
  %65 = load i32, i32* %yyerrstatus, align 4
  %tobool88 = icmp ne i32 %65, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.87
  %66 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.87
  store i32 -2, i32* @csim_char, align 4
  %67 = load i32, i32* %yyn, align 4
  store i32 %67, i32* %yystate, align 4
  %68 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr91 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %68, i32 1
  store %union.YYSTYPE* %incdec.ptr91, %union.YYSTYPE** %yyvsp, align 8
  %69 = bitcast %union.YYSTYPE* %incdec.ptr91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast (%union.YYSTYPE* @csim_lval to i8*), i64 8, i32 8, i1 false)
  br label %yynewstate

yydefault:                                        ; preds = %if.then.79, %if.then.52
  %70 = load i32, i32* %yystate, align 4
  %idxprom92 = sext i32 %70 to i64
  %arrayidx93 = getelementptr inbounds [106 x i8], [106 x i8]* @yydefact, i32 0, i64 %idxprom92
  %71 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %71 to i32
  store i32 %conv94, i32* %yyn, align 4
  %72 = load i32, i32* %yyn, align 4
  %cmp95 = icmp eq i32 %72, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %yydefault
  br label %yyerrlab

if.end.98:                                        ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.98, %if.then.86
  %73 = load i32, i32* %yyn, align 4
  %idxprom99 = sext i32 %73 to i64
  %arrayidx100 = getelementptr inbounds [54 x i8], [54 x i8]* @yyr2, i32 0, i64 %idxprom99
  %74 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %74 to i32
  store i32 %conv101, i32* %yylen, align 4
  %75 = load i32, i32* %yylen, align 4
  %sub102 = sub nsw i32 1, %75
  %idxprom103 = sext i32 %sub102 to i64
  %76 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx104 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %76, i64 %idxprom103
  %77 = bitcast %union.YYSTYPE* %yyval to i8*
  %78 = bitcast %union.YYSTYPE* %arrayidx104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 8, i32 8, i1 false)
  %79 = load i32, i32* %yyn, align 4
  switch i32 %79, label %sw.default [
    i32 3, label %sw.bb
    i32 8, label %sw.bb.109
    i32 9, label %sw.bb.110
    i32 10, label %sw.bb.113
    i32 11, label %sw.bb.116
    i32 12, label %sw.bb.118
    i32 13, label %sw.bb.121
    i32 14, label %sw.bb.125
    i32 15, label %sw.bb.133
    i32 21, label %sw.bb.139
    i32 22, label %sw.bb.142
    i32 23, label %sw.bb.148
    i32 26, label %sw.bb.157
    i32 41, label %sw.bb.162
    i32 42, label %sw.bb.195
    i32 43, label %sw.bb.267
    i32 44, label %sw.bb.281
    i32 46, label %sw.bb.282
    i32 47, label %sw.bb.285
    i32 48, label %sw.bb.291
    i32 49, label %sw.bb.297
    i32 50, label %sw.bb.303
    i32 51, label %sw.bb.309
    i32 52, label %sw.bb.315
  ]

sw.bb:                                            ; preds = %yyreduce
  %80 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %image_name = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %80, i32 0, i32 1
  %81 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx105 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %81, i64 -2
  %id = bitcast %union.YYSTYPE* %arrayidx105 to i8**
  %82 = load i8*, i8** %id, align 8
  %call106 = call i8* @g_strreplace(i8** %image_name, i8* %82)
  %83 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx107 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %83, i64 -2
  %id108 = bitcast %union.YYSTYPE* %arrayidx107 to i8**
  %84 = load i8*, i8** %id108, align 8
  call void @g_free(i8* %84)
  br label %sw.epilog

sw.bb.109:                                        ; preds = %yyreduce
  br label %sw.epilog

sw.bb.110:                                        ; preds = %yyreduce
  %85 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx111 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %85, i64 0
  %id112 = bitcast %union.YYSTYPE* %arrayidx111 to i8**
  %86 = load i8*, i8** %id112, align 8
  call void @g_free(i8* %86)
  br label %sw.epilog

sw.bb.113:                                        ; preds = %yyreduce
  %87 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx114 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %87, i64 0
  %id115 = bitcast %union.YYSTYPE* %arrayidx114 to i8**
  %88 = load i8*, i8** %id115, align 8
  call void @g_free(i8* %88)
  br label %sw.epilog

sw.bb.116:                                        ; preds = %yyreduce
  %89 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx117 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %89, i64 0
  %val = bitcast %union.YYSTYPE* %arrayidx117 to i32*
  %90 = load i32, i32* %val, align 4
  %91 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %old_image_width = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %91, i32 0, i32 6
  store i32 %90, i32* %old_image_width, align 4
  br label %sw.epilog

sw.bb.118:                                        ; preds = %yyreduce
  %92 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx119 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %92, i64 0
  %val120 = bitcast %union.YYSTYPE* %arrayidx119 to i32*
  %93 = load i32, i32* %val120, align 4
  %94 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %old_image_height = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %94, i32 0, i32 7
  store i32 %93, i32* %old_image_height, align 4
  br label %sw.epilog

sw.bb.121:                                        ; preds = %yyreduce
  %95 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx122 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %95, i64 0
  %value = bitcast %union.YYSTYPE* %arrayidx122 to double*
  %96 = load double, double* %value, align 8
  %conv123 = fptosi double %96 to i32
  %val124 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 %conv123, i32* %val124, align 4
  br label %sw.epilog

sw.bb.125:                                        ; preds = %yyreduce
  %97 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx126 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %97, i64 0
  %id127 = bitcast %union.YYSTYPE* %arrayidx126 to i8**
  %98 = load i8*, i8** %id127, align 8
  %call128 = call double @g_ascii_strtod(i8* %98, i8** null)
  %conv129 = fptosi double %call128 to i32
  %val130 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 %conv129, i32* %val130, align 4
  %99 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx131 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %99, i64 0
  %id132 = bitcast %union.YYSTYPE* %arrayidx131 to i8**
  %100 = load i8*, i8** %id132, align 8
  call void @g_free(i8* %100)
  br label %sw.epilog

sw.bb.133:                                        ; preds = %yyreduce
  %101 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %title = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %101, i32 0, i32 2
  %102 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx134 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %102, i64 -1
  %id135 = bitcast %union.YYSTYPE* %arrayidx134 to i8**
  %103 = load i8*, i8** %id135, align 8
  %call136 = call i8* @g_strreplace(i8** %title, i8* %103)
  %104 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx137 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1
  %id138 = bitcast %union.YYSTYPE* %arrayidx137 to i8**
  %105 = load i8*, i8** %id138, align 8
  call void @g_free(i8* %105)
  br label %sw.epilog

sw.bb.139:                                        ; preds = %yyreduce
  %106 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx140 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %106, i64 -1
  %id141 = bitcast %union.YYSTYPE* %arrayidx140 to i8**
  %107 = load i8*, i8** %id141, align 8
  call void @g_free(i8* %107)
  br label %sw.epilog

sw.bb.142:                                        ; preds = %yyreduce
  %108 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %author = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %108, i32 0, i32 3
  %109 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx143 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %109, i64 -1
  %id144 = bitcast %union.YYSTYPE* %arrayidx143 to i8**
  %110 = load i8*, i8** %id144, align 8
  %call145 = call i8* @g_strreplace(i8** %author, i8* %110)
  %111 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx146 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %111, i64 -1
  %id147 = bitcast %union.YYSTYPE* %arrayidx146 to i8**
  %112 = load i8*, i8** %id147, align 8
  call void @g_free(i8* %112)
  br label %sw.epilog

sw.bb.148:                                        ; preds = %yyreduce
  %113 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %description149 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %113, i32 0, i32 5
  %114 = load i8*, i8** %description149, align 8
  %115 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx150 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %115, i64 -1
  %id151 = bitcast %union.YYSTYPE* %arrayidx150 to i8**
  %116 = load i8*, i8** %id151, align 8
  %call152 = call noalias i8* (i8*, ...) @g_strconcat(i8* %114, i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call152, i8** %description, align 8
  %117 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %description153 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %117, i32 0, i32 5
  %118 = load i8*, i8** %description, align 8
  %call154 = call i8* @g_strreplace(i8** %description153, i8* %118)
  %119 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx155 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %119, i64 -1
  %id156 = bitcast %union.YYSTYPE* %arrayidx155 to i8**
  %120 = load i8*, i8** %id156, align 8
  call void @g_free(i8* %120)
  br label %sw.epilog

sw.bb.157:                                        ; preds = %yyreduce
  %121 = load i32, i32* @current_type, align 4
  %cmp158 = icmp ne i32 %121, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.157
  %122 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %122)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %sw.bb.157
  br label %sw.epilog

sw.bb.162:                                        ; preds = %yyreduce
  %123 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx163 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %123, i64 0
  %id164 = bitcast %union.YYSTYPE* %arrayidx163 to i8**
  %124 = load i8*, i8** %id164, align 8
  %call165 = call i32 @g_ascii_strcasecmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.else.169, label %if.then.167

if.then.167:                                      ; preds = %sw.bb.162
  %call168 = call %struct.Object_t* @create_rectangle(i32 0, i32 0, i32 0, i32 0)
  store %struct.Object_t* %call168, %struct.Object_t** @current_object, align 8
  store i32 1, i32* @current_type, align 4
  br label %if.end.192

if.else.169:                                      ; preds = %sw.bb.162
  %125 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx170 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %125, i64 0
  %id171 = bitcast %union.YYSTYPE* %arrayidx170 to i8**
  %126 = load i8*, i8** %id171, align 8
  %call172 = call i32 @g_ascii_strcasecmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.else.176, label %if.then.174

if.then.174:                                      ; preds = %if.else.169
  %call175 = call %struct.Object_t* @create_circle(i32 0, i32 0, i32 0)
  store %struct.Object_t* %call175, %struct.Object_t** @current_object, align 8
  store i32 2, i32* @current_type, align 4
  br label %if.end.191

if.else.176:                                      ; preds = %if.else.169
  %127 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx177 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %127, i64 0
  %id178 = bitcast %union.YYSTYPE* %arrayidx177 to i8**
  %128 = load i8*, i8** %id178, align 8
  %call179 = call i32 @g_ascii_strcasecmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.else.183, label %if.then.181

if.then.181:                                      ; preds = %if.else.176
  %call182 = call %struct.Object_t* @create_polygon(%struct._GList* null)
  store %struct.Object_t* %call182, %struct.Object_t** @current_object, align 8
  store i32 3, i32* @current_type, align 4
  br label %if.end.190

if.else.183:                                      ; preds = %if.else.176
  %129 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx184 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %129, i64 0
  %id185 = bitcast %union.YYSTYPE* %arrayidx184 to i8**
  %130 = load i8*, i8** %id185, align 8
  %call186 = call i32 @g_ascii_strcasecmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.else.183
  store i32 0, i32* @current_type, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.else.183
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.181
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.174
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.167
  %131 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx193 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %131, i64 0
  %id194 = bitcast %union.YYSTYPE* %arrayidx193 to i8**
  %132 = load i8*, i8** %id194, align 8
  call void @g_free(i8* %132)
  br label %sw.epilog

sw.bb.195:                                        ; preds = %yyreduce
  %133 = load i32, i32* @current_type, align 4
  %cmp196 = icmp eq i32 %133, 1
  br i1 %cmp196, label %if.then.198, label %if.else.213

if.then.198:                                      ; preds = %sw.bb.195
  %134 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %135 = bitcast %struct.Object_t* %134 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %135, %struct.Rectangle_t** %rectangle, align 8
  %136 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx199 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %136, i64 0
  %id200 = bitcast %union.YYSTYPE* %arrayidx199 to i8**
  %137 = load i8*, i8** %id200, align 8
  %call201 = call i8* @strtok(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call201, i8** %p, align 8
  %138 = load i8*, i8** %p, align 8
  %call202 = call i32 @atoi(i8* %138) #5
  %139 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %139, i32 0, i32 1
  store i32 %call202, i32* %x, align 4
  %call203 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call203, i8** %p, align 8
  %140 = load i8*, i8** %p, align 8
  %call204 = call i32 @atoi(i8* %140) #5
  %141 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %141, i32 0, i32 2
  store i32 %call204, i32* %y, align 4
  %call205 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call205, i8** %p, align 8
  %142 = load i8*, i8** %p, align 8
  %call206 = call i32 @atoi(i8* %142) #5
  %143 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x207 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %143, i32 0, i32 1
  %144 = load i32, i32* %x207, align 4
  %sub208 = sub nsw i32 %call206, %144
  %145 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %145, i32 0, i32 3
  store i32 %sub208, i32* %width, align 4
  %call209 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call209, i8** %p, align 8
  %146 = load i8*, i8** %p, align 8
  %call210 = call i32 @atoi(i8* %146) #5
  %147 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y211 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %147, i32 0, i32 2
  %148 = load i32, i32* %y211, align 4
  %sub212 = sub nsw i32 %call210, %148
  %149 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %149, i32 0, i32 4
  store i32 %sub212, i32* %height, align 4
  br label %if.end.264

if.else.213:                                      ; preds = %sw.bb.195
  %150 = load i32, i32* @current_type, align 4
  %cmp214 = icmp eq i32 %150, 2
  br i1 %cmp214, label %if.then.216, label %if.else.227

if.then.216:                                      ; preds = %if.else.213
  %151 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %152 = bitcast %struct.Object_t* %151 to %struct.Circle_t*
  store %struct.Circle_t* %152, %struct.Circle_t** %circle, align 8
  %153 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx217 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %153, i64 0
  %id218 = bitcast %union.YYSTYPE* %arrayidx217 to i8**
  %154 = load i8*, i8** %id218, align 8
  %call219 = call i8* @strtok(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call219, i8** %p, align 8
  %155 = load i8*, i8** %p, align 8
  %call220 = call i32 @atoi(i8* %155) #5
  %156 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x221 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %156, i32 0, i32 1
  store i32 %call220, i32* %x221, align 4
  %call222 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call222, i8** %p, align 8
  %157 = load i8*, i8** %p, align 8
  %call223 = call i32 @atoi(i8* %157) #5
  %158 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y224 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %158, i32 0, i32 2
  store i32 %call223, i32* %y224, align 4
  %call225 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call225, i8** %p, align 8
  %159 = load i8*, i8** %p, align 8
  %call226 = call i32 @atoi(i8* %159) #5
  %160 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %160, i32 0, i32 3
  store i32 %call226, i32* %r, align 4
  br label %if.end.263

if.else.227:                                      ; preds = %if.else.213
  %161 = load i32, i32* @current_type, align 4
  %cmp228 = icmp eq i32 %161, 3
  br i1 %cmp228, label %if.then.230, label %if.end.262

if.then.230:                                      ; preds = %if.else.227
  %162 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %163 = bitcast %struct.Object_t* %162 to %struct.Polygon_t*
  store %struct.Polygon_t* %163, %struct.Polygon_t** %polygon, align 8
  %164 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %164, i64 0
  %id234 = bitcast %union.YYSTYPE* %arrayidx233 to i8**
  %165 = load i8*, i8** %id234, align 8
  %call235 = call i8* @strtok(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call235, i8** %p, align 8
  %166 = load i8*, i8** %p, align 8
  %call236 = call i32 @atoi(i8* %166) #5
  store i32 %call236, i32* %x231, align 4
  %call237 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call237, i8** %p, align 8
  %167 = load i8*, i8** %p, align 8
  %call238 = call i32 @atoi(i8* %167) #5
  store i32 %call238, i32* %y232, align 4
  %168 = load i32, i32* %x231, align 4
  %169 = load i32, i32* %y232, align 4
  %call239 = call %struct._GdkPoint* @new_point(i32 %168, i32 %169)
  store %struct._GdkPoint* %call239, %struct._GdkPoint** %point, align 8
  %170 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %171 = bitcast %struct._GdkPoint* %170 to i8*
  %call240 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %171)
  store %struct._GList* %call240, %struct._GList** %points, align 8
  br label %while.body

while.body:                                       ; preds = %if.then.230, %if.end.244
  %call241 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call241, i8** %p, align 8
  %172 = load i8*, i8** %p, align 8
  %tobool242 = icmp ne i8* %172, null
  br i1 %tobool242, label %if.end.244, label %if.then.243

if.then.243:                                      ; preds = %while.body
  br label %while.end

if.end.244:                                       ; preds = %while.body
  %173 = load i8*, i8** %p, align 8
  %call245 = call i32 @atoi(i8* %173) #5
  store i32 %call245, i32* %x231, align 4
  %call246 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #2
  store i8* %call246, i8** %p, align 8
  %174 = load i8*, i8** %p, align 8
  %call247 = call i32 @atoi(i8* %174) #5
  store i32 %call247, i32* %y232, align 4
  %175 = load i32, i32* %x231, align 4
  %176 = load i32, i32* %y232, align 4
  %call248 = call %struct._GdkPoint* @new_point(i32 %175, i32 %176)
  store %struct._GdkPoint* %call248, %struct._GdkPoint** %point, align 8
  %177 = load %struct._GList*, %struct._GList** %points, align 8
  %178 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %179 = bitcast %struct._GdkPoint* %178 to i8*
  %call249 = call %struct._GList* @g_list_append(%struct._GList* %177, i8* %179)
  store %struct._GList* %call249, %struct._GList** %points, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.243
  %180 = load %struct._GList*, %struct._GList** %points, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %180, i32 0, i32 0
  %181 = load i8*, i8** %data, align 8
  %182 = bitcast i8* %181 to %struct._GdkPoint*
  store %struct._GdkPoint* %182, %struct._GdkPoint** %first, align 8
  %183 = load %struct._GList*, %struct._GList** %points, align 8
  %184 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points250 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %184, i32 0, i32 1
  store %struct._GList* %183, %struct._GList** %points250, align 8
  %185 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %x251 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %185, i32 0, i32 0
  %186 = load i32, i32* %x251, align 4
  %187 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x252 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %187, i32 0, i32 0
  %188 = load i32, i32* %x252, align 4
  %cmp253 = icmp eq i32 %186, %188
  br i1 %cmp253, label %land.lhs.true, label %if.end.260

land.lhs.true:                                    ; preds = %while.end
  %189 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %y255 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %189, i32 0, i32 1
  %190 = load i32, i32* %y255, align 4
  %191 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y256 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %191, i32 0, i32 1
  %192 = load i32, i32* %y256, align 4
  %cmp257 = icmp eq i32 %190, %192
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %land.lhs.true
  %193 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  call void @polygon_remove_last_point(%struct.Polygon_t* %193)
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %land.lhs.true, %while.end
  %194 = load %struct._GList*, %struct._GList** %points, align 8
  %195 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points261 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %195, i32 0, i32 1
  store %struct._GList* %194, %struct._GList** %points261, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.260, %if.else.227
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.216
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.198
  %196 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx265 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %196, i64 0
  %id266 = bitcast %union.YYSTYPE* %arrayidx265 to i8**
  %197 = load i8*, i8** %id266, align 8
  call void @g_free(i8* %197)
  br label %sw.epilog

sw.bb.267:                                        ; preds = %yyreduce
  %198 = load i32, i32* @current_type, align 4
  %cmp268 = icmp eq i32 %198, 0
  br i1 %cmp268, label %if.then.270, label %if.else.274

if.then.270:                                      ; preds = %sw.bb.267
  %199 = load %struct.MapInfo_t*, %struct.MapInfo_t** @_map_info, align 8
  %default_url = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %199, i32 0, i32 4
  %200 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx271 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 0
  %id272 = bitcast %union.YYSTYPE* %arrayidx271 to i8**
  %201 = load i8*, i8** %id272, align 8
  %call273 = call i8* @g_strreplace(i8** %default_url, i8* %201)
  br label %if.end.278

if.else.274:                                      ; preds = %sw.bb.267
  %202 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %203 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx275 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %203, i64 0
  %id276 = bitcast %union.YYSTYPE* %arrayidx275 to i8**
  %204 = load i8*, i8** %id276, align 8
  %call277 = call i8* @unescape_text(i8* %204)
  call void @object_set_url(%struct.Object_t* %202, i8* %call277)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.274, %if.then.270
  %205 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx279 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %205, i64 0
  %id280 = bitcast %union.YYSTYPE* %arrayidx279 to i8**
  %206 = load i8*, i8** %id280, align 8
  call void @g_free(i8* %206)
  br label %sw.epilog

sw.bb.281:                                        ; preds = %yyreduce
  br label %sw.epilog

sw.bb.282:                                        ; preds = %yyreduce
  %207 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx283 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %207, i64 0
  %id284 = bitcast %union.YYSTYPE* %arrayidx283 to i8**
  %208 = load i8*, i8** %id284, align 8
  call void @g_free(i8* %208)
  br label %sw.epilog

sw.bb.285:                                        ; preds = %yyreduce
  %209 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %210 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %210, i64 0
  %id287 = bitcast %union.YYSTYPE* %arrayidx286 to i8**
  %211 = load i8*, i8** %id287, align 8
  %call288 = call i8* @unescape_text(i8* %211)
  call void @object_set_comment(%struct.Object_t* %209, i8* %call288)
  %212 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx289 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %212, i64 0
  %id290 = bitcast %union.YYSTYPE* %arrayidx289 to i8**
  %213 = load i8*, i8** %id290, align 8
  call void @g_free(i8* %213)
  br label %sw.epilog

sw.bb.291:                                        ; preds = %yyreduce
  %214 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %215 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx292 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %215, i64 0
  %id293 = bitcast %union.YYSTYPE* %arrayidx292 to i8**
  %216 = load i8*, i8** %id293, align 8
  %call294 = call i8* @unescape_text(i8* %216)
  call void @object_set_target(%struct.Object_t* %214, i8* %call294)
  %217 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx295 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %217, i64 0
  %id296 = bitcast %union.YYSTYPE* %arrayidx295 to i8**
  %218 = load i8*, i8** %id296, align 8
  call void @g_free(i8* %218)
  br label %sw.epilog

sw.bb.297:                                        ; preds = %yyreduce
  %219 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %220 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx298 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %220, i64 0
  %id299 = bitcast %union.YYSTYPE* %arrayidx298 to i8**
  %221 = load i8*, i8** %id299, align 8
  %call300 = call i8* @unescape_text(i8* %221)
  call void @object_set_mouse_over(%struct.Object_t* %219, i8* %call300)
  %222 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx301 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %222, i64 0
  %id302 = bitcast %union.YYSTYPE* %arrayidx301 to i8**
  %223 = load i8*, i8** %id302, align 8
  call void @g_free(i8* %223)
  br label %sw.epilog

sw.bb.303:                                        ; preds = %yyreduce
  %224 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %225 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx304 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %225, i64 0
  %id305 = bitcast %union.YYSTYPE* %arrayidx304 to i8**
  %226 = load i8*, i8** %id305, align 8
  %call306 = call i8* @unescape_text(i8* %226)
  call void @object_set_mouse_out(%struct.Object_t* %224, i8* %call306)
  %227 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx307 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %227, i64 0
  %id308 = bitcast %union.YYSTYPE* %arrayidx307 to i8**
  %228 = load i8*, i8** %id308, align 8
  call void @g_free(i8* %228)
  br label %sw.epilog

sw.bb.309:                                        ; preds = %yyreduce
  %229 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %230 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx310 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %230, i64 0
  %id311 = bitcast %union.YYSTYPE* %arrayidx310 to i8**
  %231 = load i8*, i8** %id311, align 8
  %call312 = call i8* @unescape_text(i8* %231)
  call void @object_set_focus(%struct.Object_t* %229, i8* %call312)
  %232 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx313 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %232, i64 0
  %id314 = bitcast %union.YYSTYPE* %arrayidx313 to i8**
  %233 = load i8*, i8** %id314, align 8
  call void @g_free(i8* %233)
  br label %sw.epilog

sw.bb.315:                                        ; preds = %yyreduce
  %234 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %235 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx316 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %235, i64 0
  %id317 = bitcast %union.YYSTYPE* %arrayidx316 to i8**
  %236 = load i8*, i8** %id317, align 8
  %call318 = call i8* @unescape_text(i8* %236)
  call void @object_set_blur(%struct.Object_t* %234, i8* %call318)
  %237 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx319 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %237, i64 0
  %id320 = bitcast %union.YYSTYPE* %arrayidx319 to i8**
  %238 = load i8*, i8** %id320, align 8
  call void @g_free(i8* %238)
  br label %sw.epilog

sw.default:                                       ; preds = %yyreduce
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.315, %sw.bb.309, %sw.bb.303, %sw.bb.297, %sw.bb.291, %sw.bb.285, %sw.bb.282, %sw.bb.281, %if.end.278, %if.end.264, %if.end.192, %if.end.161, %sw.bb.148, %sw.bb.142, %sw.bb.139, %sw.bb.133, %sw.bb.125, %sw.bb.121, %sw.bb.118, %sw.bb.116, %sw.bb.113, %sw.bb.110, %sw.bb.109, %sw.bb
  %239 = load i32, i32* %yylen, align 4
  %240 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext = sext i32 %239 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr321 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %240, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr321, %union.YYSTYPE** %yyvsp, align 8
  %241 = load i32, i32* %yylen, align 4
  %242 = load i16*, i16** %yyssp, align 8
  %idx.ext322 = sext i32 %241 to i64
  %idx.neg323 = sub i64 0, %idx.ext322
  %add.ptr324 = getelementptr inbounds i16, i16* %242, i64 %idx.neg323
  store i16* %add.ptr324, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %243 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr325 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i32 1
  store %union.YYSTYPE* %incdec.ptr325, %union.YYSTYPE** %yyvsp, align 8
  %244 = bitcast %union.YYSTYPE* %incdec.ptr325 to i8*
  %245 = bitcast %union.YYSTYPE* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %245, i64 8, i32 8, i1 false)
  %246 = load i32, i32* %yyn, align 4
  %idxprom326 = sext i32 %246 to i64
  %arrayidx327 = getelementptr inbounds [54 x i8], [54 x i8]* @yyr1, i32 0, i64 %idxprom326
  %247 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %247 to i32
  store i32 %conv328, i32* %yyn, align 4
  %248 = load i32, i32* %yyn, align 4
  %sub329 = sub nsw i32 %248, 33
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds [31 x i8], [31 x i8]* @yypgoto, i32 0, i64 %idxprom330
  %249 = load i8, i8* %arrayidx331, align 1
  %conv332 = sext i8 %249 to i32
  %250 = load i16*, i16** %yyssp, align 8
  %251 = load i16, i16* %250, align 2
  %conv333 = sext i16 %251 to i32
  %add334 = add nsw i32 %conv332, %conv333
  store i32 %add334, i32* %yystate, align 4
  %252 = load i32, i32* %yystate, align 4
  %cmp335 = icmp sle i32 0, %252
  br i1 %cmp335, label %land.lhs.true.337, label %if.else.351

land.lhs.true.337:                                ; preds = %sw.epilog
  %253 = load i32, i32* %yystate, align 4
  %cmp338 = icmp sle i32 %253, 84
  br i1 %cmp338, label %land.lhs.true.340, label %if.else.351

land.lhs.true.340:                                ; preds = %land.lhs.true.337
  %254 = load i32, i32* %yystate, align 4
  %idxprom341 = sext i32 %254 to i64
  %arrayidx342 = getelementptr inbounds [85 x i8], [85 x i8]* @yycheck, i32 0, i64 %idxprom341
  %255 = load i8, i8* %arrayidx342, align 1
  %conv343 = sext i8 %255 to i32
  %256 = load i16*, i16** %yyssp, align 8
  %257 = load i16, i16* %256, align 2
  %conv344 = sext i16 %257 to i32
  %cmp345 = icmp eq i32 %conv343, %conv344
  br i1 %cmp345, label %if.then.347, label %if.else.351

if.then.347:                                      ; preds = %land.lhs.true.340
  %258 = load i32, i32* %yystate, align 4
  %idxprom348 = sext i32 %258 to i64
  %arrayidx349 = getelementptr inbounds [85 x i8], [85 x i8]* @yytable, i32 0, i64 %idxprom348
  %259 = load i8, i8* %arrayidx349, align 1
  %conv350 = zext i8 %259 to i32
  store i32 %conv350, i32* %yystate, align 4
  br label %if.end.356

if.else.351:                                      ; preds = %land.lhs.true.340, %land.lhs.true.337, %sw.epilog
  %260 = load i32, i32* %yyn, align 4
  %sub352 = sub nsw i32 %260, 33
  %idxprom353 = sext i32 %sub352 to i64
  %arrayidx354 = getelementptr inbounds [31 x i8], [31 x i8]* @yydefgoto, i32 0, i64 %idxprom353
  %261 = load i8, i8* %arrayidx354, align 1
  %conv355 = sext i8 %261 to i32
  store i32 %conv355, i32* %yystate, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.351, %if.then.347
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.97
  %262 = load i32, i32* @csim_char, align 4
  %cmp357 = icmp eq i32 %262, -2
  br i1 %cmp357, label %cond.true.359, label %cond.false.360

cond.true.359:                                    ; preds = %yyerrlab
  br label %cond.end.370

cond.false.360:                                   ; preds = %yyerrlab
  %263 = load i32, i32* @csim_char, align 4
  %cmp361 = icmp ule i32 %263, 283
  br i1 %cmp361, label %cond.true.363, label %cond.false.367

cond.true.363:                                    ; preds = %cond.false.360
  %264 = load i32, i32* @csim_char, align 4
  %idxprom364 = sext i32 %264 to i64
  %arrayidx365 = getelementptr inbounds [284 x i8], [284 x i8]* @yytranslate, i32 0, i64 %idxprom364
  %265 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %265 to i32
  br label %cond.end.368

cond.false.367:                                   ; preds = %cond.false.360
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.363
  %cond369 = phi i32 [ %conv366, %cond.true.363 ], [ 2, %cond.false.367 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %cond.true.359
  %cond371 = phi i32 [ -2, %cond.true.359 ], [ %cond369, %cond.end.368 ]
  store i32 %cond371, i32* %yytoken, align 4
  %266 = load i32, i32* %yyerrstatus, align 4
  %tobool372 = icmp ne i32 %266, 0
  br i1 %tobool372, label %if.end.374, label %if.then.373

if.then.373:                                      ; preds = %cond.end.370
  %267 = load i32, i32* @csim_nerrs, align 4
  %inc = add nsw i32 %267, 1
  store i32 %inc, i32* @csim_nerrs, align 4
  call void @csim_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.373, %cond.end.370
  %268 = load i32, i32* %yyerrstatus, align 4
  %cmp375 = icmp eq i32 %268, 3
  br i1 %cmp375, label %if.then.377, label %if.end.387

if.then.377:                                      ; preds = %if.end.374
  %269 = load i32, i32* @csim_char, align 4
  %cmp378 = icmp sle i32 %269, 0
  br i1 %cmp378, label %if.then.380, label %if.else.385

if.then.380:                                      ; preds = %if.then.377
  %270 = load i32, i32* @csim_char, align 4
  %cmp381 = icmp eq i32 %270, 0
  br i1 %cmp381, label %if.then.383, label %if.end.384

if.then.383:                                      ; preds = %if.then.380
  br label %yyabortlab

if.end.384:                                       ; preds = %if.then.380
  br label %if.end.386

if.else.385:                                      ; preds = %if.then.377
  %271 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %271, %union.YYSTYPE* @csim_lval)
  store i32 -2, i32* @csim_char, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.385, %if.end.384
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.end.374
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %272 = load i32, i32* %yylen, align 4
  %273 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext388 = sext i32 %272 to i64
  %idx.neg389 = sub i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %273, i64 %idx.neg389
  store %union.YYSTYPE* %add.ptr390, %union.YYSTYPE** %yyvsp, align 8
  %274 = load i32, i32* %yylen, align 4
  %275 = load i16*, i16** %yyssp, align 8
  %idx.ext391 = sext i32 %274 to i64
  %idx.neg392 = sub i64 0, %idx.ext391
  %add.ptr393 = getelementptr inbounds i16, i16* %275, i64 %idx.neg392
  store i16* %add.ptr393, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %276 = load i16*, i16** %yyssp, align 8
  %277 = load i16, i16* %276, align 2
  %conv394 = sext i16 %277 to i32
  store i32 %conv394, i32* %yystate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %yyerrorlab, %if.end.387
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.426, %yyerrlab1
  %278 = load i32, i32* %yystate, align 4
  %idxprom395 = sext i32 %278 to i64
  %arrayidx396 = getelementptr inbounds [106 x i8], [106 x i8]* @yypact, i32 0, i64 %idxprom395
  %279 = load i8, i8* %arrayidx396, align 1
  %conv397 = sext i8 %279 to i32
  store i32 %conv397, i32* %yyn, align 4
  %280 = load i32, i32* %yyn, align 4
  %cmp398 = icmp eq i32 %280, -29
  br i1 %cmp398, label %if.end.422, label %if.then.400

if.then.400:                                      ; preds = %for.cond
  %281 = load i32, i32* %yyn, align 4
  %add401 = add nsw i32 %281, 1
  store i32 %add401, i32* %yyn, align 4
  %282 = load i32, i32* %yyn, align 4
  %cmp402 = icmp sle i32 0, %282
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.421

land.lhs.true.404:                                ; preds = %if.then.400
  %283 = load i32, i32* %yyn, align 4
  %cmp405 = icmp sle i32 %283, 84
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.421

land.lhs.true.407:                                ; preds = %land.lhs.true.404
  %284 = load i32, i32* %yyn, align 4
  %idxprom408 = sext i32 %284 to i64
  %arrayidx409 = getelementptr inbounds [85 x i8], [85 x i8]* @yycheck, i32 0, i64 %idxprom408
  %285 = load i8, i8* %arrayidx409, align 1
  %conv410 = sext i8 %285 to i32
  %cmp411 = icmp eq i32 %conv410, 1
  br i1 %cmp411, label %if.then.413, label %if.end.421

if.then.413:                                      ; preds = %land.lhs.true.407
  %286 = load i32, i32* %yyn, align 4
  %idxprom414 = sext i32 %286 to i64
  %arrayidx415 = getelementptr inbounds [85 x i8], [85 x i8]* @yytable, i32 0, i64 %idxprom414
  %287 = load i8, i8* %arrayidx415, align 1
  %conv416 = zext i8 %287 to i32
  store i32 %conv416, i32* %yyn, align 4
  %288 = load i32, i32* %yyn, align 4
  %cmp417 = icmp slt i32 0, %288
  br i1 %cmp417, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.then.413
  br label %for.end

if.end.420:                                       ; preds = %if.then.413
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %land.lhs.true.407, %land.lhs.true.404, %if.then.400
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %for.cond
  %289 = load i16*, i16** %yyssp, align 8
  %290 = load i16*, i16** %yyss, align 8
  %cmp423 = icmp eq i16* %289, %290
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.end.422
  br label %yyabortlab

if.end.426:                                       ; preds = %if.end.422
  %291 = load i32, i32* %yystate, align 4
  %idxprom427 = sext i32 %291 to i64
  %arrayidx428 = getelementptr inbounds [106 x i8], [106 x i8]* @yystos, i32 0, i64 %idxprom427
  %292 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %292 to i32
  %293 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %conv429, %union.YYSTYPE* %293)
  %294 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr430 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %294, i64 -1
  store %union.YYSTYPE* %add.ptr430, %union.YYSTYPE** %yyvsp, align 8
  %295 = load i16*, i16** %yyssp, align 8
  %add.ptr431 = getelementptr inbounds i16, i16* %295, i64 -1
  store i16* %add.ptr431, i16** %yyssp, align 8
  %296 = load i16*, i16** %yyssp, align 8
  %297 = load i16, i16* %296, align 2
  %conv432 = sext i16 %297 to i32
  store i32 %conv432, i32* %yystate, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.419
  %298 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr433 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %298, i32 1
  store %union.YYSTYPE* %incdec.ptr433, %union.YYSTYPE** %yyvsp, align 8
  %299 = bitcast %union.YYSTYPE* %incdec.ptr433 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %299, i8* bitcast (%union.YYSTYPE* @csim_lval to i8*), i64 8, i32 8, i1 false)
  %300 = load i32, i32* %yyn, align 4
  store i32 %300, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.47
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.425, %if.then.383, %if.then.42
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %if.then.13, %if.then.6
  call void @csim_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %301 = load i32, i32* @csim_char, align 4
  %cmp434 = icmp ne i32 %301, -2
  br i1 %cmp434, label %if.then.436, label %if.end.446

if.then.436:                                      ; preds = %yyreturn
  %302 = load i32, i32* @csim_char, align 4
  %cmp437 = icmp ule i32 %302, 283
  br i1 %cmp437, label %cond.true.439, label %cond.false.443

cond.true.439:                                    ; preds = %if.then.436
  %303 = load i32, i32* @csim_char, align 4
  %idxprom440 = sext i32 %303 to i64
  %arrayidx441 = getelementptr inbounds [284 x i8], [284 x i8]* @yytranslate, i32 0, i64 %idxprom440
  %304 = load i8, i8* %arrayidx441, align 1
  %conv442 = zext i8 %304 to i32
  br label %cond.end.444

cond.false.443:                                   ; preds = %if.then.436
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.false.443, %cond.true.439
  %cond445 = phi i32 [ %conv442, %cond.true.439 ], [ 2, %cond.false.443 ]
  store i32 %cond445, i32* %yytoken, align 4
  %305 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %305, %union.YYSTYPE* @csim_lval)
  br label %if.end.446

if.end.446:                                       ; preds = %cond.end.444, %yyreturn
  %306 = load i32, i32* %yylen, align 4
  %307 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext447 = sext i32 %306 to i64
  %idx.neg448 = sub i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %307, i64 %idx.neg448
  store %union.YYSTYPE* %add.ptr449, %union.YYSTYPE** %yyvsp, align 8
  %308 = load i32, i32* %yylen, align 4
  %309 = load i16*, i16** %yyssp, align 8
  %idx.ext450 = sext i32 %308 to i64
  %idx.neg451 = sub i64 0, %idx.ext450
  %add.ptr452 = getelementptr inbounds i16, i16* %309, i64 %idx.neg451
  store i16* %add.ptr452, i16** %yyssp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.455, %if.end.446
  %310 = load i16*, i16** %yyssp, align 8
  %311 = load i16*, i16** %yyss, align 8
  %cmp453 = icmp ne i16* %310, %311
  br i1 %cmp453, label %while.body.455, label %while.end.461

while.body.455:                                   ; preds = %while.cond
  %312 = load i16*, i16** %yyssp, align 8
  %313 = load i16, i16* %312, align 2
  %idxprom456 = sext i16 %313 to i64
  %arrayidx457 = getelementptr inbounds [106 x i8], [106 x i8]* @yystos, i32 0, i64 %idxprom456
  %314 = load i8, i8* %arrayidx457, align 1
  %conv458 = zext i8 %314 to i32
  %315 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 %conv458, %union.YYSTYPE* %315)
  %316 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr459 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %316, i64 -1
  store %union.YYSTYPE* %add.ptr459, %union.YYSTYPE** %yyvsp, align 8
  %317 = load i16*, i16** %yyssp, align 8
  %add.ptr460 = getelementptr inbounds i16, i16* %317, i64 -1
  store i16* %add.ptr460, i16** %yyssp, align 8
  br label %while.cond

while.end.461:                                    ; preds = %while.cond
  %318 = load i16*, i16** %yyss, align 8
  %arraydecay462 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp463 = icmp ne i16* %318, %arraydecay462
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %while.end.461
  %319 = load i16*, i16** %yyss, align 8
  %320 = bitcast i16* %319 to i8*
  call void @free(i8* %320) #2
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.465, %while.end.461
  %321 = load i32, i32* %yyresult, align 4
  ret i32 %321
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @csim_lex() #3

declare i8* @g_strreplace(i8**, i8*) #3

declare void @g_free(i8*) #3

declare double @g_ascii_strtod(i8*, i8**) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

declare void @add_shape(%struct.Object_t*) #3

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #3

declare %struct.Object_t* @create_circle(i32, i32, i32) #3

declare %struct.Object_t* @create_polygon(%struct._GList*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %struct._GdkPoint* @new_point(i32, i32) #3

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #3

declare void @polygon_remove_last_point(%struct.Polygon_t*) #3

declare void @object_set_url(%struct.Object_t*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @unescape_text(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %escaped_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %copy_len = alloca i64, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 5
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [5 x %struct.token], [5 x %struct.token]* @unescape_text.tab, i32 0, i64 %1
  %escaped = getelementptr inbounds %struct.token, %struct.token* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %escaped, align 8
  %call = call i64 @strlen(i8* %2) #5
  store i64 %call, i64* %escaped_len, align 8
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [5 x %struct.token], [5 x %struct.token]* @unescape_text.tab, i32 0, i64 %4
  %escaped2 = getelementptr inbounds %struct.token, %struct.token* %arrayidx1, i32 0, i32 0
  %5 = load i8*, i8** %escaped2, align 8
  %call3 = call i8* @strstr(i8* %3, i8* %5) #5
  store i8* %call3, i8** %p, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i8*, i8** %p, align 8
  %cmp5 = icmp ne i8* %6, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds [5 x %struct.token], [5 x %struct.token]* @unescape_text.tab, i32 0, i64 %7
  %unescaped = getelementptr inbounds %struct.token, %struct.token* %arrayidx7, i32 0, i32 1
  %8 = load i8, i8* %unescaped, align 1
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i8*, i8** %p, align 8
  %call8 = call i64 @strlen(i8* %10) #5
  %11 = load i64, i64* %escaped_len, align 8
  %sub = sub i64 %call8, %11
  %add = add i64 %sub, 2
  store i64 %add, i64* %copy_len, align 8
  %12 = load i8*, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %14 = load i64, i64* %escaped_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %15 = load i64, i64* %copy_len, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %12, i8* %add.ptr9, i64 %15, i32 1, i1 false)
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.end

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [5 x %struct.token], [5 x %struct.token]* @unescape_text.tab, i32 0, i64 %19
  %escaped13 = getelementptr inbounds %struct.token, %struct.token* %arrayidx12, i32 0, i32 0
  %20 = load i8*, i8** %escaped13, align 8
  %call14 = call i8* @strstr(i8* %18, i8* %20) #5
  store i8* %call14, i8** %p, align 8
  br label %for.cond.4

for.end:                                          ; preds = %if.then, %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %22 = load i8*, i8** %input.addr, align 8
  ret i8* %22
}

declare void @object_set_comment(%struct.Object_t*, i8*) #3

declare void @object_set_target(%struct.Object_t*, i8*) #3

declare void @object_set_mouse_over(%struct.Object_t*, i8*) #3

declare void @object_set_mouse_out(%struct.Object_t*, i8*) #3

declare void @object_set_focus(%struct.Object_t*, i8*) #3

declare void @object_set_blur(%struct.Object_t*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @csim_error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @csim_in, align 8
  %call = call i32 @csim_restart(%struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(i8* %yymsg, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yymsg.addr = alloca i8*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store i8* %yymsg, i8** %yymsg.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %1 = load i8*, i8** %yymsg.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8** %yymsg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %yytype.addr, align 4
  switch i32 %2, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @load_csim(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @csim_in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @csim_in, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call1, %struct.MapInfo_t** @_map_info, align 8
  %call2 = call i32 @csim_parse()
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %status, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @csim_in, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %status, align 4
  ret i32 %3
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare %struct.MapInfo_t* @get_map_info() #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @csim_restart(%struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
