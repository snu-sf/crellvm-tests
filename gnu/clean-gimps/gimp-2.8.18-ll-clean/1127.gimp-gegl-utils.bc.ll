; ModuleID = './app/gegl/gimp-gegl-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._Babl = type opaque
%struct._TileManager = type opaque
%struct._GeglBuffer = type opaque
%struct._GeglNode = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_bpp_to_babl_format = private unnamed_addr constant [24 x i8] c"gimp_bpp_to_babl_format\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bpp > 0 && bpp <= 4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Y u8\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"YA u8\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"RGB u8\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RGBA u8\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Y' u8\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Y'A u8\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"R'G'B' u8\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"R'G'B'A u8\00", align 1
@__func__.gimp_buffer_to_tiles = private unnamed_addr constant [21 x i8] c"gimp_buffer_to_tiles\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"gegl:buffer-source\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"gimp:tilemanager-sink\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gegl:over\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"gimp:dissolve-mode\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"gimp:behind-mode\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"gimp:multiply-mode\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"gimp:screen-mode\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimp:overlay-mode\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"gimp:difference-mode\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"gimp:addition-mode\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"gimp:subtract-mode\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"gimp:darken-mode\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"gimp:lighten-mode\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"gimp:hue-mode\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"gimp:saturation-mode\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"gimp:color-mode\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"gimp:value-mode\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"gimp:divide-mode\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"gimp:dodge-mode\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"gimp:burn-mode\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"gimp:hardlight-mode\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp:softlight-mode\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"gimp:grain-extract-mode\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"gimp:grain-merge-mode\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"gimp:color-erase-mode\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"gimp:erase-mode\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"gimp:replace-mode\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"gimp:anti-erase-mode\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"cubic\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"lohalo\00", align 1

; Function Attrs: nounwind readnone uwtable
define %union._Babl* @gimp_bpp_to_babl_format(i32 %bpp, i32 %linear) #0 {
entry:
  %retval = alloca %union._Babl*, align 8
  %bpp.addr = alloca i32, align 4
  %linear.addr = alloca i32, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %linear, i32* %linear.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %bpp.addr, align 4
  %cmp1 = icmp ule i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_bpp_to_babl_format, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %union._Babl* null, %union._Babl** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %linear.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.else.9

if.then.2:                                        ; preds = %do.end
  %3 = load i32, i32* %bpp.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.then.2
  %call = call %union._Babl* @babl_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store %union._Babl* %call, %union._Babl** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.then.2
  %call4 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %union._Babl* %call4, %union._Babl** %retval
  br label %return

sw.bb.5:                                          ; preds = %if.then.2
  %call6 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  store %union._Babl* %call6, %union._Babl** %retval
  br label %return

sw.bb.7:                                          ; preds = %if.then.2
  %call8 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  store %union._Babl* %call8, %union._Babl** %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.2
  br label %if.end.19

if.else.9:                                        ; preds = %do.end
  %4 = load i32, i32* %bpp.addr, align 4
  switch i32 %4, label %sw.epilog.18 [
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.16
  ]

sw.bb.10:                                         ; preds = %if.else.9
  %call11 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  store %union._Babl* %call11, %union._Babl** %retval
  br label %return

sw.bb.12:                                         ; preds = %if.else.9
  %call13 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store %union._Babl* %call13, %union._Babl** %retval
  br label %return

sw.bb.14:                                         ; preds = %if.else.9
  %call15 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store %union._Babl* %call15, %union._Babl** %retval
  br label %return

sw.bb.16:                                         ; preds = %if.else.9
  %call17 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  store %union._Babl* %call17, %union._Babl** %retval
  br label %return

sw.epilog.18:                                     ; preds = %if.else.9
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog.18, %sw.epilog
  store %union._Babl* null, %union._Babl** %retval
  br label %return

return:                                           ; preds = %if.end.19, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb, %if.else
  %5 = load %union._Babl*, %union._Babl** %retval
  ret %union._Babl* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %union._Babl* @babl_format(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_buffer_to_tiles(%struct._GeglBuffer* %buffer) #2 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %buffer.addr = alloca %struct._GeglBuffer*, align 8
  %format = alloca %union._Babl*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %source = alloca %struct._GeglNode*, align 8
  %sink = alloca %struct._GeglNode*, align 8
  store %struct._GeglBuffer* %buffer, %struct._GeglBuffer** %buffer.addr, align 8
  %0 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer.addr, align 8
  %call = call %union._Babl* @gegl_buffer_get_format(%struct._GeglBuffer* %0)
  store %union._Babl* %call, %union._Babl** %format, align 8
  store %struct._TileManager* null, %struct._TileManager** %new_tiles, align 8
  store %struct._GeglNode* null, %struct._GeglNode** %source, align 8
  store %struct._GeglNode* null, %struct._GeglNode** %sink, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer.addr, align 8
  %cmp = icmp ne %struct._GeglBuffer* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_buffer_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer.addr, align 8
  %call1 = call %struct._GeglRectangle* @gegl_buffer_get_extent(%struct._GeglBuffer* %2)
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %call1, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer.addr, align 8
  %call2 = call %struct._GeglRectangle* @gegl_buffer_get_extent(%struct._GeglBuffer* %4)
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %call2, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %6 = load %union._Babl*, %union._Babl** %format, align 8
  %call3 = call i32 @gimp_babl_format_to_legacy_bpp(%union._Babl* %6)
  %call4 = call %struct._TileManager* @tile_manager_new(i32 %3, i32 %5, i32 %call3)
  store %struct._TileManager* %call4, %struct._TileManager** %new_tiles, align 8
  %7 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer.addr, align 8
  %call5 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglBuffer* %7, i8* null)
  store %struct._GeglNode* %call5, %struct._GeglNode** %source, align 8
  %8 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %call6 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), %struct._TileManager* %8, i8* null)
  store %struct._GeglNode* %call6, %struct._GeglNode** %sink, align 8
  %9 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %10 = load %struct._GeglNode*, %struct._GeglNode** %sink, align 8
  call void (%struct._GeglNode*, %struct._GeglNode*, ...) @gegl_node_link_many(%struct._GeglNode* %9, %struct._GeglNode* %10, i8* null)
  %11 = load %struct._GeglNode*, %struct._GeglNode** %sink, align 8
  call void @gegl_node_process(%struct._GeglNode* %11)
  %12 = load %struct._GeglNode*, %struct._GeglNode** %sink, align 8
  %13 = bitcast %struct._GeglNode* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %15 = bitcast %struct._GeglNode* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %16, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %17 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %17
}

declare %union._Babl* @gegl_buffer_get_format(%struct._GeglBuffer*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare %struct._GeglRectangle* @gegl_buffer_get_extent(%struct._GeglBuffer*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_babl_format_to_legacy_bpp(%union._Babl* %format) #2 {
entry:
  %format.addr = alloca %union._Babl*, align 8
  store %union._Babl* %format, %union._Babl** %format.addr, align 8
  %0 = load %union._Babl*, %union._Babl** %format.addr, align 8
  %call = call i32 @babl_format_get_n_components(%union._Babl* %0)
  ret i32 %call
}

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare void @gegl_node_link_many(%struct._GeglNode*, %struct._GeglNode*, ...) #1

declare void @gegl_node_process(%struct._GeglNode*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_layer_mode_to_gegl_operation(i32 %mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 22, label %sw.bb.22
    i32 23, label %sw.bb.23
    i32 24, label %sw.bb.24
    i32 25, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_interpolation_to_gegl_filter(i32 %interpolation) #0 {
entry:
  %retval = alloca i8*, align 8
  %interpolation.addr = alloca i32, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  %0 = load i32, i32* %interpolation.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

declare i32 @babl_format_get_n_components(%union._Babl*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
