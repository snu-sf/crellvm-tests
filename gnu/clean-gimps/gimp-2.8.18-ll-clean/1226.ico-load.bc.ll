; ModuleID = './plug-ins/file-ico/ico-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IcoLoadInfo = type { i32, i32, i32, i32, i32 }
%struct._IcoFileHeader = type { i16, i16, i16 }
%struct._IcoFileEntry = type { i8, i8, i8, i8, i16, i16, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct._IcoFileDataHeader = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Opening thumbnail for '%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1.5.13\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Icon #%i\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ico_get_bit_from_data(i8* %data, i32 %line_width, i32 %bit) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %bit.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width32 = alloca i32, align 4
  %offset = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 32
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 32
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width32, align 4
  %3 = load i32, i32* %bit.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %bit.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %line, align 4
  %8 = load i32, i32* %width32, align 4
  %mul = mul nsw i32 %7, %8
  %mul4 = mul nsw i32 %mul, 4
  %9 = load i32, i32* %offset, align 4
  %div5 = sdiv i32 %9, 8
  %add6 = add nsw i32 %mul4, %div5
  %idxprom = sext i32 %add6 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %offset, align 4
  %rem7 = srem i32 %12, 8
  %sub = sub nsw i32 7, %rem7
  %shl = shl i32 1, %sub
  %and = and i32 %conv, %shl
  store i32 %and, i32* %result, align 4
  %13 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %13, 0
  %cond8 = select i1 %tobool, i32 1, i32 0
  ret i32 %cond8
}

; Function Attrs: nounwind uwtable
define i32 @ico_get_nibble_from_data(i8* %data, i32 %line_width, i32 %nibble) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %nibble.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width32 = alloca i32, align 4
  %offset = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %nibble, i32* %nibble.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 8
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 8
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width32, align 4
  %3 = load i32, i32* %nibble.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %nibble.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %line, align 4
  %8 = load i32, i32* %width32, align 4
  %mul = mul nsw i32 %7, %8
  %mul4 = mul nsw i32 %mul, 4
  %9 = load i32, i32* %offset, align 4
  %div5 = sdiv i32 %9, 2
  %add6 = add nsw i32 %mul4, %div5
  %idxprom = sext i32 %add6 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %offset, align 4
  %rem7 = srem i32 %12, 2
  %sub = sub nsw i32 1, %rem7
  %mul8 = mul nsw i32 4, %sub
  %shl = shl i32 15, %mul8
  %and = and i32 %conv, %shl
  store i32 %and, i32* %result, align 4
  %13 = load i32, i32* %offset, align 4
  %rem9 = srem i32 %13, 2
  %cmp10 = icmp eq i32 %rem9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load i32, i32* %result, align 4
  %shr = ashr i32 %14, 4
  store i32 %shr, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %15 = load i32, i32* %result, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @ico_get_byte_from_data(i8* %data, i32 %line_width, i32 %byte) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %byte.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width32 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 4
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width32, align 4
  %3 = load i32, i32* %byte.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %byte.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %line, align 4
  %8 = load i32, i32* %width32, align 4
  %mul = mul nsw i32 %7, %8
  %mul4 = mul nsw i32 %mul, 4
  %9 = load i32, i32* %offset, align 4
  %add5 = add nsw i32 %mul4, %9
  %idxprom = sext i32 %add5 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @ico_load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %info = alloca %struct._IcoLoadInfo*, align 8
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  %i = alloca i32, align 4
  %image = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %icon_count = alloca i32, align 4
  %maxsize = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #6
  %0 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %0)
  %call2 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call, i8* %call1)
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %4)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #6
  %5 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call9 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %6) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @ico_read_init(%struct._IO_FILE* %7)
  store i32 %call11, i32* %icon_count, align 4
  %8 = load i32, i32* %icon_count, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load i32, i32* %icon_count, align 4
  %call16 = call %struct._IcoLoadInfo* @ico_read_info(%struct._IO_FILE* %10, i32 %11)
  store %struct._IcoLoadInfo* %call16, %struct._IcoLoadInfo** %info, align 8
  %12 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %tobool17 = icmp ne %struct._IcoLoadInfo* %12, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  store i32 0, i32* %max_width, align 4
  store i32 0, i32* %max_height, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %icon_count, align 4
  %cmp = icmp ult i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %17, i64 %idxprom
  %width = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %max_width, align 4
  %cmp21 = icmp ugt i32 %18, %19
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx24 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %21, i64 %idxprom23
  %width25 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx24, i32 0, i32 0
  %22 = load i32, i32* %width25, align 4
  store i32 %22, i32* %max_width, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx28 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %24, i64 %idxprom27
  %height = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx28, i32 0, i32 1
  %25 = load i32, i32* %height, align 4
  %26 = load i32, i32* %max_height, align 4
  %cmp29 = icmp ugt i32 %25, %26
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.26
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx32 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %28, i64 %idxprom31
  %height33 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx32, i32 0, i32 1
  %29 = load i32, i32* %height33, align 4
  store i32 %29, i32* %max_height, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %max_width, align 4
  %cmp35 = icmp sle i32 %31, 0
  br i1 %cmp35, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %32 = load i32, i32* %max_height, align 4
  %cmp36 = icmp sle i32 %32, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false, %for.end
  %33 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %34 = bitcast %struct._IcoLoadInfo* %33 to i8*
  call void @g_free(i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %35)
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false
  %36 = load i32, i32* %max_width, align 4
  %37 = load i32, i32* %max_height, align 4
  %call40 = call i32 @gimp_image_new(i32 %36, i32 %37, i32 0)
  store i32 %call40, i32* %image, align 4
  %38 = load i32, i32* %image, align 4
  %39 = load i8*, i8** %filename.addr, align 8
  %call41 = call i32 @gimp_image_set_filename(i32 %38, i8* %39)
  %40 = load i32, i32* %max_width, align 4
  %41 = load i32, i32* %max_height, align 4
  %mul = mul nsw i32 %40, %41
  %mul42 = mul nsw i32 %mul, 4
  store i32 %mul42, i32* %maxsize, align 4
  %42 = load i32, i32* %max_width, align 4
  %43 = load i32, i32* %max_height, align 4
  %mul43 = mul nsw i32 %42, %43
  %mul44 = mul nsw i32 %mul43, 4
  %conv = sext i32 %mul44 to i64
  %call45 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call45, i8** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.51, %if.end.39
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %icon_count, align 4
  %cmp47 = icmp ult i32 %44, %45
  br i1 %cmp47, label %for.body.49, label %for.end.53

for.body.49:                                      ; preds = %for.cond.46
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %47 = load i32, i32* %image, align 4
  %48 = load i32, i32* %i, align 4
  %49 = load i8*, i8** %buffer, align 8
  %50 = load i32, i32* %maxsize, align 4
  %51 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %52 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %51, i64 %idx.ext
  %call50 = call i32 @ico_load_layer(%struct._IO_FILE* %46, i32 %47, i32 %48, i8* %49, i32 %50, %struct._IcoLoadInfo* %add.ptr)
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.49
  %53 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.46

for.end.53:                                       ; preds = %for.cond.46
  %54 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %56 = bitcast %struct._IcoLoadInfo* %55 to i8*
  call void @g_free(i8* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* %57)
  %call55 = call i32 @gimp_progress_update(double 1.000000e+00)
  %58 = load i32, i32* %image, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %for.end.53, %if.then.37, %if.then.18, %if.then.13, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_init(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %header = alloca %struct._IcoFileHeader, align 2
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %reserved = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 0
  %call = call i32 @ico_read_int16(%struct._IO_FILE* %0, i16* %reserved, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %resource_type = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 1
  %call1 = call i32 @ico_read_int16(%struct._IO_FILE* %1, i16* %resource_type, i32 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %icon_count = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 2
  %call4 = call i32 @ico_read_int16(%struct._IO_FILE* %2, i16* %icon_count, i32 1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %reserved7 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 0
  %3 = load i16, i16* %reserved7, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %resource_type10 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 1
  %4 = load i16, i16* %resource_type10, align 2
  %conv11 = zext i16 %4 to i32
  %cmp12 = icmp ne i32 %conv11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  %icon_count14 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 2
  %5 = load i16, i16* %icon_count14, align 2
  %conv15 = zext i16 %5 to i32
  store i32 %conv15, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IcoLoadInfo* @ico_read_info(%struct._IO_FILE* %fp, i32 %icon_count) #0 {
entry:
  %retval = alloca %struct._IcoLoadInfo*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %icon_count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %entries = alloca %struct._IcoFileEntry*, align 8
  %info = alloca %struct._IcoLoadInfo*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %icon_count, i32* %icon_count.addr, align 4
  %0 = load i32, i32* %icon_count.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %1 = bitcast i8* %call to %struct._IcoFileEntry*
  store %struct._IcoFileEntry* %1, %struct._IcoFileEntry** %entries, align 8
  %2 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %3 = bitcast %struct._IcoFileEntry* %2 to i8*
  %4 = load i32, i32* %icon_count.addr, align 4
  %conv1 = sext i32 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i64 @fread(i8* %3, i64 16, i64 %conv1, %struct._IO_FILE* %5)
  %cmp = icmp ule i64 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %7 = bitcast %struct._IcoFileEntry* %6 to i8*
  call void @g_free(i8* %7)
  store %struct._IcoLoadInfo* null, %struct._IcoLoadInfo** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %icon_count.addr, align 4
  %conv4 = sext i32 %8 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 20)
  %9 = bitcast i8* %call5 to %struct._IcoLoadInfo*
  store %struct._IcoLoadInfo* %9, %struct._IcoLoadInfo** %info, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %icon_count.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %13, i64 %idxprom
  %width = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx, i32 0, i32 0
  %14 = load i8, i8* %width, align 1
  %conv8 = zext i8 %14 to i32
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx10 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %16, i64 %idxprom9
  %width11 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx10, i32 0, i32 0
  store i32 %conv8, i32* %width11, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx13 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %18, i64 %idxprom12
  %height = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx13, i32 0, i32 1
  %19 = load i8, i8* %height, align 1
  %conv14 = zext i8 %19 to i32
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx16 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %21, i64 %idxprom15
  %height17 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx16, i32 0, i32 1
  store i32 %conv14, i32* %height17, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx19 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %23, i64 %idxprom18
  %bpp = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx19, i32 0, i32 5
  %24 = load i16, i16* %bpp, align 2
  %conv20 = zext i16 %24 to i32
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx22 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %26, i64 %idxprom21
  %bpp23 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx22, i32 0, i32 2
  store i32 %conv20, i32* %bpp23, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx25 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %28, i64 %idxprom24
  %size = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx25, i32 0, i32 6
  %29 = load i32, i32* %size, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx27 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %31, i64 %idxprom26
  %size28 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx27, i32 0, i32 4
  store i32 %29, i32* %size28, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx30 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %33, i64 %idxprom29
  %offset = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx30, i32 0, i32 7
  %34 = load i32, i32* %offset, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx32 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %36, i64 %idxprom31
  %offset33 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx32, i32 0, i32 3
  store i32 %34, i32* %offset33, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx35 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %38, i64 %idxprom34
  %width36 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx35, i32 0, i32 0
  %39 = load i32, i32* %width36, align 4
  %cmp37 = icmp eq i32 %39, 0
  br i1 %cmp37, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %40 to i64
  %41 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx40 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %41, i64 %idxprom39
  %height41 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx40, i32 0, i32 1
  %42 = load i32, i32* %height41, align 4
  %cmp42 = icmp eq i32 %42, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %lor.lhs.false, %for.body
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %45 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %44, i64 %idx.ext
  %call45 = call i32 @ico_read_size(%struct._IO_FILE* %43, %struct._IcoLoadInfo* %add.ptr)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %48 = bitcast %struct._IcoFileEntry* %47 to i8*
  call void @g_free(i8* %48)
  %49 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  store %struct._IcoLoadInfo* %49, %struct._IcoLoadInfo** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %50 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %retval
  ret %struct._IcoLoadInfo* %50
}

declare void @g_free(i8*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_load_layer(%struct._IO_FILE* %fp, i32 %image, i32 %icon_num, i8* %buffer, i32 %maxsize, %struct._IcoLoadInfo* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %image.addr = alloca i32, align 4
  %icon_num.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %maxsize.addr = alloca i32, align 4
  %info.addr = alloca %struct._IcoLoadInfo*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %layer = alloca i32, align 4
  %first_bytes = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %buf = alloca [4096 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %icon_num, i32* %icon_num.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %maxsize, i32* %maxsize.addr, align 4
  store %struct._IcoLoadInfo* %info, %struct._IcoLoadInfo** %info.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %offset = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %1, i32 0, i32 3
  %2 = load i32, i32* %offset, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %conv, i32 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @ico_read_int32(%struct._IO_FILE* %3, i32* %first_bytes, i32 1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %first_bytes, align 4
  %cmp3 = icmp eq i32 %4, 1196314761
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %first_bytes, align 4
  %7 = load i8*, i8** %buffer.addr, align 8
  %8 = load i32, i32* %maxsize.addr, align 4
  %call6 = call i32 @ico_read_png(%struct._IO_FILE* %5, i32 %6, i8* %7, i32 %8, i32* %width, i32* %height)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %first_bytes, align 4
  %cmp10 = icmp eq i32 %9, 40
  br i1 %cmp10, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* %first_bytes, align 4
  %12 = load i8*, i8** %buffer.addr, align 8
  %13 = load i32, i32* %maxsize.addr, align 4
  %call13 = call i32 @ico_read_icon(%struct._IO_FILE* %10, i32 %11, i8* %12, i32 %13, i32* %width, i32* %height)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.9
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #6
  %14 = load i32, i32* %icon_num.addr, align 4
  %add = add nsw i32 %14, 1
  %call21 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 4096, i8* %call20, i32 %add)
  %15 = load i32, i32* %image.addr, align 4
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %call23 = call i32 @gimp_layer_new(i32 %15, i8* %arraydecay22, i32 %16, i32 %17, i32 1, double 1.000000e+02, i32 0)
  store i32 %call23, i32* %layer, align 4
  %18 = load i32, i32* %image.addr, align 4
  %19 = load i32, i32* %layer, align 4
  %20 = load i32, i32* %icon_num.addr, align 4
  %call24 = call i32 @gimp_image_insert_layer(i32 %18, i32 %19, i32 -1, i32 %20)
  %21 = load i32, i32* %layer, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %21)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %drawable, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 1
  %24 = load i32, i32* %width26, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 2
  %26 = load i32, i32* %height27, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %22, i32 0, i32 0, i32 %24, i32 %26, i32 1, i32 0)
  %27 = load i8*, i8** %buffer.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width28, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height29, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %27, i32 0, i32 0, i32 %29, i32 %31)
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %32)
  %33 = load i32, i32* %layer, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.else.17, %if.then.15, %if.then.8, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define i32 @ico_load_thumbnail_image(i8* %filename, i32* %width, i32* %height, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %info = alloca %struct._IcoLoadInfo*, align 8
  %image = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %bpp = alloca i32, align 4
  %match = alloca i32, align 4
  %i = alloca i32, align 4
  %icon_count = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %w, align 4
  store i32 0, i32* %h, align 4
  store i32 0, i32* %bpp, align 4
  store i32 0, i32* %match, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #6
  %0 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %0)
  %call2 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call, i8* %call1)
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %4)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #6
  %5 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call9 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %6) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @ico_read_init(%struct._IO_FILE* %7)
  store i32 %call11, i32* %icon_count, align 4
  %8 = load i32, i32* %icon_count, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load i32, i32* %icon_count, align 4
  %call16 = call %struct._IcoLoadInfo* @ico_read_info(%struct._IO_FILE* %10, i32 %11)
  store %struct._IcoLoadInfo* %call16, %struct._IcoLoadInfo** %info, align 8
  %12 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %tobool17 = icmp ne %struct._IcoLoadInfo* %12, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %icon_count, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %17, i64 %idxprom
  %width21 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %width21, align 4
  %19 = load i32, i32* %w, align 4
  %cmp22 = icmp ugt i32 %18, %19
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %20 = load i32, i32* %w, align 4
  %21 = load i32*, i32** %width.addr, align 8
  %22 = load i32, i32* %21, align 4
  %cmp23 = icmp slt i32 %20, %22
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx25 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %24, i64 %idxprom24
  %height26 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx25, i32 0, i32 1
  %25 = load i32, i32* %height26, align 4
  %26 = load i32, i32* %h, align 4
  %cmp27 = icmp ugt i32 %25, %26
  br i1 %cmp27, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %h, align 4
  %28 = load i32*, i32** %height.addr, align 8
  %29 = load i32, i32* %28, align 4
  %cmp29 = icmp slt i32 %27, %29
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.28, %land.lhs.true
  %30 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx32 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %31, i64 %idxprom31
  %width33 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx32, i32 0, i32 0
  %32 = load i32, i32* %width33, align 4
  store i32 %32, i32* %w, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx35 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %34, i64 %idxprom34
  %height36 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx35, i32 0, i32 1
  %35 = load i32, i32* %height36, align 4
  store i32 %35, i32* %h, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx38 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %37, i64 %idxprom37
  %bpp39 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx38, i32 0, i32 2
  %38 = load i32, i32* %bpp39, align 4
  store i32 %38, i32* %bpp, align 4
  %39 = load i32, i32* %i, align 4
  store i32 %39, i32* %match, align 4
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true.28, %lor.lhs.false
  %40 = load i32, i32* %w, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx41 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %42, i64 %idxprom40
  %width42 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx41, i32 0, i32 0
  %43 = load i32, i32* %width42, align 4
  %cmp43 = icmp eq i32 %40, %43
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.58

land.lhs.true.44:                                 ; preds = %if.else
  %44 = load i32, i32* %h, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx46 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %46, i64 %idxprom45
  %height47 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx46, i32 0, i32 1
  %47 = load i32, i32* %height47, align 4
  %cmp48 = icmp eq i32 %44, %47
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %land.lhs.true.44
  %48 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %48 to i64
  %49 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx51 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %49, i64 %idxprom50
  %bpp52 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx51, i32 0, i32 2
  %50 = load i32, i32* %bpp52, align 4
  %51 = load i32, i32* %bpp, align 4
  %cmp53 = icmp sgt i32 %50, %51
  br i1 %cmp53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %land.lhs.true.49
  %52 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %52 to i64
  %53 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %arrayidx56 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %53, i64 %idxprom55
  %bpp57 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %arrayidx56, i32 0, i32 2
  %54 = load i32, i32* %bpp57, align 4
  store i32 %54, i32* %bpp, align 4
  %55 = load i32, i32* %i, align 4
  store i32 %55, i32* %match, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %land.lhs.true.49, %land.lhs.true.44, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %w, align 4
  %cmp60 = icmp sle i32 %57, 0
  br i1 %cmp60, label %if.then.63, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %for.end
  %58 = load i32, i32* %h, align 4
  %cmp62 = icmp sle i32 %58, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.61, %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %lor.lhs.false.61
  %59 = load i32, i32* %w, align 4
  %60 = load i32, i32* %h, align 4
  %call65 = call i32 @gimp_image_new(i32 %59, i32 %60, i32 0)
  store i32 %call65, i32* %image, align 4
  %61 = load i32, i32* %w, align 4
  %62 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %61, %62
  %mul66 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul66 to i64
  %call67 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call67, i8** %buffer, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %64 = load i32, i32* %image, align 4
  %65 = load i32, i32* %match, align 4
  %66 = load i8*, i8** %buffer, align 8
  %67 = load i32, i32* %w, align 4
  %68 = load i32, i32* %h, align 4
  %mul68 = mul nsw i32 %67, %68
  %mul69 = mul nsw i32 %mul68, 4
  %69 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %70 = load i32, i32* %match, align 4
  %idx.ext = sext i32 %70 to i64
  %add.ptr = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %69, i64 %idx.ext
  %call70 = call i32 @ico_load_layer(%struct._IO_FILE* %63, i32 %64, i32 %65, i8* %66, i32 %mul69, %struct._IcoLoadInfo* %add.ptr)
  %71 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %71)
  %72 = load i32, i32* %w, align 4
  %73 = load i32*, i32** %width.addr, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %h, align 4
  %75 = load i32*, i32** %height.addr, align 8
  store i32 %74, i32* %75, align 4
  %call71 = call i32 @gimp_progress_update(double 1.000000e+00)
  %76 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info, align 8
  %77 = bitcast %struct._IcoLoadInfo* %76 to i8*
  call void @g_free(i8* %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call72 = call i32 @fclose(%struct._IO_FILE* %78)
  %79 = load i32, i32* %image, align 4
  store i32 %79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.63, %if.then.18, %if.then.13, %if.then
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_int16(%struct._IO_FILE* %fp, i16* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i16*, i16** %data.addr, align 8
  %4 = bitcast i16* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 2
  %call = call i32 @ico_read_int8(%struct._IO_FILE* %2, i8* %4, i32 %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** %data.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i16*, i16** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 %idxprom2
  store i16 %10, i16* %arrayidx3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load i32, i32* %total, align 4
  %mul4 = mul nsw i32 %14, 2
  ret i32 %mul4
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_int8(%struct._IO_FILE* %fp, i8* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %2, i64 1, i64 %conv, %struct._IO_FILE* %4)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %bytes, align 4
  %5 = load i32, i32* %bytes, align 4
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %bytes, align 4
  %7 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %count.addr, align 4
  %8 = load i32, i32* %bytes, align 4
  %9 = load i8*, i8** %data.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i32, i32* %total, align 4
  ret i32 %10
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_size(%struct._IO_FILE* %fp, %struct._IcoLoadInfo* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %info.addr = alloca %struct._IcoLoadInfo*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %bpp = alloca i32, align 4
  %color_type = alloca i32, align 4
  %magic = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._IcoLoadInfo* %info, %struct._IcoLoadInfo** %info.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %offset = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %1, i32 0, i32 3
  %2 = load i32, i32* %offset, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %conv, i32 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @ico_read_int32(%struct._IO_FILE* %3, i32* %magic, i32 1)
  %4 = load i32, i32* %magic, align 4
  %cmp3 = icmp eq i32 %4, 1196314761
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %call6 = call noalias %struct.png_struct_def* @png_create_read_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call6, %struct.png_struct_def** %png_ptr, align 8
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %tobool = icmp ne %struct.png_struct_def* %5, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call9 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %6)
  store %struct.png_info_def* %call9, %struct.png_info_def** %info_ptr, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %tobool10 = icmp ne %struct.png_info_def* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call13 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %8, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call13, i32 0, i32 0
  %call14 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @png_init_io(%struct.png_struct_def* %9, %struct._IO_FILE* %10)
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_sig_bytes(%struct.png_struct_def* %11, i32 4)
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %13 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_read_info(%struct.png_struct_def* %12, %struct.png_info_def* %13)
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call18 = call i32 @png_get_IHDR(%struct.png_struct_def* %14, %struct.png_info_def* %15, i32* %w, i32* %h, i32* %bpp, i32* %color_type, i32* null, i32* null, i32* null)
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  %16 = load i32, i32* %w, align 4
  %17 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %width = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %17, i32 0, i32 0
  store i32 %16, i32* %width, align 4
  %18 = load i32, i32* %h, align 4
  %19 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %height = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %19, i32 0, i32 1
  store i32 %18, i32* %height, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %magic, align 4
  %cmp19 = icmp eq i32 %20, 40
  br i1 %cmp19, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.else
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %width22 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %22, i32 0, i32 0
  %call23 = call i32 @ico_read_int32(%struct._IO_FILE* %21, i32* %width22, i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.then.21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %24 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %height25 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %24, i32 0, i32 1
  %call26 = call i32 @ico_read_int32(%struct._IO_FILE* %23, i32* %height25, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %land.lhs.true
  %25 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %height29 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %height29, align 4
  %div = udiv i32 %26, 2
  store i32 %div, i32* %height29, align 4
  store i32 1, i32* %retval
  br label %return

if.else.30:                                       ; preds = %land.lhs.true, %if.then.21
  %27 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %width31 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %27, i32 0, i32 0
  store i32 0, i32* %width31, align 4
  %28 = load %struct._IcoLoadInfo*, %struct._IcoLoadInfo** %info.addr, align 8
  %height32 = getelementptr inbounds %struct._IcoLoadInfo, %struct._IcoLoadInfo* %28, i32 0, i32 1
  store i32 0, i32* %height32, align 4
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.else.30, %if.then.28, %if.end.17, %if.then.16, %if.then.11, %if.then.7, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_int32(%struct._IO_FILE* %fp, i32* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 4
  %call = call i32 @ico_read_int8(%struct._IO_FILE* %2, i8* %4, i32 %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %data.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i32*, i32** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 %idxprom2
  store i32 %10, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load i32, i32* %total, align 4
  %mul4 = mul nsw i32 %14, 4
  ret i32 %mul4
}

declare noalias %struct.png_struct_def* @png_create_read_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #1

declare void @png_destroy_read_struct(%struct.png_struct_def**, %struct.png_info_def**, %struct.png_info_def**) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #4

declare [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def*, void (%struct.__jmp_buf_tag*, i32)*, i64) #1

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #5

declare void @png_init_io(%struct.png_struct_def*, %struct._IO_FILE*) #1

declare void @png_set_sig_bytes(%struct.png_struct_def*, i32) #1

declare void @png_read_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @png_get_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_png(%struct._IO_FILE* %fp, i32 %header, i8* %buffer, i32 %maxsize, i32* %width, i32* %height) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %header.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %maxsize.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info = alloca %struct.png_info_def*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %bit_depth = alloca i32, align 4
  %color_type = alloca i32, align 4
  %rows = alloca i32**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %header, i32* %header.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %maxsize, i32* %maxsize.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %call = call noalias %struct.png_struct_def* @png_create_read_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call, %struct.png_struct_def** %png_ptr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %tobool = icmp ne %struct.png_struct_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call1 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %1)
  store %struct.png_info_def* %call1, %struct.png_info_def** %info, align 8
  %2 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %tobool2 = icmp ne %struct.png_info_def* %2, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call5 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %3, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call5, i32 0, i32 0
  %call6 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @png_init_io(%struct.png_struct_def* %4, %struct._IO_FILE* %5)
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_sig_bytes(%struct.png_struct_def* %6, i32 4)
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %8 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_read_info(%struct.png_struct_def* %7, %struct.png_info_def* %8)
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %10 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call10 = call i32 @png_get_IHDR(%struct.png_struct_def* %9, %struct.png_info_def* %10, i32* %w, i32* %h, i32* %bit_depth, i32* %color_type, i32* null, i32* null, i32* null)
  %11 = load i32, i32* %w, align 4
  %12 = load i32, i32* %h, align 4
  %mul = mul i32 %11, %12
  %mul11 = mul i32 %mul, 4
  %13 = load i32, i32* %maxsize.addr, align 4
  %cmp = icmp ugt i32 %mul11, %13
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %14 = load i32, i32* %color_type, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.17
    i32 3, label %sw.bb.21
    i32 2, label %sw.bb.26
    i32 6, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.13
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_expand_gray_1_2_4_to_8(%struct.png_struct_def* %15)
  %16 = load i32, i32* %bit_depth, align 4
  %cmp14 = icmp eq i32 %16, 16
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_strip_16(%struct.png_struct_def* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_gray_to_rgb(%struct.png_struct_def* %18)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_add_alpha(%struct.png_struct_def* %19, i32 255, i32 1)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.13
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_expand_gray_1_2_4_to_8(%struct.png_struct_def* %20)
  %21 = load i32, i32* %bit_depth, align 4
  %cmp18 = icmp eq i32 %21, 16
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.17
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_strip_16(%struct.png_struct_def* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.17
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_gray_to_rgb(%struct.png_struct_def* %23)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.13
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_palette_to_rgb(%struct.png_struct_def* %24)
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %26 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call22 = call i32 @png_get_valid(%struct.png_struct_def* %25, %struct.png_info_def* %26, i32 16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %sw.bb.21
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_tRNS_to_alpha(%struct.png_struct_def* %27)
  br label %if.end.25

if.else:                                          ; preds = %sw.bb.21
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_add_alpha(%struct.png_struct_def* %28, i32 255, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.13
  %29 = load i32, i32* %bit_depth, align 4
  %cmp27 = icmp eq i32 %29, 16
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.26
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_strip_16(%struct.png_struct_def* %30)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %sw.bb.26
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_add_alpha(%struct.png_struct_def* %31, i32 255, i32 1)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.13
  %32 = load i32, i32* %bit_depth, align 4
  %cmp31 = icmp eq i32 %32, 16
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.bb.30
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_strip_16(%struct.png_struct_def* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %sw.bb.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.13, %if.end.33, %if.end.29, %if.end.25, %if.end.20, %if.end.16
  %34 = load i32, i32* %w, align 4
  %35 = load i32*, i32** %width.addr, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %h, align 4
  %37 = load i32*, i32** %height.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %h, align 4
  %conv = zext i32 %38 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %39 = bitcast i8* %call34 to i32**
  store i32** %39, i32*** %rows, align 8
  %40 = load i8*, i8** %buffer.addr, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32**, i32*** %rows, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %42, i64 0
  store i32* %41, i32** %arrayidx, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %h, align 4
  %cmp35 = icmp ult i32 %43, %44
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %45, 1
  %idxprom = sext i32 %sub to i64
  %46 = load i32**, i32*** %rows, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %46, i64 %idxprom
  %47 = load i32*, i32** %arrayidx37, align 8
  %48 = load i32, i32* %w, align 4
  %idx.ext = zext i32 %48 to i64
  %add.ptr = getelementptr inbounds i32, i32* %47, i64 %idx.ext
  %49 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %49 to i64
  %50 = load i32**, i32*** %rows, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %50, i64 %idxprom38
  store i32* %add.ptr, i32** %arrayidx39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %53 = load i32**, i32*** %rows, align 8
  %54 = bitcast i32** %53 to i8**
  call void @png_read_image(%struct.png_struct_def* %52, i8** %54)
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info, %struct.png_info_def** null)
  %55 = load i32**, i32*** %rows, align 8
  %56 = bitcast i32** %55 to i8*
  call void @g_free(i8* %56)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.8, %if.then.3, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_read_icon(%struct._IO_FILE* %fp, i32 %header_size, i8* %buffer, i32 %maxsize, i32* %width, i32* %height) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %header_size.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %maxsize.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %data = alloca %struct._IcoFileDataHeader, align 4
  %length = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %xor_map = alloca i8*, align 8
  %and_map = alloca i8*, align 8
  %palette = alloca i32*, align 8
  %dest_vec = alloca i32*, align 8
  %row = alloca i8*, align 8
  %rowstride = alloca i32, align 4
  %color = alloca i32, align 4
  %dest = alloca i32*, align 8
  %color117 = alloca i32, align 4
  %dest123 = alloca i32*, align 8
  %color161 = alloca i32, align 4
  %dest167 = alloca i32*, align 8
  %bytespp = alloca i32, align 4
  %dest213 = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %header_size, i32* %header_size.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %maxsize, i32* %maxsize.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* null, i32** %palette, align 8
  %0 = load i32, i32* %header_size.addr, align 4
  %header_size1 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 0
  store i32 %0, i32* %header_size1, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %width2 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 1
  %call = call i32 @ico_read_int32(%struct._IO_FILE* %1, i32* %width2, i32 1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %height3 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 2
  %call4 = call i32 @ico_read_int32(%struct._IO_FILE* %2, i32* %height3, i32 1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %planes = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 3
  %call5 = call i32 @ico_read_int16(%struct._IO_FILE* %3, i16* %planes, i32 1)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %bpp = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %call6 = call i32 @ico_read_int16(%struct._IO_FILE* %4, i16* %bpp, i32 1)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %compression = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 5
  %call7 = call i32 @ico_read_int32(%struct._IO_FILE* %5, i32* %compression, i32 1)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %image_size = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 6
  %call8 = call i32 @ico_read_int32(%struct._IO_FILE* %6, i32* %image_size, i32 1)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %x_res = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 7
  %call9 = call i32 @ico_read_int32(%struct._IO_FILE* %7, i32* %x_res, i32 1)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %y_res = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 8
  %call10 = call i32 @ico_read_int32(%struct._IO_FILE* %8, i32* %y_res, i32 1)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %used_clrs = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 9
  %call11 = call i32 @ico_read_int32(%struct._IO_FILE* %9, i32* %used_clrs, i32 1)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %important_clrs = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 10
  %call12 = call i32 @ico_read_int32(%struct._IO_FILE* %10, i32* %important_clrs, i32 1)
  %planes13 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 3
  %11 = load i16, i16* %planes13, align 2
  %conv = zext i16 %11 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %compression15 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 5
  %12 = load i32, i32* %compression15, align 4
  %cmp16 = icmp ne i32 %12, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %bpp18 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %13 = load i16, i16* %bpp18, align 2
  %conv19 = zext i16 %13 to i32
  %cmp20 = icmp ne i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end
  %bpp22 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %14 = load i16, i16* %bpp22, align 2
  %conv23 = zext i16 %14 to i32
  %cmp24 = icmp ne i32 %conv23, 4
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.42

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %bpp27 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %15 = load i16, i16* %bpp27, align 2
  %conv28 = zext i16 %15 to i32
  %cmp29 = icmp ne i32 %conv28, 8
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %bpp32 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %16 = load i16, i16* %bpp32, align 2
  %conv33 = zext i16 %16 to i32
  %cmp34 = icmp ne i32 %conv33, 24
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %bpp37 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %17 = load i16, i16* %bpp37, align 2
  %conv38 = zext i16 %17 to i32
  %cmp39 = icmp ne i32 %conv38, 32
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true, %if.end
  %width43 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 1
  %18 = load i32, i32* %width43, align 4
  %height44 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 2
  %19 = load i32, i32* %height44, align 4
  %mul = mul i32 %18, %19
  %mul45 = mul i32 %mul, 2
  %20 = load i32, i32* %maxsize.addr, align 4
  %cmp46 = icmp ugt i32 %mul45, %20
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.42
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.42
  %width50 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 1
  %21 = load i32, i32* %width50, align 4
  store i32 %21, i32* %w, align 4
  %height51 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 2
  %22 = load i32, i32* %height51, align 4
  %div = udiv i32 %22, 2
  store i32 %div, i32* %h, align 4
  %bpp52 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %23 = load i16, i16* %bpp52, align 2
  %conv53 = zext i16 %23 to i32
  %cmp54 = icmp sle i32 %conv53, 8
  br i1 %cmp54, label %if.then.56, label %if.end.71

if.then.56:                                       ; preds = %if.end.49
  %used_clrs57 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 9
  %24 = load i32, i32* %used_clrs57, align 4
  %cmp58 = icmp eq i32 %24, 0
  br i1 %cmp58, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.then.56
  %bpp61 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %25 = load i16, i16* %bpp61, align 2
  %conv62 = zext i16 %25 to i32
  %shl = shl i32 1, %conv62
  %used_clrs63 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 9
  store i32 %shl, i32* %used_clrs63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.then.56
  %used_clrs65 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 9
  %26 = load i32, i32* %used_clrs65, align 4
  %conv66 = zext i32 %26 to i64
  %call67 = call noalias i8* @g_malloc0_n(i64 %conv66, i64 4)
  %27 = bitcast i8* %call67 to i32*
  store i32* %27, i32** %palette, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32*, i32** %palette, align 8
  %30 = bitcast i32* %29 to i8*
  %used_clrs68 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 9
  %31 = load i32, i32* %used_clrs68, align 4
  %mul69 = mul i32 %31, 4
  %call70 = call i32 @ico_read_int8(%struct._IO_FILE* %28, i8* %30, i32 %mul69)
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.64, %if.end.49
  %32 = load i32, i32* %w, align 4
  %33 = load i32, i32* %h, align 4
  %bpp72 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %34 = load i16, i16* %bpp72, align 2
  %conv73 = zext i16 %34 to i32
  %call74 = call i8* @ico_alloc_map(i32 %32, i32 %33, i32 %conv73, i32* %length)
  store i8* %call74, i8** %xor_map, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load i8*, i8** %xor_map, align 8
  %37 = load i32, i32* %length, align 4
  %call75 = call i32 @ico_read_int8(%struct._IO_FILE* %35, i8* %36, i32 %37)
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %h, align 4
  %call76 = call i8* @ico_alloc_map(i32 %38, i32 %39, i32 1, i32* %length)
  store i8* %call76, i8** %and_map, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %41 = load i8*, i8** %and_map, align 8
  %42 = load i32, i32* %length, align 4
  %call77 = call i32 @ico_read_int8(%struct._IO_FILE* %40, i8* %41, i32 %42)
  %43 = load i8*, i8** %buffer.addr, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %dest_vec, align 8
  %bpp78 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %45 = load i16, i16* %bpp78, align 2
  %conv79 = zext i16 %45 to i32
  switch i32 %conv79, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.108
    i32 8, label %sw.bb.152
  ]

sw.bb:                                            ; preds = %if.end.71
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %sw.bb
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %h, align 4
  %cmp80 = icmp slt i32 %46, %47
  br i1 %cmp80, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %w, align 4
  %cmp83 = icmp slt i32 %48, %49
  br i1 %cmp83, label %for.body.85, label %for.end

for.body.85:                                      ; preds = %for.cond.82
  %50 = load i8*, i8** %xor_map, align 8
  %51 = load i32, i32* %w, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %w, align 4
  %mul86 = mul nsw i32 %52, %53
  %54 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul86, %54
  %call87 = call i32 @ico_get_bit_from_data(i8* %50, i32 %51, i32 %add)
  %idxprom = sext i32 %call87 to i64
  %55 = load i32*, i32** %palette, align 8
  %arrayidx = getelementptr inbounds i32, i32* %55, i64 %idxprom
  %56 = load i32, i32* %arrayidx, align 4
  store i32 %56, i32* %color, align 4
  %57 = load i32*, i32** %dest_vec, align 8
  %58 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %58, 1
  %59 = load i32, i32* %y, align 4
  %sub88 = sub nsw i32 %sub, %59
  %60 = load i32, i32* %w, align 4
  %mul89 = mul nsw i32 %sub88, %60
  %idx.ext = sext i32 %mul89 to i64
  %add.ptr = getelementptr inbounds i32, i32* %57, i64 %idx.ext
  %61 = load i32, i32* %x, align 4
  %idx.ext90 = sext i32 %61 to i64
  %add.ptr91 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext90
  store i32* %add.ptr91, i32** %dest, align 8
  %62 = bitcast i32* %color to i8*
  %arrayidx92 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx92, align 1
  %64 = load i32*, i32** %dest, align 8
  %65 = bitcast i32* %64 to i8*
  %arrayidx93 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %63, i8* %arrayidx93, align 1
  %66 = bitcast i32* %color to i8*
  %arrayidx94 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx94, align 1
  %68 = load i32*, i32** %dest, align 8
  %69 = bitcast i32* %68 to i8*
  %arrayidx95 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %67, i8* %arrayidx95, align 1
  %70 = bitcast i32* %color to i8*
  %arrayidx96 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx96, align 1
  %72 = load i32*, i32** %dest, align 8
  %73 = bitcast i32* %72 to i8*
  %arrayidx97 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %71, i8* %arrayidx97, align 1
  %74 = load i8*, i8** %and_map, align 8
  %75 = load i32, i32* %w, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %w, align 4
  %mul98 = mul nsw i32 %76, %77
  %78 = load i32, i32* %x, align 4
  %add99 = add nsw i32 %mul98, %78
  %call100 = call i32 @ico_get_bit_from_data(i8* %74, i32 %75, i32 %add99)
  %tobool = icmp ne i32 %call100, 0
  br i1 %tobool, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %for.body.85
  %79 = load i32*, i32** %dest, align 8
  %80 = bitcast i32* %79 to i8*
  %arrayidx102 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 0, i8* %arrayidx102, align 1
  br label %if.end.104

if.else:                                          ; preds = %for.body.85
  %81 = load i32*, i32** %dest, align 8
  %82 = bitcast i32* %81 to i8*
  %arrayidx103 = getelementptr inbounds i8, i8* %82, i64 3
  store i8 -1, i8* %arrayidx103, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.else, %if.then.101
  br label %for.inc

for.inc:                                          ; preds = %if.end.104
  %83 = load i32, i32* %x, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.82

for.end:                                          ; preds = %for.cond.82
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end
  %84 = load i32, i32* %y, align 4
  %inc106 = add nsw i32 %84, 1
  store i32 %inc106, i32* %y, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.71
  store i32 0, i32* %y, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.149, %sw.bb.108
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %h, align 4
  %cmp110 = icmp slt i32 %85, %86
  br i1 %cmp110, label %for.body.112, label %for.end.151

for.body.112:                                     ; preds = %for.cond.109
  store i32 0, i32* %x, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.146, %for.body.112
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* %w, align 4
  %cmp114 = icmp slt i32 %87, %88
  br i1 %cmp114, label %for.body.116, label %for.end.148

for.body.116:                                     ; preds = %for.cond.113
  %89 = load i8*, i8** %xor_map, align 8
  %90 = load i32, i32* %w, align 4
  %91 = load i32, i32* %y, align 4
  %92 = load i32, i32* %w, align 4
  %mul118 = mul nsw i32 %91, %92
  %93 = load i32, i32* %x, align 4
  %add119 = add nsw i32 %mul118, %93
  %call120 = call i32 @ico_get_nibble_from_data(i8* %89, i32 %90, i32 %add119)
  %idxprom121 = sext i32 %call120 to i64
  %94 = load i32*, i32** %palette, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %94, i64 %idxprom121
  %95 = load i32, i32* %arrayidx122, align 4
  store i32 %95, i32* %color117, align 4
  %96 = load i32*, i32** %dest_vec, align 8
  %97 = load i32, i32* %h, align 4
  %sub124 = sub nsw i32 %97, 1
  %98 = load i32, i32* %y, align 4
  %sub125 = sub nsw i32 %sub124, %98
  %99 = load i32, i32* %w, align 4
  %mul126 = mul nsw i32 %sub125, %99
  %idx.ext127 = sext i32 %mul126 to i64
  %add.ptr128 = getelementptr inbounds i32, i32* %96, i64 %idx.ext127
  %100 = load i32, i32* %x, align 4
  %idx.ext129 = sext i32 %100 to i64
  %add.ptr130 = getelementptr inbounds i32, i32* %add.ptr128, i64 %idx.ext129
  store i32* %add.ptr130, i32** %dest123, align 8
  %101 = bitcast i32* %color117 to i8*
  %arrayidx131 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx131, align 1
  %103 = load i32*, i32** %dest123, align 8
  %104 = bitcast i32* %103 to i8*
  %arrayidx132 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %102, i8* %arrayidx132, align 1
  %105 = bitcast i32* %color117 to i8*
  %arrayidx133 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx133, align 1
  %107 = load i32*, i32** %dest123, align 8
  %108 = bitcast i32* %107 to i8*
  %arrayidx134 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %106, i8* %arrayidx134, align 1
  %109 = bitcast i32* %color117 to i8*
  %arrayidx135 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx135, align 1
  %111 = load i32*, i32** %dest123, align 8
  %112 = bitcast i32* %111 to i8*
  %arrayidx136 = getelementptr inbounds i8, i8* %112, i64 2
  store i8 %110, i8* %arrayidx136, align 1
  %113 = load i8*, i8** %and_map, align 8
  %114 = load i32, i32* %w, align 4
  %115 = load i32, i32* %y, align 4
  %116 = load i32, i32* %w, align 4
  %mul137 = mul nsw i32 %115, %116
  %117 = load i32, i32* %x, align 4
  %add138 = add nsw i32 %mul137, %117
  %call139 = call i32 @ico_get_bit_from_data(i8* %113, i32 %114, i32 %add138)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %for.body.116
  %118 = load i32*, i32** %dest123, align 8
  %119 = bitcast i32* %118 to i8*
  %arrayidx142 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 0, i8* %arrayidx142, align 1
  br label %if.end.145

if.else.143:                                      ; preds = %for.body.116
  %120 = load i32*, i32** %dest123, align 8
  %121 = bitcast i32* %120 to i8*
  %arrayidx144 = getelementptr inbounds i8, i8* %121, i64 3
  store i8 -1, i8* %arrayidx144, align 1
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.141
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %122 = load i32, i32* %x, align 4
  %inc147 = add nsw i32 %122, 1
  store i32 %inc147, i32* %x, align 4
  br label %for.cond.113

for.end.148:                                      ; preds = %for.cond.113
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.148
  %123 = load i32, i32* %y, align 4
  %inc150 = add nsw i32 %123, 1
  store i32 %inc150, i32* %y, align 4
  br label %for.cond.109

for.end.151:                                      ; preds = %for.cond.109
  br label %sw.epilog

sw.bb.152:                                        ; preds = %if.end.71
  store i32 0, i32* %y, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.193, %sw.bb.152
  %124 = load i32, i32* %y, align 4
  %125 = load i32, i32* %h, align 4
  %cmp154 = icmp slt i32 %124, %125
  br i1 %cmp154, label %for.body.156, label %for.end.195

for.body.156:                                     ; preds = %for.cond.153
  store i32 0, i32* %x, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.190, %for.body.156
  %126 = load i32, i32* %x, align 4
  %127 = load i32, i32* %w, align 4
  %cmp158 = icmp slt i32 %126, %127
  br i1 %cmp158, label %for.body.160, label %for.end.192

for.body.160:                                     ; preds = %for.cond.157
  %128 = load i8*, i8** %xor_map, align 8
  %129 = load i32, i32* %w, align 4
  %130 = load i32, i32* %y, align 4
  %131 = load i32, i32* %w, align 4
  %mul162 = mul nsw i32 %130, %131
  %132 = load i32, i32* %x, align 4
  %add163 = add nsw i32 %mul162, %132
  %call164 = call i32 @ico_get_byte_from_data(i8* %128, i32 %129, i32 %add163)
  %idxprom165 = sext i32 %call164 to i64
  %133 = load i32*, i32** %palette, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %133, i64 %idxprom165
  %134 = load i32, i32* %arrayidx166, align 4
  store i32 %134, i32* %color161, align 4
  %135 = load i32*, i32** %dest_vec, align 8
  %136 = load i32, i32* %h, align 4
  %sub168 = sub nsw i32 %136, 1
  %137 = load i32, i32* %y, align 4
  %sub169 = sub nsw i32 %sub168, %137
  %138 = load i32, i32* %w, align 4
  %mul170 = mul nsw i32 %sub169, %138
  %idx.ext171 = sext i32 %mul170 to i64
  %add.ptr172 = getelementptr inbounds i32, i32* %135, i64 %idx.ext171
  %139 = load i32, i32* %x, align 4
  %idx.ext173 = sext i32 %139 to i64
  %add.ptr174 = getelementptr inbounds i32, i32* %add.ptr172, i64 %idx.ext173
  store i32* %add.ptr174, i32** %dest167, align 8
  %140 = bitcast i32* %color161 to i8*
  %arrayidx175 = getelementptr inbounds i8, i8* %140, i64 2
  %141 = load i8, i8* %arrayidx175, align 1
  %142 = load i32*, i32** %dest167, align 8
  %143 = bitcast i32* %142 to i8*
  %arrayidx176 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %141, i8* %arrayidx176, align 1
  %144 = bitcast i32* %color161 to i8*
  %arrayidx177 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx177, align 1
  %146 = load i32*, i32** %dest167, align 8
  %147 = bitcast i32* %146 to i8*
  %arrayidx178 = getelementptr inbounds i8, i8* %147, i64 1
  store i8 %145, i8* %arrayidx178, align 1
  %148 = bitcast i32* %color161 to i8*
  %arrayidx179 = getelementptr inbounds i8, i8* %148, i64 0
  %149 = load i8, i8* %arrayidx179, align 1
  %150 = load i32*, i32** %dest167, align 8
  %151 = bitcast i32* %150 to i8*
  %arrayidx180 = getelementptr inbounds i8, i8* %151, i64 2
  store i8 %149, i8* %arrayidx180, align 1
  %152 = load i8*, i8** %and_map, align 8
  %153 = load i32, i32* %w, align 4
  %154 = load i32, i32* %y, align 4
  %155 = load i32, i32* %w, align 4
  %mul181 = mul nsw i32 %154, %155
  %156 = load i32, i32* %x, align 4
  %add182 = add nsw i32 %mul181, %156
  %call183 = call i32 @ico_get_bit_from_data(i8* %152, i32 %153, i32 %add182)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %for.body.160
  %157 = load i32*, i32** %dest167, align 8
  %158 = bitcast i32* %157 to i8*
  %arrayidx186 = getelementptr inbounds i8, i8* %158, i64 3
  store i8 0, i8* %arrayidx186, align 1
  br label %if.end.189

if.else.187:                                      ; preds = %for.body.160
  %159 = load i32*, i32** %dest167, align 8
  %160 = bitcast i32* %159 to i8*
  %arrayidx188 = getelementptr inbounds i8, i8* %160, i64 3
  store i8 -1, i8* %arrayidx188, align 1
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.185
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %161 = load i32, i32* %x, align 4
  %inc191 = add nsw i32 %161, 1
  store i32 %inc191, i32* %x, align 4
  br label %for.cond.157

for.end.192:                                      ; preds = %for.cond.157
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %162 = load i32, i32* %y, align 4
  %inc194 = add nsw i32 %162, 1
  store i32 %inc194, i32* %y, align 4
  br label %for.cond.153

for.end.195:                                      ; preds = %for.cond.153
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.71
  %bpp196 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %163 = load i16, i16* %bpp196, align 2
  %conv197 = zext i16 %163 to i32
  %div198 = sdiv i32 %conv197, 8
  store i32 %div198, i32* %bytespp, align 4
  %164 = load i32, i32* %w, align 4
  %bpp199 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %165 = load i16, i16* %bpp199, align 2
  %conv200 = zext i16 %165 to i32
  %call201 = call i32 @ico_rowstride(i32 %164, i32 %conv200)
  store i32 %call201, i32* %rowstride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.250, %sw.default
  %166 = load i32, i32* %y, align 4
  %167 = load i32, i32* %h, align 4
  %cmp203 = icmp slt i32 %166, %167
  br i1 %cmp203, label %for.body.205, label %for.end.252

for.body.205:                                     ; preds = %for.cond.202
  %168 = load i8*, i8** %xor_map, align 8
  %169 = load i32, i32* %rowstride, align 4
  %170 = load i32, i32* %y, align 4
  %mul206 = mul nsw i32 %169, %170
  %idx.ext207 = sext i32 %mul206 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %168, i64 %idx.ext207
  store i8* %add.ptr208, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.247, %for.body.205
  %171 = load i32, i32* %x, align 4
  %172 = load i32, i32* %w, align 4
  %cmp210 = icmp slt i32 %171, %172
  br i1 %cmp210, label %for.body.212, label %for.end.249

for.body.212:                                     ; preds = %for.cond.209
  %173 = load i32*, i32** %dest_vec, align 8
  %174 = load i32, i32* %h, align 4
  %sub214 = sub nsw i32 %174, 1
  %175 = load i32, i32* %y, align 4
  %sub215 = sub nsw i32 %sub214, %175
  %176 = load i32, i32* %w, align 4
  %mul216 = mul nsw i32 %sub215, %176
  %idx.ext217 = sext i32 %mul216 to i64
  %add.ptr218 = getelementptr inbounds i32, i32* %173, i64 %idx.ext217
  %177 = load i32, i32* %x, align 4
  %idx.ext219 = sext i32 %177 to i64
  %add.ptr220 = getelementptr inbounds i32, i32* %add.ptr218, i64 %idx.ext219
  store i32* %add.ptr220, i32** %dest213, align 8
  %178 = load i8*, i8** %row, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx221, align 1
  %180 = load i32*, i32** %dest213, align 8
  %181 = bitcast i32* %180 to i8*
  %arrayidx222 = getelementptr inbounds i8, i8* %181, i64 2
  store i8 %179, i8* %arrayidx222, align 1
  %182 = load i8*, i8** %row, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %182, i64 1
  %183 = load i8, i8* %arrayidx223, align 1
  %184 = load i32*, i32** %dest213, align 8
  %185 = bitcast i32* %184 to i8*
  %arrayidx224 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %183, i8* %arrayidx224, align 1
  %186 = load i8*, i8** %row, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %186, i64 2
  %187 = load i8, i8* %arrayidx225, align 1
  %188 = load i32*, i32** %dest213, align 8
  %189 = bitcast i32* %188 to i8*
  %arrayidx226 = getelementptr inbounds i8, i8* %189, i64 0
  store i8 %187, i8* %arrayidx226, align 1
  %bpp227 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %data, i32 0, i32 4
  %190 = load i16, i16* %bpp227, align 2
  %conv228 = zext i16 %190 to i32
  %cmp229 = icmp slt i32 %conv228, 32
  br i1 %cmp229, label %if.then.231, label %if.else.241

if.then.231:                                      ; preds = %for.body.212
  %191 = load i8*, i8** %and_map, align 8
  %192 = load i32, i32* %w, align 4
  %193 = load i32, i32* %y, align 4
  %194 = load i32, i32* %w, align 4
  %mul232 = mul nsw i32 %193, %194
  %195 = load i32, i32* %x, align 4
  %add233 = add nsw i32 %mul232, %195
  %call234 = call i32 @ico_get_bit_from_data(i8* %191, i32 %192, i32 %add233)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.else.238

if.then.236:                                      ; preds = %if.then.231
  %196 = load i32*, i32** %dest213, align 8
  %197 = bitcast i32* %196 to i8*
  %arrayidx237 = getelementptr inbounds i8, i8* %197, i64 3
  store i8 0, i8* %arrayidx237, align 1
  br label %if.end.240

if.else.238:                                      ; preds = %if.then.231
  %198 = load i32*, i32** %dest213, align 8
  %199 = bitcast i32* %198 to i8*
  %arrayidx239 = getelementptr inbounds i8, i8* %199, i64 3
  store i8 -1, i8* %arrayidx239, align 1
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.238, %if.then.236
  br label %if.end.244

if.else.241:                                      ; preds = %for.body.212
  %200 = load i8*, i8** %row, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %200, i64 3
  %201 = load i8, i8* %arrayidx242, align 1
  %202 = load i32*, i32** %dest213, align 8
  %203 = bitcast i32* %202 to i8*
  %arrayidx243 = getelementptr inbounds i8, i8* %203, i64 3
  store i8 %201, i8* %arrayidx243, align 1
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.241, %if.end.240
  %204 = load i32, i32* %bytespp, align 4
  %205 = load i8*, i8** %row, align 8
  %idx.ext245 = sext i32 %204 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %205, i64 %idx.ext245
  store i8* %add.ptr246, i8** %row, align 8
  br label %for.inc.247

for.inc.247:                                      ; preds = %if.end.244
  %206 = load i32, i32* %x, align 4
  %inc248 = add nsw i32 %206, 1
  store i32 %inc248, i32* %x, align 4
  br label %for.cond.209

for.end.249:                                      ; preds = %for.cond.209
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.end.249
  %207 = load i32, i32* %y, align 4
  %inc251 = add nsw i32 %207, 1
  store i32 %inc251, i32* %y, align 4
  br label %for.cond.202

for.end.252:                                      ; preds = %for.cond.202
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.252, %for.end.195, %for.end.151, %for.end.107
  %208 = load i32*, i32** %palette, align 8
  %tobool253 = icmp ne i32* %208, null
  br i1 %tobool253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %sw.epilog
  %209 = load i32*, i32** %palette, align 8
  %210 = bitcast i32* %209 to i8*
  call void @g_free(i8* %210)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %sw.epilog
  %211 = load i8*, i8** %xor_map, align 8
  call void @g_free(i8* %211)
  %212 = load i8*, i8** %and_map, align 8
  call void @g_free(i8* %212)
  %213 = load i32, i32* %w, align 4
  %214 = load i32*, i32** %width.addr, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i32, i32* %h, align 4
  %216 = load i32*, i32** %height.addr, align 8
  store i32 %215, i32* %216, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.255, %if.then.48, %if.then.41, %if.then
  %217 = load i32, i32* %retval
  ret i32 %217
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @png_set_expand_gray_1_2_4_to_8(%struct.png_struct_def*) #1

declare void @png_set_strip_16(%struct.png_struct_def*) #1

declare void @png_set_gray_to_rgb(%struct.png_struct_def*) #1

declare void @png_set_add_alpha(%struct.png_struct_def*, i32, i32) #1

declare void @png_set_palette_to_rgb(%struct.png_struct_def*) #1

declare i32 @png_get_valid(%struct.png_struct_def*, %struct.png_info_def*, i32) #1

declare void @png_set_tRNS_to_alpha(%struct.png_struct_def*) #1

declare void @png_read_image(%struct.png_struct_def*, i8**) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i8* @ico_alloc_map(i32, i32, i32, i32*) #1

declare i32 @ico_rowstride(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
