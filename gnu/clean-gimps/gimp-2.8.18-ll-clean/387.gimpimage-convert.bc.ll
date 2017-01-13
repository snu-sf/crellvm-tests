; ModuleID = './app/core/gimpimage-convert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._QuantizeObj = type { void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)*, void (%struct._QuantizeObj*)*, i32, i32, [256 x %struct._Color], [256 x %struct._Color], [256 x i64], i64*, i32, i32, %struct._GimpProgress*, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._TileManager = type opaque
%struct._Color = type { i32, i32, i32 }
%struct._GimpUndo = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.palentryStruct = type { i64, i8 }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.box = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_convert = private unnamed_addr constant [19 x i8] c"gimp_image_convert\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"new_type != gimp_image_base_type (image)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"custom_palette == NULL || GIMP_IS_PALETTE (custom_palette)\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"custom_palette == NULL || gimp_palette_get_n_colors (custom_palette) <= 256\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Cannot convert image: palette is empty.\00", align 1
@theCustomPalette = internal global %struct._GimpPalette* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"undo-type\04Convert Image to RGB\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"undo-type\04Convert Image to Grayscale\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"undo-type\04Convert Image to Indexed\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"base-type\00", align 1
@needs_quantize = internal global i32 0, align 4
@num_found_cols = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Converting to indexed colors (stage 2)\00", align 1
@found_cols = internal global [256 x [3 x i8]] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [39 x i8] c"Converting to indexed colors (stage 3)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"icc-profile\00", align 1
@DM_ORIGINAL = internal constant [32 x [32 x i8]] [[32 x i8] c"\01\BF0\EF\0C\CB<\FB\03\C23\F2\0F\CE?\FE\01\C01\F0\0D\CC=\FC\04\C34\F3\10\CF@\FF", [32 x i8] c"\80@\AFp\8CL\BB|\83C\B2s\8FO\BE\7F\80A\B0p\8CM\BC|\83D\B3s\8FP\BF\7F", [32 x i8] c" \DF\10\CF,\EB\1C\DB#\E2\13\D2/\EE\1F\DE!\E0\11\D0-\EC\1D\DC$\E3\14\D30\EF \DF", [32 x i8] c"\9F`\90P\ABl\9B\5C\A2c\92S\AEo\9E_\A0a\90Q\ACm\9C]\A3d\93T\AFo\9F`", [32 x i8] c"\08\C78\F7\04\C34\F3\0B\CA;\FA\07\C67\F6\09\C89\F8\05\C45\F4\0C\CB<\FB\08\C78\F7", [32 x i8] c"\88H\B7x\84D\B3t\8BK\BA{\87G\B6w\88I\B8x\84E\B4t\8BL\BB{\87H\B7w", [32 x i8] c"(\E7\18\D7$\E3\14\D3+\EA\1B\DA'\E6\17\D6)\E8\19\D8%\E4\15\D4,\EB\1C\DB(\E7\18\D7", [32 x i8] c"\A7h\97X\A3d\93T\AAk\9A[\A6g\96W\A8i\98Y\A4e\94U\ABl\9B\5C\A7h\97X", [32 x i8] c"\02\C12\F1\0E\CD>\FD\01\C01\F0\0D\CC=\FC\03\C23\F2\0F\CE?\FE\02\C12\F1\0E\CD>\FD", [32 x i8] c"\82B\B1r\8EN\BD~\81A\B0q\8DM\BC}\82C\B2r\8EO\BE~\81B\B1q\8DN\BD}", [32 x i8] c"\22\E1\12\D1.\ED\1E\DD!\E0\11\D0-\EC\1D\DC#\E2\13\D2/\EE\1F\DE\22\E1\12\D1.\ED\1E\DD", [32 x i8] c"\A1b\92R\ADn\9D^\A0a\91Q\ACm\9C]\A2c\92S\AEn\9E_\A1b\91R\ADm\9D^", [32 x i8] c"\0A\C9:\F9\06\C56\F5\09\C89\F8\05\C45\F4\0B\CA;\FA\07\C67\F6\0A\C9:\F9\06\C56\F5", [32 x i8] c"\8AJ\B9z\86F\B5v\89I\B8y\85E\B4u\8AK\BAz\86G\B6v\89J\B9y\85F\B5u", [32 x i8] c"*\E9\1A\D9&\E5\16\D5)\E8\19\D8%\E4\15\D4+\EA\1B\DA'\E6\17\D6*\E9\1A\D9&\E5\16\D5", [32 x i8] c"\A9j\99Z\A5f\95V\A8i\98Y\A4e\94U\AAk\9A[\A6g\96W\A9j\99Z\A5f\95V", [32 x i8] c"\01\C01\EF\0D\CC=\FB\04\C34\F2\10\CF@\FE\01\BF0\EF\0D\CB<\FB\04\C23\F2\10\CE?\FE", [32 x i8] c"\80A\B0p\8CL\BC|\83D\B3s\8FO\BF\7F\80@\B0p\8CL\BB|\83C\B3s\8FO\BE\7F", [32 x i8] c"!\DF\11\D0-\EB\1D\DB$\E2\14\D30\EE \DE!\DF\11\CF,\EB\1D\DB$\E2\14\D2/\EE \DE", [32 x i8] c"\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_", [32 x i8] c"\09\C89\F7\05\C45\F3\0C\CB<\FA\08\C78\F6\09\C78\F7\05\C34\F3\0C\CA;\FA\08\C67\F6", [32 x i8] c"\88I\B8x\84E\B4t\8BK\BB{\87H\B7w\88H\B7x\84D\B4t\8BK\BA{\87G\B6w", [32 x i8] c")\E7\19\D8%\E3\15\D4,\EA\1C\DA(\E6\18\D7(\E7\19\D7%\E3\15\D3+\EA\1C\DA'\E6\18\D6", [32 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [32 x i8] c"\03\C23\F1\0F\CE?\FD\02\C12\F0\0E\CD>\FC\03\C12\F1\0F\CD>\FD\02\C01\F0\0E\CC=\FC", [32 x i8] c"\82C\B2r\8EN\BE~\81B\B1q\8DM\BD}\82B\B2r\8EN\BD~\81A\B1q\8DM\BC}", [32 x i8] c"#\E1\13\D2/\ED\1F\DD\22\E0\12\D1.\EC\1E\DC#\E1\13\D1.\ED\1F\DD\22\E0\12\D0-\EC\1E\DC", [32 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [32 x i8] c"\0B\CA;\F9\07\C67\F5\0A\C9:\F8\06\C56\F4\0B\C9:\F9\07\C56\F5\0A\C89\F8\06\C45\F4", [32 x i8] c"\8AJ\BAz\86G\B6v\89I\B9y\85F\B5u\8AJ\B9z\86F\B6v\89I\B8y\85E\B5u", [32 x i8] c"+\E9\1B\DA'\E5\17\D6*\E8\1A\D9&\E4\16\D5*\E9\1B\D9&\E5\17\D5)\E8\1A\D8%\E4\16\D4", [32 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@__func__.gimp_image_convert_set_dither_matrix = private unnamed_addr constant [37 x i8] c"gimp_image_convert_set_dither_matrix\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"(DM_WIDTH % width) == 0\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"(DM_HEIGHT % height) == 0\00", align 1
@DM = internal global [32 x [32 x i8]] [[32 x i8] c"\01\BF0\EF\0C\CB<\FB\03\C23\F2\0F\CE?\FE\01\C01\F0\0D\CC=\FC\04\C34\F3\10\CF@\FF", [32 x i8] c"\80@\AFp\8CL\BB|\83C\B2s\8FO\BE\7F\80A\B0p\8CM\BC|\83D\B3s\8FP\BF\7F", [32 x i8] c" \DF\10\CF,\EB\1C\DB#\E2\13\D2/\EE\1F\DE!\E0\11\D0-\EC\1D\DC$\E3\14\D30\EF \DF", [32 x i8] c"\9F`\90P\ABl\9B\5C\A2c\92S\AEo\9E_\A0a\90Q\ACm\9C]\A3d\93T\AFo\9F`", [32 x i8] c"\08\C78\F7\04\C34\F3\0B\CA;\FA\07\C67\F6\09\C89\F8\05\C45\F4\0C\CB<\FB\08\C78\F7", [32 x i8] c"\88H\B7x\84D\B3t\8BK\BA{\87G\B6w\88I\B8x\84E\B4t\8BL\BB{\87H\B7w", [32 x i8] c"(\E7\18\D7$\E3\14\D3+\EA\1B\DA'\E6\17\D6)\E8\19\D8%\E4\15\D4,\EB\1C\DB(\E7\18\D7", [32 x i8] c"\A7h\97X\A3d\93T\AAk\9A[\A6g\96W\A8i\98Y\A4e\94U\ABl\9B\5C\A7h\97X", [32 x i8] c"\02\C12\F1\0E\CD>\FD\01\C01\F0\0D\CC=\FC\03\C23\F2\0F\CE?\FE\02\C12\F1\0E\CD>\FD", [32 x i8] c"\82B\B1r\8EN\BD~\81A\B0q\8DM\BC}\82C\B2r\8EO\BE~\81B\B1q\8DN\BD}", [32 x i8] c"\22\E1\12\D1.\ED\1E\DD!\E0\11\D0-\EC\1D\DC#\E2\13\D2/\EE\1F\DE\22\E1\12\D1.\ED\1E\DD", [32 x i8] c"\A1b\92R\ADn\9D^\A0a\91Q\ACm\9C]\A2c\92S\AEn\9E_\A1b\91R\ADm\9D^", [32 x i8] c"\0A\C9:\F9\06\C56\F5\09\C89\F8\05\C45\F4\0B\CA;\FA\07\C67\F6\0A\C9:\F9\06\C56\F5", [32 x i8] c"\8AJ\B9z\86F\B5v\89I\B8y\85E\B4u\8AK\BAz\86G\B6v\89J\B9y\85F\B5u", [32 x i8] c"*\E9\1A\D9&\E5\16\D5)\E8\19\D8%\E4\15\D4+\EA\1B\DA'\E6\17\D6*\E9\1A\D9&\E5\16\D5", [32 x i8] c"\A9j\99Z\A5f\95V\A8i\98Y\A4e\94U\AAk\9A[\A6g\96W\A9j\99Z\A5f\95V", [32 x i8] c"\01\C01\EF\0D\CC=\FB\04\C34\F2\10\CF@\FE\01\BF0\EF\0D\CB<\FB\04\C23\F2\10\CE?\FE", [32 x i8] c"\80A\B0p\8CL\BC|\83D\B3s\8FO\BF\7F\80@\B0p\8CL\BB|\83C\B3s\8FO\BE\7F", [32 x i8] c"!\DF\11\D0-\EB\1D\DB$\E2\14\D30\EE \DE!\DF\11\CF,\EB\1D\DB$\E2\14\D2/\EE \DE", [32 x i8] c"\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_", [32 x i8] c"\09\C89\F7\05\C45\F3\0C\CB<\FA\08\C78\F6\09\C78\F7\05\C34\F3\0C\CA;\FA\08\C67\F6", [32 x i8] c"\88I\B8x\84E\B4t\8BK\BB{\87H\B7w\88H\B7x\84D\B4t\8BK\BA{\87G\B6w", [32 x i8] c")\E7\19\D8%\E3\15\D4,\EA\1C\DA(\E6\18\D7(\E7\19\D7%\E3\15\D3+\EA\1C\DA'\E6\18\D6", [32 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [32 x i8] c"\03\C23\F1\0F\CE?\FD\02\C12\F0\0E\CD>\FC\03\C12\F1\0F\CD>\FD\02\C01\F0\0E\CC=\FC", [32 x i8] c"\82C\B2r\8EN\BE~\81B\B1q\8DM\BD}\82B\B2r\8EN\BD~\81A\B1q\8DM\BC}", [32 x i8] c"#\E1\13\D2/\ED\1F\DD\22\E0\12\D1.\EC\1E\DC#\E1\13\D1.\ED\1F\DD\22\E0\12\D0-\EC\1E\DC", [32 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [32 x i8] c"\0B\CA;\F9\07\C67\F5\0A\C9:\F8\06\C56\F4\0B\C9:\F9\07\C56\F5\0A\C89\F8\06\C45\F4", [32 x i8] c"\8AJ\BAz\86G\B6v\89I\B9y\85F\B5u\8AJ\B9z\86F\B6v\89I\B8y\85E\B5u", [32 x i8] c"+\E9\1B\DA'\E5\17\D6*\E8\1A\D9&\E4\16\D5*\E9\1B\D9&\E5\17\D5)\E8\1A\D8%\E4\16\D4", [32 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@.str.17 = private unnamed_addr constant [27 x i8] c"Uh-oh, bad dither type, W1\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Uh-oh, bad dither type, W2\00", align 1
@webpal = internal constant [648 x i8] c"\FF\FF\FF\FF\FF\CC\FF\FF\99\FF\FFf\FF\FF3\FF\FF\00\FF\CC\FF\FF\CC\CC\FF\CC\99\FF\CCf\FF\CC3\FF\CC\00\FF\99\FF\FF\99\CC\FF\99\99\FF\99f\FF\993\FF\99\00\FFf\FF\FFf\CC\FFf\99\FFff\FFf3\FFf\00\FF3\FF\FF3\CC\FF3\99\FF3f\FF33\FF3\00\FF\00\FF\FF\00\CC\FF\00\99\FF\00f\FF\003\FF\00\00\CC\FF\FF\CC\FF\CC\CC\FF\99\CC\FFf\CC\FF3\CC\FF\00\CC\CC\FF\CC\CC\CC\CC\CC\99\CC\CCf\CC\CC3\CC\CC\00\CC\99\FF\CC\99\CC\CC\99\99\CC\99f\CC\993\CC\99\00\CCf\FF\CCf\CC\CCf\99\CCff\CCf3\CCf\00\CC3\FF\CC3\CC\CC3\99\CC3f\CC33\CC3\00\CC\00\FF\CC\00\CC\CC\00\99\CC\00f\CC\003\CC\00\00\99\FF\FF\99\FF\CC\99\FF\99\99\FFf\99\FF3\99\FF\00\99\CC\FF\99\CC\CC\99\CC\99\99\CCf\99\CC3\99\CC\00\99\99\FF\99\99\CC\99\99\99\99\99f\99\993\99\99\00\99f\FF\99f\CC\99f\99\99ff\99f3\99f\00\993\FF\993\CC\993\99\993f\9933\993\00\99\00\FF\99\00\CC\99\00\99\99\00f\99\003\99\00\00f\FF\FFf\FF\CCf\FF\99f\FFff\FF3f\FF\00f\CC\FFf\CC\CCf\CC\99f\CCff\CC3f\CC\00f\99\FFf\99\CCf\99\99f\99ff\993f\99\00ff\FFff\CCff\99fffff3ff\00f3\FFf3\CCf3\99f3ff33f3\00f\00\FFf\00\CCf\00\99f\00ff\003f\00\003\FF\FF3\FF\CC3\FF\993\FFf3\FF33\FF\003\CC\FF3\CC\CC3\CC\993\CCf3\CC33\CC\003\99\FF3\99\CC3\99\993\99f3\9933\99\003f\FF3f\CC3f\993ff3f33f\0033\FF33\CC33\9933f33333\003\00\FF3\00\CC3\00\993\00f3\0033\00\00\00\FF\FF\00\FF\CC\00\FF\99\00\FFf\00\FF3\00\FF\00\00\CC\FF\00\CC\CC\00\CC\99\00\CCf\00\CC3\00\CC\00\00\99\FF\00\99\CC\00\99\99\00\99f\00\993\00\99\00\00f\FF\00f\CC\00f\99\00ff\00f3\00f\00\003\FF\003\CC\003\99\003f\0033\003\00\00\00\FF\00\00\CC\00\00\99\00\00f\00\003\00\00\00", align 16
@range_array = internal constant [1025 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@floyd_steinberg_error1 = internal constant [1025 x i16] [i16 -223, i16 -223, i16 -222, i16 -222, i16 -221, i16 -221, i16 -220, i16 -220, i16 -220, i16 -219, i16 -219, i16 -218, i16 -218, i16 -217, i16 -217, i16 -217, i16 -216, i16 -216, i16 -215, i16 -215, i16 -214, i16 -214, i16 -213, i16 -213, i16 -213, i16 -212, i16 -212, i16 -211, i16 -211, i16 -210, i16 -210, i16 -210, i16 -209, i16 -209, i16 -208, i16 -208, i16 -207, i16 -207, i16 -206, i16 -206, i16 -206, i16 -205, i16 -205, i16 -204, i16 -204, i16 -203, i16 -203, i16 -203, i16 -202, i16 -202, i16 -201, i16 -201, i16 -200, i16 -200, i16 -199, i16 -199, i16 -199, i16 -198, i16 -198, i16 -197, i16 -197, i16 -196, i16 -196, i16 -196, i16 -195, i16 -195, i16 -194, i16 -194, i16 -193, i16 -193, i16 -192, i16 -192, i16 -192, i16 -191, i16 -191, i16 -190, i16 -190, i16 -189, i16 -189, i16 -189, i16 -188, i16 -188, i16 -187, i16 -187, i16 -186, i16 -186, i16 -185, i16 -185, i16 -185, i16 -184, i16 -184, i16 -183, i16 -183, i16 -182, i16 -182, i16 -182, i16 -181, i16 -181, i16 -180, i16 -180, i16 -179, i16 -179, i16 -178, i16 -178, i16 -178, i16 -177, i16 -177, i16 -176, i16 -176, i16 -175, i16 -175, i16 -175, i16 -174, i16 -174, i16 -173, i16 -173, i16 -172, i16 -172, i16 -171, i16 -171, i16 -171, i16 -170, i16 -170, i16 -169, i16 -169, i16 -168, i16 -168, i16 -168, i16 -167, i16 -167, i16 -166, i16 -166, i16 -165, i16 -165, i16 -164, i16 -164, i16 -164, i16 -163, i16 -163, i16 -162, i16 -162, i16 -161, i16 -161, i16 -161, i16 -160, i16 -160, i16 -159, i16 -159, i16 -158, i16 -158, i16 -157, i16 -157, i16 -157, i16 -156, i16 -156, i16 -155, i16 -155, i16 -154, i16 -154, i16 -154, i16 -153, i16 -153, i16 -152, i16 -152, i16 -151, i16 -151, i16 -150, i16 -150, i16 -150, i16 -149, i16 -149, i16 -148, i16 -148, i16 -147, i16 -147, i16 -147, i16 -146, i16 -146, i16 -145, i16 -145, i16 -144, i16 -144, i16 -143, i16 -143, i16 -143, i16 -142, i16 -142, i16 -141, i16 -141, i16 -140, i16 -140, i16 -140, i16 -139, i16 -139, i16 -138, i16 -138, i16 -137, i16 -137, i16 -136, i16 -136, i16 -136, i16 -135, i16 -135, i16 -134, i16 -134, i16 -133, i16 -133, i16 -133, i16 -132, i16 -132, i16 -131, i16 -131, i16 -130, i16 -130, i16 -129, i16 -129, i16 -129, i16 -128, i16 -128, i16 -127, i16 -127, i16 -126, i16 -126, i16 -126, i16 -125, i16 -125, i16 -124, i16 -124, i16 -123, i16 -123, i16 -122, i16 -122, i16 -122, i16 -121, i16 -121, i16 -120, i16 -120, i16 -119, i16 -119, i16 -119, i16 -118, i16 -118, i16 -117, i16 -117, i16 -116, i16 -116, i16 -115, i16 -115, i16 -115, i16 -114, i16 -114, i16 -113, i16 -113, i16 -112, i16 -112, i16 -112, i16 -111, i16 -111, i16 -110, i16 -110, i16 -109, i16 -109, i16 -108, i16 -108, i16 -108, i16 -107, i16 -107, i16 -106, i16 -106, i16 -105, i16 -105, i16 -105, i16 -104, i16 -104, i16 -103, i16 -103, i16 -102, i16 -102, i16 -101, i16 -101, i16 -101, i16 -100, i16 -100, i16 -99, i16 -99, i16 -98, i16 -98, i16 -98, i16 -97, i16 -97, i16 -96, i16 -96, i16 -95, i16 -95, i16 -94, i16 -94, i16 -94, i16 -93, i16 -93, i16 -92, i16 -92, i16 -91, i16 -91, i16 -91, i16 -90, i16 -90, i16 -89, i16 -89, i16 -88, i16 -88, i16 -87, i16 -87, i16 -87, i16 -86, i16 -86, i16 -85, i16 -85, i16 -84, i16 -84, i16 -84, i16 -83, i16 -83, i16 -82, i16 -82, i16 -81, i16 -81, i16 -80, i16 -80, i16 -80, i16 -79, i16 -79, i16 -78, i16 -78, i16 -77, i16 -77, i16 -77, i16 -76, i16 -76, i16 -75, i16 -75, i16 -74, i16 -74, i16 -73, i16 -73, i16 -73, i16 -72, i16 -72, i16 -71, i16 -71, i16 -70, i16 -70, i16 -70, i16 -69, i16 -69, i16 -68, i16 -68, i16 -67, i16 -67, i16 -66, i16 -66, i16 -66, i16 -65, i16 -65, i16 -64, i16 -64, i16 -63, i16 -63, i16 -63, i16 -62, i16 -62, i16 -61, i16 -61, i16 -60, i16 -60, i16 -59, i16 -59, i16 -59, i16 -58, i16 -58, i16 -57, i16 -57, i16 -56, i16 -56, i16 -56, i16 -55, i16 -55, i16 -54, i16 -54, i16 -53, i16 -53, i16 -52, i16 -52, i16 -52, i16 -51, i16 -51, i16 -50, i16 -50, i16 -49, i16 -49, i16 -49, i16 -48, i16 -48, i16 -47, i16 -47, i16 -46, i16 -46, i16 -45, i16 -45, i16 -45, i16 -44, i16 -44, i16 -43, i16 -43, i16 -42, i16 -42, i16 -42, i16 -41, i16 -41, i16 -40, i16 -40, i16 -39, i16 -39, i16 -38, i16 -38, i16 -38, i16 -37, i16 -37, i16 -36, i16 -36, i16 -35, i16 -35, i16 -35, i16 -34, i16 -34, i16 -33, i16 -33, i16 -32, i16 -32, i16 -31, i16 -31, i16 -31, i16 -30, i16 -30, i16 -29, i16 -29, i16 -28, i16 -28, i16 -28, i16 -27, i16 -27, i16 -26, i16 -26, i16 -25, i16 -25, i16 -24, i16 -24, i16 -24, i16 -23, i16 -23, i16 -22, i16 -22, i16 -21, i16 -21, i16 -21, i16 -20, i16 -20, i16 -19, i16 -19, i16 -18, i16 -18, i16 -17, i16 -17, i16 -17, i16 -16, i16 -16, i16 -15, i16 -15, i16 -14, i16 -14, i16 -14, i16 -13, i16 -13, i16 -12, i16 -12, i16 -11, i16 -11, i16 -10, i16 -10, i16 -10, i16 -9, i16 -9, i16 -8, i16 -8, i16 -7, i16 -7, i16 -7, i16 -6, i16 -6, i16 -5, i16 -5, i16 -4, i16 -4, i16 -3, i16 -3, i16 -3, i16 -2, i16 -2, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13, i16 14, i16 14, i16 14, i16 15, i16 15, i16 16, i16 16, i16 17, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 28, i16 29, i16 29, i16 30, i16 30, i16 31, i16 31, i16 31, i16 32, i16 32, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 37, i16 37, i16 38, i16 38, i16 38, i16 39, i16 39, i16 40, i16 40, i16 41, i16 41, i16 42, i16 42, i16 42, i16 43, i16 43, i16 44, i16 44, i16 45, i16 45, i16 45, i16 46, i16 46, i16 47, i16 47, i16 48, i16 48, i16 49, i16 49, i16 49, i16 50, i16 50, i16 51, i16 51, i16 52, i16 52, i16 52, i16 53, i16 53, i16 54, i16 54, i16 55, i16 55, i16 56, i16 56, i16 56, i16 57, i16 57, i16 58, i16 58, i16 59, i16 59, i16 59, i16 60, i16 60, i16 61, i16 61, i16 62, i16 62, i16 63, i16 63, i16 63, i16 64, i16 64, i16 65, i16 65, i16 66, i16 66, i16 66, i16 67, i16 67, i16 68, i16 68, i16 69, i16 69, i16 70, i16 70, i16 70, i16 71, i16 71, i16 72, i16 72, i16 73, i16 73, i16 73, i16 74, i16 74, i16 75, i16 75, i16 76, i16 76, i16 77, i16 77, i16 77, i16 78, i16 78, i16 79, i16 79, i16 80, i16 80, i16 80, i16 81, i16 81, i16 82, i16 82, i16 83, i16 83, i16 84, i16 84, i16 84, i16 85, i16 85, i16 86, i16 86, i16 87, i16 87, i16 87, i16 88, i16 88, i16 89, i16 89, i16 90, i16 90, i16 91, i16 91, i16 91, i16 92, i16 92, i16 93, i16 93, i16 94, i16 94, i16 94, i16 95, i16 95, i16 96, i16 96, i16 97, i16 97, i16 98, i16 98, i16 98, i16 99, i16 99, i16 100, i16 100, i16 101, i16 101, i16 101, i16 102, i16 102, i16 103, i16 103, i16 104, i16 104, i16 105, i16 105, i16 105, i16 106, i16 106, i16 107, i16 107, i16 108, i16 108, i16 108, i16 109, i16 109, i16 110, i16 110, i16 111, i16 111, i16 112, i16 112, i16 112, i16 113, i16 113, i16 114, i16 114, i16 115, i16 115, i16 115, i16 116, i16 116, i16 117, i16 117, i16 118, i16 118, i16 119, i16 119, i16 119, i16 120, i16 120, i16 121, i16 121, i16 122, i16 122, i16 122, i16 123, i16 123, i16 124, i16 124, i16 125, i16 125, i16 126, i16 126, i16 126, i16 127, i16 127, i16 128, i16 128, i16 129, i16 129, i16 129, i16 130, i16 130, i16 131, i16 131, i16 132, i16 132, i16 133, i16 133, i16 133, i16 134, i16 134, i16 135, i16 135, i16 136, i16 136, i16 136, i16 137, i16 137, i16 138, i16 138, i16 139, i16 139, i16 140, i16 140, i16 140, i16 141, i16 141, i16 142, i16 142, i16 143, i16 143, i16 143, i16 144, i16 144, i16 145, i16 145, i16 146, i16 146, i16 147, i16 147, i16 147, i16 148, i16 148, i16 149, i16 149, i16 150, i16 150, i16 150, i16 151, i16 151, i16 152, i16 152, i16 153, i16 153, i16 154, i16 154, i16 154, i16 155, i16 155, i16 156, i16 156, i16 157, i16 157, i16 157, i16 158, i16 158, i16 159, i16 159, i16 160, i16 160, i16 161, i16 161, i16 161, i16 162, i16 162, i16 163, i16 163, i16 164, i16 164, i16 164, i16 165, i16 165, i16 166, i16 166, i16 167, i16 167, i16 168, i16 168, i16 168, i16 169, i16 169, i16 170, i16 170, i16 171, i16 171, i16 171, i16 172, i16 172, i16 173, i16 173, i16 174, i16 174, i16 175, i16 175, i16 175, i16 176, i16 176, i16 177, i16 177, i16 178, i16 178, i16 178, i16 179, i16 179, i16 180, i16 180, i16 181, i16 181, i16 182, i16 182, i16 182, i16 183, i16 183, i16 184, i16 184, i16 185, i16 185, i16 185, i16 186, i16 186, i16 187, i16 187, i16 188, i16 188, i16 189, i16 189, i16 189, i16 190, i16 190, i16 191, i16 191, i16 192, i16 192, i16 192, i16 193, i16 193, i16 194, i16 194, i16 195, i16 195, i16 196, i16 196, i16 196, i16 197, i16 197, i16 198, i16 198, i16 199, i16 199, i16 199, i16 200, i16 200, i16 201, i16 201, i16 202, i16 202, i16 203, i16 203, i16 203, i16 204, i16 204, i16 205, i16 205, i16 206, i16 206, i16 206, i16 207, i16 207, i16 208, i16 208, i16 209, i16 209, i16 210, i16 210, i16 210, i16 211, i16 211, i16 212, i16 212, i16 213, i16 213, i16 213, i16 214, i16 214, i16 215, i16 215, i16 216, i16 216, i16 217, i16 217, i16 217, i16 218, i16 218, i16 219, i16 219, i16 220, i16 220, i16 220, i16 221, i16 221, i16 222, i16 222, i16 223, i16 223, i16 224, i16 224], align 16
@floyd_steinberg_error2 = internal constant [1025 x i16] [i16 -95, i16 -95, i16 -95, i16 -95, i16 -95, i16 -94, i16 -94, i16 -94, i16 -94, i16 -94, i16 -93, i16 -93, i16 -93, i16 -93, i16 -93, i16 -93, i16 -92, i16 -92, i16 -92, i16 -92, i16 -92, i16 -91, i16 -91, i16 -91, i16 -91, i16 -91, i16 -90, i16 -90, i16 -90, i16 -90, i16 -90, i16 -90, i16 -89, i16 -89, i16 -89, i16 -89, i16 -89, i16 -88, i16 -88, i16 -88, i16 -88, i16 -88, i16 -87, i16 -87, i16 -87, i16 -87, i16 -87, i16 -87, i16 -86, i16 -86, i16 -86, i16 -86, i16 -86, i16 -85, i16 -85, i16 -85, i16 -85, i16 -85, i16 -84, i16 -84, i16 -84, i16 -84, i16 -84, i16 -84, i16 -83, i16 -83, i16 -83, i16 -83, i16 -83, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -81, i16 -81, i16 -81, i16 -81, i16 -81, i16 -81, i16 -80, i16 -80, i16 -80, i16 -80, i16 -80, i16 -79, i16 -79, i16 -79, i16 -79, i16 -79, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -78, i16 -77, i16 -77, i16 -77, i16 -77, i16 -77, i16 -76, i16 -76, i16 -76, i16 -76, i16 -76, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -75, i16 -74, i16 -74, i16 -74, i16 -74, i16 -74, i16 -73, i16 -73, i16 -73, i16 -73, i16 -73, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -72, i16 -71, i16 -71, i16 -71, i16 -71, i16 -71, i16 -70, i16 -70, i16 -70, i16 -70, i16 -70, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -69, i16 -68, i16 -68, i16 -68, i16 -68, i16 -68, i16 -67, i16 -67, i16 -67, i16 -67, i16 -67, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 -66, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -64, i16 -64, i16 -64, i16 -64, i16 -64, i16 -63, i16 -63, i16 -63, i16 -63, i16 -63, i16 -63, i16 -62, i16 -62, i16 -62, i16 -62, i16 -62, i16 -61, i16 -61, i16 -61, i16 -61, i16 -61, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -60, i16 -59, i16 -59, i16 -59, i16 -59, i16 -59, i16 -58, i16 -58, i16 -58, i16 -58, i16 -58, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -57, i16 -56, i16 -56, i16 -56, i16 -56, i16 -56, i16 -55, i16 -55, i16 -55, i16 -55, i16 -55, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -54, i16 -53, i16 -53, i16 -53, i16 -53, i16 -53, i16 -52, i16 -52, i16 -52, i16 -52, i16 -52, i16 -51, i16 -51, i16 -51, i16 -51, i16 -51, i16 -51, i16 -50, i16 -50, i16 -50, i16 -50, i16 -50, i16 -49, i16 -49, i16 -49, i16 -49, i16 -49, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -48, i16 -47, i16 -47, i16 -47, i16 -47, i16 -47, i16 -46, i16 -46, i16 -46, i16 -46, i16 -46, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -45, i16 -44, i16 -44, i16 -44, i16 -44, i16 -44, i16 -43, i16 -43, i16 -43, i16 -43, i16 -43, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -42, i16 -41, i16 -41, i16 -41, i16 -41, i16 -41, i16 -40, i16 -40, i16 -40, i16 -40, i16 -40, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -38, i16 -38, i16 -38, i16 -38, i16 -38, i16 -37, i16 -37, i16 -37, i16 -37, i16 -37, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -36, i16 -35, i16 -35, i16 -35, i16 -35, i16 -35, i16 -34, i16 -34, i16 -34, i16 -34, i16 -34, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -17, i16 -17, i16 -17, i16 -17, i16 -17, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -15, i16 -15, i16 -15, i16 -15, i16 -15, i16 -15, i16 -14, i16 -14, i16 -14, i16 -14, i16 -14, i16 -13, i16 -13, i16 -13, i16 -13, i16 -13, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -11, i16 -11, i16 -11, i16 -11, i16 -11, i16 -10, i16 -10, i16 -10, i16 -10, i16 -10, i16 -9, i16 -9, i16 -9, i16 -9, i16 -9, i16 -9, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 10, i16 11, i16 11, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 22, i16 22, i16 22, i16 22, i16 23, i16 23, i16 23, i16 23, i16 23, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 25, i16 25, i16 25, i16 25, i16 25, i16 26, i16 26, i16 26, i16 26, i16 26, i16 27, i16 27, i16 27, i16 27, i16 27, i16 27, i16 28, i16 28, i16 28, i16 28, i16 28, i16 29, i16 29, i16 29, i16 29, i16 29, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 31, i16 31, i16 31, i16 31, i16 31, i16 32, i16 32, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 34, i16 34, i16 35, i16 35, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 37, i16 37, i16 38, i16 38, i16 38, i16 38, i16 38, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 40, i16 40, i16 40, i16 40, i16 40, i16 41, i16 41, i16 41, i16 41, i16 41, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 43, i16 43, i16 43, i16 43, i16 43, i16 44, i16 44, i16 44, i16 44, i16 44, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 46, i16 46, i16 46, i16 46, i16 46, i16 47, i16 47, i16 47, i16 47, i16 47, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 49, i16 49, i16 49, i16 49, i16 49, i16 50, i16 50, i16 50, i16 50, i16 50, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 52, i16 52, i16 52, i16 52, i16 52, i16 53, i16 53, i16 53, i16 53, i16 53, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 55, i16 55, i16 55, i16 55, i16 55, i16 56, i16 56, i16 56, i16 56, i16 56, i16 57, i16 57, i16 57, i16 57, i16 57, i16 57, i16 58, i16 58, i16 58, i16 58, i16 58, i16 59, i16 59, i16 59, i16 59, i16 59, i16 60, i16 60, i16 60, i16 60, i16 60, i16 60, i16 61, i16 61, i16 61, i16 61, i16 61, i16 62, i16 62, i16 62, i16 62, i16 62, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 64, i16 64, i16 64, i16 64, i16 64, i16 65, i16 65, i16 65, i16 65, i16 65, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 67, i16 67, i16 67, i16 67, i16 67, i16 68, i16 68, i16 68, i16 68, i16 68, i16 69, i16 69, i16 69, i16 69, i16 69, i16 69, i16 70, i16 70, i16 70, i16 70, i16 70, i16 71, i16 71, i16 71, i16 71, i16 71, i16 72, i16 72, i16 72, i16 72, i16 72, i16 72, i16 73, i16 73, i16 73, i16 73, i16 73, i16 74, i16 74, i16 74, i16 74, i16 74, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 76, i16 76, i16 76, i16 76, i16 76, i16 77, i16 77, i16 77, i16 77, i16 77, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 79, i16 79, i16 79, i16 79, i16 79, i16 80, i16 80, i16 80, i16 80, i16 80, i16 81, i16 81, i16 81, i16 81, i16 81, i16 81, i16 82, i16 82, i16 82, i16 82, i16 82, i16 83, i16 83, i16 83, i16 83, i16 83, i16 84, i16 84, i16 84, i16 84, i16 84, i16 84, i16 85, i16 85, i16 85, i16 85, i16 85, i16 86, i16 86, i16 86, i16 86, i16 86, i16 87, i16 87, i16 87, i16 87, i16 87, i16 87, i16 88, i16 88, i16 88, i16 88, i16 88, i16 89, i16 89, i16 89, i16 89, i16 89, i16 90, i16 90, i16 90, i16 90, i16 90, i16 90, i16 91, i16 91, i16 91, i16 91, i16 91, i16 92, i16 92, i16 92, i16 92, i16 92, i16 93, i16 93, i16 93, i16 93, i16 93, i16 93, i16 94, i16 94, i16 94, i16 94, i16 94, i16 95, i16 95, i16 95, i16 95, i16 95, i16 96, i16 96], align 16
@floyd_steinberg_error3 = internal constant [1025 x i16] [i16 -159, i16 -159, i16 -159, i16 -158, i16 -158, i16 -158, i16 -157, i16 -157, i16 -157, i16 -156, i16 -156, i16 -156, i16 -155, i16 -155, i16 -155, i16 -155, i16 -154, i16 -154, i16 -154, i16 -153, i16 -153, i16 -153, i16 -152, i16 -152, i16 -152, i16 -151, i16 -151, i16 -151, i16 -150, i16 -150, i16 -150, i16 -150, i16 -149, i16 -149, i16 -149, i16 -148, i16 -148, i16 -148, i16 -147, i16 -147, i16 -147, i16 -146, i16 -146, i16 -146, i16 -145, i16 -145, i16 -145, i16 -145, i16 -144, i16 -144, i16 -144, i16 -143, i16 -143, i16 -143, i16 -142, i16 -142, i16 -142, i16 -141, i16 -141, i16 -141, i16 -140, i16 -140, i16 -140, i16 -140, i16 -139, i16 -139, i16 -139, i16 -138, i16 -138, i16 -138, i16 -137, i16 -137, i16 -137, i16 -136, i16 -136, i16 -136, i16 -135, i16 -135, i16 -135, i16 -135, i16 -134, i16 -134, i16 -134, i16 -133, i16 -133, i16 -133, i16 -132, i16 -132, i16 -132, i16 -131, i16 -131, i16 -131, i16 -130, i16 -130, i16 -130, i16 -130, i16 -129, i16 -129, i16 -129, i16 -128, i16 -128, i16 -128, i16 -127, i16 -127, i16 -127, i16 -126, i16 -126, i16 -126, i16 -125, i16 -125, i16 -125, i16 -125, i16 -124, i16 -124, i16 -124, i16 -123, i16 -123, i16 -123, i16 -122, i16 -122, i16 -122, i16 -121, i16 -121, i16 -121, i16 -120, i16 -120, i16 -120, i16 -120, i16 -119, i16 -119, i16 -119, i16 -118, i16 -118, i16 -118, i16 -117, i16 -117, i16 -117, i16 -116, i16 -116, i16 -116, i16 -115, i16 -115, i16 -115, i16 -115, i16 -114, i16 -114, i16 -114, i16 -113, i16 -113, i16 -113, i16 -112, i16 -112, i16 -112, i16 -111, i16 -111, i16 -111, i16 -110, i16 -110, i16 -110, i16 -110, i16 -109, i16 -109, i16 -109, i16 -108, i16 -108, i16 -108, i16 -107, i16 -107, i16 -107, i16 -106, i16 -106, i16 -106, i16 -105, i16 -105, i16 -105, i16 -105, i16 -104, i16 -104, i16 -104, i16 -103, i16 -103, i16 -103, i16 -102, i16 -102, i16 -102, i16 -101, i16 -101, i16 -101, i16 -100, i16 -100, i16 -100, i16 -100, i16 -99, i16 -99, i16 -99, i16 -98, i16 -98, i16 -98, i16 -97, i16 -97, i16 -97, i16 -96, i16 -96, i16 -96, i16 -95, i16 -95, i16 -95, i16 -95, i16 -94, i16 -94, i16 -94, i16 -93, i16 -93, i16 -93, i16 -92, i16 -92, i16 -92, i16 -91, i16 -91, i16 -91, i16 -90, i16 -90, i16 -90, i16 -90, i16 -89, i16 -89, i16 -89, i16 -88, i16 -88, i16 -88, i16 -87, i16 -87, i16 -87, i16 -86, i16 -86, i16 -86, i16 -85, i16 -85, i16 -85, i16 -85, i16 -84, i16 -84, i16 -84, i16 -83, i16 -83, i16 -83, i16 -82, i16 -82, i16 -82, i16 -81, i16 -81, i16 -81, i16 -80, i16 -80, i16 -80, i16 -80, i16 -79, i16 -79, i16 -79, i16 -78, i16 -78, i16 -78, i16 -77, i16 -77, i16 -77, i16 -76, i16 -76, i16 -76, i16 -75, i16 -75, i16 -75, i16 -75, i16 -74, i16 -74, i16 -74, i16 -73, i16 -73, i16 -73, i16 -72, i16 -72, i16 -72, i16 -71, i16 -71, i16 -71, i16 -70, i16 -70, i16 -70, i16 -70, i16 -69, i16 -69, i16 -69, i16 -68, i16 -68, i16 -68, i16 -67, i16 -67, i16 -67, i16 -66, i16 -66, i16 -66, i16 -65, i16 -65, i16 -65, i16 -65, i16 -64, i16 -64, i16 -64, i16 -63, i16 -63, i16 -63, i16 -62, i16 -62, i16 -62, i16 -61, i16 -61, i16 -61, i16 -60, i16 -60, i16 -60, i16 -60, i16 -59, i16 -59, i16 -59, i16 -58, i16 -58, i16 -58, i16 -57, i16 -57, i16 -57, i16 -56, i16 -56, i16 -56, i16 -55, i16 -55, i16 -55, i16 -55, i16 -54, i16 -54, i16 -54, i16 -53, i16 -53, i16 -53, i16 -52, i16 -52, i16 -52, i16 -51, i16 -51, i16 -51, i16 -50, i16 -50, i16 -50, i16 -50, i16 -49, i16 -49, i16 -49, i16 -48, i16 -48, i16 -48, i16 -47, i16 -47, i16 -47, i16 -46, i16 -46, i16 -46, i16 -45, i16 -45, i16 -45, i16 -45, i16 -44, i16 -44, i16 -44, i16 -43, i16 -43, i16 -43, i16 -42, i16 -42, i16 -42, i16 -41, i16 -41, i16 -41, i16 -40, i16 -40, i16 -40, i16 -40, i16 -39, i16 -39, i16 -39, i16 -38, i16 -38, i16 -38, i16 -37, i16 -37, i16 -37, i16 -36, i16 -36, i16 -36, i16 -35, i16 -35, i16 -35, i16 -35, i16 -34, i16 -34, i16 -34, i16 -33, i16 -33, i16 -33, i16 -32, i16 -32, i16 -32, i16 -31, i16 -31, i16 -31, i16 -30, i16 -30, i16 -30, i16 -30, i16 -29, i16 -29, i16 -29, i16 -28, i16 -28, i16 -28, i16 -27, i16 -27, i16 -27, i16 -26, i16 -26, i16 -26, i16 -25, i16 -25, i16 -25, i16 -25, i16 -24, i16 -24, i16 -24, i16 -23, i16 -23, i16 -23, i16 -22, i16 -22, i16 -22, i16 -21, i16 -21, i16 -21, i16 -20, i16 -20, i16 -20, i16 -20, i16 -19, i16 -19, i16 -19, i16 -18, i16 -18, i16 -18, i16 -17, i16 -17, i16 -17, i16 -16, i16 -16, i16 -16, i16 -15, i16 -15, i16 -15, i16 -15, i16 -14, i16 -14, i16 -14, i16 -13, i16 -13, i16 -13, i16 -12, i16 -12, i16 -12, i16 -11, i16 -11, i16 -11, i16 -10, i16 -10, i16 -10, i16 -10, i16 -9, i16 -9, i16 -9, i16 -8, i16 -8, i16 -8, i16 -7, i16 -7, i16 -7, i16 -6, i16 -6, i16 -6, i16 -5, i16 -5, i16 -5, i16 -5, i16 -4, i16 -4, i16 -4, i16 -3, i16 -3, i16 -3, i16 -2, i16 -2, i16 -2, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 9, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 22, i16 22, i16 22, i16 23, i16 23, i16 23, i16 24, i16 24, i16 24, i16 25, i16 25, i16 25, i16 25, i16 26, i16 26, i16 26, i16 27, i16 27, i16 27, i16 28, i16 28, i16 28, i16 29, i16 29, i16 29, i16 30, i16 30, i16 30, i16 30, i16 31, i16 31, i16 31, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 35, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 38, i16 39, i16 39, i16 39, i16 40, i16 40, i16 40, i16 40, i16 41, i16 41, i16 41, i16 42, i16 42, i16 42, i16 43, i16 43, i16 43, i16 44, i16 44, i16 44, i16 45, i16 45, i16 45, i16 45, i16 46, i16 46, i16 46, i16 47, i16 47, i16 47, i16 48, i16 48, i16 48, i16 49, i16 49, i16 49, i16 50, i16 50, i16 50, i16 50, i16 51, i16 51, i16 51, i16 52, i16 52, i16 52, i16 53, i16 53, i16 53, i16 54, i16 54, i16 54, i16 55, i16 55, i16 55, i16 55, i16 56, i16 56, i16 56, i16 57, i16 57, i16 57, i16 58, i16 58, i16 58, i16 59, i16 59, i16 59, i16 60, i16 60, i16 60, i16 60, i16 61, i16 61, i16 61, i16 62, i16 62, i16 62, i16 63, i16 63, i16 63, i16 64, i16 64, i16 64, i16 65, i16 65, i16 65, i16 65, i16 66, i16 66, i16 66, i16 67, i16 67, i16 67, i16 68, i16 68, i16 68, i16 69, i16 69, i16 69, i16 70, i16 70, i16 70, i16 70, i16 71, i16 71, i16 71, i16 72, i16 72, i16 72, i16 73, i16 73, i16 73, i16 74, i16 74, i16 74, i16 75, i16 75, i16 75, i16 75, i16 76, i16 76, i16 76, i16 77, i16 77, i16 77, i16 78, i16 78, i16 78, i16 79, i16 79, i16 79, i16 80, i16 80, i16 80, i16 80, i16 81, i16 81, i16 81, i16 82, i16 82, i16 82, i16 83, i16 83, i16 83, i16 84, i16 84, i16 84, i16 85, i16 85, i16 85, i16 85, i16 86, i16 86, i16 86, i16 87, i16 87, i16 87, i16 88, i16 88, i16 88, i16 89, i16 89, i16 89, i16 90, i16 90, i16 90, i16 90, i16 91, i16 91, i16 91, i16 92, i16 92, i16 92, i16 93, i16 93, i16 93, i16 94, i16 94, i16 94, i16 95, i16 95, i16 95, i16 95, i16 96, i16 96, i16 96, i16 97, i16 97, i16 97, i16 98, i16 98, i16 98, i16 99, i16 99, i16 99, i16 100, i16 100, i16 100, i16 100, i16 101, i16 101, i16 101, i16 102, i16 102, i16 102, i16 103, i16 103, i16 103, i16 104, i16 104, i16 104, i16 105, i16 105, i16 105, i16 105, i16 106, i16 106, i16 106, i16 107, i16 107, i16 107, i16 108, i16 108, i16 108, i16 109, i16 109, i16 109, i16 110, i16 110, i16 110, i16 110, i16 111, i16 111, i16 111, i16 112, i16 112, i16 112, i16 113, i16 113, i16 113, i16 114, i16 114, i16 114, i16 115, i16 115, i16 115, i16 115, i16 116, i16 116, i16 116, i16 117, i16 117, i16 117, i16 118, i16 118, i16 118, i16 119, i16 119, i16 119, i16 120, i16 120, i16 120, i16 120, i16 121, i16 121, i16 121, i16 122, i16 122, i16 122, i16 123, i16 123, i16 123, i16 124, i16 124, i16 124, i16 125, i16 125, i16 125, i16 125, i16 126, i16 126, i16 126, i16 127, i16 127, i16 127, i16 128, i16 128, i16 128, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 130, i16 131, i16 131, i16 131, i16 132, i16 132, i16 132, i16 133, i16 133, i16 133, i16 134, i16 134, i16 134, i16 135, i16 135, i16 135, i16 135, i16 136, i16 136, i16 136, i16 137, i16 137, i16 137, i16 138, i16 138, i16 138, i16 139, i16 139, i16 139, i16 140, i16 140, i16 140, i16 140, i16 141, i16 141, i16 141, i16 142, i16 142, i16 142, i16 143, i16 143, i16 143, i16 144, i16 144, i16 144, i16 145, i16 145, i16 145, i16 145, i16 146, i16 146, i16 146, i16 147, i16 147, i16 147, i16 148, i16 148, i16 148, i16 149, i16 149, i16 149, i16 150, i16 150, i16 150, i16 150, i16 151, i16 151, i16 151, i16 152, i16 152, i16 152, i16 153, i16 153, i16 153, i16 154, i16 154, i16 154, i16 155, i16 155, i16 155, i16 155, i16 156, i16 156, i16 156, i16 157, i16 157, i16 157, i16 158, i16 158, i16 158, i16 159, i16 159, i16 159, i16 160, i16 160], align 16
@floyd_steinberg_error4 = internal constant [1025 x i16] [i16 -34, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 -34, i16 -33, i16 -32, i16 -33, i16 -33, i16 -33, i16 -33, i16 -33, i16 -32, i16 -31, i16 -33, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -33, i16 -32, i16 -31, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -31, i16 -30, i16 -32, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -32, i16 -31, i16 -30, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -30, i16 -29, i16 -31, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -31, i16 -30, i16 -29, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -29, i16 -28, i16 -30, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -30, i16 -29, i16 -28, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -28, i16 -27, i16 -29, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -29, i16 -28, i16 -27, i16 -28, i16 -28, i16 -28, i16 -28, i16 -28, i16 -27, i16 -26, i16 -28, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -28, i16 -27, i16 -26, i16 -27, i16 -27, i16 -27, i16 -27, i16 -27, i16 -26, i16 -25, i16 -27, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -27, i16 -26, i16 -25, i16 -26, i16 -26, i16 -26, i16 -26, i16 -26, i16 -25, i16 -24, i16 -26, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -26, i16 -25, i16 -24, i16 -25, i16 -25, i16 -25, i16 -25, i16 -25, i16 -24, i16 -23, i16 -25, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -25, i16 -24, i16 -23, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -23, i16 -22, i16 -24, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -24, i16 -23, i16 -22, i16 -23, i16 -23, i16 -23, i16 -23, i16 -23, i16 -22, i16 -21, i16 -23, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -23, i16 -22, i16 -21, i16 -22, i16 -22, i16 -22, i16 -22, i16 -22, i16 -21, i16 -20, i16 -22, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -22, i16 -21, i16 -20, i16 -21, i16 -21, i16 -21, i16 -21, i16 -21, i16 -20, i16 -19, i16 -21, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -21, i16 -20, i16 -19, i16 -20, i16 -20, i16 -20, i16 -20, i16 -20, i16 -19, i16 -18, i16 -20, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -20, i16 -19, i16 -18, i16 -19, i16 -19, i16 -19, i16 -19, i16 -19, i16 -18, i16 -17, i16 -19, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -19, i16 -18, i16 -17, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -17, i16 -16, i16 -18, i16 -17, i16 -17, i16 -17, i16 -17, i16 -17, i16 -18, i16 -17, i16 -16, i16 -17, i16 -17, i16 -17, i16 -17, i16 -17, i16 -16, i16 -15, i16 -17, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -17, i16 -16, i16 -15, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -15, i16 -14, i16 -16, i16 -15, i16 -15, i16 -15, i16 -15, i16 -15, i16 -16, i16 -15, i16 -14, i16 -15, i16 -15, i16 -15, i16 -15, i16 -15, i16 -14, i16 -13, i16 -15, i16 -14, i16 -14, i16 -14, i16 -14, i16 -14, i16 -15, i16 -14, i16 -13, i16 -14, i16 -14, i16 -14, i16 -14, i16 -14, i16 -13, i16 -12, i16 -14, i16 -13, i16 -13, i16 -13, i16 -13, i16 -13, i16 -14, i16 -13, i16 -12, i16 -13, i16 -13, i16 -13, i16 -13, i16 -13, i16 -12, i16 -11, i16 -13, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -13, i16 -12, i16 -11, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -11, i16 -10, i16 -12, i16 -11, i16 -11, i16 -11, i16 -11, i16 -11, i16 -12, i16 -11, i16 -10, i16 -11, i16 -11, i16 -11, i16 -11, i16 -11, i16 -10, i16 -9, i16 -11, i16 -10, i16 -10, i16 -10, i16 -10, i16 -10, i16 -11, i16 -10, i16 -9, i16 -10, i16 -10, i16 -10, i16 -10, i16 -10, i16 -9, i16 -8, i16 -10, i16 -9, i16 -9, i16 -9, i16 -9, i16 -9, i16 -10, i16 -9, i16 -8, i16 -9, i16 -9, i16 -9, i16 -9, i16 -9, i16 -8, i16 -7, i16 -9, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -9, i16 -8, i16 -7, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -7, i16 -6, i16 -8, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -8, i16 -7, i16 -6, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -6, i16 -5, i16 -7, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -7, i16 -6, i16 -5, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -5, i16 -4, i16 -6, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -6, i16 -5, i16 -4, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -4, i16 -3, i16 -5, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -5, i16 -4, i16 -3, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -3, i16 -2, i16 -4, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -4, i16 -3, i16 -2, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -2, i16 -1, i16 -3, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -3, i16 -2, i16 -1, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -1, i16 0, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 1, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2, i16 3, i16 4, i16 3, i16 3, i16 3, i16 3, i16 3, i16 4, i16 2, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 3, i16 4, i16 5, i16 4, i16 4, i16 4, i16 4, i16 4, i16 5, i16 3, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 4, i16 5, i16 6, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 4, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 5, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 5, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 6, i16 7, i16 8, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 6, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 7, i16 8, i16 9, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 7, i16 8, i16 9, i16 9, i16 9, i16 9, i16 9, i16 8, i16 9, i16 10, i16 9, i16 9, i16 9, i16 9, i16 9, i16 10, i16 8, i16 9, i16 10, i16 10, i16 10, i16 10, i16 10, i16 9, i16 10, i16 11, i16 10, i16 10, i16 10, i16 10, i16 10, i16 11, i16 9, i16 10, i16 11, i16 11, i16 11, i16 11, i16 11, i16 10, i16 11, i16 12, i16 11, i16 11, i16 11, i16 11, i16 11, i16 12, i16 10, i16 11, i16 12, i16 12, i16 12, i16 12, i16 12, i16 11, i16 12, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 13, i16 11, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 13, i16 14, i16 13, i16 13, i16 13, i16 13, i16 13, i16 14, i16 12, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 13, i16 14, i16 15, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 13, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 14, i16 15, i16 16, i16 15, i16 15, i16 15, i16 15, i16 15, i16 16, i16 14, i16 15, i16 16, i16 16, i16 16, i16 16, i16 16, i16 15, i16 16, i16 17, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 15, i16 16, i16 17, i16 17, i16 17, i16 17, i16 17, i16 16, i16 17, i16 18, i16 17, i16 17, i16 17, i16 17, i16 17, i16 18, i16 16, i16 17, i16 18, i16 18, i16 18, i16 18, i16 18, i16 17, i16 18, i16 19, i16 18, i16 18, i16 18, i16 18, i16 18, i16 19, i16 17, i16 18, i16 19, i16 19, i16 19, i16 19, i16 19, i16 18, i16 19, i16 20, i16 19, i16 19, i16 19, i16 19, i16 19, i16 20, i16 18, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 19, i16 20, i16 21, i16 20, i16 20, i16 20, i16 20, i16 20, i16 21, i16 19, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 20, i16 21, i16 22, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 20, i16 21, i16 22, i16 22, i16 22, i16 22, i16 22, i16 21, i16 22, i16 23, i16 22, i16 22, i16 22, i16 22, i16 22, i16 23, i16 21, i16 22, i16 23, i16 23, i16 23, i16 23, i16 23, i16 22, i16 23, i16 24, i16 23, i16 23, i16 23, i16 23, i16 23, i16 24, i16 22, i16 23, i16 24, i16 24, i16 24, i16 24, i16 24, i16 23, i16 24, i16 25, i16 24, i16 24, i16 24, i16 24, i16 24, i16 25, i16 23, i16 24, i16 25, i16 25, i16 25, i16 25, i16 25, i16 24, i16 25, i16 26, i16 25, i16 25, i16 25, i16 25, i16 25, i16 26, i16 24, i16 25, i16 26, i16 26, i16 26, i16 26, i16 26, i16 25, i16 26, i16 27, i16 26, i16 26, i16 26, i16 26, i16 26, i16 27, i16 25, i16 26, i16 27, i16 27, i16 27, i16 27, i16 27, i16 26, i16 27, i16 28, i16 27, i16 27, i16 27, i16 27, i16 27, i16 28, i16 26, i16 27, i16 28, i16 28, i16 28, i16 28, i16 28, i16 27, i16 28, i16 29, i16 28, i16 28, i16 28, i16 28, i16 28, i16 29, i16 27, i16 28, i16 29, i16 29, i16 29, i16 29, i16 29, i16 28, i16 29, i16 30, i16 29, i16 29, i16 29, i16 29, i16 29, i16 30, i16 28, i16 29, i16 30, i16 30, i16 30, i16 30, i16 30, i16 29, i16 30, i16 31, i16 30, i16 30, i16 30, i16 30, i16 30, i16 31, i16 29, i16 30, i16 31, i16 31, i16 31, i16 31, i16 31, i16 30, i16 31, i16 32, i16 31, i16 31, i16 31, i16 31, i16 31, i16 32, i16 30, i16 31, i16 32, i16 32, i16 32, i16 32, i16 32, i16 31, i16 32, i16 33, i16 32, i16 32, i16 32, i16 32, i16 32, i16 33, i16 31, i16 32, i16 33, i16 33, i16 33, i16 33, i16 33, i16 32, i16 33, i16 34, i16 33, i16 33, i16 33, i16 33, i16 33, i16 34, i16 32, i16 33], align 16
@.str.19 = private unnamed_addr constant [26 x i8] c"GRR, UNDEF LONGEST AXIS\07\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"eep.\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"gimpimage-convert.c\00", align 1
@__func__.median_cut_rgb = private unnamed_addr constant [15 x i8] c"median_cut_rgb\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"b1->Rmax >= b1->Rmin\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"b2->Rmax >= b2->Rmin\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"b1->Gmax >= b1->Gmin\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"b2->Gmax >= b2->Gmin\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"b1->Bmax >= b1->Bmin\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"b2->Bmax >= b2->Bmin\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Uh-oh.\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Non-existant colour was expected to be in non-destructive colourmap.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_convert(%struct._GimpImage* %image, i32 %new_type, i32 %num_cols, i32 %dither, i32 %alpha_dither, i32 %remove_dups, i32 %palette_type, %struct._GimpPalette* %custom_palette, %struct._GimpProgress* %progress, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_type.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %dither.addr = alloca i32, align 4
  %alpha_dither.addr = alloca i32, align 4
  %remove_dups.addr = alloca i32, align 4
  %palette_type.addr = alloca i32, align 4
  %custom_palette.addr = alloca %struct._GimpPalette*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %quantobj = alloca %struct._QuantizeObj*, align 8
  %old_type = alloca i32, align 4
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %undo_desc = alloca i8*, align 8
  %nth_layer = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__inst61 = alloca %struct._GTypeInstance*, align 8
  %__t63 = alloca i64, align 8
  %__r66 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  %i = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %layer207 = alloca %struct._GimpLayer*, align 8
  %new_layer_type = alloca i32, align 4
  %new_tiles = alloca %struct._TileManager*, align 8
  %colormap = alloca [768 x i8], align 16
  %i326 = alloca i32, align 4
  %j = alloca i32, align 4
  %old_palette = alloca [768 x i8], align 16
  %new_palette = alloca [768 x i8], align 16
  %remap_table = alloca [256 x i8], align 16
  %num_entries = alloca i32, align 4
  %colormap407 = alloca [768 x i8], align 16
  %i409 = alloca i32, align 4
  %j411 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %new_type, i32* %new_type.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store i32 %dither, i32* %dither.addr, align 4
  store i32 %alpha_dither, i32* %alpha_dither.addr, align 4
  store i32 %remove_dups, i32* %remove_dups.addr, align 4
  store i32 %palette_type, i32* %palette_type.addr, align 4
  store %struct._GimpPalette* %custom_palette, %struct._GimpPalette** %custom_palette.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._QuantizeObj* null, %struct._QuantizeObj** %quantobj, align 8
  store i8* null, i8** %undo_desc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %new_type.addr, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i32 @gimp_image_base_type(%struct._GimpImage* %14)
  %cmp13 = icmp ne i32 %13, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp19 = icmp eq %struct._GimpProgress* %15, null
  br i1 %cmp19, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.18
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = bitcast %struct._GimpProgress* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %lor.lhs.false
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type34, align 8
  %24 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %23, %24
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %26 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %27 = load i32, i32* %__r26, align 4
  store i32 %27, i32* %tmp41
  %28 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %28, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40, %do.body.18
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp48 = icmp eq %struct._GError** %29, null
  br i1 %cmp48, label %if.then.51, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %do.body.47
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  %cmp50 = icmp eq %struct._GError* %31, null
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false.49, %do.body.47
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %32 = load i32, i32* %palette_type.addr, align 4
  %cmp55 = icmp eq i32 %32, 4
  br i1 %cmp55, label %if.then.56, label %if.end.105

if.then.56:                                       ; preds = %do.end.54
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %33 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %cmp58 = icmp eq %struct._GimpPalette* %33, null
  br i1 %cmp58, label %if.then.83, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %do.body.57
  %34 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %35 = bitcast %struct._GimpPalette* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst61, align 8
  %call64 = call i64 @gimp_palette_get_type() #8
  store i64 %call64, i64* %__t63, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %tobool67 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool67, label %if.else.69, label %if.then.68

if.then.68:                                       ; preds = %lor.lhs.false.59
  store i32 0, i32* %__r66, align 4
  br label %if.end.80

if.else.69:                                       ; preds = %lor.lhs.false.59
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %tobool71 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.else.77

land.lhs.true.72:                                 ; preds = %if.else.69
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %g_class73 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class73, align 8
  %g_type74 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type74, align 8
  %42 = load i64, i64* %__t63, align 8
  %cmp75 = icmp eq i64 %41, %42
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.72
  store i32 1, i32* %__r66, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %land.lhs.true.72, %if.else.69
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %44 = load i64, i64* %__t63, align 8
  %call78 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #9
  store i32 %call78, i32* %__r66, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  %45 = load i32, i32* %__r66, align 4
  store i32 %45, i32* %tmp81
  %46 = load i32, i32* %tmp81
  %tobool82 = icmp ne i32 %46, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.end.80, %do.body.57
  br label %if.end.85

if.else.84:                                       ; preds = %if.end.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %47 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %cmp88 = icmp eq %struct._GimpPalette* %47, null
  br i1 %cmp88, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %do.body.87
  %48 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %call90 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %48)
  %cmp91 = icmp sle i32 %call90, 256
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %lor.lhs.false.89, %do.body.87
  br label %if.end.94

if.else.93:                                       ; preds = %lor.lhs.false.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_convert, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %49 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %tobool96 = icmp ne %struct._GimpPalette* %49, null
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %do.end.95
  store i32 3, i32* %palette_type.addr, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %do.end.95
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  %call99 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %50)
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.98
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call102 = call i32 @gimp_error_quark() #8
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %51, i32 %call102, i32 0, i8* %call103)
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %do.end.54
  %52 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette.addr, align 8
  store %struct._GimpPalette* %52, %struct._GimpPalette** @theCustomPalette, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %54)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call106 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %55)
  store %struct._GList* %call106, %struct._GList** %all_layers, align 8
  %56 = load %struct._GList*, %struct._GList** %all_layers, align 8
  %call107 = call i32 @g_list_length(%struct._GList* %56)
  store i32 %call107, i32* %n_layers, align 4
  %57 = load i32, i32* %new_type.addr, align 4
  switch i32 %57, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.109
    i32 2, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %if.end.105
  %call108 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i64 10)
  store i8* %call108, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.end.105
  %call110 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i64 10)
  store i8* %call110, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.105
  %call112 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i64 10)
  store i8* %call112, i8** %undo_desc, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.105, %sw.bb.111, %sw.bb.109, %sw.bb
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %59 = bitcast %struct._GimpImage* %58 to %struct._GTypeInstance*
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call113 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %60)
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = load i8*, i8** %undo_desc, align 8
  %call114 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %61, i32 6, i8* %62)
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call115 = call %struct._GimpUndo* @gimp_image_undo_push_image_type(%struct._GimpImage* %63, i8* null)
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call116 = call i32 @gimp_image_base_type(%struct._GimpImage* %64)
  store i32 %call116, i32* %old_type, align 4
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %66 = bitcast %struct._GimpImage* %65 to i8*
  %67 = load i32, i32* %new_type.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %67, i8* null)
  call void @cpercep_init()
  %68 = load i32, i32* %new_type.addr, align 4
  %cmp117 = icmp eq i32 %68, 2
  br i1 %cmp117, label %if.then.118, label %if.end.188

if.then.118:                                      ; preds = %sw.epilog
  %69 = load i32, i32* %old_type, align 4
  %cmp120 = icmp eq i32 %69, 1
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.126

land.lhs.true.121:                                ; preds = %if.then.118
  %70 = load i32, i32* %num_cols.addr, align 4
  %cmp122 = icmp eq i32 %70, 256
  br i1 %cmp122, label %land.lhs.true.123, label %if.end.126

land.lhs.true.123:                                ; preds = %land.lhs.true.121
  %71 = load i32, i32* %palette_type.addr, align 4
  %cmp124 = icmp eq i32 %71, 0
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.123
  store i32 0, i32* %dither.addr, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.123, %land.lhs.true.121, %if.then.118
  %72 = load i32, i32* %old_type, align 4
  %73 = load i32, i32* %num_cols.addr, align 4
  %74 = load i32, i32* %dither.addr, align 4
  %75 = load i32, i32* %palette_type.addr, align 4
  %76 = load i32, i32* %alpha_dither.addr, align 4
  %77 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call127 = call %struct._QuantizeObj* @initialize_median_cut(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, %struct._GimpProgress* %77)
  store %struct._QuantizeObj* %call127, %struct._QuantizeObj** %quantobj, align 8
  %78 = load i32, i32* %palette_type.addr, align 4
  %cmp128 = icmp eq i32 %78, 0
  br i1 %cmp128, label %if.then.129, label %if.end.144

if.then.129:                                      ; preds = %if.end.126
  %79 = load i32, i32* %old_type, align 4
  %cmp130 = icmp eq i32 %79, 1
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.then.129
  %80 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %80, i32 0, i32 9
  %81 = load i64*, i64** %histogram, align 8
  call void @zero_histogram_gray(i64* %81)
  br label %if.end.134

if.else.132:                                      ; preds = %if.then.129
  %82 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram133 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %82, i32 0, i32 9
  %83 = load i64*, i64** %histogram133, align 8
  call void @zero_histogram_rgb(i64* %83)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.131
  store i32 0, i32* @needs_quantize, align 4
  store i32 0, i32* @num_found_cols, align 4
  %84 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %84, %struct._GList** %list, align 8
  store i32 0, i32* %nth_layer, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.134
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool135 = icmp ne %struct._GList* %85, null
  br i1 %tobool135, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %86, i32 0, i32 0
  %87 = load i8*, i8** %data, align 8
  %88 = bitcast i8* %87 to %struct._GimpLayer*
  store %struct._GimpLayer* %88, %struct._GimpLayer** %layer, align 8
  %89 = load i32, i32* %old_type, align 4
  %cmp137 = icmp eq i32 %89, 1
  br i1 %cmp137, label %if.then.138, label %if.else.140

if.then.138:                                      ; preds = %for.body
  %90 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram139 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %90, i32 0, i32 9
  %91 = load i64*, i64** %histogram139, align 8
  %92 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %93 = load i32, i32* %alpha_dither.addr, align 4
  call void @generate_histogram_gray(i64* %91, %struct._GimpLayer* %92, i32 %93)
  br label %if.end.142

if.else.140:                                      ; preds = %for.body
  %94 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram141 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %94, i32 0, i32 9
  %95 = load i64*, i64** %histogram141, align 8
  %96 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %97 = load i32, i32* %num_cols.addr, align 4
  %98 = load i32, i32* %alpha_dither.addr, align 4
  %99 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %100 = load i32, i32* %nth_layer, align 4
  %101 = load i32, i32* %n_layers, align 4
  call void @generate_histogram_rgb(i64* %95, %struct._GimpLayer* %96, i32 %97, i32 %98, %struct._GimpProgress* %99, i32 %100, i32 %101)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.140, %if.then.138
  br label %for.inc

for.inc:                                          ; preds = %if.end.142
  %102 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool143 = icmp ne %struct._GList* %102, null
  br i1 %tobool143, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %103, i32 0, i32 1
  %104 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %104, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %105 = load i32, i32* %nth_layer, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %nth_layer, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.144

if.end.144:                                       ; preds = %for.end, %if.end.126
  %106 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool145 = icmp ne %struct._GimpProgress* %106, null
  br i1 %tobool145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.end.144
  %107 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @gimp_progress_set_text(%struct._GimpProgress* %107, i8* %call147)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.end.144
  %108 = load i32, i32* %old_type, align 4
  %cmp149 = icmp eq i32 %108, 0
  br i1 %cmp149, label %land.lhs.true.150, label %if.else.179

land.lhs.true.150:                                ; preds = %if.end.148
  %109 = load i32, i32* @needs_quantize, align 4
  %tobool151 = icmp ne i32 %109, 0
  br i1 %tobool151, label %if.else.179, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %land.lhs.true.150
  %110 = load i32, i32* %palette_type.addr, align 4
  %cmp153 = icmp eq i32 %110, 0
  br i1 %cmp153, label %if.then.154, label %if.else.179

if.then.154:                                      ; preds = %land.lhs.true.152
  %111 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %delete_func = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %111, i32 0, i32 3
  %112 = load void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)** %delete_func, align 8
  %113 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  call void %112(%struct._QuantizeObj* %113)
  %114 = load i32, i32* %old_type, align 4
  %115 = load i32, i32* %num_cols.addr, align 4
  %116 = load i32, i32* %palette_type.addr, align 4
  %117 = load i32, i32* %alpha_dither.addr, align 4
  %118 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call155 = call %struct._QuantizeObj* @initialize_median_cut(i32 %114, i32 %115, i32 4, i32 %116, i32 %117, %struct._GimpProgress* %118)
  store %struct._QuantizeObj* %call155, %struct._QuantizeObj** %quantobj, align 8
  %119 = load i32, i32* @num_found_cols, align 4
  %120 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %120, i32 0, i32 5
  store i32 %119, i32* %actual_number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.176, %if.then.154
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* @num_found_cols, align 4
  %cmp157 = icmp slt i32 %121, %122
  br i1 %cmp157, label %for.body.158, label %for.end.178

for.body.158:                                     ; preds = %for.cond.156
  %123 = load i32, i32* %i, align 4
  %idxprom = sext i32 %123 to i64
  %arrayidx = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom
  %arrayidx159 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i32 0, i64 0
  %124 = load i8, i8* %arrayidx159, align 1
  %conv = zext i8 %124 to i32
  %125 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %125 to i64
  %126 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %126, i32 0, i32 6
  %arrayidx161 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom160
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx161, i32 0, i32 0
  store i32 %conv, i32* %red, align 4
  %127 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %127 to i64
  %arrayidx163 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx163, i32 0, i64 1
  %128 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %128 to i32
  %129 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %129 to i64
  %130 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap167 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %130, i32 0, i32 6
  %arrayidx168 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap167, i32 0, i64 %idxprom166
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx168, i32 0, i32 1
  store i32 %conv165, i32* %green, align 4
  %131 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %131 to i64
  %arrayidx170 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx170, i32 0, i64 2
  %132 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %132 to i32
  %133 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %133 to i64
  %134 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap174 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %134, i32 0, i32 6
  %arrayidx175 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap174, i32 0, i64 %idxprom173
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx175, i32 0, i32 2
  store i32 %conv172, i32* %blue, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.158
  %135 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %135, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.156

for.end.178:                                      ; preds = %for.cond.156
  br label %if.end.180

if.else.179:                                      ; preds = %land.lhs.true.152, %land.lhs.true.150, %if.end.148
  %136 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %136, i32 0, i32 0
  %137 = load void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)** %first_pass, align 8
  %138 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  call void %137(%struct._QuantizeObj* %138)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.179, %for.end.178
  %139 = load i32, i32* %palette_type.addr, align 4
  %cmp181 = icmp eq i32 %139, 0
  br i1 %cmp181, label %if.then.183, label %if.end.187

if.then.183:                                      ; preds = %if.end.180
  %140 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap184 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %140, i32 0, i32 6
  %arraydecay = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap184, i32 0, i32 0
  %141 = bitcast %struct._Color* %arraydecay to i8*
  %142 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors185 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %142, i32 0, i32 5
  %143 = load i32, i32* %actual_number_of_colors185, align 4
  %conv186 = sext i32 %143 to i64
  call void @qsort(i8* %141, i64 %conv186, i64 12, i32 (i8*, i8*)* @color_quicksort)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %if.end.180
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %sw.epilog
  %144 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool189 = icmp ne %struct._GimpProgress* %144, null
  br i1 %tobool189, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %if.end.188
  %145 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call191 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0)) #5
  call void @gimp_progress_set_text(%struct._GimpProgress* %145, i8* %call191)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.190, %if.end.188
  %146 = load i32, i32* %new_type.addr, align 4
  switch i32 %146, label %sw.default [
    i32 2, label %sw.bb.193
  ]

sw.bb.193:                                        ; preds = %if.end.192
  %147 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %147, i32 0, i32 1
  %148 = load void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)** %second_pass_init, align 8
  %tobool194 = icmp ne void (%struct._QuantizeObj*)* %148, null
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %sw.bb.193
  %149 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init196 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %149, i32 0, i32 1
  %150 = load void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)** %second_pass_init196, align 8
  %151 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  call void %150(%struct._QuantizeObj* %151)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %sw.bb.193
  br label %sw.epilog.198

sw.default:                                       ; preds = %if.end.192
  br label %sw.epilog.198

sw.epilog.198:                                    ; preds = %sw.default, %if.end.197
  %152 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %tobool199 = icmp ne %struct._QuantizeObj* %152, null
  br i1 %tobool199, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %sw.epilog.198
  %153 = load i32, i32* %n_layers, align 4
  %154 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %n_layers201 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %154, i32 0, i32 14
  store i32 %153, i32* %n_layers201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %sw.epilog.198
  %155 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %155, %struct._GList** %list, align 8
  store i32 0, i32* %nth_layer, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %cond.end.309, %if.end.202
  %156 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool204 = icmp ne %struct._GList* %156, null
  br i1 %tobool204, label %for.body.205, label %for.end.312

for.body.205:                                     ; preds = %for.cond.203
  %157 = load %struct._GList*, %struct._GList** %list, align 8
  %data208 = getelementptr inbounds %struct._GList, %struct._GList* %157, i32 0, i32 0
  %158 = load i8*, i8** %data208, align 8
  %159 = bitcast i8* %158 to %struct._GimpLayer*
  store %struct._GimpLayer* %159, %struct._GimpLayer** %layer207, align 8
  %160 = load i32, i32* %new_type.addr, align 4
  switch i32 %160, label %sw.default.302 [
    i32 0, label %sw.bb.209
    i32 1, label %sw.bb.209
    i32 2, label %sw.bb.212
  ]

sw.bb.209:                                        ; preds = %for.body.205, %for.body.205
  %161 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %162 = bitcast %struct._GimpLayer* %161 to %struct._GTypeInstance*
  %call210 = call i64 @gimp_drawable_get_type() #8
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call210)
  %163 = bitcast %struct._GTypeInstance* %call211 to %struct._GimpDrawable*
  %164 = load i32, i32* %new_type.addr, align 4
  call void @gimp_drawable_convert_type(%struct._GimpDrawable* %163, %struct._GimpImage* null, i32 %164, i32 1)
  br label %sw.epilog.303

sw.bb.212:                                        ; preds = %for.body.205
  %165 = load i32, i32* %new_type.addr, align 4
  %cmp215 = icmp eq i32 %165, 0
  br i1 %cmp215, label %cond.true.217, label %cond.false.218

cond.true.217:                                    ; preds = %sw.bb.212
  br label %cond.end.228

cond.false.218:                                   ; preds = %sw.bb.212
  %166 = load i32, i32* %new_type.addr, align 4
  %cmp219 = icmp eq i32 %166, 1
  br i1 %cmp219, label %cond.true.221, label %cond.false.222

cond.true.221:                                    ; preds = %cond.false.218
  br label %cond.end.226

cond.false.222:                                   ; preds = %cond.false.218
  %167 = load i32, i32* %new_type.addr, align 4
  %cmp223 = icmp eq i32 %167, 2
  %cond225 = select i1 %cmp223, i32 4, i32 -1
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.222, %cond.true.221
  %cond227 = phi i32 [ 2, %cond.true.221 ], [ %cond225, %cond.false.222 ]
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.end.226, %cond.true.217
  %cond229 = phi i32 [ 0, %cond.true.217 ], [ %cond227, %cond.end.226 ]
  store i32 %cond229, i32* %new_layer_type, align 4
  %168 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %169 = bitcast %struct._GimpLayer* %168 to %struct._GTypeInstance*
  %call230 = call i64 @gimp_drawable_get_type() #8
  %call231 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call230)
  %170 = bitcast %struct._GTypeInstance* %call231 to %struct._GimpDrawable*
  %call232 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %170)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.258

if.then.234:                                      ; preds = %cond.end.228
  %171 = load i32, i32* %new_layer_type, align 4
  %cmp235 = icmp eq i32 %171, 0
  br i1 %cmp235, label %cond.true.240, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %if.then.234
  %172 = load i32, i32* %new_layer_type, align 4
  %cmp238 = icmp eq i32 %172, 1
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %lor.lhs.false.237, %if.then.234
  br label %cond.end.256

cond.false.241:                                   ; preds = %lor.lhs.false.237
  %173 = load i32, i32* %new_layer_type, align 4
  %cmp242 = icmp eq i32 %173, 2
  br i1 %cmp242, label %cond.true.247, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %cond.false.241
  %174 = load i32, i32* %new_layer_type, align 4
  %cmp245 = icmp eq i32 %174, 3
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %lor.lhs.false.244, %cond.false.241
  br label %cond.end.254

cond.false.248:                                   ; preds = %lor.lhs.false.244
  %175 = load i32, i32* %new_layer_type, align 4
  %cmp249 = icmp eq i32 %175, 4
  br i1 %cmp249, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.248
  %176 = load i32, i32* %new_layer_type, align 4
  %cmp251 = icmp eq i32 %176, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.248
  %177 = phi i1 [ true, %cond.false.248 ], [ %cmp251, %lor.rhs ]
  %cond253 = select i1 %177, i32 5, i32 -1
  br label %cond.end.254

cond.end.254:                                     ; preds = %lor.end, %cond.true.247
  %cond255 = phi i32 [ 3, %cond.true.247 ], [ %cond253, %lor.end ]
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.end.254, %cond.true.240
  %cond257 = phi i32 [ 1, %cond.true.240 ], [ %cond255, %cond.end.254 ]
  store i32 %cond257, i32* %new_layer_type, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %cond.end.256, %cond.end.228
  %178 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %179 = bitcast %struct._GimpLayer* %178 to %struct._GTypeInstance*
  %call259 = call i64 @gimp_item_get_type() #8
  %call260 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call259)
  %180 = bitcast %struct._GTypeInstance* %call260 to %struct._GimpItem*
  %call261 = call i32 @gimp_item_get_width(%struct._GimpItem* %180)
  %181 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %182 = bitcast %struct._GimpLayer* %181 to %struct._GTypeInstance*
  %call262 = call i64 @gimp_item_get_type() #8
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call262)
  %183 = bitcast %struct._GTypeInstance* %call263 to %struct._GimpItem*
  %call264 = call i32 @gimp_item_get_height(%struct._GimpItem* %183)
  %184 = load i32, i32* %new_layer_type, align 4
  %cmp265 = icmp eq i32 %184, 1
  br i1 %cmp265, label %cond.true.267, label %cond.false.268

cond.true.267:                                    ; preds = %if.end.258
  br label %cond.end.296

cond.false.268:                                   ; preds = %if.end.258
  %185 = load i32, i32* %new_layer_type, align 4
  %cmp269 = icmp eq i32 %185, 0
  br i1 %cmp269, label %cond.true.271, label %cond.false.272

cond.true.271:                                    ; preds = %cond.false.268
  br label %cond.end.294

cond.false.272:                                   ; preds = %cond.false.268
  %186 = load i32, i32* %new_layer_type, align 4
  %cmp273 = icmp eq i32 %186, 3
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %cond.false.272
  br label %cond.end.292

cond.false.276:                                   ; preds = %cond.false.272
  %187 = load i32, i32* %new_layer_type, align 4
  %cmp277 = icmp eq i32 %187, 2
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %cond.false.276
  br label %cond.end.290

cond.false.280:                                   ; preds = %cond.false.276
  %188 = load i32, i32* %new_layer_type, align 4
  %cmp281 = icmp eq i32 %188, 5
  br i1 %cmp281, label %cond.true.283, label %cond.false.284

cond.true.283:                                    ; preds = %cond.false.280
  br label %cond.end.288

cond.false.284:                                   ; preds = %cond.false.280
  %189 = load i32, i32* %new_layer_type, align 4
  %cmp285 = icmp eq i32 %189, 4
  %cond287 = select i1 %cmp285, i32 1, i32 -1
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.284, %cond.true.283
  %cond289 = phi i32 [ 2, %cond.true.283 ], [ %cond287, %cond.false.284 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.279
  %cond291 = phi i32 [ 1, %cond.true.279 ], [ %cond289, %cond.end.288 ]
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.end.290, %cond.true.275
  %cond293 = phi i32 [ 2, %cond.true.275 ], [ %cond291, %cond.end.290 ]
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.end.292, %cond.true.271
  %cond295 = phi i32 [ 3, %cond.true.271 ], [ %cond293, %cond.end.292 ]
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.end.294, %cond.true.267
  %cond297 = phi i32 [ 4, %cond.true.267 ], [ %cond295, %cond.end.294 ]
  %call298 = call %struct._TileManager* @tile_manager_new(i32 %call261, i32 %call264, i32 %cond297)
  store %struct._TileManager* %call298, %struct._TileManager** %new_tiles, align 8
  %190 = load i32, i32* %nth_layer, align 4
  %191 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %nth_layer299 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %191, i32 0, i32 13
  store i32 %190, i32* %nth_layer299, align 4
  %192 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %192, i32 0, i32 2
  %193 = load void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)*, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass, align 8
  %194 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %195 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %196 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void %193(%struct._QuantizeObj* %194, %struct._GimpLayer* %195, %struct._TileManager* %196)
  %197 = load %struct._GimpLayer*, %struct._GimpLayer** %layer207, align 8
  %198 = bitcast %struct._GimpLayer* %197 to %struct._GTypeInstance*
  %call300 = call i64 @gimp_drawable_get_type() #8
  %call301 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 %call300)
  %199 = bitcast %struct._GTypeInstance* %call301 to %struct._GimpDrawable*
  %200 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %201 = load i32, i32* %new_layer_type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %199, i32 1, i8* null, %struct._TileManager* %200, i32 %201)
  %202 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %202)
  br label %sw.epilog.303

sw.default.302:                                   ; preds = %for.body.205
  br label %sw.epilog.303

sw.epilog.303:                                    ; preds = %sw.default.302, %cond.end.296, %sw.bb.209
  br label %for.inc.304

for.inc.304:                                      ; preds = %sw.epilog.303
  %203 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool305 = icmp ne %struct._GList* %203, null
  br i1 %tobool305, label %cond.true.306, label %cond.false.308

cond.true.306:                                    ; preds = %for.inc.304
  %204 = load %struct._GList*, %struct._GList** %list, align 8
  %next307 = getelementptr inbounds %struct._GList, %struct._GList* %204, i32 0, i32 1
  %205 = load %struct._GList*, %struct._GList** %next307, align 8
  br label %cond.end.309

cond.false.308:                                   ; preds = %for.inc.304
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.308, %cond.true.306
  %cond310 = phi %struct._GList* [ %205, %cond.true.306 ], [ null, %cond.false.308 ]
  store %struct._GList* %cond310, %struct._GList** %list, align 8
  %206 = load i32, i32* %nth_layer, align 4
  %inc311 = add nsw i32 %206, 1
  store i32 %inc311, i32* %nth_layer, align 4
  br label %for.cond.203

for.end.312:                                      ; preds = %for.cond.203
  %207 = load i32, i32* %new_type.addr, align 4
  switch i32 %207, label %sw.epilog.447 [
    i32 0, label %sw.bb.313
    i32 1, label %sw.bb.313
    i32 2, label %sw.bb.318
  ]

sw.bb.313:                                        ; preds = %for.end.312, %for.end.312
  %208 = load i32, i32* %old_type, align 4
  %cmp314 = icmp eq i32 %208, 2
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %sw.bb.313
  %209 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_unset_colormap(%struct._GimpImage* %209, i32 1)
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.316, %sw.bb.313
  br label %sw.epilog.447

sw.bb.318:                                        ; preds = %for.end.312
  %210 = load i32, i32* %remove_dups.addr, align 4
  %tobool319 = icmp ne i32 %210, 0
  br i1 %tobool319, label %land.lhs.true.320, label %if.else.405

land.lhs.true.320:                                ; preds = %sw.bb.318
  %211 = load i32, i32* %palette_type.addr, align 4
  %cmp321 = icmp ne i32 %211, 0
  br i1 %cmp321, label %if.then.323, label %if.else.405

if.then.323:                                      ; preds = %land.lhs.true.320
  store i32 0, i32* %i326, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.361, %if.then.323
  %212 = load i32, i32* %i326, align 4
  %213 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors333 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %213, i32 0, i32 5
  %214 = load i32, i32* %actual_number_of_colors333, align 4
  %cmp334 = icmp slt i32 %212, %214
  br i1 %cmp334, label %for.body.336, label %for.end.363

for.body.336:                                     ; preds = %for.cond.332
  %215 = load i32, i32* %i326, align 4
  %idxprom337 = sext i32 %215 to i64
  %216 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap338 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %216, i32 0, i32 6
  %arrayidx339 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap338, i32 0, i64 %idxprom337
  %red340 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx339, i32 0, i32 0
  %217 = load i32, i32* %red340, align 4
  %conv341 = trunc i32 %217 to i8
  %218 = load i32, i32* %j, align 4
  %inc342 = add nsw i32 %218, 1
  store i32 %inc342, i32* %j, align 4
  %idxprom343 = sext i32 %218 to i64
  %arrayidx344 = getelementptr inbounds [768 x i8], [768 x i8]* %old_palette, i32 0, i64 %idxprom343
  store i8 %conv341, i8* %arrayidx344, align 1
  %219 = load i32, i32* %i326, align 4
  %idxprom345 = sext i32 %219 to i64
  %220 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap346 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %220, i32 0, i32 6
  %arrayidx347 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap346, i32 0, i64 %idxprom345
  %green348 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx347, i32 0, i32 1
  %221 = load i32, i32* %green348, align 4
  %conv349 = trunc i32 %221 to i8
  %222 = load i32, i32* %j, align 4
  %inc350 = add nsw i32 %222, 1
  store i32 %inc350, i32* %j, align 4
  %idxprom351 = sext i32 %222 to i64
  %arrayidx352 = getelementptr inbounds [768 x i8], [768 x i8]* %old_palette, i32 0, i64 %idxprom351
  store i8 %conv349, i8* %arrayidx352, align 1
  %223 = load i32, i32* %i326, align 4
  %idxprom353 = sext i32 %223 to i64
  %224 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap354 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %224, i32 0, i32 6
  %arrayidx355 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap354, i32 0, i64 %idxprom353
  %blue356 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx355, i32 0, i32 2
  %225 = load i32, i32* %blue356, align 4
  %conv357 = trunc i32 %225 to i8
  %226 = load i32, i32* %j, align 4
  %inc358 = add nsw i32 %226, 1
  store i32 %inc358, i32* %j, align 4
  %idxprom359 = sext i32 %226 to i64
  %arrayidx360 = getelementptr inbounds [768 x i8], [768 x i8]* %old_palette, i32 0, i64 %idxprom359
  store i8 %conv357, i8* %arrayidx360, align 1
  br label %for.inc.361

for.inc.361:                                      ; preds = %for.body.336
  %227 = load i32, i32* %i326, align 4
  %inc362 = add nsw i32 %227, 1
  store i32 %inc362, i32* %i326, align 4
  br label %for.cond.332

for.end.363:                                      ; preds = %for.cond.332
  %228 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors364 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %228, i32 0, i32 5
  %229 = load i32, i32* %actual_number_of_colors364, align 4
  store i32 %229, i32* %num_entries, align 4
  %arraydecay365 = getelementptr inbounds [768 x i8], [768 x i8]* %old_palette, i32 0, i32 0
  %arraydecay366 = getelementptr inbounds [768 x i8], [768 x i8]* %new_palette, i32 0, i32 0
  %230 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %index_used_count = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %230, i32 0, i32 8
  %arraydecay367 = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count, i32 0, i32 0
  %arraydecay368 = getelementptr inbounds [256 x i8], [256 x i8]* %remap_table, i32 0, i32 0
  call void @make_remap_table(i8* %arraydecay365, i8* %arraydecay366, i64* %arraydecay367, i8* %arraydecay368, i32* %num_entries)
  %231 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %231, %struct._GList** %list, align 8
  br label %for.cond.369

for.cond.369:                                     ; preds = %cond.end.379, %for.end.363
  %232 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool370 = icmp ne %struct._GList* %232, null
  br i1 %tobool370, label %for.body.371, label %for.end.381

for.body.371:                                     ; preds = %for.cond.369
  %233 = load %struct._GList*, %struct._GList** %list, align 8
  %data372 = getelementptr inbounds %struct._GList, %struct._GList* %233, i32 0, i32 0
  %234 = load i8*, i8** %data372, align 8
  %235 = bitcast i8* %234 to %struct._GimpLayer*
  %arraydecay373 = getelementptr inbounds [256 x i8], [256 x i8]* %remap_table, i32 0, i32 0
  %236 = load i32, i32* %num_entries, align 4
  call void @remap_indexed_layer(%struct._GimpLayer* %235, i8* %arraydecay373, i32 %236)
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.371
  %237 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool375 = icmp ne %struct._GList* %237, null
  br i1 %tobool375, label %cond.true.376, label %cond.false.378

cond.true.376:                                    ; preds = %for.inc.374
  %238 = load %struct._GList*, %struct._GList** %list, align 8
  %next377 = getelementptr inbounds %struct._GList, %struct._GList* %238, i32 0, i32 1
  %239 = load %struct._GList*, %struct._GList** %next377, align 8
  br label %cond.end.379

cond.false.378:                                   ; preds = %for.inc.374
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.378, %cond.true.376
  %cond380 = phi %struct._GList* [ %239, %cond.true.376 ], [ null, %cond.false.378 ]
  store %struct._GList* %cond380, %struct._GList** %list, align 8
  br label %for.cond.369

for.end.381:                                      ; preds = %for.cond.369
  store i32 0, i32* %i326, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.401, %for.end.381
  %240 = load i32, i32* %i326, align 4
  %241 = load i32, i32* %num_entries, align 4
  %cmp383 = icmp slt i32 %240, %241
  br i1 %cmp383, label %for.body.385, label %for.end.403

for.body.385:                                     ; preds = %for.cond.382
  %242 = load i32, i32* %j, align 4
  %idxprom386 = sext i32 %242 to i64
  %arrayidx387 = getelementptr inbounds [768 x i8], [768 x i8]* %new_palette, i32 0, i64 %idxprom386
  %243 = load i8, i8* %arrayidx387, align 1
  %244 = load i32, i32* %j, align 4
  %idxprom388 = sext i32 %244 to i64
  %arrayidx389 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap, i32 0, i64 %idxprom388
  store i8 %243, i8* %arrayidx389, align 1
  %245 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %245, 1
  store i32 %inc390, i32* %j, align 4
  %246 = load i32, i32* %j, align 4
  %idxprom391 = sext i32 %246 to i64
  %arrayidx392 = getelementptr inbounds [768 x i8], [768 x i8]* %new_palette, i32 0, i64 %idxprom391
  %247 = load i8, i8* %arrayidx392, align 1
  %248 = load i32, i32* %j, align 4
  %idxprom393 = sext i32 %248 to i64
  %arrayidx394 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap, i32 0, i64 %idxprom393
  store i8 %247, i8* %arrayidx394, align 1
  %249 = load i32, i32* %j, align 4
  %inc395 = add nsw i32 %249, 1
  store i32 %inc395, i32* %j, align 4
  %250 = load i32, i32* %j, align 4
  %idxprom396 = sext i32 %250 to i64
  %arrayidx397 = getelementptr inbounds [768 x i8], [768 x i8]* %new_palette, i32 0, i64 %idxprom396
  %251 = load i8, i8* %arrayidx397, align 1
  %252 = load i32, i32* %j, align 4
  %idxprom398 = sext i32 %252 to i64
  %arrayidx399 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap, i32 0, i64 %idxprom398
  store i8 %251, i8* %arrayidx399, align 1
  %253 = load i32, i32* %j, align 4
  %inc400 = add nsw i32 %253, 1
  store i32 %inc400, i32* %j, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.385
  %254 = load i32, i32* %i326, align 4
  %inc402 = add nsw i32 %254, 1
  store i32 %inc402, i32* %i326, align 4
  br label %for.cond.382

for.end.403:                                      ; preds = %for.cond.382
  %255 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %arraydecay404 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap, i32 0, i32 0
  %256 = load i32, i32* %num_entries, align 4
  call void @gimp_image_set_colormap(%struct._GimpImage* %255, i8* %arraydecay404, i32 %256, i32 1)
  br label %if.end.446

if.else.405:                                      ; preds = %land.lhs.true.320, %sw.bb.318
  store i32 0, i32* %i409, align 4
  store i32 0, i32* %j411, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.441, %if.else.405
  %257 = load i32, i32* %i409, align 4
  %258 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors413 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %258, i32 0, i32 5
  %259 = load i32, i32* %actual_number_of_colors413, align 4
  %cmp414 = icmp slt i32 %257, %259
  br i1 %cmp414, label %for.body.416, label %for.end.443

for.body.416:                                     ; preds = %for.cond.412
  %260 = load i32, i32* %i409, align 4
  %idxprom417 = sext i32 %260 to i64
  %261 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap418 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %261, i32 0, i32 6
  %arrayidx419 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap418, i32 0, i64 %idxprom417
  %red420 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx419, i32 0, i32 0
  %262 = load i32, i32* %red420, align 4
  %conv421 = trunc i32 %262 to i8
  %263 = load i32, i32* %j411, align 4
  %inc422 = add nsw i32 %263, 1
  store i32 %inc422, i32* %j411, align 4
  %idxprom423 = sext i32 %263 to i64
  %arrayidx424 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap407, i32 0, i64 %idxprom423
  store i8 %conv421, i8* %arrayidx424, align 1
  %264 = load i32, i32* %i409, align 4
  %idxprom425 = sext i32 %264 to i64
  %265 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap426 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %265, i32 0, i32 6
  %arrayidx427 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap426, i32 0, i64 %idxprom425
  %green428 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx427, i32 0, i32 1
  %266 = load i32, i32* %green428, align 4
  %conv429 = trunc i32 %266 to i8
  %267 = load i32, i32* %j411, align 4
  %inc430 = add nsw i32 %267, 1
  store i32 %inc430, i32* %j411, align 4
  %idxprom431 = sext i32 %267 to i64
  %arrayidx432 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap407, i32 0, i64 %idxprom431
  store i8 %conv429, i8* %arrayidx432, align 1
  %268 = load i32, i32* %i409, align 4
  %idxprom433 = sext i32 %268 to i64
  %269 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %cmap434 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %269, i32 0, i32 6
  %arrayidx435 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap434, i32 0, i64 %idxprom433
  %blue436 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx435, i32 0, i32 2
  %270 = load i32, i32* %blue436, align 4
  %conv437 = trunc i32 %270 to i8
  %271 = load i32, i32* %j411, align 4
  %inc438 = add nsw i32 %271, 1
  store i32 %inc438, i32* %j411, align 4
  %idxprom439 = sext i32 %271 to i64
  %arrayidx440 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap407, i32 0, i64 %idxprom439
  store i8 %conv437, i8* %arrayidx440, align 1
  br label %for.inc.441

for.inc.441:                                      ; preds = %for.body.416
  %272 = load i32, i32* %i409, align 4
  %inc442 = add nsw i32 %272, 1
  store i32 %inc442, i32* %i409, align 4
  br label %for.cond.412

for.end.443:                                      ; preds = %for.cond.412
  %273 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %arraydecay444 = getelementptr inbounds [768 x i8], [768 x i8]* %colormap407, i32 0, i32 0
  %274 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %actual_number_of_colors445 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %274, i32 0, i32 5
  %275 = load i32, i32* %actual_number_of_colors445, align 4
  call void @gimp_image_set_colormap(%struct._GimpImage* %273, i8* %arraydecay444, i32 %275, i32 1)
  br label %if.end.446

if.end.446:                                       ; preds = %for.end.443, %for.end.403
  br label %sw.epilog.447

sw.epilog.447:                                    ; preds = %for.end.312, %if.end.446, %if.end.317
  %276 = load i32, i32* %new_type.addr, align 4
  switch i32 %276, label %sw.default.454 [
    i32 0, label %sw.bb.448
    i32 2, label %sw.bb.448
    i32 1, label %sw.bb.453
  ]

sw.bb.448:                                        ; preds = %sw.epilog.447, %sw.epilog.447
  %277 = load i32, i32* %old_type, align 4
  %cmp449 = icmp eq i32 %277, 1
  br i1 %cmp449, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %sw.bb.448
  %278 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_parasite_detach(%struct._GimpImage* %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.451, %sw.bb.448
  br label %sw.epilog.455

sw.bb.453:                                        ; preds = %sw.epilog.447
  %279 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_parasite_detach(%struct._GimpImage* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog.455

sw.default.454:                                   ; preds = %sw.epilog.447
  br label %sw.epilog.455

sw.epilog.455:                                    ; preds = %sw.default.454, %sw.bb.453, %if.end.452
  %280 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %tobool456 = icmp ne %struct._QuantizeObj* %280, null
  br i1 %tobool456, label %if.then.457, label %if.end.459

if.then.457:                                      ; preds = %sw.epilog.455
  %281 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %delete_func458 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %281, i32 0, i32 3
  %282 = load void (%struct._QuantizeObj*)*, void (%struct._QuantizeObj*)** %delete_func458, align 8
  %283 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  call void %282(%struct._QuantizeObj* %283)
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.457, %sw.epilog.455
  %284 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call460 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %284)
  %285 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_mode_changed(%struct._GimpImage* %285)
  %286 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %287 = bitcast %struct._GimpImage* %286 to %struct._GTypeInstance*
  %call461 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %287, i64 80)
  %288 = bitcast %struct._GTypeInstance* %call461 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %288)
  %289 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %289)
  %290 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp462 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %290, i32 0, i32 1
  %291 = load %struct._Gimp*, %struct._Gimp** %gimp462, align 8
  call void @gimp_unset_busy(%struct._Gimp* %291)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.459, %if.then.101, %if.else.93, %if.else.84, %if.else.52, %if.else.44, %if.else.15, %if.else.9
  %292 = load i32, i32* %retval
  ret i32 %292
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_set_busy(%struct._Gimp*) #3

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_image_type(%struct._GimpImage*, i8*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @cpercep_init() #3

; Function Attrs: nounwind uwtable
define internal %struct._QuantizeObj* @initialize_median_cut(i32 %type, i32 %num_colors, i32 %dither_type, i32 %palette_type, i32 %want_alpha_dither, %struct._GimpProgress* %progress) #0 {
entry:
  %type.addr = alloca i32, align 4
  %num_colors.addr = alloca i32, align 4
  %dither_type.addr = alloca i32, align 4
  %palette_type.addr = alloca i32, align 4
  %want_alpha_dither.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %quantobj = alloca %struct._QuantizeObj*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i32 %dither_type, i32* %dither_type.addr, align 4
  store i32 %palette_type, i32* %palette_type.addr, align 4
  store i32 %want_alpha_dither, i32* %want_alpha_dither.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 8264)
  %0 = bitcast i8* %call to %struct._QuantizeObj*
  store %struct._QuantizeObj* %0, %struct._QuantizeObj** %quantobj, align 8
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %palette_type.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call2 = call noalias i8* @g_malloc_n(i64 256, i64 8)
  %3 = bitcast i8* %call2 to i64*
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 9
  store i64* %3, i64** %histogram, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call3 = call noalias i8* @g_malloc_n(i64 1048576, i64 8)
  %5 = bitcast i8* %call3 to i64*
  %6 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %histogram4 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %6, i32 0, i32 9
  store i64* %5, i64** %histogram4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %num_colors.addr, align 4
  %8 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %desired_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %8, i32 0, i32 4
  store i32 %7, i32* %desired_number_of_colors, align 4
  %9 = load i32, i32* %want_alpha_dither.addr, align 4
  %10 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %want_alpha_dither5 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %10, i32 0, i32 10
  store i32 %9, i32* %want_alpha_dither5, align 4
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %12 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %progress6 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %12, i32 0, i32 12
  store %struct._GimpProgress* %11, %struct._GimpProgress** %progress6, align 8
  %13 = load i32, i32* %type.addr, align 4
  switch i32 %13, label %sw.default.79 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load i32, i32* %palette_type.addr, align 4
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb.7
    i32 2, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 3, label %sw.bb.12
  ]

sw.bb.7:                                          ; preds = %sw.bb
  %15 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %15, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @median_cut_pass1_gray, void (%struct._QuantizeObj*)** %first_pass, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb
  %16 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass9 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %16, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @webpal_pass1, void (%struct._QuantizeObj*)** %first_pass9, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb
  %17 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass11 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %17, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @custompal_pass1, void (%struct._QuantizeObj*)** %first_pass11, align 8
  store i32 1, i32* @needs_quantize, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %sw.bb, %sw.bb.12
  %18 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass13 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %18, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @monopal_pass1, void (%struct._QuantizeObj*)** %first_pass13, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.8, %sw.bb.7
  %19 = load i32, i32* %palette_type.addr, align 4
  %cmp14 = icmp eq i32 %19, 2
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %20 = load i32, i32* %palette_type.addr, align 4
  %cmp15 = icmp eq i32 %20, 4
  br i1 %cmp15, label %if.then.16, label %if.else.31

if.then.16:                                       ; preds = %lor.lhs.false, %sw.epilog
  %21 = load i32, i32* %dither_type.addr, align 4
  switch i32 %21, label %sw.default.18 [
    i32 4, label %sw.bb.17
    i32 0, label %sw.bb.19
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.27
  ]

sw.bb.17:                                         ; preds = %if.then.16
  br label %sw.default.18

sw.default.18:                                    ; preds = %if.then.16, %sw.bb.17
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.bb.19

sw.bb.19:                                         ; preds = %if.then.16, %sw.default.18
  %22 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %22, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init, align 8
  %23 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %23, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_no_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass, align 8
  br label %sw.epilog.30

sw.bb.20:                                         ; preds = %if.then.16
  %24 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %24, i32 0, i32 11
  store i32 0, i32* %error_freedom, align 4
  %25 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init21 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %25, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init21, align 8
  %26 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass22 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %26, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass22, align 8
  br label %sw.epilog.30

sw.bb.23:                                         ; preds = %if.then.16
  %27 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom24 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %27, i32 0, i32 11
  store i32 1, i32* %error_freedom24, align 4
  %28 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init25 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %28, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init25, align 8
  %29 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass26 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %29, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass26, align 8
  br label %sw.epilog.30

sw.bb.27:                                         ; preds = %if.then.16
  %30 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init28 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %30, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init28, align 8
  %31 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass29 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %31, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fixed_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass29, align 8
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.bb.27, %sw.bb.23, %sw.bb.20, %sw.bb.19
  br label %if.end.49

if.else.31:                                       ; preds = %lor.lhs.false
  %32 = load i32, i32* %dither_type.addr, align 4
  switch i32 %32, label %sw.default.33 [
    i32 4, label %sw.bb.32
    i32 0, label %sw.bb.34
    i32 1, label %sw.bb.37
    i32 2, label %sw.bb.41
    i32 3, label %sw.bb.45
  ]

sw.bb.32:                                         ; preds = %if.else.31
  br label %sw.default.33

sw.default.33:                                    ; preds = %if.else.31, %sw.bb.32
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %if.else.31, %sw.default.33
  %33 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init35 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %33, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_gray_init, void (%struct._QuantizeObj*)** %second_pass_init35, align 8
  %34 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass36 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %34, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_no_dither_gray, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass36, align 8
  br label %sw.epilog.48

sw.bb.37:                                         ; preds = %if.else.31
  %35 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom38 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %35, i32 0, i32 11
  store i32 0, i32* %error_freedom38, align 4
  %36 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init39 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %36, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_gray_init, void (%struct._QuantizeObj*)** %second_pass_init39, align 8
  %37 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass40 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %37, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_gray, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass40, align 8
  br label %sw.epilog.48

sw.bb.41:                                         ; preds = %if.else.31
  %38 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom42 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %38, i32 0, i32 11
  store i32 1, i32* %error_freedom42, align 4
  %39 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init43 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %39, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_gray_init, void (%struct._QuantizeObj*)** %second_pass_init43, align 8
  %40 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass44 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %40, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_gray, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass44, align 8
  br label %sw.epilog.48

sw.bb.45:                                         ; preds = %if.else.31
  %41 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init46 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %41, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_gray_init, void (%struct._QuantizeObj*)** %second_pass_init46, align 8
  %42 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass47 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %42, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fixed_dither_gray, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass47, align 8
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.bb.45, %sw.bb.41, %sw.bb.37, %sw.bb.34
  br label %if.end.49

if.end.49:                                        ; preds = %sw.epilog.48, %sw.epilog.30
  br label %sw.epilog.80

sw.bb.50:                                         ; preds = %if.end
  %43 = load i32, i32* %palette_type.addr, align 4
  switch i32 %43, label %sw.default.58 [
    i32 0, label %sw.bb.51
    i32 2, label %sw.bb.53
    i32 4, label %sw.bb.55
    i32 3, label %sw.bb.57
  ]

sw.bb.51:                                         ; preds = %sw.bb.50
  %44 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass52 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %44, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @median_cut_pass1_rgb, void (%struct._QuantizeObj*)** %first_pass52, align 8
  br label %sw.epilog.60

sw.bb.53:                                         ; preds = %sw.bb.50
  %45 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass54 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %45, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @webpal_pass1, void (%struct._QuantizeObj*)** %first_pass54, align 8
  store i32 1, i32* @needs_quantize, align 4
  br label %sw.epilog.60

sw.bb.55:                                         ; preds = %sw.bb.50
  %46 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass56 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %46, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @custompal_pass1, void (%struct._QuantizeObj*)** %first_pass56, align 8
  store i32 1, i32* @needs_quantize, align 4
  br label %sw.epilog.60

sw.bb.57:                                         ; preds = %sw.bb.50
  br label %sw.default.58

sw.default.58:                                    ; preds = %sw.bb.50, %sw.bb.57
  %47 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %first_pass59 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %47, i32 0, i32 0
  store void (%struct._QuantizeObj*)* @monopal_pass1, void (%struct._QuantizeObj*)** %first_pass59, align 8
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %sw.default.58, %sw.bb.55, %sw.bb.53, %sw.bb.51
  %48 = load i32, i32* %dither_type.addr, align 4
  switch i32 %48, label %sw.epilog.78 [
    i32 0, label %sw.bb.61
    i32 1, label %sw.bb.64
    i32 2, label %sw.bb.68
    i32 4, label %sw.bb.72
    i32 3, label %sw.bb.75
  ]

sw.bb.61:                                         ; preds = %sw.epilog.60
  %49 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init62 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %49, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init62, align 8
  %50 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass63 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %50, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_no_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass63, align 8
  br label %sw.epilog.78

sw.bb.64:                                         ; preds = %sw.epilog.60
  %51 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom65 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %51, i32 0, i32 11
  store i32 0, i32* %error_freedom65, align 4
  %52 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init66 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %52, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init66, align 8
  %53 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass67 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %53, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass67, align 8
  br label %sw.epilog.78

sw.bb.68:                                         ; preds = %sw.epilog.60
  %54 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %error_freedom69 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %54, i32 0, i32 11
  store i32 1, i32* %error_freedom69, align 4
  %55 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init70 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %55, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init70, align 8
  %56 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass71 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %56, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fs_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass71, align 8
  br label %sw.epilog.78

sw.bb.72:                                         ; preds = %sw.epilog.60
  %57 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init73 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %57, i32 0, i32 1
  store void (%struct._QuantizeObj*)* null, void (%struct._QuantizeObj*)** %second_pass_init73, align 8
  %58 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass74 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %58, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_nodestruct_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass74, align 8
  br label %sw.epilog.78

sw.bb.75:                                         ; preds = %sw.epilog.60
  %59 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass_init76 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %59, i32 0, i32 1
  store void (%struct._QuantizeObj*)* @median_cut_pass2_rgb_init, void (%struct._QuantizeObj*)** %second_pass_init76, align 8
  %60 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %second_pass77 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %60, i32 0, i32 2
  store void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)* @median_cut_pass2_fixed_dither_rgb, void (%struct._QuantizeObj*, %struct._GimpLayer*, %struct._TileManager*)** %second_pass77, align 8
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %sw.epilog.60, %sw.bb.75, %sw.bb.72, %sw.bb.68, %sw.bb.64, %sw.bb.61
  br label %sw.epilog.80

sw.default.79:                                    ; preds = %if.end
  br label %sw.epilog.80

sw.epilog.80:                                     ; preds = %sw.default.79, %sw.epilog.78, %if.end.49
  %61 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  %delete_func = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %61, i32 0, i32 3
  store void (%struct._QuantizeObj*)* @delete_median_cut, void (%struct._QuantizeObj*)** %delete_func, align 8
  %62 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj, align 8
  ret %struct._QuantizeObj* %62
}

; Function Attrs: nounwind uwtable
define internal void @zero_histogram_gray(i64* %histogram) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  store i64* %histogram, i64** %histogram.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i64*, i64** %histogram.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zero_histogram_rgb(i64* %histogram) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  %0 = load i64*, i64** %histogram.addr, align 8
  %1 = bitcast i64* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8388608, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_histogram_gray(i64* %histogram, %struct._GimpLayer* %layer, i32 %alpha_dither) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %alpha_dither.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %alpha_dither, i32* %alpha_dither.addr, align 4
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %2)
  store i32 %call2, i32* %has_alpha, align 4
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %call5 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %5)
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_get_width(%struct._GimpItem* %8)
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_height(%struct._GimpItem* %11)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call5, i32 0, i32 0, i32 %call8, i32 %call11, i32 0)
  %call12 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %srcPR)
  %12 = bitcast %struct._PixelRegionIterator* %call12 to i8*
  store i8* %12, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %data13 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %14 = load i8*, i8** %data13, align 8
  store i8* %14, i8** %data, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %15 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %16 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %15, %16
  store i32 %mul, i32* %size, align 4
  %17 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %18 = load i32, i32* %size, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %size, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp15 = icmp sgt i32 %conv, 127
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %while.body
  %21 = load i8*, i8** %data, align 8
  %22 = load i8, i8* %21, align 1
  %idxprom = zext i8 %22 to i64
  %23 = load i64*, i64** %histogram.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %23, i64 %idxprom
  %24 = load i64, i64* %arrayidx18, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %while.body
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %25 = load i32, i32* %bytes, align 4
  %26 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.30

if.else:                                          ; preds = %for.body
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.22, %if.else
  %27 = load i32, i32* %size, align 4
  %dec20 = add nsw i32 %27, -1
  store i32 %dec20, i32* %size, align 4
  %tobool21 = icmp ne i32 %27, 0
  br i1 %tobool21, label %while.body.22, label %while.end.29

while.body.22:                                    ; preds = %while.cond.19
  %28 = load i8*, i8** %data, align 8
  %29 = load i8, i8* %28, align 1
  %idxprom23 = zext i8 %29 to i64
  %30 = load i64*, i64** %histogram.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %30, i64 %idxprom23
  %31 = load i64, i64* %arrayidx24, align 8
  %inc25 = add i64 %31, 1
  store i64 %inc25, i64* %arrayidx24, align 8
  %bytes26 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %32 = load i32, i32* %bytes26, align 4
  %33 = load i8*, i8** %data, align 8
  %idx.ext27 = sext i32 %32 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %33, i64 %idx.ext27
  store i8* %add.ptr28, i8** %data, align 8
  br label %while.cond.19

while.end.29:                                     ; preds = %while.cond.19
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %34 = load i8*, i8** %pr, align 8
  %35 = bitcast i8* %34 to %struct._PixelRegionIterator*
  %call31 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %35)
  %36 = bitcast %struct._PixelRegionIterator* %call31 to i8*
  store i8* %36, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_histogram_rgb(i64* %histogram, %struct._GimpLayer* %layer, i32 %col_limit, i32 %alpha_dither, %struct._GimpProgress* %progress, i32 %nth_layer, i32 %n_layers) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %col_limit.addr = alloca i32, align 4
  %alpha_dither.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %nth_layer.addr = alloca i32, align 4
  %n_layers.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %colfreq = alloca i64*, align 8
  %nfc_iter = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %coledge = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %layer_size = alloca i64, align 8
  %total_size = alloca i64, align 8
  %count = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %transparent = alloca i32, align 4
  %transparent100 = alloca i32, align 4
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %col_limit, i32* %col_limit.addr, align 4
  store i32 %alpha_dither, i32* %alpha_dither.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %nth_layer, i32* %nth_layer.addr, align 4
  store i32 %n_layers, i32* %n_layers.addr, align 4
  store i64 0, i64* %total_size, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %2)
  store i32 %call2, i32* %has_alpha, align 4
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %5, i32* %offsetx, i32* %offsety)
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %8)
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_height(%struct._GimpItem* %14)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call7, i32 0, i32 0, i32 %call10, i32 %call13, i32 0)
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  %mul = mul nsw i32 %call16, %call19
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %layer_size, align 8
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool = icmp ne %struct._GimpProgress* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %22, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call20 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %srcPR)
  %23 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %23, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.219, %if.end
  %24 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %24, null
  br i1 %cmp, label %for.body, label %for.end.222

for.body:                                         ; preds = %for.cond
  %data22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %25 = load i8*, i8** %data22, align 8
  store i8* %25, i8** %data, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %26 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %27 = load i32, i32* %h, align 4
  %mul23 = mul nsw i32 %26, %27
  store i32 %mul23, i32* %size, align 4
  %28 = load i32, i32* %size, align 4
  %conv24 = sext i32 %28 to i64
  %29 = load i64, i64* %total_size, align 8
  %add = add nsw i64 %29, %conv24
  store i64 %add, i64* %total_size, align 8
  %30 = load i32, i32* @needs_quantize, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %if.then.26, label %if.else.89

if.then.26:                                       ; preds = %for.body
  %31 = load i32, i32* %alpha_dither.addr, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.26
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %offsetx, align 4
  %add29 = add nsw i32 %32, %33
  store i32 %add29, i32* %col, align 4
  %34 = load i32, i32* %col, align 4
  %w30 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %35 = load i32, i32* %w30, align 4
  %add31 = add nsw i32 %34, %35
  store i32 %add31, i32* %coledge, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %offsety, align 4
  %add32 = add nsw i32 %36, %37
  store i32 %add32, i32* %row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.then.28
  %38 = load i32, i32* %size, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %size, align 4
  %tobool33 = icmp ne i32 %38, 0
  br i1 %tobool33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %transparent, align 4
  %39 = load i32, i32* %has_alpha, align 4
  %tobool34 = icmp ne i32 %39, 0
  br i1 %tobool34, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %while.body
  %40 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx, align 1
  %conv35 = zext i8 %41 to i32
  %42 = load i32, i32* %row, align 4
  %and = and i32 %42, 31
  %idxprom = sext i32 %and to i64
  %43 = load i32, i32* %col, align 4
  %and36 = and i32 %43, 31
  %idxprom37 = sext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx38, i32 0, i64 %idxprom
  %44 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %44 to i32
  %cmp41 = icmp slt i32 %conv35, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  store i32 1, i32* %transparent, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true, %while.body
  %45 = load i32, i32* %transparent, align 4
  %tobool45 = icmp ne i32 %45, 0
  br i1 %tobool45, label %if.end.54, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  %46 = load i64*, i64** %histogram.addr, align 8
  %47 = load i8*, i8** %data, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %48 to i32
  %49 = load i8*, i8** %data, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %50 to i32
  %51 = load i8*, i8** %data, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %52 to i32
  %call53 = call i64* @HIST_RGB(i64* %46, i32 %conv48, i32 %conv50, i32 %conv52)
  store i64* %call53, i64** %colfreq, align 8
  %53 = load i64*, i64** %colfreq, align 8
  %54 = load i64, i64* %53, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %if.end.44
  %55 = load i32, i32* %col, align 4
  %inc55 = add nsw i32 %55, 1
  store i32 %inc55, i32* %col, align 4
  %56 = load i32, i32* %col, align 4
  %57 = load i32, i32* %coledge, align 4
  %cmp56 = icmp eq i32 %56, %57
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.54
  %x59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %58 = load i32, i32* %x59, align 4
  %59 = load i32, i32* %offsetx, align 4
  %add60 = add nsw i32 %58, %59
  store i32 %add60, i32* %col, align 4
  %60 = load i32, i32* %row, align 4
  %inc61 = add nsw i32 %60, 1
  store i32 %inc61, i32* %row, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.54
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %61 = load i32, i32* %bytes, align 4
  %62 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.88

if.else:                                          ; preds = %if.then.26
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.83, %if.else
  %63 = load i32, i32* %size, align 4
  %dec64 = add nsw i32 %63, -1
  store i32 %dec64, i32* %size, align 4
  %tobool65 = icmp ne i32 %63, 0
  br i1 %tobool65, label %while.body.66, label %while.end.87

while.body.66:                                    ; preds = %while.cond.63
  %64 = load i32, i32* %has_alpha, align 4
  %tobool67 = icmp ne i32 %64, 0
  br i1 %tobool67, label %land.lhs.true.68, label %lor.lhs.false

land.lhs.true.68:                                 ; preds = %while.body.66
  %65 = load i8*, i8** %data, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %66 to i32
  %cmp71 = icmp sgt i32 %conv70, 127
  br i1 %cmp71, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.68, %while.body.66
  %67 = load i32, i32* %has_alpha, align 4
  %tobool73 = icmp ne i32 %67, 0
  br i1 %tobool73, label %if.end.83, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false, %land.lhs.true.68
  %68 = load i64*, i64** %histogram.addr, align 8
  %69 = load i8*, i8** %data, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %70 to i32
  %71 = load i8*, i8** %data, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %72 to i32
  %73 = load i8*, i8** %data, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %73, i64 2
  %74 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %74 to i32
  %call81 = call i64* @HIST_RGB(i64* %68, i32 %conv76, i32 %conv78, i32 %conv80)
  store i64* %call81, i64** %colfreq, align 8
  %75 = load i64*, i64** %colfreq, align 8
  %76 = load i64, i64* %75, align 8
  %inc82 = add i64 %76, 1
  store i64 %inc82, i64* %75, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.74, %lor.lhs.false
  %bytes84 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %77 = load i32, i32* %bytes84, align 4
  %78 = load i8*, i8** %data, align 8
  %idx.ext85 = sext i32 %77 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %78, i64 %idx.ext85
  store i8* %add.ptr86, i8** %data, align 8
  br label %while.cond.63

while.end.87:                                     ; preds = %while.cond.63
  br label %if.end.88

if.end.88:                                        ; preds = %while.end.87, %while.end
  br label %if.end.206

if.else.89:                                       ; preds = %for.body
  %x90 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %79 = load i32, i32* %x90, align 4
  %80 = load i32, i32* %offsetx, align 4
  %add91 = add nsw i32 %79, %80
  store i32 %add91, i32* %col, align 4
  %81 = load i32, i32* %col, align 4
  %w92 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %82 = load i32, i32* %w92, align 4
  %add93 = add nsw i32 %81, %82
  store i32 %add93, i32* %coledge, align 4
  %y94 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %83 = load i32, i32* %y94, align 4
  %84 = load i32, i32* %offsety, align 4
  %add95 = add nsw i32 %83, %84
  store i32 %add95, i32* %row, align 4
  br label %while.cond.96

while.cond.96:                                    ; preds = %if.end.201, %if.else.89
  %85 = load i32, i32* %size, align 4
  %dec97 = add nsw i32 %85, -1
  store i32 %dec97, i32* %size, align 4
  %tobool98 = icmp ne i32 %85, 0
  br i1 %tobool98, label %while.body.99, label %while.end.205

while.body.99:                                    ; preds = %while.cond.96
  store i32 0, i32* %transparent100, align 4
  %86 = load i32, i32* %has_alpha, align 4
  %tobool101 = icmp ne i32 %86, 0
  br i1 %tobool101, label %if.then.102, label %if.end.126

if.then.102:                                      ; preds = %while.body.99
  %87 = load i32, i32* %alpha_dither.addr, align 4
  %tobool103 = icmp ne i32 %87, 0
  br i1 %tobool103, label %if.then.104, label %if.else.118

if.then.104:                                      ; preds = %if.then.102
  %88 = load i8*, i8** %data, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %89 to i32
  %90 = load i32, i32* %row, align 4
  %and107 = and i32 %90, 31
  %idxprom108 = sext i32 %and107 to i64
  %91 = load i32, i32* %col, align 4
  %and109 = and i32 %91, 31
  %idxprom110 = sext i32 %and109 to i64
  %arrayidx111 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx111, i32 0, i64 %idxprom108
  %92 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %92 to i32
  %cmp114 = icmp slt i32 %conv106, %conv113
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.104
  store i32 1, i32* %transparent100, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.then.104
  br label %if.end.125

if.else.118:                                      ; preds = %if.then.102
  %93 = load i8*, i8** %data, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %93, i64 3
  %94 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %94 to i32
  %cmp121 = icmp sle i32 %conv120, 127
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.else.118
  store i32 1, i32* %transparent100, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.else.118
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.117
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %while.body.99
  %95 = load i32, i32* %transparent100, align 4
  %tobool127 = icmp ne i32 %95, 0
  br i1 %tobool127, label %if.end.193, label %if.then.128

if.then.128:                                      ; preds = %if.end.126
  %96 = load i64*, i64** %histogram.addr, align 8
  %97 = load i8*, i8** %data, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %98 to i32
  %99 = load i8*, i8** %data, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %100 to i32
  %101 = load i8*, i8** %data, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %102 to i32
  %call135 = call i64* @HIST_RGB(i64* %96, i32 %conv130, i32 %conv132, i32 %conv134)
  store i64* %call135, i64** %colfreq, align 8
  %103 = load i64*, i64** %colfreq, align 8
  %104 = load i64, i64* %103, align 8
  %inc136 = add i64 %104, 1
  store i64 %inc136, i64* %103, align 8
  %105 = load i32, i32* @needs_quantize, align 4
  %tobool137 = icmp ne i32 %105, 0
  br i1 %tobool137, label %if.end.192, label %if.then.138

if.then.138:                                      ; preds = %if.then.128
  store i32 0, i32* %nfc_iter, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc, %if.then.138
  %106 = load i32, i32* %nfc_iter, align 4
  %107 = load i32, i32* @num_found_cols, align 4
  %cmp140 = icmp slt i32 %106, %107
  br i1 %cmp140, label %for.body.142, label %for.end

for.body.142:                                     ; preds = %for.cond.139
  %108 = load i8*, i8** %data, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %109 to i32
  %110 = load i32, i32* %nfc_iter, align 4
  %idxprom145 = sext i32 %110 to i64
  %arrayidx146 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx146, i32 0, i64 0
  %111 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %111 to i32
  %cmp149 = icmp eq i32 %conv144, %conv148
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.170

land.lhs.true.151:                                ; preds = %for.body.142
  %112 = load i8*, i8** %data, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %113 to i32
  %114 = load i32, i32* %nfc_iter, align 4
  %idxprom154 = sext i32 %114 to i64
  %arrayidx155 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx155, i32 0, i64 1
  %115 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %115 to i32
  %cmp158 = icmp eq i32 %conv153, %conv157
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.170

land.lhs.true.160:                                ; preds = %land.lhs.true.151
  %116 = load i8*, i8** %data, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %116, i64 2
  %117 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %117 to i32
  %118 = load i32, i32* %nfc_iter, align 4
  %idxprom163 = sext i32 %118 to i64
  %arrayidx164 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx164, i32 0, i64 2
  %119 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %119 to i32
  %cmp167 = icmp eq i32 %conv162, %conv166
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.160
  br label %already_found

if.end.170:                                       ; preds = %land.lhs.true.160, %land.lhs.true.151, %for.body.142
  br label %for.inc

for.inc:                                          ; preds = %if.end.170
  %120 = load i32, i32* %nfc_iter, align 4
  %inc171 = add nsw i32 %120, 1
  store i32 %inc171, i32* %nfc_iter, align 4
  br label %for.cond.139

for.end:                                          ; preds = %for.cond.139
  %121 = load i32, i32* @num_found_cols, align 4
  %inc172 = add nsw i32 %121, 1
  store i32 %inc172, i32* @num_found_cols, align 4
  %122 = load i32, i32* @num_found_cols, align 4
  %123 = load i32, i32* %col_limit.addr, align 4
  %cmp173 = icmp sgt i32 %122, %123
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %for.end
  store i32 1, i32* @needs_quantize, align 4
  br label %already_found

if.else.176:                                      ; preds = %for.end
  %124 = load i8*, i8** %data, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx177, align 1
  %126 = load i32, i32* @num_found_cols, align 4
  %sub = sub nsw i32 %126, 1
  %idxprom178 = sext i32 %sub to i64
  %arrayidx179 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx179, i32 0, i64 0
  store i8 %125, i8* %arrayidx180, align 1
  %127 = load i8*, i8** %data, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i8, i8* %arrayidx181, align 1
  %129 = load i32, i32* @num_found_cols, align 4
  %sub182 = sub nsw i32 %129, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom183
  %arrayidx185 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx184, i32 0, i64 1
  store i8 %128, i8* %arrayidx185, align 1
  %130 = load i8*, i8** %data, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx186, align 1
  %132 = load i32, i32* @num_found_cols, align 4
  %sub187 = sub nsw i32 %132, 1
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* @found_cols, i32 0, i64 %idxprom188
  %arrayidx190 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx189, i32 0, i64 2
  store i8 %131, i8* %arrayidx190, align 1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.176
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.128
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.126
  br label %already_found

already_found:                                    ; preds = %if.end.193, %if.then.175, %if.then.169
  %133 = load i32, i32* %col, align 4
  %inc194 = add nsw i32 %133, 1
  store i32 %inc194, i32* %col, align 4
  %134 = load i32, i32* %col, align 4
  %135 = load i32, i32* %coledge, align 4
  %cmp195 = icmp eq i32 %134, %135
  br i1 %cmp195, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %already_found
  %x198 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %136 = load i32, i32* %x198, align 4
  %137 = load i32, i32* %offsetx, align 4
  %add199 = add nsw i32 %136, %137
  store i32 %add199, i32* %col, align 4
  %138 = load i32, i32* %row, align 4
  %inc200 = add nsw i32 %138, 1
  store i32 %inc200, i32* %row, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %already_found
  %bytes202 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %139 = load i32, i32* %bytes202, align 4
  %140 = load i8*, i8** %data, align 8
  %idx.ext203 = sext i32 %139 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %140, i64 %idx.ext203
  store i8* %add.ptr204, i8** %data, align 8
  br label %while.cond.96

while.end.205:                                    ; preds = %while.cond.96
  br label %if.end.206

if.end.206:                                       ; preds = %while.end.205, %if.end.88
  %141 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool207 = icmp ne %struct._GimpProgress* %141, null
  br i1 %tobool207, label %land.lhs.true.208, label %if.end.218

land.lhs.true.208:                                ; preds = %if.end.206
  %142 = load i32, i32* %count, align 4
  %rem = srem i32 %142, 16
  %cmp209 = icmp eq i32 %rem, 0
  br i1 %cmp209, label %if.then.211, label %if.end.218

if.then.211:                                      ; preds = %land.lhs.true.208
  %143 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %144 = load i32, i32* %nth_layer.addr, align 4
  %conv212 = sitofp i32 %144 to double
  %145 = load i64, i64* %total_size, align 8
  %conv213 = sitofp i64 %145 to double
  %146 = load i64, i64* %layer_size, align 8
  %conv214 = sitofp i64 %146 to double
  %div = fdiv double %conv213, %conv214
  %add215 = fadd double %conv212, %div
  %147 = load i32, i32* %n_layers.addr, align 4
  %conv216 = sitofp i32 %147 to double
  %div217 = fdiv double %add215, %conv216
  call void @gimp_progress_set_value(%struct._GimpProgress* %143, double %div217)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.211, %land.lhs.true.208, %if.end.206
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %148 = load i8*, i8** %pr, align 8
  %149 = bitcast i8* %148 to %struct._PixelRegionIterator*
  %call220 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %149)
  %150 = bitcast %struct._PixelRegionIterator* %call220 to i8*
  store i8* %150, i8** %pr, align 8
  %151 = load i32, i32* %count, align 4
  %inc221 = add nsw i32 %151, 1
  store i32 %inc221, i32* %count, align 4
  br label %for.cond

for.end.222:                                      ; preds = %for.cond
  ret void
}

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #3

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @color_quicksort(i8* %c1, i8* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i8*, align 8
  %c2.addr = alloca i8*, align 8
  %color1 = alloca %struct._Color*, align 8
  %color2 = alloca %struct._Color*, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  store i8* %c1, i8** %c1.addr, align 8
  store i8* %c2, i8** %c2.addr, align 8
  %0 = load i8*, i8** %c1.addr, align 8
  %1 = bitcast i8* %0 to %struct._Color*
  store %struct._Color* %1, %struct._Color** %color1, align 8
  %2 = load i8*, i8** %c2.addr, align 8
  %3 = bitcast i8* %2 to %struct._Color*
  store %struct._Color* %3, %struct._Color** %color2, align 8
  %4 = load %struct._Color*, %struct._Color** %color1, align 8
  %red = getelementptr inbounds %struct._Color, %struct._Color* %4, i32 0, i32 0
  %5 = load i32, i32* %red, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 2.126000e-01
  %6 = load %struct._Color*, %struct._Color** %color1, align 8
  %green = getelementptr inbounds %struct._Color, %struct._Color* %6, i32 0, i32 1
  %7 = load i32, i32* %green, align 4
  %conv1 = sitofp i32 %7 to double
  %mul2 = fmul double %conv1, 7.152000e-01
  %add = fadd double %mul, %mul2
  %8 = load %struct._Color*, %struct._Color** %color1, align 8
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %8, i32 0, i32 2
  %9 = load i32, i32* %blue, align 4
  %conv3 = sitofp i32 %9 to double
  %mul4 = fmul double %conv3, 7.220000e-02
  %add5 = fadd double %add, %mul4
  store double %add5, double* %v1, align 8
  %10 = load %struct._Color*, %struct._Color** %color2, align 8
  %red6 = getelementptr inbounds %struct._Color, %struct._Color* %10, i32 0, i32 0
  %11 = load i32, i32* %red6, align 4
  %conv7 = sitofp i32 %11 to double
  %mul8 = fmul double %conv7, 2.126000e-01
  %12 = load %struct._Color*, %struct._Color** %color2, align 8
  %green9 = getelementptr inbounds %struct._Color, %struct._Color* %12, i32 0, i32 1
  %13 = load i32, i32* %green9, align 4
  %conv10 = sitofp i32 %13 to double
  %mul11 = fmul double %conv10, 7.152000e-01
  %add12 = fadd double %mul8, %mul11
  %14 = load %struct._Color*, %struct._Color** %color2, align 8
  %blue13 = getelementptr inbounds %struct._Color, %struct._Color* %14, i32 0, i32 2
  %15 = load i32, i32* %blue13, align 4
  %conv14 = sitofp i32 %15 to double
  %mul15 = fmul double %conv14, 7.220000e-02
  %add16 = fadd double %add12, %mul15
  store double %add16, double* %v2, align 8
  %16 = load double, double* %v1, align 8
  %17 = load double, double* %v2, align 8
  %cmp = fcmp olt double %16, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %18 = load double, double* %v1, align 8
  %19 = load double, double* %v2, align 8
  %cmp18 = fcmp ogt double %18, %19
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.21:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.21, %if.then.20, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gimp_drawable_convert_type(%struct._GimpDrawable*, %struct._GimpImage*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

declare void @gimp_image_unset_colormap(%struct._GimpImage*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @make_remap_table(i8* %old_palette, i8* %new_palette, i64* %index_used_count, i8* %remap_table, i32* %num_entries) #0 {
entry:
  %old_palette.addr = alloca i8*, align 8
  %new_palette.addr = alloca i8*, align 8
  %index_used_count.addr = alloca i64*, align 8
  %remap_table.addr = alloca i8*, align 8
  %num_entries.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temppal = alloca [768 x i8], align 16
  %tempuse = alloca [256 x i64], align 16
  %transmap = alloca [256 x i64], align 16
  %palentries = alloca %struct.palentryStruct*, align 8
  %used = alloca i32, align 4
  store i8* %old_palette, i8** %old_palette.addr, align 8
  store i8* %new_palette, i8** %new_palette.addr, align 8
  store i64* %index_used_count, i64** %index_used_count.addr, align 8
  store i8* %remap_table, i8** %remap_table.addr, align 8
  store i32* %num_entries, i32** %num_entries.addr, align 8
  store i32 0, i32* %used, align 4
  %0 = bitcast [768 x i8]* %temppal to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 768, i32 16, i1 false)
  %1 = bitcast [256 x i64]* %tempuse to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 2048, i32 16, i1 false)
  %2 = bitcast [256 x i64]* %transmap to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 -1, i64 2048, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %num_entries.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i64*, i64** %index_used_count.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 3
  %add = add nsw i32 %mul, 0
  %idxprom1 = sext i32 %add to i64
  %10 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1
  %12 = load i32, i32* %used, align 4
  %mul3 = mul nsw i32 %12, 3
  %add4 = add nsw i32 %mul3, 0
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom5
  store i8 %11, i8* %arrayidx6, align 1
  %13 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %13, 3
  %add8 = add nsw i32 %mul7, 1
  %idxprom9 = sext i32 %add8 to i64
  %14 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %16 = load i32, i32* %used, align 4
  %mul11 = mul nsw i32 %16, 3
  %add12 = add nsw i32 %mul11, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom13
  store i8 %15, i8* %arrayidx14, align 1
  %17 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %17, 3
  %add16 = add nsw i32 %mul15, 2
  %idxprom17 = sext i32 %add16 to i64
  %18 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 %idxprom17
  %19 = load i8, i8* %arrayidx18, align 1
  %20 = load i32, i32* %used, align 4
  %mul19 = mul nsw i32 %20, 3
  %add20 = add nsw i32 %mul19, 2
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom21
  store i8 %19, i8* %arrayidx22, align 1
  %21 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load i64*, i64** %index_used_count.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %22, i64 %idxprom23
  %23 = load i64, i64* %arrayidx24, align 8
  %24 = load i32, i32* %used, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom25
  store i64 %23, i64* %arrayidx26, align 8
  %25 = load i32, i32* %used, align 4
  %conv = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i64], [256 x i64]* %transmap, i32 0, i64 %idxprom27
  store i64 %conv, i64* %arrayidx28, align 8
  %27 = load i32, i32* %used, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.116, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %used, align 4
  %cmp31 = icmp slt i32 %29, %30
  br i1 %cmp31, label %for.body.33, label %for.end.118

for.body.33:                                      ; preds = %for.cond.30
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.113, %for.body.33
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %31, %32
  br i1 %cmp35, label %for.body.37, label %for.end.115

for.body.37:                                      ; preds = %for.cond.34
  %33 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 %33, 3
  %add39 = add nsw i32 %mul38, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom40
  %34 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %35 = load i32, i32* %j, align 4
  %mul43 = mul nsw i32 %35, 3
  %add44 = add nsw i32 %mul43, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom45
  %36 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %36 to i32
  %cmp48 = icmp eq i32 %conv42, %conv47
  br i1 %cmp48, label %land.lhs.true, label %if.end.112

land.lhs.true:                                    ; preds = %for.body.37
  %37 = load i32, i32* %i, align 4
  %mul50 = mul nsw i32 %37, 3
  %add51 = add nsw i32 %mul50, 0
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom52
  %38 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %38 to i32
  %39 = load i32, i32* %j, align 4
  %mul55 = mul nsw i32 %39, 3
  %add56 = add nsw i32 %mul55, 0
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom57
  %40 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %40 to i32
  %cmp60 = icmp eq i32 %conv54, %conv59
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.112

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %41 = load i32, i32* %i, align 4
  %mul63 = mul nsw i32 %41, 3
  %add64 = add nsw i32 %mul63, 2
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom65
  %42 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %42 to i32
  %43 = load i32, i32* %j, align 4
  %mul68 = mul nsw i32 %43, 3
  %add69 = add nsw i32 %mul68, 2
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [768 x i8], [768 x i8]* %temppal, i32 0, i64 %idxprom70
  %44 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %44 to i32
  %cmp73 = icmp eq i32 %conv67, %conv72
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.112

land.lhs.true.75:                                 ; preds = %land.lhs.true.62
  %45 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom76
  %46 = load i64, i64* %arrayidx77, align 8
  %tobool78 = icmp ne i64 %46, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.112

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %47 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %47 to i64
  %arrayidx81 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom80
  %48 = load i64, i64* %arrayidx81, align 8
  %tobool82 = icmp ne i64 %48, 0
  br i1 %tobool82, label %if.then.83, label %if.end.112

if.then.83:                                       ; preds = %land.lhs.true.79
  %49 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %49 to i64
  %arrayidx85 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom84
  %50 = load i64, i64* %arrayidx85, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %51 to i64
  %arrayidx87 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom86
  %52 = load i64, i64* %arrayidx87, align 8
  %add88 = add i64 %52, %50
  store i64 %add88, i64* %arrayidx87, align 8
  %53 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %53 to i64
  %arrayidx90 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom89
  store i64 0, i64* %arrayidx90, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.109, %if.then.83
  %54 = load i32, i32* %k, align 4
  %55 = load i32*, i32** %num_entries.addr, align 8
  %56 = load i32, i32* %55, align 4
  %cmp92 = icmp slt i32 %54, %56
  br i1 %cmp92, label %for.body.94, label %for.end.111

for.body.94:                                      ; preds = %for.cond.91
  %57 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %57 to i64
  %58 = load i64*, i64** %index_used_count.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %58, i64 %idxprom95
  %59 = load i64, i64* %arrayidx96, align 8
  %tobool97 = icmp ne i64 %59, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.108

land.lhs.true.98:                                 ; preds = %for.body.94
  %60 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %60 to i64
  %arrayidx100 = getelementptr inbounds [256 x i64], [256 x i64]* %transmap, i32 0, i64 %idxprom99
  %61 = load i64, i64* %arrayidx100, align 8
  %62 = load i32, i32* %j, align 4
  %conv101 = sext i32 %62 to i64
  %cmp102 = icmp eq i64 %61, %conv101
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %land.lhs.true.98
  %63 = load i32, i32* %i, align 4
  %conv105 = sext i32 %63 to i64
  %64 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %64 to i64
  %arrayidx107 = getelementptr inbounds [256 x i64], [256 x i64]* %transmap, i32 0, i64 %idxprom106
  store i64 %conv105, i64* %arrayidx107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %land.lhs.true.98, %for.body.94
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %65 = load i32, i32* %k, align 4
  %inc110 = add nsw i32 %65, 1
  store i32 %inc110, i32* %k, align 4
  br label %for.cond.91

for.end.111:                                      ; preds = %for.cond.91
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %land.lhs.true.79, %land.lhs.true.75, %land.lhs.true.62, %land.lhs.true, %for.body.37
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %66 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %66, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.34

for.end.115:                                      ; preds = %for.cond.34
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %67 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %67, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.30

for.end.118:                                      ; preds = %for.cond.30
  %68 = load i32, i32* %used, align 4
  %conv119 = sext i32 %68 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv119, i64 16)
  %69 = bitcast i8* %call to %struct.palentryStruct*
  store %struct.palentryStruct* %69, %struct.palentryStruct** %palentries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.131, %for.end.118
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %used, align 4
  %cmp121 = icmp slt i32 %70, %71
  br i1 %cmp121, label %for.body.123, label %for.end.133

for.body.123:                                     ; preds = %for.cond.120
  %72 = load i32, i32* %i, align 4
  %conv124 = trunc i32 %72 to i8
  %73 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %73 to i64
  %74 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %arrayidx126 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %74, i64 %idxprom125
  %initial_index = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %arrayidx126, i32 0, i32 1
  store i8 %conv124, i8* %initial_index, align 1
  %75 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %75 to i64
  %arrayidx128 = getelementptr inbounds [256 x i64], [256 x i64]* %tempuse, i32 0, i64 %idxprom127
  %76 = load i64, i64* %arrayidx128, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %77 to i64
  %78 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %arrayidx130 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %78, i64 %idxprom129
  %used_count = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %arrayidx130, i32 0, i32 0
  store i64 %76, i64* %used_count, align 8
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.123
  %79 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %79, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.120

for.end.133:                                      ; preds = %for.cond.120
  %80 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %81 = bitcast %struct.palentryStruct* %80 to i8*
  %82 = load i32, i32* %used, align 4
  %conv134 = sext i32 %82 to i64
  call void @qsort(i8* %81, i64 %conv134, i64 16, i32 (i8*, i8*)* @mapping_compare)
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.169, %for.end.133
  %83 = load i32, i32* %i, align 4
  %84 = load i32*, i32** %num_entries.addr, align 8
  %85 = load i32, i32* %84, align 4
  %cmp136 = icmp slt i32 %83, %85
  br i1 %cmp136, label %for.body.138, label %for.end.171

for.body.138:                                     ; preds = %for.cond.135
  %86 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %86 to i64
  %87 = load i64*, i64** %index_used_count.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, i64* %87, i64 %idxprom139
  %88 = load i64, i64* %arrayidx140, align 8
  %tobool141 = icmp ne i64 %88, 0
  br i1 %tobool141, label %if.then.142, label %if.end.168

if.then.142:                                      ; preds = %for.body.138
  store i32 0, i32* %j, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.165, %if.then.142
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %used, align 4
  %cmp144 = icmp slt i32 %89, %90
  br i1 %cmp144, label %for.body.146, label %for.end.167

for.body.146:                                     ; preds = %for.cond.143
  %91 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %91 to i64
  %arrayidx148 = getelementptr inbounds [256 x i64], [256 x i64]* %transmap, i32 0, i64 %idxprom147
  %92 = load i64, i64* %arrayidx148, align 8
  %93 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %93 to i64
  %94 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %arrayidx150 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %94, i64 %idxprom149
  %initial_index151 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %arrayidx150, i32 0, i32 1
  %95 = load i8, i8* %initial_index151, align 1
  %conv152 = zext i8 %95 to i64
  %cmp153 = icmp eq i64 %92, %conv152
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.164

land.lhs.true.155:                                ; preds = %for.body.146
  %96 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %96 to i64
  %97 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %arrayidx157 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %97, i64 %idxprom156
  %used_count158 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %arrayidx157, i32 0, i32 0
  %98 = load i64, i64* %used_count158, align 8
  %tobool159 = icmp ne i64 %98, 0
  br i1 %tobool159, label %if.then.160, label %if.end.164

if.then.160:                                      ; preds = %land.lhs.true.155
  %99 = load i32, i32* %j, align 4
  %conv161 = trunc i32 %99 to i8
  %100 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %100 to i64
  %101 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %101, i64 %idxprom162
  store i8 %conv161, i8* %arrayidx163, align 1
  br label %for.end.167

if.end.164:                                       ; preds = %land.lhs.true.155, %for.body.146
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %102 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %102, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.143

for.end.167:                                      ; preds = %if.then.160, %for.cond.143
  br label %if.end.168

if.end.168:                                       ; preds = %for.end.167, %for.body.138
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %103 = load i32, i32* %i, align 4
  %inc170 = add nsw i32 %103, 1
  store i32 %inc170, i32* %i, align 4
  br label %for.cond.135

for.end.171:                                      ; preds = %for.cond.135
  store i32 0, i32* %i, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.214, %for.end.171
  %104 = load i32, i32* %i, align 4
  %105 = load i32*, i32** %num_entries.addr, align 8
  %106 = load i32, i32* %105, align 4
  %cmp173 = icmp slt i32 %104, %106
  br i1 %cmp173, label %for.body.175, label %for.end.216

for.body.175:                                     ; preds = %for.cond.172
  %107 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %107 to i64
  %108 = load i64*, i64** %index_used_count.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, i64* %108, i64 %idxprom176
  %109 = load i64, i64* %arrayidx177, align 8
  %tobool178 = icmp ne i64 %109, 0
  br i1 %tobool178, label %if.then.179, label %if.end.213

if.then.179:                                      ; preds = %for.body.175
  %110 = load i32, i32* %i, align 4
  %mul180 = mul nsw i32 %110, 3
  %add181 = add nsw i32 %mul180, 0
  %idxprom182 = sext i32 %add181 to i64
  %111 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %111, i64 %idxprom182
  %112 = load i8, i8* %arrayidx183, align 1
  %113 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %113 to i64
  %114 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %114, i64 %idxprom184
  %115 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %115 to i32
  %mul187 = mul nsw i32 %conv186, 3
  %add188 = add nsw i32 %mul187, 0
  %idxprom189 = sext i32 %add188 to i64
  %116 = load i8*, i8** %new_palette.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %116, i64 %idxprom189
  store i8 %112, i8* %arrayidx190, align 1
  %117 = load i32, i32* %i, align 4
  %mul191 = mul nsw i32 %117, 3
  %add192 = add nsw i32 %mul191, 1
  %idxprom193 = sext i32 %add192 to i64
  %118 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %118, i64 %idxprom193
  %119 = load i8, i8* %arrayidx194, align 1
  %120 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %120 to i64
  %121 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %121, i64 %idxprom195
  %122 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %122 to i32
  %mul198 = mul nsw i32 %conv197, 3
  %add199 = add nsw i32 %mul198, 1
  %idxprom200 = sext i32 %add199 to i64
  %123 = load i8*, i8** %new_palette.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %123, i64 %idxprom200
  store i8 %119, i8* %arrayidx201, align 1
  %124 = load i32, i32* %i, align 4
  %mul202 = mul nsw i32 %124, 3
  %add203 = add nsw i32 %mul202, 2
  %idxprom204 = sext i32 %add203 to i64
  %125 = load i8*, i8** %old_palette.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %125, i64 %idxprom204
  %126 = load i8, i8* %arrayidx205, align 1
  %127 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %127 to i64
  %128 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %128, i64 %idxprom206
  %129 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %129 to i32
  %mul209 = mul nsw i32 %conv208, 3
  %add210 = add nsw i32 %mul209, 2
  %idxprom211 = sext i32 %add210 to i64
  %130 = load i8*, i8** %new_palette.addr, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %130, i64 %idxprom211
  store i8 %126, i8* %arrayidx212, align 1
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.179, %for.body.175
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %131 = load i32, i32* %i, align 4
  %inc215 = add nsw i32 %131, 1
  store i32 %inc215, i32* %i, align 4
  br label %for.cond.172

for.end.216:                                      ; preds = %for.cond.172
  %132 = load i32*, i32** %num_entries.addr, align 8
  store i32 0, i32* %132, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.228, %for.end.216
  %133 = load i32, i32* %j, align 4
  %134 = load i32, i32* %used, align 4
  %cmp218 = icmp slt i32 %133, %134
  br i1 %cmp218, label %for.body.220, label %for.end.230

for.body.220:                                     ; preds = %for.cond.217
  %135 = load i32, i32* %j, align 4
  %idxprom221 = sext i32 %135 to i64
  %136 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %arrayidx222 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %136, i64 %idxprom221
  %used_count223 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %arrayidx222, i32 0, i32 0
  %137 = load i64, i64* %used_count223, align 8
  %tobool224 = icmp ne i64 %137, 0
  br i1 %tobool224, label %if.then.225, label %if.end.227

if.then.225:                                      ; preds = %for.body.220
  %138 = load i32*, i32** %num_entries.addr, align 8
  %139 = load i32, i32* %138, align 4
  %inc226 = add nsw i32 %139, 1
  store i32 %inc226, i32* %138, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.225, %for.body.220
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %140 = load i32, i32* %j, align 4
  %inc229 = add nsw i32 %140, 1
  store i32 %inc229, i32* %j, align 4
  br label %for.cond.217

for.end.230:                                      ; preds = %for.cond.217
  %141 = load %struct.palentryStruct*, %struct.palentryStruct** %palentries, align 8
  %142 = bitcast %struct.palentryStruct* %141 to i8*
  call void @g_free(i8* %142)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remap_indexed_layer(%struct._GimpLayer* %layer, i8* %remap_table, i32 %num_entries) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %remap_table.addr = alloca i8*, align 8
  %num_entries.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %pixels = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i8* %remap_table, i8** %remap_table.addr, align 8
  store i32 %num_entries, i32* %num_entries.addr, align 4
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %2)
  store i32 %call2, i32* %has_alpha, align 4
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %call5 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %5)
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_get_width(%struct._GimpItem* %8)
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_height(%struct._GimpItem* %11)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call5, i32 0, i32 0, i32 %call8, i32 %call11, i32 0)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_drawable_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawable*
  %call14 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %14)
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call14, i32 0, i32 0, i32 %call17, i32 %call20, i32 1)
  %call21 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %21 = bitcast %struct._PixelRegionIterator* %call21 to i8*
  store i8* %21, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %22, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  store i8* %23, i8** %src, align 8
  %data22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %24 = load i8*, i8** %data22, align 8
  store i8* %24, i8** %dest, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %25 = load i32, i32* %h, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %26 = load i32, i32* %w, align 4
  %mul = mul nsw i32 %25, %26
  store i32 %mul, i32* %pixels, align 4
  %27 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %28 = load i32, i32* %pixels, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %pixels, align 4
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx, align 1
  %tobool24 = icmp ne i8 %30, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %while.body
  %31 = load i8*, i8** %src, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx26, align 1
  %idxprom = zext i8 %32 to i64
  %33 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx27, align 1
  %35 = load i8*, i8** %dest, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %arrayidx28, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.25, %while.body
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %36 = load i32, i32* %bytes, align 4
  %37 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes29 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %38 = load i32, i32* %bytes29, align 4
  %39 = load i8*, i8** %dest, align 8
  %idx.ext30 = sext i32 %38 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %idx.ext30
  store i8* %add.ptr31, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.47

if.else:                                          ; preds = %for.body
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.35, %if.else
  %40 = load i32, i32* %pixels, align 4
  %dec33 = add nsw i32 %40, -1
  store i32 %dec33, i32* %pixels, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %while.body.35, label %while.end.46

while.body.35:                                    ; preds = %while.cond.32
  %41 = load i8*, i8** %src, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx36, align 1
  %idxprom37 = zext i8 %42 to i64
  %43 = load i8*, i8** %remap_table.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 %idxprom37
  %44 = load i8, i8* %arrayidx38, align 1
  %45 = load i8*, i8** %dest, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %arrayidx39, align 1
  %bytes40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %46 = load i32, i32* %bytes40, align 4
  %47 = load i8*, i8** %src, align 8
  %idx.ext41 = sext i32 %46 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %47, i64 %idx.ext41
  store i8* %add.ptr42, i8** %src, align 8
  %bytes43 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %48 = load i32, i32* %bytes43, align 4
  %49 = load i8*, i8** %dest, align 8
  %idx.ext44 = sext i32 %48 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %49, i64 %idx.ext44
  store i8* %add.ptr45, i8** %dest, align 8
  br label %while.cond.32

while.end.46:                                     ; preds = %while.cond.32
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.46, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %50 = load i8*, i8** %pr, align 8
  %51 = bitcast i8* %50 to %struct._PixelRegionIterator*
  %call48 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %51)
  %52 = bitcast %struct._PixelRegionIterator* %call48 to i8*
  store i8* %52, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #3

declare void @gimp_image_parasite_detach(%struct._GimpImage*, i8*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_image_mode_changed(%struct._GimpImage*) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_convert_set_dither_matrix(i8* %matrix, i32 %width, i32 %height) #0 {
entry:
  %matrix.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %matrix, i8** %matrix.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i8*, i8** %matrix.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([32 x [32 x i8]], [32 x [32 x i8]]* @DM_ORIGINAL, i32 0, i32 0, i32 0), i8** %matrix.addr, align 8
  store i32 32, i32* %width.addr, align 4
  store i32 32, i32* %height.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i32, i32* %width.addr, align 4
  %rem = srem i32 32, %3
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_convert_set_dither_matrix, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %for.end.26

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %4 = load i32, i32* %height.addr, align 4
  %rem8 = srem i32 32, %4
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_convert_set_dither_matrix, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  br label %for.end.26

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %do.end.13
  %5 = load i32, i32* %y, align 4
  %cmp14 = icmp slt i32 %5, 32
  br i1 %cmp14, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %6 = load i32, i32* %x, align 4
  %cmp16 = icmp slt i32 %6, 32
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %width.addr, align 4
  %rem18 = srem i32 %7, %8
  %9 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %rem18, %9
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %height.addr, align 4
  %rem19 = srem i32 %10, %11
  %add = add nsw i32 %mul, %rem19
  %idxprom = sext i32 %add to i64
  %12 = load i8*, i8** %matrix.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %14 = load i32, i32* %y, align 4
  %idxprom20 = sext i32 %14 to i64
  %15 = load i32, i32* %x, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx22, i32 0, i64 %idxprom20
  store i8 %13, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %16 = load i32, i32* %x, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %17 = load i32, i32* %y, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, i32* %y, align 4
  br label %for.cond

for.end.26:                                       ; preds = %if.else, %if.else.11, %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare noalias i8* @g_malloc_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @mapping_compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %m1 = alloca %struct.palentryStruct*, align 8
  %m2 = alloca %struct.palentryStruct*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.palentryStruct*
  store %struct.palentryStruct* %1, %struct.palentryStruct** %m1, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.palentryStruct*
  store %struct.palentryStruct* %3, %struct.palentryStruct** %m2, align 8
  %4 = load %struct.palentryStruct*, %struct.palentryStruct** %m2, align 8
  %used_count = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %4, i32 0, i32 0
  %5 = load i64, i64* %used_count, align 8
  %6 = load %struct.palentryStruct*, %struct.palentryStruct** %m1, align 8
  %used_count1 = getelementptr inbounds %struct.palentryStruct, %struct.palentryStruct* %6, i32 0, i32 0
  %7 = load i64, i64* %used_count1, align 8
  %sub = sub nsw i64 %5, %7
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

declare void @g_free(i8*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64* @HIST_RGB(i64* %hist_ptr, i32 %r, i32 %g, i32 %b) #6 {
entry:
  %hist_ptr.addr = alloca i64*, align 8
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %hr = alloca i32, align 4
  %hg = alloca i32, align 4
  %hb = alloca i32, align 4
  store i64* %hist_ptr, i64** %hist_ptr.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i32, i32* %g.addr, align 4
  %conv1 = trunc i32 %1 to i8
  %2 = load i32, i32* %b.addr, align 4
  %conv2 = trunc i32 %2 to i8
  call void @rgb_to_lin(i8 zeroext %conv, i8 zeroext %conv1, i8 zeroext %conv2, i32* %hr, i32* %hg, i32* %hb)
  %3 = load i64*, i64** %hist_ptr.addr, align 8
  %4 = load i32, i32* %hr, align 4
  %5 = load i32, i32* %hg, align 4
  %6 = load i32, i32* %hb, align 4
  %call = call i64* @HIST_LIN(i64* %3, i32 %4, i32 %5, i32 %6)
  ret i64* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rgb_to_lin(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i32* %hr, i32* %hg, i32* %hb) #6 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %hr.addr = alloca i32*, align 8
  %hg.addr = alloca i32*, align 8
  %hb.addr = alloca i32*, align 8
  %or = alloca i32, align 4
  %og = alloca i32, align 4
  %ob = alloca i32, align 4
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i32* %hr, i32** %hr.addr, align 8
  store i32* %hg, i32** %hg.addr, align 8
  store i32* %hb, i32** %hb.addr, align 8
  %0 = load i8, i8* %r.addr, align 1
  %1 = load i8, i8* %g.addr, align 1
  %2 = load i8, i8* %b.addr, align 1
  call void @rgb_to_unshifted_lin(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i32* %or, i32* %og, i32* %ob)
  %3 = load i32, i32* %or, align 4
  %shr = ashr i32 %3, 0
  store i32 %shr, i32* %or, align 4
  %4 = load i32, i32* %og, align 4
  %shr1 = ashr i32 %4, 2
  store i32 %shr1, i32* %og, align 4
  %5 = load i32, i32* %ob, align 4
  %shr2 = ashr i32 %5, 2
  store i32 %shr2, i32* %ob, align 4
  %6 = load i32, i32* %or, align 4
  %7 = load i32*, i32** %hr.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %og, align 4
  %9 = load i32*, i32** %hg.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %ob, align 4
  %11 = load i32*, i32** %hb.addr, align 8
  store i32 %10, i32* %11, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64* @HIST_LIN(i64* %hist_ptr, i32 %r, i32 %g, i32 %b) #6 {
entry:
  %hist_ptr.addr = alloca i64*, align 8
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i64* %hist_ptr, i64** %hist_ptr.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %and = and i32 %0, 248
  %shl = shl i32 %and, 12
  %1 = load i32, i32* %r.addr, align 4
  %and1 = and i32 %1, 7
  %shl2 = shl i32 %and1, 9
  %or = or i32 %shl, %shl2
  %2 = load i32, i32* %g.addr, align 4
  %and3 = and i32 %2, 56
  %shl4 = shl i32 %and3, 9
  %or5 = or i32 %or, %shl4
  %3 = load i32, i32* %g.addr, align 4
  %and6 = and i32 %3, 7
  %shl7 = shl i32 %and6, 6
  %or8 = or i32 %or5, %shl7
  %4 = load i32, i32* %b.addr, align 4
  %or9 = or i32 %or8, %4
  %idxprom = sext i32 %or9 to i64
  %5 = load i64*, i64** %hist_ptr.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %idxprom
  ret i64* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rgb_to_unshifted_lin(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i32* %hr, i32* %hg, i32* %hb) #6 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %hr.addr = alloca i32*, align 8
  %hg.addr = alloca i32*, align 8
  %hb.addr = alloca i32*, align 8
  %sL = alloca double, align 8
  %sa = alloca double, align 8
  %sb = alloca double, align 8
  %or = alloca i32, align 4
  %og = alloca i32, align 4
  %ob = alloca i32, align 4
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i32* %hr, i32** %hr.addr, align 8
  store i32* %hg, i32** %hg.addr, align 8
  store i32* %hb, i32** %hb.addr, align 8
  %0 = load i8, i8* %r.addr, align 1
  %conv = uitofp i8 %0 to double
  %1 = load i8, i8* %g.addr, align 1
  %conv1 = uitofp i8 %1 to double
  %2 = load i8, i8* %b.addr, align 1
  %conv2 = uitofp i8 %2 to double
  call void @cpercep_rgb_to_space(double %conv, double %conv1, double %conv2, double* %sL, double* %sa, double* %sb)
  %3 = load double, double* %sL, align 8
  %mul = fmul double %3, 0x4004666660000000
  %call = call double @rint(double %mul) #8
  %conv3 = fptosi double %call to i32
  store i32 %conv3, i32* %or, align 4
  %4 = load double, double* %sa, align 8
  %sub = fsub double %4, 0xC0558B9580000000
  %mul4 = fmul double %sub, 0x3FF61FA7C0000000
  %call5 = call double @rint(double %mul4) #8
  %conv6 = fptosi double %call5 to i32
  store i32 %conv6, i32* %og, align 4
  %5 = load double, double* %sb, align 8
  %sub7 = fsub double %5, 0xC05AF6E980000000
  %mul8 = fmul double %sub7, 0x3FF42A0E20000000
  %call9 = call double @rint(double %mul8) #8
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %ob, align 4
  %6 = load i32, i32* %or, align 4
  %cmp = icmp sgt i32 %6, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.16

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %or, align 4
  %cmp12 = icmp slt i32 %7, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %8 = load i32, i32* %or, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi i32 [ 0, %cond.true.14 ], [ %8, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %9 = load i32*, i32** %hr.addr, align 8
  store i32 %cond17, i32* %9, align 4
  %10 = load i32, i32* %og, align 4
  %cmp18 = icmp sgt i32 %10, 255
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.16
  br label %cond.end.28

cond.false.21:                                    ; preds = %cond.end.16
  %11 = load i32, i32* %og, align 4
  %cmp22 = icmp slt i32 %11, 0
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.21
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.false.21
  %12 = load i32, i32* %og, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ 0, %cond.true.24 ], [ %12, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.20
  %cond29 = phi i32 [ 255, %cond.true.20 ], [ %cond27, %cond.end.26 ]
  %13 = load i32*, i32** %hg.addr, align 8
  store i32 %cond29, i32* %13, align 4
  %14 = load i32, i32* %ob, align 4
  %cmp30 = icmp sgt i32 %14, 255
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.28
  br label %cond.end.40

cond.false.33:                                    ; preds = %cond.end.28
  %15 = load i32, i32* %ob, align 4
  %cmp34 = icmp slt i32 %15, 0
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.33
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.false.33
  %16 = load i32, i32* %ob, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi i32 [ 0, %cond.true.36 ], [ %16, %cond.false.37 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.32
  %cond41 = phi i32 [ 255, %cond.true.32 ], [ %cond39, %cond.end.38 ]
  %17 = load i32*, i32** %hb.addr, align 8
  store i32 %cond41, i32* %17, align 4
  ret void
}

declare void @cpercep_rgb_to_space(double, double, double, double*, double*, double*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass1_gray(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %1 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %1, i32 0, i32 9
  %2 = load i64*, i64** %histogram, align 8
  call void @select_colors_gray(%struct._QuantizeObj* %0, i64* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @webpal_pass1(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %i = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 5
  store i32 216, i32* %actual_number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 216
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 3
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [648 x i8], [648 x i8]* @webpal, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom1
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx2, i32 0, i32 0
  store i32 %conv, i32* %red, align 4
  %6 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %6, 3
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [648 x i8], [648 x i8]* @webpal, i32 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap8 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %9, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap8, i32 0, i64 %idxprom7
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 1
  store i32 %conv6, i32* %green, align 4
  %10 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %10, 3
  %add11 = add nsw i32 %mul10, 2
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [648 x i8], [648 x i8]* @webpal, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap16 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %13, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap16, i32 0, i64 %idxprom15
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx17, i32 0, i32 2
  store i32 %conv14, i32* %blue, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @custompal_pass1(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %i = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** @theCustomPalette, align 8
  %call = call %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %4, %struct._GimpPaletteEntry** %entry1, align 8
  %5 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %5, i32 0, i32 0
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %6 = load i8, i8* %r, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  store i32 %conv, i32* %red, align 4
  %9 = load i8, i8* %g, align 1
  %conv2 = zext i8 %9 to i32
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap4 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %11, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap4, i32 0, i64 %idxprom3
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx5, i32 0, i32 1
  store i32 %conv2, i32* %green, align 4
  %12 = load i8, i8* %b, align 1
  %conv6 = zext i8 %12 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap8 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %14, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap8, i32 0, i64 %idxprom7
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 2
  store i32 %conv6, i32* %blue, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %20 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %20, i32 0, i32 5
  store i32 %19, i32* %actual_number_of_colors, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @monopal_pass1(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 5
  store i32 2, i32* %actual_number_of_colors, align 4
  %1 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 0
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  store i32 0, i32* %red, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap1, i32 0, i64 0
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %green, align 4
  %3 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap3 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %3, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap3, i32 0, i64 0
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx4, i32 0, i32 2
  store i32 0, i32* %blue, align 4
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap5 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap5, i32 0, i64 1
  %red7 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx6, i32 0, i32 0
  store i32 255, i32* %red7, align 4
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap8 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap8, i32 0, i64 1
  %green10 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 1
  store i32 255, i32* %green10, align 4
  %6 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap11 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %6, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap11, i32 0, i64 1
  %blue13 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx12, i32 0, i32 2
  store i32 255, i32* %blue13, align 4
  ret void
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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_rgb_init(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %i = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram, align 8
  call void @zero_histogram_rgb(i64* %1)
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 8
  %3 = bitcast [256 x i64]* %index_used_count to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 2048, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 5
  %6 = load i32, i32* %actual_number_of_colors, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %red, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap2 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %11, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap2, i32 0, i64 %idxprom1
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx3, i32 0, i32 1
  %12 = load i32, i32* %green, align 4
  %conv4 = trunc i32 %12 to i8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap6 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap6, i32 0, i64 %idxprom5
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx7, i32 0, i32 2
  %15 = load i32, i32* %blue, align 4
  %conv8 = trunc i32 %15 to i8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %17, i32 0, i32 7
  %arrayidx10 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin, i32 0, i64 %idxprom9
  %red11 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx10, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin13 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %19, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin13, i32 0, i64 %idxprom12
  %green15 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx14, i32 0, i32 1
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin17 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %21, i32 0, i32 7
  %arrayidx18 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin17, i32 0, i64 %idxprom16
  %blue19 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx18, i32 0, i32 2
  call void @rgb_to_unshifted_lin(i8 zeroext %conv, i8 zeroext %conv4, i8 zeroext %conv8, i32* %red11, i32* %green15, i32* %blue19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_no_dither_rgb(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %pr = alloca i8*, align 8
  %red_pix = alloca i32, align 4
  %green_pix = alloca i32, align 4
  %blue_pix = alloca i32, align 4
  %alpha_pix = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %total_size = alloca i64, align 8
  %layer_size = alloca i64, align 8
  %count = alloca i32, align 4
  %nth_layer = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %transparent = alloca i32, align 4
  %dither_x = alloca i32, align 4
  %dither_y = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %green_pix, align 4
  store i32 2, i32* %blue_pix, align 4
  store i32 3, i32* %alpha_pix, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 10
  %3 = load i32, i32* %want_alpha_dither, align 4
  store i32 %3, i32* %alpha_dither, align 4
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count2 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count2, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  store i64 0, i64* %total_size, align 8
  store i32 0, i32* %count, align 4
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %nth_layer3 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 13
  %6 = load i32, i32* %nth_layer3, align 4
  store i32 %6, i32* %nth_layer, align 4
  %7 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %n_layers4 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %7, i32 0, i32 14
  %8 = load i32, i32* %n_layers4, align 4
  store i32 %8, i32* %n_layers, align 4
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %11, i32* %offsetx, i32* %offsety)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  %call8 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %14)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %blue_pix, align 4
  store i32 0, i32* %green_pix, align 4
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %alpha_pix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  %call11 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %17)
  store i32 %call11, i32* %has_alpha, align 4
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_drawable_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawable*
  %call14 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %20)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call14, i32 0, i32 0, i32 %call17, i32 %call20, i32 0)
  %27 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %27, i32 0, i32 0, i32 %call23, i32 %call26, i32 1)
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %38 = bitcast %struct._GimpLayer* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %mul = mul nsw i32 %call29, %call32
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %layer_size, align 8
  %call33 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %40 = bitcast %struct._PixelRegionIterator* %call33 to i8*
  store i8* %40, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.116, %if.end
  %41 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %41, null
  br i1 %cmp, label %for.body, label %for.end.119

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  store i8* %42, i8** %src, align 8
  %data35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %43 = load i8*, i8** %data35, align 8
  store i8* %43, i8** %dest, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %44 = load i32, i32* %h, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %45 = load i32, i32* %w, align 4
  %mul36 = mul nsw i32 %44, %45
  %conv37 = sext i32 %mul36 to i64
  %46 = load i64, i64* %total_size, align 8
  %add = add nsw i64 %46, %conv37
  store i64 %add, i64* %total_size, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.101, %for.body
  %47 = load i32, i32* %row, align 4
  %h39 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %48 = load i32, i32* %h39, align 4
  %cmp40 = icmp slt i32 %47, %48
  br i1 %cmp40, label %for.body.42, label %for.end.103

for.body.42:                                      ; preds = %for.cond.38
  store i32 0, i32* %col, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body.42
  %49 = load i32, i32* %col, align 4
  %w44 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %50 = load i32, i32* %w44, align 4
  %cmp45 = icmp slt i32 %49, %50
  br i1 %cmp45, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.43
  %51 = load i32, i32* %has_alpha, align 4
  %tobool48 = icmp ne i32 %51, 0
  br i1 %tobool48, label %if.then.49, label %if.end.81

if.then.49:                                       ; preds = %for.body.47
  store i32 0, i32* %transparent, align 4
  %52 = load i32, i32* %alpha_dither, align 4
  %tobool50 = icmp ne i32 %52, 0
  br i1 %tobool50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.49
  %53 = load i32, i32* %col, align 4
  %54 = load i32, i32* %offsetx, align 4
  %add52 = add nsw i32 %53, %54
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %55 = load i32, i32* %x, align 4
  %add53 = add nsw i32 %add52, %55
  %and = and i32 %add53, 31
  store i32 %and, i32* %dither_x, align 4
  %56 = load i32, i32* %row, align 4
  %57 = load i32, i32* %offsety, align 4
  %add54 = add nsw i32 %56, %57
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %58 = load i32, i32* %y, align 4
  %add55 = add nsw i32 %add54, %58
  %and56 = and i32 %add55, 31
  store i32 %and56, i32* %dither_y, align 4
  %59 = load i32, i32* %alpha_pix, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx, align 1
  %conv57 = zext i8 %61 to i32
  %62 = load i32, i32* %dither_y, align 4
  %idxprom58 = sext i32 %62 to i64
  %63 = load i32, i32* %dither_x, align 4
  %idxprom59 = sext i32 %63 to i64
  %arrayidx60 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx60, i32 0, i64 %idxprom58
  %64 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %64 to i32
  %cmp63 = icmp slt i32 %conv57, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.51
  store i32 1, i32* %transparent, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.51
  br label %if.end.74

if.else:                                          ; preds = %if.then.49
  %65 = load i32, i32* %alpha_pix, align 4
  %idxprom67 = sext i32 %65 to i64
  %66 = load i8*, i8** %src, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %66, i64 %idxprom67
  %67 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %67 to i32
  %cmp70 = icmp sle i32 %conv69, 127
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else
  store i32 1, i32* %transparent, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.66
  %68 = load i32, i32* %transparent, align 4
  %tobool75 = icmp ne i32 %68, 0
  br i1 %tobool75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.end.74
  %69 = load i8*, i8** %dest, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 0, i8* %arrayidx77, align 1
  br label %next_pixel

if.else.78:                                       ; preds = %if.end.74
  %70 = load i8*, i8** %dest, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 -1, i8* %arrayidx79, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %for.body.47
  %71 = load i32, i32* %red_pix, align 4
  %idxprom82 = sext i32 %71 to i64
  %72 = load i8*, i8** %src, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %72, i64 %idxprom82
  %73 = load i8, i8* %arrayidx83, align 1
  %74 = load i32, i32* %green_pix, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load i8*, i8** %src, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %75, i64 %idxprom84
  %76 = load i8, i8* %arrayidx85, align 1
  %77 = load i32, i32* %blue_pix, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load i8*, i8** %src, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %78, i64 %idxprom86
  %79 = load i8, i8* %arrayidx87, align 1
  call void @rgb_to_lin(i8 zeroext %73, i8 zeroext %76, i8 zeroext %79, i32* %R, i32* %G, i32* %B)
  %80 = load i64*, i64** %histogram, align 8
  %81 = load i32, i32* %R, align 4
  %82 = load i32, i32* %G, align 4
  %83 = load i32, i32* %B, align 4
  %call88 = call i64* @HIST_LIN(i64* %80, i32 %81, i32 %82, i32 %83)
  store i64* %call88, i64** %cachep, align 8
  %84 = load i64*, i64** %cachep, align 8
  %85 = load i64, i64* %84, align 8
  %cmp89 = icmp eq i64 %85, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.81
  %86 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %87 = load i64*, i64** %histogram, align 8
  %88 = load i32, i32* %R, align 4
  %89 = load i32, i32* %G, align 4
  %90 = load i32, i32* %B, align 4
  call void @fill_inverse_cmap_rgb(%struct._QuantizeObj* %86, i64* %87, i32 %88, i32 %89, i32 %90)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.81
  %91 = load i64*, i64** %cachep, align 8
  %92 = load i64, i64* %91, align 8
  %sub = sub i64 %92, 1
  %conv93 = trunc i64 %sub to i8
  %93 = load i8*, i8** %dest, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %conv93, i8* %arrayidx94, align 1
  %idxprom95 = zext i8 %conv93 to i64
  %94 = load i64*, i64** %index_used_count, align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %94, i64 %idxprom95
  %95 = load i64, i64* %arrayidx96, align 8
  %inc = add i64 %95, 1
  store i64 %inc, i64* %arrayidx96, align 8
  br label %next_pixel

next_pixel:                                       ; preds = %if.end.92, %if.then.76
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %96 = load i32, i32* %bytes, align 4
  %97 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %96 to i64
  %add.ptr = getelementptr inbounds i8, i8* %97, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes97 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %98 = load i32, i32* %bytes97, align 4
  %99 = load i8*, i8** %dest, align 8
  %idx.ext98 = sext i32 %98 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %99, i64 %idx.ext98
  store i8* %add.ptr99, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %next_pixel
  %100 = load i32, i32* %col, align 4
  %inc100 = add nsw i32 %100, 1
  store i32 %inc100, i32* %col, align 4
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end
  %101 = load i32, i32* %row, align 4
  %inc102 = add nsw i32 %101, 1
  store i32 %inc102, i32* %row, align 4
  br label %for.cond.38

for.end.103:                                      ; preds = %for.cond.38
  %102 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %102, i32 0, i32 12
  %103 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool104 = icmp ne %struct._GimpProgress* %103, null
  br i1 %tobool104, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %for.end.103
  %104 = load i32, i32* %count, align 4
  %rem = srem i32 %104, 16
  %cmp105 = icmp eq i32 %rem, 0
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %land.lhs.true
  %105 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress108 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %105, i32 0, i32 12
  %106 = load %struct._GimpProgress*, %struct._GimpProgress** %progress108, align 8
  %107 = load i32, i32* %nth_layer, align 4
  %conv109 = sitofp i32 %107 to double
  %108 = load i64, i64* %total_size, align 8
  %conv110 = sitofp i64 %108 to double
  %109 = load i64, i64* %layer_size, align 8
  %conv111 = sitofp i64 %109 to double
  %div = fdiv double %conv110, %conv111
  %add112 = fadd double %conv109, %div
  %110 = load i32, i32* %n_layers, align 4
  %conv113 = sitofp i32 %110 to double
  %div114 = fdiv double %add112, %conv113
  call void @gimp_progress_set_value(%struct._GimpProgress* %106, double %div114)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.107, %land.lhs.true, %for.end.103
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %111 = load i8*, i8** %pr, align 8
  %112 = bitcast i8* %111 to %struct._PixelRegionIterator*
  %call117 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %112)
  %113 = bitcast %struct._PixelRegionIterator* %call117 to i8*
  store i8* %113, i8** %pr, align 8
  %114 = load i32, i32* %count, align 4
  %inc118 = add nsw i32 %114, 1
  store i32 %inc118, i32* %count, align 4
  br label %for.cond

for.end.119:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_fs_dither_rgb(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %color = alloca %struct._Color*, align 8
  %error_limiter = alloca i32*, align 8
  %fs_err1 = alloca i16*, align 8
  %fs_err2 = alloca i16*, align 8
  %fs_err3 = alloca i16*, align 8
  %fs_err4 = alloca i16*, align 8
  %range_limiter = alloca i8*, align 8
  %src_bytes = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %src_buf = alloca i8*, align 8
  %dest_buf = alloca i8*, align 8
  %red_n_row = alloca i32*, align 8
  %red_p_row = alloca i32*, align 8
  %grn_n_row = alloca i32*, align 8
  %grn_p_row = alloca i32*, align 8
  %blu_n_row = alloca i32*, align 8
  %blu_p_row = alloca i32*, align 8
  %rnr = alloca i32*, align 8
  %rpr = alloca i32*, align 8
  %gnr = alloca i32*, align 8
  %gpr = alloca i32*, align 8
  %bnr = alloca i32*, align 8
  %bpr = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  %re = alloca i32, align 4
  %ge = alloca i32, align 4
  %be = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %index = alloca i32, align 4
  %step_dest = alloca i32, align 4
  %step_src = alloca i32, align 4
  %odd_row = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %red_pix = alloca i32, align 4
  %green_pix = alloca i32, align 4
  %blue_pix = alloca i32, align 4
  %alpha_pix = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %global_rmax = alloca i32, align 4
  %global_rmin = alloca i32, align 4
  %global_gmax = alloca i32, align 4
  %global_gmin = alloca i32, align 4
  %global_bmax = alloca i32, align 4
  %global_bmin = alloca i32, align 4
  %nth_layer = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %transparent = alloca i32, align 4
  %dither_x = alloca i32, align 4
  %dither_y = alloca i32, align 4
  %dither_x250 = alloca i32, align 4
  %dither_y254 = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %green_pix, align 4
  store i32 2, i32* %blue_pix, align 4
  store i32 3, i32* %alpha_pix, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 10
  %3 = load i32, i32* %want_alpha_dither, align 4
  store i32 %3, i32* %alpha_dither, align 4
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count22 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count22, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  store i32 0, i32* %global_rmax, align 4
  store i32 2147483647, i32* %global_rmin, align 4
  store i32 0, i32* %global_gmax, align 4
  store i32 2147483647, i32* %global_gmin, align 4
  store i32 0, i32* %global_bmax, align 4
  store i32 2147483647, i32* %global_bmin, align 4
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %nth_layer30 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 13
  %6 = load i32, i32* %nth_layer30, align 4
  store i32 %6, i32* %nth_layer, align 4
  %7 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %n_layers32 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %7, i32 0, i32 14
  %8 = load i32, i32* %n_layers32, align 4
  store i32 %8, i32* %n_layers, align 4
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %11, i32* %offsetx, i32* %offsety)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_drawable_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call34)
  %14 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpDrawable*
  %call36 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %14)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %blue_pix, align 4
  store i32 0, i32* %green_pix, align 4
  store i32 0, i32* %red_pix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_drawable_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call37)
  %17 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawable*
  %call39 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %17)
  store i32 %call39, i32* %has_alpha, align 4
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call40)
  %20 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  %call42 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %20)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call43)
  %23 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call46)
  %26 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call42, i32 0, i32 0, i32 %call45, i32 %call48, i32 0)
  %27 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call49)
  %30 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_item_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call52)
  %33 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpItem*
  %call54 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %27, i32 0, i32 0, i32 %call51, i32 %call54, i32 1)
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_drawable_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call55)
  %36 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpDrawable*
  %call57 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %36)
  store i32 %call57, i32* %src_bytes, align 4
  %37 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call58 = call i32 @tile_manager_bpp(%struct._TileManager* %37)
  store i32 %call58, i32* %dest_bytes, align 4
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %39 = bitcast %struct._GimpLayer* %38 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call59)
  %40 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %call61 = call i32 @gimp_item_get_width(%struct._GimpItem* %40)
  store i32 %call61, i32* %width, align 4
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %42 = bitcast %struct._GimpLayer* %41 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_item_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call62)
  %43 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpItem*
  %call64 = call i32 @gimp_item_get_height(%struct._GimpItem* %43)
  store i32 %call64, i32* %height, align 4
  %44 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %error_freedom = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %44, i32 0, i32 11
  %45 = load i32, i32* %error_freedom, align 4
  %call65 = call i32* @init_error_limit(i32 %45)
  store i32* %call65, i32** %error_limiter, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @range_array, i32 0, i64 256), i8** %range_limiter, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %46 = load i32, i32* %index, align 4
  %47 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %47, i32 0, i32 5
  %48 = load i32, i32* %actual_number_of_colors, align 4
  %cmp = icmp slt i32 %46, %48
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %global_rmax, align 4
  %50 = load i32, i32* %index, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %51, i32 0, i32 7
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  %52 = load i32, i32* %red, align 4
  %cmp66 = icmp sgt i32 %49, %52
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %53 = load i32, i32* %global_rmax, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %54 = load i32, i32* %index, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin68 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %55, i32 0, i32 7
  %arrayidx69 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin68, i32 0, i64 %idxprom67
  %red70 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx69, i32 0, i32 0
  %56 = load i32, i32* %red70, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ %56, %cond.false ]
  store i32 %cond, i32* %global_rmax, align 4
  %57 = load i32, i32* %global_rmin, align 4
  %58 = load i32, i32* %index, align 4
  %idxprom71 = sext i32 %58 to i64
  %59 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin72 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %59, i32 0, i32 7
  %arrayidx73 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin72, i32 0, i64 %idxprom71
  %red74 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx73, i32 0, i32 0
  %60 = load i32, i32* %red74, align 4
  %cmp75 = icmp slt i32 %57, %60
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end
  %61 = load i32, i32* %global_rmin, align 4
  br label %cond.end.82

cond.false.77:                                    ; preds = %cond.end
  %62 = load i32, i32* %index, align 4
  %idxprom78 = sext i32 %62 to i64
  %63 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin79 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %63, i32 0, i32 7
  %arrayidx80 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin79, i32 0, i64 %idxprom78
  %red81 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx80, i32 0, i32 0
  %64 = load i32, i32* %red81, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.77, %cond.true.76
  %cond83 = phi i32 [ %61, %cond.true.76 ], [ %64, %cond.false.77 ]
  store i32 %cond83, i32* %global_rmin, align 4
  %65 = load i32, i32* %global_gmax, align 4
  %66 = load i32, i32* %index, align 4
  %idxprom84 = sext i32 %66 to i64
  %67 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin85 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %67, i32 0, i32 7
  %arrayidx86 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin85, i32 0, i64 %idxprom84
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx86, i32 0, i32 1
  %68 = load i32, i32* %green, align 4
  %cmp87 = icmp sgt i32 %65, %68
  br i1 %cmp87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.82
  %69 = load i32, i32* %global_gmax, align 4
  br label %cond.end.94

cond.false.89:                                    ; preds = %cond.end.82
  %70 = load i32, i32* %index, align 4
  %idxprom90 = sext i32 %70 to i64
  %71 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin91 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %71, i32 0, i32 7
  %arrayidx92 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin91, i32 0, i64 %idxprom90
  %green93 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx92, i32 0, i32 1
  %72 = load i32, i32* %green93, align 4
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.89, %cond.true.88
  %cond95 = phi i32 [ %69, %cond.true.88 ], [ %72, %cond.false.89 ]
  store i32 %cond95, i32* %global_gmax, align 4
  %73 = load i32, i32* %global_gmin, align 4
  %74 = load i32, i32* %index, align 4
  %idxprom96 = sext i32 %74 to i64
  %75 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin97 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %75, i32 0, i32 7
  %arrayidx98 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin97, i32 0, i64 %idxprom96
  %green99 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx98, i32 0, i32 1
  %76 = load i32, i32* %green99, align 4
  %cmp100 = icmp slt i32 %73, %76
  br i1 %cmp100, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end.94
  %77 = load i32, i32* %global_gmin, align 4
  br label %cond.end.107

cond.false.102:                                   ; preds = %cond.end.94
  %78 = load i32, i32* %index, align 4
  %idxprom103 = sext i32 %78 to i64
  %79 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin104 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %79, i32 0, i32 7
  %arrayidx105 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin104, i32 0, i64 %idxprom103
  %green106 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx105, i32 0, i32 1
  %80 = load i32, i32* %green106, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.102, %cond.true.101
  %cond108 = phi i32 [ %77, %cond.true.101 ], [ %80, %cond.false.102 ]
  store i32 %cond108, i32* %global_gmin, align 4
  %81 = load i32, i32* %global_bmax, align 4
  %82 = load i32, i32* %index, align 4
  %idxprom109 = sext i32 %82 to i64
  %83 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin110 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %83, i32 0, i32 7
  %arrayidx111 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin110, i32 0, i64 %idxprom109
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx111, i32 0, i32 2
  %84 = load i32, i32* %blue, align 4
  %cmp112 = icmp sgt i32 %81, %84
  br i1 %cmp112, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.107
  %85 = load i32, i32* %global_bmax, align 4
  br label %cond.end.119

cond.false.114:                                   ; preds = %cond.end.107
  %86 = load i32, i32* %index, align 4
  %idxprom115 = sext i32 %86 to i64
  %87 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin116 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %87, i32 0, i32 7
  %arrayidx117 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin116, i32 0, i64 %idxprom115
  %blue118 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx117, i32 0, i32 2
  %88 = load i32, i32* %blue118, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.114, %cond.true.113
  %cond120 = phi i32 [ %85, %cond.true.113 ], [ %88, %cond.false.114 ]
  store i32 %cond120, i32* %global_bmax, align 4
  %89 = load i32, i32* %global_bmin, align 4
  %90 = load i32, i32* %index, align 4
  %idxprom121 = sext i32 %90 to i64
  %91 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin122 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %91, i32 0, i32 7
  %arrayidx123 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin122, i32 0, i64 %idxprom121
  %blue124 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx123, i32 0, i32 2
  %92 = load i32, i32* %blue124, align 4
  %cmp125 = icmp slt i32 %89, %92
  br i1 %cmp125, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.end.119
  %93 = load i32, i32* %global_bmin, align 4
  br label %cond.end.132

cond.false.127:                                   ; preds = %cond.end.119
  %94 = load i32, i32* %index, align 4
  %idxprom128 = sext i32 %94 to i64
  %95 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin129 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %95, i32 0, i32 7
  %arrayidx130 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin129, i32 0, i64 %idxprom128
  %blue131 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx130, i32 0, i32 2
  %96 = load i32, i32* %blue131, align 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.127, %cond.true.126
  %cond133 = phi i32 [ %93, %cond.true.126 ], [ %96, %cond.false.127 ]
  store i32 %cond133, i32* %global_bmin, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.132
  %97 = load i32, i32* %index, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %98 = load i32, i32* %width, align 4
  %99 = load i32, i32* %src_bytes, align 4
  %mul = mul nsw i32 %98, %99
  %conv = sext i32 %mul to i64
  %call134 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call134, i8** %src_buf, align 8
  %100 = load i32, i32* %width, align 4
  %101 = load i32, i32* %dest_bytes, align 4
  %mul135 = mul nsw i32 %100, %101
  %conv136 = sext i32 %mul135 to i64
  %call137 = call noalias i8* @g_malloc(i64 %conv136)
  store i8* %call137, i8** %dest_buf, align 8
  %102 = load i32, i32* %width, align 4
  %add = add nsw i32 %102, 2
  %conv138 = sext i32 %add to i64
  %call139 = call noalias i8* @g_malloc_n(i64 %conv138, i64 4)
  %103 = bitcast i8* %call139 to i32*
  store i32* %103, i32** %red_n_row, align 8
  %104 = load i32, i32* %width, align 4
  %add140 = add nsw i32 %104, 2
  %conv141 = sext i32 %add140 to i64
  %call142 = call noalias i8* @g_malloc0_n(i64 %conv141, i64 4)
  %105 = bitcast i8* %call142 to i32*
  store i32* %105, i32** %red_p_row, align 8
  %106 = load i32, i32* %width, align 4
  %add143 = add nsw i32 %106, 2
  %conv144 = sext i32 %add143 to i64
  %call145 = call noalias i8* @g_malloc_n(i64 %conv144, i64 4)
  %107 = bitcast i8* %call145 to i32*
  store i32* %107, i32** %grn_n_row, align 8
  %108 = load i32, i32* %width, align 4
  %add146 = add nsw i32 %108, 2
  %conv147 = sext i32 %add146 to i64
  %call148 = call noalias i8* @g_malloc0_n(i64 %conv147, i64 4)
  %109 = bitcast i8* %call148 to i32*
  store i32* %109, i32** %grn_p_row, align 8
  %110 = load i32, i32* %width, align 4
  %add149 = add nsw i32 %110, 2
  %conv150 = sext i32 %add149 to i64
  %call151 = call noalias i8* @g_malloc_n(i64 %conv150, i64 4)
  %111 = bitcast i8* %call151 to i32*
  store i32* %111, i32** %blu_n_row, align 8
  %112 = load i32, i32* %width, align 4
  %add152 = add nsw i32 %112, 2
  %conv153 = sext i32 %add152 to i64
  %call154 = call noalias i8* @g_malloc0_n(i64 %conv153, i64 4)
  %113 = bitcast i8* %call154 to i32*
  store i32* %113, i32** %blu_p_row, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error1, i32 0, i64 511), i16** %fs_err1, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error2, i32 0, i64 511), i16** %fs_err2, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error3, i32 0, i64 511), i16** %fs_err3, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error4, i32 0, i64 511), i16** %fs_err4, align 8
  store i32 0, i32* %odd_row, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.514, %for.end
  %114 = load i32, i32* %row, align 4
  %115 = load i32, i32* %height, align 4
  %cmp156 = icmp slt i32 %114, %115
  br i1 %cmp156, label %for.body.158, label %for.end.516

for.body.158:                                     ; preds = %for.cond.155
  %116 = load i32, i32* %row, align 4
  %117 = load i32, i32* %width, align 4
  %118 = load i8*, i8** %src_buf, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %srcPR, i32 0, i32 %116, i32 %117, i8* %118, i32 1)
  %119 = load i8*, i8** %src_buf, align 8
  store i8* %119, i8** %src, align 8
  %120 = load i8*, i8** %dest_buf, align 8
  store i8* %120, i8** %dest, align 8
  %121 = load i32*, i32** %red_n_row, align 8
  store i32* %121, i32** %rnr, align 8
  %122 = load i32*, i32** %grn_n_row, align 8
  store i32* %122, i32** %gnr, align 8
  %123 = load i32*, i32** %blu_n_row, align 8
  store i32* %123, i32** %bnr, align 8
  %124 = load i32*, i32** %red_p_row, align 8
  %add.ptr = getelementptr inbounds i32, i32* %124, i64 1
  store i32* %add.ptr, i32** %rpr, align 8
  %125 = load i32*, i32** %grn_p_row, align 8
  %add.ptr159 = getelementptr inbounds i32, i32* %125, i64 1
  store i32* %add.ptr159, i32** %gpr, align 8
  %126 = load i32*, i32** %blu_p_row, align 8
  %add.ptr160 = getelementptr inbounds i32, i32* %126, i64 1
  store i32* %add.ptr160, i32** %bpr, align 8
  %127 = load i32, i32* %odd_row, align 4
  %tobool161 = icmp ne i32 %127, 0
  br i1 %tobool161, label %if.then.162, label %if.else

if.then.162:                                      ; preds = %for.body.158
  %128 = load i32, i32* %dest_bytes, align 4
  %sub = sub nsw i32 0, %128
  store i32 %sub, i32* %step_dest, align 4
  %129 = load i32, i32* %src_bytes, align 4
  %sub163 = sub nsw i32 0, %129
  store i32 %sub163, i32* %step_src, align 4
  %130 = load i32, i32* %width, align 4
  %131 = load i32, i32* %src_bytes, align 4
  %mul164 = mul nsw i32 %130, %131
  %132 = load i32, i32* %src_bytes, align 4
  %sub165 = sub nsw i32 %mul164, %132
  %133 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %sub165 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %133, i64 %idx.ext
  store i8* %add.ptr166, i8** %src, align 8
  %134 = load i32, i32* %width, align 4
  %135 = load i32, i32* %dest_bytes, align 4
  %mul167 = mul nsw i32 %134, %135
  %136 = load i32, i32* %dest_bytes, align 4
  %sub168 = sub nsw i32 %mul167, %136
  %137 = load i8*, i8** %dest, align 8
  %idx.ext169 = sext i32 %sub168 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %137, i64 %idx.ext169
  store i8* %add.ptr170, i8** %dest, align 8
  %138 = load i32, i32* %width, align 4
  %add171 = add nsw i32 %138, 1
  %139 = load i32*, i32** %rnr, align 8
  %idx.ext172 = sext i32 %add171 to i64
  %add.ptr173 = getelementptr inbounds i32, i32* %139, i64 %idx.ext172
  store i32* %add.ptr173, i32** %rnr, align 8
  %140 = load i32, i32* %width, align 4
  %add174 = add nsw i32 %140, 1
  %141 = load i32*, i32** %gnr, align 8
  %idx.ext175 = sext i32 %add174 to i64
  %add.ptr176 = getelementptr inbounds i32, i32* %141, i64 %idx.ext175
  store i32* %add.ptr176, i32** %gnr, align 8
  %142 = load i32, i32* %width, align 4
  %add177 = add nsw i32 %142, 1
  %143 = load i32*, i32** %bnr, align 8
  %idx.ext178 = sext i32 %add177 to i64
  %add.ptr179 = getelementptr inbounds i32, i32* %143, i64 %idx.ext178
  store i32* %add.ptr179, i32** %bnr, align 8
  %144 = load i32, i32* %width, align 4
  %145 = load i32*, i32** %rpr, align 8
  %idx.ext180 = sext i32 %144 to i64
  %add.ptr181 = getelementptr inbounds i32, i32* %145, i64 %idx.ext180
  store i32* %add.ptr181, i32** %rpr, align 8
  %146 = load i32, i32* %width, align 4
  %147 = load i32*, i32** %gpr, align 8
  %idx.ext182 = sext i32 %146 to i64
  %add.ptr183 = getelementptr inbounds i32, i32* %147, i64 %idx.ext182
  store i32* %add.ptr183, i32** %gpr, align 8
  %148 = load i32, i32* %width, align 4
  %149 = load i32*, i32** %bpr, align 8
  %idx.ext184 = sext i32 %148 to i64
  %add.ptr185 = getelementptr inbounds i32, i32* %149, i64 %idx.ext184
  store i32* %add.ptr185, i32** %bpr, align 8
  %150 = load i32*, i32** %bnr, align 8
  %add.ptr186 = getelementptr inbounds i32, i32* %150, i64 -1
  store i32 0, i32* %add.ptr186, align 4
  %151 = load i32*, i32** %gnr, align 8
  %add.ptr187 = getelementptr inbounds i32, i32* %151, i64 -1
  store i32 0, i32* %add.ptr187, align 4
  %152 = load i32*, i32** %rnr, align 8
  %add.ptr188 = getelementptr inbounds i32, i32* %152, i64 -1
  store i32 0, i32* %add.ptr188, align 4
  br label %if.end.192

if.else:                                          ; preds = %for.body.158
  %153 = load i32, i32* %dest_bytes, align 4
  store i32 %153, i32* %step_dest, align 4
  %154 = load i32, i32* %src_bytes, align 4
  store i32 %154, i32* %step_src, align 4
  %155 = load i32*, i32** %bnr, align 8
  %add.ptr189 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 0, i32* %add.ptr189, align 4
  %156 = load i32*, i32** %gnr, align 8
  %add.ptr190 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 0, i32* %add.ptr190, align 4
  %157 = load i32*, i32** %rnr, align 8
  %add.ptr191 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 0, i32* %add.ptr191, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.else, %if.then.162
  %158 = load i32*, i32** %bnr, align 8
  store i32 0, i32* %158, align 4
  %159 = load i32*, i32** %gnr, align 8
  store i32 0, i32* %159, align 4
  %160 = load i32*, i32** %rnr, align 8
  store i32 0, i32* %160, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.497, %if.end.192
  %161 = load i32, i32* %col, align 4
  %162 = load i32, i32* %width, align 4
  %cmp194 = icmp slt i32 %161, %162
  br i1 %cmp194, label %for.body.196, label %for.end.499

for.body.196:                                     ; preds = %for.cond.193
  %163 = load i32, i32* %has_alpha, align 4
  %tobool197 = icmp ne i32 %163, 0
  br i1 %tobool197, label %if.then.198, label %if.end.294

if.then.198:                                      ; preds = %for.body.196
  store i32 0, i32* %transparent, align 4
  %164 = load i32, i32* %odd_row, align 4
  %tobool200 = icmp ne i32 %164, 0
  br i1 %tobool200, label %if.then.201, label %if.else.246

if.then.201:                                      ; preds = %if.then.198
  %165 = load i32, i32* %alpha_dither, align 4
  %tobool202 = icmp ne i32 %165, 0
  br i1 %tobool202, label %if.then.203, label %if.else.223

if.then.203:                                      ; preds = %if.then.201
  %166 = load i32, i32* %width, align 4
  %167 = load i32, i32* %col, align 4
  %sub205 = sub nsw i32 %166, %167
  %168 = load i32, i32* %offsetx, align 4
  %add206 = add nsw i32 %sub205, %168
  %sub207 = sub nsw i32 %add206, 1
  %and = and i32 %sub207, 31
  store i32 %and, i32* %dither_x, align 4
  %169 = load i32, i32* %row, align 4
  %170 = load i32, i32* %offsety, align 4
  %add209 = add nsw i32 %169, %170
  %and210 = and i32 %add209, 31
  store i32 %and210, i32* %dither_y, align 4
  %171 = load i32, i32* %alpha_pix, align 4
  %idxprom211 = sext i32 %171 to i64
  %172 = load i8*, i8** %src, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %172, i64 %idxprom211
  %173 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %173 to i32
  %174 = load i32, i32* %dither_y, align 4
  %idxprom214 = sext i32 %174 to i64
  %175 = load i32, i32* %dither_x, align 4
  %idxprom215 = sext i32 %175 to i64
  %arrayidx216 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom215
  %arrayidx217 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx216, i32 0, i64 %idxprom214
  %176 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %176 to i32
  %cmp219 = icmp slt i32 %conv213, %conv218
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.then.203
  store i32 1, i32* %transparent, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.then.203
  br label %if.end.231

if.else.223:                                      ; preds = %if.then.201
  %177 = load i32, i32* %alpha_pix, align 4
  %idxprom224 = sext i32 %177 to i64
  %178 = load i8*, i8** %src, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %178, i64 %idxprom224
  %179 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %179 to i32
  %cmp227 = icmp sle i32 %conv226, 127
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.else.223
  store i32 1, i32* %transparent, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.else.223
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.222
  %180 = load i32, i32* %transparent, align 4
  %tobool232 = icmp ne i32 %180, 0
  br i1 %tobool232, label %if.then.233, label %if.else.243

if.then.233:                                      ; preds = %if.end.231
  %181 = load i8*, i8** %dest, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 0, i8* %arrayidx234, align 1
  %182 = load i32*, i32** %rpr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %182, i32 -1
  store i32* %incdec.ptr, i32** %rpr, align 8
  %183 = load i32*, i32** %gpr, align 8
  %incdec.ptr235 = getelementptr inbounds i32, i32* %183, i32 -1
  store i32* %incdec.ptr235, i32** %gpr, align 8
  %184 = load i32*, i32** %bpr, align 8
  %incdec.ptr236 = getelementptr inbounds i32, i32* %184, i32 -1
  store i32* %incdec.ptr236, i32** %bpr, align 8
  %185 = load i32*, i32** %rnr, align 8
  %incdec.ptr237 = getelementptr inbounds i32, i32* %185, i32 -1
  store i32* %incdec.ptr237, i32** %rnr, align 8
  %186 = load i32*, i32** %gnr, align 8
  %incdec.ptr238 = getelementptr inbounds i32, i32* %186, i32 -1
  store i32* %incdec.ptr238, i32** %gnr, align 8
  %187 = load i32*, i32** %bnr, align 8
  %incdec.ptr239 = getelementptr inbounds i32, i32* %187, i32 -1
  store i32* %incdec.ptr239, i32** %bnr, align 8
  %188 = load i32*, i32** %bnr, align 8
  %add.ptr240 = getelementptr inbounds i32, i32* %188, i64 -1
  store i32 0, i32* %add.ptr240, align 4
  %189 = load i32*, i32** %gnr, align 8
  %add.ptr241 = getelementptr inbounds i32, i32* %189, i64 -1
  store i32 0, i32* %add.ptr241, align 4
  %190 = load i32*, i32** %rnr, align 8
  %add.ptr242 = getelementptr inbounds i32, i32* %190, i64 -1
  store i32 0, i32* %add.ptr242, align 4
  br label %next_pixel

if.else.243:                                      ; preds = %if.end.231
  %191 = load i8*, i8** %dest, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 -1, i8* %arrayidx244, align 1
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.243
  br label %if.end.293

if.else.246:                                      ; preds = %if.then.198
  %192 = load i32, i32* %alpha_dither, align 4
  %tobool247 = icmp ne i32 %192, 0
  br i1 %tobool247, label %if.then.248, label %if.else.269

if.then.248:                                      ; preds = %if.else.246
  %193 = load i32, i32* %col, align 4
  %194 = load i32, i32* %offsetx, align 4
  %add251 = add nsw i32 %193, %194
  %and252 = and i32 %add251, 31
  store i32 %and252, i32* %dither_x250, align 4
  %195 = load i32, i32* %row, align 4
  %196 = load i32, i32* %offsety, align 4
  %add255 = add nsw i32 %195, %196
  %and256 = and i32 %add255, 31
  store i32 %and256, i32* %dither_y254, align 4
  %197 = load i32, i32* %alpha_pix, align 4
  %idxprom257 = sext i32 %197 to i64
  %198 = load i8*, i8** %src, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %198, i64 %idxprom257
  %199 = load i8, i8* %arrayidx258, align 1
  %conv259 = zext i8 %199 to i32
  %200 = load i32, i32* %dither_y254, align 4
  %idxprom260 = sext i32 %200 to i64
  %201 = load i32, i32* %dither_x250, align 4
  %idxprom261 = sext i32 %201 to i64
  %arrayidx262 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx262, i32 0, i64 %idxprom260
  %202 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %202 to i32
  %cmp265 = icmp slt i32 %conv259, %conv264
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.248
  store i32 1, i32* %transparent, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.then.248
  br label %if.end.277

if.else.269:                                      ; preds = %if.else.246
  %203 = load i32, i32* %alpha_pix, align 4
  %idxprom270 = sext i32 %203 to i64
  %204 = load i8*, i8** %src, align 8
  %arrayidx271 = getelementptr inbounds i8, i8* %204, i64 %idxprom270
  %205 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %205 to i32
  %cmp273 = icmp sle i32 %conv272, 127
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.else.269
  store i32 1, i32* %transparent, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.275, %if.else.269
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.268
  %206 = load i32, i32* %transparent, align 4
  %tobool278 = icmp ne i32 %206, 0
  br i1 %tobool278, label %if.then.279, label %if.else.290

if.then.279:                                      ; preds = %if.end.277
  %207 = load i8*, i8** %dest, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 0, i8* %arrayidx280, align 1
  %208 = load i32*, i32** %rpr, align 8
  %incdec.ptr281 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %incdec.ptr281, i32** %rpr, align 8
  %209 = load i32*, i32** %gpr, align 8
  %incdec.ptr282 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %incdec.ptr282, i32** %gpr, align 8
  %210 = load i32*, i32** %bpr, align 8
  %incdec.ptr283 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %incdec.ptr283, i32** %bpr, align 8
  %211 = load i32*, i32** %rnr, align 8
  %incdec.ptr284 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %incdec.ptr284, i32** %rnr, align 8
  %212 = load i32*, i32** %gnr, align 8
  %incdec.ptr285 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %incdec.ptr285, i32** %gnr, align 8
  %213 = load i32*, i32** %bnr, align 8
  %incdec.ptr286 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %incdec.ptr286, i32** %bnr, align 8
  %214 = load i32*, i32** %bnr, align 8
  %add.ptr287 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 0, i32* %add.ptr287, align 4
  %215 = load i32*, i32** %gnr, align 8
  %add.ptr288 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 0, i32* %add.ptr288, align 4
  %216 = load i32*, i32** %rnr, align 8
  %add.ptr289 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 0, i32* %add.ptr289, align 4
  br label %next_pixel

if.else.290:                                      ; preds = %if.end.277
  %217 = load i8*, i8** %dest, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %217, i64 1
  store i8 -1, i8* %arrayidx291, align 1
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.290
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.245
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %for.body.196
  %218 = load i32, i32* %red_pix, align 4
  %idxprom295 = sext i32 %218 to i64
  %219 = load i8*, i8** %src, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %219, i64 %idxprom295
  %220 = load i8, i8* %arrayidx296, align 1
  %221 = load i32, i32* %green_pix, align 4
  %idxprom297 = sext i32 %221 to i64
  %222 = load i8*, i8** %src, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %222, i64 %idxprom297
  %223 = load i8, i8* %arrayidx298, align 1
  %224 = load i32, i32* %blue_pix, align 4
  %idxprom299 = sext i32 %224 to i64
  %225 = load i8*, i8** %src, align 8
  %arrayidx300 = getelementptr inbounds i8, i8* %225, i64 %idxprom299
  %226 = load i8, i8* %arrayidx300, align 1
  call void @rgb_to_unshifted_lin(i8 zeroext %220, i8 zeroext %223, i8 zeroext %226, i32* %re, i32* %ge, i32* %be)
  %227 = load i32, i32* %re, align 4
  %228 = load i32*, i32** %rpr, align 8
  %229 = load i32, i32* %228, align 4
  %idxprom301 = sext i32 %229 to i64
  %230 = load i32*, i32** %error_limiter, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %230, i64 %idxprom301
  %231 = load i32, i32* %arrayidx302, align 4
  %add303 = add nsw i32 %227, %231
  %idxprom304 = sext i32 %add303 to i64
  %232 = load i8*, i8** %range_limiter, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %232, i64 %idxprom304
  %233 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %233 to i32
  store i32 %conv306, i32* %re, align 4
  %234 = load i32, i32* %ge, align 4
  %235 = load i32*, i32** %gpr, align 8
  %236 = load i32, i32* %235, align 4
  %idxprom307 = sext i32 %236 to i64
  %237 = load i32*, i32** %error_limiter, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %237, i64 %idxprom307
  %238 = load i32, i32* %arrayidx308, align 4
  %add309 = add nsw i32 %234, %238
  %idxprom310 = sext i32 %add309 to i64
  %239 = load i8*, i8** %range_limiter, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %239, i64 %idxprom310
  %240 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %240 to i32
  store i32 %conv312, i32* %ge, align 4
  %241 = load i32, i32* %be, align 4
  %242 = load i32*, i32** %bpr, align 8
  %243 = load i32, i32* %242, align 4
  %idxprom313 = sext i32 %243 to i64
  %244 = load i32*, i32** %error_limiter, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %244, i64 %idxprom313
  %245 = load i32, i32* %arrayidx314, align 4
  %add315 = add nsw i32 %241, %245
  %idxprom316 = sext i32 %add315 to i64
  %246 = load i8*, i8** %range_limiter, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %246, i64 %idxprom316
  %247 = load i8, i8* %arrayidx317, align 1
  %conv318 = zext i8 %247 to i32
  store i32 %conv318, i32* %be, align 4
  %248 = load i64*, i64** %histogram, align 8
  %249 = load i32, i32* %re, align 4
  %shr = ashr i32 %249, 0
  %250 = load i32, i32* %ge, align 4
  %shr319 = ashr i32 %250, 2
  %251 = load i32, i32* %be, align 4
  %shr320 = ashr i32 %251, 2
  %call321 = call i64* @HIST_LIN(i64* %248, i32 %shr, i32 %shr319, i32 %shr320)
  store i64* %call321, i64** %cachep, align 8
  %252 = load i64*, i64** %cachep, align 8
  %253 = load i64, i64* %252, align 8
  %cmp322 = icmp eq i64 %253, 0
  br i1 %cmp322, label %if.then.324, label %if.end.328

if.then.324:                                      ; preds = %if.end.294
  %254 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %255 = load i64*, i64** %histogram, align 8
  %256 = load i32, i32* %re, align 4
  %shr325 = ashr i32 %256, 0
  %257 = load i32, i32* %ge, align 4
  %shr326 = ashr i32 %257, 2
  %258 = load i32, i32* %be, align 4
  %shr327 = ashr i32 %258, 2
  call void @fill_inverse_cmap_rgb(%struct._QuantizeObj* %254, i64* %255, i32 %shr325, i32 %shr326, i32 %shr327)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.324, %if.end.294
  %259 = load i64*, i64** %cachep, align 8
  %260 = load i64, i64* %259, align 8
  %sub329 = sub i64 %260, 1
  %conv330 = trunc i64 %sub329 to i32
  store i32 %conv330, i32* %index, align 4
  %261 = load i32, i32* %index, align 4
  %idxprom331 = sext i32 %261 to i64
  %262 = load i64*, i64** %index_used_count, align 8
  %arrayidx332 = getelementptr inbounds i64, i64* %262, i64 %idxprom331
  %263 = load i64, i64* %arrayidx332, align 8
  %inc333 = add i64 %263, 1
  store i64 %inc333, i64* %arrayidx332, align 8
  %264 = load i32, i32* %index, align 4
  %conv334 = trunc i32 %264 to i8
  %265 = load i8*, i8** %dest, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %265, i64 0
  store i8 %conv334, i8* %arrayidx335, align 1
  %266 = load i32, i32* %ge, align 4
  %267 = load i32, i32* %global_gmax, align 4
  %cmp336 = icmp sgt i32 %266, %267
  br i1 %cmp336, label %if.then.338, label %if.else.341

if.then.338:                                      ; preds = %if.end.328
  %268 = load i32, i32* %ge, align 4
  %269 = load i32, i32* %global_gmax, align 4
  %mul339 = mul nsw i32 3, %269
  %add340 = add nsw i32 %268, %mul339
  %div = sdiv i32 %add340, 4
  store i32 %div, i32* %ge, align 4
  br label %if.end.349

if.else.341:                                      ; preds = %if.end.328
  %270 = load i32, i32* %ge, align 4
  %271 = load i32, i32* %global_gmin, align 4
  %cmp342 = icmp slt i32 %270, %271
  br i1 %cmp342, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %if.else.341
  %272 = load i32, i32* %ge, align 4
  %273 = load i32, i32* %global_gmin, align 4
  %mul345 = mul nsw i32 3, %273
  %add346 = add nsw i32 %272, %mul345
  %div347 = sdiv i32 %add346, 4
  store i32 %div347, i32* %ge, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %if.else.341
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.then.338
  %274 = load i32, i32* %be, align 4
  %275 = load i32, i32* %global_bmax, align 4
  %cmp350 = icmp sgt i32 %274, %275
  br i1 %cmp350, label %if.then.352, label %if.else.356

if.then.352:                                      ; preds = %if.end.349
  %276 = load i32, i32* %be, align 4
  %277 = load i32, i32* %global_bmax, align 4
  %mul353 = mul nsw i32 3, %277
  %add354 = add nsw i32 %276, %mul353
  %div355 = sdiv i32 %add354, 4
  store i32 %div355, i32* %be, align 4
  br label %if.end.364

if.else.356:                                      ; preds = %if.end.349
  %278 = load i32, i32* %be, align 4
  %279 = load i32, i32* %global_bmin, align 4
  %cmp357 = icmp slt i32 %278, %279
  br i1 %cmp357, label %if.then.359, label %if.end.363

if.then.359:                                      ; preds = %if.else.356
  %280 = load i32, i32* %be, align 4
  %281 = load i32, i32* %global_bmin, align 4
  %mul360 = mul nsw i32 3, %281
  %add361 = add nsw i32 %280, %mul360
  %div362 = sdiv i32 %add361, 4
  store i32 %div362, i32* %be, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.359, %if.else.356
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.352
  %282 = load i32, i32* %index, align 4
  %idxprom365 = sext i32 %282 to i64
  %283 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin366 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %283, i32 0, i32 7
  %arrayidx367 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin366, i32 0, i64 %idxprom365
  store %struct._Color* %arrayidx367, %struct._Color** %color, align 8
  %284 = load i32, i32* %re, align 4
  %cmp368 = icmp sle i32 %284, 0
  br i1 %cmp368, label %if.then.372, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.364
  %285 = load i32, i32* %re, align 4
  %cmp370 = icmp sge i32 %285, 255
  br i1 %cmp370, label %if.then.372, label %if.else.373

if.then.372:                                      ; preds = %lor.lhs.false, %if.end.364
  store i32 0, i32* %be, align 4
  store i32 0, i32* %ge, align 4
  store i32 0, i32* %re, align 4
  br label %if.end.380

if.else.373:                                      ; preds = %lor.lhs.false
  %286 = load i32, i32* %re, align 4
  %287 = load %struct._Color*, %struct._Color** %color, align 8
  %red374 = getelementptr inbounds %struct._Color, %struct._Color* %287, i32 0, i32 0
  %288 = load i32, i32* %red374, align 4
  %sub375 = sub nsw i32 %286, %288
  store i32 %sub375, i32* %re, align 4
  %289 = load i32, i32* %ge, align 4
  %290 = load %struct._Color*, %struct._Color** %color, align 8
  %green376 = getelementptr inbounds %struct._Color, %struct._Color* %290, i32 0, i32 1
  %291 = load i32, i32* %green376, align 4
  %sub377 = sub nsw i32 %289, %291
  store i32 %sub377, i32* %ge, align 4
  %292 = load i32, i32* %be, align 4
  %293 = load %struct._Color*, %struct._Color** %color, align 8
  %blue378 = getelementptr inbounds %struct._Color, %struct._Color* %293, i32 0, i32 2
  %294 = load i32, i32* %blue378, align 4
  %sub379 = sub nsw i32 %292, %294
  store i32 %sub379, i32* %be, align 4
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.373, %if.then.372
  %295 = load i32, i32* %odd_row, align 4
  %tobool381 = icmp ne i32 %295, 0
  br i1 %tobool381, label %if.then.382, label %if.else.437

if.then.382:                                      ; preds = %if.end.380
  %296 = load i32, i32* %re, align 4
  %idxprom383 = sext i32 %296 to i64
  %297 = load i16*, i16** %fs_err1, align 8
  %arrayidx384 = getelementptr inbounds i16, i16* %297, i64 %idxprom383
  %298 = load i16, i16* %arrayidx384, align 2
  %conv385 = sext i16 %298 to i32
  %299 = load i32*, i32** %rpr, align 8
  %incdec.ptr386 = getelementptr inbounds i32, i32* %299, i32 -1
  store i32* %incdec.ptr386, i32** %rpr, align 8
  %300 = load i32, i32* %incdec.ptr386, align 4
  %add387 = add nsw i32 %300, %conv385
  store i32 %add387, i32* %incdec.ptr386, align 4
  %301 = load i32, i32* %ge, align 4
  %idxprom388 = sext i32 %301 to i64
  %302 = load i16*, i16** %fs_err1, align 8
  %arrayidx389 = getelementptr inbounds i16, i16* %302, i64 %idxprom388
  %303 = load i16, i16* %arrayidx389, align 2
  %conv390 = sext i16 %303 to i32
  %304 = load i32*, i32** %gpr, align 8
  %incdec.ptr391 = getelementptr inbounds i32, i32* %304, i32 -1
  store i32* %incdec.ptr391, i32** %gpr, align 8
  %305 = load i32, i32* %incdec.ptr391, align 4
  %add392 = add nsw i32 %305, %conv390
  store i32 %add392, i32* %incdec.ptr391, align 4
  %306 = load i32, i32* %be, align 4
  %idxprom393 = sext i32 %306 to i64
  %307 = load i16*, i16** %fs_err1, align 8
  %arrayidx394 = getelementptr inbounds i16, i16* %307, i64 %idxprom393
  %308 = load i16, i16* %arrayidx394, align 2
  %conv395 = sext i16 %308 to i32
  %309 = load i32*, i32** %bpr, align 8
  %incdec.ptr396 = getelementptr inbounds i32, i32* %309, i32 -1
  store i32* %incdec.ptr396, i32** %bpr, align 8
  %310 = load i32, i32* %incdec.ptr396, align 4
  %add397 = add nsw i32 %310, %conv395
  store i32 %add397, i32* %incdec.ptr396, align 4
  %311 = load i32, i32* %re, align 4
  %idxprom398 = sext i32 %311 to i64
  %312 = load i16*, i16** %fs_err2, align 8
  %arrayidx399 = getelementptr inbounds i16, i16* %312, i64 %idxprom398
  %313 = load i16, i16* %arrayidx399, align 2
  %conv400 = sext i16 %313 to i32
  %314 = load i32*, i32** %rnr, align 8
  %incdec.ptr401 = getelementptr inbounds i32, i32* %314, i32 -1
  store i32* %incdec.ptr401, i32** %rnr, align 8
  %315 = load i32, i32* %314, align 4
  %add402 = add nsw i32 %315, %conv400
  store i32 %add402, i32* %314, align 4
  %316 = load i32, i32* %ge, align 4
  %idxprom403 = sext i32 %316 to i64
  %317 = load i16*, i16** %fs_err2, align 8
  %arrayidx404 = getelementptr inbounds i16, i16* %317, i64 %idxprom403
  %318 = load i16, i16* %arrayidx404, align 2
  %conv405 = sext i16 %318 to i32
  %319 = load i32*, i32** %gnr, align 8
  %incdec.ptr406 = getelementptr inbounds i32, i32* %319, i32 -1
  store i32* %incdec.ptr406, i32** %gnr, align 8
  %320 = load i32, i32* %319, align 4
  %add407 = add nsw i32 %320, %conv405
  store i32 %add407, i32* %319, align 4
  %321 = load i32, i32* %be, align 4
  %idxprom408 = sext i32 %321 to i64
  %322 = load i16*, i16** %fs_err2, align 8
  %arrayidx409 = getelementptr inbounds i16, i16* %322, i64 %idxprom408
  %323 = load i16, i16* %arrayidx409, align 2
  %conv410 = sext i16 %323 to i32
  %324 = load i32*, i32** %bnr, align 8
  %incdec.ptr411 = getelementptr inbounds i32, i32* %324, i32 -1
  store i32* %incdec.ptr411, i32** %bnr, align 8
  %325 = load i32, i32* %324, align 4
  %add412 = add nsw i32 %325, %conv410
  store i32 %add412, i32* %324, align 4
  %326 = load i32, i32* %re, align 4
  %idxprom413 = sext i32 %326 to i64
  %327 = load i16*, i16** %fs_err3, align 8
  %arrayidx414 = getelementptr inbounds i16, i16* %327, i64 %idxprom413
  %328 = load i16, i16* %arrayidx414, align 2
  %conv415 = sext i16 %328 to i32
  %329 = load i32*, i32** %rnr, align 8
  %330 = load i32, i32* %329, align 4
  %add416 = add nsw i32 %330, %conv415
  store i32 %add416, i32* %329, align 4
  %331 = load i32, i32* %ge, align 4
  %idxprom417 = sext i32 %331 to i64
  %332 = load i16*, i16** %fs_err3, align 8
  %arrayidx418 = getelementptr inbounds i16, i16* %332, i64 %idxprom417
  %333 = load i16, i16* %arrayidx418, align 2
  %conv419 = sext i16 %333 to i32
  %334 = load i32*, i32** %gnr, align 8
  %335 = load i32, i32* %334, align 4
  %add420 = add nsw i32 %335, %conv419
  store i32 %add420, i32* %334, align 4
  %336 = load i32, i32* %be, align 4
  %idxprom421 = sext i32 %336 to i64
  %337 = load i16*, i16** %fs_err3, align 8
  %arrayidx422 = getelementptr inbounds i16, i16* %337, i64 %idxprom421
  %338 = load i16, i16* %arrayidx422, align 2
  %conv423 = sext i16 %338 to i32
  %339 = load i32*, i32** %bnr, align 8
  %340 = load i32, i32* %339, align 4
  %add424 = add nsw i32 %340, %conv423
  store i32 %add424, i32* %339, align 4
  %341 = load i32, i32* %re, align 4
  %idxprom425 = sext i32 %341 to i64
  %342 = load i16*, i16** %fs_err4, align 8
  %arrayidx426 = getelementptr inbounds i16, i16* %342, i64 %idxprom425
  %343 = load i16, i16* %arrayidx426, align 2
  %conv427 = sext i16 %343 to i32
  %344 = load i32*, i32** %rnr, align 8
  %add.ptr428 = getelementptr inbounds i32, i32* %344, i64 -1
  store i32 %conv427, i32* %add.ptr428, align 4
  %345 = load i32, i32* %ge, align 4
  %idxprom429 = sext i32 %345 to i64
  %346 = load i16*, i16** %fs_err4, align 8
  %arrayidx430 = getelementptr inbounds i16, i16* %346, i64 %idxprom429
  %347 = load i16, i16* %arrayidx430, align 2
  %conv431 = sext i16 %347 to i32
  %348 = load i32*, i32** %gnr, align 8
  %add.ptr432 = getelementptr inbounds i32, i32* %348, i64 -1
  store i32 %conv431, i32* %add.ptr432, align 4
  %349 = load i32, i32* %be, align 4
  %idxprom433 = sext i32 %349 to i64
  %350 = load i16*, i16** %fs_err4, align 8
  %arrayidx434 = getelementptr inbounds i16, i16* %350, i64 %idxprom433
  %351 = load i16, i16* %arrayidx434, align 2
  %conv435 = sext i16 %351 to i32
  %352 = load i32*, i32** %bnr, align 8
  %add.ptr436 = getelementptr inbounds i32, i32* %352, i64 -1
  store i32 %conv435, i32* %add.ptr436, align 4
  br label %if.end.492

if.else.437:                                      ; preds = %if.end.380
  %353 = load i32, i32* %re, align 4
  %idxprom438 = sext i32 %353 to i64
  %354 = load i16*, i16** %fs_err1, align 8
  %arrayidx439 = getelementptr inbounds i16, i16* %354, i64 %idxprom438
  %355 = load i16, i16* %arrayidx439, align 2
  %conv440 = sext i16 %355 to i32
  %356 = load i32*, i32** %rpr, align 8
  %incdec.ptr441 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %incdec.ptr441, i32** %rpr, align 8
  %357 = load i32, i32* %incdec.ptr441, align 4
  %add442 = add nsw i32 %357, %conv440
  store i32 %add442, i32* %incdec.ptr441, align 4
  %358 = load i32, i32* %ge, align 4
  %idxprom443 = sext i32 %358 to i64
  %359 = load i16*, i16** %fs_err1, align 8
  %arrayidx444 = getelementptr inbounds i16, i16* %359, i64 %idxprom443
  %360 = load i16, i16* %arrayidx444, align 2
  %conv445 = sext i16 %360 to i32
  %361 = load i32*, i32** %gpr, align 8
  %incdec.ptr446 = getelementptr inbounds i32, i32* %361, i32 1
  store i32* %incdec.ptr446, i32** %gpr, align 8
  %362 = load i32, i32* %incdec.ptr446, align 4
  %add447 = add nsw i32 %362, %conv445
  store i32 %add447, i32* %incdec.ptr446, align 4
  %363 = load i32, i32* %be, align 4
  %idxprom448 = sext i32 %363 to i64
  %364 = load i16*, i16** %fs_err1, align 8
  %arrayidx449 = getelementptr inbounds i16, i16* %364, i64 %idxprom448
  %365 = load i16, i16* %arrayidx449, align 2
  %conv450 = sext i16 %365 to i32
  %366 = load i32*, i32** %bpr, align 8
  %incdec.ptr451 = getelementptr inbounds i32, i32* %366, i32 1
  store i32* %incdec.ptr451, i32** %bpr, align 8
  %367 = load i32, i32* %incdec.ptr451, align 4
  %add452 = add nsw i32 %367, %conv450
  store i32 %add452, i32* %incdec.ptr451, align 4
  %368 = load i32, i32* %re, align 4
  %idxprom453 = sext i32 %368 to i64
  %369 = load i16*, i16** %fs_err2, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %369, i64 %idxprom453
  %370 = load i16, i16* %arrayidx454, align 2
  %conv455 = sext i16 %370 to i32
  %371 = load i32*, i32** %rnr, align 8
  %incdec.ptr456 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %incdec.ptr456, i32** %rnr, align 8
  %372 = load i32, i32* %371, align 4
  %add457 = add nsw i32 %372, %conv455
  store i32 %add457, i32* %371, align 4
  %373 = load i32, i32* %ge, align 4
  %idxprom458 = sext i32 %373 to i64
  %374 = load i16*, i16** %fs_err2, align 8
  %arrayidx459 = getelementptr inbounds i16, i16* %374, i64 %idxprom458
  %375 = load i16, i16* %arrayidx459, align 2
  %conv460 = sext i16 %375 to i32
  %376 = load i32*, i32** %gnr, align 8
  %incdec.ptr461 = getelementptr inbounds i32, i32* %376, i32 1
  store i32* %incdec.ptr461, i32** %gnr, align 8
  %377 = load i32, i32* %376, align 4
  %add462 = add nsw i32 %377, %conv460
  store i32 %add462, i32* %376, align 4
  %378 = load i32, i32* %be, align 4
  %idxprom463 = sext i32 %378 to i64
  %379 = load i16*, i16** %fs_err2, align 8
  %arrayidx464 = getelementptr inbounds i16, i16* %379, i64 %idxprom463
  %380 = load i16, i16* %arrayidx464, align 2
  %conv465 = sext i16 %380 to i32
  %381 = load i32*, i32** %bnr, align 8
  %incdec.ptr466 = getelementptr inbounds i32, i32* %381, i32 1
  store i32* %incdec.ptr466, i32** %bnr, align 8
  %382 = load i32, i32* %381, align 4
  %add467 = add nsw i32 %382, %conv465
  store i32 %add467, i32* %381, align 4
  %383 = load i32, i32* %re, align 4
  %idxprom468 = sext i32 %383 to i64
  %384 = load i16*, i16** %fs_err3, align 8
  %arrayidx469 = getelementptr inbounds i16, i16* %384, i64 %idxprom468
  %385 = load i16, i16* %arrayidx469, align 2
  %conv470 = sext i16 %385 to i32
  %386 = load i32*, i32** %rnr, align 8
  %387 = load i32, i32* %386, align 4
  %add471 = add nsw i32 %387, %conv470
  store i32 %add471, i32* %386, align 4
  %388 = load i32, i32* %ge, align 4
  %idxprom472 = sext i32 %388 to i64
  %389 = load i16*, i16** %fs_err3, align 8
  %arrayidx473 = getelementptr inbounds i16, i16* %389, i64 %idxprom472
  %390 = load i16, i16* %arrayidx473, align 2
  %conv474 = sext i16 %390 to i32
  %391 = load i32*, i32** %gnr, align 8
  %392 = load i32, i32* %391, align 4
  %add475 = add nsw i32 %392, %conv474
  store i32 %add475, i32* %391, align 4
  %393 = load i32, i32* %be, align 4
  %idxprom476 = sext i32 %393 to i64
  %394 = load i16*, i16** %fs_err3, align 8
  %arrayidx477 = getelementptr inbounds i16, i16* %394, i64 %idxprom476
  %395 = load i16, i16* %arrayidx477, align 2
  %conv478 = sext i16 %395 to i32
  %396 = load i32*, i32** %bnr, align 8
  %397 = load i32, i32* %396, align 4
  %add479 = add nsw i32 %397, %conv478
  store i32 %add479, i32* %396, align 4
  %398 = load i32, i32* %re, align 4
  %idxprom480 = sext i32 %398 to i64
  %399 = load i16*, i16** %fs_err4, align 8
  %arrayidx481 = getelementptr inbounds i16, i16* %399, i64 %idxprom480
  %400 = load i16, i16* %arrayidx481, align 2
  %conv482 = sext i16 %400 to i32
  %401 = load i32*, i32** %rnr, align 8
  %add.ptr483 = getelementptr inbounds i32, i32* %401, i64 1
  store i32 %conv482, i32* %add.ptr483, align 4
  %402 = load i32, i32* %ge, align 4
  %idxprom484 = sext i32 %402 to i64
  %403 = load i16*, i16** %fs_err4, align 8
  %arrayidx485 = getelementptr inbounds i16, i16* %403, i64 %idxprom484
  %404 = load i16, i16* %arrayidx485, align 2
  %conv486 = sext i16 %404 to i32
  %405 = load i32*, i32** %gnr, align 8
  %add.ptr487 = getelementptr inbounds i32, i32* %405, i64 1
  store i32 %conv486, i32* %add.ptr487, align 4
  %406 = load i32, i32* %be, align 4
  %idxprom488 = sext i32 %406 to i64
  %407 = load i16*, i16** %fs_err4, align 8
  %arrayidx489 = getelementptr inbounds i16, i16* %407, i64 %idxprom488
  %408 = load i16, i16* %arrayidx489, align 2
  %conv490 = sext i16 %408 to i32
  %409 = load i32*, i32** %bnr, align 8
  %add.ptr491 = getelementptr inbounds i32, i32* %409, i64 1
  store i32 %conv490, i32* %add.ptr491, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.437, %if.then.382
  br label %next_pixel

next_pixel:                                       ; preds = %if.end.492, %if.then.279, %if.then.233
  %410 = load i32, i32* %step_dest, align 4
  %411 = load i8*, i8** %dest, align 8
  %idx.ext493 = sext i32 %410 to i64
  %add.ptr494 = getelementptr inbounds i8, i8* %411, i64 %idx.ext493
  store i8* %add.ptr494, i8** %dest, align 8
  %412 = load i32, i32* %step_src, align 4
  %413 = load i8*, i8** %src, align 8
  %idx.ext495 = sext i32 %412 to i64
  %add.ptr496 = getelementptr inbounds i8, i8* %413, i64 %idx.ext495
  store i8* %add.ptr496, i8** %src, align 8
  br label %for.inc.497

for.inc.497:                                      ; preds = %next_pixel
  %414 = load i32, i32* %col, align 4
  %inc498 = add nsw i32 %414, 1
  store i32 %inc498, i32* %col, align 4
  br label %for.cond.193

for.end.499:                                      ; preds = %for.cond.193
  %415 = load i32*, i32** %red_n_row, align 8
  store i32* %415, i32** %tmp, align 8
  %416 = load i32*, i32** %red_p_row, align 8
  store i32* %416, i32** %red_n_row, align 8
  %417 = load i32*, i32** %tmp, align 8
  store i32* %417, i32** %red_p_row, align 8
  %418 = load i32*, i32** %grn_n_row, align 8
  store i32* %418, i32** %tmp, align 8
  %419 = load i32*, i32** %grn_p_row, align 8
  store i32* %419, i32** %grn_n_row, align 8
  %420 = load i32*, i32** %tmp, align 8
  store i32* %420, i32** %grn_p_row, align 8
  %421 = load i32*, i32** %blu_n_row, align 8
  store i32* %421, i32** %tmp, align 8
  %422 = load i32*, i32** %blu_p_row, align 8
  store i32* %422, i32** %blu_n_row, align 8
  %423 = load i32*, i32** %tmp, align 8
  store i32* %423, i32** %blu_p_row, align 8
  %424 = load i32, i32* %odd_row, align 4
  %tobool500 = icmp ne i32 %424, 0
  %lnot = xor i1 %tobool500, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %odd_row, align 4
  %425 = load i32, i32* %row, align 4
  %426 = load i32, i32* %width, align 4
  %427 = load i8*, i8** %dest_buf, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %destPR, i32 0, i32 %425, i32 %426, i8* %427)
  %428 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %428, i32 0, i32 12
  %429 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool501 = icmp ne %struct._GimpProgress* %429, null
  br i1 %tobool501, label %land.lhs.true, label %if.end.513

land.lhs.true:                                    ; preds = %for.end.499
  %430 = load i32, i32* %row, align 4
  %rem = srem i32 %430, 16
  %cmp502 = icmp eq i32 %rem, 0
  br i1 %cmp502, label %if.then.504, label %if.end.513

if.then.504:                                      ; preds = %land.lhs.true
  %431 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress505 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %431, i32 0, i32 12
  %432 = load %struct._GimpProgress*, %struct._GimpProgress** %progress505, align 8
  %433 = load i32, i32* %nth_layer, align 4
  %conv506 = sitofp i32 %433 to double
  %434 = load i32, i32* %row, align 4
  %conv507 = sitofp i32 %434 to double
  %435 = load i32, i32* %height, align 4
  %conv508 = sitofp i32 %435 to double
  %div509 = fdiv double %conv507, %conv508
  %add510 = fadd double %conv506, %div509
  %436 = load i32, i32* %n_layers, align 4
  %conv511 = sitofp i32 %436 to double
  %div512 = fdiv double %add510, %conv511
  call void @gimp_progress_set_value(%struct._GimpProgress* %432, double %div512)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.504, %land.lhs.true, %for.end.499
  br label %for.inc.514

for.inc.514:                                      ; preds = %if.end.513
  %437 = load i32, i32* %row, align 4
  %inc515 = add nsw i32 %437, 1
  store i32 %inc515, i32* %row, align 4
  br label %for.cond.155

for.end.516:                                      ; preds = %for.cond.155
  %438 = load i32*, i32** %error_limiter, align 8
  %add.ptr517 = getelementptr inbounds i32, i32* %438, i64 -255
  %439 = bitcast i32* %add.ptr517 to i8*
  call void @g_free(i8* %439)
  %440 = load i32*, i32** %red_n_row, align 8
  %441 = bitcast i32* %440 to i8*
  call void @g_free(i8* %441)
  %442 = load i32*, i32** %red_p_row, align 8
  %443 = bitcast i32* %442 to i8*
  call void @g_free(i8* %443)
  %444 = load i32*, i32** %grn_n_row, align 8
  %445 = bitcast i32* %444 to i8*
  call void @g_free(i8* %445)
  %446 = load i32*, i32** %grn_p_row, align 8
  %447 = bitcast i32* %446 to i8*
  call void @g_free(i8* %447)
  %448 = load i32*, i32** %blu_n_row, align 8
  %449 = bitcast i32* %448 to i8*
  call void @g_free(i8* %449)
  %450 = load i32*, i32** %blu_p_row, align 8
  %451 = bitcast i32* %450 to i8*
  call void @g_free(i8* %451)
  %452 = load i8*, i8** %src_buf, align 8
  call void @g_free(i8* %452)
  %453 = load i8*, i8** %dest_buf, align 8
  call void @g_free(i8* %453)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_fixed_dither_rgb(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %pixval1 = alloca i32, align 4
  %pixval2 = alloca i32, align 4
  %color1 = alloca %struct._Color*, align 8
  %color2 = alloca %struct._Color*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  %err1 = alloca i32, align 4
  %err2 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %pr = alloca i8*, align 8
  %red_pix = alloca i32, align 4
  %green_pix = alloca i32, align 4
  %blue_pix = alloca i32, align 4
  %alpha_pix = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %total_size = alloca i64, align 8
  %layer_size = alloca i64, align 8
  %count = alloca i32, align 4
  %nth_layer = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %dmval = alloca i32, align 4
  %transparent = alloca i32, align 4
  %re = alloca i32, align 4
  %ge = alloca i32, align 4
  %be = alloca i32, align 4
  %RV = alloca i32, align 4
  %GV = alloca i32, align 4
  %BV = alloca i32, align 4
  %tmpval = alloca i32, align 4
  %proportion2 = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  store i32 0, i32* %pixval1, align 4
  store i32 0, i32* %pixval2, align 4
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %green_pix, align 4
  store i32 2, i32* %blue_pix, align 4
  store i32 3, i32* %alpha_pix, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 10
  %3 = load i32, i32* %want_alpha_dither, align 4
  store i32 %3, i32* %alpha_dither, align 4
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count2 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count2, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  store i64 0, i64* %total_size, align 8
  store i32 0, i32* %count, align 4
  %5 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %nth_layer3 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %5, i32 0, i32 13
  %6 = load i32, i32* %nth_layer3, align 4
  store i32 %6, i32* %nth_layer, align 4
  %7 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %n_layers4 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %7, i32 0, i32 14
  %8 = load i32, i32* %n_layers4, align 4
  store i32 %8, i32* %n_layers, align 4
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %11, i32* %offsetx, i32* %offsety)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  %call8 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %14)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %blue_pix, align 4
  store i32 0, i32* %green_pix, align 4
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %alpha_pix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  %call11 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %17)
  store i32 %call11, i32* %has_alpha, align 4
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_drawable_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawable*
  %call14 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %20)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call14, i32 0, i32 0, i32 %call17, i32 %call20, i32 0)
  %27 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %27, i32 0, i32 0, i32 %call23, i32 %call26, i32 1)
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %38 = bitcast %struct._GimpLayer* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %mul = mul nsw i32 %call29, %call32
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %layer_size, align 8
  %call33 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %40 = bitcast %struct._PixelRegionIterator* %call33 to i8*
  store i8* %40, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.333, %if.end
  %41 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %41, null
  br i1 %cmp, label %for.body, label %for.end.336

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  store i8* %42, i8** %src, align 8
  %data35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %43 = load i8*, i8** %data35, align 8
  store i8* %43, i8** %dest, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %44 = load i32, i32* %h, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %45 = load i32, i32* %w, align 4
  %mul36 = mul nsw i32 %44, %45
  %conv37 = sext i32 %mul36 to i64
  %46 = load i64, i64* %total_size, align 8
  %add = add nsw i64 %46, %conv37
  store i64 %add, i64* %total_size, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.315, %for.body
  %47 = load i32, i32* %row, align 4
  %h39 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %48 = load i32, i32* %h39, align 4
  %cmp40 = icmp slt i32 %47, %48
  br i1 %cmp40, label %for.body.42, label %for.end.317

for.body.42:                                      ; preds = %for.cond.38
  store i32 0, i32* %col, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body.42
  %49 = load i32, i32* %col, align 4
  %w44 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %50 = load i32, i32* %w44, align 4
  %cmp45 = icmp slt i32 %49, %50
  br i1 %cmp45, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.43
  %51 = load i32, i32* %row, align 4
  %52 = load i32, i32* %offsety, align 4
  %add48 = add nsw i32 %51, %52
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %53 = load i32, i32* %y, align 4
  %add49 = add nsw i32 %add48, %53
  %and = and i32 %add49, 31
  %idxprom = sext i32 %and to i64
  %54 = load i32, i32* %col, align 4
  %55 = load i32, i32* %offsetx, align 4
  %add50 = add nsw i32 %54, %55
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %56 = load i32, i32* %x, align 4
  %add51 = add nsw i32 %add50, %56
  %and52 = and i32 %add51, 31
  %idxprom53 = sext i32 %and52 to i64
  %arrayidx = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom53
  %arrayidx54 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i32 0, i64 %idxprom
  %57 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %57 to i32
  store i32 %conv55, i32* %dmval, align 4
  %58 = load i32, i32* %has_alpha, align 4
  %tobool56 = icmp ne i32 %58, 0
  br i1 %tobool56, label %if.then.57, label %if.end.81

if.then.57:                                       ; preds = %for.body.47
  store i32 0, i32* %transparent, align 4
  %59 = load i32, i32* %alpha_dither, align 4
  %tobool58 = icmp ne i32 %59, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then.57
  %60 = load i32, i32* %alpha_pix, align 4
  %idxprom60 = sext i32 %60 to i64
  %61 = load i8*, i8** %src, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %61, i64 %idxprom60
  %62 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %62 to i32
  %63 = load i32, i32* %dmval, align 4
  %cmp63 = icmp slt i32 %conv62, %63
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.59
  store i32 1, i32* %transparent, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.59
  br label %if.end.74

if.else:                                          ; preds = %if.then.57
  %64 = load i32, i32* %alpha_pix, align 4
  %idxprom67 = sext i32 %64 to i64
  %65 = load i8*, i8** %src, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %65, i64 %idxprom67
  %66 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %66 to i32
  %cmp70 = icmp sle i32 %conv69, 127
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else
  store i32 1, i32* %transparent, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.66
  %67 = load i32, i32* %transparent, align 4
  %tobool75 = icmp ne i32 %67, 0
  br i1 %tobool75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.end.74
  %68 = load i8*, i8** %dest, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 0, i8* %arrayidx77, align 1
  br label %next_pixel

if.else.78:                                       ; preds = %if.end.74
  %69 = load i8*, i8** %dest, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 -1, i8* %arrayidx79, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %for.body.47
  %70 = load i32, i32* %red_pix, align 4
  %idxprom82 = sext i32 %70 to i64
  %71 = load i8*, i8** %src, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %71, i64 %idxprom82
  %72 = load i8, i8* %arrayidx83, align 1
  %73 = load i32, i32* %green_pix, align 4
  %idxprom84 = sext i32 %73 to i64
  %74 = load i8*, i8** %src, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %74, i64 %idxprom84
  %75 = load i8, i8* %arrayidx85, align 1
  %76 = load i32, i32* %blue_pix, align 4
  %idxprom86 = sext i32 %76 to i64
  %77 = load i8*, i8** %src, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %77, i64 %idxprom86
  %78 = load i8, i8* %arrayidx87, align 1
  call void @rgb_to_lin(i8 zeroext %72, i8 zeroext %75, i8 zeroext %78, i32* %R, i32* %G, i32* %B)
  %79 = load i64*, i64** %histogram, align 8
  %80 = load i32, i32* %R, align 4
  %81 = load i32, i32* %G, align 4
  %82 = load i32, i32* %B, align 4
  %call88 = call i64* @HIST_LIN(i64* %79, i32 %80, i32 %81, i32 %82)
  store i64* %call88, i64** %cachep, align 8
  %83 = load i64*, i64** %cachep, align 8
  %84 = load i64, i64* %83, align 8
  %cmp89 = icmp eq i64 %84, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.81
  %85 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %86 = load i64*, i64** %histogram, align 8
  %87 = load i32, i32* %R, align 4
  %88 = load i32, i32* %G, align 4
  %89 = load i32, i32* %B, align 4
  call void @fill_inverse_cmap_rgb(%struct._QuantizeObj* %85, i64* %86, i32 %87, i32 %88, i32 %89)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.81
  %90 = load i64*, i64** %cachep, align 8
  %91 = load i64, i64* %90, align 8
  %sub = sub i64 %91, 1
  %conv93 = trunc i64 %sub to i32
  store i32 %conv93, i32* %pixval1, align 4
  %92 = load i32, i32* %pixval1, align 4
  %idxprom94 = sext i32 %92 to i64
  %93 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %93, i32 0, i32 6
  %arrayidx95 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom94
  store %struct._Color* %arrayidx95, %struct._Color** %color1, align 8
  %94 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %94, i32 0, i32 5
  %95 = load i32, i32* %actual_number_of_colors, align 4
  %cmp96 = icmp sgt i32 %95, 2
  br i1 %cmp96, label %if.then.98, label %if.end.190

if.then.98:                                       ; preds = %if.end.92
  %96 = load i32, i32* %red_pix, align 4
  %idxprom99 = sext i32 %96 to i64
  %97 = load i8*, i8** %src, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %97, i64 %idxprom99
  %98 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %98 to i32
  %99 = load %struct._Color*, %struct._Color** %color1, align 8
  %red = getelementptr inbounds %struct._Color, %struct._Color* %99, i32 0, i32 0
  %100 = load i32, i32* %red, align 4
  %sub102 = sub nsw i32 %conv101, %100
  store i32 %sub102, i32* %re, align 4
  %101 = load i32, i32* %green_pix, align 4
  %idxprom103 = sext i32 %101 to i64
  %102 = load i8*, i8** %src, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %102, i64 %idxprom103
  %103 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %103 to i32
  %104 = load %struct._Color*, %struct._Color** %color1, align 8
  %green = getelementptr inbounds %struct._Color, %struct._Color* %104, i32 0, i32 1
  %105 = load i32, i32* %green, align 4
  %sub106 = sub nsw i32 %conv105, %105
  store i32 %sub106, i32* %ge, align 4
  %106 = load i32, i32* %blue_pix, align 4
  %idxprom107 = sext i32 %106 to i64
  %107 = load i8*, i8** %src, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %107, i64 %idxprom107
  %108 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %108 to i32
  %109 = load %struct._Color*, %struct._Color** %color1, align 8
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %109, i32 0, i32 2
  %110 = load i32, i32* %blue, align 4
  %sub110 = sub nsw i32 %conv109, %110
  store i32 %sub110, i32* %be, align 4
  %111 = load i32, i32* %red_pix, align 4
  %idxprom111 = sext i32 %111 to i64
  %112 = load i8*, i8** %src, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %112, i64 %idxprom111
  %113 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %113 to i32
  %114 = load i32, i32* %re, align 4
  %add114 = add nsw i32 %conv113, %114
  store i32 %add114, i32* %RV, align 4
  %115 = load i32, i32* %green_pix, align 4
  %idxprom115 = sext i32 %115 to i64
  %116 = load i8*, i8** %src, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %116, i64 %idxprom115
  %117 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %117 to i32
  %118 = load i32, i32* %ge, align 4
  %add118 = add nsw i32 %conv117, %118
  store i32 %add118, i32* %GV, align 4
  %119 = load i32, i32* %blue_pix, align 4
  %idxprom119 = sext i32 %119 to i64
  %120 = load i8*, i8** %src, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %120, i64 %idxprom119
  %121 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %121 to i32
  %122 = load i32, i32* %be, align 4
  %add122 = add nsw i32 %conv121, %122
  store i32 %add122, i32* %BV, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.98
  %123 = load i32, i32* %RV, align 4
  %cmp123 = icmp sgt i32 %123, 255
  br i1 %cmp123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end.129

cond.false:                                       ; preds = %do.body
  %124 = load i32, i32* %RV, align 4
  %cmp125 = icmp slt i32 %124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false
  br label %cond.end

cond.false.128:                                   ; preds = %cond.false
  %125 = load i32, i32* %RV, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.128, %cond.true.127
  %cond = phi i32 [ 0, %cond.true.127 ], [ %125, %cond.false.128 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end, %cond.true
  %cond130 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv131 = trunc i32 %cond130 to i8
  %126 = load i32, i32* %GV, align 4
  %cmp132 = icmp sgt i32 %126, 255
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.129
  br label %cond.end.142

cond.false.135:                                   ; preds = %cond.end.129
  %127 = load i32, i32* %GV, align 4
  %cmp136 = icmp slt i32 %127, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.false.135
  br label %cond.end.140

cond.false.139:                                   ; preds = %cond.false.135
  %128 = load i32, i32* %GV, align 4
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi i32 [ 0, %cond.true.138 ], [ %128, %cond.false.139 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.134
  %cond143 = phi i32 [ 255, %cond.true.134 ], [ %cond141, %cond.end.140 ]
  %conv144 = trunc i32 %cond143 to i8
  %129 = load i32, i32* %BV, align 4
  %cmp145 = icmp sgt i32 %129, 255
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.end.142
  br label %cond.end.155

cond.false.148:                                   ; preds = %cond.end.142
  %130 = load i32, i32* %BV, align 4
  %cmp149 = icmp slt i32 %130, 0
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.false.148
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.false.148
  %131 = load i32, i32* %BV, align 4
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.151
  %cond154 = phi i32 [ 0, %cond.true.151 ], [ %131, %cond.false.152 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %cond.true.147
  %cond156 = phi i32 [ 255, %cond.true.147 ], [ %cond154, %cond.end.153 ]
  %conv157 = trunc i32 %cond156 to i8
  call void @rgb_to_lin(i8 zeroext %conv131, i8 zeroext %conv144, i8 zeroext %conv157, i32* %R, i32* %G, i32* %B)
  %132 = load i64*, i64** %histogram, align 8
  %133 = load i32, i32* %R, align 4
  %134 = load i32, i32* %G, align 4
  %135 = load i32, i32* %B, align 4
  %call158 = call i64* @HIST_LIN(i64* %132, i32 %133, i32 %134, i32 %135)
  store i64* %call158, i64** %cachep, align 8
  %136 = load i64*, i64** %cachep, align 8
  %137 = load i64, i64* %136, align 8
  %cmp159 = icmp eq i64 %137, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %cond.end.155
  %138 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %139 = load i64*, i64** %histogram, align 8
  %140 = load i32, i32* %R, align 4
  %141 = load i32, i32* %G, align 4
  %142 = load i32, i32* %B, align 4
  call void @fill_inverse_cmap_rgb(%struct._QuantizeObj* %138, i64* %139, i32 %140, i32 %141, i32 %142)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %cond.end.155
  %143 = load i64*, i64** %cachep, align 8
  %144 = load i64, i64* %143, align 8
  %sub163 = sub i64 %144, 1
  %conv164 = trunc i64 %sub163 to i32
  store i32 %conv164, i32* %pixval2, align 4
  %145 = load i32, i32* %re, align 4
  %146 = load i32, i32* %RV, align 4
  %add165 = add nsw i32 %146, %145
  store i32 %add165, i32* %RV, align 4
  %147 = load i32, i32* %ge, align 4
  %148 = load i32, i32* %GV, align 4
  %add166 = add nsw i32 %148, %147
  store i32 %add166, i32* %GV, align 4
  %149 = load i32, i32* %be, align 4
  %150 = load i32, i32* %BV, align 4
  %add167 = add nsw i32 %150, %149
  store i32 %add167, i32* %BV, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.162
  %151 = load i32, i32* %pixval1, align 4
  %152 = load i32, i32* %pixval2, align 4
  %cmp168 = icmp eq i32 %151, %152
  br i1 %cmp168, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %153 = load i32, i32* %RV, align 4
  %cmp170 = icmp sgt i32 %153, 255
  br i1 %cmp170, label %land.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %154 = load i32, i32* %RV, align 4
  %cmp172 = icmp slt i32 %154, 0
  br i1 %cmp172, label %land.end, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %lor.lhs.false
  %155 = load i32, i32* %GV, align 4
  %cmp175 = icmp sgt i32 %155, 255
  br i1 %cmp175, label %land.end, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.174
  %156 = load i32, i32* %GV, align 4
  %cmp178 = icmp slt i32 %156, 0
  br i1 %cmp178, label %land.end, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.177
  %157 = load i32, i32* %BV, align 4
  %cmp181 = icmp sgt i32 %157, 255
  br i1 %cmp181, label %land.end, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %lor.lhs.false.180
  %158 = load i32, i32* %BV, align 4
  %cmp184 = icmp slt i32 %158, 0
  br i1 %cmp184, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.183
  %159 = load i32, i32* %re, align 4
  %tobool186 = icmp ne i32 %159, 0
  br i1 %tobool186, label %lor.end, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %land.rhs
  %160 = load i32, i32* %ge, align 4
  %tobool188 = icmp ne i32 %160, 0
  br i1 %tobool188, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.187
  %161 = load i32, i32* %be, align 4
  %tobool189 = icmp ne i32 %161, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.187, %land.rhs
  %162 = phi i1 [ true, %lor.lhs.false.187 ], [ true, %land.rhs ], [ %tobool189, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false.183, %lor.lhs.false.180, %lor.lhs.false.177, %lor.lhs.false.174, %lor.lhs.false, %land.lhs.true, %do.cond
  %163 = phi i1 [ false, %lor.lhs.false.183 ], [ false, %lor.lhs.false.180 ], [ false, %lor.lhs.false.177 ], [ false, %lor.lhs.false.174 ], [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %162, %lor.end ]
  br i1 %163, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.190

if.end.190:                                       ; preds = %do.end, %if.end.92
  %164 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors191 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %164, i32 0, i32 5
  %165 = load i32, i32* %actual_number_of_colors191, align 4
  %cmp192 = icmp sle i32 %165, 2
  br i1 %cmp192, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %if.end.190
  %166 = load i32, i32* %pixval1, align 4
  %add195 = add nsw i32 %166, 1
  %167 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors196 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %167, i32 0, i32 5
  %168 = load i32, i32* %actual_number_of_colors196, align 4
  %rem = srem i32 %add195, %168
  store i32 %rem, i32* %pixval2, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %if.end.190
  %169 = load i32, i32* %pixval1, align 4
  %170 = load i32, i32* %pixval2, align 4
  %cmp198 = icmp sgt i32 %169, %170
  br i1 %cmp198, label %if.then.200, label %if.end.204

if.then.200:                                      ; preds = %if.end.197
  %171 = load i32, i32* %pixval1, align 4
  store i32 %171, i32* %tmpval, align 4
  %172 = load i32, i32* %pixval2, align 4
  store i32 %172, i32* %pixval1, align 4
  %173 = load i32, i32* %tmpval, align 4
  store i32 %173, i32* %pixval2, align 4
  %174 = load i32, i32* %pixval1, align 4
  %idxprom201 = sext i32 %174 to i64
  %175 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap202 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %175, i32 0, i32 6
  %arrayidx203 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap202, i32 0, i64 %idxprom201
  store %struct._Color* %arrayidx203, %struct._Color** %color1, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.200, %if.end.197
  %176 = load i32, i32* %pixval2, align 4
  %idxprom205 = sext i32 %176 to i64
  %177 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap206 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %177, i32 0, i32 6
  %arrayidx207 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap206, i32 0, i64 %idxprom205
  store %struct._Color* %arrayidx207, %struct._Color** %color2, align 8
  br label %do.body.208

do.body.208:                                      ; preds = %if.end.204
  %178 = load %struct._Color*, %struct._Color** %color1, align 8
  %red209 = getelementptr inbounds %struct._Color, %struct._Color* %178, i32 0, i32 0
  %179 = load i32, i32* %red209, align 4
  %180 = load i32, i32* %red_pix, align 4
  %idxprom210 = sext i32 %180 to i64
  %181 = load i8*, i8** %src, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %181, i64 %idxprom210
  %182 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %182 to i32
  %sub213 = sub nsw i32 %179, %conv212
  %183 = load %struct._Color*, %struct._Color** %color1, align 8
  %red214 = getelementptr inbounds %struct._Color, %struct._Color* %183, i32 0, i32 0
  %184 = load i32, i32* %red214, align 4
  %185 = load i32, i32* %red_pix, align 4
  %idxprom215 = sext i32 %185 to i64
  %186 = load i8*, i8** %src, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %186, i64 %idxprom215
  %187 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %187 to i32
  %sub218 = sub nsw i32 %184, %conv217
  %mul219 = mul nsw i32 %sub213, %sub218
  %mul220 = mul nsw i32 30, %mul219
  %188 = load %struct._Color*, %struct._Color** %color1, align 8
  %green221 = getelementptr inbounds %struct._Color, %struct._Color* %188, i32 0, i32 1
  %189 = load i32, i32* %green221, align 4
  %190 = load i32, i32* %green_pix, align 4
  %idxprom222 = sext i32 %190 to i64
  %191 = load i8*, i8** %src, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %191, i64 %idxprom222
  %192 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %192 to i32
  %sub225 = sub nsw i32 %189, %conv224
  %193 = load %struct._Color*, %struct._Color** %color1, align 8
  %green226 = getelementptr inbounds %struct._Color, %struct._Color* %193, i32 0, i32 1
  %194 = load i32, i32* %green226, align 4
  %195 = load i32, i32* %green_pix, align 4
  %idxprom227 = sext i32 %195 to i64
  %196 = load i8*, i8** %src, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %196, i64 %idxprom227
  %197 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %197 to i32
  %sub230 = sub nsw i32 %194, %conv229
  %mul231 = mul nsw i32 %sub225, %sub230
  %mul232 = mul nsw i32 59, %mul231
  %add233 = add nsw i32 %mul220, %mul232
  %198 = load %struct._Color*, %struct._Color** %color1, align 8
  %blue234 = getelementptr inbounds %struct._Color, %struct._Color* %198, i32 0, i32 2
  %199 = load i32, i32* %blue234, align 4
  %200 = load i32, i32* %blue_pix, align 4
  %idxprom235 = sext i32 %200 to i64
  %201 = load i8*, i8** %src, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %201, i64 %idxprom235
  %202 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %202 to i32
  %sub238 = sub nsw i32 %199, %conv237
  %203 = load %struct._Color*, %struct._Color** %color1, align 8
  %blue239 = getelementptr inbounds %struct._Color, %struct._Color* %203, i32 0, i32 2
  %204 = load i32, i32* %blue239, align 4
  %205 = load i32, i32* %blue_pix, align 4
  %idxprom240 = sext i32 %205 to i64
  %206 = load i8*, i8** %src, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %206, i64 %idxprom240
  %207 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %207 to i32
  %sub243 = sub nsw i32 %204, %conv242
  %mul244 = mul nsw i32 %sub238, %sub243
  %mul245 = mul nsw i32 11, %mul244
  %add246 = add nsw i32 %add233, %mul245
  %conv247 = sitofp i32 %add246 to double
  %call248 = call double @sqrt(double %conv247) #5
  %conv249 = fptosi double %call248 to i32
  store i32 %conv249, i32* %err1, align 4
  br label %do.end.251

do.end.251:                                       ; preds = %do.body.208
  br label %do.body.252

do.body.252:                                      ; preds = %do.end.251
  %208 = load %struct._Color*, %struct._Color** %color2, align 8
  %red253 = getelementptr inbounds %struct._Color, %struct._Color* %208, i32 0, i32 0
  %209 = load i32, i32* %red253, align 4
  %210 = load i32, i32* %red_pix, align 4
  %idxprom254 = sext i32 %210 to i64
  %211 = load i8*, i8** %src, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %211, i64 %idxprom254
  %212 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %212 to i32
  %sub257 = sub nsw i32 %209, %conv256
  %213 = load %struct._Color*, %struct._Color** %color2, align 8
  %red258 = getelementptr inbounds %struct._Color, %struct._Color* %213, i32 0, i32 0
  %214 = load i32, i32* %red258, align 4
  %215 = load i32, i32* %red_pix, align 4
  %idxprom259 = sext i32 %215 to i64
  %216 = load i8*, i8** %src, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %216, i64 %idxprom259
  %217 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %217 to i32
  %sub262 = sub nsw i32 %214, %conv261
  %mul263 = mul nsw i32 %sub257, %sub262
  %mul264 = mul nsw i32 30, %mul263
  %218 = load %struct._Color*, %struct._Color** %color2, align 8
  %green265 = getelementptr inbounds %struct._Color, %struct._Color* %218, i32 0, i32 1
  %219 = load i32, i32* %green265, align 4
  %220 = load i32, i32* %green_pix, align 4
  %idxprom266 = sext i32 %220 to i64
  %221 = load i8*, i8** %src, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %221, i64 %idxprom266
  %222 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %222 to i32
  %sub269 = sub nsw i32 %219, %conv268
  %223 = load %struct._Color*, %struct._Color** %color2, align 8
  %green270 = getelementptr inbounds %struct._Color, %struct._Color* %223, i32 0, i32 1
  %224 = load i32, i32* %green270, align 4
  %225 = load i32, i32* %green_pix, align 4
  %idxprom271 = sext i32 %225 to i64
  %226 = load i8*, i8** %src, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %226, i64 %idxprom271
  %227 = load i8, i8* %arrayidx272, align 1
  %conv273 = zext i8 %227 to i32
  %sub274 = sub nsw i32 %224, %conv273
  %mul275 = mul nsw i32 %sub269, %sub274
  %mul276 = mul nsw i32 59, %mul275
  %add277 = add nsw i32 %mul264, %mul276
  %228 = load %struct._Color*, %struct._Color** %color2, align 8
  %blue278 = getelementptr inbounds %struct._Color, %struct._Color* %228, i32 0, i32 2
  %229 = load i32, i32* %blue278, align 4
  %230 = load i32, i32* %blue_pix, align 4
  %idxprom279 = sext i32 %230 to i64
  %231 = load i8*, i8** %src, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %231, i64 %idxprom279
  %232 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %232 to i32
  %sub282 = sub nsw i32 %229, %conv281
  %233 = load %struct._Color*, %struct._Color** %color2, align 8
  %blue283 = getelementptr inbounds %struct._Color, %struct._Color* %233, i32 0, i32 2
  %234 = load i32, i32* %blue283, align 4
  %235 = load i32, i32* %blue_pix, align 4
  %idxprom284 = sext i32 %235 to i64
  %236 = load i8*, i8** %src, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %236, i64 %idxprom284
  %237 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %237 to i32
  %sub287 = sub nsw i32 %234, %conv286
  %mul288 = mul nsw i32 %sub282, %sub287
  %mul289 = mul nsw i32 11, %mul288
  %add290 = add nsw i32 %add277, %mul289
  %conv291 = sitofp i32 %add290 to double
  %call292 = call double @sqrt(double %conv291) #5
  %conv293 = fptosi double %call292 to i32
  store i32 %conv293, i32* %err2, align 4
  br label %do.end.295

do.end.295:                                       ; preds = %do.body.252
  %238 = load i32, i32* %err1, align 4
  %tobool296 = icmp ne i32 %238, 0
  br i1 %tobool296, label %if.then.299, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %do.end.295
  %239 = load i32, i32* %err2, align 4
  %tobool298 = icmp ne i32 %239, 0
  br i1 %tobool298, label %if.then.299, label %if.end.306

if.then.299:                                      ; preds = %lor.lhs.false.297, %do.end.295
  %240 = load i32, i32* %err2, align 4
  %mul300 = mul nsw i32 255, %240
  %241 = load i32, i32* %err1, align 4
  %242 = load i32, i32* %err2, align 4
  %add301 = add nsw i32 %241, %242
  %div = sdiv i32 %mul300, %add301
  store i32 %div, i32* %proportion2, align 4
  %243 = load i32, i32* %dmval, align 4
  %244 = load i32, i32* %proportion2, align 4
  %cmp302 = icmp sgt i32 %243, %244
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.then.299
  %245 = load i32, i32* %pixval2, align 4
  store i32 %245, i32* %pixval1, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %if.then.299
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %lor.lhs.false.297
  %246 = load i32, i32* %pixval1, align 4
  %conv307 = trunc i32 %246 to i8
  %247 = load i8*, i8** %dest, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %247, i64 0
  store i8 %conv307, i8* %arrayidx308, align 1
  %idxprom309 = zext i8 %conv307 to i64
  %248 = load i64*, i64** %index_used_count, align 8
  %arrayidx310 = getelementptr inbounds i64, i64* %248, i64 %idxprom309
  %249 = load i64, i64* %arrayidx310, align 8
  %inc = add i64 %249, 1
  store i64 %inc, i64* %arrayidx310, align 8
  br label %next_pixel

next_pixel:                                       ; preds = %if.end.306, %if.then.76
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %250 = load i32, i32* %bytes, align 4
  %251 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %250 to i64
  %add.ptr = getelementptr inbounds i8, i8* %251, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes311 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %252 = load i32, i32* %bytes311, align 4
  %253 = load i8*, i8** %dest, align 8
  %idx.ext312 = sext i32 %252 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %253, i64 %idx.ext312
  store i8* %add.ptr313, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %next_pixel
  %254 = load i32, i32* %col, align 4
  %inc314 = add nsw i32 %254, 1
  store i32 %inc314, i32* %col, align 4
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.end
  %255 = load i32, i32* %row, align 4
  %inc316 = add nsw i32 %255, 1
  store i32 %inc316, i32* %row, align 4
  br label %for.cond.38

for.end.317:                                      ; preds = %for.cond.38
  %256 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %256, i32 0, i32 12
  %257 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool318 = icmp ne %struct._GimpProgress* %257, null
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.332

land.lhs.true.319:                                ; preds = %for.end.317
  %258 = load i32, i32* %count, align 4
  %rem320 = srem i32 %258, 16
  %cmp321 = icmp eq i32 %rem320, 0
  br i1 %cmp321, label %if.then.323, label %if.end.332

if.then.323:                                      ; preds = %land.lhs.true.319
  %259 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress324 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %259, i32 0, i32 12
  %260 = load %struct._GimpProgress*, %struct._GimpProgress** %progress324, align 8
  %261 = load i32, i32* %nth_layer, align 4
  %conv325 = sitofp i32 %261 to double
  %262 = load i64, i64* %total_size, align 8
  %conv326 = sitofp i64 %262 to double
  %263 = load i64, i64* %layer_size, align 8
  %conv327 = sitofp i64 %263 to double
  %div328 = fdiv double %conv326, %conv327
  %add329 = fadd double %conv325, %div328
  %264 = load i32, i32* %n_layers, align 4
  %conv330 = sitofp i32 %264 to double
  %div331 = fdiv double %add329, %conv330
  call void @gimp_progress_set_value(%struct._GimpProgress* %260, double %div331)
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.323, %land.lhs.true.319, %for.end.317
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %265 = load i8*, i8** %pr, align 8
  %266 = bitcast i8* %265 to %struct._PixelRegionIterator*
  %call334 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %266)
  %267 = bitcast %struct._PixelRegionIterator* %call334 to i8*
  store i8* %267, i8** %pr, align 8
  %268 = load i32, i32* %count, align 4
  %inc335 = add nsw i32 %268, 1
  store i32 %inc335, i32* %count, align 4
  br label %for.cond

for.end.336:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_gray_init(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram, align 8
  call void @zero_histogram_gray(i64* %1)
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 8
  %3 = bitcast [256 x i64]* %index_used_count to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 2048, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_no_dither_gray(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %pixel = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %alpha_dither = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %pr = alloca i8*, align 8
  %transparent = alloca i32, align 4
  %dither_x = alloca i32, align 4
  %dither_y = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count2 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count2, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  %3 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %3, i32 0, i32 10
  %4 = load i32, i32* %want_alpha_dither, align 4
  store i32 %4, i32* %alpha_dither, align 4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %7, i32* %offsetx, i32* %offsety)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %call6 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %10)
  store i32 %call6, i32* %has_alpha, align 4
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_drawable_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawable*
  %call9 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %13)
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %19)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call9, i32 0, i32 0, i32 %call12, i32 %call15, i32 0)
  %20 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %20, i32 0, i32 0, i32 %call18, i32 %call21, i32 1)
  %call22 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %27 = bitcast %struct._PixelRegionIterator* %call22 to i8*
  store i8* %27, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %entry
  %28 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %28, null
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  store i8* %29, i8** %src, align 8
  %data23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %30 = load i8*, i8** %data23, align 8
  store i8* %30, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.80, %for.body
  %31 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %32 = load i32, i32* %h, align 4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body.26, label %for.end.82

for.body.26:                                      ; preds = %for.cond.24
  store i32 0, i32* %col, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body.26
  %33 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %34 = load i32, i32* %w, align 4
  %cmp28 = icmp slt i32 %33, %34
  br i1 %cmp28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %35 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %36 to i32
  store i32 %conv, i32* %pixel, align 4
  %37 = load i32, i32* %pixel, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load i64*, i64** %histogram, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %38, i64 %idxprom
  store i64* %arrayidx30, i64** %cachep, align 8
  %39 = load i64*, i64** %cachep, align 8
  %40 = load i64, i64* %39, align 8
  %cmp31 = icmp eq i64 %40, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.29
  %41 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %42 = load i64*, i64** %histogram, align 8
  %43 = load i32, i32* %pixel, align 4
  call void @fill_inverse_cmap_gray(%struct._QuantizeObj* %41, i64* %42, i32 %43)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.29
  %44 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.33, label %if.else.68

if.then.33:                                       ; preds = %if.end
  store i32 0, i32* %transparent, align 4
  %45 = load i32, i32* %alpha_dither, align 4
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.33
  %46 = load i32, i32* %col, align 4
  %47 = load i32, i32* %offsetx, align 4
  %add = add nsw i32 %46, %47
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %48 = load i32, i32* %x, align 4
  %add36 = add nsw i32 %add, %48
  %and = and i32 %add36, 31
  store i32 %and, i32* %dither_x, align 4
  %49 = load i32, i32* %row, align 4
  %50 = load i32, i32* %offsety, align 4
  %add37 = add nsw i32 %49, %50
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %51 = load i32, i32* %y, align 4
  %add38 = add nsw i32 %add37, %51
  %and39 = and i32 %add38, 31
  store i32 %and39, i32* %dither_y, align 4
  %52 = load i8*, i8** %src, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %53 to i32
  %54 = load i32, i32* %dither_y, align 4
  %idxprom42 = sext i32 %54 to i64
  %55 = load i32, i32* %dither_x, align 4
  %idxprom43 = sext i32 %55 to i64
  %arrayidx44 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx44, i32 0, i64 %idxprom42
  %56 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %56 to i32
  %cmp47 = icmp slt i32 %conv41, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.35
  store i32 1, i32* %transparent, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.35
  br label %if.end.57

if.else:                                          ; preds = %if.then.33
  %57 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %58 to i32
  %cmp53 = icmp sle i32 %conv52, 127
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else
  store i32 1, i32* %transparent, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.50
  %59 = load i32, i32* %transparent, align 4
  %tobool58 = icmp ne i32 %59, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.end.57
  %60 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %arrayidx60, align 1
  br label %if.end.67

if.else.61:                                       ; preds = %if.end.57
  %61 = load i8*, i8** %dest, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 -1, i8* %arrayidx62, align 1
  %62 = load i64*, i64** %cachep, align 8
  %63 = load i64, i64* %62, align 8
  %sub = sub i64 %63, 1
  %conv63 = trunc i64 %sub to i8
  %64 = load i8*, i8** %dest, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %conv63, i8* %arrayidx64, align 1
  %idxprom65 = zext i8 %conv63 to i64
  %65 = load i64*, i64** %index_used_count, align 8
  %arrayidx66 = getelementptr inbounds i64, i64* %65, i64 %idxprom65
  %66 = load i64, i64* %arrayidx66, align 8
  %inc = add i64 %66, 1
  store i64 %inc, i64* %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.75

if.else.68:                                       ; preds = %if.end
  %67 = load i64*, i64** %cachep, align 8
  %68 = load i64, i64* %67, align 8
  %sub69 = sub i64 %68, 1
  %conv70 = trunc i64 %sub69 to i8
  %69 = load i8*, i8** %dest, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %conv70, i8* %arrayidx71, align 1
  %idxprom72 = zext i8 %conv70 to i64
  %70 = load i64*, i64** %index_used_count, align 8
  %arrayidx73 = getelementptr inbounds i64, i64* %70, i64 %idxprom72
  %71 = load i64, i64* %arrayidx73, align 8
  %inc74 = add i64 %71, 1
  store i64 %inc74, i64* %arrayidx73, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.68, %if.end.67
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %72 = load i32, i32* %bytes, align 4
  %73 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes76 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %74 = load i32, i32* %bytes76, align 4
  %75 = load i8*, i8** %dest, align 8
  %idx.ext77 = sext i32 %74 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %75, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %76 = load i32, i32* %col, align 4
  %inc79 = add nsw i32 %76, 1
  store i32 %inc79, i32* %col, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %77 = load i32, i32* %row, align 4
  %inc81 = add nsw i32 %77, 1
  store i32 %inc81, i32* %row, align 4
  br label %for.cond.24

for.end.82:                                       ; preds = %for.cond.24
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %78 = load i8*, i8** %pr, align 8
  %79 = bitcast i8* %78 to %struct._PixelRegionIterator*
  %call84 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %79)
  %80 = bitcast %struct._PixelRegionIterator* %call84 to i8*
  store i8* %80, i8** %pr, align 8
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_fs_dither_gray(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %color = alloca %struct._Color*, align 8
  %error_limiter = alloca i32*, align 8
  %fs_err1 = alloca i16*, align 8
  %fs_err2 = alloca i16*, align 8
  %fs_err3 = alloca i16*, align 8
  %fs_err4 = alloca i16*, align 8
  %range_limiter = alloca i8*, align 8
  %src_bytes = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %src_buf = alloca i8*, align 8
  %dest_buf = alloca i8*, align 8
  %next_row = alloca i32*, align 8
  %prev_row = alloca i32*, align 8
  %nr = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  %pixel = alloca i32, align 4
  %pixele = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %index = alloca i32, align 4
  %step_dest = alloca i32, align 4
  %step_src = alloca i32, align 4
  %odd_row = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %transparent = alloca i32, align 4
  %dither_x = alloca i32, align 4
  %dither_y = alloca i32, align 4
  %dither_x134 = alloca i32, align 4
  %dither_y138 = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 10
  %3 = load i32, i32* %want_alpha_dither, align 4
  store i32 %3, i32* %alpha_dither, align 4
  %4 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count17 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %4, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count17, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %7, i32* %offsetx, i32* %offsety)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_drawable_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call19)
  %10 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawable*
  %call21 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %10)
  store i32 %call21, i32* %has_alpha, align 4
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_drawable_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call22)
  %13 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawable*
  %call24 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %13)
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call25)
  %16 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call28)
  %19 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call i32 @gimp_item_get_height(%struct._GimpItem* %19)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call24, i32 0, i32 0, i32 %call27, i32 %call30, i32 0)
  %20 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call31)
  %23 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call34)
  %26 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %20, i32 0, i32 0, i32 %call33, i32 %call36, i32 1)
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %28 = bitcast %struct._GimpLayer* %27 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_drawable_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call37)
  %29 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawable*
  %call39 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %29)
  store i32 %call39, i32* %src_bytes, align 4
  %30 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call40 = call i32 @tile_manager_bpp(%struct._TileManager* %30)
  store i32 %call40, i32* %dest_bytes, align 4
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call41)
  %33 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_get_width(%struct._GimpItem* %33)
  store i32 %call43, i32* %width, align 4
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call44)
  %36 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %call46 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  store i32 %call46, i32* %height, align 4
  %37 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %error_freedom = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %37, i32 0, i32 11
  %38 = load i32, i32* %error_freedom, align 4
  %call47 = call i32* @init_error_limit(i32 %38)
  store i32* %call47, i32** %error_limiter, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @range_array, i32 0, i64 256), i8** %range_limiter, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %src_bytes, align 4
  %mul = mul nsw i32 %39, %40
  %conv = sext i32 %mul to i64
  %call48 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call48, i8** %src_buf, align 8
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %dest_bytes, align 4
  %mul49 = mul nsw i32 %41, %42
  %conv50 = sext i32 %mul49 to i64
  %call51 = call noalias i8* @g_malloc(i64 %conv50)
  store i8* %call51, i8** %dest_buf, align 8
  %43 = load i32, i32* %width, align 4
  %add = add nsw i32 %43, 2
  %conv52 = sext i32 %add to i64
  %call53 = call noalias i8* @g_malloc_n(i64 %conv52, i64 4)
  %44 = bitcast i8* %call53 to i32*
  store i32* %44, i32** %next_row, align 8
  %45 = load i32, i32* %width, align 4
  %add54 = add nsw i32 %45, 2
  %conv55 = sext i32 %add54 to i64
  %call56 = call noalias i8* @g_malloc0_n(i64 %conv55, i64 4)
  %46 = bitcast i8* %call56 to i32*
  store i32* %46, i32** %prev_row, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error1, i32 0, i64 511), i16** %fs_err1, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error2, i32 0, i64 511), i16** %fs_err2, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error3, i32 0, i64 511), i16** %fs_err3, align 8
  store i16* getelementptr inbounds ([1025 x i16], [1025 x i16]* @floyd_steinberg_error4, i32 0, i64 511), i16** %fs_err4, align 8
  store i32 0, i32* %odd_row, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.226, %entry
  %47 = load i32, i32* %row, align 4
  %48 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %47, %48
  br i1 %cmp, label %for.body, label %for.end.228

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %row, align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i8*, i8** %src_buf, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %srcPR, i32 0, i32 %49, i32 %50, i8* %51, i32 1)
  %52 = load i8*, i8** %src_buf, align 8
  store i8* %52, i8** %src, align 8
  %53 = load i8*, i8** %dest_buf, align 8
  store i8* %53, i8** %dest, align 8
  %54 = load i32*, i32** %next_row, align 8
  store i32* %54, i32** %nr, align 8
  %55 = load i32*, i32** %prev_row, align 8
  %add.ptr = getelementptr inbounds i32, i32* %55, i64 1
  store i32* %add.ptr, i32** %pr, align 8
  %56 = load i32, i32* %odd_row, align 4
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %57 = load i32, i32* %dest_bytes, align 4
  %sub = sub nsw i32 0, %57
  store i32 %sub, i32* %step_dest, align 4
  %58 = load i32, i32* %src_bytes, align 4
  %sub58 = sub nsw i32 0, %58
  store i32 %sub58, i32* %step_src, align 4
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %src_bytes, align 4
  %mul59 = mul nsw i32 %59, %60
  %61 = load i32, i32* %src_bytes, align 4
  %sub60 = sub nsw i32 %mul59, %61
  %62 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %sub60 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr61, i8** %src, align 8
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %dest_bytes, align 4
  %mul62 = mul nsw i32 %63, %64
  %65 = load i32, i32* %dest_bytes, align 4
  %sub63 = sub nsw i32 %mul62, %65
  %66 = load i8*, i8** %dest, align 8
  %idx.ext64 = sext i32 %sub63 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %66, i64 %idx.ext64
  store i8* %add.ptr65, i8** %dest, align 8
  %67 = load i32, i32* %width, align 4
  %add66 = add nsw i32 %67, 1
  %68 = load i32*, i32** %nr, align 8
  %idx.ext67 = sext i32 %add66 to i64
  %add.ptr68 = getelementptr inbounds i32, i32* %68, i64 %idx.ext67
  store i32* %add.ptr68, i32** %nr, align 8
  %69 = load i32, i32* %width, align 4
  %70 = load i32*, i32** %pr, align 8
  %idx.ext69 = sext i32 %69 to i64
  %add.ptr70 = getelementptr inbounds i32, i32* %70, i64 %idx.ext69
  store i32* %add.ptr70, i32** %pr, align 8
  %71 = load i32*, i32** %nr, align 8
  %add.ptr71 = getelementptr inbounds i32, i32* %71, i64 -1
  store i32 0, i32* %add.ptr71, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %72 = load i32, i32* %dest_bytes, align 4
  store i32 %72, i32* %step_dest, align 4
  %73 = load i32, i32* %src_bytes, align 4
  store i32 %73, i32* %step_src, align 4
  %74 = load i32*, i32** %nr, align 8
  %add.ptr72 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %add.ptr72, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %75 = load i32*, i32** %nr, align 8
  store i32 0, i32* %75, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.end
  %76 = load i32, i32* %col, align 4
  %77 = load i32, i32* %width, align 4
  %cmp74 = icmp slt i32 %76, %77
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.73
  %78 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx, align 1
  %conv77 = zext i8 %79 to i32
  %80 = load i32*, i32** %pr, align 8
  %81 = load i32, i32* %80, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load i32*, i32** %error_limiter, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %82, i64 %idxprom
  %83 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %conv77, %83
  %idxprom80 = sext i32 %add79 to i64
  %84 = load i8*, i8** %range_limiter, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %84, i64 %idxprom80
  %85 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %85 to i32
  store i32 %conv82, i32* %pixel, align 4
  %86 = load i32, i32* %pixel, align 4
  %idxprom83 = sext i32 %86 to i64
  %87 = load i64*, i64** %histogram, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %87, i64 %idxprom83
  store i64* %arrayidx84, i64** %cachep, align 8
  %88 = load i64*, i64** %cachep, align 8
  %89 = load i64, i64* %88, align 8
  %cmp85 = icmp eq i64 %89, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.76
  %90 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %91 = load i64*, i64** %histogram, align 8
  %92 = load i32, i32* %pixel, align 4
  call void @fill_inverse_cmap_gray(%struct._QuantizeObj* %90, i64* %91, i32 %92)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %for.body.76
  %93 = load i32, i32* %has_alpha, align 4
  %tobool89 = icmp ne i32 %93, 0
  br i1 %tobool89, label %if.then.90, label %if.end.170

if.then.90:                                       ; preds = %if.end.88
  store i32 0, i32* %transparent, align 4
  %94 = load i32, i32* %odd_row, align 4
  %tobool92 = icmp ne i32 %94, 0
  br i1 %tobool92, label %if.then.93, label %if.else.130

if.then.93:                                       ; preds = %if.then.90
  %95 = load i32, i32* %alpha_dither, align 4
  %tobool94 = icmp ne i32 %95, 0
  br i1 %tobool94, label %if.then.95, label %if.else.114

if.then.95:                                       ; preds = %if.then.93
  %96 = load i32, i32* %width, align 4
  %97 = load i32, i32* %col, align 4
  %sub97 = sub nsw i32 %96, %97
  %98 = load i32, i32* %offsetx, align 4
  %add98 = add nsw i32 %sub97, %98
  %sub99 = sub nsw i32 %add98, 1
  %and = and i32 %sub99, 31
  store i32 %and, i32* %dither_x, align 4
  %99 = load i32, i32* %row, align 4
  %100 = load i32, i32* %offsety, align 4
  %add101 = add nsw i32 %99, %100
  %and102 = and i32 %add101, 31
  store i32 %and102, i32* %dither_y, align 4
  %101 = load i8*, i8** %src, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %102 to i32
  %103 = load i32, i32* %dither_y, align 4
  %idxprom105 = sext i32 %103 to i64
  %104 = load i32, i32* %dither_x, align 4
  %idxprom106 = sext i32 %104 to i64
  %arrayidx107 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx107, i32 0, i64 %idxprom105
  %105 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %105 to i32
  %cmp110 = icmp slt i32 %conv104, %conv109
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.95
  store i32 1, i32* %transparent, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.95
  br label %if.end.121

if.else.114:                                      ; preds = %if.then.93
  %106 = load i8*, i8** %src, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %107 to i32
  %cmp117 = icmp sle i32 %conv116, 127
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.else.114
  store i32 1, i32* %transparent, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.else.114
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.113
  %108 = load i32, i32* %transparent, align 4
  %tobool122 = icmp ne i32 %108, 0
  br i1 %tobool122, label %if.then.123, label %if.else.127

if.then.123:                                      ; preds = %if.end.121
  %109 = load i8*, i8** %dest, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 0, i8* %arrayidx124, align 1
  %110 = load i32*, i32** %pr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %incdec.ptr, i32** %pr, align 8
  %111 = load i32*, i32** %nr, align 8
  %incdec.ptr125 = getelementptr inbounds i32, i32* %111, i32 -1
  store i32* %incdec.ptr125, i32** %nr, align 8
  %112 = load i32*, i32** %nr, align 8
  %add.ptr126 = getelementptr inbounds i32, i32* %112, i64 -1
  store i32 0, i32* %add.ptr126, align 4
  br label %next_pixel

if.else.127:                                      ; preds = %if.end.121
  %113 = load i8*, i8** %dest, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 -1, i8* %arrayidx128, align 1
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127
  br label %if.end.169

if.else.130:                                      ; preds = %if.then.90
  %114 = load i32, i32* %alpha_dither, align 4
  %tobool131 = icmp ne i32 %114, 0
  br i1 %tobool131, label %if.then.132, label %if.else.152

if.then.132:                                      ; preds = %if.else.130
  %115 = load i32, i32* %col, align 4
  %116 = load i32, i32* %offsetx, align 4
  %add135 = add nsw i32 %115, %116
  %and136 = and i32 %add135, 31
  store i32 %and136, i32* %dither_x134, align 4
  %117 = load i32, i32* %row, align 4
  %118 = load i32, i32* %offsety, align 4
  %add139 = add nsw i32 %117, %118
  %and140 = and i32 %add139, 31
  store i32 %and140, i32* %dither_y138, align 4
  %119 = load i8*, i8** %src, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %120 to i32
  %121 = load i32, i32* %dither_y138, align 4
  %idxprom143 = sext i32 %121 to i64
  %122 = load i32, i32* %dither_x134, align 4
  %idxprom144 = sext i32 %122 to i64
  %arrayidx145 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx145, i32 0, i64 %idxprom143
  %123 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %123 to i32
  %cmp148 = icmp slt i32 %conv142, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.132
  store i32 1, i32* %transparent, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.then.132
  br label %if.end.159

if.else.152:                                      ; preds = %if.else.130
  %124 = load i8*, i8** %src, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %124, i64 1
  %125 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %125 to i32
  %cmp155 = icmp sle i32 %conv154, 127
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.else.152
  store i32 1, i32* %transparent, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.else.152
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.151
  %126 = load i32, i32* %transparent, align 4
  %tobool160 = icmp ne i32 %126, 0
  br i1 %tobool160, label %if.then.161, label %if.else.166

if.then.161:                                      ; preds = %if.end.159
  %127 = load i8*, i8** %dest, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %127, i64 1
  store i8 0, i8* %arrayidx162, align 1
  %128 = load i32*, i32** %pr, align 8
  %incdec.ptr163 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr163, i32** %pr, align 8
  %129 = load i32*, i32** %nr, align 8
  %incdec.ptr164 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr164, i32** %nr, align 8
  %130 = load i32*, i32** %nr, align 8
  %add.ptr165 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %add.ptr165, align 4
  br label %next_pixel

if.else.166:                                      ; preds = %if.end.159
  %131 = load i8*, i8** %dest, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 -1, i8* %arrayidx167, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.129
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.88
  %132 = load i64*, i64** %cachep, align 8
  %133 = load i64, i64* %132, align 8
  %sub171 = sub i64 %133, 1
  %conv172 = trunc i64 %sub171 to i32
  store i32 %conv172, i32* %index, align 4
  %134 = load i32, i32* %index, align 4
  %conv173 = trunc i32 %134 to i8
  %135 = load i8*, i8** %dest, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 %conv173, i8* %arrayidx174, align 1
  %idxprom175 = zext i8 %conv173 to i64
  %136 = load i64*, i64** %index_used_count, align 8
  %arrayidx176 = getelementptr inbounds i64, i64* %136, i64 %idxprom175
  %137 = load i64, i64* %arrayidx176, align 8
  %inc = add i64 %137, 1
  store i64 %inc, i64* %arrayidx176, align 8
  %138 = load i32, i32* %index, align 4
  %idxprom177 = sext i32 %138 to i64
  %139 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %139, i32 0, i32 6
  %arrayidx178 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom177
  store %struct._Color* %arrayidx178, %struct._Color** %color, align 8
  %140 = load i32, i32* %pixel, align 4
  %141 = load %struct._Color*, %struct._Color** %color, align 8
  %red = getelementptr inbounds %struct._Color, %struct._Color* %141, i32 0, i32 0
  %142 = load i32, i32* %red, align 4
  %sub179 = sub nsw i32 %140, %142
  store i32 %sub179, i32* %pixele, align 4
  %143 = load i32, i32* %odd_row, align 4
  %tobool180 = icmp ne i32 %143, 0
  br i1 %tobool180, label %if.then.181, label %if.else.200

if.then.181:                                      ; preds = %if.end.170
  %144 = load i32, i32* %pixele, align 4
  %idxprom182 = sext i32 %144 to i64
  %145 = load i16*, i16** %fs_err1, align 8
  %arrayidx183 = getelementptr inbounds i16, i16* %145, i64 %idxprom182
  %146 = load i16, i16* %arrayidx183, align 2
  %conv184 = sext i16 %146 to i32
  %147 = load i32*, i32** %pr, align 8
  %incdec.ptr185 = getelementptr inbounds i32, i32* %147, i32 -1
  store i32* %incdec.ptr185, i32** %pr, align 8
  %148 = load i32, i32* %incdec.ptr185, align 4
  %add186 = add nsw i32 %148, %conv184
  store i32 %add186, i32* %incdec.ptr185, align 4
  %149 = load i32, i32* %pixele, align 4
  %idxprom187 = sext i32 %149 to i64
  %150 = load i16*, i16** %fs_err2, align 8
  %arrayidx188 = getelementptr inbounds i16, i16* %150, i64 %idxprom187
  %151 = load i16, i16* %arrayidx188, align 2
  %conv189 = sext i16 %151 to i32
  %152 = load i32*, i32** %nr, align 8
  %incdec.ptr190 = getelementptr inbounds i32, i32* %152, i32 -1
  store i32* %incdec.ptr190, i32** %nr, align 8
  %153 = load i32, i32* %152, align 4
  %add191 = add nsw i32 %153, %conv189
  store i32 %add191, i32* %152, align 4
  %154 = load i32, i32* %pixele, align 4
  %idxprom192 = sext i32 %154 to i64
  %155 = load i16*, i16** %fs_err3, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %155, i64 %idxprom192
  %156 = load i16, i16* %arrayidx193, align 2
  %conv194 = sext i16 %156 to i32
  %157 = load i32*, i32** %nr, align 8
  %158 = load i32, i32* %157, align 4
  %add195 = add nsw i32 %158, %conv194
  store i32 %add195, i32* %157, align 4
  %159 = load i32, i32* %pixele, align 4
  %idxprom196 = sext i32 %159 to i64
  %160 = load i16*, i16** %fs_err4, align 8
  %arrayidx197 = getelementptr inbounds i16, i16* %160, i64 %idxprom196
  %161 = load i16, i16* %arrayidx197, align 2
  %conv198 = sext i16 %161 to i32
  %162 = load i32*, i32** %nr, align 8
  %add.ptr199 = getelementptr inbounds i32, i32* %162, i64 -1
  store i32 %conv198, i32* %add.ptr199, align 4
  br label %if.end.219

if.else.200:                                      ; preds = %if.end.170
  %163 = load i32, i32* %pixele, align 4
  %idxprom201 = sext i32 %163 to i64
  %164 = load i16*, i16** %fs_err1, align 8
  %arrayidx202 = getelementptr inbounds i16, i16* %164, i64 %idxprom201
  %165 = load i16, i16* %arrayidx202, align 2
  %conv203 = sext i16 %165 to i32
  %166 = load i32*, i32** %pr, align 8
  %incdec.ptr204 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %incdec.ptr204, i32** %pr, align 8
  %167 = load i32, i32* %incdec.ptr204, align 4
  %add205 = add nsw i32 %167, %conv203
  store i32 %add205, i32* %incdec.ptr204, align 4
  %168 = load i32, i32* %pixele, align 4
  %idxprom206 = sext i32 %168 to i64
  %169 = load i16*, i16** %fs_err2, align 8
  %arrayidx207 = getelementptr inbounds i16, i16* %169, i64 %idxprom206
  %170 = load i16, i16* %arrayidx207, align 2
  %conv208 = sext i16 %170 to i32
  %171 = load i32*, i32** %nr, align 8
  %incdec.ptr209 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %incdec.ptr209, i32** %nr, align 8
  %172 = load i32, i32* %171, align 4
  %add210 = add nsw i32 %172, %conv208
  store i32 %add210, i32* %171, align 4
  %173 = load i32, i32* %pixele, align 4
  %idxprom211 = sext i32 %173 to i64
  %174 = load i16*, i16** %fs_err3, align 8
  %arrayidx212 = getelementptr inbounds i16, i16* %174, i64 %idxprom211
  %175 = load i16, i16* %arrayidx212, align 2
  %conv213 = sext i16 %175 to i32
  %176 = load i32*, i32** %nr, align 8
  %177 = load i32, i32* %176, align 4
  %add214 = add nsw i32 %177, %conv213
  store i32 %add214, i32* %176, align 4
  %178 = load i32, i32* %pixele, align 4
  %idxprom215 = sext i32 %178 to i64
  %179 = load i16*, i16** %fs_err4, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %179, i64 %idxprom215
  %180 = load i16, i16* %arrayidx216, align 2
  %conv217 = sext i16 %180 to i32
  %181 = load i32*, i32** %nr, align 8
  %add.ptr218 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 %conv217, i32* %add.ptr218, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.200, %if.then.181
  br label %next_pixel

next_pixel:                                       ; preds = %if.end.219, %if.then.161, %if.then.123
  %182 = load i32, i32* %step_dest, align 4
  %183 = load i8*, i8** %dest, align 8
  %idx.ext220 = sext i32 %182 to i64
  %add.ptr221 = getelementptr inbounds i8, i8* %183, i64 %idx.ext220
  store i8* %add.ptr221, i8** %dest, align 8
  %184 = load i32, i32* %step_src, align 4
  %185 = load i8*, i8** %src, align 8
  %idx.ext222 = sext i32 %184 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %185, i64 %idx.ext222
  store i8* %add.ptr223, i8** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %next_pixel
  %186 = load i32, i32* %col, align 4
  %inc224 = add nsw i32 %186, 1
  store i32 %inc224, i32* %col, align 4
  br label %for.cond.73

for.end:                                          ; preds = %for.cond.73
  %187 = load i32*, i32** %next_row, align 8
  store i32* %187, i32** %tmp, align 8
  %188 = load i32*, i32** %prev_row, align 8
  store i32* %188, i32** %next_row, align 8
  %189 = load i32*, i32** %tmp, align 8
  store i32* %189, i32** %prev_row, align 8
  %190 = load i32, i32* %odd_row, align 4
  %tobool225 = icmp ne i32 %190, 0
  %lnot = xor i1 %tobool225, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %odd_row, align 4
  %191 = load i32, i32* %row, align 4
  %192 = load i32, i32* %width, align 4
  %193 = load i8*, i8** %dest_buf, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %destPR, i32 0, i32 %191, i32 %192, i8* %193)
  br label %for.inc.226

for.inc.226:                                      ; preds = %for.end
  %194 = load i32, i32* %row, align 4
  %inc227 = add nsw i32 %194, 1
  store i32 %inc227, i32* %row, align 4
  br label %for.cond

for.end.228:                                      ; preds = %for.cond
  %195 = load i32*, i32** %error_limiter, align 8
  %add.ptr229 = getelementptr inbounds i32, i32* %195, i64 -255
  %196 = bitcast i32* %add.ptr229 to i8*
  call void @g_free(i8* %196)
  %197 = load i32*, i32** %next_row, align 8
  %198 = bitcast i32* %197 to i8*
  call void @g_free(i8* %198)
  %199 = load i32*, i32** %prev_row, align 8
  %200 = bitcast i32* %199 to i8*
  call void @g_free(i8* %200)
  %201 = load i8*, i8** %src_buf, align 8
  call void @g_free(i8* %201)
  %202 = load i8*, i8** %dest_buf, align 8
  call void @g_free(i8* %202)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_fixed_dither_gray(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %histogram = alloca i64*, align 8
  %cachep = alloca i64*, align 8
  %pixval1 = alloca i32, align 4
  %pixval2 = alloca i32, align 4
  %err1 = alloca i32, align 4
  %err2 = alloca i32, align 4
  %color1 = alloca %struct._Color*, align 8
  %color2 = alloca %struct._Color*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %pixel = alloca i32, align 4
  %index_used_count = alloca i64*, align 8
  %has_alpha = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %pr = alloca i8*, align 8
  %dmval = alloca i32, align 4
  %re = alloca i32, align 4
  %RV = alloca i32, align 4
  %R = alloca i32, align 4
  %tmpval = alloca i32, align 4
  %proportion2 = alloca i32, align 4
  %transparent = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram1, align 8
  store i64* %1, i64** %histogram, align 8
  store i32 0, i32* %pixval1, align 4
  store i32 0, i32* %pixval2, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %index_used_count2 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %index_used_count2, i32 0, i32 0
  store i64* %arraydecay, i64** %index_used_count, align 8
  %3 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %3, i32 0, i32 10
  %4 = load i32, i32* %want_alpha_dither, align 4
  store i32 %4, i32* %alpha_dither, align 4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %7, i32* %offsetx, i32* %offsety)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %call6 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %10)
  store i32 %call6, i32* %has_alpha, align 4
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_drawable_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawable*
  %call9 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %13)
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %19)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call9, i32 0, i32 0, i32 %call12, i32 %call15, i32 0)
  %20 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %20, i32 0, i32 0, i32 %call18, i32 %call21, i32 1)
  %call22 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %27 = bitcast %struct._PixelRegionIterator* %call22 to i8*
  store i8* %27, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.181, %entry
  %28 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %28, null
  br i1 %cmp, label %for.body, label %for.end.183

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  store i8* %29, i8** %src, align 8
  %data23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %30 = load i8*, i8** %data23, align 8
  store i8* %30, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.178, %for.body
  %31 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %32 = load i32, i32* %h, align 4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body.26, label %for.end.180

for.body.26:                                      ; preds = %for.cond.24
  store i32 0, i32* %col, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body.26
  %33 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %34 = load i32, i32* %w, align 4
  %cmp28 = icmp slt i32 %33, %34
  br i1 %cmp28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %35 = load i32, i32* %row, align 4
  %36 = load i32, i32* %offsety, align 4
  %add = add nsw i32 %35, %36
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %37 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %add, %37
  %and = and i32 %add30, 31
  %idxprom = sext i32 %and to i64
  %38 = load i32, i32* %col, align 4
  %39 = load i32, i32* %offsetx, align 4
  %add31 = add nsw i32 %38, %39
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %40 = load i32, i32* %x, align 4
  %add32 = add nsw i32 %add31, %40
  %and33 = and i32 %add32, 31
  %idxprom34 = sext i32 %and33 to i64
  %arrayidx = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom34
  %arrayidx35 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i32 0, i64 %idxprom
  %41 = load i8, i8* %arrayidx35, align 1
  %conv = zext i8 %41 to i32
  store i32 %conv, i32* %dmval, align 4
  %42 = load i8*, i8** %src, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %43 to i32
  store i32 %conv37, i32* %pixel, align 4
  %44 = load i32, i32* %pixel, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load i64*, i64** %histogram, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %45, i64 %idxprom38
  store i64* %arrayidx39, i64** %cachep, align 8
  %46 = load i64*, i64** %cachep, align 8
  %47 = load i64, i64* %46, align 8
  %cmp40 = icmp eq i64 %47, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.29
  %48 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %49 = load i64*, i64** %histogram, align 8
  %50 = load i32, i32* %pixel, align 4
  call void @fill_inverse_cmap_gray(%struct._QuantizeObj* %48, i64* %49, i32 %50)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.29
  %51 = load i64*, i64** %cachep, align 8
  %52 = load i64, i64* %51, align 8
  %sub = sub i64 %52, 1
  %conv42 = trunc i64 %sub to i32
  store i32 %conv42, i32* %pixval1, align 4
  %53 = load i32, i32* %pixval1, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %54, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom43
  store %struct._Color* %arrayidx44, %struct._Color** %color1, align 8
  %55 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %55, i32 0, i32 5
  %56 = load i32, i32* %actual_number_of_colors, align 4
  %cmp45 = icmp sgt i32 %56, 2
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end
  %57 = load i8*, i8** %src, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %58 to i32
  %59 = load %struct._Color*, %struct._Color** %color1, align 8
  %red = getelementptr inbounds %struct._Color, %struct._Color* %59, i32 0, i32 0
  %60 = load i32, i32* %red, align 4
  %sub50 = sub nsw i32 %conv49, %60
  store i32 %sub50, i32* %re, align 4
  %61 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %62 to i32
  %63 = load i32, i32* %re, align 4
  %add53 = add nsw i32 %conv52, %63
  store i32 %add53, i32* %RV, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.47
  %64 = load i32, i32* %RV, align 4
  %cmp54 = icmp sgt i32 %64, 255
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end.60

cond.false:                                       ; preds = %do.body
  %65 = load i32, i32* %RV, align 4
  %cmp56 = icmp slt i32 %65, 0
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false
  br label %cond.end

cond.false.59:                                    ; preds = %cond.false
  %66 = load i32, i32* %RV, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.59, %cond.true.58
  %cond = phi i32 [ 0, %cond.true.58 ], [ %66, %cond.false.59 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end, %cond.true
  %cond61 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond61, i32* %R, align 4
  %67 = load i32, i32* %R, align 4
  %idxprom62 = sext i32 %67 to i64
  %68 = load i64*, i64** %histogram, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %68, i64 %idxprom62
  store i64* %arrayidx63, i64** %cachep, align 8
  %69 = load i64*, i64** %cachep, align 8
  %70 = load i64, i64* %69, align 8
  %cmp64 = icmp eq i64 %70, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %cond.end.60
  %71 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %72 = load i64*, i64** %histogram, align 8
  %73 = load i32, i32* %R, align 4
  call void @fill_inverse_cmap_gray(%struct._QuantizeObj* %71, i64* %72, i32 %73)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %cond.end.60
  %74 = load i64*, i64** %cachep, align 8
  %75 = load i64, i64* %74, align 8
  %sub68 = sub i64 %75, 1
  %conv69 = trunc i64 %sub68 to i32
  store i32 %conv69, i32* %pixval2, align 4
  %76 = load i32, i32* %re, align 4
  %77 = load i32, i32* %RV, align 4
  %add70 = add nsw i32 %77, %76
  store i32 %add70, i32* %RV, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.67
  %78 = load i32, i32* %pixval1, align 4
  %79 = load i32, i32* %pixval2, align 4
  %cmp71 = icmp eq i32 %78, %79
  br i1 %cmp71, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %80 = load i32, i32* %RV, align 4
  %cmp73 = icmp sgt i32 %80, 255
  br i1 %cmp73, label %land.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %81 = load i32, i32* %RV, align 4
  %cmp75 = icmp slt i32 %81, 0
  br i1 %cmp75, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false
  %82 = load i32, i32* %re, align 4
  %tobool = icmp ne i32 %82, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %land.lhs.true, %do.cond
  %83 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %83, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.79

if.else:                                          ; preds = %if.end
  %84 = load i32, i32* %pixval1, align 4
  %add77 = add nsw i32 %84, 1
  %85 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors78 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %85, i32 0, i32 5
  %86 = load i32, i32* %actual_number_of_colors78, align 4
  %rem = srem i32 %add77, %86
  store i32 %rem, i32* %pixval2, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %do.end
  %87 = load i32, i32* %pixval1, align 4
  %88 = load i32, i32* %pixval2, align 4
  %cmp80 = icmp sgt i32 %87, %88
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.end.79
  %89 = load i32, i32* %pixval1, align 4
  store i32 %89, i32* %tmpval, align 4
  %90 = load i32, i32* %pixval2, align 4
  store i32 %90, i32* %pixval1, align 4
  %91 = load i32, i32* %tmpval, align 4
  store i32 %91, i32* %pixval2, align 4
  %92 = load i32, i32* %pixval1, align 4
  %idxprom83 = sext i32 %92 to i64
  %93 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap84 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %93, i32 0, i32 6
  %arrayidx85 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap84, i32 0, i64 %idxprom83
  store %struct._Color* %arrayidx85, %struct._Color** %color1, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.end.79
  %94 = load i32, i32* %pixval2, align 4
  %idxprom87 = sext i32 %94 to i64
  %95 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap88 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %95, i32 0, i32 6
  %arrayidx89 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap88, i32 0, i64 %idxprom87
  store %struct._Color* %arrayidx89, %struct._Color** %color2, align 8
  %96 = load %struct._Color*, %struct._Color** %color1, align 8
  %red90 = getelementptr inbounds %struct._Color, %struct._Color* %96, i32 0, i32 0
  %97 = load i32, i32* %red90, align 4
  %98 = load i8*, i8** %src, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %99 to i32
  %sub93 = sub nsw i32 %97, %conv92
  %cmp94 = icmp slt i32 %sub93, 0
  br i1 %cmp94, label %cond.true.96, label %cond.false.102

cond.true.96:                                     ; preds = %if.end.86
  %100 = load %struct._Color*, %struct._Color** %color1, align 8
  %red97 = getelementptr inbounds %struct._Color, %struct._Color* %100, i32 0, i32 0
  %101 = load i32, i32* %red97, align 4
  %102 = load i8*, i8** %src, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %103 to i32
  %sub100 = sub nsw i32 %101, %conv99
  %sub101 = sub nsw i32 0, %sub100
  br label %cond.end.107

cond.false.102:                                   ; preds = %if.end.86
  %104 = load %struct._Color*, %struct._Color** %color1, align 8
  %red103 = getelementptr inbounds %struct._Color, %struct._Color* %104, i32 0, i32 0
  %105 = load i32, i32* %red103, align 4
  %106 = load i8*, i8** %src, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %107 to i32
  %sub106 = sub nsw i32 %105, %conv105
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.102, %cond.true.96
  %cond108 = phi i32 [ %sub101, %cond.true.96 ], [ %sub106, %cond.false.102 ]
  store i32 %cond108, i32* %err1, align 4
  %108 = load %struct._Color*, %struct._Color** %color2, align 8
  %red109 = getelementptr inbounds %struct._Color, %struct._Color* %108, i32 0, i32 0
  %109 = load i32, i32* %red109, align 4
  %110 = load i8*, i8** %src, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %111 to i32
  %sub112 = sub nsw i32 %109, %conv111
  %cmp113 = icmp slt i32 %sub112, 0
  br i1 %cmp113, label %cond.true.115, label %cond.false.121

cond.true.115:                                    ; preds = %cond.end.107
  %112 = load %struct._Color*, %struct._Color** %color2, align 8
  %red116 = getelementptr inbounds %struct._Color, %struct._Color* %112, i32 0, i32 0
  %113 = load i32, i32* %red116, align 4
  %114 = load i8*, i8** %src, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %115 to i32
  %sub119 = sub nsw i32 %113, %conv118
  %sub120 = sub nsw i32 0, %sub119
  br label %cond.end.126

cond.false.121:                                   ; preds = %cond.end.107
  %116 = load %struct._Color*, %struct._Color** %color2, align 8
  %red122 = getelementptr inbounds %struct._Color, %struct._Color* %116, i32 0, i32 0
  %117 = load i32, i32* %red122, align 4
  %118 = load i8*, i8** %src, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %119 to i32
  %sub125 = sub nsw i32 %117, %conv124
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.121, %cond.true.115
  %cond127 = phi i32 [ %sub120, %cond.true.115 ], [ %sub125, %cond.false.121 ]
  store i32 %cond127, i32* %err2, align 4
  %120 = load i32, i32* %err1, align 4
  %tobool128 = icmp ne i32 %120, 0
  br i1 %tobool128, label %if.then.131, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %cond.end.126
  %121 = load i32, i32* %err2, align 4
  %tobool130 = icmp ne i32 %121, 0
  br i1 %tobool130, label %if.then.131, label %if.end.138

if.then.131:                                      ; preds = %lor.lhs.false.129, %cond.end.126
  %122 = load i32, i32* %err2, align 4
  %mul = mul nsw i32 65280, %122
  %123 = load i32, i32* %err1, align 4
  %124 = load i32, i32* %err2, align 4
  %add132 = add nsw i32 %123, %124
  %div = sdiv i32 %mul, %add132
  store i32 %div, i32* %proportion2, align 4
  %125 = load i32, i32* %dmval, align 4
  %mul133 = mul nsw i32 %125, 256
  %126 = load i32, i32* %proportion2, align 4
  %cmp134 = icmp sgt i32 %mul133, %126
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.131
  %127 = load i32, i32* %pixval2, align 4
  store i32 %127, i32* %pixval1, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.then.131
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %lor.lhs.false.129
  %128 = load i32, i32* %has_alpha, align 4
  %tobool139 = icmp ne i32 %128, 0
  br i1 %tobool139, label %if.then.140, label %if.else.167

if.then.140:                                      ; preds = %if.end.138
  store i32 0, i32* %transparent, align 4
  %129 = load i32, i32* %alpha_dither, align 4
  %tobool141 = icmp ne i32 %129, 0
  br i1 %tobool141, label %if.then.142, label %if.else.149

if.then.142:                                      ; preds = %if.then.140
  %130 = load i8*, i8** %src, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %131 to i32
  %132 = load i32, i32* %dmval, align 4
  %cmp145 = icmp slt i32 %conv144, %132
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.142
  store i32 1, i32* %transparent, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.then.142
  br label %if.end.156

if.else.149:                                      ; preds = %if.then.140
  %133 = load i8*, i8** %src, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %134 to i32
  %cmp152 = icmp sle i32 %conv151, 127
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.else.149
  store i32 1, i32* %transparent, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.else.149
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.148
  %135 = load i32, i32* %transparent, align 4
  %tobool157 = icmp ne i32 %135, 0
  br i1 %tobool157, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %if.end.156
  %136 = load i8*, i8** %dest, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 0, i8* %arrayidx159, align 1
  br label %if.end.166

if.else.160:                                      ; preds = %if.end.156
  %137 = load i8*, i8** %dest, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %137, i64 1
  store i8 -1, i8* %arrayidx161, align 1
  %138 = load i32, i32* %pixval1, align 4
  %conv162 = trunc i32 %138 to i8
  %139 = load i8*, i8** %dest, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %conv162, i8* %arrayidx163, align 1
  %idxprom164 = zext i8 %conv162 to i64
  %140 = load i64*, i64** %index_used_count, align 8
  %arrayidx165 = getelementptr inbounds i64, i64* %140, i64 %idxprom164
  %141 = load i64, i64* %arrayidx165, align 8
  %inc = add i64 %141, 1
  store i64 %inc, i64* %arrayidx165, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.160, %if.then.158
  br label %if.end.173

if.else.167:                                      ; preds = %if.end.138
  %142 = load i32, i32* %pixval1, align 4
  %conv168 = trunc i32 %142 to i8
  %143 = load i8*, i8** %dest, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %conv168, i8* %arrayidx169, align 1
  %idxprom170 = zext i8 %conv168 to i64
  %144 = load i64*, i64** %index_used_count, align 8
  %arrayidx171 = getelementptr inbounds i64, i64* %144, i64 %idxprom170
  %145 = load i64, i64* %arrayidx171, align 8
  %inc172 = add i64 %145, 1
  store i64 %inc172, i64* %arrayidx171, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.167, %if.end.166
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %146 = load i32, i32* %bytes, align 4
  %147 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %146 to i64
  %add.ptr = getelementptr inbounds i8, i8* %147, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes174 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %148 = load i32, i32* %bytes174, align 4
  %149 = load i8*, i8** %dest, align 8
  %idx.ext175 = sext i32 %148 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %149, i64 %idx.ext175
  store i8* %add.ptr176, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.173
  %150 = load i32, i32* %col, align 4
  %inc177 = add nsw i32 %150, 1
  store i32 %inc177, i32* %col, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end
  %151 = load i32, i32* %row, align 4
  %inc179 = add nsw i32 %151, 1
  store i32 %inc179, i32* %row, align 4
  br label %for.cond.24

for.end.180:                                      ; preds = %for.cond.24
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %152 = load i8*, i8** %pr, align 8
  %153 = bitcast i8* %152 to %struct._PixelRegionIterator*
  %call182 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %153)
  %154 = bitcast %struct._PixelRegionIterator* %call182 to i8*
  store i8* %154, i8** %pr, align 8
  br label %for.cond

for.end.183:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass1_rgb(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %1 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %1, i32 0, i32 9
  %2 = load i64*, i64** %histogram, align 8
  call void @select_colors_rgb(%struct._QuantizeObj* %0, i64* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @median_cut_pass2_nodestruct_dither_rgb(%struct._QuantizeObj* %quantobj, %struct._GimpLayer* %layer, %struct._TileManager* %new_tiles) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %pr = alloca i8*, align 8
  %red_pix = alloca i32, align 4
  %green_pix = alloca i32, align 4
  %blue_pix = alloca i32, align 4
  %alpha_pix = alloca i32, align 4
  %i = alloca i32, align 4
  %lastindex = alloca i32, align 4
  %lastred = alloca i32, align 4
  %lastgreen = alloca i32, align 4
  %lastblue = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %transparent = alloca i32, align 4
  %dither_x = alloca i32, align 4
  %dither_y = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %want_alpha_dither = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 10
  %1 = load i32, i32* %want_alpha_dither, align 4
  store i32 %1, i32* %alpha_dither, align 4
  store i32 0, i32* %red_pix, align 4
  store i32 1, i32* %green_pix, align 4
  store i32 2, i32* %blue_pix, align 4
  store i32 3, i32* %alpha_pix, align 4
  store i32 0, i32* %lastindex, align 4
  store i32 -1, i32* %lastred, align 4
  store i32 -1, i32* %lastgreen, align 4
  store i32 -1, i32* %lastblue, align 4
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %3 = bitcast %struct._GimpLayer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %4, i32* %offsetx, i32* %offsety)
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %7)
  store i32 %call4, i32* %has_alpha, align 4
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %10)
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_width(%struct._GimpItem* %13)
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_height(%struct._GimpItem* %16)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call7, i32 0, i32 0, i32 %call10, i32 %call13, i32 0)
  %17 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %20)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %17, i32 0, i32 0, i32 %call16, i32 %call19, i32 1)
  %call20 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %24 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %24, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %entry
  %25 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %25, null
  br i1 %cmp, label %for.body, label %for.end.138

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  store i8* %26, i8** %src, align 8
  %data21 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %27 = load i8*, i8** %data21, align 8
  store i8* %27, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.133, %for.body
  %28 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %29 = load i32, i32* %h, align 4
  %cmp23 = icmp slt i32 %28, %29
  br i1 %cmp23, label %for.body.24, label %for.end.135

for.body.24:                                      ; preds = %for.cond.22
  store i32 0, i32* %col, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.130, %for.body.24
  %30 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %31 = load i32, i32* %w, align 4
  %cmp26 = icmp slt i32 %30, %31
  br i1 %cmp26, label %for.body.27, label %for.end.132

for.body.27:                                      ; preds = %for.cond.25
  store i32 0, i32* %transparent, align 4
  %32 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %for.body.27
  %33 = load i32, i32* %alpha_dither, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  %34 = load i32, i32* %col, align 4
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %35 = load i32, i32* %x, align 4
  %add = add nsw i32 %34, %35
  %36 = load i32, i32* %offsetx, align 4
  %add30 = add nsw i32 %add, %36
  %and = and i32 %add30, 31
  store i32 %and, i32* %dither_x, align 4
  %37 = load i32, i32* %row, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %38 = load i32, i32* %y, align 4
  %add31 = add nsw i32 %37, %38
  %39 = load i32, i32* %offsety, align 4
  %add32 = add nsw i32 %add31, %39
  %and33 = and i32 %add32, 31
  store i32 %and33, i32* %dither_y, align 4
  %40 = load i32, i32* %alpha_pix, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %42 to i32
  %43 = load i32, i32* %dither_y, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = load i32, i32* %dither_x, align 4
  %idxprom35 = sext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* @DM, i32 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx36, i32 0, i64 %idxprom34
  %45 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %45 to i32
  %cmp39 = icmp slt i32 %conv, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.29
  store i32 1, i32* %transparent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.then.29
  br label %if.end.49

if.else:                                          ; preds = %if.then
  %46 = load i32, i32* %alpha_pix, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load i8*, i8** %src, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %47, i64 %idxprom42
  %48 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %48 to i32
  %cmp45 = icmp slt i32 %conv44, 128
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else
  store i32 1, i32* %transparent, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.body.27
  %49 = load i32, i32* %transparent, align 4
  %tobool51 = icmp ne i32 %49, 0
  br i1 %tobool51, label %if.else.124, label %if.then.52

if.then.52:                                       ; preds = %if.end.50
  %50 = load i32, i32* %lastred, align 4
  %51 = load i32, i32* %red_pix, align 4
  %idxprom53 = sext i32 %51 to i64
  %52 = load i8*, i8** %src, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %52, i64 %idxprom53
  %53 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %53 to i32
  %cmp56 = icmp eq i32 %50, %conv55
  br i1 %cmp56, label %land.lhs.true, label %if.else.76

land.lhs.true:                                    ; preds = %if.then.52
  %54 = load i32, i32* %lastgreen, align 4
  %55 = load i32, i32* %green_pix, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load i8*, i8** %src, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 %idxprom58
  %57 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %57 to i32
  %cmp61 = icmp eq i32 %54, %conv60
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.76

land.lhs.true.63:                                 ; preds = %land.lhs.true
  %58 = load i32, i32* %lastblue, align 4
  %59 = load i32, i32* %blue_pix, align 4
  %idxprom64 = sext i32 %59 to i64
  %60 = load i8*, i8** %src, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %60, i64 %idxprom64
  %61 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %61 to i32
  %cmp67 = icmp eq i32 %58, %conv66
  br i1 %cmp67, label %if.then.69, label %if.else.76

if.then.69:                                       ; preds = %land.lhs.true.63
  %62 = load i32, i32* %lastindex, align 4
  %conv70 = trunc i32 %62 to i8
  %63 = load i8*, i8** %dest, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %conv70, i8* %arrayidx71, align 1
  %64 = load i32, i32* %has_alpha, align 4
  %tobool72 = icmp ne i32 %64, 0
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.69
  %65 = load i8*, i8** %dest, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 -1, i8* %arrayidx74, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.then.69
  br label %if.end.123

if.else.76:                                       ; preds = %land.lhs.true.63, %land.lhs.true, %if.then.52
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %if.else.76
  %66 = load i32, i32* %i, align 4
  %67 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %67, i32 0, i32 5
  %68 = load i32, i32* %actual_number_of_colors, align 4
  %cmp78 = icmp slt i32 %66, %68
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.77
  %69 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %69 to i64
  %70 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %70, i32 0, i32 6
  %arrayidx82 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom81
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx82, i32 0, i32 1
  %71 = load i32, i32* %green, align 4
  %72 = load i32, i32* %green_pix, align 4
  %idxprom83 = sext i32 %72 to i64
  %73 = load i8*, i8** %src, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %73, i64 %idxprom83
  %74 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %74 to i32
  %cmp86 = icmp eq i32 %71, %conv85
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.116

land.lhs.true.88:                                 ; preds = %for.body.80
  %75 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %75 to i64
  %76 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap90 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %76, i32 0, i32 6
  %arrayidx91 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap90, i32 0, i64 %idxprom89
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx91, i32 0, i32 0
  %77 = load i32, i32* %red, align 4
  %78 = load i32, i32* %red_pix, align 4
  %idxprom92 = sext i32 %78 to i64
  %79 = load i8*, i8** %src, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %79, i64 %idxprom92
  %80 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %80 to i32
  %cmp95 = icmp eq i32 %77, %conv94
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.116

land.lhs.true.97:                                 ; preds = %land.lhs.true.88
  %81 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %81 to i64
  %82 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap99 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %82, i32 0, i32 6
  %arrayidx100 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap99, i32 0, i64 %idxprom98
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx100, i32 0, i32 2
  %83 = load i32, i32* %blue, align 4
  %84 = load i32, i32* %blue_pix, align 4
  %idxprom101 = sext i32 %84 to i64
  %85 = load i8*, i8** %src, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %85, i64 %idxprom101
  %86 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %86 to i32
  %cmp104 = icmp eq i32 %83, %conv103
  br i1 %cmp104, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %land.lhs.true.97
  %87 = load i32, i32* %red_pix, align 4
  %idxprom107 = sext i32 %87 to i64
  %88 = load i8*, i8** %src, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %88, i64 %idxprom107
  %89 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %89 to i32
  store i32 %conv109, i32* %lastred, align 4
  %90 = load i32, i32* %green_pix, align 4
  %idxprom110 = sext i32 %90 to i64
  %91 = load i8*, i8** %src, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %91, i64 %idxprom110
  %92 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %92 to i32
  store i32 %conv112, i32* %lastgreen, align 4
  %93 = load i32, i32* %blue_pix, align 4
  %idxprom113 = sext i32 %93 to i64
  %94 = load i8*, i8** %src, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %94, i64 %idxprom113
  %95 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %95 to i32
  store i32 %conv115, i32* %lastblue, align 4
  %96 = load i32, i32* %i, align 4
  store i32 %96, i32* %lastindex, align 4
  br label %got_colour

if.end.116:                                       ; preds = %land.lhs.true.97, %land.lhs.true.88, %for.body.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %97 = load i32, i32* %i, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.77

for.end:                                          ; preds = %for.cond.77
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i32 0, i32 0))
  br label %got_colour

got_colour:                                       ; preds = %for.end, %if.then.106
  %98 = load i32, i32* %lastindex, align 4
  %conv117 = trunc i32 %98 to i8
  %99 = load i8*, i8** %dest, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %99, i64 0
  store i8 %conv117, i8* %arrayidx118, align 1
  %100 = load i32, i32* %has_alpha, align 4
  %tobool119 = icmp ne i32 %100, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %got_colour
  %101 = load i8*, i8** %dest, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 -1, i8* %arrayidx121, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %got_colour
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.75
  br label %if.end.126

if.else.124:                                      ; preds = %if.end.50
  %102 = load i8*, i8** %dest, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 0, i8* %arrayidx125, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.124, %if.end.123
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %103 = load i32, i32* %bytes, align 4
  %104 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %103 to i64
  %add.ptr = getelementptr inbounds i8, i8* %104, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bytes127 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %105 = load i32, i32* %bytes127, align 4
  %106 = load i8*, i8** %dest, align 8
  %idx.ext128 = sext i32 %105 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %106, i64 %idx.ext128
  store i8* %add.ptr129, i8** %dest, align 8
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.126
  %107 = load i32, i32* %col, align 4
  %inc131 = add nsw i32 %107, 1
  store i32 %inc131, i32* %col, align 4
  br label %for.cond.25

for.end.132:                                      ; preds = %for.cond.25
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end.132
  %108 = load i32, i32* %row, align 4
  %inc134 = add nsw i32 %108, 1
  store i32 %inc134, i32* %row, align 4
  br label %for.cond.22

for.end.135:                                      ; preds = %for.cond.22
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %109 = load i8*, i8** %pr, align 8
  %110 = bitcast i8* %109 to %struct._PixelRegionIterator*
  %call137 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %110)
  %111 = bitcast %struct._PixelRegionIterator* %call137 to i8*
  store i8* %111, i8** %pr, align 8
  br label %for.cond

for.end.138:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_median_cut(%struct._QuantizeObj* %quantobj) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %histogram = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 9
  %1 = load i64*, i64** %histogram, align 8
  %2 = bitcast i64* %1 to i8*
  call void @g_free(i8* %2)
  %3 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %4 = bitcast %struct._QuantizeObj* %3 to i8*
  call void @g_free(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_colors_gray(%struct._QuantizeObj* %quantobj, i64* %histogram) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %boxlist = alloca %struct.box*, align 8
  %numboxes = alloca i32, align 4
  %desired = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 4
  %1 = load i32, i32* %desired_number_of_colors, align 4
  store i32 %1, i32* %desired, align 4
  %2 = load i32, i32* %desired, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 80)
  %3 = bitcast i8* %call to %struct.box*
  store %struct.box* %3, %struct.box** %boxlist, align 8
  store i32 1, i32* %numboxes, align 4
  %4 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %4, i64 0
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %arrayidx, i32 0, i32 0
  store i32 0, i32* %Rmin, align 4
  %5 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx1 = getelementptr inbounds %struct.box, %struct.box* %5, i64 0
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %arrayidx1, i32 0, i32 1
  store i32 255, i32* %Rmax, align 4
  %6 = load i64*, i64** %histogram.addr, align 8
  %7 = load %struct.box*, %struct.box** %boxlist, align 8
  call void @update_box_gray(i64* %6, %struct.box* %7)
  %8 = load i64*, i64** %histogram.addr, align 8
  %9 = load %struct.box*, %struct.box** %boxlist, align 8
  %10 = load i32, i32* %numboxes, align 4
  %11 = load i32, i32* %desired, align 4
  %call2 = call i32 @median_cut_gray(i64* %8, %struct.box* %9, i32 %10, i32 %11)
  store i32 %call2, i32* %numboxes, align 4
  %12 = load i32, i32* %numboxes, align 4
  %13 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %13, i32 0, i32 5
  store i32 %12, i32* %actual_number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %numboxes, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %17 = load i64*, i64** %histogram.addr, align 8
  %18 = load %struct.box*, %struct.box** %boxlist, align 8
  %19 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds %struct.box, %struct.box* %18, i64 %idx.ext
  %20 = load i32, i32* %i, align 4
  call void @compute_color_gray(%struct._QuantizeObj* %16, i64* %17, %struct.box* %add.ptr, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_box_gray(i64* %histogram, %struct.box* %boxp) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %dist = alloca i32, align 4
  %ccount = alloca i64, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  %0 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %0, i32 0, i32 0
  %1 = load i32, i32* %Rmin, align 4
  store i32 %1, i32* %min, align 4
  %2 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %2, i32 0, i32 1
  %3 = load i32, i32* %Rmax, align 4
  store i32 %3, i32* %max, align 4
  %4 = load i32, i32* %max, align 4
  %5 = load i32, i32* %min, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %min, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %max, align 4
  %cmp1 = icmp sle i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i64*, i64** %histogram.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %idxprom
  %11 = load i64, i64* %arrayidx, align 8
  %cmp2 = icmp ne i64 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %min, align 4
  %13 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin4 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 0
  store i32 %12, i32* %Rmin4, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  br label %if.end.5

if.end.5:                                         ; preds = %for.end, %entry
  %15 = load i32, i32* %max, align 4
  %16 = load i32, i32* %min, align 4
  %cmp6 = icmp sgt i32 %15, %16
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %17 = load i32, i32* %max, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %if.then.7
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %min, align 4
  %cmp9 = icmp sge i32 %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end.18

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load i64*, i64** %histogram.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %21, i64 %idxprom11
  %22 = load i64, i64* %arrayidx12, align 8
  %cmp13 = icmp ne i64 %22, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.body.10
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %max, align 4
  %24 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax15 = getelementptr inbounds %struct.box, %struct.box* %24, i32 0, i32 1
  store i32 %23, i32* %Rmax15, align 4
  br label %for.end.18

if.end.16:                                        ; preds = %for.body.10
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %25 = load i32, i32* %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.8

for.end.18:                                       ; preds = %if.then.14, %for.cond.8
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %if.end.5
  %26 = load i32, i32* %max, align 4
  %27 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %26, %27
  store i32 %sub, i32* %dist, align 4
  %28 = load i32, i32* %dist, align 4
  %29 = load i32, i32* %dist, align 4
  %mul = mul nsw i32 %28, %29
  %30 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %30, i32 0, i32 9
  store i32 %mul, i32* %volume, align 4
  store i64 0, i64* %ccount, align 8
  %31 = load i32, i32* %min, align 4
  store i32 %31, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %if.end.19
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %max, align 4
  %cmp21 = icmp sle i32 %32, %33
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.20
  %34 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load i64*, i64** %histogram.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %35, i64 %idxprom23
  %36 = load i64, i64* %arrayidx24, align 8
  %cmp25 = icmp ne i64 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %for.body.22
  %37 = load i64, i64* %ccount, align 8
  %inc27 = add i64 %37, 1
  store i64 %inc27, i64* %ccount, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.body.22
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %38 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %38, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %39 = load i64, i64* %ccount, align 8
  %40 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %40, i32 0, i32 10
  store i64 %39, i64* %colorcount, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @median_cut_gray(i64* %histogram, %struct.box* %boxlist, i32 %numboxes, i32 %desired_colors) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %desired_colors.addr = alloca i32, align 4
  %lb = alloca i32, align 4
  %b1 = alloca %struct.box*, align 8
  %b2 = alloca %struct.box*, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i32 %desired_colors, i32* %desired_colors.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %numboxes.addr, align 4
  %1 = load i32, i32* %desired_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %3 = load i32, i32* %numboxes.addr, align 4
  %call = call %struct.box* @find_biggest_volume(%struct.box* %2, i32 %3)
  store %struct.box* %call, %struct.box** %b1, align 8
  %4 = load %struct.box*, %struct.box** %b1, align 8
  %cmp1 = icmp eq %struct.box* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %6 = load i32, i32* %numboxes.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.box, %struct.box* %5, i64 %idx.ext
  store %struct.box* %add.ptr, %struct.box** %b2, align 8
  %7 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 1
  %8 = load i32, i32* %Rmax, align 4
  %9 = load %struct.box*, %struct.box** %b2, align 8
  %Rmax2 = getelementptr inbounds %struct.box, %struct.box* %9, i32 0, i32 1
  store i32 %8, i32* %Rmax2, align 4
  %10 = load %struct.box*, %struct.box** %b1, align 8
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 0
  %11 = load i32, i32* %Rmin, align 4
  %12 = load %struct.box*, %struct.box** %b2, align 8
  %Rmin3 = getelementptr inbounds %struct.box, %struct.box* %12, i32 0, i32 0
  store i32 %11, i32* %Rmin3, align 4
  %13 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax4 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 1
  %14 = load i32, i32* %Rmax4, align 4
  %15 = load %struct.box*, %struct.box** %b1, align 8
  %Rmin5 = getelementptr inbounds %struct.box, %struct.box* %15, i32 0, i32 0
  %16 = load i32, i32* %Rmin5, align 4
  %add = add nsw i32 %14, %16
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %lb, align 4
  %17 = load i32, i32* %lb, align 4
  %18 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax6 = getelementptr inbounds %struct.box, %struct.box* %18, i32 0, i32 1
  store i32 %17, i32* %Rmax6, align 4
  %19 = load i32, i32* %lb, align 4
  %add7 = add nsw i32 %19, 1
  %20 = load %struct.box*, %struct.box** %b2, align 8
  %Rmin8 = getelementptr inbounds %struct.box, %struct.box* %20, i32 0, i32 0
  store i32 %add7, i32* %Rmin8, align 4
  %21 = load i64*, i64** %histogram.addr, align 8
  %22 = load %struct.box*, %struct.box** %b1, align 8
  call void @update_box_gray(i64* %21, %struct.box* %22)
  %23 = load i64*, i64** %histogram.addr, align 8
  %24 = load %struct.box*, %struct.box** %b2, align 8
  call void @update_box_gray(i64* %23, %struct.box* %24)
  %25 = load i32, i32* %numboxes.addr, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %numboxes.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %26 = load i32, i32* %numboxes.addr, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @compute_color_gray(%struct._QuantizeObj* %quantobj, i64* %histogram, %struct.box* %boxp, i32 %icolor) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %icolor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %count = alloca i64, align 8
  %total = alloca i64, align 8
  %gtotal = alloca i64, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  store i32 %icolor, i32* %icolor.addr, align 4
  %0 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %0, i32 0, i32 0
  %1 = load i32, i32* %Rmin, align 4
  store i32 %1, i32* %min, align 4
  %2 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %2, i32 0, i32 1
  %3 = load i32, i32* %Rmax, align 4
  store i32 %3, i32* %max, align 4
  store i64 0, i64* %total, align 8
  store i64 0, i64* %gtotal, align 8
  %4 = load i32, i32* %min, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %max, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i64*, i64** %histogram.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  store i64 %9, i64* %count, align 8
  %10 = load i64, i64* %count, align 8
  %cmp1 = icmp ne i64 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %count, align 8
  %12 = load i64, i64* %total, align 8
  %add = add i64 %12, %11
  store i64 %add, i64* %total, align 8
  %13 = load i32, i32* %i, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* %count, align 8
  %mul = mul i64 %conv, %14
  %15 = load i64, i64* %gtotal, align 8
  %add2 = add i64 %15, %mul
  store i64 %add2, i64* %gtotal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %total, align 8
  %cmp3 = icmp ne i64 %17, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.end
  %18 = load i64, i64* %gtotal, align 8
  %19 = load i64, i64* %total, align 8
  %shr = lshr i64 %19, 1
  %add6 = add i64 %18, %shr
  %20 = load i64, i64* %total, align 8
  %div = udiv i64 %add6, %20
  %conv7 = trunc i64 %div to i32
  %21 = load i32, i32* %icolor.addr, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %22, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom8
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 2
  store i32 %conv7, i32* %blue, align 4
  %23 = load i32, i32* %icolor.addr, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap11 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %24, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap11, i32 0, i64 %idxprom10
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx12, i32 0, i32 1
  store i32 %conv7, i32* %green, align 4
  %25 = load i32, i32* %icolor.addr, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap14 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %26, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap14, i32 0, i64 %idxprom13
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx15, i32 0, i32 0
  store i32 %conv7, i32* %red, align 4
  br label %if.end.28

if.else:                                          ; preds = %for.end
  %27 = load i32, i32* %icolor.addr, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap17 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %28, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap17, i32 0, i64 %idxprom16
  %blue19 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx18, i32 0, i32 2
  store i32 0, i32* %blue19, align 4
  %29 = load i32, i32* %icolor.addr, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap21 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %30, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap21, i32 0, i64 %idxprom20
  %green23 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx22, i32 0, i32 1
  store i32 0, i32* %green23, align 4
  %31 = load i32, i32* %icolor.addr, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap25 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %32, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap25, i32 0, i64 %idxprom24
  %red27 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx26, i32 0, i32 0
  store i32 0, i32* %red27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.box* @find_biggest_volume(%struct.box* %boxlist, i32 %numboxes) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxv = alloca i32, align 4
  %which = alloca %struct.box*, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i32 0, i32* %maxv, align 4
  store %struct.box* null, %struct.box** %which, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  store %struct.box* %0, %struct.box** %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %numboxes.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.box*, %struct.box** %boxp, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %3, i32 0, i32 9
  %4 = load i32, i32* %volume, align 4
  %5 = load i32, i32* %maxv, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %6, %struct.box** %which, align 8
  %7 = load %struct.box*, %struct.box** %boxp, align 8
  %volume2 = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 9
  %8 = load i32, i32* %volume2, align 4
  store i32 %8, i32* %maxv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load %struct.box*, %struct.box** %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %10, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.box*, %struct.box** %which, align 8
  ret %struct.box* %11
}

declare %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette*) #3

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #3

; Function Attrs: nounwind uwtable
define internal void @fill_inverse_cmap_rgb(%struct._QuantizeObj* %quantobj, i64* %histogram, i32 %R, i32 %G, i32 %B) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %R.addr = alloca i32, align 4
  %G.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %minR = alloca i32, align 4
  %minG = alloca i32, align 4
  %minB = alloca i32, align 4
  %iR = alloca i32, align 4
  %iG = alloca i32, align 4
  %iB = alloca i32, align 4
  %cptr = alloca i32*, align 8
  %colorlist = alloca [256 x i32], align 16
  %numcolors = alloca i32, align 4
  %bestcolor = alloca [1 x i32], align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store i32 %R, i32* %R.addr, align 4
  store i32 %G, i32* %G.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = bitcast [1 x i32]* %bestcolor to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 4, i1 false)
  %1 = load i32, i32* %R.addr, align 4
  %shr = ashr i32 %1, 0
  store i32 %shr, i32* %R.addr, align 4
  %2 = load i32, i32* %G.addr, align 4
  %shr1 = ashr i32 %2, 0
  store i32 %shr1, i32* %G.addr, align 4
  %3 = load i32, i32* %B.addr, align 4
  %shr2 = ashr i32 %3, 0
  store i32 %shr2, i32* %B.addr, align 4
  %4 = load i32, i32* %R.addr, align 4
  %shl = shl i32 %4, 0
  %add = add nsw i32 %shl, 0
  store i32 %add, i32* %minR, align 4
  %5 = load i32, i32* %G.addr, align 4
  %shl3 = shl i32 %5, 2
  %add4 = add nsw i32 %shl3, 2
  store i32 %add4, i32* %minG, align 4
  %6 = load i32, i32* %B.addr, align 4
  %shl5 = shl i32 %6, 2
  %add6 = add nsw i32 %shl5, 2
  store i32 %add6, i32* %minB, align 4
  %7 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %8 = load i32, i32* %minR, align 4
  %9 = load i32, i32* %minG, align 4
  %10 = load i32, i32* %minB, align 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %colorlist, i32 0, i32 0
  %call = call i32 @find_nearby_colors(%struct._QuantizeObj* %7, i32 %8, i32 %9, i32 %10, i32* %arraydecay)
  store i32 %call, i32* %numcolors, align 4
  %11 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %12 = load i32, i32* %minR, align 4
  %13 = load i32, i32* %minG, align 4
  %14 = load i32, i32* %minB, align 4
  %15 = load i32, i32* %numcolors, align 4
  %arraydecay7 = getelementptr inbounds [256 x i32], [256 x i32]* %colorlist, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [1 x i32], [1 x i32]* %bestcolor, i32 0, i32 0
  call void @find_best_colors(%struct._QuantizeObj* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32* %arraydecay7, i32* %arraydecay8)
  %16 = load i32, i32* %R.addr, align 4
  %shl9 = shl i32 %16, 0
  store i32 %shl9, i32* %R.addr, align 4
  %17 = load i32, i32* %G.addr, align 4
  %shl10 = shl i32 %17, 0
  store i32 %shl10, i32* %G.addr, align 4
  %18 = load i32, i32* %B.addr, align 4
  %shl11 = shl i32 %18, 0
  store i32 %shl11, i32* %B.addr, align 4
  %arraydecay12 = getelementptr inbounds [1 x i32], [1 x i32]* %bestcolor, i32 0, i32 0
  store i32* %arraydecay12, i32** %cptr, align 8
  store i32 0, i32* %iR, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %19 = load i32, i32* %iR, align 4
  %cmp = icmp slt i32 %19, 1
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %iG, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.24, %for.body
  %20 = load i32, i32* %iG, align 4
  %cmp14 = icmp slt i32 %20, 1
  br i1 %cmp14, label %for.body.15, label %for.end.26

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %iB, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.15
  %21 = load i32, i32* %iB, align 4
  %cmp17 = icmp slt i32 %21, 1
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %22 = load i32*, i32** %cptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr, i32** %cptr, align 8
  %23 = load i32, i32* %22, align 4
  %add19 = add nsw i32 %23, 1
  %conv = sext i32 %add19 to i64
  %24 = load i64*, i64** %histogram.addr, align 8
  %25 = load i32, i32* %R.addr, align 4
  %26 = load i32, i32* %iR, align 4
  %add20 = add nsw i32 %25, %26
  %27 = load i32, i32* %G.addr, align 4
  %28 = load i32, i32* %iG, align 4
  %add21 = add nsw i32 %27, %28
  %29 = load i32, i32* %B.addr, align 4
  %30 = load i32, i32* %iB, align 4
  %add22 = add nsw i32 %29, %30
  %call23 = call i64* @HIST_LIN(i64* %24, i32 %add20, i32 %add21, i32 %add22)
  store i64 %conv, i64* %call23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %31 = load i32, i32* %iB, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %iB, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %32 = load i32, i32* %iG, align 4
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, i32* %iG, align 4
  br label %for.cond.13

for.end.26:                                       ; preds = %for.cond.13
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %33 = load i32, i32* %iR, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, i32* %iR, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_nearby_colors(%struct._QuantizeObj* %quantobj, i32 %minR, i32 %minG, i32 %minB, i32* %colorlist) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %minR.addr = alloca i32, align 4
  %minG.addr = alloca i32, align 4
  %minB.addr = alloca i32, align 4
  %colorlist.addr = alloca i32*, align 8
  %numcolors = alloca i32, align 4
  %maxR = alloca i32, align 4
  %maxG = alloca i32, align 4
  %maxB = alloca i32, align 4
  %centerR = alloca i32, align 4
  %centerG = alloca i32, align 4
  %centerB = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %ncolors = alloca i32, align 4
  %minmaxdist = alloca i32, align 4
  %min_dist = alloca i32, align 4
  %max_dist = alloca i32, align 4
  %tdist = alloca i32, align 4
  %mindist = alloca [256 x i32], align 16
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i32 %minR, i32* %minR.addr, align 4
  store i32 %minG, i32* %minG.addr, align 4
  store i32 %minB, i32* %minB.addr, align 4
  store i32* %colorlist, i32** %colorlist.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 5
  %1 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %1, i32* %numcolors, align 4
  %2 = load i32, i32* %minR.addr, align 4
  %add = add nsw i32 %2, 0
  store i32 %add, i32* %maxR, align 4
  %3 = load i32, i32* %minR.addr, align 4
  %4 = load i32, i32* %maxR, align 4
  %add1 = add nsw i32 %3, %4
  %add2 = add nsw i32 %add1, 1
  %shr = ashr i32 %add2, 1
  store i32 %shr, i32* %centerR, align 4
  %5 = load i32, i32* %minG.addr, align 4
  %add3 = add nsw i32 %5, 0
  store i32 %add3, i32* %maxG, align 4
  %6 = load i32, i32* %minG.addr, align 4
  %7 = load i32, i32* %maxG, align 4
  %add4 = add nsw i32 %6, %7
  %add5 = add nsw i32 %add4, 1
  %shr6 = ashr i32 %add5, 1
  store i32 %shr6, i32* %centerG, align 4
  %8 = load i32, i32* %minB.addr, align 4
  %add7 = add nsw i32 %8, 0
  store i32 %add7, i32* %maxB, align 4
  %9 = load i32, i32* %minB.addr, align 4
  %10 = load i32, i32* %maxB, align 4
  %add8 = add nsw i32 %9, %10
  %add9 = add nsw i32 %add8, 1
  %shr10 = ashr i32 %add9, 1
  store i32 %shr10, i32* %centerB, align 4
  store i32 2147483647, i32* %minmaxdist, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %numcolors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %14, i32 0, i32 7
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  %15 = load i32, i32* %red, align 4
  store i32 %15, i32* %x, align 4
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %minR.addr, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %minR.addr, align 4
  %sub = sub nsw i32 %18, %19
  %mul = mul nsw i32 %sub, 13
  store i32 %mul, i32* %tdist, align 4
  %20 = load i32, i32* %tdist, align 4
  %21 = load i32, i32* %tdist, align 4
  %mul12 = mul nsw i32 %20, %21
  store i32 %mul12, i32* %min_dist, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %maxR, align 4
  %sub13 = sub nsw i32 %22, %23
  %mul14 = mul nsw i32 %sub13, 13
  store i32 %mul14, i32* %tdist, align 4
  %24 = load i32, i32* %tdist, align 4
  %25 = load i32, i32* %tdist, align 4
  %mul15 = mul nsw i32 %24, %25
  store i32 %mul15, i32* %max_dist, align 4
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %maxR, align 4
  %cmp16 = icmp sgt i32 %26, %27
  br i1 %cmp16, label %if.then.17, label %if.else.24

if.then.17:                                       ; preds = %if.else
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %maxR, align 4
  %sub18 = sub nsw i32 %28, %29
  %mul19 = mul nsw i32 %sub18, 13
  store i32 %mul19, i32* %tdist, align 4
  %30 = load i32, i32* %tdist, align 4
  %31 = load i32, i32* %tdist, align 4
  %mul20 = mul nsw i32 %30, %31
  store i32 %mul20, i32* %min_dist, align 4
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %minR.addr, align 4
  %sub21 = sub nsw i32 %32, %33
  %mul22 = mul nsw i32 %sub21, 13
  store i32 %mul22, i32* %tdist, align 4
  %34 = load i32, i32* %tdist, align 4
  %35 = load i32, i32* %tdist, align 4
  %mul23 = mul nsw i32 %34, %35
  store i32 %mul23, i32* %max_dist, align 4
  br label %if.end.34

if.else.24:                                       ; preds = %if.else
  store i32 0, i32* %min_dist, align 4
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %centerR, align 4
  %cmp25 = icmp sle i32 %36, %37
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else.24
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %maxR, align 4
  %sub27 = sub nsw i32 %38, %39
  %mul28 = mul nsw i32 %sub27, 13
  store i32 %mul28, i32* %tdist, align 4
  %40 = load i32, i32* %tdist, align 4
  %41 = load i32, i32* %tdist, align 4
  %mul29 = mul nsw i32 %40, %41
  store i32 %mul29, i32* %max_dist, align 4
  br label %if.end

if.else.30:                                       ; preds = %if.else.24
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %minR.addr, align 4
  %sub31 = sub nsw i32 %42, %43
  %mul32 = mul nsw i32 %sub31, 13
  store i32 %mul32, i32* %tdist, align 4
  %44 = load i32, i32* %tdist, align 4
  %45 = load i32, i32* %tdist, align 4
  %mul33 = mul nsw i32 %44, %45
  store i32 %mul33, i32* %max_dist, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.17
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then
  %46 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %46 to i64
  %47 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin37 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %47, i32 0, i32 7
  %arrayidx38 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin37, i32 0, i64 %idxprom36
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx38, i32 0, i32 1
  %48 = load i32, i32* %green, align 4
  store i32 %48, i32* %x, align 4
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %minG.addr, align 4
  %cmp39 = icmp slt i32 %49, %50
  br i1 %cmp39, label %if.then.40, label %if.else.49

if.then.40:                                       ; preds = %if.end.35
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %minG.addr, align 4
  %sub41 = sub nsw i32 %51, %52
  %mul42 = mul nsw i32 %sub41, 24
  store i32 %mul42, i32* %tdist, align 4
  %53 = load i32, i32* %tdist, align 4
  %54 = load i32, i32* %tdist, align 4
  %mul43 = mul nsw i32 %53, %54
  %55 = load i32, i32* %min_dist, align 4
  %add44 = add nsw i32 %55, %mul43
  store i32 %add44, i32* %min_dist, align 4
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %maxG, align 4
  %sub45 = sub nsw i32 %56, %57
  %mul46 = mul nsw i32 %sub45, 24
  store i32 %mul46, i32* %tdist, align 4
  %58 = load i32, i32* %tdist, align 4
  %59 = load i32, i32* %tdist, align 4
  %mul47 = mul nsw i32 %58, %59
  %60 = load i32, i32* %max_dist, align 4
  %add48 = add nsw i32 %60, %mul47
  store i32 %add48, i32* %max_dist, align 4
  br label %if.end.74

if.else.49:                                       ; preds = %if.end.35
  %61 = load i32, i32* %x, align 4
  %62 = load i32, i32* %maxG, align 4
  %cmp50 = icmp sgt i32 %61, %62
  br i1 %cmp50, label %if.then.51, label %if.else.60

if.then.51:                                       ; preds = %if.else.49
  %63 = load i32, i32* %x, align 4
  %64 = load i32, i32* %maxG, align 4
  %sub52 = sub nsw i32 %63, %64
  %mul53 = mul nsw i32 %sub52, 24
  store i32 %mul53, i32* %tdist, align 4
  %65 = load i32, i32* %tdist, align 4
  %66 = load i32, i32* %tdist, align 4
  %mul54 = mul nsw i32 %65, %66
  %67 = load i32, i32* %min_dist, align 4
  %add55 = add nsw i32 %67, %mul54
  store i32 %add55, i32* %min_dist, align 4
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %minG.addr, align 4
  %sub56 = sub nsw i32 %68, %69
  %mul57 = mul nsw i32 %sub56, 24
  store i32 %mul57, i32* %tdist, align 4
  %70 = load i32, i32* %tdist, align 4
  %71 = load i32, i32* %tdist, align 4
  %mul58 = mul nsw i32 %70, %71
  %72 = load i32, i32* %max_dist, align 4
  %add59 = add nsw i32 %72, %mul58
  store i32 %add59, i32* %max_dist, align 4
  br label %if.end.73

if.else.60:                                       ; preds = %if.else.49
  %73 = load i32, i32* %x, align 4
  %74 = load i32, i32* %centerG, align 4
  %cmp61 = icmp sle i32 %73, %74
  br i1 %cmp61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.else.60
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %maxG, align 4
  %sub63 = sub nsw i32 %75, %76
  %mul64 = mul nsw i32 %sub63, 24
  store i32 %mul64, i32* %tdist, align 4
  %77 = load i32, i32* %tdist, align 4
  %78 = load i32, i32* %tdist, align 4
  %mul65 = mul nsw i32 %77, %78
  %79 = load i32, i32* %max_dist, align 4
  %add66 = add nsw i32 %79, %mul65
  store i32 %add66, i32* %max_dist, align 4
  br label %if.end.72

if.else.67:                                       ; preds = %if.else.60
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %minG.addr, align 4
  %sub68 = sub nsw i32 %80, %81
  %mul69 = mul nsw i32 %sub68, 24
  store i32 %mul69, i32* %tdist, align 4
  %82 = load i32, i32* %tdist, align 4
  %83 = load i32, i32* %tdist, align 4
  %mul70 = mul nsw i32 %82, %83
  %84 = load i32, i32* %max_dist, align 4
  %add71 = add nsw i32 %84, %mul70
  store i32 %add71, i32* %max_dist, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.then.62
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.51
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.40
  %85 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %85 to i64
  %86 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin76 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %86, i32 0, i32 7
  %arrayidx77 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin76, i32 0, i64 %idxprom75
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx77, i32 0, i32 2
  %87 = load i32, i32* %blue, align 4
  store i32 %87, i32* %x, align 4
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %minB.addr, align 4
  %cmp78 = icmp slt i32 %88, %89
  br i1 %cmp78, label %if.then.79, label %if.else.88

if.then.79:                                       ; preds = %if.end.74
  %90 = load i32, i32* %x, align 4
  %91 = load i32, i32* %minB.addr, align 4
  %sub80 = sub nsw i32 %90, %91
  %mul81 = mul nsw i32 %sub80, 26
  store i32 %mul81, i32* %tdist, align 4
  %92 = load i32, i32* %tdist, align 4
  %93 = load i32, i32* %tdist, align 4
  %mul82 = mul nsw i32 %92, %93
  %94 = load i32, i32* %min_dist, align 4
  %add83 = add nsw i32 %94, %mul82
  store i32 %add83, i32* %min_dist, align 4
  %95 = load i32, i32* %x, align 4
  %96 = load i32, i32* %maxB, align 4
  %sub84 = sub nsw i32 %95, %96
  %mul85 = mul nsw i32 %sub84, 26
  store i32 %mul85, i32* %tdist, align 4
  %97 = load i32, i32* %tdist, align 4
  %98 = load i32, i32* %tdist, align 4
  %mul86 = mul nsw i32 %97, %98
  %99 = load i32, i32* %max_dist, align 4
  %add87 = add nsw i32 %99, %mul86
  store i32 %add87, i32* %max_dist, align 4
  br label %if.end.113

if.else.88:                                       ; preds = %if.end.74
  %100 = load i32, i32* %x, align 4
  %101 = load i32, i32* %maxB, align 4
  %cmp89 = icmp sgt i32 %100, %101
  br i1 %cmp89, label %if.then.90, label %if.else.99

if.then.90:                                       ; preds = %if.else.88
  %102 = load i32, i32* %x, align 4
  %103 = load i32, i32* %maxB, align 4
  %sub91 = sub nsw i32 %102, %103
  %mul92 = mul nsw i32 %sub91, 26
  store i32 %mul92, i32* %tdist, align 4
  %104 = load i32, i32* %tdist, align 4
  %105 = load i32, i32* %tdist, align 4
  %mul93 = mul nsw i32 %104, %105
  %106 = load i32, i32* %min_dist, align 4
  %add94 = add nsw i32 %106, %mul93
  store i32 %add94, i32* %min_dist, align 4
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %minB.addr, align 4
  %sub95 = sub nsw i32 %107, %108
  %mul96 = mul nsw i32 %sub95, 26
  store i32 %mul96, i32* %tdist, align 4
  %109 = load i32, i32* %tdist, align 4
  %110 = load i32, i32* %tdist, align 4
  %mul97 = mul nsw i32 %109, %110
  %111 = load i32, i32* %max_dist, align 4
  %add98 = add nsw i32 %111, %mul97
  store i32 %add98, i32* %max_dist, align 4
  br label %if.end.112

if.else.99:                                       ; preds = %if.else.88
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %centerB, align 4
  %cmp100 = icmp sle i32 %112, %113
  br i1 %cmp100, label %if.then.101, label %if.else.106

if.then.101:                                      ; preds = %if.else.99
  %114 = load i32, i32* %x, align 4
  %115 = load i32, i32* %maxB, align 4
  %sub102 = sub nsw i32 %114, %115
  %mul103 = mul nsw i32 %sub102, 26
  store i32 %mul103, i32* %tdist, align 4
  %116 = load i32, i32* %tdist, align 4
  %117 = load i32, i32* %tdist, align 4
  %mul104 = mul nsw i32 %116, %117
  %118 = load i32, i32* %max_dist, align 4
  %add105 = add nsw i32 %118, %mul104
  store i32 %add105, i32* %max_dist, align 4
  br label %if.end.111

if.else.106:                                      ; preds = %if.else.99
  %119 = load i32, i32* %x, align 4
  %120 = load i32, i32* %minB.addr, align 4
  %sub107 = sub nsw i32 %119, %120
  %mul108 = mul nsw i32 %sub107, 26
  store i32 %mul108, i32* %tdist, align 4
  %121 = load i32, i32* %tdist, align 4
  %122 = load i32, i32* %tdist, align 4
  %mul109 = mul nsw i32 %121, %122
  %123 = load i32, i32* %max_dist, align 4
  %add110 = add nsw i32 %123, %mul109
  store i32 %add110, i32* %max_dist, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.101
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.90
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.79
  %124 = load i32, i32* %min_dist, align 4
  %125 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %125 to i64
  %arrayidx115 = getelementptr inbounds [256 x i32], [256 x i32]* %mindist, i32 0, i64 %idxprom114
  store i32 %124, i32* %arrayidx115, align 4
  %126 = load i32, i32* %max_dist, align 4
  %127 = load i32, i32* %minmaxdist, align 4
  %cmp116 = icmp slt i32 %126, %127
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.113
  %128 = load i32, i32* %max_dist, align 4
  store i32 %128, i32* %minmaxdist, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.113
  br label %for.inc

for.inc:                                          ; preds = %if.end.118
  %129 = load i32, i32* %i, align 4
  %inc = add nsw i32 %129, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ncolors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.130, %for.end
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %numcolors, align 4
  %cmp120 = icmp slt i32 %130, %131
  br i1 %cmp120, label %for.body.121, label %for.end.132

for.body.121:                                     ; preds = %for.cond.119
  %132 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %132 to i64
  %arrayidx123 = getelementptr inbounds [256 x i32], [256 x i32]* %mindist, i32 0, i64 %idxprom122
  %133 = load i32, i32* %arrayidx123, align 4
  %134 = load i32, i32* %minmaxdist, align 4
  %cmp124 = icmp sle i32 %133, %134
  br i1 %cmp124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %for.body.121
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %ncolors, align 4
  %inc126 = add nsw i32 %136, 1
  store i32 %inc126, i32* %ncolors, align 4
  %idxprom127 = sext i32 %136 to i64
  %137 = load i32*, i32** %colorlist.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %137, i64 %idxprom127
  store i32 %135, i32* %arrayidx128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %for.body.121
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %138 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %138, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.119

for.end.132:                                      ; preds = %for.cond.119
  %139 = load i32, i32* %ncolors, align 4
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define internal void @find_best_colors(%struct._QuantizeObj* %quantobj, i32 %minR, i32 %minG, i32 %minB, i32 %numcolors, i32* %colorlist, i32* %bestcolor) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %minR.addr = alloca i32, align 4
  %minG.addr = alloca i32, align 4
  %minB.addr = alloca i32, align 4
  %numcolors.addr = alloca i32, align 4
  %colorlist.addr = alloca i32*, align 8
  %bestcolor.addr = alloca i32*, align 8
  %iR = alloca i32, align 4
  %iG = alloca i32, align 4
  %iB = alloca i32, align 4
  %i = alloca i32, align 4
  %icolor = alloca i32, align 4
  %bptr = alloca i32*, align 8
  %cptr = alloca i32*, align 8
  %dist0 = alloca i32, align 4
  %dist1 = alloca i32, align 4
  %dist2 = alloca i32, align 4
  %xx0 = alloca i32, align 4
  %xx1 = alloca i32, align 4
  %xx2 = alloca i32, align 4
  %inR = alloca i32, align 4
  %inG = alloca i32, align 4
  %inB = alloca i32, align 4
  %bestdist = alloca [1 x i32], align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i32 %minR, i32* %minR.addr, align 4
  store i32 %minG, i32* %minG.addr, align 4
  store i32 %minB, i32* %minB.addr, align 4
  store i32 %numcolors, i32* %numcolors.addr, align 4
  store i32* %colorlist, i32** %colorlist.addr, align 8
  store i32* %bestcolor, i32** %bestcolor.addr, align 8
  %0 = bitcast [1 x i32]* %bestdist to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %bestdist, i32 0, i32 0
  store i32* %arraydecay, i32** %bptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %bptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %bptr, align 8
  store i32 2147483647, i32* %2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.54, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %numcolors.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.55

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %colorlist.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %icolor, align 4
  %9 = load i32, i32* %minR.addr, align 4
  %10 = load i32, i32* %icolor, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %11, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin, i32 0, i64 %idxprom4
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx5, i32 0, i32 0
  %12 = load i32, i32* %red, align 4
  %sub = sub nsw i32 %9, %12
  %mul = mul nsw i32 %sub, 13
  store i32 %mul, i32* %inR, align 4
  %13 = load i32, i32* %inR, align 4
  %14 = load i32, i32* %inR, align 4
  %mul6 = mul nsw i32 %13, %14
  store i32 %mul6, i32* %dist0, align 4
  %15 = load i32, i32* %minG.addr, align 4
  %16 = load i32, i32* %icolor, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin8 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %17, i32 0, i32 7
  %arrayidx9 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin8, i32 0, i64 %idxprom7
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 1
  %18 = load i32, i32* %green, align 4
  %sub10 = sub nsw i32 %15, %18
  %mul11 = mul nsw i32 %sub10, 24
  store i32 %mul11, i32* %inG, align 4
  %19 = load i32, i32* %inG, align 4
  %20 = load i32, i32* %inG, align 4
  %mul12 = mul nsw i32 %19, %20
  %21 = load i32, i32* %dist0, align 4
  %add = add nsw i32 %21, %mul12
  store i32 %add, i32* %dist0, align 4
  %22 = load i32, i32* %minB.addr, align 4
  %23 = load i32, i32* %icolor, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %clin14 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %24, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %clin14, i32 0, i64 %idxprom13
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx15, i32 0, i32 2
  %25 = load i32, i32* %blue, align 4
  %sub16 = sub nsw i32 %22, %25
  %mul17 = mul nsw i32 %sub16, 26
  store i32 %mul17, i32* %inB, align 4
  %26 = load i32, i32* %inB, align 4
  %27 = load i32, i32* %inB, align 4
  %mul18 = mul nsw i32 %26, %27
  %28 = load i32, i32* %dist0, align 4
  %add19 = add nsw i32 %28, %mul18
  store i32 %add19, i32* %dist0, align 4
  %29 = load i32, i32* %inR, align 4
  %mul20 = mul nsw i32 %29, 26
  %add21 = add nsw i32 %mul20, 169
  store i32 %add21, i32* %inR, align 4
  %30 = load i32, i32* %inG, align 4
  %mul22 = mul nsw i32 %30, 192
  %add23 = add nsw i32 %mul22, 9216
  store i32 %add23, i32* %inG, align 4
  %31 = load i32, i32* %inB, align 4
  %mul24 = mul nsw i32 %31, 208
  %add25 = add nsw i32 %mul24, 10816
  store i32 %add25, i32* %inB, align 4
  %arraydecay26 = getelementptr inbounds [1 x i32], [1 x i32]* %bestdist, i32 0, i32 0
  store i32* %arraydecay26, i32** %bptr, align 8
  %32 = load i32*, i32** %bestcolor.addr, align 8
  store i32* %32, i32** %cptr, align 8
  %33 = load i32, i32* %inR, align 4
  store i32 %33, i32* %xx0, align 4
  store i32 0, i32* %iR, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.51, %for.body.3
  %34 = load i32, i32* %iR, align 4
  %cmp28 = icmp sge i32 %34, 0
  br i1 %cmp28, label %for.body.29, label %for.end.53

for.body.29:                                      ; preds = %for.cond.27
  %35 = load i32, i32* %dist0, align 4
  store i32 %35, i32* %dist1, align 4
  %36 = load i32, i32* %inG, align 4
  store i32 %36, i32* %xx1, align 4
  store i32 0, i32* %iG, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.46, %for.body.29
  %37 = load i32, i32* %iG, align 4
  %cmp31 = icmp sge i32 %37, 0
  br i1 %cmp31, label %for.body.32, label %for.end.48

for.body.32:                                      ; preds = %for.cond.30
  %38 = load i32, i32* %dist1, align 4
  store i32 %38, i32* %dist2, align 4
  %39 = load i32, i32* %inB, align 4
  store i32 %39, i32* %xx2, align 4
  store i32 0, i32* %iB, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.body.32
  %40 = load i32, i32* %iB, align 4
  %cmp34 = icmp sge i32 %40, 0
  br i1 %cmp34, label %for.body.35, label %for.end.43

for.body.35:                                      ; preds = %for.cond.33
  %41 = load i32, i32* %dist2, align 4
  %42 = load i32*, i32** %bptr, align 8
  %43 = load i32, i32* %42, align 4
  %cmp36 = icmp slt i32 %41, %43
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.35
  %44 = load i32, i32* %dist2, align 4
  %45 = load i32*, i32** %bptr, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %icolor, align 4
  %47 = load i32*, i32** %cptr, align 8
  store i32 %46, i32* %47, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.35
  %48 = load i32, i32* %xx2, align 4
  %49 = load i32, i32* %dist2, align 4
  %add37 = add nsw i32 %49, %48
  store i32 %add37, i32* %dist2, align 4
  %50 = load i32, i32* %xx2, align 4
  %add38 = add nsw i32 %50, 21632
  store i32 %add38, i32* %xx2, align 4
  %51 = load i32*, i32** %bptr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %incdec.ptr39, i32** %bptr, align 8
  %52 = load i32*, i32** %cptr, align 8
  %incdec.ptr40 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr40, i32** %cptr, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end
  %53 = load i32, i32* %iB, align 4
  %dec42 = add nsw i32 %53, -1
  store i32 %dec42, i32* %iB, align 4
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %54 = load i32, i32* %xx1, align 4
  %55 = load i32, i32* %dist1, align 4
  %add44 = add nsw i32 %55, %54
  store i32 %add44, i32* %dist1, align 4
  %56 = load i32, i32* %xx1, align 4
  %add45 = add nsw i32 %56, 18432
  store i32 %add45, i32* %xx1, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.43
  %57 = load i32, i32* %iG, align 4
  %dec47 = add nsw i32 %57, -1
  store i32 %dec47, i32* %iG, align 4
  br label %for.cond.30

for.end.48:                                       ; preds = %for.cond.30
  %58 = load i32, i32* %xx0, align 4
  %59 = load i32, i32* %dist0, align 4
  %add49 = add nsw i32 %59, %58
  store i32 %add49, i32* %dist0, align 4
  %60 = load i32, i32* %xx0, align 4
  %add50 = add nsw i32 %60, 338
  store i32 %add50, i32* %xx0, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.48
  %61 = load i32, i32* %iR, align 4
  %dec52 = add nsw i32 %61, -1
  store i32 %dec52, i32* %iR, align 4
  br label %for.cond.27

for.end.53:                                       ; preds = %for.cond.27
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %62 = load i32, i32* %i, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end.55:                                       ; preds = %for.cond.1
  ret void
}

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define internal i32* @init_error_limit(i32 %error_freedom) #0 {
entry:
  %retval = alloca i32*, align 8
  %error_freedom.addr = alloca i32, align 4
  %table = alloca i32*, align 8
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %STEPSIZE = alloca i32, align 4
  %STEPSIZE16 = alloca i32, align 4
  store i32 %error_freedom, i32* %error_freedom.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 511, i64 4)
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %table, align 8
  %1 = load i32*, i32** %table, align 8
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 255
  store i32* %add.ptr, i32** %table, align 8
  %2 = load i32, i32* %error_freedom.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 190, i32* %STEPSIZE, align 4
  store i32 0, i32* %in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %in, align 4
  %cmp1 = icmp slt i32 %3, 190
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %in, align 4
  %5 = load i32, i32* %in, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  %7 = load i32, i32* %in, align 4
  %sub = sub nsw i32 0, %7
  %8 = load i32, i32* %in, align 4
  %sub2 = sub nsw i32 0, %8
  %idxprom3 = sext i32 %sub2 to i64
  %9 = load i32*, i32** %table, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  store i32 %sub, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %in, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %in, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.13, %for.end
  %11 = load i32, i32* %in, align 4
  %cmp6 = icmp sle i32 %11, 255
  br i1 %cmp6, label %for.body.7, label %for.end.15

for.body.7:                                       ; preds = %for.cond.5
  %12 = load i32, i32* %in, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32*, i32** %table, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  store i32 190, i32* %arrayidx9, align 4
  %14 = load i32, i32* %in, align 4
  %sub10 = sub nsw i32 0, %14
  %idxprom11 = sext i32 %sub10 to i64
  %15 = load i32*, i32** %table, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 %idxprom11
  store i32 -190, i32* %arrayidx12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.7
  %16 = load i32, i32* %in, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %in, align 4
  br label %for.cond.5

for.end.15:                                       ; preds = %for.cond.5
  %17 = load i32*, i32** %table, align 8
  store i32* %17, i32** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 24, i32* %STEPSIZE16, align 4
  store i32 0, i32* %out, align 4
  store i32 0, i32* %in, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.26, %if.else
  %18 = load i32, i32* %in, align 4
  %cmp18 = icmp slt i32 %18, 24
  br i1 %cmp18, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %out, align 4
  %20 = load i32, i32* %in, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i32*, i32** %table, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %idxprom20
  store i32 %19, i32* %arrayidx21, align 4
  %22 = load i32, i32* %out, align 4
  %sub22 = sub nsw i32 0, %22
  %23 = load i32, i32* %in, align 4
  %sub23 = sub nsw i32 0, %23
  %idxprom24 = sext i32 %sub23 to i64
  %24 = load i32*, i32** %table, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 %idxprom24
  store i32 %sub22, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.19
  %25 = load i32, i32* %in, align 4
  %inc27 = add nsw i32 %25, 1
  store i32 %inc27, i32* %in, align 4
  %26 = load i32, i32* %out, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %out, align 4
  br label %for.cond.17

for.end.29:                                       ; preds = %for.cond.17
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %for.end.29
  %27 = load i32, i32* %in, align 4
  %cmp31 = icmp slt i32 %27, 72
  br i1 %cmp31, label %for.body.32, label %for.end.41

for.body.32:                                      ; preds = %for.cond.30
  %28 = load i32, i32* %out, align 4
  %29 = load i32, i32* %in, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load i32*, i32** %table, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %30, i64 %idxprom33
  store i32 %28, i32* %arrayidx34, align 4
  %31 = load i32, i32* %out, align 4
  %sub35 = sub nsw i32 0, %31
  %32 = load i32, i32* %in, align 4
  %sub36 = sub nsw i32 0, %32
  %idxprom37 = sext i32 %sub36 to i64
  %33 = load i32*, i32** %table, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %33, i64 %idxprom37
  store i32 %sub35, i32* %arrayidx38, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.32
  %34 = load i32, i32* %in, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %in, align 4
  %35 = load i32, i32* %in, align 4
  %and = and i32 %35, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %36 = load i32, i32* %out, align 4
  %add = add nsw i32 %36, %cond
  store i32 %add, i32* %out, align 4
  br label %for.cond.30

for.end.41:                                       ; preds = %for.cond.30
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.51, %for.end.41
  %37 = load i32, i32* %in, align 4
  %cmp43 = icmp sle i32 %37, 255
  br i1 %cmp43, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.42
  %38 = load i32, i32* %out, align 4
  %39 = load i32, i32* %in, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load i32*, i32** %table, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %40, i64 %idxprom45
  store i32 %38, i32* %arrayidx46, align 4
  %41 = load i32, i32* %out, align 4
  %sub47 = sub nsw i32 0, %41
  %42 = load i32, i32* %in, align 4
  %sub48 = sub nsw i32 0, %42
  %idxprom49 = sext i32 %sub48 to i64
  %43 = load i32*, i32** %table, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %43, i64 %idxprom49
  store i32 %sub47, i32* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %44 = load i32, i32* %in, align 4
  %inc52 = add nsw i32 %44, 1
  store i32 %inc52, i32* %in, align 4
  br label %for.cond.42

for.end.53:                                       ; preds = %for.cond.42
  %45 = load i32*, i32** %table, align 8
  store i32* %45, i32** %retval
  br label %return

return:                                           ; preds = %for.end.53, %for.end.15
  %46 = load i32*, i32** %retval
  ret i32* %46
}

declare noalias i8* @g_malloc(i64) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare void @pixel_region_get_row(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #3

declare void @pixel_region_set_row(%struct._PixelRegion*, i32, i32, i32, i8*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal void @fill_inverse_cmap_gray(%struct._QuantizeObj* %quantobj, i64* %histogram, i32 %pixel) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %pixel.addr = alloca i32, align 4
  %cmap = alloca %struct._Color*, align 8
  %dist = alloca i64, align 8
  %mindist = alloca i64, align 8
  %mindisti = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store i32 %pixel, i32* %pixel.addr, align 4
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap1 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 6
  %arraydecay = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap1, i32 0, i32 0
  store %struct._Color* %arraydecay, %struct._Color** %cmap, align 8
  store i64 65536, i64* %mindist, align 8
  store i32 -1, i32* %mindisti, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %2, i32 0, i32 5
  %3 = load i32, i32* %actual_number_of_colors, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pixel.addr, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._Color*, %struct._Color** %cmap, align 8
  %arrayidx = getelementptr inbounds %struct._Color, %struct._Color* %6, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %red, align 4
  %sub = sub nsw i32 %4, %7
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32, i32* %pixel.addr, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct._Color*, %struct._Color** %cmap, align 8
  %arrayidx4 = getelementptr inbounds %struct._Color, %struct._Color* %10, i64 %idxprom3
  %red5 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx4, i32 0, i32 0
  %11 = load i32, i32* %red5, align 4
  %sub6 = sub nsw i32 %8, %11
  %sub7 = sub nsw i32 0, %sub6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %pixel.addr, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct._Color*, %struct._Color** %cmap, align 8
  %arrayidx9 = getelementptr inbounds %struct._Color, %struct._Color* %14, i64 %idxprom8
  %red10 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx9, i32 0, i32 0
  %15 = load i32, i32* %red10, align 4
  %sub11 = sub nsw i32 %12, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub7, %cond.true ], [ %sub11, %cond.false ]
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %dist, align 8
  %16 = load i64, i64* %dist, align 8
  %17 = load i64, i64* %mindist, align 8
  %cmp12 = icmp slt i64 %16, %17
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %18 = load i64, i64* %dist, align 8
  store i64 %18, i64* %mindist, align 8
  %19 = load i32, i32* %i, align 4
  store i32 %19, i32* %mindisti, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %cmp14 = icmp sge i32 %21, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %for.end
  %22 = load i32, i32* %mindisti, align 4
  %add = add nsw i32 %22, 1
  %conv17 = sext i32 %add to i64
  %23 = load i32, i32* %pixel.addr, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i64*, i64** %histogram.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %24, i64 %idxprom18
  store i64 %conv17, i64* %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_colors_rgb(%struct._QuantizeObj* %quantobj, i64* %histogram) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %boxlist = alloca %struct.box*, align 8
  %numboxes = alloca i32, align 4
  %desired = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  %0 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %0, i32 0, i32 4
  %1 = load i32, i32* %desired_number_of_colors, align 4
  store i32 %1, i32* %desired, align 4
  %2 = load i32, i32* %desired, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 80)
  %3 = bitcast i8* %call to %struct.box*
  store %struct.box* %3, %struct.box** %boxlist, align 8
  store i32 1, i32* %numboxes, align 4
  %4 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %4, i64 0
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %arrayidx, i32 0, i32 0
  store i32 0, i32* %Rmin, align 4
  %5 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx1 = getelementptr inbounds %struct.box, %struct.box* %5, i64 0
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %arrayidx1, i32 0, i32 1
  store i32 255, i32* %Rmax, align 4
  %6 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx2 = getelementptr inbounds %struct.box, %struct.box* %6, i64 0
  %Gmin = getelementptr inbounds %struct.box, %struct.box* %arrayidx2, i32 0, i32 3
  store i32 0, i32* %Gmin, align 4
  %7 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx3 = getelementptr inbounds %struct.box, %struct.box* %7, i64 0
  %Gmax = getelementptr inbounds %struct.box, %struct.box* %arrayidx3, i32 0, i32 4
  store i32 63, i32* %Gmax, align 4
  %8 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx4 = getelementptr inbounds %struct.box, %struct.box* %8, i64 0
  %Bmin = getelementptr inbounds %struct.box, %struct.box* %arrayidx4, i32 0, i32 6
  store i32 0, i32* %Bmin, align 4
  %9 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx5 = getelementptr inbounds %struct.box, %struct.box* %9, i64 0
  %Bmax = getelementptr inbounds %struct.box, %struct.box* %arrayidx5, i32 0, i32 7
  store i32 63, i32* %Bmax, align 4
  %10 = load i64*, i64** %histogram.addr, align 8
  %11 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx6 = getelementptr inbounds %struct.box, %struct.box* %11, i64 0
  %12 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %desired_number_of_colors7 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %12, i32 0, i32 4
  %13 = load i32, i32* %desired_number_of_colors7, align 4
  call void @update_box_rgb(i64* %10, %struct.box* %arrayidx6, i32 %13)
  %14 = load i64*, i64** %histogram.addr, align 8
  %15 = load %struct.box*, %struct.box** %boxlist, align 8
  %16 = load i32, i32* %numboxes, align 4
  %17 = load i32, i32* %desired, align 4
  %18 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %progress = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %18, i32 0, i32 12
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call8 = call i32 @median_cut_rgb(i64* %14, %struct.box* %15, i32 %16, i32 %17, %struct._GimpProgress* %19)
  store i32 %call8, i32* %numboxes, align 4
  %20 = load i32, i32* %numboxes, align 4
  %21 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %21, i32 0, i32 5
  store i32 %20, i32* %actual_number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %numboxes, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %25 = load i64*, i64** %histogram.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx10 = getelementptr inbounds %struct.box, %struct.box* %27, i64 %idxprom
  %28 = load i32, i32* %i, align 4
  call void @compute_color_rgb(%struct._QuantizeObj* %24, i64* %25, %struct.box* %arrayidx10, i32 %28)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.box*, %struct.box** %boxlist, align 8
  %31 = bitcast %struct.box* %30 to i8*
  call void @g_free(i8* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_box_rgb(i64* %histogram, %struct.box* %boxp, i32 %cells_remaining) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %cells_remaining.addr = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  %Rmin = alloca i32, align 4
  %Rmax = alloca i32, align 4
  %Gmin = alloca i32, align 4
  %Gmax = alloca i32, align 4
  %Bmin = alloca i32, align 4
  %Bmax = alloca i32, align 4
  %dist0 = alloca i32, align 4
  %dist1 = alloca i32, align 4
  %dist2 = alloca i32, align 4
  %ccount = alloca i64, align 8
  %dummyqo = alloca %struct._QuantizeObj, align 8
  %dummybox = alloca %struct.box, align 8
  %freq_here = alloca i64, align 8
  %ge = alloca i32, align 4
  %be = alloca i32, align 4
  %re = alloca i32, align 4
  %longest_ax = alloca i32, align 4
  %longest_length = alloca i32, align 4
  %longest_length2 = alloca i32, align 4
  %ratio = alloca i32, align 4
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  store i32 %cells_remaining, i32* %cells_remaining.addr, align 4
  %0 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin1 = getelementptr inbounds %struct.box, %struct.box* %0, i32 0, i32 0
  %1 = load i32, i32* %Rmin1, align 4
  store i32 %1, i32* %Rmin, align 4
  %2 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax2 = getelementptr inbounds %struct.box, %struct.box* %2, i32 0, i32 1
  %3 = load i32, i32* %Rmax2, align 4
  store i32 %3, i32* %Rmax, align 4
  %4 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmin3 = getelementptr inbounds %struct.box, %struct.box* %4, i32 0, i32 3
  %5 = load i32, i32* %Gmin3, align 4
  store i32 %5, i32* %Gmin, align 4
  %6 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmax4 = getelementptr inbounds %struct.box, %struct.box* %6, i32 0, i32 4
  %7 = load i32, i32* %Gmax4, align 4
  store i32 %7, i32* %Gmax, align 4
  %8 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmin5 = getelementptr inbounds %struct.box, %struct.box* %8, i32 0, i32 6
  %9 = load i32, i32* %Bmin5, align 4
  store i32 %9, i32* %Bmin, align 4
  %10 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmax6 = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 7
  %11 = load i32, i32* %Bmax6, align 4
  store i32 %11, i32* %Bmax, align 4
  %12 = load i32, i32* %Rmax, align 4
  %13 = load i32, i32* %Rmin, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %Rmin, align 4
  store i32 %14, i32* %R, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.then
  %15 = load i32, i32* %R, align 4
  %16 = load i32, i32* %Rmax, align 4
  %cmp7 = icmp sle i32 %15, %16
  br i1 %cmp7, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %Gmin, align 4
  store i32 %17, i32* %G, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %for.body
  %18 = load i32, i32* %G, align 4
  %19 = load i32, i32* %Gmax, align 4
  %cmp9 = icmp sle i32 %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %Bmin, align 4
  store i32 %20, i32* %B, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %21 = load i32, i32* %B, align 4
  %22 = load i32, i32* %Bmax, align 4
  %cmp12 = icmp sle i32 %21, %22
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %23 = load i64*, i64** %histogram.addr, align 8
  %24 = load i32, i32* %R, align 4
  %25 = load i32, i32* %G, align 4
  %26 = load i32, i32* %B, align 4
  %call = call i64* @HIST_LIN(i64* %23, i32 %24, i32 %25, i32 %26)
  %27 = load i64, i64* %call, align 8
  %cmp14 = icmp ne i64 %27, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body.13
  %28 = load i32, i32* %R, align 4
  store i32 %28, i32* %Rmin, align 4
  %29 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin16 = getelementptr inbounds %struct.box, %struct.box* %29, i32 0, i32 0
  store i32 %28, i32* %Rmin16, align 4
  br label %have_Rmin

if.end:                                           ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %B, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %B, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %31 = load i32, i32* %G, align 4
  %inc18 = add nsw i32 %31, 1
  store i32 %inc18, i32* %G, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %for.cond.8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %32 = load i32, i32* %R, align 4
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, i32* %R, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %entry
  br label %have_Rmin

have_Rmin:                                        ; preds = %if.end.23, %if.then.15
  %33 = load i32, i32* %Rmax, align 4
  %34 = load i32, i32* %Rmin, align 4
  %cmp24 = icmp sgt i32 %33, %34
  br i1 %cmp24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %have_Rmin
  %35 = load i32, i32* %Rmax, align 4
  store i32 %35, i32* %R, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.46, %if.then.25
  %36 = load i32, i32* %R, align 4
  %37 = load i32, i32* %Rmin, align 4
  %cmp27 = icmp sge i32 %36, %37
  br i1 %cmp27, label %for.body.28, label %for.end.47

for.body.28:                                      ; preds = %for.cond.26
  %38 = load i32, i32* %Gmin, align 4
  store i32 %38, i32* %G, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.43, %for.body.28
  %39 = load i32, i32* %G, align 4
  %40 = load i32, i32* %Gmax, align 4
  %cmp30 = icmp sle i32 %39, %40
  br i1 %cmp30, label %for.body.31, label %for.end.45

for.body.31:                                      ; preds = %for.cond.29
  %41 = load i32, i32* %Bmin, align 4
  store i32 %41, i32* %B, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.40, %for.body.31
  %42 = load i32, i32* %B, align 4
  %43 = load i32, i32* %Bmax, align 4
  %cmp33 = icmp sle i32 %42, %43
  br i1 %cmp33, label %for.body.34, label %for.end.42

for.body.34:                                      ; preds = %for.cond.32
  %44 = load i64*, i64** %histogram.addr, align 8
  %45 = load i32, i32* %R, align 4
  %46 = load i32, i32* %G, align 4
  %47 = load i32, i32* %B, align 4
  %call35 = call i64* @HIST_LIN(i64* %44, i32 %45, i32 %46, i32 %47)
  %48 = load i64, i64* %call35, align 8
  %cmp36 = icmp ne i64 %48, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %for.body.34
  %49 = load i32, i32* %R, align 4
  store i32 %49, i32* %Rmax, align 4
  %50 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax38 = getelementptr inbounds %struct.box, %struct.box* %50, i32 0, i32 1
  store i32 %49, i32* %Rmax38, align 4
  br label %have_Rmax

if.end.39:                                        ; preds = %for.body.34
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %51 = load i32, i32* %B, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %B, align 4
  br label %for.cond.32

for.end.42:                                       ; preds = %for.cond.32
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %52 = load i32, i32* %G, align 4
  %inc44 = add nsw i32 %52, 1
  store i32 %inc44, i32* %G, align 4
  br label %for.cond.29

for.end.45:                                       ; preds = %for.cond.29
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %53 = load i32, i32* %R, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %R, align 4
  br label %for.cond.26

for.end.47:                                       ; preds = %for.cond.26
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %have_Rmin
  br label %have_Rmax

have_Rmax:                                        ; preds = %if.end.48, %if.then.37
  %54 = load i32, i32* %Gmax, align 4
  %55 = load i32, i32* %Gmin, align 4
  %cmp49 = icmp sgt i32 %54, %55
  br i1 %cmp49, label %if.then.50, label %if.end.74

if.then.50:                                       ; preds = %have_Rmax
  %56 = load i32, i32* %Gmin, align 4
  store i32 %56, i32* %G, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.71, %if.then.50
  %57 = load i32, i32* %G, align 4
  %58 = load i32, i32* %Gmax, align 4
  %cmp52 = icmp sle i32 %57, %58
  br i1 %cmp52, label %for.body.53, label %for.end.73

for.body.53:                                      ; preds = %for.cond.51
  %59 = load i32, i32* %Rmin, align 4
  store i32 %59, i32* %R, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.68, %for.body.53
  %60 = load i32, i32* %R, align 4
  %61 = load i32, i32* %Rmax, align 4
  %cmp55 = icmp sle i32 %60, %61
  br i1 %cmp55, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.54
  %62 = load i32, i32* %Bmin, align 4
  store i32 %62, i32* %B, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.body.56
  %63 = load i32, i32* %B, align 4
  %64 = load i32, i32* %Bmax, align 4
  %cmp58 = icmp sle i32 %63, %64
  br i1 %cmp58, label %for.body.59, label %for.end.67

for.body.59:                                      ; preds = %for.cond.57
  %65 = load i64*, i64** %histogram.addr, align 8
  %66 = load i32, i32* %R, align 4
  %67 = load i32, i32* %G, align 4
  %68 = load i32, i32* %B, align 4
  %call60 = call i64* @HIST_LIN(i64* %65, i32 %66, i32 %67, i32 %68)
  %69 = load i64, i64* %call60, align 8
  %cmp61 = icmp ne i64 %69, 0
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.body.59
  %70 = load i32, i32* %G, align 4
  store i32 %70, i32* %Gmin, align 4
  %71 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmin63 = getelementptr inbounds %struct.box, %struct.box* %71, i32 0, i32 3
  store i32 %70, i32* %Gmin63, align 4
  br label %have_Gmin

if.end.64:                                        ; preds = %for.body.59
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %72 = load i32, i32* %B, align 4
  %inc66 = add nsw i32 %72, 1
  store i32 %inc66, i32* %B, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %73 = load i32, i32* %R, align 4
  %inc69 = add nsw i32 %73, 1
  store i32 %inc69, i32* %R, align 4
  br label %for.cond.54

for.end.70:                                       ; preds = %for.cond.54
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %74 = load i32, i32* %G, align 4
  %inc72 = add nsw i32 %74, 1
  store i32 %inc72, i32* %G, align 4
  br label %for.cond.51

for.end.73:                                       ; preds = %for.cond.51
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %have_Rmax
  br label %have_Gmin

have_Gmin:                                        ; preds = %if.end.74, %if.then.62
  %75 = load i32, i32* %Gmax, align 4
  %76 = load i32, i32* %Gmin, align 4
  %cmp75 = icmp sgt i32 %75, %76
  br i1 %cmp75, label %if.then.76, label %if.end.100

if.then.76:                                       ; preds = %have_Gmin
  %77 = load i32, i32* %Gmax, align 4
  store i32 %77, i32* %G, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.97, %if.then.76
  %78 = load i32, i32* %G, align 4
  %79 = load i32, i32* %Gmin, align 4
  %cmp78 = icmp sge i32 %78, %79
  br i1 %cmp78, label %for.body.79, label %for.end.99

for.body.79:                                      ; preds = %for.cond.77
  %80 = load i32, i32* %Rmin, align 4
  store i32 %80, i32* %R, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.94, %for.body.79
  %81 = load i32, i32* %R, align 4
  %82 = load i32, i32* %Rmax, align 4
  %cmp81 = icmp sle i32 %81, %82
  br i1 %cmp81, label %for.body.82, label %for.end.96

for.body.82:                                      ; preds = %for.cond.80
  %83 = load i32, i32* %Bmin, align 4
  store i32 %83, i32* %B, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.91, %for.body.82
  %84 = load i32, i32* %B, align 4
  %85 = load i32, i32* %Bmax, align 4
  %cmp84 = icmp sle i32 %84, %85
  br i1 %cmp84, label %for.body.85, label %for.end.93

for.body.85:                                      ; preds = %for.cond.83
  %86 = load i64*, i64** %histogram.addr, align 8
  %87 = load i32, i32* %R, align 4
  %88 = load i32, i32* %G, align 4
  %89 = load i32, i32* %B, align 4
  %call86 = call i64* @HIST_LIN(i64* %86, i32 %87, i32 %88, i32 %89)
  %90 = load i64, i64* %call86, align 8
  %cmp87 = icmp ne i64 %90, 0
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %for.body.85
  %91 = load i32, i32* %G, align 4
  store i32 %91, i32* %Gmax, align 4
  %92 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmax89 = getelementptr inbounds %struct.box, %struct.box* %92, i32 0, i32 4
  store i32 %91, i32* %Gmax89, align 4
  br label %have_Gmax

if.end.90:                                        ; preds = %for.body.85
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %93 = load i32, i32* %B, align 4
  %inc92 = add nsw i32 %93, 1
  store i32 %inc92, i32* %B, align 4
  br label %for.cond.83

for.end.93:                                       ; preds = %for.cond.83
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %94 = load i32, i32* %R, align 4
  %inc95 = add nsw i32 %94, 1
  store i32 %inc95, i32* %R, align 4
  br label %for.cond.80

for.end.96:                                       ; preds = %for.cond.80
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %95 = load i32, i32* %G, align 4
  %dec98 = add nsw i32 %95, -1
  store i32 %dec98, i32* %G, align 4
  br label %for.cond.77

for.end.99:                                       ; preds = %for.cond.77
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %have_Gmin
  br label %have_Gmax

have_Gmax:                                        ; preds = %if.end.100, %if.then.88
  %96 = load i32, i32* %Bmax, align 4
  %97 = load i32, i32* %Bmin, align 4
  %cmp101 = icmp sgt i32 %96, %97
  br i1 %cmp101, label %if.then.102, label %if.end.126

if.then.102:                                      ; preds = %have_Gmax
  %98 = load i32, i32* %Bmin, align 4
  store i32 %98, i32* %B, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.123, %if.then.102
  %99 = load i32, i32* %B, align 4
  %100 = load i32, i32* %Bmax, align 4
  %cmp104 = icmp sle i32 %99, %100
  br i1 %cmp104, label %for.body.105, label %for.end.125

for.body.105:                                     ; preds = %for.cond.103
  %101 = load i32, i32* %Rmin, align 4
  store i32 %101, i32* %R, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.120, %for.body.105
  %102 = load i32, i32* %R, align 4
  %103 = load i32, i32* %Rmax, align 4
  %cmp107 = icmp sle i32 %102, %103
  br i1 %cmp107, label %for.body.108, label %for.end.122

for.body.108:                                     ; preds = %for.cond.106
  %104 = load i32, i32* %Gmin, align 4
  store i32 %104, i32* %G, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.117, %for.body.108
  %105 = load i32, i32* %G, align 4
  %106 = load i32, i32* %Gmax, align 4
  %cmp110 = icmp sle i32 %105, %106
  br i1 %cmp110, label %for.body.111, label %for.end.119

for.body.111:                                     ; preds = %for.cond.109
  %107 = load i64*, i64** %histogram.addr, align 8
  %108 = load i32, i32* %R, align 4
  %109 = load i32, i32* %G, align 4
  %110 = load i32, i32* %B, align 4
  %call112 = call i64* @HIST_LIN(i64* %107, i32 %108, i32 %109, i32 %110)
  %111 = load i64, i64* %call112, align 8
  %cmp113 = icmp ne i64 %111, 0
  br i1 %cmp113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %for.body.111
  %112 = load i32, i32* %B, align 4
  store i32 %112, i32* %Bmin, align 4
  %113 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmin115 = getelementptr inbounds %struct.box, %struct.box* %113, i32 0, i32 6
  store i32 %112, i32* %Bmin115, align 4
  br label %have_Bmin

if.end.116:                                       ; preds = %for.body.111
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %114 = load i32, i32* %G, align 4
  %inc118 = add nsw i32 %114, 1
  store i32 %inc118, i32* %G, align 4
  br label %for.cond.109

for.end.119:                                      ; preds = %for.cond.109
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %115 = load i32, i32* %R, align 4
  %inc121 = add nsw i32 %115, 1
  store i32 %inc121, i32* %R, align 4
  br label %for.cond.106

for.end.122:                                      ; preds = %for.cond.106
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %116 = load i32, i32* %B, align 4
  %inc124 = add nsw i32 %116, 1
  store i32 %inc124, i32* %B, align 4
  br label %for.cond.103

for.end.125:                                      ; preds = %for.cond.103
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.125, %have_Gmax
  br label %have_Bmin

have_Bmin:                                        ; preds = %if.end.126, %if.then.114
  %117 = load i32, i32* %Bmax, align 4
  %118 = load i32, i32* %Bmin, align 4
  %cmp127 = icmp sgt i32 %117, %118
  br i1 %cmp127, label %if.then.128, label %if.end.152

if.then.128:                                      ; preds = %have_Bmin
  %119 = load i32, i32* %Bmax, align 4
  store i32 %119, i32* %B, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.149, %if.then.128
  %120 = load i32, i32* %B, align 4
  %121 = load i32, i32* %Bmin, align 4
  %cmp130 = icmp sge i32 %120, %121
  br i1 %cmp130, label %for.body.131, label %for.end.151

for.body.131:                                     ; preds = %for.cond.129
  %122 = load i32, i32* %Rmin, align 4
  store i32 %122, i32* %R, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.146, %for.body.131
  %123 = load i32, i32* %R, align 4
  %124 = load i32, i32* %Rmax, align 4
  %cmp133 = icmp sle i32 %123, %124
  br i1 %cmp133, label %for.body.134, label %for.end.148

for.body.134:                                     ; preds = %for.cond.132
  %125 = load i32, i32* %Gmin, align 4
  store i32 %125, i32* %G, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.143, %for.body.134
  %126 = load i32, i32* %G, align 4
  %127 = load i32, i32* %Gmax, align 4
  %cmp136 = icmp sle i32 %126, %127
  br i1 %cmp136, label %for.body.137, label %for.end.145

for.body.137:                                     ; preds = %for.cond.135
  %128 = load i64*, i64** %histogram.addr, align 8
  %129 = load i32, i32* %R, align 4
  %130 = load i32, i32* %G, align 4
  %131 = load i32, i32* %B, align 4
  %call138 = call i64* @HIST_LIN(i64* %128, i32 %129, i32 %130, i32 %131)
  %132 = load i64, i64* %call138, align 8
  %cmp139 = icmp ne i64 %132, 0
  br i1 %cmp139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %for.body.137
  %133 = load i32, i32* %B, align 4
  store i32 %133, i32* %Bmax, align 4
  %134 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmax141 = getelementptr inbounds %struct.box, %struct.box* %134, i32 0, i32 7
  store i32 %133, i32* %Bmax141, align 4
  br label %have_Bmax

if.end.142:                                       ; preds = %for.body.137
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %135 = load i32, i32* %G, align 4
  %inc144 = add nsw i32 %135, 1
  store i32 %inc144, i32* %G, align 4
  br label %for.cond.135

for.end.145:                                      ; preds = %for.cond.135
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %136 = load i32, i32* %R, align 4
  %inc147 = add nsw i32 %136, 1
  store i32 %inc147, i32* %R, align 4
  br label %for.cond.132

for.end.148:                                      ; preds = %for.cond.132
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.148
  %137 = load i32, i32* %B, align 4
  %dec150 = add nsw i32 %137, -1
  store i32 %dec150, i32* %B, align 4
  br label %for.cond.129

for.end.151:                                      ; preds = %for.cond.129
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %have_Bmin
  br label %have_Bmax

have_Bmax:                                        ; preds = %if.end.152, %if.then.140
  %138 = load i32, i32* %Rmax, align 4
  %add = add nsw i32 1, %138
  %139 = load i32, i32* %Rmin, align 4
  %sub = sub nsw i32 %add, %139
  %shl = shl i32 %sub, 0
  %mul = mul nsw i32 %shl, 13
  store i32 %mul, i32* %dist0, align 4
  %140 = load i32, i32* %Gmax, align 4
  %add153 = add nsw i32 1, %140
  %141 = load i32, i32* %Gmin, align 4
  %sub154 = sub nsw i32 %add153, %141
  %shl155 = shl i32 %sub154, 2
  %mul156 = mul nsw i32 %shl155, 24
  store i32 %mul156, i32* %dist1, align 4
  %142 = load i32, i32* %Bmax, align 4
  %add157 = add nsw i32 1, %142
  %143 = load i32, i32* %Bmin, align 4
  %sub158 = sub nsw i32 %add157, %143
  %shl159 = shl i32 %sub158, 2
  %mul160 = mul nsw i32 %shl159, 26
  store i32 %mul160, i32* %dist2, align 4
  %144 = load i32, i32* %dist0, align 4
  %145 = load i32, i32* %dist0, align 4
  %mul161 = mul nsw i32 %144, %145
  %146 = load i32, i32* %dist1, align 4
  %147 = load i32, i32* %dist1, align 4
  %mul162 = mul nsw i32 %146, %147
  %add163 = add nsw i32 %mul161, %mul162
  %148 = load i32, i32* %dist2, align 4
  %149 = load i32, i32* %dist2, align 4
  %mul164 = mul nsw i32 %148, %149
  %add165 = add nsw i32 %add163, %mul164
  %150 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %150, i32 0, i32 9
  store i32 %add165, i32* %volume, align 4
  %151 = load i64*, i64** %histogram.addr, align 8
  %152 = load %struct.box*, %struct.box** %boxp.addr, align 8
  call void @compute_color_lin8(%struct._QuantizeObj* %dummyqo, i64* %151, %struct.box* %152, i32 0)
  store i64 0, i64* %ccount, align 8
  %153 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %error = getelementptr inbounds %struct.box, %struct.box* %153, i32 0, i32 11
  store i64 0, i64* %error, align 8
  %154 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %rerror = getelementptr inbounds %struct.box, %struct.box* %154, i32 0, i32 12
  store i64 0, i64* %rerror, align 8
  %155 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %gerror = getelementptr inbounds %struct.box, %struct.box* %155, i32 0, i32 13
  store i64 0, i64* %gerror, align 8
  %156 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %berror = getelementptr inbounds %struct.box, %struct.box* %156, i32 0, i32 14
  store i64 0, i64* %berror, align 8
  %157 = load i32, i32* %Rmin, align 4
  store i32 %157, i32* %R, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.225, %have_Bmax
  %158 = load i32, i32* %R, align 4
  %159 = load i32, i32* %Rmax, align 4
  %cmp167 = icmp sle i32 %158, %159
  br i1 %cmp167, label %for.body.168, label %for.end.227

for.body.168:                                     ; preds = %for.cond.166
  %160 = load i32, i32* %Gmin, align 4
  store i32 %160, i32* %G, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.222, %for.body.168
  %161 = load i32, i32* %G, align 4
  %162 = load i32, i32* %Gmax, align 4
  %cmp170 = icmp sle i32 %161, %162
  br i1 %cmp170, label %for.body.171, label %for.end.224

for.body.171:                                     ; preds = %for.cond.169
  %163 = load i32, i32* %Bmin, align 4
  store i32 %163, i32* %B, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.219, %for.body.171
  %164 = load i32, i32* %B, align 4
  %165 = load i32, i32* %Bmax, align 4
  %cmp173 = icmp sle i32 %164, %165
  br i1 %cmp173, label %for.body.174, label %for.end.221

for.body.174:                                     ; preds = %for.cond.172
  %166 = load i64*, i64** %histogram.addr, align 8
  %167 = load i32, i32* %R, align 4
  %168 = load i32, i32* %G, align 4
  %169 = load i32, i32* %B, align 4
  %call175 = call i64* @HIST_LIN(i64* %166, i32 %167, i32 %168, i32 %169)
  %170 = load i64, i64* %call175, align 8
  store i64 %170, i64* %freq_here, align 8
  %171 = load i64, i64* %freq_here, align 8
  %cmp176 = icmp ne i64 %171, 0
  br i1 %cmp176, label %if.then.177, label %if.end.218

if.then.177:                                      ; preds = %for.body.174
  %172 = load i32, i32* %R, align 4
  %Rmax178 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 1
  store i32 %172, i32* %Rmax178, align 4
  %Rmin179 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 0
  store i32 %172, i32* %Rmin179, align 4
  %173 = load i32, i32* %G, align 4
  %Gmax180 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 4
  store i32 %173, i32* %Gmax180, align 4
  %Gmin181 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 3
  store i32 %173, i32* %Gmin181, align 4
  %174 = load i32, i32* %B, align 4
  %Bmax182 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 7
  store i32 %174, i32* %Bmax182, align 4
  %Bmin183 = getelementptr inbounds %struct.box, %struct.box* %dummybox, i32 0, i32 6
  store i32 %174, i32* %Bmin183, align 4
  %175 = load i64*, i64** %histogram.addr, align 8
  call void @compute_color_lin8(%struct._QuantizeObj* %dummyqo, i64* %175, %struct.box* %dummybox, i32 1)
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 0
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  %176 = load i32, i32* %red, align 4
  %cmap184 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx185 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap184, i32 0, i64 1
  %red186 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx185, i32 0, i32 0
  %177 = load i32, i32* %red186, align 4
  %sub187 = sub nsw i32 %176, %177
  store i32 %sub187, i32* %re, align 4
  %cmap188 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx189 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap188, i32 0, i64 0
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx189, i32 0, i32 1
  %178 = load i32, i32* %green, align 4
  %cmap190 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx191 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap190, i32 0, i64 1
  %green192 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx191, i32 0, i32 1
  %179 = load i32, i32* %green192, align 4
  %sub193 = sub nsw i32 %178, %179
  store i32 %sub193, i32* %ge, align 4
  %cmap194 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx195 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap194, i32 0, i64 0
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx195, i32 0, i32 2
  %180 = load i32, i32* %blue, align 4
  %cmap196 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %dummyqo, i32 0, i32 6
  %arrayidx197 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap196, i32 0, i64 1
  %blue198 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx197, i32 0, i32 2
  %181 = load i32, i32* %blue198, align 4
  %sub199 = sub nsw i32 %180, %181
  store i32 %sub199, i32* %be, align 4
  %182 = load i64, i64* %freq_here, align 8
  %183 = load i32, i32* %re, align 4
  %conv = sext i32 %183 to i64
  %mul200 = mul i64 %182, %conv
  %184 = load i32, i32* %re, align 4
  %conv201 = sext i32 %184 to i64
  %mul202 = mul i64 %mul200, %conv201
  %185 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %rerror203 = getelementptr inbounds %struct.box, %struct.box* %185, i32 0, i32 12
  %186 = load i64, i64* %rerror203, align 8
  %add204 = add i64 %186, %mul202
  store i64 %add204, i64* %rerror203, align 8
  %187 = load i64, i64* %freq_here, align 8
  %188 = load i32, i32* %ge, align 4
  %conv205 = sext i32 %188 to i64
  %mul206 = mul i64 %187, %conv205
  %189 = load i32, i32* %ge, align 4
  %conv207 = sext i32 %189 to i64
  %mul208 = mul i64 %mul206, %conv207
  %190 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %gerror209 = getelementptr inbounds %struct.box, %struct.box* %190, i32 0, i32 13
  %191 = load i64, i64* %gerror209, align 8
  %add210 = add i64 %191, %mul208
  store i64 %add210, i64* %gerror209, align 8
  %192 = load i64, i64* %freq_here, align 8
  %193 = load i32, i32* %be, align 4
  %conv211 = sext i32 %193 to i64
  %mul212 = mul i64 %192, %conv211
  %194 = load i32, i32* %be, align 4
  %conv213 = sext i32 %194 to i64
  %mul214 = mul i64 %mul212, %conv213
  %195 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %berror215 = getelementptr inbounds %struct.box, %struct.box* %195, i32 0, i32 14
  %196 = load i64, i64* %berror215, align 8
  %add216 = add i64 %196, %mul214
  store i64 %add216, i64* %berror215, align 8
  %197 = load i64, i64* %freq_here, align 8
  %198 = load i64, i64* %ccount, align 8
  %add217 = add i64 %198, %197
  store i64 %add217, i64* %ccount, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.177, %for.body.174
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %199 = load i32, i32* %B, align 4
  %inc220 = add nsw i32 %199, 1
  store i32 %inc220, i32* %B, align 4
  br label %for.cond.172

for.end.221:                                      ; preds = %for.cond.172
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %200 = load i32, i32* %G, align 4
  %inc223 = add nsw i32 %200, 1
  store i32 %inc223, i32* %G, align 4
  br label %for.cond.169

for.end.224:                                      ; preds = %for.cond.169
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.224
  %201 = load i32, i32* %R, align 4
  %inc226 = add nsw i32 %201, 1
  store i32 %inc226, i32* %R, align 4
  br label %for.cond.166

for.end.227:                                      ; preds = %for.cond.166
  %202 = load i32, i32* %Rmin, align 4
  %203 = load i32, i32* %Rmax, align 4
  %204 = load i32, i32* %Rmin, align 4
  %sub228 = sub nsw i32 %203, %204
  %add229 = add nsw i32 %sub228, 1
  %div = sdiv i32 %add229, 2
  %add230 = add nsw i32 %202, %div
  %205 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rhalferror = getelementptr inbounds %struct.box, %struct.box* %205, i32 0, i32 2
  store i32 %add230, i32* %Rhalferror, align 4
  %206 = load i32, i32* %Gmin, align 4
  %207 = load i32, i32* %Gmax, align 4
  %208 = load i32, i32* %Gmin, align 4
  %sub231 = sub nsw i32 %207, %208
  %add232 = add nsw i32 %sub231, 1
  %div233 = sdiv i32 %add232, 2
  %add234 = add nsw i32 %206, %div233
  %209 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Ghalferror = getelementptr inbounds %struct.box, %struct.box* %209, i32 0, i32 5
  store i32 %add234, i32* %Ghalferror, align 4
  %210 = load i32, i32* %Bmin, align 4
  %211 = load i32, i32* %Bmax, align 4
  %212 = load i32, i32* %Bmin, align 4
  %sub235 = sub nsw i32 %211, %212
  %add236 = add nsw i32 %sub235, 1
  %div237 = sdiv i32 %add236, 2
  %add238 = add nsw i32 %210, %div237
  %213 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bhalferror = getelementptr inbounds %struct.box, %struct.box* %213, i32 0, i32 8
  store i32 %add238, i32* %Bhalferror, align 4
  %214 = load i32, i32* %dist0, align 4
  %tobool = icmp ne i32 %214, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.333

land.lhs.true:                                    ; preds = %for.end.227
  %215 = load i32, i32* %dist1, align 4
  %tobool239 = icmp ne i32 %215, 0
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.333

land.lhs.true.240:                                ; preds = %land.lhs.true
  %216 = load i32, i32* %dist2, align 4
  %tobool241 = icmp ne i32 %216, 0
  br i1 %tobool241, label %if.then.242, label %if.end.333

if.then.242:                                      ; preds = %land.lhs.true.240
  store i32 0, i32* %longest_ax, align 4
  store i32 0, i32* %longest_length, align 4
  store i32 0, i32* %longest_length2, align 4
  %217 = load i32, i32* %dist0, align 4
  %218 = load i32, i32* %longest_length, align 4
  %cmp243 = icmp sge i32 %217, %218
  br i1 %cmp243, label %if.then.245, label %if.else

if.then.245:                                      ; preds = %if.then.242
  %219 = load i32, i32* %longest_length, align 4
  store i32 %219, i32* %longest_length2, align 4
  %220 = load i32, i32* %dist0, align 4
  store i32 %220, i32* %longest_length, align 4
  store i32 1, i32* %longest_ax, align 4
  br label %if.end.250

if.else:                                          ; preds = %if.then.242
  %221 = load i32, i32* %dist0, align 4
  %222 = load i32, i32* %longest_length2, align 4
  %cmp246 = icmp sge i32 %221, %222
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.else
  %223 = load i32, i32* %dist0, align 4
  store i32 %223, i32* %longest_length2, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.else
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.245
  %224 = load i32, i32* %dist1, align 4
  %225 = load i32, i32* %longest_length, align 4
  %cmp251 = icmp sge i32 %224, %225
  br i1 %cmp251, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %if.end.250
  %226 = load i32, i32* %longest_length, align 4
  store i32 %226, i32* %longest_length2, align 4
  %227 = load i32, i32* %dist1, align 4
  store i32 %227, i32* %longest_length, align 4
  store i32 3, i32* %longest_ax, align 4
  br label %if.end.259

if.else.254:                                      ; preds = %if.end.250
  %228 = load i32, i32* %dist1, align 4
  %229 = load i32, i32* %longest_length2, align 4
  %cmp255 = icmp sge i32 %228, %229
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.else.254
  %230 = load i32, i32* %dist1, align 4
  store i32 %230, i32* %longest_length2, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.257, %if.else.254
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.253
  %231 = load i32, i32* %dist2, align 4
  %232 = load i32, i32* %longest_length, align 4
  %cmp260 = icmp sge i32 %231, %232
  br i1 %cmp260, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %if.end.259
  %233 = load i32, i32* %longest_length, align 4
  store i32 %233, i32* %longest_length2, align 4
  %234 = load i32, i32* %dist2, align 4
  store i32 %234, i32* %longest_length, align 4
  store i32 2, i32* %longest_ax, align 4
  br label %if.end.268

if.else.263:                                      ; preds = %if.end.259
  %235 = load i32, i32* %dist2, align 4
  %236 = load i32, i32* %longest_length2, align 4
  %cmp264 = icmp sge i32 %235, %236
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.else.263
  %237 = load i32, i32* %dist2, align 4
  store i32 %237, i32* %longest_length2, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.else.263
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.262
  %238 = load i32, i32* %longest_length2, align 4
  %cmp269 = icmp eq i32 %238, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end.268
  store i32 1, i32* %longest_length2, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.end.268
  %239 = load i32, i32* %longest_length, align 4
  %240 = load i32, i32* %longest_length2, align 4
  %div273 = sdiv i32 %240, 2
  %add274 = add nsw i32 %239, %div273
  %241 = load i32, i32* %longest_length2, align 4
  %div275 = sdiv i32 %add274, %241
  store i32 %div275, i32* %ratio, align 4
  %242 = load i32, i32* %ratio, align 4
  %243 = load i32, i32* %cells_remaining.addr, align 4
  %add276 = add nsw i32 %243, 1
  %cmp277 = icmp sgt i32 %242, %add276
  br i1 %cmp277, label %if.then.279, label %if.end.281

if.then.279:                                      ; preds = %if.end.272
  %244 = load i32, i32* %cells_remaining.addr, align 4
  %add280 = add nsw i32 %244, 1
  store i32 %add280, i32* %ratio, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %if.end.272
  %245 = load i32, i32* %ratio, align 4
  %cmp282 = icmp sgt i32 %245, 2
  br i1 %cmp282, label %if.then.284, label %if.end.332

if.then.284:                                      ; preds = %if.end.281
  %246 = load i32, i32* %longest_ax, align 4
  switch i32 %246, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.300
    i32 2, label %sw.bb.316
  ]

sw.bb:                                            ; preds = %if.then.284
  %247 = load i32, i32* %Rmin, align 4
  %248 = load i32, i32* %Rmax, align 4
  %249 = load i32, i32* %Rmin, align 4
  %sub285 = sub nsw i32 %248, %249
  %250 = load i32, i32* %ratio, align 4
  %div286 = sdiv i32 %250, 2
  %add287 = add nsw i32 %sub285, %div286
  %251 = load i32, i32* %ratio, align 4
  %div288 = sdiv i32 %add287, %251
  %add289 = add nsw i32 %247, %div288
  %252 = load i32, i32* %Rmax, align 4
  %cmp290 = icmp slt i32 %add289, %252
  br i1 %cmp290, label %if.then.292, label %if.end.299

if.then.292:                                      ; preds = %sw.bb
  %253 = load i32, i32* %Rmin, align 4
  %254 = load i32, i32* %Rmax, align 4
  %255 = load i32, i32* %Rmin, align 4
  %sub293 = sub nsw i32 %254, %255
  %256 = load i32, i32* %ratio, align 4
  %div294 = sdiv i32 %256, 2
  %add295 = add nsw i32 %sub293, %div294
  %257 = load i32, i32* %ratio, align 4
  %div296 = sdiv i32 %add295, %257
  %add297 = add nsw i32 %253, %div296
  %258 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rhalferror298 = getelementptr inbounds %struct.box, %struct.box* %258, i32 0, i32 2
  store i32 %add297, i32* %Rhalferror298, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.292, %sw.bb
  br label %sw.epilog

sw.bb.300:                                        ; preds = %if.then.284
  %259 = load i32, i32* %Gmin, align 4
  %260 = load i32, i32* %Gmax, align 4
  %261 = load i32, i32* %Gmin, align 4
  %sub301 = sub nsw i32 %260, %261
  %262 = load i32, i32* %ratio, align 4
  %div302 = sdiv i32 %262, 2
  %add303 = add nsw i32 %sub301, %div302
  %263 = load i32, i32* %ratio, align 4
  %div304 = sdiv i32 %add303, %263
  %add305 = add nsw i32 %259, %div304
  %264 = load i32, i32* %Gmax, align 4
  %cmp306 = icmp slt i32 %add305, %264
  br i1 %cmp306, label %if.then.308, label %if.end.315

if.then.308:                                      ; preds = %sw.bb.300
  %265 = load i32, i32* %Gmin, align 4
  %266 = load i32, i32* %Gmax, align 4
  %267 = load i32, i32* %Gmin, align 4
  %sub309 = sub nsw i32 %266, %267
  %268 = load i32, i32* %ratio, align 4
  %div310 = sdiv i32 %268, 2
  %add311 = add nsw i32 %sub309, %div310
  %269 = load i32, i32* %ratio, align 4
  %div312 = sdiv i32 %add311, %269
  %add313 = add nsw i32 %265, %div312
  %270 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Ghalferror314 = getelementptr inbounds %struct.box, %struct.box* %270, i32 0, i32 5
  store i32 %add313, i32* %Ghalferror314, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.308, %sw.bb.300
  br label %sw.epilog

sw.bb.316:                                        ; preds = %if.then.284
  %271 = load i32, i32* %Bmin, align 4
  %272 = load i32, i32* %Bmax, align 4
  %273 = load i32, i32* %Bmin, align 4
  %sub317 = sub nsw i32 %272, %273
  %274 = load i32, i32* %ratio, align 4
  %div318 = sdiv i32 %274, 2
  %add319 = add nsw i32 %sub317, %div318
  %275 = load i32, i32* %ratio, align 4
  %div320 = sdiv i32 %add319, %275
  %add321 = add nsw i32 %271, %div320
  %276 = load i32, i32* %Bmax, align 4
  %cmp322 = icmp slt i32 %add321, %276
  br i1 %cmp322, label %if.then.324, label %if.end.331

if.then.324:                                      ; preds = %sw.bb.316
  %277 = load i32, i32* %Bmin, align 4
  %278 = load i32, i32* %Bmax, align 4
  %279 = load i32, i32* %Bmin, align 4
  %sub325 = sub nsw i32 %278, %279
  %280 = load i32, i32* %ratio, align 4
  %div326 = sdiv i32 %280, 2
  %add327 = add nsw i32 %sub325, %div326
  %281 = load i32, i32* %ratio, align 4
  %div328 = sdiv i32 %add327, %281
  %add329 = add nsw i32 %277, %div328
  %282 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bhalferror330 = getelementptr inbounds %struct.box, %struct.box* %282, i32 0, i32 8
  store i32 %add329, i32* %Bhalferror330, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.324, %sw.bb.316
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.284
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.331, %if.end.315, %if.end.299
  br label %if.end.332

if.end.332:                                       ; preds = %sw.epilog, %if.end.281
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %land.lhs.true.240, %land.lhs.true, %for.end.227
  %283 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rhalferror334 = getelementptr inbounds %struct.box, %struct.box* %283, i32 0, i32 2
  %284 = load i32, i32* %Rhalferror334, align 4
  %285 = load i32, i32* %Rmax, align 4
  %cmp335 = icmp eq i32 %284, %285
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.end.333
  %286 = load i32, i32* %Rmin, align 4
  %287 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rhalferror338 = getelementptr inbounds %struct.box, %struct.box* %287, i32 0, i32 2
  store i32 %286, i32* %Rhalferror338, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.end.333
  %288 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Ghalferror340 = getelementptr inbounds %struct.box, %struct.box* %288, i32 0, i32 5
  %289 = load i32, i32* %Ghalferror340, align 4
  %290 = load i32, i32* %Gmax, align 4
  %cmp341 = icmp eq i32 %289, %290
  br i1 %cmp341, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %if.end.339
  %291 = load i32, i32* %Gmin, align 4
  %292 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Ghalferror344 = getelementptr inbounds %struct.box, %struct.box* %292, i32 0, i32 5
  store i32 %291, i32* %Ghalferror344, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %if.end.339
  %293 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bhalferror346 = getelementptr inbounds %struct.box, %struct.box* %293, i32 0, i32 8
  %294 = load i32, i32* %Bhalferror346, align 4
  %295 = load i32, i32* %Bmax, align 4
  %cmp347 = icmp eq i32 %294, %295
  br i1 %cmp347, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.end.345
  %296 = load i32, i32* %Bmin, align 4
  %297 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bhalferror350 = getelementptr inbounds %struct.box, %struct.box* %297, i32 0, i32 8
  store i32 %296, i32* %Bhalferror350, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.end.345
  %298 = load i64, i64* %ccount, align 8
  %299 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %299, i32 0, i32 10
  store i64 %298, i64* %colorcount, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @median_cut_rgb(i64* %histogram, %struct.box* %boxlist, i32 %numboxes, i32 %desired_colors, %struct._GimpProgress* %progress) #0 {
entry:
  %histogram.addr = alloca i64*, align 8
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %desired_colors.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %lb = alloca i32, align 4
  %b1 = alloca %struct.box*, align 8
  %b2 = alloca %struct.box*, align 8
  %which_axis = alloca i32, align 4
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i32 %desired_colors, i32* %desired_colors.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %entry
  %0 = load i32, i32* %numboxes.addr, align 4
  %1 = load i32, i32* %desired_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %3 = load i32, i32* %numboxes.addr, align 4
  %4 = load i32, i32* %desired_colors.addr, align 4
  %call = call %struct.box* @find_split_candidate(%struct.box* %2, i32 %3, i32* %which_axis, i32 %4)
  store %struct.box* %call, %struct.box** %b1, align 8
  %5 = load %struct.box*, %struct.box** %b1, align 8
  %cmp1 = icmp eq %struct.box* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %7 = load i32, i32* %numboxes.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.box, %struct.box* %6, i64 %idx.ext
  store %struct.box* %add.ptr, %struct.box** %b2, align 8
  %8 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %8, i32 0, i32 1
  %9 = load i32, i32* %Rmax, align 4
  %10 = load %struct.box*, %struct.box** %b2, align 8
  %Rmax2 = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 1
  store i32 %9, i32* %Rmax2, align 4
  %11 = load %struct.box*, %struct.box** %b1, align 8
  %Gmax = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 4
  %12 = load i32, i32* %Gmax, align 4
  %13 = load %struct.box*, %struct.box** %b2, align 8
  %Gmax3 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 4
  store i32 %12, i32* %Gmax3, align 4
  %14 = load %struct.box*, %struct.box** %b1, align 8
  %Bmax = getelementptr inbounds %struct.box, %struct.box* %14, i32 0, i32 7
  %15 = load i32, i32* %Bmax, align 4
  %16 = load %struct.box*, %struct.box** %b2, align 8
  %Bmax4 = getelementptr inbounds %struct.box, %struct.box* %16, i32 0, i32 7
  store i32 %15, i32* %Bmax4, align 4
  %17 = load %struct.box*, %struct.box** %b1, align 8
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %17, i32 0, i32 0
  %18 = load i32, i32* %Rmin, align 4
  %19 = load %struct.box*, %struct.box** %b2, align 8
  %Rmin5 = getelementptr inbounds %struct.box, %struct.box* %19, i32 0, i32 0
  store i32 %18, i32* %Rmin5, align 4
  %20 = load %struct.box*, %struct.box** %b1, align 8
  %Gmin = getelementptr inbounds %struct.box, %struct.box* %20, i32 0, i32 3
  %21 = load i32, i32* %Gmin, align 4
  %22 = load %struct.box*, %struct.box** %b2, align 8
  %Gmin6 = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 3
  store i32 %21, i32* %Gmin6, align 4
  %23 = load %struct.box*, %struct.box** %b1, align 8
  %Bmin = getelementptr inbounds %struct.box, %struct.box* %23, i32 0, i32 6
  %24 = load i32, i32* %Bmin, align 4
  %25 = load %struct.box*, %struct.box** %b2, align 8
  %Bmin7 = getelementptr inbounds %struct.box, %struct.box* %25, i32 0, i32 6
  store i32 %24, i32* %Bmin7, align 4
  %26 = load i32, i32* %which_axis, align 4
  switch i32 %26, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.23
    i32 2, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.end
  %27 = load %struct.box*, %struct.box** %b1, align 8
  %Rhalferror = getelementptr inbounds %struct.box, %struct.box* %27, i32 0, i32 2
  %28 = load i32, i32* %Rhalferror, align 4
  store i32 %28, i32* %lb, align 4
  %29 = load i32, i32* %lb, align 4
  %30 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax8 = getelementptr inbounds %struct.box, %struct.box* %30, i32 0, i32 1
  store i32 %29, i32* %Rmax8, align 4
  %31 = load i32, i32* %lb, align 4
  %add = add nsw i32 %31, 1
  %32 = load %struct.box*, %struct.box** %b2, align 8
  %Rmin9 = getelementptr inbounds %struct.box, %struct.box* %32, i32 0, i32 0
  store i32 %add, i32* %Rmin9, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %33 = load %struct.box*, %struct.box** %b1, align 8
  %Rmax10 = getelementptr inbounds %struct.box, %struct.box* %33, i32 0, i32 1
  %34 = load i32, i32* %Rmax10, align 4
  %35 = load %struct.box*, %struct.box** %b1, align 8
  %Rmin11 = getelementptr inbounds %struct.box, %struct.box* %35, i32 0, i32 0
  %36 = load i32, i32* %Rmin11, align 4
  %cmp12 = icmp sge i32 %34, %36
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2025, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0)) #10
  unreachable

if.end.14:                                        ; preds = %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %37 = load %struct.box*, %struct.box** %b2, align 8
  %Rmax16 = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 1
  %38 = load i32, i32* %Rmax16, align 4
  %39 = load %struct.box*, %struct.box** %b2, align 8
  %Rmin17 = getelementptr inbounds %struct.box, %struct.box* %39, i32 0, i32 0
  %40 = load i32, i32* %Rmin17, align 4
  %cmp18 = icmp sge i32 %38, %40
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.15
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.15
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2026, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #10
  unreachable

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %41 = load %struct.box*, %struct.box** %b1, align 8
  %Ghalferror = getelementptr inbounds %struct.box, %struct.box* %41, i32 0, i32 5
  %42 = load i32, i32* %Ghalferror, align 4
  store i32 %42, i32* %lb, align 4
  %43 = load i32, i32* %lb, align 4
  %44 = load %struct.box*, %struct.box** %b1, align 8
  %Gmax24 = getelementptr inbounds %struct.box, %struct.box* %44, i32 0, i32 4
  store i32 %43, i32* %Gmax24, align 4
  %45 = load i32, i32* %lb, align 4
  %add25 = add nsw i32 %45, 1
  %46 = load %struct.box*, %struct.box** %b2, align 8
  %Gmin26 = getelementptr inbounds %struct.box, %struct.box* %46, i32 0, i32 3
  store i32 %add25, i32* %Gmin26, align 4
  br label %do.body.27

do.body.27:                                       ; preds = %sw.bb.23
  %47 = load %struct.box*, %struct.box** %b1, align 8
  %Gmax28 = getelementptr inbounds %struct.box, %struct.box* %47, i32 0, i32 4
  %48 = load i32, i32* %Gmax28, align 4
  %49 = load %struct.box*, %struct.box** %b1, align 8
  %Gmin29 = getelementptr inbounds %struct.box, %struct.box* %49, i32 0, i32 3
  %50 = load i32, i32* %Gmin29, align 4
  %cmp30 = icmp sge i32 %48, %50
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.27
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.27
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0)) #10
  unreachable

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %51 = load %struct.box*, %struct.box** %b2, align 8
  %Gmax36 = getelementptr inbounds %struct.box, %struct.box* %51, i32 0, i32 4
  %52 = load i32, i32* %Gmax36, align 4
  %53 = load %struct.box*, %struct.box** %b2, align 8
  %Gmin37 = getelementptr inbounds %struct.box, %struct.box* %53, i32 0, i32 3
  %54 = load i32, i32* %Gmin37, align 4
  %cmp38 = icmp sge i32 %52, %54
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.35
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.35
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2033, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0)) #10
  unreachable

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end
  %55 = load %struct.box*, %struct.box** %b1, align 8
  %Bhalferror = getelementptr inbounds %struct.box, %struct.box* %55, i32 0, i32 8
  %56 = load i32, i32* %Bhalferror, align 4
  store i32 %56, i32* %lb, align 4
  %57 = load i32, i32* %lb, align 4
  %58 = load %struct.box*, %struct.box** %b1, align 8
  %Bmax44 = getelementptr inbounds %struct.box, %struct.box* %58, i32 0, i32 7
  store i32 %57, i32* %Bmax44, align 4
  %59 = load i32, i32* %lb, align 4
  %add45 = add nsw i32 %59, 1
  %60 = load %struct.box*, %struct.box** %b2, align 8
  %Bmin46 = getelementptr inbounds %struct.box, %struct.box* %60, i32 0, i32 6
  store i32 %add45, i32* %Bmin46, align 4
  br label %do.body.47

do.body.47:                                       ; preds = %sw.bb.43
  %61 = load %struct.box*, %struct.box** %b1, align 8
  %Bmax48 = getelementptr inbounds %struct.box, %struct.box* %61, i32 0, i32 7
  %62 = load i32, i32* %Bmax48, align 4
  %63 = load %struct.box*, %struct.box** %b1, align 8
  %Bmin49 = getelementptr inbounds %struct.box, %struct.box* %63, i32 0, i32 6
  %64 = load i32, i32* %Bmin49, align 4
  %cmp50 = icmp sge i32 %62, %64
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.47
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.47
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2039, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0)) #10
  unreachable

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %65 = load %struct.box*, %struct.box** %b2, align 8
  %Bmax56 = getelementptr inbounds %struct.box, %struct.box* %65, i32 0, i32 7
  %66 = load i32, i32* %Bmax56, align 4
  %67 = load %struct.box*, %struct.box** %b2, align 8
  %Bmin57 = getelementptr inbounds %struct.box, %struct.box* %67, i32 0, i32 6
  %68 = load i32, i32* %Bmin57, align 4
  %cmp58 = icmp sge i32 %66, %68
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.55
  br label %if.end.61

if.else.60:                                       ; preds = %do.body.55
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 2040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.median_cut_rgb, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0)) #10
  unreachable

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.62, %do.end.42, %do.end.22
  %69 = load i32, i32* %numboxes.addr, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %numboxes.addr, align 4
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool = icmp ne %struct._GimpProgress* %70, null
  br i1 %tobool, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %sw.epilog
  %71 = load i32, i32* %numboxes.addr, align 4
  %rem = srem i32 %71, 16
  %cmp63 = icmp eq i32 %rem, 0
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %land.lhs.true
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %73 = load i32, i32* %numboxes.addr, align 4
  %conv = sitofp i32 %73 to double
  %74 = load i32, i32* %desired_colors.addr, align 4
  %conv65 = sitofp i32 %74 to double
  %div = fdiv double %conv, %conv65
  call void @gimp_progress_set_value(%struct._GimpProgress* %72, double %div)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %land.lhs.true, %sw.epilog
  %75 = load i64*, i64** %histogram.addr, align 8
  %76 = load %struct.box*, %struct.box** %b1, align 8
  %77 = load i32, i32* %desired_colors.addr, align 4
  %78 = load i32, i32* %numboxes.addr, align 4
  %sub = sub nsw i32 %77, %78
  call void @update_box_rgb(i64* %75, %struct.box* %76, i32 %sub)
  %79 = load i64*, i64** %histogram.addr, align 8
  %80 = load %struct.box*, %struct.box** %b2, align 8
  %81 = load i32, i32* %desired_colors.addr, align 4
  %82 = load i32, i32* %numboxes.addr, align 4
  %sub67 = sub nsw i32 %81, %82
  call void @update_box_rgb(i64* %79, %struct.box* %80, i32 %sub67)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %83 = load i32, i32* %numboxes.addr, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal void @compute_color_rgb(%struct._QuantizeObj* %quantobj, i64* %histogram, %struct.box* %boxp, i32 %icolor) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %icolor.addr = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  %Rmin = alloca i32, align 4
  %Rmax = alloca i32, align 4
  %Gmin = alloca i32, align 4
  %Gmax = alloca i32, align 4
  %Bmin = alloca i32, align 4
  %Bmax = alloca i32, align 4
  %total = alloca i64, align 8
  %Rtotal = alloca i64, align 8
  %Gtotal = alloca i64, align 8
  %Btotal = alloca i64, align 8
  %this_freq = alloca i64, align 8
  %red = alloca i8, align 1
  %green = alloca i8, align 1
  %blue = alloca i8, align 1
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  store i32 %icolor, i32* %icolor.addr, align 4
  store i64 0, i64* %total, align 8
  store i64 0, i64* %Rtotal, align 8
  store i64 0, i64* %Gtotal, align 8
  store i64 0, i64* %Btotal, align 8
  %0 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin1 = getelementptr inbounds %struct.box, %struct.box* %0, i32 0, i32 0
  %1 = load i32, i32* %Rmin1, align 4
  store i32 %1, i32* %Rmin, align 4
  %2 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax2 = getelementptr inbounds %struct.box, %struct.box* %2, i32 0, i32 1
  %3 = load i32, i32* %Rmax2, align 4
  store i32 %3, i32* %Rmax, align 4
  %4 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmin3 = getelementptr inbounds %struct.box, %struct.box* %4, i32 0, i32 3
  %5 = load i32, i32* %Gmin3, align 4
  store i32 %5, i32* %Gmin, align 4
  %6 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmax4 = getelementptr inbounds %struct.box, %struct.box* %6, i32 0, i32 4
  %7 = load i32, i32* %Gmax4, align 4
  store i32 %7, i32* %Gmax, align 4
  %8 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmin5 = getelementptr inbounds %struct.box, %struct.box* %8, i32 0, i32 6
  %9 = load i32, i32* %Bmin5, align 4
  store i32 %9, i32* %Bmin, align 4
  %10 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmax6 = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 7
  %11 = load i32, i32* %Bmax6, align 4
  store i32 %11, i32* %Bmax, align 4
  %12 = load i32, i32* %Rmin, align 4
  store i32 %12, i32* %R, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %13 = load i32, i32* %R, align 4
  %14 = load i32, i32* %Rmax, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %Gmin, align 4
  store i32 %15, i32* %G, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.21, %for.body
  %16 = load i32, i32* %G, align 4
  %17 = load i32, i32* %Gmax, align 4
  %cmp8 = icmp sle i32 %16, %17
  br i1 %cmp8, label %for.body.9, label %for.end.23

for.body.9:                                       ; preds = %for.cond.7
  %18 = load i32, i32* %Bmin, align 4
  store i32 %18, i32* %B, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.9
  %19 = load i32, i32* %B, align 4
  %20 = load i32, i32* %Bmax, align 4
  %cmp11 = icmp sle i32 %19, %20
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i64*, i64** %histogram.addr, align 8
  %22 = load i32, i32* %R, align 4
  %23 = load i32, i32* %G, align 4
  %24 = load i32, i32* %B, align 4
  %call = call i64* @HIST_LIN(i64* %21, i32 %22, i32 %23, i32 %24)
  %25 = load i64, i64* %call, align 8
  store i64 %25, i64* %this_freq, align 8
  %26 = load i64, i64* %this_freq, align 8
  %cmp13 = icmp ne i64 %26, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %27 = load i64, i64* %this_freq, align 8
  %28 = load i64, i64* %total, align 8
  %add = add i64 %28, %27
  store i64 %add, i64* %total, align 8
  %29 = load i32, i32* %R, align 4
  %conv = sext i32 %29 to i64
  %30 = load i64, i64* %this_freq, align 8
  %mul = mul i64 %conv, %30
  %31 = load i64, i64* %Rtotal, align 8
  %add14 = add i64 %31, %mul
  store i64 %add14, i64* %Rtotal, align 8
  %32 = load i32, i32* %G, align 4
  %conv15 = sext i32 %32 to i64
  %33 = load i64, i64* %this_freq, align 8
  %mul16 = mul i64 %conv15, %33
  %34 = load i64, i64* %Gtotal, align 8
  %add17 = add i64 %34, %mul16
  store i64 %add17, i64* %Gtotal, align 8
  %35 = load i32, i32* %B, align 4
  %conv18 = sext i32 %35 to i64
  %36 = load i64, i64* %this_freq, align 8
  %mul19 = mul i64 %conv18, %36
  %37 = load i64, i64* %Btotal, align 8
  %add20 = add i64 %37, %mul19
  store i64 %add20, i64* %Btotal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %B, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %B, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %39 = load i32, i32* %G, align 4
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %G, align 4
  br label %for.cond.7

for.end.23:                                       ; preds = %for.cond.7
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %40 = load i32, i32* %R, align 4
  %inc25 = add nsw i32 %40, 1
  store i32 %inc25, i32* %R, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %41 = load i64, i64* %total, align 8
  %cmp27 = icmp ugt i64 %41, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.end.26
  %42 = load i64, i64* %Rtotal, align 8
  %conv30 = uitofp i64 %42 to double
  %43 = load i64, i64* %total, align 8
  %conv31 = uitofp i64 %43 to double
  %div = fdiv double %conv30, %conv31
  %44 = load i64, i64* %Gtotal, align 8
  %conv32 = uitofp i64 %44 to double
  %45 = load i64, i64* %total, align 8
  %conv33 = uitofp i64 %45 to double
  %div34 = fdiv double %conv32, %conv33
  %46 = load i64, i64* %Btotal, align 8
  %conv35 = uitofp i64 %46 to double
  %47 = load i64, i64* %total, align 8
  %conv36 = uitofp i64 %47 to double
  %div37 = fdiv double %conv35, %conv36
  call void @lin_to_rgb(double %div, double %div34, double %div37, i8* %red, i8* %green, i8* %blue)
  %48 = load i8, i8* %red, align 1
  %conv38 = zext i8 %48 to i32
  %49 = load i32, i32* %icolor.addr, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %50, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom
  %red39 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  store i32 %conv38, i32* %red39, align 4
  %51 = load i8, i8* %green, align 1
  %conv40 = zext i8 %51 to i32
  %52 = load i32, i32* %icolor.addr, align 4
  %idxprom41 = sext i32 %52 to i64
  %53 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap42 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %53, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap42, i32 0, i64 %idxprom41
  %green44 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx43, i32 0, i32 1
  store i32 %conv40, i32* %green44, align 4
  %54 = load i8, i8* %blue, align 1
  %conv45 = zext i8 %54 to i32
  %55 = load i32, i32* %icolor.addr, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap47 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %56, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap47, i32 0, i64 %idxprom46
  %blue49 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx48, i32 0, i32 2
  store i32 %conv45, i32* %blue49, align 4
  br label %if.end.62

if.else:                                          ; preds = %for.end.26
  %57 = load i32, i32* %icolor.addr, align 4
  %idxprom50 = sext i32 %57 to i64
  %58 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap51 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %58, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap51, i32 0, i64 %idxprom50
  %blue53 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx52, i32 0, i32 2
  store i32 0, i32* %blue53, align 4
  %59 = load i32, i32* %icolor.addr, align 4
  %idxprom54 = sext i32 %59 to i64
  %60 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap55 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %60, i32 0, i32 6
  %arrayidx56 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap55, i32 0, i64 %idxprom54
  %green57 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx56, i32 0, i32 1
  store i32 0, i32* %green57, align 4
  %61 = load i32, i32* %icolor.addr, align 4
  %idxprom58 = sext i32 %61 to i64
  %62 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap59 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %62, i32 0, i32 6
  %arrayidx60 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap59, i32 0, i64 %idxprom58
  %red61 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx60, i32 0, i32 0
  store i32 0, i32* %red61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_color_lin8(%struct._QuantizeObj* %quantobj, i64* %histogram, %struct.box* %boxp, i32 %icolor) #0 {
entry:
  %quantobj.addr = alloca %struct._QuantizeObj*, align 8
  %histogram.addr = alloca i64*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %icolor.addr = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  %Rmin = alloca i32, align 4
  %Rmax = alloca i32, align 4
  %Gmin = alloca i32, align 4
  %Gmax = alloca i32, align 4
  %Bmin = alloca i32, align 4
  %Bmax = alloca i32, align 4
  %total = alloca i64, align 8
  %Rtotal = alloca i64, align 8
  %Gtotal = alloca i64, align 8
  %Btotal = alloca i64, align 8
  %this_freq = alloca i64, align 8
  store %struct._QuantizeObj* %quantobj, %struct._QuantizeObj** %quantobj.addr, align 8
  store i64* %histogram, i64** %histogram.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  store i32 %icolor, i32* %icolor.addr, align 4
  store i64 0, i64* %total, align 8
  store i64 0, i64* %Rtotal, align 8
  store i64 0, i64* %Gtotal, align 8
  store i64 0, i64* %Btotal, align 8
  %0 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmin1 = getelementptr inbounds %struct.box, %struct.box* %0, i32 0, i32 0
  %1 = load i32, i32* %Rmin1, align 4
  store i32 %1, i32* %Rmin, align 4
  %2 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Rmax2 = getelementptr inbounds %struct.box, %struct.box* %2, i32 0, i32 1
  %3 = load i32, i32* %Rmax2, align 4
  store i32 %3, i32* %Rmax, align 4
  %4 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmin3 = getelementptr inbounds %struct.box, %struct.box* %4, i32 0, i32 3
  %5 = load i32, i32* %Gmin3, align 4
  store i32 %5, i32* %Gmin, align 4
  %6 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Gmax4 = getelementptr inbounds %struct.box, %struct.box* %6, i32 0, i32 4
  %7 = load i32, i32* %Gmax4, align 4
  store i32 %7, i32* %Gmax, align 4
  %8 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmin5 = getelementptr inbounds %struct.box, %struct.box* %8, i32 0, i32 6
  %9 = load i32, i32* %Bmin5, align 4
  store i32 %9, i32* %Bmin, align 4
  %10 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %Bmax6 = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 7
  %11 = load i32, i32* %Bmax6, align 4
  store i32 %11, i32* %Bmax, align 4
  %12 = load i32, i32* %Rmin, align 4
  store i32 %12, i32* %R, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %13 = load i32, i32* %R, align 4
  %14 = load i32, i32* %Rmax, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %Gmin, align 4
  store i32 %15, i32* %G, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.21, %for.body
  %16 = load i32, i32* %G, align 4
  %17 = load i32, i32* %Gmax, align 4
  %cmp8 = icmp sle i32 %16, %17
  br i1 %cmp8, label %for.body.9, label %for.end.23

for.body.9:                                       ; preds = %for.cond.7
  %18 = load i32, i32* %Bmin, align 4
  store i32 %18, i32* %B, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.9
  %19 = load i32, i32* %B, align 4
  %20 = load i32, i32* %Bmax, align 4
  %cmp11 = icmp sle i32 %19, %20
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i64*, i64** %histogram.addr, align 8
  %22 = load i32, i32* %R, align 4
  %23 = load i32, i32* %G, align 4
  %24 = load i32, i32* %B, align 4
  %call = call i64* @HIST_LIN(i64* %21, i32 %22, i32 %23, i32 %24)
  %25 = load i64, i64* %call, align 8
  store i64 %25, i64* %this_freq, align 8
  %26 = load i64, i64* %this_freq, align 8
  %cmp13 = icmp ne i64 %26, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %27 = load i32, i32* %R, align 4
  %conv = sext i32 %27 to i64
  %28 = load i64, i64* %this_freq, align 8
  %mul = mul i64 %conv, %28
  %29 = load i64, i64* %Rtotal, align 8
  %add = add i64 %29, %mul
  store i64 %add, i64* %Rtotal, align 8
  %30 = load i32, i32* %G, align 4
  %conv14 = sext i32 %30 to i64
  %31 = load i64, i64* %this_freq, align 8
  %mul15 = mul i64 %conv14, %31
  %32 = load i64, i64* %Gtotal, align 8
  %add16 = add i64 %32, %mul15
  store i64 %add16, i64* %Gtotal, align 8
  %33 = load i32, i32* %B, align 4
  %conv17 = sext i32 %33 to i64
  %34 = load i64, i64* %this_freq, align 8
  %mul18 = mul i64 %conv17, %34
  %35 = load i64, i64* %Btotal, align 8
  %add19 = add i64 %35, %mul18
  store i64 %add19, i64* %Btotal, align 8
  %36 = load i64, i64* %this_freq, align 8
  %37 = load i64, i64* %total, align 8
  %add20 = add i64 %37, %36
  store i64 %add20, i64* %total, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %B, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %B, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %39 = load i32, i32* %G, align 4
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %G, align 4
  br label %for.cond.7

for.end.23:                                       ; preds = %for.cond.7
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %40 = load i32, i32* %R, align 4
  %inc25 = add nsw i32 %40, 1
  store i32 %inc25, i32* %R, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %41 = load i64, i64* %total, align 8
  %cmp27 = icmp ne i64 %41, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.end.26
  %42 = load i64, i64* %Rtotal, align 8
  %shl = shl i64 %42, 0
  %43 = load i64, i64* %total, align 8
  %shr = lshr i64 %43, 1
  %add30 = add i64 %shl, %shr
  %44 = load i64, i64* %total, align 8
  %div = udiv i64 %add30, %44
  %conv31 = trunc i64 %div to i32
  %45 = load i32, i32* %icolor.addr, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %46, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx, i32 0, i32 0
  store i32 %conv31, i32* %red, align 4
  %47 = load i64, i64* %Gtotal, align 8
  %shl32 = shl i64 %47, 2
  %48 = load i64, i64* %total, align 8
  %shr33 = lshr i64 %48, 1
  %add34 = add i64 %shl32, %shr33
  %49 = load i64, i64* %total, align 8
  %div35 = udiv i64 %add34, %49
  %conv36 = trunc i64 %div35 to i32
  %50 = load i32, i32* %icolor.addr, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap38 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %51, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap38, i32 0, i64 %idxprom37
  %green = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx39, i32 0, i32 1
  store i32 %conv36, i32* %green, align 4
  %52 = load i64, i64* %Btotal, align 8
  %shl40 = shl i64 %52, 2
  %53 = load i64, i64* %total, align 8
  %shr41 = lshr i64 %53, 1
  %add42 = add i64 %shl40, %shr41
  %54 = load i64, i64* %total, align 8
  %div43 = udiv i64 %add42, %54
  %conv44 = trunc i64 %div43 to i32
  %55 = load i32, i32* %icolor.addr, align 4
  %idxprom45 = sext i32 %55 to i64
  %56 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap46 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %56, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap46, i32 0, i64 %idxprom45
  %blue = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx47, i32 0, i32 2
  store i32 %conv44, i32* %blue, align 4
  br label %if.end.60

if.else:                                          ; preds = %for.end.26
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %57 = load i32, i32* %icolor.addr, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap49 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %58, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap49, i32 0, i64 %idxprom48
  %red51 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx50, i32 0, i32 0
  store i32 0, i32* %red51, align 4
  %59 = load i32, i32* %icolor.addr, align 4
  %idxprom52 = sext i32 %59 to i64
  %60 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap53 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %60, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap53, i32 0, i64 %idxprom52
  %green55 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx54, i32 0, i32 1
  store i32 128, i32* %green55, align 4
  %61 = load i32, i32* %icolor.addr, align 4
  %idxprom56 = sext i32 %61 to i64
  %62 = load %struct._QuantizeObj*, %struct._QuantizeObj** %quantobj.addr, align 8
  %cmap57 = getelementptr inbounds %struct._QuantizeObj, %struct._QuantizeObj* %62, i32 0, i32 6
  %arrayidx58 = getelementptr inbounds [256 x %struct._Color], [256 x %struct._Color]* %cmap57, i32 0, i64 %idxprom56
  %blue59 = getelementptr inbounds %struct._Color, %struct._Color* %arrayidx58, i32 0, i32 2
  store i32 128, i32* %blue59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.box* @find_split_candidate(%struct.box* %boxlist, i32 %numboxes, i32* %which_axis, i32 %desired_colors) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %which_axis.addr = alloca i32*, align 8
  %desired_colors.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxc = alloca double, align 8
  %which = alloca %struct.box*, align 8
  %Lbias = alloca double, align 8
  %rpe = alloca double, align 8
  %gpe = alloca double, align 8
  %bpe = alloca double, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i32* %which_axis, i32** %which_axis.addr, align 8
  store i32 %desired_colors, i32* %desired_colors.addr, align 4
  store double 0.000000e+00, double* %maxc, align 8
  store %struct.box* null, %struct.box** %which, align 8
  %0 = load i32*, i32** %which_axis.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %desired_colors.addr, align 4
  %cmp = icmp sle i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %numboxes.addr, align 4
  %cmp1 = icmp sgt i32 %2, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %numboxes.addr, align 4
  %conv = sitofp i32 %3 to double
  %sub = fsub double 3.000000e+00, %conv
  %div = fdiv double %sub, 0x3FE80F65F6D317B8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %div, %cond.false ]
  store double %cond, double* %Lbias, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 1.000000e+00, double* %Lbias, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  store i32 0, i32* %i, align 4
  %4 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  store %struct.box* %4, %struct.box** %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %numboxes.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.box*, %struct.box** %boxp, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 9
  %8 = load i32, i32* %volume, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %if.then.6, label %if.end.37

if.then.6:                                        ; preds = %for.body
  %9 = load %struct.box*, %struct.box** %boxp, align 8
  %rerror = getelementptr inbounds %struct.box, %struct.box* %9, i32 0, i32 12
  %10 = load i64, i64* %rerror, align 8
  %mul = mul i64 %10, 13
  %mul7 = mul i64 %mul, 13
  %conv8 = uitofp i64 %mul7 to double
  store double %conv8, double* %rpe, align 8
  %11 = load %struct.box*, %struct.box** %boxp, align 8
  %gerror = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 13
  %12 = load i64, i64* %gerror, align 8
  %mul9 = mul i64 %12, 24
  %mul10 = mul i64 %mul9, 24
  %conv11 = uitofp i64 %mul10 to double
  store double %conv11, double* %gpe, align 8
  %13 = load %struct.box*, %struct.box** %boxp, align 8
  %berror = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 14
  %14 = load i64, i64* %berror, align 8
  %mul12 = mul i64 %14, 26
  %mul13 = mul i64 %mul12, 26
  %conv14 = uitofp i64 %mul13 to double
  store double %conv14, double* %bpe, align 8
  %15 = load double, double* %Lbias, align 8
  %16 = load double, double* %rpe, align 8
  %mul15 = fmul double %15, %16
  %17 = load double, double* %maxc, align 8
  %cmp16 = fcmp ogt double %mul15, %17
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.6
  %18 = load %struct.box*, %struct.box** %boxp, align 8
  %Rmin = getelementptr inbounds %struct.box, %struct.box* %18, i32 0, i32 0
  %19 = load i32, i32* %Rmin, align 4
  %20 = load %struct.box*, %struct.box** %boxp, align 8
  %Rmax = getelementptr inbounds %struct.box, %struct.box* %20, i32 0, i32 1
  %21 = load i32, i32* %Rmax, align 4
  %cmp18 = icmp slt i32 %19, %21
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %22 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %22, %struct.box** %which, align 8
  %23 = load double, double* %Lbias, align 8
  %24 = load double, double* %rpe, align 8
  %mul21 = fmul double %23, %24
  store double %mul21, double* %maxc, align 8
  %25 = load i32*, i32** %which_axis.addr, align 8
  store i32 1, i32* %25, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.6
  %26 = load double, double* %gpe, align 8
  %27 = load double, double* %maxc, align 8
  %cmp23 = fcmp ogt double %26, %27
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %if.end.22
  %28 = load %struct.box*, %struct.box** %boxp, align 8
  %Gmin = getelementptr inbounds %struct.box, %struct.box* %28, i32 0, i32 3
  %29 = load i32, i32* %Gmin, align 4
  %30 = load %struct.box*, %struct.box** %boxp, align 8
  %Gmax = getelementptr inbounds %struct.box, %struct.box* %30, i32 0, i32 4
  %31 = load i32, i32* %Gmax, align 4
  %cmp26 = icmp slt i32 %29, %31
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.25
  %32 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %32, %struct.box** %which, align 8
  %33 = load double, double* %gpe, align 8
  store double %33, double* %maxc, align 8
  %34 = load i32*, i32** %which_axis.addr, align 8
  store i32 3, i32* %34, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %if.end.22
  %35 = load double, double* %bpe, align 8
  %36 = load double, double* %maxc, align 8
  %cmp30 = fcmp ogt double %35, %36
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %if.end.29
  %37 = load %struct.box*, %struct.box** %boxp, align 8
  %Bmin = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 6
  %38 = load i32, i32* %Bmin, align 4
  %39 = load %struct.box*, %struct.box** %boxp, align 8
  %Bmax = getelementptr inbounds %struct.box, %struct.box* %39, i32 0, i32 7
  %40 = load i32, i32* %Bmax, align 4
  %cmp33 = icmp slt i32 %38, %40
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  %41 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %41, %struct.box** %which, align 8
  %42 = load double, double* %bpe, align 8
  store double %42, double* %maxc, align 8
  %43 = load i32*, i32** %which_axis.addr, align 8
  store i32 2, i32* %43, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.end.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  %45 = load %struct.box*, %struct.box** %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %45, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.box*, %struct.box** %which, align 8
  ret %struct.box* %46
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lin_to_rgb(double %hr, double %hg, double %hb, i8* %r, i8* %g, i8* %b) #6 {
entry:
  %hr.addr = alloca double, align 8
  %hg.addr = alloca double, align 8
  %hb.addr = alloca double, align 8
  %r.addr = alloca i8*, align 8
  %g.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %sr = alloca double, align 8
  %sg = alloca double, align 8
  %sb = alloca double, align 8
  %ir = alloca double, align 8
  %ig = alloca double, align 8
  %ib = alloca double, align 8
  store double %hr, double* %hr.addr, align 8
  store double %hg, double* %hg.addr, align 8
  store double %hb, double* %hb.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load double, double* %hr.addr, align 8
  %mul = fmul double %0, 2.550000e+02
  %div = fdiv double %mul, 2.550000e+02
  store double %div, double* %ir, align 8
  %1 = load double, double* %hg.addr, align 8
  %mul1 = fmul double %1, 2.550000e+02
  %div2 = fdiv double %mul1, 6.300000e+01
  store double %div2, double* %ig, align 8
  %2 = load double, double* %hb.addr, align 8
  %mul3 = fmul double %2, 2.550000e+02
  %div4 = fdiv double %mul3, 6.300000e+01
  store double %div4, double* %ib, align 8
  %3 = load double, double* %ir, align 8
  %div5 = fdiv double %3, 0x4004666660000000
  store double %div5, double* %ir, align 8
  %4 = load double, double* %ig, align 8
  %div6 = fdiv double %4, 0x3FF61FA7C0000000
  %add = fadd double %div6, 0xC0558B9580000000
  store double %add, double* %ig, align 8
  %5 = load double, double* %ib, align 8
  %div7 = fdiv double %5, 0x3FF42A0E20000000
  %add8 = fadd double %div7, 0xC05AF6E980000000
  store double %add8, double* %ib, align 8
  %6 = load double, double* %ir, align 8
  %7 = load double, double* %ig, align 8
  %8 = load double, double* %ib, align 8
  call void @cpercep_space_to_rgb(double %6, double %7, double %8, double* %sr, double* %sg, double* %sb)
  %9 = load double, double* %sr, align 8
  %cmp = fcmp ogt double %9, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.12

cond.false:                                       ; preds = %entry
  %10 = load double, double* %sr, align 8
  %cmp9 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %11 = load double, double* %sr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.10
  %cond = phi double [ 0.000000e+00, %cond.true.10 ], [ %11, %cond.false.11 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %call = call double @rint(double %cond13) #8
  %conv = fptoui double %call to i8
  %12 = load i8*, i8** %r.addr, align 8
  store i8 %conv, i8* %12, align 1
  %13 = load double, double* %sg, align 8
  %cmp14 = fcmp ogt double %13, 2.550000e+02
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.12
  br label %cond.end.24

cond.false.17:                                    ; preds = %cond.end.12
  %14 = load double, double* %sg, align 8
  %cmp18 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.17
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.false.17
  %15 = load double, double* %sg, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi double [ 0.000000e+00, %cond.true.20 ], [ %15, %cond.false.21 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.16
  %cond25 = phi double [ 2.550000e+02, %cond.true.16 ], [ %cond23, %cond.end.22 ]
  %call26 = call double @rint(double %cond25) #8
  %conv27 = fptoui double %call26 to i8
  %16 = load i8*, i8** %g.addr, align 8
  store i8 %conv27, i8* %16, align 1
  %17 = load double, double* %sb, align 8
  %cmp28 = fcmp ogt double %17, 2.550000e+02
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.24
  br label %cond.end.38

cond.false.31:                                    ; preds = %cond.end.24
  %18 = load double, double* %sb, align 8
  %cmp32 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false.31
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.false.31
  %19 = load double, double* %sb, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi double [ 0.000000e+00, %cond.true.34 ], [ %19, %cond.false.35 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.30
  %cond39 = phi double [ 2.550000e+02, %cond.true.30 ], [ %cond37, %cond.end.36 ]
  %call40 = call double @rint(double %cond39) #8
  %conv41 = fptoui double %call40 to i8
  %20 = load i8*, i8** %b.addr, align 8
  store i8 %conv41, i8* %20, align 1
  ret void
}

declare void @cpercep_space_to_rgb(double, double, double, double*, double*, double*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
