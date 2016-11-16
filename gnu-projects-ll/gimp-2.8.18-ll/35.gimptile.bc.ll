; ModuleID = './libgimp/gimptile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GPTileReq = type { i32, i32, i32 }
%struct._GPTileData = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct._GimpWireMessage = type { i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_tile_ref = private unnamed_addr constant [14 x i8] c"gimp_tile_ref\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tile != NULL\00", align 1
@__func__.gimp_tile_ref_zero = private unnamed_addr constant [19 x i8] c"gimp_tile_ref_zero\00", align 1
@__func__.gimp_tile_unref = private unnamed_addr constant [16 x i8] c"gimp_tile_unref\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tile->ref_count > 0\00", align 1
@__func__.gimp_tile_flush = private unnamed_addr constant [16 x i8] c"gimp_tile_flush\00", align 1
@max_cache_size = internal global i64 0, align 8
@__func__._gimp_tile_cache_flush_drawable = private unnamed_addr constant [32 x i8] c"_gimp_tile_cache_flush_drawable\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@tile_list_head = internal global %struct._GList* null, align 8
@_writechannel = external global %struct._GIOChannel*, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"received tile info did not match computed tile info\00", align 1
@tile_hash_table = internal global %struct._GHashTable* null, align 8
@max_tile_size = internal global i64 0, align 8
@tile_list_tail = internal global %struct._GList* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"gimptile.c\00", align 1
@__func__.gimp_tile_cache_insert = private unnamed_addr constant [23 x i8] c"gimp_tile_cache_insert\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"tile_list_head != tile_list_tail\00", align 1
@cur_cache_size = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @gimp_tile_ref(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %cmp = icmp ne %struct._GimpTile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_tile_ref, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %1, i32 0, i32 4
  %2 = load i16, i16* %ref_count, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %ref_count, align 2
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count1 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 4
  %4 = load i16, i16* %ref_count1, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_get(%struct._GimpTile* %5)
  %6 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %6, i32 0, i32 5
  %bf.load = load i8, i8* %dirty, align 2
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %dirty, align 2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.end
  %7 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_cache_insert(%struct._GimpTile* %7)
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_get(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  %tile_req = alloca %struct._GPTileReq, align 4
  %tile_data = alloca %struct._GPTileData*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  %0 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %0, i32 0, i32 7
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 0
  store i32 %2, i32* %drawable_ID, align 4
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %tile_num = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 3
  %4 = load i32, i32* %tile_num, align 4
  %tile_num1 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 1
  store i32 %4, i32* %tile_num1, align 4
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %5, i32 0, i32 5
  %bf.load = load i8, i8* %shadow, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %shadow2 = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 2
  store i32 %bf.cast, i32* %shadow2, align 4
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_tile_req_write(%struct._GIOChannel* %6, %struct._GPTileReq* %tile_req, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gimp_quit() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @gimp_read_expect_msg(%struct._GimpWireMessage* %msg, i32 4)
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GPTileData*
  store %struct._GPTileData* %8, %struct._GPTileData** %tile_data, align 8
  %9 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %drawable_ID3 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_ID3, align 4
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %11, i32 0, i32 7
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id5, align 4
  %cmp = icmp ne i32 %10, %13
  br i1 %cmp, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %tile_num6 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %14, i32 0, i32 1
  %15 = load i32, i32* %tile_num6, align 4
  %16 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %tile_num7 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %16, i32 0, i32 3
  %17 = load i32, i32* %tile_num7, align 4
  %cmp8 = icmp ne i32 %15, %17
  br i1 %cmp8, label %if.then.24, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %18 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %shadow10 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %18, i32 0, i32 2
  %19 = load i32, i32* %shadow10, align 4
  %20 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %shadow11 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %20, i32 0, i32 5
  %bf.load12 = load i8, i8* %shadow11, align 2
  %bf.lshr13 = lshr i8 %bf.load12, 1
  %bf.clear14 = and i8 %bf.lshr13, 1
  %bf.cast15 = zext i8 %bf.clear14 to i32
  %cmp16 = icmp ne i32 %19, %bf.cast15
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.9
  %21 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %21, i32 0, i32 4
  %22 = load i32, i32* %width, align 4
  %23 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %23, i32 0, i32 0
  %24 = load i32, i32* %ewidth, align 4
  %cmp18 = icmp ne i32 %22, %24
  br i1 %cmp18, label %if.then.24, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %25 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %25, i32 0, i32 5
  %26 = load i32, i32* %height, align 4
  %27 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %27, i32 0, i32 1
  %28 = load i32, i32* %eheight, align 4
  %cmp20 = icmp ne i32 %26, %28
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %29 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %bpp = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %29, i32 0, i32 3
  %30 = load i32, i32* %bpp, align 4
  %31 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp22 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %31, i32 0, i32 2
  %32 = load i32, i32* %bpp22, align 4
  %cmp23 = icmp ne i32 %30, %32
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.19, %lor.lhs.false.17, %lor.lhs.false.9, %lor.lhs.false, %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0))
  call void @gimp_quit() #5
  unreachable

if.end.25:                                        ; preds = %lor.lhs.false.21
  %33 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %33, i32 0, i32 6
  %34 = load i32, i32* %use_shm, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.25
  %call28 = call i8* @gimp_shm_addr() #6
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth29 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i32 0, i32 0
  %36 = load i32, i32* %ewidth29, align 4
  %37 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %eheight30 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %37, i32 0, i32 1
  %38 = load i32, i32* %eheight30, align 4
  %mul = mul i32 %36, %38
  %39 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp31 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %39, i32 0, i32 2
  %40 = load i32, i32* %bpp31, align 4
  %mul32 = mul i32 %mul, %40
  %call33 = call noalias i8* @g_memdup(i8* %call28, i32 %mul32)
  %41 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data34 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %41, i32 0, i32 6
  store i8* %call33, i8** %data34, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end.25
  %42 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data35 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %42, i32 0, i32 7
  %43 = load i8*, i8** %data35, align 8
  %44 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data36 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %44, i32 0, i32 6
  store i8* %43, i8** %data36, align 8
  %45 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data37 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %45, i32 0, i32 7
  store i8* null, i8** %data37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.27
  %46 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call39 = call i32 @gp_tile_ack_write(%struct._GIOChannel* %46, i8* null)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  call void @gimp_quit() #5
  unreachable

if.end.42:                                        ; preds = %if.end.38
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_cache_insert(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* null)
  store %struct._GHashTable* %call, %struct._GHashTable** @tile_hash_table, align 8
  %call1 = call i32 @gimp_tile_width() #6
  %call2 = call i32 @gimp_tile_height() #6
  %mul = mul i32 %call1, %call2
  %mul3 = mul i32 %mul, 4
  %conv = zext i32 %mul3 to i64
  store i64 %conv, i64* @max_tile_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %2 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %3 = bitcast %struct._GimpTile* %2 to i8*
  %call4 = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = bitcast i8* %call4 to %struct._GList*
  store %struct._GList* %4, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %5, null
  br i1 %tobool5, label %if.then.6, label %if.else.17

if.then.6:                                        ; preds = %if.end
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %7 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %cmp = icmp eq %struct._GList* %6, %7
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  br label %if.end.42

if.end.9:                                         ; preds = %if.then.6
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %8 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %9 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %cmp10 = icmp ne %struct._GList* %8, %9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tile_cache_insert, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.13:                                        ; preds = %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %10 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %call14 = call %struct._GList* @g_list_remove_link(%struct._GList* %10, %struct._GList* %11)
  store %struct._GList* %call14, %struct._GList** @tile_list_head, align 8
  %12 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %call15 = call %struct._GList* @g_list_concat(%struct._GList* %12, %struct._GList* %13)
  %call16 = call %struct._GList* @g_list_last(%struct._GList* %call15)
  store %struct._GList* %call16, %struct._GList** @tile_list_tail, align 8
  br label %if.end.42

if.else.17:                                       ; preds = %if.end
  %14 = load i64, i64* @cur_cache_size, align 8
  %15 = load i64, i64* @max_tile_size, align 8
  %add = add i64 %14, %15
  %16 = load i64, i64* @max_cache_size, align 8
  %cmp18 = icmp ugt i64 %add, %16
  br i1 %cmp18, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %if.else.17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.20
  %17 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %tobool21 = icmp ne %struct._GList* %17, null
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i64, i64* @cur_cache_size, align 8
  %conv22 = uitofp i64 %18 to double
  %19 = load i64, i64* @max_cache_size, align 8
  %conv23 = uitofp i64 %19 to double
  %mul24 = fmul double %conv23, 1.000000e-01
  %add25 = fadd double %conv22, %mul24
  %20 = load i64, i64* @max_cache_size, align 8
  %conv26 = uitofp i64 %20 to double
  %cmp27 = fcmp ogt double %add25, %conv26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpTile*
  call void @gimp_tile_cache_flush(%struct._GimpTile* %24)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load i64, i64* @cur_cache_size, align 8
  %26 = load i64, i64* @max_tile_size, align 8
  %add29 = add i64 %25, %26
  %27 = load i64, i64* @max_cache_size, align 8
  %cmp30 = icmp ugt i64 %add29, %27
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.end
  br label %if.end.42

if.end.33:                                        ; preds = %while.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else.17
  %28 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %29 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %30 = bitcast %struct._GimpTile* %29 to i8*
  %call35 = call %struct._GList* @g_list_append(%struct._GList* %28, i8* %30)
  store %struct._GList* %call35, %struct._GList** @tile_list_tail, align 8
  %31 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %tobool36 = icmp ne %struct._GList* %31, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  %32 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  store %struct._GList* %32, %struct._GList** @tile_list_head, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %33 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %call39 = call %struct._GList* @g_list_last(%struct._GList* %33)
  store %struct._GList* %call39, %struct._GList** @tile_list_tail, align 8
  %34 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %36 = bitcast %struct._GimpTile* %35 to i8*
  %37 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %38 = bitcast %struct._GList* %37 to i8*
  %call40 = call i32 @g_hash_table_insert(%struct._GHashTable* %34, i8* %36, i8* %38)
  %39 = load i64, i64* @max_tile_size, align 8
  %40 = load i64, i64* @cur_cache_size, align 8
  %add41 = add i64 %40, %39
  store i64 %add41, i64* @cur_cache_size, align 8
  %41 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %41, i32 0, i32 4
  %42 = load i16, i16* %ref_count, align 2
  %inc = add i16 %42, 1
  store i16 %inc, i16* %ref_count, align 2
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.8, %if.then.32, %if.end.38, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tile_ref_zero(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %cmp = icmp ne %struct._GimpTile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tile_ref_zero, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %1, i32 0, i32 4
  %2 = load i16, i16* %ref_count, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %ref_count, align 2
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count1 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 4
  %4 = load i16, i16* %ref_count1, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %do.end
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %5, i32 0, i32 0
  %6 = load i32, i32* %ewidth, align 4
  %7 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %7, i32 0, i32 1
  %8 = load i32, i32* %eheight, align 4
  %mul = mul i32 %6, %8
  %9 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %9, i32 0, i32 2
  %10 = load i32, i32* %bpp, align 4
  %mul5 = mul i32 %mul, %10
  %conv6 = zext i32 %mul5 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv6, i64 1)
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %11, i32 0, i32 6
  store i8* %call, i8** %data, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %do.end
  %12 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_cache_insert(%struct._GimpTile* %12)
  br label %return

return:                                           ; preds = %if.end.7, %if.else
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_tile_unref(%struct._GimpTile* %tile, i32 %dirty) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  %dirty.addr = alloca i32, align 4
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  store i32 %dirty, i32* %dirty.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %cmp = icmp ne %struct._GimpTile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tile_unref, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.18

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %1, i32 0, i32 4
  %2 = load i16, i16* %ref_count, align 2
  %conv = zext i16 %2 to i32
  %cmp2 = icmp sgt i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tile_unref, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count8 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 4
  %4 = load i16, i16* %ref_count8, align 2
  %dec = add i16 %4, -1
  store i16 %dec, i16* %ref_count8, align 2
  %5 = load i32, i32* %dirty.addr, align 4
  %6 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %dirty9 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %6, i32 0, i32 5
  %bf.load = load i8, i8* %dirty9, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %or = or i32 %bf.cast, %5
  %7 = trunc i32 %or to i8
  %bf.load10 = load i8, i8* %dirty9, align 2
  %bf.value = and i8 %7, 1
  %bf.clear11 = and i8 %bf.load10, -2
  %bf.set = or i8 %bf.clear11, %bf.value
  store i8 %bf.set, i8* %dirty9, align 2
  %bf.result.cast = zext i8 %bf.value to i32
  %8 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ref_count12 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %8, i32 0, i32 4
  %9 = load i16, i16* %ref_count12, align 2
  %conv13 = zext i16 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.end.7
  %10 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_flush(%struct._GimpTile* %10)
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %11, i32 0, i32 6
  %12 = load i8*, i8** %data, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data17 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %13, i32 0, i32 6
  store i8* null, i8** %data17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.else.5, %if.then.16, %do.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tile_flush(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %cmp = icmp ne %struct._GimpTile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tile_flush, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %1, i32 0, i32 6
  %2 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %do.end
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 5
  %bf.load = load i8, i8* %dirty, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %land.lhs.true
  %4 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_put(%struct._GimpTile* %4)
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %dirty3 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %5, i32 0, i32 5
  %bf.load4 = load i8, i8* %dirty3, align 2
  %bf.clear5 = and i8 %bf.load4, -2
  store i8 %bf.clear5, i8* %dirty3, align 2
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2, %land.lhs.true, %do.end
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_put(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  %tile_req = alloca %struct._GPTileReq, align 4
  %tile_data = alloca %struct._GPTileData, align 8
  %tile_info = alloca %struct._GPTileData*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 0
  store i32 -1, i32* %drawable_ID, align 4
  %tile_num = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 1
  store i32 0, i32* %tile_num, align 4
  %shadow = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %tile_req, i32 0, i32 2
  store i32 0, i32* %shadow, align 4
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_tile_req_write(%struct._GIOChannel* %0, %struct._GPTileReq* %tile_req, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gimp_quit() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @gimp_read_expect_msg(%struct._GimpWireMessage* %msg, i32 4)
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPTileData*
  store %struct._GPTileData* %2, %struct._GPTileData** %tile_info, align 8
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %3, i32 0, i32 7
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %drawable_ID1 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 0
  store i32 %5, i32* %drawable_ID1, align 4
  %6 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %tile_num2 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %6, i32 0, i32 3
  %7 = load i32, i32* %tile_num2, align 4
  %tile_num3 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 1
  store i32 %7, i32* %tile_num3, align 4
  %8 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %shadow4 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %8, i32 0, i32 5
  %bf.load = load i8, i8* %shadow4, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %shadow5 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 2
  store i32 %bf.cast, i32* %shadow5, align 4
  %9 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %9, i32 0, i32 2
  %10 = load i32, i32* %bpp, align 4
  %bpp6 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 3
  store i32 %10, i32* %bpp6, align 4
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %11, i32 0, i32 0
  %12 = load i32, i32* %ewidth, align 4
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 4
  store i32 %12, i32* %width, align 4
  %13 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %13, i32 0, i32 1
  %14 = load i32, i32* %eheight, align 4
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 5
  store i32 %14, i32* %height, align 4
  %15 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %15, i32 0, i32 6
  %16 = load i32, i32* %use_shm, align 4
  %use_shm7 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 6
  store i32 %16, i32* %use_shm7, align 4
  %data8 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 7
  store i8* null, i8** %data8, align 8
  %17 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %use_shm9 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %17, i32 0, i32 6
  %18 = load i32, i32* %use_shm9, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %call12 = call i8* @gimp_shm_addr() #6
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data13 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %19, i32 0, i32 6
  %20 = load i8*, i8** %data13, align 8
  %21 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth14 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %21, i32 0, i32 0
  %22 = load i32, i32* %ewidth14, align 4
  %23 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %eheight15 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %23, i32 0, i32 1
  %24 = load i32, i32* %eheight15, align 4
  %mul = mul i32 %22, %24
  %25 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp16 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %25, i32 0, i32 2
  %26 = load i32, i32* %bpp16, align 4
  %mul17 = mul i32 %mul, %26
  %conv = zext i32 %mul17 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call12, i8* %20, i64 %conv, i32 1, i1 false)
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %27 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data18 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %27, i32 0, i32 6
  %28 = load i8*, i8** %data18, align 8
  %data19 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 7
  store i8* %28, i8** %data19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.11
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call21 = call i32 @gp_tile_data_write(%struct._GIOChannel* %29, %struct._GPTileData* %tile_data, i8* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  call void @gimp_quit() #5
  unreachable

if.end.24:                                        ; preds = %if.end.20
  %30 = load %struct._GPTileData*, %struct._GPTileData** %tile_info, align 8
  %use_shm25 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %30, i32 0, i32 6
  %31 = load i32, i32* %use_shm25, align 4
  %tobool26 = icmp ne i32 %31, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %data28 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %tile_data, i32 0, i32 7
  store i8* null, i8** %data28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  call void @gimp_read_expect_msg(%struct._GimpWireMessage* %msg, i32 3)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tile_cache_size(i64 %kilobytes) #0 {
entry:
  %kilobytes.addr = alloca i64, align 8
  store i64 %kilobytes, i64* %kilobytes.addr, align 8
  %0 = load i64, i64* %kilobytes.addr, align 8
  %mul = mul i64 %0, 1024
  store i64 %mul, i64* @max_cache_size, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tile_cache_ntiles(i64 %ntiles) #0 {
entry:
  %ntiles.addr = alloca i64, align 8
  store i64 %ntiles, i64* %ntiles.addr, align 8
  %0 = load i64, i64* %ntiles.addr, align 8
  %call = call i32 @gimp_tile_width() #6
  %conv = zext i32 %call to i64
  %mul = mul i64 %0, %conv
  %call1 = call i32 @gimp_tile_height() #6
  %conv2 = zext i32 %call1 to i64
  %mul3 = mul i64 %mul, %conv2
  %mul4 = mul i64 %mul3, 4
  %add = add i64 %mul4, 1023
  %div = udiv i64 %add, 1024
  call void @gimp_tile_cache_size(i64 %div)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #2

; Function Attrs: nounwind uwtable
define hidden void @_gimp_tile_cache_flush_drawable(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %list = alloca %struct._GList*, align 8
  %tile = alloca %struct._GimpTile*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__._gimp_tile_cache_flush_drawable, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %do.end
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpTile*
  store %struct._GimpTile* %5, %struct._GimpTile** %tile, align 8
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  %8 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %drawable1 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %8, i32 0, i32 7
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp2 = icmp eq %struct._GimpDrawable* %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_cache_flush(%struct._GimpTile* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_cache_flush(%struct._GimpTile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._GimpTile*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %2 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %3 = bitcast %struct._GimpTile* %2 to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = bitcast i8* %call to %struct._GList*
  store %struct._GList* %4, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %7 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %cmp = icmp eq %struct._GList* %6, %7
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.2
  %8 = load %struct._GList*, %struct._GList** @tile_list_tail, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %prev, align 8
  store %struct._GList* %9, %struct._GList** @tile_list_tail, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.2
  %10 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %call5 = call %struct._GList* @g_list_remove_link(%struct._GList* %10, %struct._GList* %11)
  store %struct._GList* %call5, %struct._GList** @tile_list_head, align 8
  %12 = load %struct._GList*, %struct._GList** @tile_list_head, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store %struct._GList* null, %struct._GList** @tile_list_tail, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %13 = load %struct._GHashTable*, %struct._GHashTable** @tile_hash_table, align 8
  %14 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %15 = bitcast %struct._GimpTile* %14 to i8*
  %call9 = call i32 @g_hash_table_remove(%struct._GHashTable* %13, i8* %15)
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  call void @g_list_free(%struct._GList* %16)
  %17 = load i64, i64* @max_tile_size, align 8
  %18 = load i64, i64* @cur_cache_size, align 8
  %sub = sub i64 %18, %17
  store i64 %sub, i64* @cur_cache_size, align 8
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %19, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.end.8, %if.end
  ret void
}

declare i32 @gp_tile_req_write(%struct._GIOChannel*, %struct._GPTileReq*, i8*) #1

; Function Attrs: noreturn
declare void @gimp_quit() #3

declare void @gimp_read_expect_msg(%struct._GimpWireMessage*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_shm_addr() #2

declare i32 @gp_tile_ack_write(%struct._GIOChannel*, i8*) #1

declare void @gimp_wire_destroy(%struct._GimpWireMessage*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gp_tile_data_write(%struct._GIOChannel*, %struct._GPTileData*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
