; ModuleID = './app/base/tile-swap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SwapFile = type { i8*, i32, %struct._GList*, i64, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct._TileManager = type opaque
%struct._SwapFileGap = type { i64, i64 }

@gimp_swap_file = internal global %struct._SwapFile* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.tile_swap_init = private unnamed_addr constant [15 x i8] c"tile_swap_init\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp_swap_file == NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gimpswap.%lu\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"tile ref count balance: %d\0A\00", align 1
@__func__.tile_swap_exit = private unnamed_addr constant [15 x i8] c"tile_swap_exit\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"gimp_swap_file != NULL\00", align 1
@__func__.tile_swap_test = private unnamed_addr constant [15 x i8] c"tile_swap_test\00", align 1
@__func__.tile_swap_open = private unnamed_addr constant [15 x i8] c"tile_swap_open\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"swap_file->fd == -1\00", align 1
@.str.7 = private unnamed_addr constant [255 x i8] c"Unable to open swap file. GIMP has run out of memory and cannot use the swap file. Some parts of your images may be corrupted. Try to save your work using different filenames, restart GIMP and check the location of the swap directory in your Preferences.\00", align 1
@seek_err_msg = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"unable to seek to tile location on disk: %s\00", align 1
@read_err_msg = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"unable to read tile data from disk: %s (%d/%d bytes read)\00", align 1
@write_err_msg = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"unable to write tile data to disk: %s (%d/%d bytes written)\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to resize swap file: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @tile_swap_init(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %cmp = icmp eq %struct._SwapFile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tile_swap_init, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %path.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tile_swap_init, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %path.addr, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %2, i32 1, %struct._GError** null)
  store i8* %call, i8** %dirname, align 8
  %call7 = call i32 @get_pid()
  %conv = sext i32 %call7 to i64
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %conv)
  store i8* %call8, i8** %basename, align 8
  %3 = load i8*, i8** %dirname, align 8
  %call9 = call i32 @g_file_test(i8* %3, i32 16)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %do.end.6
  %4 = load i8*, i8** %dirname, align 8
  %call11 = call i32 @g_mkdir_with_parents(i8* %4, i32 493)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.end.6
  %call13 = call noalias i8* @g_slice_alloc(i64 40)
  %5 = bitcast i8* %call13 to %struct._SwapFile*
  store %struct._SwapFile* %5, %struct._SwapFile** @gimp_swap_file, align 8
  %6 = load i8*, i8** %dirname, align 8
  %7 = load i8*, i8** %basename, align 8
  %call14 = call noalias i8* (i8*, ...) @g_build_filename(i8* %6, i8* %7, i8* null)
  %8 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %filename = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 0
  store i8* %call14, i8** %filename, align 8
  %9 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %gaps = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %9, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %gaps, align 8
  %10 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %swap_file_end = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %10, i32 0, i32 3
  store i64 0, i64* %swap_file_end, align 8
  %11 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %cur_position = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %11, i32 0, i32 4
  store i64 0, i64* %cur_position, align 8
  %12 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %12, i32 0, i32 1
  store i32 -1, i32* %fd, align 4
  %13 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %14)
  br label %return

return:                                           ; preds = %if.end.12, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @get_pid() #1

declare i32 @g_file_test(i8*, i32) #1

declare i32 @g_mkdir_with_parents(i8*, i32) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @tile_swap_exit() #0 {
entry:
  %call = call i32 @tile_global_refcount()
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @tile_global_refcount()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %0 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %cmp2 = icmp ne %struct._SwapFile* %0, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tile_swap_exit, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.4:                                         ; preds = %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %1 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %filename = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %1, i32 0, i32 0
  %2 = load i8*, i8** %filename, align 8
  %call5 = call i32 @g_unlink(i8* %2)
  %3 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %filename6 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename6, align 8
  call void @g_free(i8* %4)
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %5 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %6 = bitcast %struct._SwapFile* %5 to i8*
  call void @g_slice_free1(i64 40, i8* %6)
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  store %struct._SwapFile* null, %struct._SwapFile** @gimp_swap_file, align 8
  br label %return

return:                                           ; preds = %do.end.8, %if.else
  ret void
}

declare i32 @tile_global_refcount() #1

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

declare i32 @g_unlink(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @tile_swap_test() #0 {
entry:
  %retval = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %cmp = icmp ne %struct._SwapFile* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tile_swap_test, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %filename = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %1, i32 0, i32 0
  %2 = load i8*, i8** %filename, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %2, i32 66, i32 384)
  %3 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %3, i32 0, i32 1
  store i32 %call, i32* %fd, align 4
  %4 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd1 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %4, i32 0, i32 1
  %5 = load i32, i32* %fd1, align 4
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %do.end
  %6 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd4 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %6, i32 0, i32 1
  %7 = load i32, i32* %fd4, align 4
  %call5 = call i32 @close(i32 %7)
  %8 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd6 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 1
  store i32 -1, i32* %fd6, align 4
  %9 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %filename7 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %9, i32 0, i32 0
  %10 = load i8*, i8** %filename7, align 8
  %call8 = call i32 @g_unlink(i8* %10)
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3, %if.else
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define void @tile_swap_in(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 10
  %1 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_alloc(%struct._Tile* %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_command(%struct._Tile* %3, i32 1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @tile_alloc(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define internal void @tile_swap_command(%struct._Tile* %tile, i32 %command) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %command.addr = alloca i32, align 4
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %command, i32* %command.addr, align 4
  %0 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  call void @tile_swap_open(%struct._SwapFile* %2)
  %3 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %fd1 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %3, i32 0, i32 1
  %4 = load i32, i32* %fd1, align 4
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %command.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end.4
  %6 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %7 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_default_in(%struct._SwapFile* %6, %struct._Tile* %7)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.4
  %8 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %9 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_default_out(%struct._SwapFile* %8, %struct._Tile* %9)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.4
  %10 = load %struct._SwapFile*, %struct._SwapFile** @gimp_swap_file, align 8
  %11 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_default_delete(%struct._SwapFile* %10, %struct._Tile* %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.3, %if.end.4, %sw.bb.6, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_swap_out(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_command(%struct._Tile* %0, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_swap_delete(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_command(%struct._Tile* %0, i32 3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @tile_swap_open(%struct._SwapFile* %swap_file) #0 {
entry:
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tile_swap_open, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %filename = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %2, i32 0, i32 0
  %3 = load i8*, i8** %filename, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %3, i32 66, i32 384)
  %4 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd1 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %4, i32 0, i32 1
  store i32 %call, i32* %fd1, align 4
  %5 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd2 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %5, i32 0, i32 1
  %6 = load i32, i32* %fd2, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.7, i32 0, i32 0)) #2
  call void (i8*, ...) @g_message(i8* %call5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_swap_default_in(%struct._SwapFile* %swap_file, %struct._Tile* %tile) #0 {
entry:
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %nleft = alloca i32, align 4
  %offset = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 9
  %1 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @tile_cache_suspend_idle_swapper()
  %2 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %2, i32 0, i32 4
  %3 = load i64, i64* %cur_position, align 8
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 10
  %5 = load i64, i64* %swap_offset, align 8
  %cmp = icmp ne i64 %3, %5
  br i1 %cmp, label %if.then.1, label %if.end.13

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset2 = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 10
  %7 = load i64, i64* %swap_offset2, align 8
  %8 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position3 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 4
  store i64 %7, i64* %cur_position3, align 8
  %9 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %9, i32 0, i32 1
  %10 = load i32, i32* %fd, align 4
  %11 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset4 = getelementptr inbounds %struct._Tile, %struct._Tile* %11, i32 0, i32 10
  %12 = load i64, i64* %swap_offset4, align 8
  %call = call i64 @lseek(i32 %10, i64 %12, i32 0) #2
  store i64 %call, i64* %offset, align 8
  %13 = load i64, i64* %offset, align 8
  %cmp5 = icmp eq i64 %13, -1
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then.1
  %14 = load i32, i32* @seek_err_msg, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.6
  %call9 = call i32* @__errno_location() #5
  %15 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %15) #5
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* %call10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.6
  store i32 0, i32* @seek_err_msg, align 4
  br label %return

if.end.12:                                        ; preds = %if.then.1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %16 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_alloc(%struct._Tile* %16)
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %17, i32 0, i32 7
  %18 = load i32, i32* %size, align 4
  store i32 %18, i32* %nleft, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.end.13
  %19 = load i32, i32* %nleft, align 4
  %cmp14 = icmp sgt i32 %19, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %land.end, %while.body
  %20 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd15 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %20, i32 0, i32 1
  %21 = load i32, i32* %fd15, align 4
  %22 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data16 = getelementptr inbounds %struct._Tile, %struct._Tile* %22, i32 0, i32 9
  %23 = load i8*, i8** %data16, align 8
  %24 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size17 = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 7
  %25 = load i32, i32* %size17, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %26 = load i32, i32* %nleft, align 4
  %idx.ext18 = sext i32 %26 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %27 = load i32, i32* %nleft, align 4
  %conv = sext i32 %27 to i64
  %call20 = call i64 @read(i32 %21, i8* %add.ptr19, i64 %conv)
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %err, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %err, align 4
  %cmp22 = icmp eq i32 %28, -1
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call24 = call i32* @__errno_location() #5
  %29 = load i32, i32* %call24, align 4
  %cmp25 = icmp eq i32 %29, 11
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call27 = call i32* @__errno_location() #5
  %30 = load i32, i32* %call27, align 4
  %cmp28 = icmp eq i32 %30, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %31 = phi i1 [ true, %land.rhs ], [ %cmp28, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond
  %32 = phi i1 [ false, %do.cond ], [ %31, %lor.end ]
  br i1 %32, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %33 = load i32, i32* %err, align 4
  %cmp30 = icmp sle i32 %33, 0
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %do.end
  %34 = load i32, i32* @read_err_msg, align 4
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.32
  %call35 = call i32* @__errno_location() #5
  %35 = load i32, i32* %call35, align 4
  %call36 = call i8* @g_strerror(i32 %35) #5
  %36 = load i32, i32* %err, align 4
  %37 = load i32, i32* %nleft, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0), i8* %call36, i32 %36, i32 %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.then.32
  store i32 0, i32* @read_err_msg, align 4
  br label %return

if.end.38:                                        ; preds = %do.end
  %38 = load i32, i32* %err, align 4
  %39 = load i32, i32* %nleft, align 4
  %sub = sub nsw i32 %39, %38
  store i32 %sub, i32* %nleft, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size39 = getelementptr inbounds %struct._Tile, %struct._Tile* %40, i32 0, i32 7
  %41 = load i32, i32* %size39, align 4
  %conv40 = sext i32 %41 to i64
  %42 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position41 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %42, i32 0, i32 4
  %43 = load i64, i64* %cur_position41, align 8
  %add = add nsw i64 %43, %conv40
  store i64 %add, i64* %cur_position41, align 8
  store i32 1, i32* @seek_err_msg, align 4
  store i32 1, i32* @read_err_msg, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end.37, %if.end.11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_swap_default_out(%struct._SwapFile* %swap_file, %struct._Tile* %tile) #0 {
entry:
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %bytes = alloca i32, align 4
  %nleft = alloca i32, align 4
  %offset = alloca i64, align 8
  %newpos = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 4
  %1 = load i8, i8* %bpp, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 4096, %conv
  store i32 %mul, i32* %bytes, align 4
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 10
  %3 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %5 = load i32, i32* %bytes, align 4
  %conv2 = sext i32 %5 to i64
  %call = call i64 @tile_swap_find_offset(%struct._SwapFile* %4, i64 %conv2)
  store i64 %call, i64* %newpos, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset3 = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 10
  %7 = load i64, i64* %swap_offset3, align 8
  store i64 %7, i64* %newpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 4
  %9 = load i64, i64* %cur_position, align 8
  %10 = load i64, i64* %newpos, align 8
  %cmp4 = icmp ne i64 %9, %10
  br i1 %cmp4, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %11, i32 0, i32 1
  %12 = load i32, i32* %fd, align 4
  %13 = load i64, i64* %newpos, align 8
  %call7 = call i64 @lseek(i32 %12, i64 %13, i32 0) #2
  store i64 %call7, i64* %offset, align 8
  %14 = load i64, i64* %offset, align 8
  %cmp8 = icmp eq i64 %14, -1
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.then.6
  %15 = load i32, i32* @seek_err_msg, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.10
  %call12 = call i32* @__errno_location() #5
  %16 = load i32, i32* %call12, align 4
  %call13 = call i8* @g_strerror(i32 %16) #5
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.10
  store i32 0, i32* @seek_err_msg, align 4
  br label %return

if.end.15:                                        ; preds = %if.then.6
  %17 = load i64, i64* %newpos, align 8
  %18 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position16 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %18, i32 0, i32 4
  store i64 %17, i64* %cur_position16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %19 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %19, i32 0, i32 7
  %20 = load i32, i32* %size, align 4
  store i32 %20, i32* %nleft, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end.17
  %21 = load i32, i32* %nleft, align 4
  %cmp18 = icmp sgt i32 %21, 0
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd20 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %22, i32 0, i32 1
  %23 = load i32, i32* %fd20, align 4
  %24 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 9
  %25 = load i8*, i8** %data, align 8
  %26 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size21 = getelementptr inbounds %struct._Tile, %struct._Tile* %26, i32 0, i32 7
  %27 = load i32, i32* %size21, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %28 = load i32, i32* %nleft, align 4
  %idx.ext22 = sext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext22
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %29 = load i32, i32* %nleft, align 4
  %conv24 = sext i32 %29 to i64
  %call25 = call i64 @write(i32 %23, i8* %add.ptr23, i64 %conv24)
  %conv26 = trunc i64 %call25 to i32
  store i32 %conv26, i32* %err, align 4
  %30 = load i32, i32* %err, align 4
  %cmp27 = icmp sle i32 %30, 0
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %while.body
  %31 = load i32, i32* @write_err_msg, align 4
  %tobool30 = icmp ne i32 %31, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.then.29
  %call32 = call i32* @__errno_location() #5
  %32 = load i32, i32* %call32, align 4
  %call33 = call i8* @g_strerror(i32 %32) #5
  %33 = load i32, i32* %err, align 4
  %34 = load i32, i32* %nleft, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0), i8* %call33, i32 %33, i32 %34)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.29
  store i32 0, i32* @write_err_msg, align 4
  br label %return

if.end.35:                                        ; preds = %while.body
  %35 = load i32, i32* %err, align 4
  %36 = load i32, i32* %nleft, align 4
  %sub = sub nsw i32 %36, %35
  store i32 %sub, i32* %nleft, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size36 = getelementptr inbounds %struct._Tile, %struct._Tile* %37, i32 0, i32 7
  %38 = load i32, i32* %size36, align 4
  %conv37 = sext i32 %38 to i64
  %39 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %cur_position38 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %39, i32 0, i32 4
  %40 = load i64, i64* %cur_position38, align 8
  %add = add nsw i64 %40, %conv37
  store i64 %add, i64* %cur_position38, align 8
  %41 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %41, i32 0, i32 3
  %bf.load = load i8, i8* %dirty, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %dirty, align 8
  %42 = load i64, i64* %newpos, align 8
  %43 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset39 = getelementptr inbounds %struct._Tile, %struct._Tile* %43, i32 0, i32 10
  store i64 %42, i64* %swap_offset39, align 8
  store i32 1, i32* @seek_err_msg, align 4
  store i32 1, i32* @write_err_msg, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end.34, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_swap_default_delete(%struct._SwapFile* %swap_file, %struct._Tile* %tile) #0 {
entry:
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %gap = alloca %struct._SwapFileGap*, align 8
  %gap2 = alloca %struct._SwapFileGap*, align 8
  %tmp = alloca %struct._GList*, align 8
  %tmp2 = alloca %struct._GList*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 10
  %1 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.108

if.end:                                           ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset5 = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 10
  %3 = load i64, i64* %swap_offset5, align 8
  store i64 %3, i64* %start, align 8
  %4 = load i64, i64* %start, align 8
  %5 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %5, i32 0, i32 4
  %6 = load i8, i8* %bpp, align 1
  %conv = zext i8 %6 to i32
  %mul = mul nsw i32 4096, %conv
  %conv6 = sext i32 %mul to i64
  %add = add nsw i64 %4, %conv6
  store i64 %add, i64* %end, align 8
  %7 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset7 = getelementptr inbounds %struct._Tile, %struct._Tile* %7, i32 0, i32 10
  store i64 -1, i64* %swap_offset7, align 8
  %8 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %gaps, align 8
  store %struct._GList* %9, %struct._GList** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.87, %if.end
  %10 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._SwapFileGap*
  store %struct._SwapFileGap* %13, %struct._SwapFileGap** %gap, align 8
  %14 = load i64, i64* %end, align 8
  %15 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start8 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %15, i32 0, i32 0
  %16 = load i64, i64* %start8, align 8
  %cmp9 = icmp eq i64 %14, %16
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %17 = load i64, i64* %start, align 8
  %18 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start12 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %18, i32 0, i32 0
  store i64 %17, i64* %start12, align 8
  %19 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool13 = icmp ne %struct._GList* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.then.11
  %21 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev15 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 2
  %22 = load %struct._GList*, %struct._GList** %prev15, align 8
  %data16 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data16, align 8
  %24 = bitcast i8* %23 to %struct._SwapFileGap*
  store %struct._SwapFileGap* %24, %struct._SwapFileGap** %gap2, align 8
  %25 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start17 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %25, i32 0, i32 0
  %26 = load i64, i64* %start17, align 8
  %27 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap2, align 8
  %end18 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %27, i32 0, i32 1
  %28 = load i64, i64* %end18, align 8
  %cmp19 = icmp eq i64 %26, %28
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.14
  %29 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end22 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %29, i32 0, i32 1
  %30 = load i64, i64* %end22, align 8
  %31 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap2, align 8
  %end23 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %31, i32 0, i32 1
  store i64 %30, i64* %end23, align 8
  %32 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  call void @tile_swap_gap_destroy(%struct._SwapFileGap* %32)
  %33 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps24 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %33, i32 0, i32 2
  %34 = load %struct._GList*, %struct._GList** %gaps24, align 8
  %35 = load %struct._GList*, %struct._GList** %tmp, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %34, %struct._GList* %35)
  %36 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps25 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %36, i32 0, i32 2
  store %struct._GList* %call, %struct._GList** %gaps25, align 8
  %37 = load %struct._GList*, %struct._GList** %tmp, align 8
  call void @g_list_free(%struct._GList* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.11
  br label %while.end

if.else:                                          ; preds = %while.body
  %38 = load i64, i64* %start, align 8
  %39 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end28 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %39, i32 0, i32 1
  %40 = load i64, i64* %end28, align 8
  %cmp29 = icmp eq i64 %38, %40
  br i1 %cmp29, label %if.then.31, label %if.else.49

if.then.31:                                       ; preds = %if.else
  %41 = load i64, i64* %end, align 8
  %42 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end32 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %42, i32 0, i32 1
  store i64 %41, i64* %end32, align 8
  %43 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool33 = icmp ne %struct._GList* %44, null
  br i1 %tobool33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.then.31
  %45 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next35 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %next35, align 8
  %data36 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data36, align 8
  %48 = bitcast i8* %47 to %struct._SwapFileGap*
  store %struct._SwapFileGap* %48, %struct._SwapFileGap** %gap2, align 8
  %49 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end37 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %49, i32 0, i32 1
  %50 = load i64, i64* %end37, align 8
  %51 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap2, align 8
  %start38 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %51, i32 0, i32 0
  %52 = load i64, i64* %start38, align 8
  %cmp39 = icmp eq i64 %50, %52
  br i1 %cmp39, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.then.34
  %53 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start42 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %53, i32 0, i32 0
  %54 = load i64, i64* %start42, align 8
  %55 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap2, align 8
  %start43 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %55, i32 0, i32 0
  store i64 %54, i64* %start43, align 8
  %56 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  call void @tile_swap_gap_destroy(%struct._SwapFileGap* %56)
  %57 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps44 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %57, i32 0, i32 2
  %58 = load %struct._GList*, %struct._GList** %gaps44, align 8
  %59 = load %struct._GList*, %struct._GList** %tmp, align 8
  %call45 = call %struct._GList* @g_list_remove_link(%struct._GList* %58, %struct._GList* %59)
  %60 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps46 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %60, i32 0, i32 2
  store %struct._GList* %call45, %struct._GList** %gaps46, align 8
  %61 = load %struct._GList*, %struct._GList** %tmp, align 8
  call void @g_list_free(%struct._GList* %61)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %if.then.34
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.31
  br label %while.end

if.else.49:                                       ; preds = %if.else
  %62 = load i64, i64* %end, align 8
  %63 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start50 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %63, i32 0, i32 0
  %64 = load i64, i64* %start50, align 8
  %cmp51 = icmp slt i64 %62, %64
  br i1 %cmp51, label %if.then.53, label %if.else.73

if.then.53:                                       ; preds = %if.else.49
  %65 = load i64, i64* %start, align 8
  %66 = load i64, i64* %end, align 8
  %call54 = call %struct._SwapFileGap* @tile_swap_gap_new(i64 %65, i64 %66)
  store %struct._SwapFileGap* %call54, %struct._SwapFileGap** %gap, align 8
  %call55 = call %struct._GList* @g_list_alloc()
  store %struct._GList* %call55, %struct._GList** %tmp2, align 8
  %67 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %68 = bitcast %struct._SwapFileGap* %67 to i8*
  %69 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %data56 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  store i8* %68, i8** %data56, align 8
  %70 = load %struct._GList*, %struct._GList** %tmp, align 8
  %71 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %next57 = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 1
  store %struct._GList* %70, %struct._GList** %next57, align 8
  %72 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev58 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 2
  %73 = load %struct._GList*, %struct._GList** %prev58, align 8
  %74 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %prev59 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 2
  store %struct._GList* %73, %struct._GList** %prev59, align 8
  %75 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev60 = getelementptr inbounds %struct._GList, %struct._GList* %75, i32 0, i32 2
  %76 = load %struct._GList*, %struct._GList** %prev60, align 8
  %tobool61 = icmp ne %struct._GList* %76, null
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.then.53
  %77 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %78 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev63 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 2
  %79 = load %struct._GList*, %struct._GList** %prev63, align 8
  %next64 = getelementptr inbounds %struct._GList, %struct._GList* %79, i32 0, i32 1
  store %struct._GList* %77, %struct._GList** %next64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.then.53
  %80 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %81 = load %struct._GList*, %struct._GList** %tmp, align 8
  %prev66 = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 2
  store %struct._GList* %80, %struct._GList** %prev66, align 8
  %82 = load %struct._GList*, %struct._GList** %tmp, align 8
  %83 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps67 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %83, i32 0, i32 2
  %84 = load %struct._GList*, %struct._GList** %gaps67, align 8
  %cmp68 = icmp eq %struct._GList* %82, %84
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.65
  %85 = load %struct._GList*, %struct._GList** %tmp2, align 8
  %86 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps71 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %86, i32 0, i32 2
  store %struct._GList* %85, %struct._GList** %gaps71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.65
  br label %while.end

if.else.73:                                       ; preds = %if.else.49
  %87 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next74 = getelementptr inbounds %struct._GList, %struct._GList* %87, i32 0, i32 1
  %88 = load %struct._GList*, %struct._GList** %next74, align 8
  %tobool75 = icmp ne %struct._GList* %88, null
  br i1 %tobool75, label %if.end.84, label %if.then.76

if.then.76:                                       ; preds = %if.else.73
  %89 = load i64, i64* %start, align 8
  %90 = load i64, i64* %end, align 8
  %call77 = call %struct._SwapFileGap* @tile_swap_gap_new(i64 %89, i64 %90)
  store %struct._SwapFileGap* %call77, %struct._SwapFileGap** %gap, align 8
  %call78 = call %struct._GList* @g_list_alloc()
  %91 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next79 = getelementptr inbounds %struct._GList, %struct._GList* %91, i32 0, i32 1
  store %struct._GList* %call78, %struct._GList** %next79, align 8
  %92 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %93 = bitcast %struct._SwapFileGap* %92 to i8*
  %94 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next80 = getelementptr inbounds %struct._GList, %struct._GList* %94, i32 0, i32 1
  %95 = load %struct._GList*, %struct._GList** %next80, align 8
  %data81 = getelementptr inbounds %struct._GList, %struct._GList* %95, i32 0, i32 0
  store i8* %93, i8** %data81, align 8
  %96 = load %struct._GList*, %struct._GList** %tmp, align 8
  %97 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next82 = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 1
  %98 = load %struct._GList*, %struct._GList** %next82, align 8
  %prev83 = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 2
  store %struct._GList* %96, %struct._GList** %prev83, align 8
  br label %while.end

if.end.84:                                        ; preds = %if.else.73
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86
  %99 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next88 = getelementptr inbounds %struct._GList, %struct._GList* %99, i32 0, i32 1
  %100 = load %struct._GList*, %struct._GList** %next88, align 8
  store %struct._GList* %100, %struct._GList** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.76, %if.end.72, %if.end.48, %if.end.27, %while.cond
  %101 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps89 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %101, i32 0, i32 2
  %102 = load %struct._GList*, %struct._GList** %gaps89, align 8
  %tobool90 = icmp ne %struct._GList* %102, null
  br i1 %tobool90, label %if.end.96, label %if.then.91

if.then.91:                                       ; preds = %while.end
  %103 = load i64, i64* %start, align 8
  %104 = load i64, i64* %end, align 8
  %call92 = call %struct._SwapFileGap* @tile_swap_gap_new(i64 %103, i64 %104)
  store %struct._SwapFileGap* %call92, %struct._SwapFileGap** %gap, align 8
  %105 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps93 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %105, i32 0, i32 2
  %106 = load %struct._GList*, %struct._GList** %gaps93, align 8
  %107 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %108 = bitcast %struct._SwapFileGap* %107 to i8*
  %call94 = call %struct._GList* @g_list_append(%struct._GList* %106, i8* %108)
  %109 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps95 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %109, i32 0, i32 2
  store %struct._GList* %call94, %struct._GList** %gaps95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.91, %while.end
  %110 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps97 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %110, i32 0, i32 2
  %111 = load %struct._GList*, %struct._GList** %gaps97, align 8
  %call98 = call %struct._GList* @g_list_last(%struct._GList* %111)
  store %struct._GList* %call98, %struct._GList** %tmp, align 8
  %112 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data99 = getelementptr inbounds %struct._GList, %struct._GList* %112, i32 0, i32 0
  %113 = load i8*, i8** %data99, align 8
  %114 = bitcast i8* %113 to %struct._SwapFileGap*
  store %struct._SwapFileGap* %114, %struct._SwapFileGap** %gap, align 8
  %115 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end100 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %115, i32 0, i32 1
  %116 = load i64, i64* %end100, align 8
  %117 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %117, i32 0, i32 3
  %118 = load i64, i64* %swap_file_end, align 8
  %cmp101 = icmp eq i64 %116, %118
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.96
  %119 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %120 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start104 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %120, i32 0, i32 0
  %121 = load i64, i64* %start104, align 8
  call void @tile_swap_resize(%struct._SwapFile* %119, i64 %121)
  %122 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  call void @tile_swap_gap_destroy(%struct._SwapFileGap* %122)
  %123 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps105 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %123, i32 0, i32 2
  %124 = load %struct._GList*, %struct._GList** %gaps105, align 8
  %125 = load %struct._GList*, %struct._GList** %tmp, align 8
  %call106 = call %struct._GList* @g_list_remove_link(%struct._GList* %124, %struct._GList* %125)
  %126 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps107 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %126, i32 0, i32 2
  store %struct._GList* %call106, %struct._GList** %gaps107, align 8
  %127 = load %struct._GList*, %struct._GList** %tmp, align 8
  call void @g_list_free(%struct._GList* %127)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then, %if.then.103, %if.end.96
  ret void
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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @tile_cache_suspend_idle_swapper() #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @tile_swap_find_offset(%struct._SwapFile* %swap_file, i64 %bytes) #0 {
entry:
  %retval = alloca i64, align 8
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  %bytes.addr = alloca i64, align 8
  %gap = alloca %struct._SwapFileGap*, align 8
  %tmp = alloca %struct._GList*, align 8
  %offset = alloca i64, align 8
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %gaps, align 8
  store %struct._GList* %1, %struct._GList** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._SwapFileGap*
  store %struct._SwapFileGap* %5, %struct._SwapFileGap** %gap, align 8
  %6 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %6, i32 0, i32 1
  %7 = load i64, i64* %end, align 8
  %8 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %8, i32 0, i32 0
  %9 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %7, %9
  %10 = load i64, i64* %bytes.addr, align 8
  %cmp = icmp sge i64 %sub, %10
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %while.body
  %11 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start2 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %11, i32 0, i32 0
  %12 = load i64, i64* %start2, align 8
  store i64 %12, i64* %offset, align 8
  %13 = load i64, i64* %bytes.addr, align 8
  %14 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start3 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %14, i32 0, i32 0
  %15 = load i64, i64* %start3, align 8
  %add = add nsw i64 %15, %13
  store i64 %add, i64* %start3, align 8
  %16 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start4 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %16, i32 0, i32 0
  %17 = load i64, i64* %start4, align 8
  %18 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end5 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %18, i32 0, i32 1
  %19 = load i64, i64* %end5, align 8
  %cmp6 = icmp eq i64 %17, %19
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %20 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  call void @tile_swap_gap_destroy(%struct._SwapFileGap* %20)
  %21 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps8 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %21, i32 0, i32 2
  %22 = load %struct._GList*, %struct._GList** %gaps8, align 8
  %23 = load %struct._GList*, %struct._GList** %tmp, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %22, %struct._GList* %23)
  %24 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps9 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %24, i32 0, i32 2
  store %struct._GList* %call, %struct._GList** %gaps9, align 8
  %25 = load %struct._GList*, %struct._GList** %tmp, align 8
  call void @g_list_free(%struct._GList* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %26 = load i64, i64* %offset, align 8
  store i64 %26, i64* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %27 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %28, %struct._GList** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %29, i32 0, i32 3
  %30 = load i64, i64* %swap_file_end, align 8
  store i64 %30, i64* %offset, align 8
  %31 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %32 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end11 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %32, i32 0, i32 3
  %33 = load i64, i64* %swap_file_end11, align 8
  %add12 = add i64 %33, 16777216
  call void @tile_swap_resize(%struct._SwapFile* %31, i64 %add12)
  %34 = load i64, i64* %offset, align 8
  %35 = load i64, i64* %bytes.addr, align 8
  %add13 = add nsw i64 %34, %35
  %36 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end14 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %36, i32 0, i32 3
  %37 = load i64, i64* %swap_file_end14, align 8
  %cmp15 = icmp slt i64 %add13, %37
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %while.end
  %38 = load i64, i64* %offset, align 8
  %39 = load i64, i64* %bytes.addr, align 8
  %add17 = add nsw i64 %38, %39
  %40 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end18 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %40, i32 0, i32 3
  %41 = load i64, i64* %swap_file_end18, align 8
  %call19 = call %struct._SwapFileGap* @tile_swap_gap_new(i64 %add17, i64 %41)
  store %struct._SwapFileGap* %call19, %struct._SwapFileGap** %gap, align 8
  %42 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps20 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %42, i32 0, i32 2
  %43 = load %struct._GList*, %struct._GList** %gaps20, align 8
  %44 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %45 = bitcast %struct._SwapFileGap* %44 to i8*
  %call21 = call %struct._GList* @g_list_append(%struct._GList* %43, i8* %45)
  %46 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %gaps22 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %46, i32 0, i32 2
  store %struct._GList* %call21, %struct._GList** %gaps22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %while.end
  %47 = load i64, i64* %offset, align 8
  store i64 %47, i64* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end
  %48 = load i64, i64* %retval
  ret i64 %48
}

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @tile_swap_gap_destroy(%struct._SwapFileGap* %gap) #0 {
entry:
  %gap.addr = alloca %struct._SwapFileGap*, align 8
  store %struct._SwapFileGap* %gap, %struct._SwapFileGap** %gap.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap.addr, align 8
  %1 = bitcast %struct._SwapFileGap* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal void @tile_swap_resize(%struct._SwapFile* %swap_file, i64 %new_size) #0 {
entry:
  %swap_file.addr = alloca %struct._SwapFile*, align 8
  %new_size.addr = alloca i64, align 8
  store %struct._SwapFile* %swap_file, %struct._SwapFile** %swap_file.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %0, i32 0, i32 3
  %1 = load i64, i64* %swap_file_end, align 8
  %2 = load i64, i64* %new_size.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %fd = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %3, i32 0, i32 1
  %4 = load i32, i32* %fd, align 4
  %5 = load i64, i64* %new_size.addr, align 8
  %call = call i32 @ftruncate(i32 %4, i64 %5) #2
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #2
  %call4 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %6) #5
  call void (i8*, ...) @g_message(i8* %call3, i8* %call5)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load i64, i64* %new_size.addr, align 8
  %8 = load %struct._SwapFile*, %struct._SwapFile** %swap_file.addr, align 8
  %swap_file_end7 = getelementptr inbounds %struct._SwapFile, %struct._SwapFile* %8, i32 0, i32 3
  store i64 %7, i64* %swap_file_end7, align 8
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._SwapFileGap* @tile_swap_gap_new(i64 %start, i64 %end) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %gap = alloca %struct._SwapFileGap*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %call = call noalias i8* @g_slice_alloc(i64 16)
  %0 = bitcast i8* %call to %struct._SwapFileGap*
  store %struct._SwapFileGap* %0, %struct._SwapFileGap** %gap, align 8
  %1 = load i64, i64* %start.addr, align 8
  %2 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %start1 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %2, i32 0, i32 0
  store i64 %1, i64* %start1, align 8
  %3 = load i64, i64* %end.addr, align 8
  %4 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  %end2 = getelementptr inbounds %struct._SwapFileGap, %struct._SwapFileGap* %4, i32 0, i32 1
  store i64 %3, i64* %end2, align 8
  %5 = load %struct._SwapFileGap*, %struct._SwapFileGap** %gap, align 8
  ret %struct._SwapFileGap* %5
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #3

declare %struct._GList* @g_list_alloc() #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
