; ModuleID = './plug-ins/imagemap/imap_ncsa_parse.bc'
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

@ncsa_nerrs = global i32 0, align 4
@ncsa_char = global i32 0, align 4
@yypact = internal constant [50 x i8] c"\F7\04\01\F7\F8\F9\FF\00\F7\F7\F7\F7\F7\FD\F7\F7\F7\F7\02\03\05\06\F7\F7\F7\F7\F7\F7\08\F7\09\F7\07\F7\0A\0B\0C\0E\0F\0D\F7\11\10\12\13\14\F7\15\F7\F7", align 16
@yytranslate = internal constant [269 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0E\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", align 16
@yycheck = internal constant [36 x i8] c"\03\04\05\06\00\0D\0D\0A\07\08\09\0A\0D\0D\0C\0C\FF\0C\0C\0B\0B\0E\0B\0B\0E\0B\0B\0E\0B\0B\0E\0B\0B\0E\FF\0D", align 16
@yytable = internal constant [36 x i8] c"\12\13\14\15\03\0E\0F\07\04\05\06\07\10\11\1C\1D\00\1E\1F \22#&'%)*+,.-01/\00\16", align 16
@ncsa_lval = global %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal constant [50 x i8] c"\03\00\0D\01\00\00\00\00\04\08\05\06\07\02\0A\0B\0C\09\00\00\00\00\13\0E\0F\10\11\12\00\17\00\14\00\19\00\00\18\00\00\00\1A\00\00\00\00\00\1B\00\15\16", align 16
@yyr2 = internal constant [28 x i8] c"\00\02\02\00\02\01\01\01\01\02\02\02\02\00\02\01\01\01\01\01\02\08\08\00\04\00\02\03", align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_object = internal global %struct.Object_t* null, align 8
@yyr1 = internal constant [28 x i8] c"\00\0F\10\11\11\12\12\12\12\13\14\15\16\17\17\18\18\18\18\18\19\1A\1B\1D\1C\1E\1E\1F", align 16
@yypgoto = internal constant [17 x i8] c"\F7\F7\F7\F7\16\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7", align 16
@yydefgoto = internal constant [17 x i8] c"\FF\01\02\08\09\0A\0B\0C\0D\17\18\19\1A\1B!$(", align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [50 x i8] c"\00\10\11\00\07\08\09\0A\12\13\14\15\16\17\0D\0D\0D\0D\03\04\05\06\13\18\19\1A\1B\1C\0C\0C\0C\0C\0B\1D\0B\0E\1E\0E\0B\0B\1F\0B\0B\0E\0B\0E\0B\0E\0B\0B", align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ncsa_in = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ncsa_parse() #0 {
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
  %info114 = alloca %struct.MapInfo_t*, align 8
  %info122 = alloca %struct.MapInfo_t*, align 8
  %description = alloca i8*, align 8
  %info133 = alloca %struct.MapInfo_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x164 = alloca i32, align 4
  %y168 = alloca i32, align 4
  %r = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store i32 0, i32* %yylen, align 4
  store i32 0, i32* %yytoken, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay1, %union.YYSTYPE** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @ncsa_nerrs, align 4
  store i32 -2, i32* @ncsa_char, align 4
  %0 = load i16*, i16** %yyss, align 8
  store i16* %0, i16** %yyssp, align 8
  %1 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %1, %union.YYSTYPE** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %for.end, %if.end.236, %if.end.90
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
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @yypact, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx, align 1
  %conv49 = sext i8 %47 to i32
  store i32 %conv49, i32* %yyn, align 4
  %48 = load i32, i32* %yyn, align 4
  %cmp50 = icmp eq i32 %48, -9
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %yybackup
  br label %yydefault

if.end.53:                                        ; preds = %yybackup
  %49 = load i32, i32* @ncsa_char, align 4
  %cmp54 = icmp eq i32 %49, -2
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %call57 = call i32 @ncsa_lex()
  store i32 %call57, i32* @ncsa_char, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %50 = load i32, i32* @ncsa_char, align 4
  %cmp59 = icmp sle i32 %50, 0
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.end.58
  store i32 0, i32* %yytoken, align 4
  store i32 0, i32* @ncsa_char, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.58
  %51 = load i32, i32* @ncsa_char, align 4
  %cmp62 = icmp ule i32 %51, 268
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %52 = load i32, i32* @ncsa_char, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [269 x i8], [269 x i8]* @yytranslate, i32 0, i64 %idxprom64
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
  %cmp71 = icmp slt i32 35, %57
  br i1 %cmp71, label %if.then.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false
  %58 = load i32, i32* %yyn, align 4
  %idxprom74 = sext i32 %58 to i64
  %arrayidx75 = getelementptr inbounds [36 x i8], [36 x i8]* @yycheck, i32 0, i64 %idxprom74
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
  %arrayidx82 = getelementptr inbounds [36 x i8], [36 x i8]* @yytable, i32 0, i64 %idxprom81
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
  store i32 -2, i32* @ncsa_char, align 4
  %67 = load i32, i32* %yyn, align 4
  store i32 %67, i32* %yystate, align 4
  %68 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr91 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %68, i32 1
  store %union.YYSTYPE* %incdec.ptr91, %union.YYSTYPE** %yyvsp, align 8
  %69 = bitcast %union.YYSTYPE* %incdec.ptr91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast (%union.YYSTYPE* @ncsa_lval to i8*), i64 8, i32 8, i1 false)
  br label %yynewstate

yydefault:                                        ; preds = %if.then.79, %if.then.52
  %70 = load i32, i32* %yystate, align 4
  %idxprom92 = sext i32 %70 to i64
  %arrayidx93 = getelementptr inbounds [50 x i8], [50 x i8]* @yydefact, i32 0, i64 %idxprom92
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
  %arrayidx100 = getelementptr inbounds [28 x i8], [28 x i8]* @yyr2, i32 0, i64 %idxprom99
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
    i32 9, label %sw.bb
    i32 10, label %sw.bb.106
    i32 11, label %sw.bb.113
    i32 12, label %sw.bb.121
    i32 20, label %sw.bb.132
    i32 21, label %sw.bb.140
    i32 22, label %sw.bb.163
    i32 23, label %sw.bb.184
    i32 24, label %sw.bb.186
    i32 26, label %sw.bb.191
    i32 27, label %sw.bb.192
  ]

sw.bb:                                            ; preds = %yyreduce
  %80 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx105 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %80, i64 0
  %id = bitcast %union.YYSTYPE* %arrayidx105 to i8**
  %81 = load i8*, i8** %id, align 8
  call void @g_free(i8* %81)
  br label %sw.epilog

sw.bb.106:                                        ; preds = %yyreduce
  %call107 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call107, %struct.MapInfo_t** %info, align 8
  %82 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %author = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %82, i32 0, i32 3
  %83 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx108 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %83, i64 0
  %id109 = bitcast %union.YYSTYPE* %arrayidx108 to i8**
  %84 = load i8*, i8** %id109, align 8
  %call110 = call i8* @g_strreplace(i8** %author, i8* %84)
  %85 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx111 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %85, i64 0
  %id112 = bitcast %union.YYSTYPE* %arrayidx111 to i8**
  %86 = load i8*, i8** %id112, align 8
  call void @g_free(i8* %86)
  br label %sw.epilog

sw.bb.113:                                        ; preds = %yyreduce
  %call115 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call115, %struct.MapInfo_t** %info114, align 8
  %87 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info114, align 8
  %title = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %87, i32 0, i32 2
  %88 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx116 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %88, i64 0
  %id117 = bitcast %union.YYSTYPE* %arrayidx116 to i8**
  %89 = load i8*, i8** %id117, align 8
  %call118 = call i8* @g_strreplace(i8** %title, i8* %89)
  %90 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx119 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %90, i64 0
  %id120 = bitcast %union.YYSTYPE* %arrayidx119 to i8**
  %91 = load i8*, i8** %id120, align 8
  call void @g_free(i8* %91)
  br label %sw.epilog

sw.bb.121:                                        ; preds = %yyreduce
  %call123 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call123, %struct.MapInfo_t** %info122, align 8
  %92 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info122, align 8
  %description124 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %92, i32 0, i32 5
  %93 = load i8*, i8** %description124, align 8
  %94 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx125 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %94, i64 0
  %id126 = bitcast %union.YYSTYPE* %arrayidx125 to i8**
  %95 = load i8*, i8** %id126, align 8
  %call127 = call noalias i8* (i8*, ...) @g_strconcat(i8* %93, i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call127, i8** %description, align 8
  %96 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info122, align 8
  %description128 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %96, i32 0, i32 5
  %97 = load i8*, i8** %description, align 8
  %call129 = call i8* @g_strreplace(i8** %description128, i8* %97)
  %98 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx130 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %98, i64 0
  %id131 = bitcast %union.YYSTYPE* %arrayidx130 to i8**
  %99 = load i8*, i8** %id131, align 8
  call void @g_free(i8* %99)
  br label %sw.epilog

sw.bb.132:                                        ; preds = %yyreduce
  %call134 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call134, %struct.MapInfo_t** %info133, align 8
  %100 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info133, align 8
  %default_url = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %100, i32 0, i32 4
  %101 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx135 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %101, i64 0
  %id136 = bitcast %union.YYSTYPE* %arrayidx135 to i8**
  %102 = load i8*, i8** %id136, align 8
  %call137 = call i8* @g_strreplace(i8** %default_url, i8* %102)
  %103 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx138 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %103, i64 0
  %id139 = bitcast %union.YYSTYPE* %arrayidx138 to i8**
  %104 = load i8*, i8** %id139, align 8
  call void @g_free(i8* %104)
  br label %sw.epilog

sw.bb.140:                                        ; preds = %yyreduce
  %105 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %105, i64 -5
  %value = bitcast %union.YYSTYPE* %arrayidx141 to double*
  %106 = load double, double* %value, align 8
  %conv142 = fptosi double %106 to i32
  store i32 %conv142, i32* %x, align 4
  %107 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx143 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %107, i64 -3
  %value144 = bitcast %union.YYSTYPE* %arrayidx143 to double*
  %108 = load double, double* %value144, align 8
  %conv145 = fptosi double %108 to i32
  store i32 %conv145, i32* %y, align 4
  %109 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx146 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %109, i64 -2
  %value147 = bitcast %union.YYSTYPE* %arrayidx146 to double*
  %110 = load double, double* %value147, align 8
  %111 = load i32, i32* %x, align 4
  %conv148 = sitofp i32 %111 to double
  %sub149 = fsub double %110, %conv148
  %call150 = call double @fabs(double %sub149) #4
  %conv151 = fptosi double %call150 to i32
  store i32 %conv151, i32* %width, align 4
  %112 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx152 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %112, i64 0
  %value153 = bitcast %union.YYSTYPE* %arrayidx152 to double*
  %113 = load double, double* %value153, align 8
  %114 = load i32, i32* %y, align 4
  %conv154 = sitofp i32 %114 to double
  %sub155 = fsub double %113, %conv154
  %call156 = call double @fabs(double %sub155) #4
  %conv157 = fptosi double %call156 to i32
  store i32 %conv157, i32* %height, align 4
  %115 = load i32, i32* %x, align 4
  %116 = load i32, i32* %y, align 4
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %height, align 4
  %call158 = call %struct.Object_t* @create_rectangle(i32 %115, i32 %116, i32 %117, i32 %118)
  store %struct.Object_t* %call158, %struct.Object_t** @current_object, align 8
  %119 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %120 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx159 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %120, i64 -6
  %id160 = bitcast %union.YYSTYPE* %arrayidx159 to i8**
  %121 = load i8*, i8** %id160, align 8
  call void @object_set_url(%struct.Object_t* %119, i8* %121)
  %122 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %122)
  %123 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx161 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %123, i64 -6
  %id162 = bitcast %union.YYSTYPE* %arrayidx161 to i8**
  %124 = load i8*, i8** %id162, align 8
  call void @g_free(i8* %124)
  br label %sw.epilog

sw.bb.163:                                        ; preds = %yyreduce
  %125 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx165 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %125, i64 -5
  %value166 = bitcast %union.YYSTYPE* %arrayidx165 to double*
  %126 = load double, double* %value166, align 8
  %conv167 = fptosi double %126 to i32
  store i32 %conv167, i32* %x164, align 4
  %127 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %127, i64 -3
  %value170 = bitcast %union.YYSTYPE* %arrayidx169 to double*
  %128 = load double, double* %value170, align 8
  %conv171 = fptosi double %128 to i32
  store i32 %conv171, i32* %y168, align 4
  %129 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx172 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %129, i64 0
  %value173 = bitcast %union.YYSTYPE* %arrayidx172 to double*
  %130 = load double, double* %value173, align 8
  %131 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %131, i64 -3
  %value175 = bitcast %union.YYSTYPE* %arrayidx174 to double*
  %132 = load double, double* %value175, align 8
  %sub176 = fsub double %130, %132
  %call177 = call double @fabs(double %sub176) #4
  %conv178 = fptosi double %call177 to i32
  store i32 %conv178, i32* %r, align 4
  %133 = load i32, i32* %x164, align 4
  %134 = load i32, i32* %y168, align 4
  %135 = load i32, i32* %r, align 4
  %call179 = call %struct.Object_t* @create_circle(i32 %133, i32 %134, i32 %135)
  store %struct.Object_t* %call179, %struct.Object_t** @current_object, align 8
  %136 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %137 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx180 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %137, i64 -6
  %id181 = bitcast %union.YYSTYPE* %arrayidx180 to i8**
  %138 = load i8*, i8** %id181, align 8
  call void @object_set_url(%struct.Object_t* %136, i8* %138)
  %139 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %139)
  %140 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx182 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %140, i64 -6
  %id183 = bitcast %union.YYSTYPE* %arrayidx182 to i8**
  %141 = load i8*, i8** %id183, align 8
  call void @g_free(i8* %141)
  br label %sw.epilog

sw.bb.184:                                        ; preds = %yyreduce
  %call185 = call %struct.Object_t* @create_polygon(%struct._GList* null)
  store %struct.Object_t* %call185, %struct.Object_t** @current_object, align 8
  br label %sw.epilog

sw.bb.186:                                        ; preds = %yyreduce
  %142 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %143 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx187 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %143, i64 -2
  %id188 = bitcast %union.YYSTYPE* %arrayidx187 to i8**
  %144 = load i8*, i8** %id188, align 8
  call void @object_set_url(%struct.Object_t* %142, i8* %144)
  %145 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  call void @add_shape(%struct.Object_t* %145)
  %146 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx189 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %146, i64 -2
  %id190 = bitcast %union.YYSTYPE* %arrayidx189 to i8**
  %147 = load i8*, i8** %id190, align 8
  call void @g_free(i8* %147)
  br label %sw.epilog

sw.bb.191:                                        ; preds = %yyreduce
  br label %sw.epilog

sw.bb.192:                                        ; preds = %yyreduce
  %148 = load %struct.Object_t*, %struct.Object_t** @current_object, align 8
  %149 = bitcast %struct.Object_t* %148 to %struct.Polygon_t*
  store %struct.Polygon_t* %149, %struct.Polygon_t** %polygon, align 8
  %150 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx193 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %150, i64 -2
  %value194 = bitcast %union.YYSTYPE* %arrayidx193 to double*
  %151 = load double, double* %value194, align 8
  %conv195 = fptosi double %151 to i32
  %152 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx196 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %152, i64 0
  %value197 = bitcast %union.YYSTYPE* %arrayidx196 to double*
  %153 = load double, double* %value197, align 8
  %conv198 = fptosi double %153 to i32
  %call199 = call %struct._GdkPoint* @new_point(i32 %conv195, i32 %conv198)
  store %struct._GdkPoint* %call199, %struct._GdkPoint** %point, align 8
  %154 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %154, i32 0, i32 1
  %155 = load %struct._GList*, %struct._GList** %points, align 8
  %156 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %157 = bitcast %struct._GdkPoint* %156 to i8*
  %call200 = call %struct._GList* @g_list_append(%struct._GList* %155, i8* %157)
  %158 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points201 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %158, i32 0, i32 1
  store %struct._GList* %call200, %struct._GList** %points201, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %yyreduce
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.192, %sw.bb.191, %sw.bb.186, %sw.bb.184, %sw.bb.163, %sw.bb.140, %sw.bb.132, %sw.bb.121, %sw.bb.113, %sw.bb.106, %sw.bb
  %159 = load i32, i32* %yylen, align 4
  %160 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext = sext i32 %159 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr202 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %160, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr202, %union.YYSTYPE** %yyvsp, align 8
  %161 = load i32, i32* %yylen, align 4
  %162 = load i16*, i16** %yyssp, align 8
  %idx.ext203 = sext i32 %161 to i64
  %idx.neg204 = sub i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i16, i16* %162, i64 %idx.neg204
  store i16* %add.ptr205, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %163 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr206 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %163, i32 1
  store %union.YYSTYPE* %incdec.ptr206, %union.YYSTYPE** %yyvsp, align 8
  %164 = bitcast %union.YYSTYPE* %incdec.ptr206 to i8*
  %165 = bitcast %union.YYSTYPE* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 8, i32 8, i1 false)
  %166 = load i32, i32* %yyn, align 4
  %idxprom207 = sext i32 %166 to i64
  %arrayidx208 = getelementptr inbounds [28 x i8], [28 x i8]* @yyr1, i32 0, i64 %idxprom207
  %167 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %167 to i32
  store i32 %conv209, i32* %yyn, align 4
  %168 = load i32, i32* %yyn, align 4
  %sub210 = sub nsw i32 %168, 15
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds [17 x i8], [17 x i8]* @yypgoto, i32 0, i64 %idxprom211
  %169 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %169 to i32
  %170 = load i16*, i16** %yyssp, align 8
  %171 = load i16, i16* %170, align 2
  %conv214 = sext i16 %171 to i32
  %add215 = add nsw i32 %conv213, %conv214
  store i32 %add215, i32* %yystate, align 4
  %172 = load i32, i32* %yystate, align 4
  %cmp216 = icmp sle i32 0, %172
  br i1 %cmp216, label %land.lhs.true, label %if.else.231

land.lhs.true:                                    ; preds = %sw.epilog
  %173 = load i32, i32* %yystate, align 4
  %cmp218 = icmp sle i32 %173, 35
  br i1 %cmp218, label %land.lhs.true.220, label %if.else.231

land.lhs.true.220:                                ; preds = %land.lhs.true
  %174 = load i32, i32* %yystate, align 4
  %idxprom221 = sext i32 %174 to i64
  %arrayidx222 = getelementptr inbounds [36 x i8], [36 x i8]* @yycheck, i32 0, i64 %idxprom221
  %175 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %175 to i32
  %176 = load i16*, i16** %yyssp, align 8
  %177 = load i16, i16* %176, align 2
  %conv224 = sext i16 %177 to i32
  %cmp225 = icmp eq i32 %conv223, %conv224
  br i1 %cmp225, label %if.then.227, label %if.else.231

if.then.227:                                      ; preds = %land.lhs.true.220
  %178 = load i32, i32* %yystate, align 4
  %idxprom228 = sext i32 %178 to i64
  %arrayidx229 = getelementptr inbounds [36 x i8], [36 x i8]* @yytable, i32 0, i64 %idxprom228
  %179 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %179 to i32
  store i32 %conv230, i32* %yystate, align 4
  br label %if.end.236

if.else.231:                                      ; preds = %land.lhs.true.220, %land.lhs.true, %sw.epilog
  %180 = load i32, i32* %yyn, align 4
  %sub232 = sub nsw i32 %180, 15
  %idxprom233 = sext i32 %sub232 to i64
  %arrayidx234 = getelementptr inbounds [17 x i8], [17 x i8]* @yydefgoto, i32 0, i64 %idxprom233
  %181 = load i8, i8* %arrayidx234, align 1
  %conv235 = sext i8 %181 to i32
  store i32 %conv235, i32* %yystate, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.231, %if.then.227
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.97
  %182 = load i32, i32* @ncsa_char, align 4
  %cmp237 = icmp eq i32 %182, -2
  br i1 %cmp237, label %cond.true.239, label %cond.false.240

cond.true.239:                                    ; preds = %yyerrlab
  br label %cond.end.250

cond.false.240:                                   ; preds = %yyerrlab
  %183 = load i32, i32* @ncsa_char, align 4
  %cmp241 = icmp ule i32 %183, 268
  br i1 %cmp241, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %cond.false.240
  %184 = load i32, i32* @ncsa_char, align 4
  %idxprom244 = sext i32 %184 to i64
  %arrayidx245 = getelementptr inbounds [269 x i8], [269 x i8]* @yytranslate, i32 0, i64 %idxprom244
  %185 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %185 to i32
  br label %cond.end.248

cond.false.247:                                   ; preds = %cond.false.240
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.243
  %cond249 = phi i32 [ %conv246, %cond.true.243 ], [ 2, %cond.false.247 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %cond.true.239
  %cond251 = phi i32 [ -2, %cond.true.239 ], [ %cond249, %cond.end.248 ]
  store i32 %cond251, i32* %yytoken, align 4
  %186 = load i32, i32* %yyerrstatus, align 4
  %tobool252 = icmp ne i32 %186, 0
  br i1 %tobool252, label %if.end.254, label %if.then.253

if.then.253:                                      ; preds = %cond.end.250
  %187 = load i32, i32* @ncsa_nerrs, align 4
  %inc = add nsw i32 %187, 1
  store i32 %inc, i32* @ncsa_nerrs, align 4
  call void @ncsa_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %cond.end.250
  %188 = load i32, i32* %yyerrstatus, align 4
  %cmp255 = icmp eq i32 %188, 3
  br i1 %cmp255, label %if.then.257, label %if.end.267

if.then.257:                                      ; preds = %if.end.254
  %189 = load i32, i32* @ncsa_char, align 4
  %cmp258 = icmp sle i32 %189, 0
  br i1 %cmp258, label %if.then.260, label %if.else.265

if.then.260:                                      ; preds = %if.then.257
  %190 = load i32, i32* @ncsa_char, align 4
  %cmp261 = icmp eq i32 %190, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.then.260
  br label %yyabortlab

if.end.264:                                       ; preds = %if.then.260
  br label %if.end.266

if.else.265:                                      ; preds = %if.then.257
  %191 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %191, %union.YYSTYPE* @ncsa_lval)
  store i32 -2, i32* @ncsa_char, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.265, %if.end.264
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.254
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %192 = load i32, i32* %yylen, align 4
  %193 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext268 = sext i32 %192 to i64
  %idx.neg269 = sub i64 0, %idx.ext268
  %add.ptr270 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %193, i64 %idx.neg269
  store %union.YYSTYPE* %add.ptr270, %union.YYSTYPE** %yyvsp, align 8
  %194 = load i32, i32* %yylen, align 4
  %195 = load i16*, i16** %yyssp, align 8
  %idx.ext271 = sext i32 %194 to i64
  %idx.neg272 = sub i64 0, %idx.ext271
  %add.ptr273 = getelementptr inbounds i16, i16* %195, i64 %idx.neg272
  store i16* %add.ptr273, i16** %yyssp, align 8
  store i32 0, i32* %yylen, align 4
  %196 = load i16*, i16** %yyssp, align 8
  %197 = load i16, i16* %196, align 2
  %conv274 = sext i16 %197 to i32
  store i32 %conv274, i32* %yystate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %yyerrorlab, %if.end.267
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.306, %yyerrlab1
  %198 = load i32, i32* %yystate, align 4
  %idxprom275 = sext i32 %198 to i64
  %arrayidx276 = getelementptr inbounds [50 x i8], [50 x i8]* @yypact, i32 0, i64 %idxprom275
  %199 = load i8, i8* %arrayidx276, align 1
  %conv277 = sext i8 %199 to i32
  store i32 %conv277, i32* %yyn, align 4
  %200 = load i32, i32* %yyn, align 4
  %cmp278 = icmp eq i32 %200, -9
  br i1 %cmp278, label %if.end.302, label %if.then.280

if.then.280:                                      ; preds = %for.cond
  %201 = load i32, i32* %yyn, align 4
  %add281 = add nsw i32 %201, 1
  store i32 %add281, i32* %yyn, align 4
  %202 = load i32, i32* %yyn, align 4
  %cmp282 = icmp sle i32 0, %202
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.301

land.lhs.true.284:                                ; preds = %if.then.280
  %203 = load i32, i32* %yyn, align 4
  %cmp285 = icmp sle i32 %203, 35
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.301

land.lhs.true.287:                                ; preds = %land.lhs.true.284
  %204 = load i32, i32* %yyn, align 4
  %idxprom288 = sext i32 %204 to i64
  %arrayidx289 = getelementptr inbounds [36 x i8], [36 x i8]* @yycheck, i32 0, i64 %idxprom288
  %205 = load i8, i8* %arrayidx289, align 1
  %conv290 = sext i8 %205 to i32
  %cmp291 = icmp eq i32 %conv290, 1
  br i1 %cmp291, label %if.then.293, label %if.end.301

if.then.293:                                      ; preds = %land.lhs.true.287
  %206 = load i32, i32* %yyn, align 4
  %idxprom294 = sext i32 %206 to i64
  %arrayidx295 = getelementptr inbounds [36 x i8], [36 x i8]* @yytable, i32 0, i64 %idxprom294
  %207 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %207 to i32
  store i32 %conv296, i32* %yyn, align 4
  %208 = load i32, i32* %yyn, align 4
  %cmp297 = icmp slt i32 0, %208
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.then.293
  br label %for.end

if.end.300:                                       ; preds = %if.then.293
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %land.lhs.true.287, %land.lhs.true.284, %if.then.280
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %for.cond
  %209 = load i16*, i16** %yyssp, align 8
  %210 = load i16*, i16** %yyss, align 8
  %cmp303 = icmp eq i16* %209, %210
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.302
  br label %yyabortlab

if.end.306:                                       ; preds = %if.end.302
  %211 = load i32, i32* %yystate, align 4
  %idxprom307 = sext i32 %211 to i64
  %arrayidx308 = getelementptr inbounds [50 x i8], [50 x i8]* @yystos, i32 0, i64 %idxprom307
  %212 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %212 to i32
  %213 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %conv309, %union.YYSTYPE* %213)
  %214 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr310 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %214, i64 -1
  store %union.YYSTYPE* %add.ptr310, %union.YYSTYPE** %yyvsp, align 8
  %215 = load i16*, i16** %yyssp, align 8
  %add.ptr311 = getelementptr inbounds i16, i16* %215, i64 -1
  store i16* %add.ptr311, i16** %yyssp, align 8
  %216 = load i16*, i16** %yyssp, align 8
  %217 = load i16, i16* %216, align 2
  %conv312 = sext i16 %217 to i32
  store i32 %conv312, i32* %yystate, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.299
  %218 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr313 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %218, i32 1
  store %union.YYSTYPE* %incdec.ptr313, %union.YYSTYPE** %yyvsp, align 8
  %219 = bitcast %union.YYSTYPE* %incdec.ptr313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %219, i8* bitcast (%union.YYSTYPE* @ncsa_lval to i8*), i64 8, i32 8, i1 false)
  %220 = load i32, i32* %yyn, align 4
  store i32 %220, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.47
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.305, %if.then.263, %if.then.42
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %if.then.13, %if.then.6
  call void @ncsa_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %221 = load i32, i32* @ncsa_char, align 4
  %cmp314 = icmp ne i32 %221, -2
  br i1 %cmp314, label %if.then.316, label %if.end.326

if.then.316:                                      ; preds = %yyreturn
  %222 = load i32, i32* @ncsa_char, align 4
  %cmp317 = icmp ule i32 %222, 268
  br i1 %cmp317, label %cond.true.319, label %cond.false.323

cond.true.319:                                    ; preds = %if.then.316
  %223 = load i32, i32* @ncsa_char, align 4
  %idxprom320 = sext i32 %223 to i64
  %arrayidx321 = getelementptr inbounds [269 x i8], [269 x i8]* @yytranslate, i32 0, i64 %idxprom320
  %224 = load i8, i8* %arrayidx321, align 1
  %conv322 = zext i8 %224 to i32
  br label %cond.end.324

cond.false.323:                                   ; preds = %if.then.316
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.319
  %cond325 = phi i32 [ %conv322, %cond.true.319 ], [ 2, %cond.false.323 ]
  store i32 %cond325, i32* %yytoken, align 4
  %225 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %225, %union.YYSTYPE* @ncsa_lval)
  br label %if.end.326

if.end.326:                                       ; preds = %cond.end.324, %yyreturn
  %226 = load i32, i32* %yylen, align 4
  %227 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext327 = sext i32 %226 to i64
  %idx.neg328 = sub i64 0, %idx.ext327
  %add.ptr329 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %227, i64 %idx.neg328
  store %union.YYSTYPE* %add.ptr329, %union.YYSTYPE** %yyvsp, align 8
  %228 = load i32, i32* %yylen, align 4
  %229 = load i16*, i16** %yyssp, align 8
  %idx.ext330 = sext i32 %228 to i64
  %idx.neg331 = sub i64 0, %idx.ext330
  %add.ptr332 = getelementptr inbounds i16, i16* %229, i64 %idx.neg331
  store i16* %add.ptr332, i16** %yyssp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.326
  %230 = load i16*, i16** %yyssp, align 8
  %231 = load i16*, i16** %yyss, align 8
  %cmp333 = icmp ne i16* %230, %231
  br i1 %cmp333, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %232 = load i16*, i16** %yyssp, align 8
  %233 = load i16, i16* %232, align 2
  %idxprom335 = sext i16 %233 to i64
  %arrayidx336 = getelementptr inbounds [50 x i8], [50 x i8]* @yystos, i32 0, i64 %idxprom335
  %234 = load i8, i8* %arrayidx336, align 1
  %conv337 = zext i8 %234 to i32
  %235 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %conv337, %union.YYSTYPE* %235)
  %236 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr338 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %236, i64 -1
  store %union.YYSTYPE* %add.ptr338, %union.YYSTYPE** %yyvsp, align 8
  %237 = load i16*, i16** %yyssp, align 8
  %add.ptr339 = getelementptr inbounds i16, i16* %237, i64 -1
  store i16* %add.ptr339, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %238 = load i16*, i16** %yyss, align 8
  %arraydecay340 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp341 = icmp ne i16* %238, %arraydecay340
  br i1 %cmp341, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %while.end
  %239 = load i16*, i16** %yyss, align 8
  %240 = bitcast i16* %239 to i8*
  call void @free(i8* %240)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.343, %while.end
  %241 = load i32, i32* %yyresult, align 4
  ret i32 %241
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @free(i8*) #1

declare i32 @ncsa_lex() #1

declare void @g_free(i8*) #1

declare %struct.MapInfo_t* @get_map_info() #1

declare i8* @g_strreplace(i8**, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare void @add_shape(%struct.Object_t*) #1

declare %struct.Object_t* @create_circle(i32, i32, i32) #1

declare %struct.Object_t* @create_polygon(%struct._GList*) #1

declare %struct._GdkPoint* @new_point(i32, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ncsa_error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call = call i32 @ncsa_restart(%struct._IO_FILE* %0)
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
define i32 @load_ncsa(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @ncsa_in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @ncsa_parse()
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %status, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
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

declare i32 @ncsa_restart(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
