; ModuleID = './plug-ins/imagemap/imap_cern_parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { double }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
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
%union.yyalloc = type { %union.YYSTYPE }
%struct.MapInfo_t = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.Polygon_t = type { %struct.Object_t, %struct._GList* }
%struct._GdkPoint = type { i32, i32 }

@cern_nerrs = global i32 0, align 4
@cern_char = global i32 0, align 4
@yypact = internal constant [51 x i8] c"\FA\09\FD\FA\FE\FA\FF\01\03\04\05\FA\FA\FA\FA\FA\FA\FA\FA\FA\00\FA\07\FA\FA\FA\FA\06\FB\08\0B\FA\0D\FA\0E\0A\0C\0F\10\11\12\15\13\14\16\FA\FA\17\18\19\FA", align 16
@yytranslate = internal constant [268 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0D\0F\02\02\0E\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C", align 16
@yycheck = internal constant [40 x i8] c"\03\04\05\06\07\08\09\0C\0D\00\0A\0D\0D\0C\0B\0B\0B\0A\FF\FF\0E\0A\0E\0A\0A\0F\0E\0A\0A\0D\0F\0A\0C\0A\0F\FF\0E\0C\FF\0F", align 16
@yytable = internal constant [40 x i8] c"\04\05\06\07\08\09\0A\1F \03\1B\14\16\17\18\19\1A\1D\00\00\1E#\22$%&'*+)(,.0-\00/2\001", align 16
@cern_lval = global %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal constant [51 x i8] c"\03\00\02\01\00\0D\00\00\00\00\00\04\05\06\07\08\09\14\12\13\00\0F\00\0A\16\17\15\00\00\00\00\0E\00\10\00\00\00\00\00\00\00\00\00\00\00\11\0C\00\00\00\0B", align 16
@yyr2 = internal constant [24 x i8] c"\00\02\01\00\02\01\01\01\01\01\02\0C\08\00\04\00\02\05\01\01\01\02\02\02", align 16
@current_object = internal global %struct.Object_t* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@yyr1 = internal constant [24 x i8] c"\00\10\11\12\12\13\13\13\13\13\14\15\16\18\17\19\19\1A\1B\1B\1B\1C\1D\1E", align 16
@yypgoto = internal constant [15 x i8] c"\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA", align 1
@yydefgoto = internal constant [15 x i8] c"\FF\01\02\0B\0C\0D\0E\0F\15\1C!\10\11\12\13", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [51 x i8] c"\00\11\12\00\03\04\05\06\07\08\09\13\14\15\16\17\1B\1C\1D\1E\0D\18\0D\0C\0B\0B\0B\0A\19\0A\0E\0C\0D\1A\0E\0A\0A\0A\0F\0E\0F\0D\0A\0A\0A\0F\0C\0E\0A\0F\0C", align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cern_in = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cern_parse() #0 {
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
  %info = alloca %struct.MapInfo_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x134 = alloca i32, align 4
  %y138 = alloca i32, align 4
  %r = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %info172 = alloca %struct.MapInfo_t*, align 8
  %info180 = alloca %struct.MapInfo_t*, align 8
  %description = alloca i8*, align 8
  store i32 0, i32* %yylen, align 4
  store i32 0, i32* %yytoken, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay1, %union.YYSTYPE** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @cern_nerrs, align 4
  store i32 -2, i32* @cern_char, align 4
  %0 = load i16*, i16** %yyss, align 8
  store i16* %0, i16** %yyssp, align 8
  %1 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %1, %union.YYSTYPE** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %for.end, %if.end.224, %if.end.90
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
  %call = call i8* @malloc(i64 %add12)
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
  call void @free(i8* %37)
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
  %cmp45 = icmp eq i32 %45, 3
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %yyacceptlab

if.end.48:                                        ; preds = %if.end.44
  br label %yybackup

yybackup:                                         ; preds = %if.end.48
  %46 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [51 x i8], [51 x i8]* @yypact, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx, align 1
  %conv49 = sext i8 %47 to i32
  store i32 %conv49, i32* %yyn, align 4
  %48 = load i32, i32* %yyn, align 4
  %cmp50 = icmp eq i32 %48, -6
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %yybackup
  br label %yydefault

if.end.53:                                        ; preds = %yybackup
  %49 = load i32, i32* @cern_char, align 4
  %cmp54 = icmp eq i32 %49, -2
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %call57 = call i32 @cern_lex()
  store i32 %call57, i32* @cern_char, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %50 = load i32, i32* @cern_char, align 4
  %cmp59 = icmp sle i32 %50, 0
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.end.58
  store i32 0, i32* %yytoken, align 4
  store i32 0, i32* @cern_char, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.58
  %51 = load i32, i32* @cern_char, align 4
  %cmp62 = icmp ule i32 %51, 267
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %52 = load i32, i32* @cern_char, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [268 x i8], [268 x i8]* @yytranslate, i32 0, i64 %idxprom64
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
  %cmp71 = icmp slt i32 39, %57
  br i1 %cmp71, label %if.then.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false
  %58 = load i32, i32* %yyn, align 4
  %idxprom74 = sext i32 %58 to i64
  %arrayidx75 = getelementptr inbounds [40 x i8], [40 x i8]* @yycheck, i32 0, i64 %idxprom74
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
  %arrayidx82 = getelementptr inbounds [40 x i8], [40 x i8]* @yytable, i32 0, i64 %idxprom81
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
  store i32 -2, i32* @cern_char, align 4
  %67 = load i32, i32* %yyn, align 4
  store i32 %67, i32* %yystate, align 4
  %68 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr91 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %68, i32 1
  store %union.YYSTYPE* %incdec.ptr91, %union.YYSTYPE** %yyvsp, align 8
  %69 = bitcast %union.YYSTYPE* %incdec.ptr91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast (%union.YYSTYPE* @cern_lval to i8*), i64 8, i32 8, i1 false)
  br label %yynewstate

yydefault:                                        ; preds = %if.then.79, %if.then.52
  %70 = load i32, i32* %yystate, align 4
  %idxprom92 = sext i32 %70 to i64
  %arrayidx93 = getelementptr inbounds [51 x i8], [51 x i8]* @yydefact, i32 0, i64 %idxprom92
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
  %arrayidx100 = getelementptr inbounds [24 x i8], [24 x i8]* @yyr2, i32 0, i64 %idxprom99
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
    i32 10, label %sw.bb
    i32 11, label %sw.bb.110
    i32 12, label %sw.bb.133
    i32 13, label %sw.bb.150
    i32 14, label %sw.bb.152
    i32 16, label %sw.bb.157
    i32 17, label %sw.bb.158
    i32 21, label %sw.bb.168
    i32 22, label %sw.bb.171
    i32 23, label %sw.bb.179
  ]

sw.bb:                                            ; preds = %yyreduce
  %call105 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call105, %struct.MapInfo_t** %info, align 8
  %80 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %default_url = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %80, i32 0, i32 4
  %81 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx106 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %81, i64 0
  %id = bitcast %union.YYSTYPE* %arrayidx106 to i8**
  %82 = load i8*, i8** %id, align 8
  %call107 = call i8* @g_strreplace(i8** %default_url, i8* %82)
  %83 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx108 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %83, i64 0
  %id109 = bitcast %union.YYSTYPE* %arrayidx108 to i8**
  %84 = load i8*, i8** %id109, align 8
  call void @g_free(i8* %84)
  br label %sw.epilog

sw.bb.110:                                        ; preds = %yyreduce
  %85 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx111 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %85, i64 -9
  %value = bitcast %union.YYSTYPE* %arrayidx111 to double*
  %86 = load double, double* %value, align 8
  %conv112 = fptosi double %86 to i32
  store i32 %conv112, i32* %x, align 4
  %87 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx113 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %87, i64 -7
  %value114 = bitcast %union.YYSTYPE* %arrayidx113 to double*
  %88 = load double, double* %value114, align 8
  %conv115 = fptosi double %88 to i32
  store i32 %conv115, i32* %y, align 4
  %89 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx116 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %89, i64 -4
  %value117 = bitcast %union.YYSTYPE* %arrayidx116 to double*
  %90 = load double, double* %value117, align 8
  %91 = load i32, i32* %x, align 4
  %conv118 = sitofp i32 %91 to double
  %sub119 = fsub double %90, %conv118
  %call120 = call double @fabs(double %sub119) #4
  %conv121 = fptosi double %call120 to i32
  store i32 %conv121, i32* %width, align 4
  %92 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx122 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %92, i64 -2
  %value123 = bitcast %union.YYSTYPE* %arrayidx122 to double*
  %93 = load double, double* %value123, align 8
  %94 = load i32, i32* %y, align 4
  %conv124 = sitofp i32 %94 to double
  %sub125 = fsub double %93, %conv124
  %call126 = call double @fabs(double %sub125) #4
  %conv127 = fptosi double %call126 to i32
  store i32 %conv127, i32* %height, align 4
  %95 = load i32, i32* %x, align 4
  %96 = load i32, i32* %y, align 4
  %97 = load i32, i32* %width, align 4
  %98 = load i32, i32* %height, align 4
  %call128 = call %struct.Object_t* @create_rectangle(i32 %95, i32 %96, i32 %97, i32 %98)
  store %struct.Object_t* %call128, %struct.Object_t** @current_object, align 8
  %99 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %100 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx129 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %100, i64 0
  %id130 = bitcast %union.YYSTYPE* %arrayidx129 to i8**
  %101 = load i8*, i8** %id130, align 8
  call void @object_set_url(%struct.Object_t* %99, i8* %101)
  %102 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %102)
  %103 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx131 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %103, i64 0
  %id132 = bitcast %union.YYSTYPE* %arrayidx131 to i8**
  %104 = load i8*, i8** %id132, align 8
  call void @g_free(i8* %104)
  br label %sw.epilog

sw.bb.133:                                        ; preds = %yyreduce
  %105 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx135 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %105, i64 -5
  %value136 = bitcast %union.YYSTYPE* %arrayidx135 to double*
  %106 = load double, double* %value136, align 8
  %conv137 = fptosi double %106 to i32
  store i32 %conv137, i32* %x134, align 4
  %107 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx139 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %107, i64 -3
  %value140 = bitcast %union.YYSTYPE* %arrayidx139 to double*
  %108 = load double, double* %value140, align 8
  %conv141 = fptosi double %108 to i32
  store i32 %conv141, i32* %y138, align 4
  %109 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx142 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %109, i64 -1
  %value143 = bitcast %union.YYSTYPE* %arrayidx142 to double*
  %110 = load double, double* %value143, align 8
  %conv144 = fptosi double %110 to i32
  store i32 %conv144, i32* %r, align 4
  %111 = load i32, i32* %x134, align 4
  %112 = load i32, i32* %y138, align 4
  %113 = load i32, i32* %r, align 4
  %call145 = call %struct.Object_t* @create_circle(i32 %111, i32 %112, i32 %113)
  store %struct.Object_t* %call145, %struct.Object_t** @current_object, align 8
  %114 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %115 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx146 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %115, i64 0
  %id147 = bitcast %union.YYSTYPE* %arrayidx146 to i8**
  %116 = load i8*, i8** %id147, align 8
  call void @object_set_url(%struct.Object_t* %114, i8* %116)
  %117 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %117)
  %118 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %118, i64 0
  %id149 = bitcast %union.YYSTYPE* %arrayidx148 to i8**
  %119 = load i8*, i8** %id149, align 8
  call void @g_free(i8* %119)
  br label %sw.epilog

sw.bb.150:                                        ; preds = %yyreduce
  %call151 = call %struct.Object_t* @create_polygon(%struct._GList* null)
  store %struct.Object_t* %call151, %struct.Object_t** @current_object, align 8
  br label %sw.epilog

sw.bb.152:                                        ; preds = %yyreduce
  %120 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %121 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx153 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %121, i64 0
  %id154 = bitcast %union.YYSTYPE* %arrayidx153 to i8**
  %122 = load i8*, i8** %id154, align 8
  call void @object_set_url(%struct.Object_t* %120, i8* %122)
  %123 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %123)
  %124 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx155 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %124, i64 0
  %id156 = bitcast %union.YYSTYPE* %arrayidx155 to i8**
  %125 = load i8*, i8** %id156, align 8
  call void @g_free(i8* %125)
  br label %sw.epilog

sw.bb.157:                                        ; preds = %yyreduce
  br label %sw.epilog

sw.bb.158:                                        ; preds = %yyreduce
  %126 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %127 = bitcast %struct.Object_t* %126 to %struct.Polygon_t*
  store %struct.Polygon_t* %127, %struct.Polygon_t** %polygon, align 8
  %128 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx159 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %128, i64 -3
  %value160 = bitcast %union.YYSTYPE* %arrayidx159 to double*
  %129 = load double, double* %value160, align 8
  %conv161 = fptosi double %129 to i32
  %130 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx162 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %130, i64 -1
  %value163 = bitcast %union.YYSTYPE* %arrayidx162 to double*
  %131 = load double, double* %value163, align 8
  %conv164 = fptosi double %131 to i32
  %call165 = call %struct._GdkPoint* @new_point(i32 %conv161, i32 %conv164)
  store %struct._GdkPoint* %call165, %struct._GdkPoint** %point, align 8
  %132 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %132, i32 0, i32 1
  %133 = load %struct._GList*, %struct._GList** %points, align 8
  %134 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %135 = bitcast %struct._GdkPoint* %134 to i8*
  %call166 = call %struct._GList* @g_list_append(%struct._GList* %133, i8* %135)
  %136 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points167 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %136, i32 0, i32 1
  store %struct._GList* %call166, %struct._GList** %points167, align 8
  br label %sw.epilog

sw.bb.168:                                        ; preds = %yyreduce
  %137 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %137, i64 0
  %id170 = bitcast %union.YYSTYPE* %arrayidx169 to i8**
  %138 = load i8*, i8** %id170, align 8
  call void @g_free(i8* %138)
  br label %sw.epilog

sw.bb.171:                                        ; preds = %yyreduce
  %call173 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call173, %struct.MapInfo_t** %info172, align 8
  %139 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info172, align 8
  %author = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %139, i32 0, i32 3
  %140 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %140, i64 0
  %id175 = bitcast %union.YYSTYPE* %arrayidx174 to i8**
  %141 = load i8*, i8** %id175, align 8
  %call176 = call i8* @g_strreplace(i8** %author, i8* %141)
  %142 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx177 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %142, i64 0
  %id178 = bitcast %union.YYSTYPE* %arrayidx177 to i8**
  %143 = load i8*, i8** %id178, align 8
  call void @g_free(i8* %143)
  br label %sw.epilog

sw.bb.179:                                        ; preds = %yyreduce
  %call181 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call181, %struct.MapInfo_t** %info180, align 8
  %144 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info180, align 8
  %description182 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %144, i32 0, i32 5
  %145 = load i8*, i8** %description182, align 8
  %146 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx183 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %146, i64 0
  %id184 = bitcast %union.YYSTYPE* %arrayidx183 to i8**
  %147 = load i8*, i8** %id184, align 8
  %call185 = call noalias i8* (i8*, ...) @g_strconcat(i8* %145, i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call185, i8** %description, align 8
  %148 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info180, align 8
  %description186 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %148, i32 0, i32 5
  %149 = load i8*, i8** %description, align 8
  %call187 = call i8* @g_strreplace(i8** %description186, i8* %149)
  %150 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %150, i64 0
  %id189 = bitcast %union.YYSTYPE* %arrayidx188 to i8**
  %151 = load i8*, i8** %id189, align 8
  call void @g_free(i8* %151)
  br label %sw.epilog

sw.default:                                       ; preds = %yyreduce
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.179, %sw.bb.171, %sw.bb.168, %sw.bb.158, %sw.bb.157, %sw.bb.152, %sw.bb.150, %sw.bb.133, %sw.bb.110, %sw.bb
  %152 = load i32, i32* %yylen, align 4
  %153 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext = sext i32 %152 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr190 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %153, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr190, %union.YYSTYPE** %yyvsp, align 8
  %154 = load i32, i32* %yylen, align 4
  %155 = load i16*, i16** %yyssp, align 8
  %idx.ext191 = sext i32 %154 to i64
  %idx.neg192 = sub i64 0, %idx.ext191
  %add.ptr193 = getelementptr inbounds i16, i16* %155, i64 %idx.neg192
  store i16* %add.ptr193, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %156 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %156, i32 1
  store %union.YYSTYPE* %incdec.ptr194, %union.YYSTYPE** %yyvsp, align 8
  %157 = bitcast %union.YYSTYPE* %incdec.ptr194 to i8*
  %158 = bitcast %union.YYSTYPE* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 8, i32 8, i1 false)
  %159 = load i32, i32* %yyn, align 4
  %idxprom195 = sext i32 %159 to i64
  %arrayidx196 = getelementptr inbounds [24 x i8], [24 x i8]* @yyr1, i32 0, i64 %idxprom195
  %160 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %160 to i32
  store i32 %conv197, i32* %yyn, align 4
  %161 = load i32, i32* %yyn, align 4
  %sub198 = sub nsw i32 %161, 16
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [15 x i8], [15 x i8]* @yypgoto, i32 0, i64 %idxprom199
  %162 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %162 to i32
  %163 = load i16*, i16** %yyssp, align 8
  %164 = load i16, i16* %163, align 2
  %conv202 = sext i16 %164 to i32
  %add203 = add nsw i32 %conv201, %conv202
  store i32 %add203, i32* %yystate, align 4
  %165 = load i32, i32* %yystate, align 4
  %cmp204 = icmp sle i32 0, %165
  br i1 %cmp204, label %land.lhs.true, label %if.else.219

land.lhs.true:                                    ; preds = %sw.epilog
  %166 = load i32, i32* %yystate, align 4
  %cmp206 = icmp sle i32 %166, 39
  br i1 %cmp206, label %land.lhs.true.208, label %if.else.219

land.lhs.true.208:                                ; preds = %land.lhs.true
  %167 = load i32, i32* %yystate, align 4
  %idxprom209 = sext i32 %167 to i64
  %arrayidx210 = getelementptr inbounds [40 x i8], [40 x i8]* @yycheck, i32 0, i64 %idxprom209
  %168 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %168 to i32
  %169 = load i16*, i16** %yyssp, align 8
  %170 = load i16, i16* %169, align 2
  %conv212 = sext i16 %170 to i32
  %cmp213 = icmp eq i32 %conv211, %conv212
  br i1 %cmp213, label %if.then.215, label %if.else.219

if.then.215:                                      ; preds = %land.lhs.true.208
  %171 = load i32, i32* %yystate, align 4
  %idxprom216 = sext i32 %171 to i64
  %arrayidx217 = getelementptr inbounds [40 x i8], [40 x i8]* @yytable, i32 0, i64 %idxprom216
  %172 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %172 to i32
  store i32 %conv218, i32* %yystate, align 4
  br label %if.end.224

if.else.219:                                      ; preds = %land.lhs.true.208, %land.lhs.true, %sw.epilog
  %173 = load i32, i32* %yyn, align 4
  %sub220 = sub nsw i32 %173, 16
  %idxprom221 = sext i32 %sub220 to i64
  %arrayidx222 = getelementptr inbounds [15 x i8], [15 x i8]* @yydefgoto, i32 0, i64 %idxprom221
  %174 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %174 to i32
  store i32 %conv223, i32* %yystate, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.219, %if.then.215
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.97
  %175 = load i32, i32* @cern_char, align 4
  %cmp225 = icmp eq i32 %175, -2
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %yyerrlab
  br label %cond.end.238

cond.false.228:                                   ; preds = %yyerrlab
  %176 = load i32, i32* @cern_char, align 4
  %cmp229 = icmp ule i32 %176, 267
  br i1 %cmp229, label %cond.true.231, label %cond.false.235

cond.true.231:                                    ; preds = %cond.false.228
  %177 = load i32, i32* @cern_char, align 4
  %idxprom232 = sext i32 %177 to i64
  %arrayidx233 = getelementptr inbounds [268 x i8], [268 x i8]* @yytranslate, i32 0, i64 %idxprom232
  %178 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %178 to i32
  br label %cond.end.236

cond.false.235:                                   ; preds = %cond.false.228
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.231
  %cond237 = phi i32 [ %conv234, %cond.true.231 ], [ 2, %cond.false.235 ]
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.end.236, %cond.true.227
  %cond239 = phi i32 [ -2, %cond.true.227 ], [ %cond237, %cond.end.236 ]
  store i32 %cond239, i32* %yytoken, align 4
  %179 = load i32, i32* %yyerrstatus, align 4
  %tobool240 = icmp ne i32 %179, 0
  br i1 %tobool240, label %if.end.242, label %if.then.241

if.then.241:                                      ; preds = %cond.end.238
  %180 = load i32, i32* @cern_nerrs, align 4
  %inc = add nsw i32 %180, 1
  store i32 %inc, i32* @cern_nerrs, align 4
  call void @cern_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %cond.end.238
  %181 = load i32, i32* %yyerrstatus, align 4
  %cmp243 = icmp eq i32 %181, 3
  br i1 %cmp243, label %if.then.245, label %if.end.255

if.then.245:                                      ; preds = %if.end.242
  %182 = load i32, i32* @cern_char, align 4
  %cmp246 = icmp sle i32 %182, 0
  br i1 %cmp246, label %if.then.248, label %if.else.253

if.then.248:                                      ; preds = %if.then.245
  %183 = load i32, i32* @cern_char, align 4
  %cmp249 = icmp eq i32 %183, 0
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.then.248
  br label %yyabortlab

if.end.252:                                       ; preds = %if.then.248
  br label %if.end.254

if.else.253:                                      ; preds = %if.then.245
  %184 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %184, %union.YYSTYPE* @cern_lval)
  store i32 -2, i32* @cern_char, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.253, %if.end.252
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.end.242
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %185 = load i32, i32* %yylen, align 4
  %186 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext256 = sext i32 %185 to i64
  %idx.neg257 = sub i64 0, %idx.ext256
  %add.ptr258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %186, i64 %idx.neg257
  store %union.YYSTYPE* %add.ptr258, %union.YYSTYPE** %yyvsp, align 8
  %187 = load i32, i32* %yylen, align 4
  %188 = load i16*, i16** %yyssp, align 8
  %idx.ext259 = sext i32 %187 to i64
  %idx.neg260 = sub i64 0, %idx.ext259
  %add.ptr261 = getelementptr inbounds i16, i16* %188, i64 %idx.neg260
  store i16* %add.ptr261, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %189 = load i16*, i16** %yyssp, align 8
  %190 = load i16, i16* %189, align 2
  %conv262 = sext i16 %190 to i32
  store i32 %conv262, i32* %yystate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %yyerrorlab, %if.end.255
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.294, %yyerrlab1
  %191 = load i32, i32* %yystate, align 4
  %idxprom263 = sext i32 %191 to i64
  %arrayidx264 = getelementptr inbounds [51 x i8], [51 x i8]* @yypact, i32 0, i64 %idxprom263
  %192 = load i8, i8* %arrayidx264, align 1
  %conv265 = sext i8 %192 to i32
  store i32 %conv265, i32* %yyn, align 4
  %193 = load i32, i32* %yyn, align 4
  %cmp266 = icmp eq i32 %193, -6
  br i1 %cmp266, label %if.end.290, label %if.then.268

if.then.268:                                      ; preds = %for.cond
  %194 = load i32, i32* %yyn, align 4
  %add269 = add nsw i32 %194, 1
  store i32 %add269, i32* %yyn, align 4
  %195 = load i32, i32* %yyn, align 4
  %cmp270 = icmp sle i32 0, %195
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.289

land.lhs.true.272:                                ; preds = %if.then.268
  %196 = load i32, i32* %yyn, align 4
  %cmp273 = icmp sle i32 %196, 39
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.289

land.lhs.true.275:                                ; preds = %land.lhs.true.272
  %197 = load i32, i32* %yyn, align 4
  %idxprom276 = sext i32 %197 to i64
  %arrayidx277 = getelementptr inbounds [40 x i8], [40 x i8]* @yycheck, i32 0, i64 %idxprom276
  %198 = load i8, i8* %arrayidx277, align 1
  %conv278 = sext i8 %198 to i32
  %cmp279 = icmp eq i32 %conv278, 1
  br i1 %cmp279, label %if.then.281, label %if.end.289

if.then.281:                                      ; preds = %land.lhs.true.275
  %199 = load i32, i32* %yyn, align 4
  %idxprom282 = sext i32 %199 to i64
  %arrayidx283 = getelementptr inbounds [40 x i8], [40 x i8]* @yytable, i32 0, i64 %idxprom282
  %200 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %200 to i32
  store i32 %conv284, i32* %yyn, align 4
  %201 = load i32, i32* %yyn, align 4
  %cmp285 = icmp slt i32 0, %201
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %if.then.281
  br label %for.end

if.end.288:                                       ; preds = %if.then.281
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %land.lhs.true.275, %land.lhs.true.272, %if.then.268
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %for.cond
  %202 = load i16*, i16** %yyssp, align 8
  %203 = load i16*, i16** %yyss, align 8
  %cmp291 = icmp eq i16* %202, %203
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.290
  br label %yyabortlab

if.end.294:                                       ; preds = %if.end.290
  %204 = load i32, i32* %yystate, align 4
  %idxprom295 = sext i32 %204 to i64
  %arrayidx296 = getelementptr inbounds [51 x i8], [51 x i8]* @yystos, i32 0, i64 %idxprom295
  %205 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %205 to i32
  %206 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %conv297, %union.YYSTYPE* %206)
  %207 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr298 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %207, i64 -1
  store %union.YYSTYPE* %add.ptr298, %union.YYSTYPE** %yyvsp, align 8
  %208 = load i16*, i16** %yyssp, align 8
  %add.ptr299 = getelementptr inbounds i16, i16* %208, i64 -1
  store i16* %add.ptr299, i16** %yyssp, align 8
  %209 = load i16*, i16** %yyssp, align 8
  %210 = load i16, i16* %209, align 2
  %conv300 = sext i16 %210 to i32
  store i32 %conv300, i32* %yystate, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.287
  %211 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr301 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %211, i32 1
  store %union.YYSTYPE* %incdec.ptr301, %union.YYSTYPE** %yyvsp, align 8
  %212 = bitcast %union.YYSTYPE* %incdec.ptr301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* bitcast (%union.YYSTYPE* @cern_lval to i8*), i64 8, i32 8, i1 false)
  %213 = load i32, i32* %yyn, align 4
  store i32 %213, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.47
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.293, %if.then.251, %if.then.42
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %if.then.13, %if.then.6
  call void @cern_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %214 = load i32, i32* @cern_char, align 4
  %cmp302 = icmp ne i32 %214, -2
  br i1 %cmp302, label %if.then.304, label %if.end.314

if.then.304:                                      ; preds = %yyreturn
  %215 = load i32, i32* @cern_char, align 4
  %cmp305 = icmp ule i32 %215, 267
  br i1 %cmp305, label %cond.true.307, label %cond.false.311

cond.true.307:                                    ; preds = %if.then.304
  %216 = load i32, i32* @cern_char, align 4
  %idxprom308 = sext i32 %216 to i64
  %arrayidx309 = getelementptr inbounds [268 x i8], [268 x i8]* @yytranslate, i32 0, i64 %idxprom308
  %217 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %217 to i32
  br label %cond.end.312

cond.false.311:                                   ; preds = %if.then.304
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.311, %cond.true.307
  %cond313 = phi i32 [ %conv310, %cond.true.307 ], [ 2, %cond.false.311 ]
  store i32 %cond313, i32* %yytoken, align 4
  %218 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %218, %union.YYSTYPE* @cern_lval)
  br label %if.end.314

if.end.314:                                       ; preds = %cond.end.312, %yyreturn
  %219 = load i32, i32* %yylen, align 4
  %220 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext315 = sext i32 %219 to i64
  %idx.neg316 = sub i64 0, %idx.ext315
  %add.ptr317 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %220, i64 %idx.neg316
  store %union.YYSTYPE* %add.ptr317, %union.YYSTYPE** %yyvsp, align 8
  %221 = load i32, i32* %yylen, align 4
  %222 = load i16*, i16** %yyssp, align 8
  %idx.ext318 = sext i32 %221 to i64
  %idx.neg319 = sub i64 0, %idx.ext318
  %add.ptr320 = getelementptr inbounds i16, i16* %222, i64 %idx.neg319
  store i16* %add.ptr320, i16** %yyssp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.314
  %223 = load i16*, i16** %yyssp, align 8
  %224 = load i16*, i16** %yyss, align 8
  %cmp321 = icmp ne i16* %223, %224
  br i1 %cmp321, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %225 = load i16*, i16** %yyssp, align 8
  %226 = load i16, i16* %225, align 2
  %idxprom323 = sext i16 %226 to i64
  %arrayidx324 = getelementptr inbounds [51 x i8], [51 x i8]* @yystos, i32 0, i64 %idxprom323
  %227 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %227 to i32
  %228 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %conv325, %union.YYSTYPE* %228)
  %229 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr326 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %229, i64 -1
  store %union.YYSTYPE* %add.ptr326, %union.YYSTYPE** %yyvsp, align 8
  %230 = load i16*, i16** %yyssp, align 8
  %add.ptr327 = getelementptr inbounds i16, i16* %230, i64 -1
  store i16* %add.ptr327, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %231 = load i16*, i16** %yyss, align 8
  %arraydecay328 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp329 = icmp ne i16* %231, %arraydecay328
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %while.end
  %232 = load i16*, i16** %yyss, align 8
  %233 = bitcast i16* %232 to i8*
  call void @free(i8* %233)
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.331, %while.end
  %234 = load i32, i32* %yyresult, align 4
  ret i32 %234
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @free(i8*) #1

declare i32 @cern_lex() #1

declare %struct.MapInfo_t* @get_map_info() #1

declare i8* @g_strreplace(i8**, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare void @add_shape(%struct.Object_t*) #1

declare %struct.Object_t* @create_circle(i32, i32, i32) #1

declare %struct.Object_t* @create_polygon(%struct._GList*) #1

declare %struct._GdkPoint* @new_point(i32, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @cern_error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @cern_in, align 8
  %call = call i32 @cern_restart(%struct._IO_FILE* %0)
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
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8** %yymsg.addr, align 8
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
define i32 @load_cern(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @cern_in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @cern_in, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @cern_parse()
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %status, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @cern_in, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %status, align 4
  ret i32 %3
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @cern_restart(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
