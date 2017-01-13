; ModuleID = './app/text/gimpfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpFont = type { %struct._GimpViewable, %struct._PangoContext*, %struct._PangoLayout*, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._PangoContext = type opaque
%struct._PangoLayout = type opaque
%struct.anon = type { [4 x i8], i32, i8* }
%struct._GimpFontClass = type { %struct._GimpViewableClass }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._PangoFontDescription = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PangoFont = type opaque
%struct._PangoOTInfo = type opaque
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, i8*, i8*, i32, %struct.FT_Bitmap_Size_*, i32, %struct.FT_CharMapRec_**, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, %struct.FT_GlyphSlotRec_*, %struct.FT_SizeRec_*, %struct.FT_CharMapRec_*, %struct.FT_DriverRec_*, %struct.FT_MemoryRec_*, %struct.FT_StreamRec_*, %struct.FT_ListRec_, %struct.FT_Generic_, i8*, %struct.FT_Face_InternalRec_* }
%struct.FT_Bitmap_Size_ = type { i16, i16, i64, i64, i64 }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_GlyphSlotRec_ = type { %struct.FT_LibraryRec_*, %struct.FT_FaceRec_*, %struct.FT_GlyphSlotRec_*, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, %struct.FT_SubGlyphRec_*, i8*, i64, i64, i64, i8*, %struct.FT_Slot_InternalRec_* }
%struct.FT_LibraryRec_ = type opaque
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Bitmap_ = type { i32, i32, i32, i8*, i16, i8, i8, i8* }
%struct.FT_Outline_ = type { i16, i16, %struct.FT_Vector_*, i8*, i16*, i32 }
%struct.FT_SubGlyphRec_ = type opaque
%struct.FT_Slot_InternalRec_ = type opaque
%struct.FT_SizeRec_ = type { %struct.FT_FaceRec_*, %struct.FT_Generic_, %struct.FT_Size_Metrics_, %struct.FT_Size_InternalRec_* }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.FT_Size_InternalRec_ = type opaque
%struct.FT_CharMapRec_ = type { %struct.FT_FaceRec_*, i32, i16, i16 }
%struct.FT_DriverRec_ = type opaque
%struct.FT_MemoryRec_ = type { i8*, i8* (%struct.FT_MemoryRec_*, i64)*, void (%struct.FT_MemoryRec_*, i8*)*, i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)* }
%struct.FT_StreamRec_ = type { i8*, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, i64 (%struct.FT_StreamRec_*, i64, i8*, i64)*, void (%struct.FT_StreamRec_*)*, %struct.FT_MemoryRec_*, i8*, i8* }
%union.FT_StreamDesc_ = type { i64 }
%struct.FT_ListRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_* }
%struct.FT_ListNodeRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_*, i8* }
%struct.FT_Generic_ = type { i8*, void (i8*)* }
%struct.FT_Face_InternalRec_ = type opaque
%struct.TT_OS2_ = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [10 x i8], i64, i64, i64, i64, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16 }
%struct._PangoFcFont = type opaque

@gimp_font_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpFont\00", align 1
@gimp_font_get_standard.standard_font = internal global %struct._GimpFont* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@gimp_font_parent_class = internal global i8* null, align 8
@GimpFont_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pango-context\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gimpfont.c\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_font_get_popup_size = private unnamed_addr constant [25 x i8] c"gimp_font_get_popup_size\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"font_desc != NULL\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Pack my box with\0Afive dozen liquor jugs.\00", align 1
@__func__.gimp_font_get_new_preview = private unnamed_addr constant [26 x i8] c"gimp_font_get_new_preview\00", align 1
@gimp_font_get_sample_string.scripts = internal constant [39 x %struct.anon] [%struct.anon { [4 x i8] c"hani", i32 59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { [4 x i8] c"copt", i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { [4 x i8] c"grek", i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { [4 x i8] c"cyrl", i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { [4 x i8] c"armn", i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { [4 x i8] c"hebr", i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { [4 x i8] c"arab", i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { [4 x i8] c"syrc", i32 71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { [4 x i8] c"thaa", i32 72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { [4 x i8] c"deva", i32 15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { [4 x i8] c"beng", i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon { [4 x i8] c"guru", i32 17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { [4 x i8] c"gujr", i32 18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon { [4 x i8] c"orya", i32 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { [4 x i8] c"taml", i32 20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { [4 x i8] c"telu", i32 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { [4 x i8] c"knda", i32 22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon { [4 x i8] c"mylm", i32 23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0) }, %struct.anon { [4 x i8] c"sinh", i32 73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon { [4 x i8] c"thai", i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0) }, %struct.anon { [4 x i8] c"laoo", i32 25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon { [4 x i8] c"tibt", i32 70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0) }, %struct.anon { [4 x i8] c"mymr", i32 74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0) }, %struct.anon { [4 x i8] c"geor", i32 26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0) }, %struct.anon { [4 x i8] c"hang", i32 28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { [4 x i8] c"ethi", i32 75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0) }, %struct.anon { [4 x i8] c"cher", i32 76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon { [4 x i8] c"cans", i32 77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0) }, %struct.anon { [4 x i8] c"ogam", i32 78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { [4 x i8] c"runr", i32 79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0) }, %struct.anon { [4 x i8] c"tglg", i32 84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon { [4 x i8] c"hano", i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0) }, %struct.anon { [4 x i8] c"buhd", i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { [4 x i8] c"tagb", i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0) }, %struct.anon { [4 x i8] c"khmr", i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { [4 x i8] c"mong", i32 81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0) }, %struct.anon { [4 x i8] c"limb", i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0) }, %struct.anon { [4 x i8] c"tale", i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon { [4 x i8] c"latn", i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0) }], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"\E6\B0\B8\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\CE\91\CE\B1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\D0\90\D5\B0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\D4\B1\D5\A1\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\D7\90\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\D8\A7\D8\A8\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\DC\90\DC\92\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\DE\80\DE\81\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\E0\A4\85\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\E0\A6\85\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\E0\A8\85\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\E0\AA\85\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"\E0\AC\85\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\E0\AE\85\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\E0\B0\85\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\E0\B2\85\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"\E0\B4\85\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\E0\B6\85\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\E0\B8\81\E0\B8\B4\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\E0\BA\81\E0\BA\B4\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"\E0\BC\80\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\E1\80\80\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\E1\82\A0\E1\83\80\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\E1\84\80\E1\84\81\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"\E1\88\80\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\E1\8E\A3\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\E1\90\81\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"\E1\9A\81\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"\E1\9A\A0\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"\E1\9C\80\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"\E1\9C\A0\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"\E1\9D\80\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\E1\9D\A0\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"\E1\9E\81\E1\9F\92\E1\9E\89\E1\9E\BB\E1\9F\86\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"\E1\A0\A0\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"\E1\A4\81\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"\E1\A5\90\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@__func__.gimp_font_get_sample_string = private unnamed_addr constant [28 x i8] c"gimp_font_get_sample_string\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"PANGO_IS_FC_FONT (font)\00", align 1
@g_utf8_skip = external constant i8*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_font_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_font_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_font_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_viewable_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_font_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFont*)* @gimp_font_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_font_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_font_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_font_parent_class, align 8
  %1 = load i32, i32* @GimpFont_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFont_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFontClass*
  call void @gimp_font_class_init(%struct._GimpFontClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_font_init(%struct._GimpFont* %font) #3 {
entry:
  %font.addr = alloca %struct._GimpFont*, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  %0 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %pango_context = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %0, i32 0, i32 1
  store %struct._PangoContext* null, %struct._PangoContext** %pango_context, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpFont* @gimp_font_get_standard() #3 {
entry:
  %0 = load %struct._GimpFont*, %struct._GimpFont** @gimp_font_get_standard.standard_font, align 8
  %tobool = icmp ne %struct._GimpFont* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_font_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpFont*
  store %struct._GimpFont* %1, %struct._GimpFont** @gimp_font_get_standard.standard_font, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpFont*, %struct._GimpFont** @gimp_font_get_standard.standard_font, align 8
  ret %struct._GimpFont* %2
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_class_init(%struct._GimpFontClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFontClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpFontClass* %klass, %struct._GimpFontClass** %klass.addr, align 8
  %0 = load %struct._GimpFontClass*, %struct._GimpFontClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFontClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpFontClass*, %struct._GimpFontClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFontClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_font_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_font_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %8, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_font_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %9 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %9, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_font_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %10 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %10, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_font_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %11 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8** %default_stock_id, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @pango_context_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 226)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %font = alloca %struct._GimpFont*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_font_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFont*
  store %struct._GimpFont* %2, %struct._GimpFont** %font, align 8
  %3 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %3, i32 0, i32 1
  %4 = load %struct._PangoContext*, %struct._PangoContext** %pango_context, align 8
  %tobool = icmp ne %struct._PangoContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context2 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %5, i32 0, i32 1
  %6 = load %struct._PangoContext*, %struct._PangoContext** %pango_context2, align 8
  %7 = bitcast %struct._PangoContext* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context3 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %8, i32 0, i32 1
  store %struct._PangoContext* null, %struct._PangoContext** %pango_context3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %9, i32 0, i32 2
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout, align 8
  %tobool4 = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout6 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %11, i32 0, i32 2
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout6, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout7 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %14, i32 0, i32 2
  store %struct._PangoLayout* null, %struct._PangoLayout** %popup_layout7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_font_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_font_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %font = alloca %struct._GimpFont*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_font_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFont*
  store %struct._GimpFont* %2, %struct._GimpFont** %font, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %4, i32 0, i32 1
  %5 = load %struct._PangoContext*, %struct._PangoContext** %pango_context, align 8
  %tobool = icmp ne %struct._PangoContext* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context2 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %6, i32 0, i32 1
  %7 = load %struct._PangoContext*, %struct._PangoContext** %pango_context2, align 8
  %8 = bitcast %struct._PangoContext* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._PangoContext*
  %11 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context4 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %11, i32 0, i32 1
  store %struct._PangoContext* %10, %struct._PangoContext** %pango_context4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %15, i8* %17, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_font_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %popup, i32 %dot_for_dot, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %popup, i32* %popup.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32*, i32** %width.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32*, i32** %height.addr, align 8
  store i32 %2, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_font_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %font = alloca %struct._GimpFont*, align 8
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %ink = alloca %struct._PangoRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  %name = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_font_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFont*
  store %struct._GimpFont* %2, %struct._GimpFont** %font, align 8
  %3 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %3, i32 0, i32 1
  %4 = load %struct._PangoContext*, %struct._PangoContext** %pango_context, align 8
  %tobool = icmp ne %struct._PangoContext* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %6 = bitcast %struct._GimpFont* %5 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %6)
  store i8* %call2, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %call3 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %7)
  store %struct._PangoFontDescription* %call3, %struct._PangoFontDescription** %font_desc, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %cmp = icmp ne %struct._PangoFontDescription* %8, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_font_get_popup_size, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %9 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_set_size(%struct._PangoFontDescription* %9, i32 30720)
  %10 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %10, i32 0, i32 2
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout, align 8
  %tobool6 = icmp ne %struct._PangoLayout* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end
  %12 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout8 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %12, i32 0, i32 2
  %13 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout8, align 8
  %14 = bitcast %struct._PangoLayout* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.end
  %15 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context10 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %15, i32 0, i32 1
  %16 = load %struct._PangoContext*, %struct._PangoContext** %pango_context10, align 8
  %call11 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %16)
  %17 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout12 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %17, i32 0, i32 2
  store %struct._PangoLayout* %call11, %struct._PangoLayout** %popup_layout12, align 8
  %18 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout13 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %18, i32 0, i32 2
  %19 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout13, align 8
  %20 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_layout_set_font_description(%struct._PangoLayout* %19, %struct._PangoFontDescription* %20)
  %21 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %21)
  %22 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout14 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %22, i32 0, i32 2
  %23 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout14, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)) #4
  call void @pango_layout_set_text(%struct._PangoLayout* %23, i8* %call15, i32 -1)
  %24 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout16 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %24, i32 0, i32 2
  %25 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout16, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %25, %struct._PangoRectangle* %ink, %struct._PangoRectangle* %logical)
  %width17 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %26 = load i32, i32* %width17, align 4
  %width18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %27 = load i32, i32* %width18, align 4
  %cmp19 = icmp sgt i32 %26, %27
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %width20 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %28 = load i32, i32* %width20, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %width21 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %29 = load i32, i32* %width21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %add = add nsw i32 %cond, 6
  %30 = load i32*, i32** %popup_width.addr, align 8
  store i32 %add, i32* %30, align 4
  %height22 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %31 = load i32, i32* %height22, align 4
  %height23 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %32 = load i32, i32* %height23, align 4
  %cmp24 = icmp sgt i32 %31, %32
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end
  %height26 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %33 = load i32, i32* %height26, align 4
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.end
  %height28 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %34 = load i32, i32* %height28, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.25
  %cond30 = phi i32 [ %33, %cond.true.25 ], [ %34, %cond.false.27 ]
  %add31 = add nsw i32 %cond30, 6
  %35 = load i32*, i32** %popup_height.addr, align 8
  store i32 %add31, i32* %35, align 4
  %36 = load i32*, i32** %popup_width.addr, align 8
  %37 = load i32, i32* %36, align 4
  %call32 = call i32 @cairo_format_stride_for_width(i32 2, i32 %37)
  %38 = load i32*, i32** %popup_width.addr, align 8
  store i32 %call32, i32* %38, align 4
  %39 = load i32*, i32** %popup_width.addr, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_width33 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %41, i32 0, i32 3
  store i32 %40, i32* %popup_width33, align 4
  %42 = load i32*, i32** %popup_height.addr, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_height34 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %44, i32 0, i32 4
  store i32 %43, i32* %popup_height34, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.29, %if.else, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_font_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %font = alloca %struct._GimpFont*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %ink = alloca %struct._PangoRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  %layout_width = alloca i32, align 4
  %layout_height = alloca i32, align 4
  %layout_x = alloca i32, align 4
  %layout_y = alloca i32, align 4
  %temp_buf = alloca %struct._TempBuf*, align 8
  %cr = alloca %struct._cairo*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %white = alloca i8, align 1
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_font_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFont*
  store %struct._GimpFont* %2, %struct._GimpFont** %font, align 8
  store i8 -1, i8* %white, align 1
  %3 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %3, i32 0, i32 1
  %4 = load %struct._PangoContext*, %struct._PangoContext** %pango_context, align 8
  %tobool = icmp ne %struct._PangoContext* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %5, i32 0, i32 2
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout, align 8
  %tobool2 = icmp ne %struct._PangoLayout* %6, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_width = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %7, i32 0, i32 3
  %8 = load i32, i32* %popup_width, align 4
  %9 = load i32, i32* %width.addr, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_height = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %10, i32 0, i32 4
  %11 = load i32, i32* %popup_height, align 4
  %12 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp ne i32 %11, %12
  br i1 %cmp4, label %if.then.5, label %if.else.17

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %13 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %14 = bitcast %struct._GimpFont* %13 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %14)
  store i8* %call6, i8** %name, align 8
  %15 = load i8*, i8** %name, align 8
  %call7 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %15)
  store %struct._PangoFontDescription* %call7, %struct._PangoFontDescription** %font_desc, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %16 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %cmp8 = icmp ne %struct._PangoFontDescription* %16, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_font_get_new_preview, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %17 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %18 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 1024, %18
  %conv = sitofp i32 %mul to double
  %mul11 = fmul double %conv, 2.000000e+00
  %div = fdiv double %mul11, 3.000000e+00
  %conv12 = fptosi double %div to i32
  call void @pango_font_description_set_size(%struct._PangoFontDescription* %17, i32 %conv12)
  %19 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context13 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %19, i32 0, i32 1
  %20 = load %struct._PangoContext*, %struct._PangoContext** %pango_context13, align 8
  %call14 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %20)
  store %struct._PangoLayout* %call14, %struct._PangoLayout** %layout, align 8
  %21 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %22 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_layout_set_font_description(%struct._PangoLayout* %21, %struct._PangoFontDescription* %22)
  %23 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %24 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %pango_context15 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %24, i32 0, i32 1
  %25 = load %struct._PangoContext*, %struct._PangoContext** %pango_context15, align 8
  %26 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %call16 = call i8* @gimp_font_get_sample_string(%struct._PangoContext* %25, %struct._PangoFontDescription* %26)
  call void @pango_layout_set_text(%struct._PangoLayout* %23, i8* %call16, i32 -1)
  %27 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %27)
  br label %if.end.20

if.else.17:                                       ; preds = %lor.lhs.false.3
  %28 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %popup_layout18 = getelementptr inbounds %struct._GimpFont, %struct._GimpFont* %28, i32 0, i32 2
  %29 = load %struct._PangoLayout*, %struct._PangoLayout** %popup_layout18, align 8
  %30 = bitcast %struct._PangoLayout* %29 to i8*
  %call19 = call i8* @g_object_ref(i8* %30)
  %31 = bitcast i8* %call19 to %struct._PangoLayout*
  store %struct._PangoLayout* %31, %struct._PangoLayout** %layout, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %do.end
  %32 = load i32, i32* %width.addr, align 4
  %call21 = call i32 @cairo_format_stride_for_width(i32 2, i32 %32)
  store i32 %call21, i32* %width.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %call22 = call %struct._TempBuf* @temp_buf_new(i32 %33, i32 %34, i32 1, i32 0, i32 0, i8* %white)
  store %struct._TempBuf* %call22, %struct._TempBuf** %temp_buf, align 8
  %35 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %call23 = call i8* @temp_buf_get_data(%struct._TempBuf* %35)
  %36 = load i32, i32* %width.addr, align 4
  %37 = load i32, i32* %height.addr, align 4
  %38 = load i32, i32* %width.addr, align 4
  %call24 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %call23, i32 2, i32 %36, i32 %37, i32 %38)
  store %struct._cairo_surface* %call24, %struct._cairo_surface** %surface, align 8
  %39 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %39, %struct._PangoRectangle* %ink, %struct._PangoRectangle* %logical)
  %width25 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %40 = load i32, i32* %width25, align 4
  %width26 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %41 = load i32, i32* %width26, align 4
  %cmp27 = icmp sgt i32 %40, %41
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %width29 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %42 = load i32, i32* %width29, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %width30 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %43 = load i32, i32* %width30, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ %43, %cond.false ]
  store i32 %cond, i32* %layout_width, align 4
  %height31 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %44 = load i32, i32* %height31, align 4
  %height32 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %45 = load i32, i32* %height32, align 4
  %cmp33 = icmp sgt i32 %44, %45
  br i1 %cmp33, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end
  %height36 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %46 = load i32, i32* %height36, align 4
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.end
  %height38 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %47 = load i32, i32* %height38, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.35
  %cond40 = phi i32 [ %46, %cond.true.35 ], [ %47, %cond.false.37 ]
  store i32 %cond40, i32* %layout_height, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %layout_width, align 4
  %sub = sub nsw i32 %48, %49
  %div41 = sdiv i32 %sub, 2
  store i32 %div41, i32* %layout_x, align 4
  %50 = load i32, i32* %height.addr, align 4
  %51 = load i32, i32* %layout_height, align 4
  %sub42 = sub nsw i32 %50, %51
  %div43 = sdiv i32 %sub42, 2
  store i32 %div43, i32* %layout_y, align 4
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %52 = load i32, i32* %x, align 4
  %x44 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %53 = load i32, i32* %x44, align 4
  %cmp45 = icmp slt i32 %52, %53
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %cond.end.39
  %x48 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %54 = load i32, i32* %x48, align 4
  %x49 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %55 = load i32, i32* %x49, align 4
  %sub50 = sub nsw i32 %54, %55
  %56 = load i32, i32* %layout_x, align 4
  %add = add nsw i32 %56, %sub50
  store i32 %add, i32* %layout_x, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %cond.end.39
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %57 = load i32, i32* %y, align 4
  %y52 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %58 = load i32, i32* %y52, align 4
  %cmp53 = icmp slt i32 %57, %58
  br i1 %cmp53, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.51
  %y56 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %59 = load i32, i32* %y56, align 4
  %y57 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %60 = load i32, i32* %y57, align 4
  %sub58 = sub nsw i32 %59, %60
  %61 = load i32, i32* %layout_y, align 4
  %add59 = add nsw i32 %61, %sub58
  store i32 %add59, i32* %layout_y, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.end.51
  %62 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call61 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %62)
  store %struct._cairo* %call61, %struct._cairo** %cr, align 8
  %63 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %64 = load i32, i32* %layout_x, align 4
  %conv62 = sitofp i32 %64 to double
  %65 = load i32, i32* %layout_y, align 4
  %conv63 = sitofp i32 %65 to double
  call void @cairo_translate(%struct._cairo* %63, double %conv62, double %conv63)
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_operator(%struct._cairo* %66, i32 0)
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %68 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %67, %struct._PangoLayout* %68)
  %69 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %69)
  %70 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %70)
  %71 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %72 = bitcast %struct._PangoLayout* %71 to i8*
  call void @g_object_unref(i8* %72)
  %73 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  store %struct._TempBuf* %73, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.else, %if.then
  %74 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %74
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @pango_context_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @pango_font_description_set_size(%struct._PangoFontDescription*, i32) #1

declare %struct._PangoLayout* @pango_layout_new(%struct._PangoContext*) #1

declare void @pango_layout_set_font_description(%struct._PangoLayout*, %struct._PangoFontDescription*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare i32 @cairo_format_stride_for_width(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_font_get_sample_string(%struct._PangoContext* %context, %struct._PangoFontDescription* %font_desc) #3 {
entry:
  %retval = alloca i8*, align 8
  %context.addr = alloca %struct._PangoContext*, align 8
  %font_desc.addr = alloca %struct._PangoFontDescription*, align 8
  %font = alloca %struct._PangoFont*, align 8
  %ot_info = alloca %struct._PangoOTInfo*, align 8
  %face = alloca %struct.FT_FaceRec_*, align 8
  %os2 = alloca %struct.TT_OS2_*, align 8
  %tt = alloca i32, align 4
  %i = alloca i32, align 4
  %ot_alts = alloca [4 x i32], align 16
  %n_ot_alts = alloca i32, align 4
  %sr_alts = alloca [20 x i32], align 16
  %n_sr_alts = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %slist = alloca i32*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i160 = alloca i32, align 4
  %i185 = alloca i32, align 4
  store %struct._PangoContext* %context, %struct._PangoContext** %context.addr, align 8
  store %struct._PangoFontDescription* %font_desc, %struct._PangoFontDescription** %font_desc.addr, align 8
  store i32 0, i32* %n_ot_alts, align 4
  store i32 0, i32* %n_sr_alts, align 4
  %0 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %1 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc.addr, align 8
  %call = call %struct._PangoFont* @pango_context_load_font(%struct._PangoContext* %0, %struct._PangoFontDescription* %1)
  store %struct._PangoFont* %call, %struct._PangoFont** %font, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %3 = bitcast %struct._PangoFont* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @pango_fc_font_get_type() #8
  store i64 %call1, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_font_get_sample_string, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0))
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %15 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %16 = bitcast %struct._PangoFont* %15 to %struct._GTypeInstance*
  %call12 = call i64 @pango_fc_font_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._PangoFcFont*
  %call14 = call %struct.FT_FaceRec_* @pango_fc_font_lock_face(%struct._PangoFcFont* %17)
  store %struct.FT_FaceRec_* %call14, %struct.FT_FaceRec_** %face, align 8
  %18 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  %call15 = call %struct._PangoOTInfo* @pango_ot_info_get(%struct.FT_FaceRec_* %18)
  store %struct._PangoOTInfo* %call15, %struct._PangoOTInfo** %ot_info, align 8
  store i32 0, i32* %tt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %do.end
  %19 = load i32, i32* %n_ot_alts, align 4
  %conv = sext i32 %19 to i64
  %cmp16 = icmp ult i64 %conv, 4
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i32, i32* %tt, align 4
  %cmp18 = icmp ule i32 %20, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ]
  br i1 %21, label %for.body, label %for.end.107

for.body:                                         ; preds = %land.end
  %22 = load %struct._PangoOTInfo*, %struct._PangoOTInfo** %ot_info, align 8
  %23 = load i32, i32* %tt, align 4
  %call21 = call i32* @pango_ot_info_list_scripts(%struct._PangoOTInfo* %22, i32 %23)
  store i32* %call21, i32** %slist, align 8
  %24 = load i32*, i32** %slist, align 8
  %tobool22 = icmp ne i32* %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.104

if.then.23:                                       ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.101, %if.then.23
  %25 = load i32, i32* %n_ot_alts, align 4
  %conv25 = sext i32 %25 to i64
  %cmp26 = icmp ult i64 %conv25, 4
  br i1 %cmp26, label %land.rhs.28, label %land.end.32

land.rhs.28:                                      ; preds = %for.cond.24
  %26 = load i32, i32* %i, align 4
  %conv29 = sext i32 %26 to i64
  %cmp30 = icmp ult i64 %conv29, 39
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.28, %for.cond.24
  %27 = phi i1 [ false, %for.cond.24 ], [ %cmp30, %land.rhs.28 ]
  br i1 %27, label %for.body.33, label %for.end.103

for.body.33:                                      ; preds = %land.end.32
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body.33
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %n_ot_alts, align 4
  %cmp37 = icmp slt i32 %28, %29
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %30 = load i32, i32* %k, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %ot_alts, i32 0, i64 %idxprom
  %31 = load i32, i32* %arrayidx, align 4
  %32 = load i32, i32* %i, align 4
  %cmp40 = icmp eq i32 %31, %32
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.39
  br label %for.end

if.end.43:                                        ; preds = %for.body.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.36

for.end:                                          ; preds = %if.then.42, %for.cond.36
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %n_ot_alts, align 4
  %cmp44 = icmp eq i32 %34, %35
  br i1 %cmp44, label %if.then.46, label %if.end.100

if.then.46:                                       ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.97, %if.then.46
  %36 = load i32, i32* %n_ot_alts, align 4
  %conv48 = sext i32 %36 to i64
  %cmp49 = icmp ult i64 %conv48, 4
  br i1 %cmp49, label %land.rhs.51, label %land.end.55

land.rhs.51:                                      ; preds = %for.cond.47
  %37 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %37 to i64
  %38 = load i32*, i32** %slist, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %38, i64 %idxprom52
  %39 = load i32, i32* %arrayidx53, align 4
  %tobool54 = icmp ne i32 %39, 0
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.51, %for.cond.47
  %40 = phi i1 [ false, %for.cond.47 ], [ %tobool54, %land.rhs.51 ]
  br i1 %40, label %for.body.56, label %for.end.99

for.body.56:                                      ; preds = %land.end.55
  %41 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load i32*, i32** %slist, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %42, i64 %idxprom57
  %43 = load i32, i32* %arrayidx58, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom59
  %script = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx60, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %script, i32 0, i64 0
  %45 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %45 to i64
  %shl = shl i64 %conv62, 24
  %46 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom63
  %script65 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %script65, i32 0, i64 1
  %47 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %47 to i64
  %shl68 = shl i64 %conv67, 16
  %or = or i64 %shl, %shl68
  %48 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %48 to i64
  %arrayidx70 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom69
  %script71 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [4 x i8], [4 x i8]* %script71, i32 0, i64 2
  %49 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %49 to i64
  %shl74 = shl i64 %conv73, 8
  %or75 = or i64 %or, %shl74
  %50 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom76
  %script78 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx77, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %script78, i32 0, i64 3
  %51 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %51 to i64
  %or81 = or i64 %or75, %conv80
  %conv82 = trunc i64 %or81 to i32
  %cmp83 = icmp eq i32 %43, %conv82
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.96

land.lhs.true.85:                                 ; preds = %for.body.56
  %52 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %53 = bitcast %struct._PangoFont* %52 to %struct._GTypeInstance*
  %call86 = call i64 @pango_fc_font_get_type() #8
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call86)
  %54 = bitcast %struct._GTypeInstance* %call87 to %struct._PangoFcFont*
  %55 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %55 to i64
  %arrayidx89 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom88
  %sample = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx89, i32 0, i32 2
  %56 = load i8*, i8** %sample, align 8
  %call90 = call i32 @gimp_font_covers_string(%struct._PangoFcFont* %54, i8* %56)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %land.lhs.true.85
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n_ot_alts, align 4
  %inc93 = add nsw i32 %58, 1
  store i32 %inc93, i32* %n_ot_alts, align 4
  %idxprom94 = sext i32 %58 to i64
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %ot_alts, i32 0, i64 %idxprom94
  store i32 %57, i32* %arrayidx95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %land.lhs.true.85, %for.body.56
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %59 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %59, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond.47

for.end.99:                                       ; preds = %land.end.55
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.end
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %60 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %60, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.24

for.end.103:                                      ; preds = %land.end.32
  %61 = load i32*, i32** %slist, align 8
  %62 = bitcast i32* %61 to i8*
  call void @g_free(i8* %62)
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %for.body
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %63 = load i32, i32* %tt, align 4
  %inc106 = add i32 %63, 1
  store i32 %inc106, i32* %tt, align 4
  br label %for.cond

for.end.107:                                      ; preds = %land.end
  %64 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  %call108 = call i8* @FT_Get_Sfnt_Table(%struct.FT_FaceRec_* %64, i32 2)
  %65 = bitcast i8* %call108 to %struct.TT_OS2_*
  store %struct.TT_OS2_* %65, %struct.TT_OS2_** %os2, align 8
  %66 = load %struct.TT_OS2_*, %struct.TT_OS2_** %os2, align 8
  %tobool109 = icmp ne %struct.TT_OS2_* %66, null
  br i1 %tobool109, label %if.then.110, label %if.end.153

if.then.110:                                      ; preds = %for.end.107
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.150, %if.then.110
  %67 = load i32, i32* %n_sr_alts, align 4
  %conv112 = sext i32 %67 to i64
  %cmp113 = icmp ult i64 %conv112, 20
  br i1 %cmp113, label %land.rhs.115, label %land.end.119

land.rhs.115:                                     ; preds = %for.cond.111
  %68 = load i32, i32* %i, align 4
  %conv116 = sext i32 %68 to i64
  %cmp117 = icmp ult i64 %conv116, 39
  br label %land.end.119

land.end.119:                                     ; preds = %land.rhs.115, %for.cond.111
  %69 = phi i1 [ false, %for.cond.111 ], [ %cmp117, %land.rhs.115 ]
  br i1 %69, label %for.body.120, label %for.end.152

for.body.120:                                     ; preds = %land.end.119
  %70 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %70 to i64
  %arrayidx122 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom121
  %bit = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx122, i32 0, i32 1
  %71 = load i32, i32* %bit, align 4
  %cmp123 = icmp sge i32 %71, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.149

land.lhs.true.125:                                ; preds = %for.body.120
  %72 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %72 to i64
  %arrayidx127 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom126
  %bit128 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx127, i32 0, i32 1
  %73 = load i32, i32* %bit128, align 4
  %div = sdiv i32 %73, 32
  %idxprom129 = sext i32 %div to i64
  %74 = load %struct.TT_OS2_*, %struct.TT_OS2_** %os2, align 8
  %ulUnicodeRange1 = getelementptr inbounds %struct.TT_OS2_, %struct.TT_OS2_* %74, i32 0, i32 17
  %arrayidx130 = getelementptr inbounds i64, i64* %ulUnicodeRange1, i64 %idxprom129
  %75 = load i64, i64* %arrayidx130, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %76 to i64
  %arrayidx132 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom131
  %bit133 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx132, i32 0, i32 1
  %77 = load i32, i32* %bit133, align 4
  %rem = srem i32 %77, 32
  %shl134 = shl i32 1, %rem
  %conv135 = sext i32 %shl134 to i64
  %and = and i64 %75, %conv135
  %tobool136 = icmp ne i64 %and, 0
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.149

land.lhs.true.137:                                ; preds = %land.lhs.true.125
  %78 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %79 = bitcast %struct._PangoFont* %78 to %struct._GTypeInstance*
  %call138 = call i64 @pango_fc_font_get_type() #8
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call138)
  %80 = bitcast %struct._GTypeInstance* %call139 to %struct._PangoFcFont*
  %81 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %81 to i64
  %arrayidx141 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom140
  %sample142 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx141, i32 0, i32 2
  %82 = load i8*, i8** %sample142, align 8
  %call143 = call i32 @gimp_font_covers_string(%struct._PangoFcFont* %80, i8* %82)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %land.lhs.true.137
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %n_sr_alts, align 4
  %inc146 = add nsw i32 %84, 1
  store i32 %inc146, i32* %n_sr_alts, align 4
  %idxprom147 = sext i32 %84 to i64
  %arrayidx148 = getelementptr inbounds [20 x i32], [20 x i32]* %sr_alts, i32 0, i64 %idxprom147
  store i32 %83, i32* %arrayidx148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %land.lhs.true.137, %land.lhs.true.125, %for.body.120
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %85 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %85, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.111

for.end.152:                                      ; preds = %land.end.119
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %for.end.107
  %86 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %87 = bitcast %struct._PangoFont* %86 to %struct._GTypeInstance*
  %call154 = call i64 @pango_fc_font_get_type() #8
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call154)
  %88 = bitcast %struct._GTypeInstance* %call155 to %struct._PangoFcFont*
  call void @pango_fc_font_unlock_face(%struct._PangoFcFont* %88)
  %89 = load %struct._PangoFont*, %struct._PangoFont** %font, align 8
  %90 = bitcast %struct._PangoFont* %89 to i8*
  call void @g_object_unref(i8* %90)
  %91 = load i32, i32* %n_ot_alts, align 4
  %cmp156 = icmp sgt i32 %91, 2
  br i1 %cmp156, label %if.then.158, label %if.end.177

if.then.158:                                      ; preds = %if.end.153
  store i32 0, i32* %i160, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.174, %if.then.158
  %92 = load i32, i32* %i160, align 4
  %93 = load i32, i32* %n_sr_alts, align 4
  %cmp162 = icmp slt i32 %92, %93
  br i1 %cmp162, label %for.body.164, label %for.end.176

for.body.164:                                     ; preds = %for.cond.161
  %94 = load i32, i32* %i160, align 4
  %idxprom165 = sext i32 %94 to i64
  %arrayidx166 = getelementptr inbounds [20 x i32], [20 x i32]* %sr_alts, i32 0, i64 %idxprom165
  %95 = load i32, i32* %arrayidx166, align 4
  %idxprom167 = sext i32 %95 to i64
  %arrayidx168 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom167
  %bit169 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx168, i32 0, i32 1
  %96 = load i32, i32* %bit169, align 4
  %cmp170 = icmp eq i32 %96, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %for.body.164
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

if.end.173:                                       ; preds = %for.body.164
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %97 = load i32, i32* %i160, align 4
  %inc175 = add nsw i32 %97, 1
  store i32 %inc175, i32* %i160, align 4
  br label %for.cond.161

for.end.176:                                      ; preds = %for.cond.161
  br label %if.end.177

if.end.177:                                       ; preds = %for.end.176, %if.end.153
  %98 = load i32, i32* %n_ot_alts, align 4
  %cmp178 = icmp sgt i32 %98, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.206

land.lhs.true.180:                                ; preds = %if.end.177
  %99 = load i32, i32* %n_sr_alts, align 4
  %100 = load i32, i32* %n_ot_alts, align 4
  %add = add nsw i32 %100, 3
  %cmp181 = icmp sge i32 %99, %add
  br i1 %cmp181, label %if.then.183, label %if.end.206

if.then.183:                                      ; preds = %land.lhs.true.180
  store i32 0, i32* %i185, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.199, %if.then.183
  %101 = load i32, i32* %i185, align 4
  %102 = load i32, i32* %n_sr_alts, align 4
  %cmp187 = icmp slt i32 %101, %102
  br i1 %cmp187, label %for.body.189, label %for.end.201

for.body.189:                                     ; preds = %for.cond.186
  %103 = load i32, i32* %i185, align 4
  %idxprom190 = sext i32 %103 to i64
  %arrayidx191 = getelementptr inbounds [20 x i32], [20 x i32]* %sr_alts, i32 0, i64 %idxprom190
  %104 = load i32, i32* %arrayidx191, align 4
  %idxprom192 = sext i32 %104 to i64
  %arrayidx193 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom192
  %bit194 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx193, i32 0, i32 1
  %105 = load i32, i32* %bit194, align 4
  %cmp195 = icmp eq i32 %105, 0
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %for.body.189
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

if.end.198:                                       ; preds = %for.body.189
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %106 = load i32, i32* %i185, align 4
  %inc200 = add nsw i32 %106, 1
  store i32 %inc200, i32* %i185, align 4
  br label %for.cond.186

for.end.201:                                      ; preds = %for.cond.186
  %arrayidx202 = getelementptr inbounds [20 x i32], [20 x i32]* %sr_alts, i32 0, i64 0
  %107 = load i32, i32* %arrayidx202, align 4
  %idxprom203 = sext i32 %107 to i64
  %arrayidx204 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom203
  %sample205 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx204, i32 0, i32 2
  %108 = load i8*, i8** %sample205, align 8
  store i8* %108, i8** %retval
  br label %return

if.end.206:                                       ; preds = %land.lhs.true.180, %if.end.177
  %109 = load i32, i32* %n_ot_alts, align 4
  %cmp207 = icmp sgt i32 %109, 0
  br i1 %cmp207, label %if.then.209, label %if.end.214

if.then.209:                                      ; preds = %if.end.206
  %arrayidx210 = getelementptr inbounds [4 x i32], [4 x i32]* %ot_alts, i32 0, i64 0
  %110 = load i32, i32* %arrayidx210, align 4
  %idxprom211 = sext i32 %110 to i64
  %arrayidx212 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom211
  %sample213 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx212, i32 0, i32 2
  %111 = load i8*, i8** %sample213, align 8
  store i8* %111, i8** %retval
  br label %return

if.end.214:                                       ; preds = %if.end.206
  %112 = load i32, i32* %n_sr_alts, align 4
  %cmp215 = icmp sgt i32 %112, 0
  br i1 %cmp215, label %if.then.217, label %if.end.222

if.then.217:                                      ; preds = %if.end.214
  %arrayidx218 = getelementptr inbounds [20 x i32], [20 x i32]* %sr_alts, i32 0, i64 0
  %113 = load i32, i32* %arrayidx218, align 4
  %idxprom219 = sext i32 %113 to i64
  %arrayidx220 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @gimp_font_get_sample_string.scripts, i32 0, i64 %idxprom219
  %sample221 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx220, i32 0, i32 2
  %114 = load i8*, i8** %sample221, align 8
  store i8* %114, i8** %retval
  br label %return

if.end.222:                                       ; preds = %if.end.214
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.222, %if.then.217, %if.then.209, %for.end.201, %if.then.197, %if.then.172, %if.else.10
  %115 = load i8*, i8** %retval
  ret i8* %115
}

declare i8* @g_object_ref(i8*) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_set_operator(%struct._cairo*, i32) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._PangoFont* @pango_context_load_font(%struct._PangoContext*, %struct._PangoFontDescription*) #1

; Function Attrs: nounwind readnone
declare i64 @pango_fc_font_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #6

declare %struct.FT_FaceRec_* @pango_fc_font_lock_face(%struct._PangoFcFont*) #1

declare %struct._PangoOTInfo* @pango_ot_info_get(%struct.FT_FaceRec_*) #1

declare i32* @pango_ot_info_list_scripts(%struct._PangoOTInfo*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gimp_font_covers_string(%struct._PangoFcFont* %font, i8* %sample) #7 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct._PangoFcFont*, align 8
  %sample.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct._PangoFcFont* %font, %struct._PangoFcFont** %font.addr, align 8
  store i8* %sample, i8** %sample.addr, align 8
  %0 = load i8*, i8** %sample.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._PangoFcFont*, %struct._PangoFcFont** %font.addr, align 8
  %4 = load i8*, i8** %p, align 8
  %call = call i32 @g_utf8_get_char(i8* %4) #9
  %call1 = call i32 @pango_fc_font_has_char(%struct._PangoFcFont* %3, i32 %call)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @g_free(i8*) #1

declare i8* @FT_Get_Sfnt_Table(%struct.FT_FaceRec_*, i32) #1

declare void @pango_fc_font_unlock_face(%struct._PangoFcFont*) #1

declare i32 @pango_fc_font_has_char(%struct._PangoFcFont*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #6

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
